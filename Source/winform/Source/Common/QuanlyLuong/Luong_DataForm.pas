unit Luong_DataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, DB, IBODataset, ToolbarFrame, dxExEdtr,
  dxCntner, dxTL, dxDBCtrl, dxDBTL, ActnList, dxDBTLCl;

type
  TfrmLuong_Data = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dsData: TDataSource;
    qryData: TIBOQuery;
    dxLayoutControl1Item1: TdxLayoutItem;
    frameToolbar1: TframeToolbar;
    tlData: TdxDBTreeList;
    dxLayoutControl1Item2: TdxLayoutItem;
    qryCongthuc: TIBOQuery;
    qryCongthucPA_MA: TIntegerField;
    qryCongthucCT_MA: TIntegerField;
    qryCongthucCT_KYHIEU: TWideStringField;
    qryCongthucCT_TIEUDE: TWideStringField;
    qryCongthucCT_KIEUDULIEU: TWideStringField;
    qryCongthucCT_HINHTHUC_NHAPLIEU: TWideStringField;
    qryCongthucCT_THUTU_HIENTHI: TIntegerField;
    tlDataDEPT_NAME: TdxDBTreeListColumn;
    ActionList: TActionList;
    acChuanbiThamso: TAction;
    acPhatsinhDulieu: TAction;
    qryPhatsinh: TIBOQuery;
    constructor Create(AOwner: TComponent; PA_MA, TABLE_NAME: string;
      FIELD_LIST: TStrings);
    procedure acChuanbiThamsoExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    F_PA_MA, F_TABLE_NAME: string;
  public
    { Public declarations }
  end;

var
  frmLuong_Data: TfrmLuong_Data;

implementation

uses MainDM;

{$R *.dfm}

constructor TFrmLuong_Data.Create(AOwner: TComponent; PA_MA, TABLE_NAME: string;
  FIELD_LIST: TStrings);
var
  i: integer;
  col: TdxDBTreeListColumn;
  update_s:string;
begin
  inherited Create(AOwner);
  F_TABLE_NAME := TABLE_NAME;
  F_PA_MA := PA_MA;
  //Init Query:
  qryData.SQL.Clear;
  qryData.SQL.Text := 'SELECT ';
  for i := 0 to FIELD_LIST.Count - 1 do
  begin
    qryData.SQL.Text := qryData.SQL.Text + FIELD_LIST.Strings[i];
    if i < FIELD_LIST.Count - 1 then
      qryData.SQL.Text := qryData.SQL.Text + ', ';
  end;
  qryCongthuc.ParamByName('PA_MA').Value := PA_MA;
  qryCongthuc.Open;
  if qryCongthuc.IsEmpty then
    exit;
  qryCongthuc.First;
  update_s:='UPDATE '+TABLE_NAME+' SET ';
  while not qryCongthuc.Eof do
  begin
    qryData.SQL.Text := qryData.SQL.Text + ', ' + qryCongthucCT_KYHIEU.AsString;

    if qryCongthucCT_KIEUDULIEU.Value = 'DOUBLE' then
      col := tlData.CreateColumn(TdxDBTreeListCalcColumn)
    else if
      qryCongthucCT_KIEUDULIEU.Value = 'VARCHAR' then
      col := tlData.CreateColumn(TdxDBTreeListColumn)
    else if
      qryCongthucCT_KIEUDULIEU.Value = 'DATE' then
      col := tlData.CreateColumn(TdxDBTreeListDateColumn);

    col.Name := tlData.Name + qryCongthucCT_KYHIEU.AsString;
    col.FieldName := qryCongthucCT_KYHIEU.AsString;
    col.Width := 80;
    col.HeaderAlignment := taCenter;
    col.DisableCustomizing := true;
    col.Caption := qryCongthucCT_TIEUDE.Value;
    col.DisableEditor := false;
    col.ReadOnly := false;

    update_s := update_s + qryCongthucCT_KYHIEU.AsString + '=:' +
      qryCongthucCT_KYHIEU.AsString;
    qryCongthuc.Next;
    if not qryCongthuc.Eof then update_s:=update_s+' , ';
  end;
  qryCongthuc.Close;
  qryData.SQL.Text:=qryData.SQL.Text+' FROM '+TABLE_NAME;
  qryData.EditSQL.Clear; 
  qryData.EditSQL.Text:=
    update_s+' FROM '+TABLE_NAME+' WHERE '+tlData.KeyField+'=:OLD_'+tlData.KeyField;
  qryData.Prepare;

  acChuanbiThamso.Execute;
  qryData.Open;
  tlData.FullExpand;
  tlData.OptionsBehavior:=tlData.OptionsBehavior+[etoEditing];
  frameToolbar1.SetDataSource(dsData)
end;
procedure TfrmLuong_Data.acChuanbiThamsoExecute(Sender: TObject);
begin
  inherited;
//
end;

end.

