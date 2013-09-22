unit SQLToolForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ElPgCtl,
  ExtCtrls, ElPanel, ElSplit, ToolbarFrame, dxExEdtr, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, ElPopBtn, ElToolbar, ActnList, DB, IBODataset,
  dxDBTLCl, dxGrClms, dxEditor, dxEdLib, dxDBELib;

type
  TfrmSQLTool = class(TfrmBase)
    pageSQL_List: TElPageControl;
    tabSQL_List: TElTabSheet;
    ElSplitter1: TElSplitter;
    panelExecute: TPanel;
    frameToolbar1: TframeToolbar;
    gridSQL: TdxDBGrid;
    ActionList1: TActionList;
    acExecute: TAction;
    dsSQL_List: TDataSource;
    qrySQL_List: TIBOQuery;
    qryExecute: TIBOQuery;
    qrySQL_ListSQL_ID: TIntegerField;
    qrySQL_ListSQL_TITLE: TWideStringField;
    qrySQL_ListSQL_STATEMENT: TWideStringField;
    gridSQLSQL_ID: TdxDBGridSpinColumn;
    gridSQLSQL_TITLE: TdxDBGridColumn;
    dxSQL: TdxDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acExecuteExecute(Sender: TObject);
    procedure acExecuteUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSQLTool: TfrmSQLTool;

implementation

uses MainDM, SQLParamForm;

{$R *.dfm}

procedure TfrmSQLTool.FormCreate(Sender: TObject);
begin
  inherited;
  if MainDm.sysConfig.User<>'smallfoot' then
  begin
     qrySQL_List.InsertSQL.Clear;
     qrySQL_List.EditSQL.Clear;
     qrySQL_List.DeleteSQL.Clear;
     gridSQL.OptionsBehavior:=gridSQL.OptionsBehavior-[edgoEditing];
     dxSQL.ReadOnly:=true;
  end;
  qrySQL_List.Open;
  frameToolbar1.SetDataSource(dsSQL_List);
  
end;

procedure TfrmSQLTool.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  qrySQL_List.Close;
end;

procedure TfrmSQLTool.acExecuteExecute(Sender: TObject);
var continue:boolean;
begin
  inherited;
  try
    continue:=true;
    if qryExecute.Active then
      qryExecute.Close;
    qryExecute.SQL.Text:=qrySQL_ListSQL_STATEMENT.Value;
    try
      qryExecute.Prepare;
    except
      ShowMessageUnicode(50);
      exit;
    end;
    if qryExecute.ParamCount>0 then
    begin
      with TfrmSQLParam.Create(self) do
      try
        continue:=(ShowModal=mrOK);
      finally
        Free;
      end;
    end;
    if continue then
    begin
      dmMain.ExecuteSQL(qryExecute);
      if ShowMessageUnicode(51)=mrYes then
        dmMain.CommitTransaction
      else
        dmMain.RollbackTransaction;
     end;
  except

  end;
end;

procedure TfrmSQLTool.acExecuteUpdate(Sender: TObject);
begin
  inherited;
  acExecute.Enabled:=(not qrySQL_List.IsEmpty);
end;

end.
