unit EditImportRule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, dxDBTLCl, dxGrClms,
  dxDBGrid, dxTL, dxDBCtrl, dxCntner, ActnList, DB, IBODataset, ElPanel,
  ElSplit, ExtCtrls, dxEditor, dxEdLib, dxDBELib, ElPgCtl;

type
  TfrmEditImportRule = class(TfrmEditBase)
    gridScript: TdxDBGrid;
    gridScriptSCRIPT_ORDER: TdxDBGridSpinColumn;
    gridScriptSCRIPT_NAME: TdxDBGridColumn;
    gridParam: TdxDBGrid;
    gridParamPARAM_NAME: TdxDBGridColumn;
    gridScriptSCRIPT_TEXT: TdxDBGridMemoColumn;
    gridParamPARAM_NO: TdxDBGridColumn;
    gridParamSOURCE_NAME: TdxDBGridPickColumn;
    gridParamSOURCE_COL: TdxDBGridPickColumn;
    ActionList1: TActionList;
    acPhatsinh: TAction;
    qryTest: TIBOQuery;
    gridParamFUNC_NAME: TdxDBGridImageColumn;
    gridScriptIS_USED: TdxDBGridCheckColumn;
    Panel1: TPanel;
    dxlcMainItem4: TdxLayoutItem;
    ElSplitter1: TElSplitter;
    pageScript: TElPageControl;
    tabScriptList: TElTabSheet;
    tabSQL: TElTabSheet;
    dxDBMemo1: TdxDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure acPhatsinhUpdate(Sender: TObject);
    procedure acPhatsinhExecute(Sender: TObject);
    procedure gridScriptDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditImportRule: TfrmEditImportRule;

implementation

uses MainDM, ImportDataForm;

{$R *.dfm}

procedure TfrmEditImportRule.FormCreate(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(frmImportTool.dsScript);
  gridParamSOURCE_NAME.Items.Clear;
  gridParamSOURCE_NAME.Items.Text:=frmImportTool.gridParamSOURCE_NAME.Items.Text;
  gridParamSOURCE_COL.Items.Clear;
  gridParamSOURCE_COL.Items.Text:=frmImportTool.gridParamSOURCE_COL.Items.Text;
    gridParamFUNC_NAME.Descriptions.Text:=frmImportTool.gridParamFUNC_NO.Descriptions.Text;
  gridParamFUNC_NAME.Values.Text:=frmImportTool.gridParamFUNC_NO.Values.Text;

end;

procedure TfrmEditImportRule.acPhatsinhUpdate(Sender: TObject);
begin
  inherited;
  acPhatsinh.Enabled:=(frmImportTool.qryScript.IsEmpty=false) and
                      (frmImportTool.qryParam.IsEmpty=true)
end;

procedure TfrmEditImportRule.acPhatsinhExecute(Sender: TObject);
var i:integer;
begin
  inherited;
  if qryTest.Active then qryTest.Close;
  qryTest.SQL.Text:=frmImportTool.qryScriptSCRIPT_TEXT.AsString;
  try
    qryTest.Prepare;
    if qryTest.ParamCount>0 then
    begin
      for i:=0 to qryTest.ParamCount-1 do
      begin
         frmImportTool.qryParam.Append;
         frmImportTool.qryParamSCRIPT_ID.Value:=frmImportTool.qryScriptSCRIPT_ID.Value;
         frmImportTool.qryParamPARAM_NO.Value:=qryTest.Params[i].Name;
         frmImportTool.qryParamPARAM_NAME.Value:=qryTest.Params[i].Name;
         frmImportTool.qryParamSOURCE_COL.Value:='X';
         frmImportTool.qryParamSOURCE_NAME.Value:='X';
         frmImportTool.qryParam.Post;
      end;
    end;
  except
    ShowMessageUnicode(22);
    Exit;
  end;

end;

procedure TfrmEditImportRule.gridScriptDblClick(Sender: TObject);
begin
  inherited;
  if gridScript.FocusedColumn=gridScriptSCRIPT_TEXT.Index then
    pageScript.ActivePage:=tabSQL;
end;

end.
