unit DecisionTypeListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxGrClEx, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, DB, dxBar, IBODataset, ElCaption, dxLayoutControl,
  dxCntner, ToolbarFrame, cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmDecisionType = class(TfrmListBase)
    qryListDCS_TYPE_NO: TWideStringField;
    qryListDCS_TYPE_NAME: TWideStringField;
    qryListDCS_TYPE_NAME_ENG: TWideStringField;
    qryListREPORT_TEMPLATE_DEFAULT: TWideStringField;
    qryListDOC_TEMPLATE_DEFAULT: TWideStringField;
    qryListDCS_TYPE_NAME_VN: TWideStringField;
    qryListSTT: TIntegerField;
    dxdbgMainDCS_TYPE_NAME: TdxDBGridColumn;
    dxdbgMainDCS_TYPE_NAME_ENG: TdxDBGridColumn;
    dxdbgMainREPORT_TEMPLATE_DEFAULT: TdxDBGridButtonColumn;
    dxdbgMainTEMPLATE_NAME: TdxDBGridPopupColumn;
    dxdbgMainDCS_TYPE_NAME_VN: TdxDBGridColumn;
    dlgReportFile: TOpenDialog;
    dxdbgMainSTT: TdxDBGridMaskColumn;
    qryListTEMPLATE_NAME: TWideStringField;
    procedure dxdbgMainREPORT_TEMPLATE_DEFAULTButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxdbgMainTEMPLATE_NAMEInitPopup(Sender: TObject);
    procedure dxdbgMainTEMPLATE_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryListTEMPLATE_NAMEChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDecisionType: TfrmDecisionType;

implementation

uses MainDM, PopupMainForm, SSP_Library;

{$R *.dfm}

procedure TfrmDecisionType.dxdbgMainREPORT_TEMPLATE_DEFAULTButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if dlgReportFile.Execute then
  begin
    if not (qryList.State in [dsInsert,dsEdit]) then
      qryList.Edit;
    qryListREPORT_TEMPLATE_DEFAULT.Value:=
      ExtractFileName(dlgReportFile.FileName);
  end;
end;

procedure TfrmDecisionType.dxdbgMainTEMPLATE_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDocTemplate.Open;
  InitPopupControl('dxlcDocTemplateList',frmPopupMain,sender,2,dxdbgMain);
end;

procedure TfrmDecisionType.dxdbgMainTEMPLATE_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryDocTemplate,
    qryList,'TEMPLATE_NO;TEMPLATE_NAME','DOC_TEMPLATE_DEFAULT;TEMPLATE_NAME',
             'TEMPLATE_NAME',Text);
    frmPopupMain.qryDocTemplate.Close;
end;

procedure TfrmDecisionType.qryListTEMPLATE_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,Sender.FieldName,'DOC_TEMPLATE_DEFAULT');
end;

end.
