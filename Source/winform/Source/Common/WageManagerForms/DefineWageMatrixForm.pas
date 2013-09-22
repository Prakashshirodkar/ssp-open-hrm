unit DefineWageMatrixForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, dxLayoutControl, cxControls, ElCaption,
  ElXPThemedControl, ElStatBar, ToolbarFrame, dxExEdtr, DB, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxmdaset, ImgList, ActnList, ElPopBtn, ElToolbar,
  ExtCtrls, ElPanel, DBActns, dxDBTLCl, dxGrClms, ElBtnCtl, IBODataset;

type
  TfrmDefineWageMatrix = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    gridMatrix: TdxDBGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    dsMatrix: TDataSource;
    memMatrix: TdxMemData;
    memMatrixWAGE_GRADE: TWideStringField;
    gridMatrixWAGE_GRADE: TdxDBGridColumn;
    ActionList1: TActionList;
    acAddColumn: TAction;
    ImageList1: TImageList;
    acRemoveRow: TDataSetDelete;
    acInsertRow: TDataSetInsert;
    acMoveUp: TAction;
    acMoveDown: TAction;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    acRemoveColumn: TAction;
    ElPopupButton6: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    acLoadMatrix: TAction;
    qryGrade: TIBOQuery;
    qryGradeGRADE_NO: TIntegerField;
    qryGradeGRADE_NAME: TWideStringField;
    qryGradeGRADE_NOTE: TWideStringField;
    qryMatrix: TIBOQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acAddRowExecute(Sender: TObject);
    procedure ElToolButton4Click(Sender: TObject);
    procedure acInsertRowExecute(Sender: TObject);
    procedure memMatrixBeforeDelete(DataSet: TDataSet);
    procedure acRemoveColumnUpdate(Sender: TObject);
    procedure acAddColumnExecute(Sender: TObject);
    procedure acRemoveColumnExecute(Sender: TObject);
    procedure gridMatrixChangeColumn(Sender: TObject;
      Node: TdxTreeListNode; Column: Integer);
    procedure acLoadMatrixExecute(Sender: TObject);
  private
    { Private declarations }
    F_Current_Column: integer;
    F_State: string;
  public
    { Public declarations }
  end;

var
  frmDefineWageMatrix: TfrmDefineWageMatrix;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmDefineWageMatrix.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  memMatrix.Close;
end;

procedure TfrmDefineWageMatrix.acAddRowExecute(Sender: TObject);
begin
  inherited;
  memMatrix.Append;
  memMatrix.Post;

end;

procedure TfrmDefineWageMatrix.ElToolButton4Click(Sender: TObject);
begin
  inherited;
  memMatrix.Delete;
end;

procedure TfrmDefineWageMatrix.acInsertRowExecute(Sender: TObject);
begin
  inherited;
  if memMatrix.RecNo = memMatrix.RecordCount then
    memMatrix.Append
  else
    memMatrix.Insert;
  memMatrix.Post;
end;

procedure TfrmDefineWageMatrix.memMatrixBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  //
end;

procedure TfrmDefineWageMatrix.acRemoveColumnUpdate(Sender: TObject);
begin
  inherited;
  acRemoveColumn.Enabled :=
    (gridMatrix.ColumnCount > 1) and (gridMatrix.FocusedField.FieldName <> 'WAGE_GRADE');
end;

procedure TfrmDefineWageMatrix.acAddColumnExecute(Sender: TObject);
var f: TFloatField;
  col: TdxDBTreeListColumn;
  mem: TdxMemData;
  index_name: string;
begin
  inherited;
  if memMatrix.State in [dsInsert, dsEdit] then
    memMatrix.Post;
  memMatrix.DisableControls;
  mem := TdxMemData.Create(self);
  mem.CreateFieldsFromDataSet(memMatrix);
  mem.LoadFromDataSet(memMatrix);
  memMatrix.Close;
  f := TFloatField.Create(memMatrix);
  index_name := IntToStr(gridMatrix.VisibleColumnCount);
  f.Name := memMatrix.Name + index_name;
  f.FieldName := 'FIELD_' + index_name;
  f.FieldKind := fkData;
  f.DataSet := memMatrix;
  f.SetFieldType(ftFloat);
  TFloatField(f).DisplayFormat := sysConfig.FloatFormat;

  col := gridMatrix.CreateColumn(TdxDBGridCalcColumn);
  col.Name := gridMatrix.Name + f.FieldName;
  col.FieldName := f.FieldName;
  col.Width := 80;
  col.HeaderAlignment := taCenter;
  col.DisableCustomizing := true;
  col.Caption := index_name;
  //  col.OnCustomDrawCell:=gridMatrixWAGE_GRADECustomDrawCell;

  memMatrix.Open;
  memMatrix.LoadFromDataSet(mem);
  mem.Close;
  mem.Free;
  memMatrix.EnableControls;
  //  col.BandIndex := 1;
end;

procedure TfrmDefineWageMatrix.acRemoveColumnExecute(Sender: TObject);
var
  del_column, i: integer;
  mem: TdxMemData;
begin
  inherited;
  if memMatrix.State in [dsInsert, dsEdit] then
    memMatrix.Post;
  memMatrix.DisableControls;
  del_column := gridMatrix.FocusedColumn + 1; // do co 1 field la RecID

  if (del_column < memMatrix.FieldCount - 1) and (not memMatrix.IsEmpty) then
  begin
    memMatrix.First;
    while not memMatrix.Eof do
    begin
      memMatrix.Edit;
      for i := del_column to memMatrix.FieldCount - 2 do
      begin
        memMatrix.Fields[i].Value := memMatrix.Fields[i + 1].Value;
      end;
      memMatrix.Post;
      memMatrix.Next;
    end;
  end;
  //
  mem := TdxMemData.Create(self);
  mem.CreateFieldsFromDataSet(memMatrix);
  mem.LoadFromDataSet(memMatrix);
  memMatrix.Close;
  gridMatrix.Columns[gridMatrix.ColumnCount - 1].Free;
  memMatrix.Fields[memMatrix.FieldCount - 1].Free;
  memMatrix.Open;
  memMatrix.LoadFromDataSet(mem);
  mem.Close;
  mem.Free;
  memMatrix.EnableControls;
  //  col.BandIndex := 1;
end;

procedure TfrmDefineWageMatrix.gridMatrixChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
  inherited;
  F_Current_Column := Column;
end;

procedure TfrmDefineWageMatrix.acLoadMatrixExecute(Sender: TObject);
var f: TFloatField;
    col: TdxDBTreeListColumn;
begin
  inherited;
  qryGrade.Open;
  if not qryGrade.IsEmpty then
  begin
    qryGrade.First;
    while not qryGrade.Eof do
    begin
      f := TFloatField.Create(memMatrix);
      f.Name := qryGradeGRADE_NO.AsString;
      f.FieldName := 'FIELD_' + qryGradeGRADE_NO.AsString;
      f.FieldKind := fkData;
      f.DataSet := memMatrix;
      f.SetFieldType(ftFloat);
      TFloatField(f).DisplayFormat := sysConfig.FloatFormat;

      col := gridMatrix.CreateColumn(TdxDBGridCalcColumn);
      col.Name := gridMatrix.Name + f.FieldName;
      col.FieldName := f.FieldName;
      col.Width := 70;
      col.HeaderAlignment := taCenter;
      col.DisableCustomizing := true;
      col.Caption := qryGradeGRADE_NO.AsString;
      qryGrade.Next;
    end;
  end;
  memMatrix.Open;
end;

end.

