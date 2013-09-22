unit AnalyserDefineForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ElPgCtl,
  ImgList, dxLayoutControl, cxControls, ToolbarFrame, ElBtnCtl, ElPopBtn,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxTL, dxDBCtrl, dxDBTL,
  ExtCtrls, ElPanel, ElSplit, dxBar, dxDBGrid, ElToolbar, DB, dxmdaset,
  ActnList, IBODataset, dxDBTLCl, dxGrClms, DBActns;

type
  TfrmAnalyserDefine = class(TfrmBase)
    ImageList1: TImageList;
    pageMain: TElPageControl;
    tabAnalyserList: TElTabSheet;
    tabAnalyserDefine: TElTabSheet;
    tlAnalyser: TdxDBTreeList;
    tlAnalyserANALYSER_TITLE: TdxDBTreeListColumn;
    tlAnalyserANALYSER_ID: TdxDBTreeListColumn;
    frameAnalyserList: TframeToolbar;
    tlAnalyser_1: TdxDBTreeList;
    dxDBTreeListColumn2: TdxDBTreeListColumn;
    ElSplitter1: TElSplitter;
    panelMain: TPanel;
    gridDefine: TdxDBGrid;
    dsDefine: TDataSource;
    memDefine: TdxMemData;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    ActionList1: TActionList;
    acTaobang: TAction;
    ElSplitter2: TElSplitter;
    gridColumnList: TdxDBGrid;
    gridColumnListCOLUMN_TITLE: TdxDBGridColumn;
    gridColumnListCOLUMN_SIZE: TdxDBGridSpinColumn;
    gridColumnListCOLUMN_COLOR: TdxDBGridColumn;
    gridColumnListCOLUMN_COLOR_SELECT: TdxDBGridButtonColumn;
    gridColumnListCOLUMN_ID: TdxDBGridSpinColumn;
    ColorDialog1: TColorDialog;
    qryCell: TIBOQuery;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    acCapnhatDinhnghia: TAction;
    acDeleteRow: TDataSetDelete;
    acInsertRow: TDataSetInsert;
    dxCellType: TdxImageEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    qryCellANALYSER_ID: TWideStringField;
    qryCellCOLUMN_ID: TIntegerField;
    qryCellROW_ID: TIntegerField;
    qryCellCELL_DEFINE: TWideStringField;
    qryCellCELL_TYPE: TWideStringField;
    frameDefine: TframeToolbar;
    qryExecute: TIBOQuery;
    dxCellDefine: TdxButtonEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    panelListRight: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    OpenDialog1: TOpenDialog;
    procedure tlAnalyserGetImageIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure tlAnalyserGetSelectedIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure FormCreate(Sender: TObject);
    procedure tlAnalyserEnter(Sender: TObject);
    procedure gridColumnListCOLUMN_COLOR_SELECTButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure gridColumnListCOLUMN_COLOR_SELECTCustomDrawCell(
      Sender: TObject; ACanvas: TCanvas; ARect: TRect;
      ANode: TdxTreeListNode; AColumn: TdxTreeListColumn; ASelected,
      AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DefOnCustomeDrawCell(
      Sender: TObject; ACanvas: TCanvas; ARect: TRect;
      ANode: TdxTreeListNode; AColumn: TdxTreeListColumn; ASelected,
      AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure gridColumnListEnter(Sender: TObject);
    procedure acTaobangExecute(Sender: TObject);
    procedure tlAnalyser_1ChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure acInsertRowExecute(Sender: TObject);
    procedure DefOnDefinitionChange(Sender: TField);
    procedure acCapnhatDinhnghiaUpdate(Sender: TObject);
    procedure memDefineBeforeInsert(DataSet: TDataSet);
    procedure memDefineBeforeDelete(DataSet: TDataSet);
    procedure acCapnhatDinhnghiaExecute(Sender: TObject);
    procedure pageMainChanging(Sender: TObject; NewPage: TElTabSheet;
      var AllowChange: Boolean);
    procedure gridDefineChangeColumn(Sender: TObject;
      Node: TdxTreeListNode; Column: Integer);
    procedure ChangeCell(Node: TdxTreeListNode; Column: Integer);
    procedure gridDefineChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure dxCellDefineButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure gridDefineDblClick(Sender: TObject);
    procedure gridDefineColumn1CustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);

  private
    { Private eclarations }
    F_NEED_CREATE_TABLE, F_NEED_UPDATE_DATA: boolean;
    CHANGE_REPORT: Boolean;
    procedure ModifyDetail;
  public
    { Public declarations }
  end;

var
  frmAnalyserDefine: TfrmAnalyserDefine;

implementation

uses MainDM, AnalyserForm, MainUnit, CellDefinitionForm;

{$R *.dfm}

procedure TfrmAnalyserDefine.tlAnalyserGetImageIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  inherited;
  if Node.HasChildren then
    Index := 0
  else
  begin
    if Node.Selected then
      Index := 2
    else
      Index := 1;
  end;
end;

procedure TfrmAnalyserDefine.tlAnalyserGetSelectedIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  inherited;
  if Node.HasChildren then
    Index := 0
  else
  begin
    if Node.Selected then
      Index := 2
    else
      Index := 1;
  end;
end;

procedure TfrmAnalyserDefine.FormCreate(Sender: TObject);
begin
  dxCellType.Descriptions.Add(Utf8Decode('Văn bản'));
  dxCellType.Descriptions.Add(Utf8Decode('Biểu thức'));
  dxCellType.Descriptions.Add(Utf8Decode('Câu SQL'));

  dxCellType.Values.Add('VAN_BAN');
  dxCellType.Values.Add('BIEU_THUC');
  dxCellType.Values.Add('CAU_SQL');
  inherited;
  frameAnalyserList.SetDataSource(frmAnalyser.dsAnalyser);
  frameAnalyserList.OnBeforeInsertChild := frmAnalyser.OnBeforeInsertChild;
  frameAnalyserList.OnBeforeInsert := frmAnalyser.OnBeforeInsert;
  pagemain.ActivePageIndex := 0;
  F_NEED_CREATE_TABLE := true;
  frameDefine.SetDataSource(dsDefine);
  CustomExpand(tlAnalyser);
  CustomExpand(tlAnalyser_1);
end;

procedure TfrmAnalyserDefine.tlAnalyserEnter(Sender: TObject);
begin
  inherited;
  if frameAnalyserList.acDSInsert.DataSource <> frmAnalyser.dsAnalyser then
  begin
    frameAnalyserList.SetDataSource(frmAnalyser.dsAnalyser);
    frameAnalyserList.OnBeforeInsertChild := frmAnalyser.OnBeforeInsertChild;
    frameAnalyserList.OnBeforeInsert := frmAnalyser.OnBeforeInsert;
  end
end;

procedure TfrmAnalyserDefine.gridColumnListCOLUMN_COLOR_SELECTButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  ColorDialog1.Color := frmAnalyser.qryColumnListCOLUMN_COLOR.Value;
  if ColorDialog1.Execute then
  begin
    if not (frmAnalyser.qryColumnList.State in [dsEdit, dsInsert]) then
      frmAnalyser.qryColumnList.Edit;
    frmAnalyser.qryColumnListCOLUMN_COLOR.Value := ColorDialog1.Color;
    frmAnalyser.qryColumnListCOLUMN_ID.FocusControl;
  end;
end;

procedure TfrmAnalyserDefine.gridColumnListCOLUMN_COLOR_SELECTCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  int_color: integer;
begin
  inherited;
  int_color :=
    StrToIntDef(VarToStr(ANode.Values[gridColumnListCOLUMN_COLOR.Index]), 0);
  AColor := int_color;
  AText := IntToHex(int_color, 6);
end;

procedure TfrmAnalyserDefine.DefOnCustomeDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect;
  ANode: TdxTreeListNode; AColumn: TdxTreeListColumn; ASelected,
  AFocused, ANewItemRow: Boolean; var AText: WideString;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
  AColor := AColumn.Tag;
end;

procedure TfrmAnalyserDefine.gridColumnListEnter(Sender: TObject);
begin
  inherited;
  if frameAnalyserList.acDSInsert.DataSource <> frmAnalyser.dsColumnList then
  begin
    frameAnalyserList.SetDataSource(frmAnalyser.dsColumnList);
    frameAnalyserList.OnBeforeInsertChild := nil;
    frameAnalyserList.OnBeforeInsert := nil;
  end;
end;

procedure TfrmAnalyserDefine.acTaobangExecute(Sender: TObject);
var
  f: TField;
  col: TdxDBTreeListColumn;
  i: integer;
  ROW_ID: integer;
begin
  inherited;
  CHANGE_REPORT := true;
  if F_NEED_CREATE_TABLE = false then exit;
  Screen.Cursor := crSQLWait;
  memDefine.DisableControls;
  if memDefine.Active then
    memDefine.Close;

  if memDefine.FieldCount > 1 then
  begin
    for i := memDefine.FieldCount - 1 downto 1 do
      memDefine.Fields[i].Free;
  end;
  if gridDefine.ColumnCount > 0 then
  begin
    for i := gridDefine.ColumnCount - 1 downto 0 do
      gridDefine.Columns[i].Free;
  end;
  if frmAnalyser.qryColumnList.IsEmpty then
  begin
    gridDefine.ShowHeader := false;
    gridDefine.ShowGrid := false;
  end
  else
  begin
    gridDefine.ShowHeader := true;
    gridDefine.ShowGrid := true;
    frmMain.SetStatusBarPrgDisplay(0, frmAnalyser.qryColumnList.RecordCount);
    frmAnalyser.qryColumnList.First;
    gridDefine.BeginUpdate;

    while not frmAnalyser.qryColumnList.Eof do
    begin
      // =========tao field cho mem===========
      f := TWideStringField.Create(memDefine);
      f.Name := memDefine.Name + frmAnalyser.qryColumnListCOLUMN_ID.AsString;
      f.FieldName := 'F_' + frmAnalyser.qryColumnListCOLUMN_ID.AsString;
      f.Tag := frmAnalyser.qryColumnListCOLUMN_ID.Value;
      f.FieldKind := fkData;
      f.DataSet := memDefine;
      f.SetFieldType(ftWideString);
      f.OnChange := DefOnDefinitionChange;
      f.Size := 1024;

      col := gridDefine.CreateColumn(TdxDBGridColumn);
      col.Name := gridDefine.Name + f.FieldName;
      col.FieldName := f.FieldName;
      col.Width := frmAnalyser.qryColumnListCOLUMN_SIZE.Value;
      col.HeaderAlignment := taCenter;
      col.DisableCustomizing := true;
      col.Caption := frmAnalyser.qryColumnListCOLUMN_TITLE.Value + ' [' +
        IntToStr(frmAnalyser.qryColumnList.RecNo) + ']';
      col.OnCustomDrawCell := DefOnCustomeDrawCell;
      col.Tag := frmAnalyser.qryColumnListCOLUMN_COLOR.Value;

      f := TWideStringField.Create(memDefine);
      f.Name := memDefine.Name + frmAnalyser.qryColumnListCOLUMN_ID.AsString +
        '_TYPE';
      f.FieldName := 'F_' + frmAnalyser.qryColumnListCOLUMN_ID.AsString +
        '_TYPE';
      f.FieldKind := fkData;
      f.DataSet := memDefine;
      f.SetFieldType(ftWideString);
      f.Size := 30;

      frmAnalyser.qryColumnList.Next;
      frmMain.BarPrgStepIt;
    end;
    gridDefine.EndUpdate;
  end;
  //========== tao data definition ===========
  memDefine.Open;
  if not qryCell.Active then
    qryCell.Open;
  if qryCell.IsEmpty = false then
  begin
    frmmain.SetStatusBarPrgDisplay(0, qryCell.RecordCount);
    qryCell.First;
    ROW_ID := qryCellROW_ID.Value;

    memDefine.Append;
    while not qryCell.Eof do
    begin
      if (ROW_ID <> qryCellROW_ID.Value) or
        (qryCell.Eof) then
      begin
        if (memDefine.State in [dsEdit, dsInsert]) then
          memDefine.Post;
        if qryCell.Eof then
          Break
        else
          ROW_ID := qryCellROW_ID.Value;

        memDefine.Append;
      end;
      if not qryCellCOLUMN_ID.IsNull then
      begin
        if Assigned(memDefine.FindField('F_' + qryCellCOLUMN_ID.AsString)) then
        begin
          if qryCellCELL_DEFINE.IsNull then
            memDefine.FieldByName('F_' + qryCellCOLUMN_ID.AsString).Clear
          else
            memDefine.FieldByName('F_' + qryCellCOLUMN_ID.AsString).Value
              := qryCellCELL_DEFINE.Value;
          if qryCellCELL_TYPE.IsNull then
            memDefine.FieldByName('F_' + qryCellCOLUMN_ID.AsString +
              '_TYPE').Clear
          else
            memDefine.FieldByName('F_' + qryCellCOLUMN_ID.AsString +
              '_TYPE').Value
              := qryCellCELL_TYPE.Value;
        end;
      end;
      qryCell.Next;
      frmMain.BarPrgStepIt;
    end;
  end;
  qryCell.Close;
  if memDefine.State in [dsInsert, dsEdit] then
    memDefine.Post;

  memDefine.First;
  memDefine.EnableControls;
  F_NEED_UPDATE_DATA := false;
  CHANGE_REPORT := false;
  Screen.Cursor := crDefault;
end;

procedure TfrmAnalyserDefine.tlAnalyser_1ChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  CHANGE_REPORT := true;
  if frmAnalyser.qryColumnList.IsEmpty = false then
  begin
    if pageMain.ActivePage = tabAnalyserDefine then
      acTaobang.Execute
    else
      F_NEED_CREATE_TABLE := true;
  end;
  CHANGE_REPORT := false;
end;

procedure TfrmAnalyserDefine.acInsertRowExecute(Sender: TObject);
begin
  inherited;
  if memDefine.RecNo = memDefine.RecordCount then
    memDefine.Append
  else
    memDefine.Insert;
end;

procedure TfrmAnalyserDefine.DefOnDefinitionChange(Sender: TField);
begin
  inherited;
  F_NEED_UPDATE_DATA := true;
end;

procedure TfrmAnalyserDefine.acCapnhatDinhnghiaUpdate(Sender: TObject);
begin
  inherited;
  acCapnhatDinhnghia.Enabled := F_NEED_UPDATE_DATA;
end;

procedure TfrmAnalyserDefine.memDefineBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  F_NEED_UPDATE_DATA := true;
end;

procedure TfrmAnalyserDefine.memDefineBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  F_NEED_UPDATE_DATA := true;
end;

procedure TfrmAnalyserDefine.acCapnhatDinhnghiaExecute(Sender: TObject);
var
  i, max: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  dmMain.RollbackTransaction;
  // xoa du lieu dinh nghia cu
  qryExecute.SQL.Text :=
    'delete from hr_analyser_define where hr_analyser_define.analyser_id=:analyser_id';
  qryExecute.ParamByName('ANALYSER_ID').Value :=
    frmAnalyser.qryAnalyserANALYSER_ID.Value;
  try
    dmMain.ExecuteSQL(qryExecute);
  except
  end;
  memDefine.DisableControls;
  if ((memDefine.IsEmpty = false) and (memDefine.FieldCount > 1)) then
  begin
    max := memDefine.RecordCount * ((memDefine.FieldCount - 1) div 2);
    frmMain.SetStatusBarPrgDisplay(0, max);
    memDefine.First;
    qryExecute.SQL.Text := 'insert into hr_analyser_define ' +
      '(analyser_id,column_id,row_id,cell_define,cell_type) ' +
      ' values(:analyser_id,:column_id,:row_id,:cell_define,:cell_type)';
    qryExecute.ParamByName('ANALYSER_ID').Value :=
      frmAnalyser.qryAnalyserANALYSER_ID.Value;
    while not memDefine.Eof do
    begin
      qryExecute.ParamByName('ROW_ID').Value := memDefine.RecNo;
      i := 1;
      while (i < memDefine.FieldCount) do
      begin
        qryExecute.ParamByName('COLUMN_ID').Value := memDefine.Fields[i].Tag;
        qryExecute.ParamByName('CELL_DEFINE').Value :=
          memDefine.Fields[i].Value;
        qryExecute.ParamByName('CELL_TYPE').Value := memDefine.Fields[i +
          1].Value;
        try
          dmMain.ExecuteSQL(qryExecute);
        except
        end;
        i := i + 2;
        frmMain.BarPrgStepIt;
      end;
      memDefine.Next;
    end;
  end;
  dmMain.CommitTransaction;
  memDefine.First;
  memDefine.EnableControls;
  Screen.Cursor := crDefault;
end;

procedure TfrmAnalyserDefine.pageMainChanging(Sender: TObject;
  NewPage: TElTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if NewPage = tabAnalyserDefine then
    acTaobang.Execute;
end;

procedure TfrmAnalyserDefine.gridDefineChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
  inherited;
  ChangeCell(Node, Column);
end;

procedure TfrmAnalyserDefine.ChangeCell(Node: TdxTreeListNode; Column: Integer);
var
  F_CELL_DEFINITION: WideString;
begin
  if CHANGE_REPORT then exit;
  F_CELL_DEFINITION :=
    VarToWideStr(memDefine.FieldByName(gridDefine.Columns[Column].FieldName).Value);
  dxCellDefine.Text := Utf8Decode(StringReplace(Utf8Encode(F_CELL_DEFINITION),
    #13#10, ' ', [rfReplaceAll]));
  dxCellType.Text :=
    VarToStr(memDefine.FieldByName(gridDefine.Columns[Column].FieldName +
    '_TYPE').Value);
end;

procedure TfrmAnalyserDefine.gridDefineChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  inherited;
  ChangeCell(Node, gridDefine.FocusedColumn);
end;

procedure TfrmAnalyserDefine.dxCellDefineButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  ModifyDetail;
end;

procedure TfrmAnalyserDefine.gridDefineDblClick(Sender: TObject);
begin
  inherited;
  ModifyDetail;
end;

procedure TfrmAnalyserDefine.ModifyDetail;
begin
  with TfrmCellDefinition.Create(Self,
    VarToWideStr(memDefine.FieldByName(gridDefine.FocusedField.FieldName).Value),
    dxCellType.Text) do
  try
    if ShowModal = mrOK then
    begin
      self.dxCellType.Text := F_CELL_TYPE;
      self.dxCellDefine.Text :=
        Utf8Decode(StringReplace(Utf8Encode(F_CELL_DEFINITION), #13#10, ' ',
        [rfReplaceAll]));
      if not (memDefine.State in [dsInsert, dsEdit]) then
        memDefine.Edit;
      memDefine.FieldByName(gridDefine.FocusedField.FieldName).Value :=
        F_CELL_DEFINITION;
      memDefine.FieldByName(gridDefine.FocusedField.FieldName + '_TYPE').Value
        := F_CELL_TYPE;
      memDefine.Post;
    end;
  finally
    Free;
  end;
end;

procedure TfrmAnalyserDefine.gridDefineColumn1CustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    Atext := INtToStr(ANode.AbsoluteIndex + 1);
  except
  end
end;

procedure TfrmAnalyserDefine.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    if not (frmAnalyser.qryAnalyser.State in [dsEdit, dsInsert]) then
      frmAnalyser.qryAnalyser.Edit;
    try
      frmAnalyser.qryAnalyserREPORT_FILE.Value :=
        ExtractFileName(OpenDialog1.FileName);
      frmAnalyser.qryAnalyserREPORT_FILE_ENG.Value :=
        ExtractFileName(OpenDialog1.FileName);
    except
      ShowMessageUnicode(48);
    end;
  end;
end;

procedure TfrmAnalyserDefine.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    if not (frmAnalyser.qryAnalyser.State in [dsEdit, dsInsert]) then
      frmAnalyser.qryAnalyser.Edit;
    try
      frmAnalyser.qryAnalyserREPORT_FILE_ENG.Value :=
        ExtractFileName(OpenDialog1.FileName);
    except
      ShowMessageUnicode(48);
    end;
  end;
end;

end.

