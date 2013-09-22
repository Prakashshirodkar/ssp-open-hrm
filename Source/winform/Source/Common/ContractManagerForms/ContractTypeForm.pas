unit ContractTypeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxGrClEx, dxDBTLCl, dxGrClms;

type
  TfrmContractType = class(TfrmListBase)
    dxdbgMainCONTRACT_TYPE_NO: TdxDBGridColumn;
    dxdbgMainCONTRACT_TYPE_NAME: TdxDBGridColumn;
    dxdbgMainREPORT_DEFAULT: TdxDBGridButtonColumn;
    dxdbgMainDOC_DEFAULT_NAME: TdxDBGridPopupColumn;
    dxdbgMainNOTES: TdxDBGridColumn;
    dxdbgMainTIME_LIMIT: TdxDBGridSpinColumn;
    OpenDialog1: TOpenDialog;
    dxdbgMainTIME_UNIT: TdxDBGridImageColumn;
    qryListCONTRACT_TYPE_NO: TWideStringField;
    qryListCONTRACT_TYPE_NAME: TWideStringField;
    qryListTIME_LIMIT: TIntegerField;
    qryListTIME_UNIT: TIntegerField;
    qryListREPORT_DEFAULT: TWideStringField;
    qryListDOC_DEFAULT: TWideStringField;
    qryListDOC_DEFAULT_NAME: TWideStringField;
    qryListNOTES: TWideStringField;
    procedure dxdbgMainREPORT_DEFAULTButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxdbgMainDOC_DEFAULT_NAMEInitPopup(Sender: TObject);
    procedure dxdbgMainDOC_DEFAULT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContractType: TfrmContractType;

implementation

uses MainDM, PopupMainForm, SSP_Library;

{$R *.dfm}

procedure TfrmContractType.dxdbgMainREPORT_DEFAULTButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    if not (qryList.State in [dsEdit,dsInsert]) then
      qryList.Edit;
    qryListREPORT_DEFAULT.Value:=ExtractFileName(OpenDialog1.FileName);
  end;
end;

procedure TfrmContractType.dxdbgMainDOC_DEFAULT_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDocTemplate.Open;
    InitPopupControl('dxlcDocTemplateList',frmPopupMain,sender,2,dxdbgMain);
end;

procedure TfrmContractType.dxdbgMainDOC_DEFAULT_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryDocTemplate,qryList,
             'TEMPLATE_NO;TEMPLATE_NAME','DOC_DEFAULT;DOC_DEFAULT_NAME',
             'TEMPLATE_NAME',Text);
    frmPopupMain.qryDocTemplate.Close;
end;

end.
