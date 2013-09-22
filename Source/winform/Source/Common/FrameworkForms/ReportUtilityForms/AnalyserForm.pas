unit AnalyserForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ImgList,
  ElPgCtl, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBTL, ExtCtrls, ElPanel,
  ElSplit, dxLayoutControl, StdCtrls, ElCLabel, ElLabel, cxControls,
  dxDBGrid, DB, IBODataset, ActnList, dxBar, ElBtnCtl, ElPopBtn, StBase,
  StExpr, dxmdaset, ppDB, ppDBPipe, ppEndUsr, ppVar, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, SSP_Script;

const
  M_STEP = 4;
type
  TfrmAnalyser = class(TfrmBase)
    pageAnalyserList: TElPageControl;
    tabAnalyserList: TElTabSheet;
    imgFunction: TImageList;
    tlAnalyser: TdxDBTreeList;
    ElSplitter1: TElSplitter;
    panelInfo: TPanel;
    pnlReport: TElPanel;
    dxlcReport: TdxLayoutControl;
    lblReportCaption: TElLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    pageAnalyserInfo: TElPageControl;
    tabAnalyserResult: TElTabSheet;
    gridData: TdxDBGrid;
    qryAnalyser: TIBOQuery;
    dsAnalyser: TDataSource;
    qryAnalyserANALYSER_ID: TWideStringField;
    qryAnalyserANALYSER_TITLE: TWideStringField;
    qryAnalyserANALYSER_TITLE_ENG: TWideStringField;
    qryAnalyserP_ANALYSER_ID: TWideStringField;
    tlAnalyserANALYSER_TITLE: TdxDBTreeListColumn;
    tlAnalyserANALYSER_TITLE_ENG: TdxDBTreeListColumn;
    imgAnalyserTree: TImageList;
    dxBarManager1: TdxBarManager;
    dxDinhnghiaBaocao: TdxBarButton;
    ActionList1: TActionList;
    acDinhnghiaBaocao: TAction;
    dxAnalyserPopupMenu: TdxBarPopupMenu;
    qryFunctionList: TIBOQuery;
    dsFunctionList: TDataSource;
    dxlcFunctionList: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    ElPopupButton2: TElPopupButton;
    ElPopupButton3: TElPopupButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxlcFunctionListItem3: TdxLayoutItem;
    dxlcFunctionListItem4: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxlcFunctionListItem1: TdxLayoutItem;
    dxDBGrid1FUNCTION_NAME: TdxDBGridColumn;
    dxDBGrid1FUNCTION_PROTOTYPE: TdxDBGridColumn;
    dxDBGrid1FUNCTION_NOTE: TdxDBGridColumn;
    qryColumnList: TIBOQuery;
    qryColumnListANALYSER_ID: TWideStringField;
    qryColumnListCOLUMN_ID: TIntegerField;
    qryColumnListCOLUMN_TITLE: TWideStringField;
    qryColumnListCOLUMN_TITLE_ENG: TWideStringField;
    qryColumnListCOLUMN_SIZE: TIntegerField;
    qryColumnListCOLUMN_COLOR: TIntegerField;
    qryColumnListCOLUMN_DEFAULT_VALUE: TWideStringField;
    dsColumnList: TDataSource;
    qryExecute: TIBOQuery;
    acTaobang: TAction;
    memData: TdxMemData;
    dsData: TDataSource;
    qryData: TIBOQuery;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    panelMain: TPanel;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    sbGetData: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    btnHelp: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    btnClose: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    btnNoSelect: TElPopupButton;
    dxLayoutControl1Group1: TdxLayoutGroup;
    acLapDulieu: TAction;
    qryDataANALYSER_ID: TWideStringField;
    qryDataCOLUMN_ID: TIntegerField;
    qryDataROW_ID: TIntegerField;
    qryDataCELL_DEFINE: TWideStringField;
    qryDataCELL_TYPE: TWideStringField;
    qryDataCELL_DATA: TWideStringField;
    acCapnhatDL: TAction;
    qryUpdate: TIBOQuery;
    qryAnalyserREPORT_FILE: TWideStringField;
    qryAnalyserREPORT_FILE_ENG: TWideStringField;
    rptReport: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLine1: TppLine;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBImage1: TppDBImage;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppLabel11: TppLabel;
    ppDBText10: TppDBText;
    ppLabel12: TppLabel;
    ppDBText11: TppDBText;
    ppLabel13: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    dplReport: TppDBPipeline;
    acPreview: TAction;
    acDesign: TAction;
    acPrint: TAction;
    qryFunctionListFUNCTION_ID: TIntegerField;
    qryFunctionListFUNCTION_NAME: TWideStringField;
    qryFunctionListFUNCTION_PROTOTYPE: TWideStringField;
    qryFunctionListFUNCTION_NOTE: TWideStringField;
    dxPreview: TdxBarButton;
    dxDesign: TdxBarButton;
    dxPrint: TdxBarButton;
    dsgReport: TppDesigner;
    procedure tlAnalyserGetSelectedIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure tlAnalyserGetImageIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tlAnalyserMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acDinhnghiaBaocaoExecute(Sender: TObject);
    procedure OnBeforeInsertChild(Sender: TObject);
    procedure OnBeforeInsert(Sender: TObject);
    procedure qryAnalyserNewRecord(DataSet: TDataSet);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure qryColumnListNewRecord(DataSet: TDataSet);

    procedure RegisterFunctionList(expMain: TSSP_Script);
    function AnalyzeExpresion(expression: string; var error_code: integer):
      Variant;
    function AnalyzeSQL(sql: string; var error_code: integer): Variant;
    procedure acTaobangExecute(Sender: TObject);
    procedure DefOnCustomeDrawCell(
      Sender: TObject; ACanvas: TCanvas; ARect: TRect;
      ANode: TdxTreeListNode; AColumn: TdxTreeListColumn; ASelected,
      AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure acLapDulieuExecute(Sender: TObject);
    procedure SetTestFlag;
    procedure SetCalculateFlag;
    procedure acCapnhatDLExecute(Sender: TObject);
    function PrepareReport: boolean;
    procedure acPreviewExecute(Sender: TObject);
    procedure acDesignExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure PrepareCalculate;
  private
    { Private declarations }
    F_TEST_FLAG: string;
  public
    { Public declarations }
    F_ANALYSER_PARENT_ID: Variant;
    function Cell(row, col: Variant): Variant;
    function SumRow(row, from_col, to_col: Variant): Variant;
    function SumCol(col, from_row, to_row: Variant): Variant;
    function Report_value(REPORT_ID, ROW_ID, COL_ID: Variant): Variant;

  end;

var
  frmAnalyser: TfrmAnalyser;

implementation

uses MainDM, SSP_Library, AnalyserDefineForm, FunctionListForm, SSP_Math,
  HamsoDacthu, MainUnit, ppTypes, Math;

{$R *.dfm}

procedure TfrmAnalyser.SetTestFlag;
begin
  F_TEST_FLAG := 'TEST';
end;

procedure TfrmAnalyser.SetCalculateFlag;
begin
  F_TEST_FLAG := 'CALCULATE';
end;

procedure TfrmAnalyser.tlAnalyserGetSelectedIndex(Sender: TObject;
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

procedure TfrmAnalyser.tlAnalyserGetImageIndex(Sender: TObject;
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

procedure TfrmAnalyser.FormCreate(Sender: TObject);
begin
  inherited;
  qryAnalyser.Open;
  qryColumnList.Open;
  acTaobang.Execute;
  CustomExpand(tlAnalyser);
end;

procedure TfrmAnalyser.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryColumnList.Close;
  qryAnalyser.Close;
  action := caFree;
  frmAnalyser := nil;
end;

procedure TfrmAnalyser.tlAnalyserMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (Button = mbRight) then
  begin
    dxAnalyserPopupMenu.PopupFromCursorPos;
  end;
end;

procedure TfrmAnalyser.acDinhnghiaBaocaoExecute(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmAnalyserDefine, frmAnalyserDefine);
  if qryData.Active then
    qryData.Refresh
  else
    qryData.Open;
  acTaobang.Execute;
end;

procedure TfrmAnalyser.qryAnalyserNewRecord(DataSet: TDataSet);
begin
  inherited;
  if Length(VarToWideStr(F_ANALYSER_PARENT_ID)) > 0 then
  begin
    qryAnalyserP_ANALYSER_ID.Value := F_ANALYSER_PARENT_ID;
  end;
end;

procedure TfrmAnalyser.OnBeforeInsertChild(Sender: TObject);
begin
  F_ANALYSER_PARENT_ID := qryAnalyserANALYSER_ID.Value;
end;

procedure TfrmAnalyser.OnBeforeInsert(Sender: TObject);
begin
  F_ANALYSER_PARENT_ID := qryAnalyserP_ANALYSER_ID.Value;
end;

procedure TfrmAnalyser.ElPopupButton1Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmFunctionList, frmFunctionList);
  qryFunctionList.Refresh;
end;

procedure TfrmAnalyser.dxDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self, true, sender);
end;

procedure TfrmAnalyser.qryColumnListNewRecord(DataSet: TDataSet);
begin
  inherited;
  frmAnalyser.qryColumnListANALYSER_ID.Value :=
    frmAnalyser.qryAnalyserANALYSER_ID.Value;
  frmAnalyser.qryColumnListCOLUMN_ID.Value :=
    frmAnalyser.qryColumnList.RecordCount;
  frmAnalyser.qryColumnListCOLUMN_COLOR.Value := clWhite;
end;

procedure TfrmAnalyser.RegisterFunctionList(expMain: TSSP_Script);
begin
  expMain.ClearIdentifiers;
  // dang ky cac ham toan hoc co ban
  expMain.AddFunction2Param('Mod', _Mod);
  expMain.AddFunction2Param('Div', _Div);
  expMain.AddFunction1Param('Abs', _Abs);
  expMain.AddFunction1Param('Sqrt', _Sqrt);
  expMain.AddFunction1Param('Exp', _Exp);
  expMain.AddFunction1Param('Ln', _Ln);
  expMain.AddFunction1Param('Sqr', _Sqr);
  expMain.AddFunction2Param('Round', _Round);
  expMain.AddFunction2Param('Min', _Min);
  expMain.AddFunction2Param('Max', _Max);

  //=========================================
  expMain.AddMethod2Param('CELL', CELL);
  expMain.AddMethod3Param('SUM_ROW', SumRow);
  expMain.AddMethod3Param('SUM_COL', SumCol);
  expMain.AddMethod3Param('REPORT_VALUE', Report_value);
  //=========================================
  DangkyHamDacthu;
end;

function TfrmAnalyser.AnalyzeSQL(sql: string; var error_code: integer): Variant;
begin
  if qryExecute.Active then
    qryExecute.Close;
  qryExecute.SQL.Text := sql;
  error_code := 0;
  try
    qryExecute.Open;
    if qryExecute.IsEmpty then
      result := ''
    else
      result := qryExecute.Fields[0].Value;
    qryExecute.Close;
  except
    result := '';
    error_code := 1;
  end;
end;

function TfrmAnalyser.AnalyzeExpresion(expression: string; var error_code:
  integer): Variant;
var
  expMain: TSSP_Script;
begin
  expMain := TSSP_Script.Create(self);
  RegisterFunctionList(expMain);

  expMain.Script := expression;
  try
    result := expMain.AnalyzeScript;
  except
    result := '';
  end;
  error_code := expMain.LastError;
  expMain.Free;
end;

procedure TfrmAnalyser.acTaobangExecute(Sender: TObject);
var
  f: TField;
  col: TdxDBTreeListColumn;
  i: integer;
  ROW_ID: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  lblReportCaption.Caption := WideUpperCase(qryAnalyserANALYSER_TITLE.Value);

  memData.DisableControls;
  if memData.Active then
    memData.Close;

  if memData.FieldCount > 1 then
  begin
    for i := memData.FieldCount - 1 downto 1 do
      memData.Fields[i].Free;
  end;
  if gridData.ColumnCount > 0 then
  begin
    for i := gridData.ColumnCount - 1 downto 0 do
      gridData.Columns[i].Free;
  end;
  if qryColumnList.IsEmpty then
  begin
    gridData.ShowHeader := false;
    gridData.ShowGrid := false;
  end
  else
  begin
    gridData.ShowHeader := true;
    gridData.ShowGrid := true;
    frmMain.SetStatusBarPrgDisplay(0, frmAnalyser.qryColumnList.RecordCount);
    qryColumnList.First;
    gridData.BeginUpdate;
    while not qryColumnList.Eof do
    begin
      // =========tao field cho mem===========
      f := TWideStringField.Create(memData);
      f.Name := memData.Name + qryColumnListCOLUMN_ID.AsString;
      f.FieldName := 'F_' + qryColumnListCOLUMN_ID.AsString;
      f.Tag := qryColumnListCOLUMN_ID.Value;
      f.FieldKind := fkData;
      f.DataSet := memData;
      f.SetFieldType(ftWideString);
      f.Size := 1024;

      col := gridData.CreateColumn(TdxDBGridColumn);
      col.Name := gridData.Name + f.FieldName;
      col.FieldName := f.FieldName;
      col.Width := qryColumnListCOLUMN_SIZE.Value;
      col.HeaderAlignment := taCenter;
      col.DisableCustomizing := true;
      col.Caption := qryColumnListCOLUMN_TITLE.Value;
      col.OnCustomDrawCell := DefOnCustomeDrawCell;
      col.Tag := qryColumnListCOLUMN_COLOR.Value;

      f := TWideStringField.Create(memData);
      f.Name := memData.Name + frmAnalyser.qryColumnListCOLUMN_ID.AsString +
        '_TYPE';
      f.FieldName := 'F_' + frmAnalyser.qryColumnListCOLUMN_ID.AsString +
        '_TYPE';
      f.FieldKind := fkData;
      f.DataSet := memData;
      f.SetFieldType(ftWideString);
      f.Size := 30;

      f := TWideStringField.Create(memData);
      f.Name := memData.Name + frmAnalyser.qryColumnListCOLUMN_ID.AsString +
        '_DEFINITION';
      f.FieldName := 'F_' + frmAnalyser.qryColumnListCOLUMN_ID.AsString +
        '_DEFINITION';
      f.FieldKind := fkData;
      f.DataSet := memData;
      f.SetFieldType(ftWideString);
      f.Size := 1024;

      f := TIntegerField.Create(memData);
      f.Name := memData.Name + frmAnalyser.qryColumnListCOLUMN_ID.AsString +
        '_CALCULATED';
      f.FieldName := 'F_' + frmAnalyser.qryColumnListCOLUMN_ID.AsString +
        '_CALCULATED';
      f.FieldKind := fkData;
      f.DataSet := memData;
      f.SetFieldType(ftInteger);

      qryColumnList.Next;
      frmMain.BarPrgStepIt;
    end;
    gridData.EndUpdate;
  end;
  //========== tao data definition ===========

  memData.Open;
  if not qryData.Active then
    qryData.Open;
  if qryData.IsEmpty = false then
  begin
    frmmain.SetStatusBarPrgDisplay(0, qryData.RecordCount);
    qryData.First;
    ROW_ID := qryDataROW_ID.Value;

    memData.Append;
    while not qryData.Eof do
    begin
      if (ROW_ID <> qryDataROW_ID.Value) or
        (qryData.Eof) then
      begin
        if (memData.State in [dsEdit, dsInsert]) then
          memData.Post;
        if qryData.Eof then
          Break
        else
          ROW_ID := qryDataROW_ID.Value;

        memData.Append;
      end;
      if not qryDataCOLUMN_ID.IsNull then
      begin
        if Assigned(memData.FindField('F_' + qryDataCOLUMN_ID.AsString)) then
        begin
          if qryDataCELL_DATA.IsNull then
            memData.FieldByName('F_' + qryDataCOLUMN_ID.AsString).Clear
          else
            memData.FieldByName('F_' + qryDataCOLUMN_ID.AsString).Value
              := qryDataCELL_DATA.Value;

          if qryDataCELL_DEFINE.IsNull then
            memData.FieldByName('F_' + qryDataCOLUMN_ID.AsString +
              '_DEFINITION').Clear
          else
            memData.FieldByName('F_' + qryDataCOLUMN_ID.AsString +
              '_DEFINITION').Value
              := qryDataCELL_DEFINE.Value;

          if qryDataCELL_TYPE.IsNull then
            memData.FieldByName('F_' + qryDataCOLUMN_ID.AsString + '_TYPE').Clear
          else
            memData.FieldByName('F_' + qryDataCOLUMN_ID.AsString + '_TYPE').Value
              := qryDataCELL_TYPE.Value;

          memData.FieldByName('F_' + qryDataCOLUMN_ID.AsString +
            '_CALCULATED').Value := 0;
        end;
      end;
      qryData.Next;
      frmMain.BarPrgStepIt;
    end;
  end;
  qryData.Close;
  if memData.State in [dsInsert, dsEdit] then
    memData.Post;

  memData.First;
  memData.EnableControls;
  Screen.Cursor := crDefault;
end;

procedure TfrmAnalyser.DefOnCustomeDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect;
  ANode: TdxTreeListNode; AColumn: TdxTreeListColumn; ASelected,
  AFocused, ANewItemRow: Boolean; var AText: WideString;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
  AColor := AColumn.Tag;
end;

procedure TfrmAnalyser.acLapDulieuExecute(Sender: TObject);
var
  i, j, max: integer;
begin
  inherited;
  if ShowMessageUnicode(47) <> mrYes then exit;
  Screen.Cursor := crSQLWait;
  memData.DisableControls;
  SetCalculateFlag;
  PrepareCalculate;

  frmMain.SetStatusBarPrgDisplay(0, memData.RecordCount);
  max := gridData.ColumnCount;
  for i := 1 to memData.RecordCount do
  begin
    j := 1;
    while j <= max do
    begin
      Cell(i, j);
      j := j + 1;
    end;
    frmMain.BarPrgStepIt;
  end;
  acCapnhatDL.Execute;
  memData.First;
  memData.EnableControls;
  Screen.Cursor := crDefault;
end;

procedure TfrmAnalyser.PrepareCalculate;
var
  i: integer;
  field_name: string;
begin
  if (memData.IsEmpty) or (memData.FieldCount <= 1) then exit;
  memData.First;
  while not memData.Eof do
  begin
    i := 1;
    while i < memData.FieldCount do
    begin
      field_name := memData.Fields[i].FieldName;
      if memData.FieldByName(field_name + '_CALCULATED').Value <> 0 then
      begin
        if not (memData.State in [dsInsert, dsEdit]) then
          memData.Edit;
        memData.FieldByName(field_name + '_CALCULATED').Value := 0;
      end;
      i := i + M_STEP;
    end;
    if (memData.State in [dsInsert, dsEdit]) then
      memData.Post;
    memData.Next;
  end;
end;

function TfrmAnalyser.Cell(row, col: Variant): Variant;
var
  F_CELL_DEFINITION, F_CELL_TYPE, F_CELL_DATA: WideString;
  F_CELL_CALCULATED, error_code: integer;
  f_row, f_col: integer;
  field_name: string;
begin
  if F_TEST_FLAG = 'TEST' then
  begin
    Result := 1;
    Exit;
  end;

  f_col := (Integer(col) - 1) * M_STEP + 1;
  f_row := Integer(row);

  if (f_col > memData.FieldCount) then
  begin
    Result := 0;
    Exit;
  end;

  if (f_row > memData.RecordCount) then
  begin
    Result := 0;
    Exit;
  end;

  memData.RecNo := f_row;
  field_name := memData.Fields[f_col].FieldName;
  F_CELL_CALCULATED := memData.FieldByName(field_name + '_CALCULATED').AsInteger;
    //field _CALCULATED

  if F_CELL_CALCULATED = 1 then // da tinh roi - khong tinh lai
  begin
    F_CELL_DATA := VarToWideStr(memData.FieldByName(field_name).Value);
    result := F_CELL_DATA;
  end
  else
  begin
    F_CELL_TYPE := VarToWideStr(memData.FieldByName(field_name +
      '_TYPE').Value);
    F_CELL_DEFINITION := VarToWideStr(memData.FieldByName(field_name +
      '_DEFINITION').Value);
    if F_CELL_TYPE = 'VAN_BAN' then
    begin
      F_CELL_DATA := F_CELL_DEFINITION;
    end
    else
      if F_CELL_TYPE = 'BIEU_THUC' then
    begin
      F_CELL_DATA := VarToWideStr(AnalyzeExpresion(string(F_CELL_DEFINITION),
        error_code));
    end
    else
      if F_CELL_TYPE = 'CAU_SQL' then
    begin
      F_CELL_DATA := VarToWideStr(AnalyzeSQL(string(F_CELL_DEFINITION),
        error_code));
    end
    else // trong
    begin
      F_CELL_DATA := '';
    end;

    F_CELL_CALCULATED := 1;
    try
      memData.RecNo := f_row;
      if not (memData.State in [dsInsert, dsEdit]) then
        memData.Edit;
      memData.FieldByName(field_name).Value := F_CELL_DATA;
      memData.FieldByName(field_name + '_CALCULATED').Value :=
        F_CELL_CALCULATED;
      memData.Post;
    except
      memData.Cancel;
    end;
    result := F_CELL_DATA;
  end;
end;

function TfrmAnalyser.SumRow(row, from_col, to_col: Variant): Variant;
var
  F_CELL_DEFINITION, F_CELL_TYPE, F_CELL_DATA: WideString;
  F_CELL_CALCULATED, error_code: integer;
  f_row, f_col, f_from_col, f_to_col: integer;
  field_name: string;
begin
  if F_TEST_FLAG = 'TEST' then
  begin
    Result := 1;
    Exit;
  end;
  f_row := Integer(row);
  if (f_row > memData.RecordCount) then
  begin
    Result := 0;
    Exit;
  end;
  if (memData.FieldCount <= 1) then
  begin
    Result := 0;
    Exit;
  end;

  memData.RecNo := f_row;

  f_from_col := Max(Integer(from_col), 1);
  f_to_col := Min(Integer(to_col), (memData.FieldCount - 1) div M_STEP);
  f_col := f_from_col;
  Result := 0;

  while f_col <= f_to_col do
  begin
    field_name := memData.Fields[(f_col - 1) * M_STEP + 1].FieldName;
    F_CELL_CALCULATED := memData.FieldByName(field_name +
      '_CALCULATED').AsInteger; //field _CALCULATED
    if F_CELL_CALCULATED = 1 then // da tinh roi - khong tinh lai
    begin
      F_CELL_DATA := VarToWideStr(memData.FieldByName(field_name).Value);
    end
    else
    begin
      F_CELL_TYPE := VarToWideStr(memData.FieldByName(field_name +
        '_TYPE').Value);
      F_CELL_DEFINITION := VarToWideStr(memData.FieldByName(field_name +
        '_DEFINITION').Value);
      if F_CELL_TYPE = 'VAN_BAN' then
      begin
        F_CELL_DATA := F_CELL_DEFINITION;
      end
      else
        if F_CELL_TYPE = 'BIEU_THUC' then
      begin
        F_CELL_DATA := VarToWideStr(AnalyzeExpresion(string(F_CELL_DEFINITION),
          error_code));
      end
      else
        if F_CELL_TYPE = 'CAU_SQL' then
      begin
        F_CELL_DATA := VarToWideStr(AnalyzeSQL(string(F_CELL_DEFINITION),
          error_code));
      end
      else // trong
      begin
        F_CELL_DATA := '';
      end;

      F_CELL_CALCULATED := 1;
      try
        memData.RecNo := f_row;
        if not (memData.State in [dsInsert, dsEdit]) then
          memData.Edit;
        memData.FieldByName(field_name).Value := F_CELL_DATA;
        memData.FieldByName(field_name + '_CALCULATED').Value :=
          F_CELL_CALCULATED;
        memData.Post;
      except
        memData.Cancel;
      end;
    end;
    result := StrToFloatDef(string(F_CELL_DATA), 0) + Result;
    f_col := f_col + 1;
  end; //end while
end;

function TfrmAnalyser.SumCol(col, from_row, to_row: Variant): Variant;
var
  F_CELL_DEFINITION, F_CELL_TYPE, F_CELL_DATA: WideString;
  F_CELL_CALCULATED, error_code: integer;
  f_row, f_col, f_from_row, f_to_row: integer;
  field_name: string;
begin
  if F_TEST_FLAG = 'TEST' then
  begin
    Result := 1;
    Exit;
  end;
  f_col := (Integer(col) - 1) * M_STEP + 1;

  if (f_col > memData.FieldCount) then
  begin
    Result := 0;
    Exit;
  end;

  if (memData.IsEmpty) then
  begin
    Result := 0;
    Exit;
  end;

  f_from_row := Max(1, Integer(from_row));
  f_to_row := Min(Integer(to_row), memData.RecordCount);

  f_row := from_row;
  Result := 0;

  while f_row <= f_to_row do
  begin
    memData.RecNo := f_row;
    field_name := memData.Fields[f_col].FieldName;
    F_CELL_CALCULATED := memData.FieldByName(field_name +
      '_CALCULATED').AsInteger; //field _CALCULATED
    if F_CELL_CALCULATED = 1 then // da tinh roi - khong tinh lai
    begin
      F_CELL_DATA := VarToWideStr(memData.FieldByName(field_name).Value);
    end
    else
    begin
      F_CELL_TYPE := VarToWideStr(memData.FieldByName(field_name +
        '_TYPE').Value);
      F_CELL_DEFINITION := VarToWideStr(memData.FieldByName(field_name +
        '_DEFINITION').Value);
      if F_CELL_TYPE = 'VAN_BAN' then
      begin
        F_CELL_DATA := F_CELL_DEFINITION;
      end
      else
        if F_CELL_TYPE = 'BIEU_THUC' then
      begin
        F_CELL_DATA := VarToWideStr(AnalyzeExpresion(string(F_CELL_DEFINITION),
          error_code));
      end
      else
        if F_CELL_TYPE = 'CAU_SQL' then
      begin
        F_CELL_DATA := VarToWideStr(AnalyzeSQL(string(F_CELL_DEFINITION),
          error_code));
      end
      else // trong
      begin
        F_CELL_DATA := '';
      end;

      F_CELL_CALCULATED := 1;
      try
        memData.RecNo := f_row;
        if not (memData.State in [dsInsert, dsEdit]) then
          memData.Edit;
        memData.FieldByName(field_name).Value := F_CELL_DATA;
        memData.FieldByName(field_name + '_CALCULATED').Value :=
          F_CELL_CALCULATED;
        memData.Post;
      except
        memData.Cancel;
      end;
    end;
    result := StrToFloatDef(string(F_CELL_DATA), 0) + Result;
    f_row := f_row + 1;
  end; //end while
end;

function TfrmAnalyser.Report_value(REPORT_ID, ROW_ID, COL_ID: Variant): Variant;
begin
  if F_TEST_FLAG = 'TEST' then
  begin
    Result := 1;
    Exit;
  end;

  if qryExecute.Active then
    qryExecute.Close;
  try
    qryExecute.SQL.Text := 'select cell_data from hr_analyser_define '
      + ' where (analyser_id=:analyser_id) and (row_id=:row_id) and '
      + ' (column_id=:column_id)';
    qryExecute.ParamByName('ANALYSER_ID').Value := REPORT_ID;
    qryExecute.ParamByName('ROW_ID').Value := ROW_ID;
    qryExecute.ParamByName('COLUMN_ID').Value := COL_ID;
    qryExecute.Open;

    if qryExecute.IsEmpty then
      result := 0
    else
      result := qryExecute.FieldByName('CELL_DATA').Value;
  except
    result := 0;
  end;
  qryExecute.Close;
end;
//=================================================================

procedure TfrmAnalyser.acCapnhatDLExecute(Sender: TObject);
var
  i, max: integer;
begin
  inherited;
  dmMain.RollbackTransaction;
  // xoa du lieu dinh nghia cu

  if ((memData.IsEmpty = false) and (memData.FieldCount > 1)) then
  begin
    max := memData.RecordCount * ((memData.FieldCount - 1) div M_STEP);
    frmMain.SetStatusBarPrgDisplay(0, max);
    memData.First;
    qryUpdate.SQL.Text := 'update hr_analyser_define ' +
      'set cell_data=:cell_data ' +
      'where (analyser_id=:analyser_id) and (column_id=:column_id) and (row_id=:row_id)';

    qryUpdate.ParamByName('ANALYSER_ID').Value :=
      frmAnalyser.qryAnalyserANALYSER_ID.Value;
    while not memData.Eof do
    begin
      qryUpdate.ParamByName('ROW_ID').Value := memData.RecNo;
      i := 1;
      while (i < memData.FieldCount) do
      begin
        qryUpdate.ParamByName('COLUMN_ID').Value := memData.Fields[i].Tag;
        qryUpdate.ParamByName('CELL_DATA').Value := memData.Fields[i].Value;
        try
          dmMain.ExecuteSQL(qryUpdate);
        except
        end;
        i := i + M_STEP;
        frmMain.BarPrgStepIt;
      end;
      memData.Next;
    end;
  end;
  dmMain.CommitTransaction;
end;

function TfrmAnalyser.PrepareReport: boolean;
var
  pathName, pathDirectory: string;
begin
  try
    if sysConfig.Language = 2 then
    begin
      pathDirectory := ExtractFilePath(Application.ExeName) + 'Reports\Eng';
      pathName := pathDirectory + '\' + qryAnalyserREPORT_FILE_ENG.AsString;
    end
    else
    begin
      pathDirectory := ExtractFilePath(Application.ExeName) + 'Reports\Vn';
      pathName := pathDirectory + '\' + qryAnalyserREPORT_FILE.AsString;
    end;

    if (FileExists(pathName)) then
    begin
      rptReport.Template.FileName := pathName;
      rptReport.Template.Load;
      dplReport.DataSource := dsData;
    end
    else
    begin
      ShowMessageUnicode(24);
      Result := false;
      exit;
    end;
  except
    result := false;
  end;
  result := true;
end;

procedure TfrmAnalyser.acPreviewExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  dmMain.DefOnBeforePrint(true, qryAnalyser, self); //thiet lap label
  rptReport.AllowPrintToFile := True;
  rptReport.DeviceType := dtScreen;
  rptReport.Print;
end;

procedure TfrmAnalyser.acDesignExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  dmMain.DefOnBeforePrint(false, qryAnalyser, self);
  dsgReport.ShowModal;
end;

procedure TfrmAnalyser.acPrintExecute(Sender: TObject);
begin
  inherited;
  if not PrepareReport then exit;

  dmMain.DefOnBeforePrint(true, qryAnalyser, self); //thiet lap label
  rptReport.AllowPrintToFile := True;
  rptReport.DeviceType := dtPrinter;
  rptReport.Print;
end;

end.

