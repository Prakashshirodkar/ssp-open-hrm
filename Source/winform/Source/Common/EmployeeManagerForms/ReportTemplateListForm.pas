unit ReportTemplateListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, DB, dxBar, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxDBTLCl, dxGrClms;

type
  TfrmReportTemplateList = class(TfrmListBase)
    qryListTEMPLATE_NO: TWideStringField;
    qryListTEMPLATE_NAME: TWideStringField;
    qryListTEMPLATE_FILE: TWideStringField;
    qryListTEMPLATE_NOTE: TWideStringField;
    dxdbgMainTEMPLATE_NO: TdxDBGridColumn;
    dxdbgMainTEMPLATE_NAME: TdxDBGridColumn;
    dxdbgMainTEMPLATE_FILE: TdxDBGridButtonColumn;
    dxdbgMainTEMPLATE_NOTE: TdxDBGridColumn;
    OpenDialog1: TOpenDialog;
    qryListTEMPLATE_TYPE: TSmallintField;
    dxdbgMainTEMPLATE_TYPE: TdxDBGridImageColumn;
    procedure dxdbgMainTEMPLATE_FILEButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportTemplateList: TfrmReportTemplateList;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmReportTemplateList.dxdbgMainTEMPLATE_FILEButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    if not(qryList.State in [dsInsert,dsEdit]) then
      qryList.Edit;
    qryListTEMPLATE_FILE.Value:=ExtractFileName(OpenDialog1.FileName);
  end;
end;

end.
