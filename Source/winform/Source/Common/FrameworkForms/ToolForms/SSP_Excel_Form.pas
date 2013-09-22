unit SSP_Excel_Form;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, ExtCtrls, ElPanel, ElSplit, ElPgCtl,
  dxExEdtr, DB, IBODataset, dxCntner, dxTL, dxDBCtrl, dxDBTL, ImgList,
  ActnList, dxBar, RichViewActions, RVGrids, dxDBGrid, dxmdaset, Grids,
  DBGrids, ElBiProgr, ElBtnCtl, ElPopBtn, dxEditor, dxEdLib, dxBarExtItems,
  StdCtrls, ElCLabel, ElLabel, ToolWin, ComCtrls, SSP_Script;

const DEFAULT_COL_COUNT = 10;
  DEFAULT_ROW_COUNT = 50;
  DEFAULT_SCALE = 500;
  MAX_COLUMN_COUNT = 256;
  MAX_ROW_COUNT = 1024;
type
  TActionState = (asNoAction, asLoadFromGridToView, asSaveFromViewToGrid, asUpdateToGridCell, asReadCellData, asClone, asCellEditing);
  TSSPCell = class(TObject)
  private
    FTestFlag: integer;

    FCellValue: WideString;
    FCellCode: WideString;
    FCellType: WideString;
    FCellFormat: WideString;
    FCellFont: TFont;

    FRelatedCells: TList;

    FColumn: TdxTreeListColumn;
    FNode: TdxTreeListNode;
    FGrid: TdxTreeList;
    FState: TActionState;

    FName: string;

    procedure CalculateValue;
    procedure SetCellValue(Value: WideString);
    procedure SetCellCode(Value: WideString);

  public
    property Name: string read FName write FName;
    property State: TActionState read FState write FState;
    property Column: TdxTreeListColumn read FColumn write FColumn;
    property Node: TdxTreeListNode read FNode write FNode;
    property Grid: TdxTreeList read FGrid write FGrid;

    property CellValue: WideString read FCellValue write SetCellValue;
    property CellCode: WideString read FCellCode write SetCellCode;
    property CellType: WideString read FCellType write FCellType;
    property CellFormat: WideString read FCellFormat write FCellFormat;
    property CellFont: TFont read FCellFont write FCellFont;

    constructor Create(node: TdxTreeListNode; column: TdxTreeListColumn);
    destructor Destroy;

    procedure Clone(from_cell: TSSPCell);
    function RegisterRelatedCell(cell: TSSPCell): Boolean;
    function IsInfinited: Boolean;
    procedure CopyCode(Value: WideString);
  end;
  //============================================================================
  TSSPRow = class(TStringList)
  private
    FGrid: TdxTreeList;
    FNode: TdxTreeListNode;
    FName: string;
  public
    property Name: string read FName write FName;
    property Node: TdxTreeListNode read FNode write FNode;
    property Grid: TdxTreeList read FGrid write FGrid;
    constructor Create(node: TdxTreeListNode);
    function GetCell(index: integer): TSSPCell;
    function AddCell(cell: TSSPCell): integer;
    function InsertCell(cell: TSSPCell; at_position: integer): integer;
    function DeleteCell(cell: TSSPCell): integer;
  end;

  TSSPExcelTable = class(TComponent)
  private
    { Private declarations }
    FTabID: string;
    FPage: TElPageControl;
    FTab: TElTabSheet;
    FGrid: TdxTreeList;
    FFieldList: TStringList;
    FRows: TStringList;
    FCurrentCellIndex: integer;
    FCurrentNodeIndex: integer;
    FActionState: TActionState;
    FNameIndex: integer;
    FIsChanged: boolean;
  public
    property NameIndex: integer read FNameIndex write FNameIndex;
    property Page: TElPageControl read FPage;
    property Tab: TElTabSheet read FTab;
    property Grid: TdxTreeList read FGrid;
    property Rows: TStringList read FRows write FRows;
    property CurrentCellIndex: integer read FCurrentCellIndex;
    property CurrentNodeIndex: integer read FCurrentNodeIndex write FCurrentNodeIndex;
    property IsChanged: boolean read FIsChanged write FIsChanged;

    constructor Create(AOwner: TComponent; page: TElPageControl; tabcode: string);
    destructor Destroy; override;
    procedure LoadData;
    procedure DefOnChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure DefOnChangeColumn(Sender: TObject;
      Node: TdxTreeListNode; Column: Integer);
    procedure DefOnDblClick(Sender: TObject);
    procedure DefOnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DefOnExit(Sender: TObject);
    procedure DefOnCellEditing(Sender: TObject);
    procedure DefOnCellEdited(Sender: TObject;
      Node: TdxTreeListNode);
    procedure DefOnDrawNodeIndex(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
      var AText: WideString; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure DefOnEndDragColumn(Sender: TObject; X,
      Y: Integer; Column: TdxTreeListColumn; var NewPosition: Integer);
    procedure DefOnDrawColumnHeader(
      Sender: TObject; AColumn: TdxTreeListColumn; ACanvas: TCanvas;
      ARect: TRect; var AText: WideString; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
      var ADone: Boolean);
    procedure DefOnDragEndHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; P: TPoint; var NewPosInfo: TdxHeaderPosInfo;
      var Accept: Boolean);
    procedure DefOnGridMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

    procedure UpdateCellView(cell: TSSPCell = nil);
    { Public declarations }
  public
    CalculatedCell: TSSPCell;
    function GetRow(index: integer): TSSPRow;
    function SaveTable: boolean;

  end;

  TfrmSSP_Excel = class(TfrmBase)
    pageExcelTabList: TElPageControl;
    tabExcelTabList: TElTabSheet;
    ElSplitter1: TElSplitter;
    panelMainData: TPanel;
    treeTabList: TdxDBTreeList;
    dsTabList: TDataSource;
    qryTabList: TIBOQuery;
    ImageList1: TImageList;
    dxBarManager1: TdxBarManager;
    dxNewTab: TdxBarButton;
    ActionList1: TActionList;
    acNewTab: TAction;
    acDeleteTab: TAction;
    acRefreshTab: TAction;
    acRenameTab: TAction;
    treeTabListTAB_TITLE: TdxDBTreeListColumn;
    dxDeleteTab: TdxBarButton;
    dxRename: TdxBarButton;
    dxTabPopupMenu: TdxBarPopupMenu;
    qryTabListTAB_ID: TIntegerField;
    qryTabListTAB_TITLE: TWideStringField;
    qryTabListTAB_NOTE: TWideStringField;
    qryTabListIS_GROUP: TIntegerField;
    qryTabListGROUP_ID: TIntegerField;
    acLoadTable: TAction;
    pageData: TElPageControl;
    acFreeTables: TAction;
    qryInitData: TIBOQuery;
    treeTabListTAB_ID: TdxDBTreeListMaskColumn;
    dxNewCol: TdxBarButton;
    acNewCol: TAction;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxCellCode: TdxEdit;
    dxCellValue: TdxEdit;
    dxCellFormat: TdxEdit;
    dxCellType: TdxImageEdit;
    panelTool: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxCellPosition: TdxEdit;
    panelCode: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    acEditCode: TAction;
    panelBackground: TPanel;
    imgWordModul: TImageList;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    acRemoveCol: TAction;
    acNewRow: TAction;
    acRemoveRow: TAction;
    qrySaveData: TIBOQuery;
    acSaveTable: TAction;
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    qryExecute: TIBOQuery;
    acAddRow: TAction;
    acAddCol: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure treeTabListMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acNewTabExecute(Sender: TObject);
    procedure acRenameTabExecute(Sender: TObject);
    procedure acRenameTabUpdate(Sender: TObject);
    procedure treeTabListGetSelectedIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure treeTabListGetImageIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure acLoadTableExecute(Sender: TObject);
    procedure InitTableData(TabID: integer; col_count: integer = DEFAULT_COL_COUNT; row_count: integer = DEFAULT_ROW_COUNT);
    procedure InitTableView(TabID: integer);
    procedure acFreeTablesExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure treeTabListChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure ActiveCurrentPage;
    procedure acDeleteTabUpdate(Sender: TObject);
    procedure acDeleteTabExecute(Sender: TObject);
    procedure qryTabListBeforeDelete(DataSet: TDataSet);
    procedure acNewColExecute(Sender: TObject);
    function GetTable(index: integer): TSSPExcelTable;
    procedure dxCellCodeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxCellCodeChange(Sender: TObject);
    procedure dxCellCodeExit(Sender: TObject);
    procedure acRemoveColExecute(Sender: TObject);
    procedure acNewRowExecute(Sender: TObject);
    procedure acRemoveRowExecute(Sender: TObject);
    procedure acSaveTableExecute(Sender: TObject);

    function SQLAnalyse(Code: WideString; var Value: WideString): boolean;
    function MathAnalyse(Code: WideString; var Value: WideString): boolean;
    function DateAnalyse(Code: WideString; var Value: WideString): boolean;
    function TimeAnalyse(Code: WideString; var Value: WideString): boolean;
    procedure RegisterFunctions;

    procedure dxTreeList1EditValidate(Sender: TObject;
      var ErrorText: WideString; var Accept: Boolean);
    procedure dxTreeList1Column1Validate(Sender: TObject;
      var ErrorText: WideString; var Accept: Boolean);
    procedure acEditCodeExecute(Sender: TObject);
    procedure acAddRowExecute(Sender: TObject);
    procedure acAddColExecute(Sender: TObject);

  private
    { Private declarations }
    CanChangePage: boolean;
    CurrentTableIndex: integer;
    CurrentTable: TSSPExcelTable;
    analyser: TSSP_Script;
  public
    { Public declarations }
    function CELL(row_index, col_index: variant): variant;
    function SUM_COL(col_index, from_row, to_row: variant): variant;
    function SUM_ROW(row_index, from_col, to_col: variant): variant;
    function SUM(from_row, from_col, to_row, to_col: variant): variant;

    function AVG_COL(col_index, from_row, to_row: variant): variant;
    function AVG_ROW(row_index, from_col, to_col: variant): variant;
    function AVG(from_row, from_col, to_row, to_col: variant): variant;

  end;
var
  frmSSP_Excel: TfrmSSP_Excel;
  listTable: TStringList;
implementation

uses MainDM, SSP_Library, SSP_Menus, SSP_Excel_InsertPageForm, Math,
  MainUnit, SSP_Excel_Library, SSP_Excel_Coder_Form, SSP_Math;

{$R *.dfm}
//===CLASS TSSPCell ========================================================================

constructor TSSPCell.Create(node: TdxTreeListNode; column: TdxTreeListColumn);
begin
  inherited Create;
  FTestFlag := 0;
  FGrid := TdxTreeList(node.Owner);
  FNode := node;
  FColumn := column;
  FCellFont := TFont.Create;
  FRelatedCells := TList.Create;
end;

destructor TSSPCell.Destroy;
begin
  FCellFont.Free;
  FRelatedCells.Free;

  inherited Destroy;
end;

procedure TSSPCell.CopyCode(Value: WideString);
begin
  if Assigned(frmSSPExcelCoder) then
    frmSSPExcelCoder.AssignCell(self);
  FCellCode := Value;
end;

procedure TSSPCell.SetCellCode(Value: WideString);
begin
  if Assigned(frmSSPExcelCoder) then
    frmSSPExcelCoder.AssignCell(self);
  FCellCode := Value;
  CalculateValue;
end;

procedure TSSPCell.SetCellValue(Value: WideString);
begin
  FCellValue := Value;
  FNode.Values[FColumn.Index] := Value;
  //  FGrid.Owner.Repaint;
end;

procedure TSSPCell.CalculateValue;
var i: integer;
  temp: WideString;
begin
  frmSSP_Excel.CurrentTable.CalculatedCell := self;

  if frmSSP_Excel.SQLAnalyse(FCellCode, temp) = false then
    if frmSSP_Excel.MathAnalyse(FCellCode, temp) = false then
      if frmSSP_Excel.DateAnalyse(FCellCode, temp) = false then
        if frmSSP_Excel.TimeAnalyse(FCellCode, temp) = false then
          temp := FCellCode;
  if State = asNoAction then
    CellValue := temp;

  if FRelatedCells.Count > 0 then
    for i := 0 to FRelatedCells.Count - 1 do
    begin
      TSSPCell(FRelatedCells.Items[i]).CalculateValue;
    end;
end;

procedure TSSPCell.Clone(from_cell: TSSPCell);
var i: integer;
begin
  if Assigned(from_cell) then
  begin
    State := asClone;
    CellValue := from_cell.CellValue;
    CellCode := from_cell.CellCode;
    CellType := from_cell.CellType;
    CellFormat := from_cell.CellFormat;
    State := asNoAction;
    FRelatedCells.Clear;

    //dang ky cac cell-object lien quan
    for i := 0 to from_cell.FRelatedCells.Count - 1 do
      FRelatedCells.Add(from_cell.FRelatedCells.Items[i]);
  end;
end;

function TSSPCell.RegisterRelatedCell(cell: TSSPCell): boolean;
var i: integer;
  found: boolean;
begin
  result := true;
  //ghi nho cell co lien quan vao danh sach
  if FRelatedCells.IndexOf(cell) = -1 then
    FRelatedCells.Add(cell);

  //kiem tra vong lap, neu phat hien co vong lap thi ngung
  if cell.IsInfinited then
  begin
    Result := false;
    ShowMessageUnicode(66);
    FRelatedCells.Remove(cell);
  end;
end;

function TSSPCell.IsInfinited: Boolean;
var i: integer;
begin
  result := false;
  Inc(FTestFlag);
  if FTestFlag >= 2 then
  begin
    //phat hien tra cell nay da tung duoc CheckRecursive;
    //tra gia tri dung, khong kiem tra nua
    result := true;
  end
  else
  begin
    //duyet tat ca nhung cell co lien quan
    if FRelatedCells.Count > 0 then
    begin
      for i := 0 to FRelatedCells.Count - 1 do
        if TSSPCell(FRelatedCells.Items[i]).IsInfinited then
          //neu cell do kiem tra thay co hien tuong Recursive thi
        begin
          //tra gia tri dung, khong kiem tra nua
          result := true;
          //ngung, khong can kiem tra tiep
          Break;
        end;
    end;
  end;
  FTestFlag := 0;
end;
//===CLASS TSSPRow ========================================================================

constructor TSSPRow.Create(node: TdxTreeListNode);
begin
  inherited Create;
  FNode := node;
  FGrid := TdxTreeList(node.Owner);
end;

function TSSPRow.GetCell(index: integer): TSSPCell;
begin
  result := TSSPCell(Objects[index]);
end;

function TSSPRow.AddCell(cell: TSSPCell): integer;
begin
  result := AddObject(cell.Name, cell);
end;

function TSSPRow.InsertCell(cell: TSSPCell; at_position: integer): integer;
begin
  InsertObject(at_position, cell.Name, cell);
end;

function TSSPRow.DeleteCell(cell: TSSPCell): integer;
var index: integer;
begin
  index := IndexOfObject(cell);
  if index > -1 then
    Delete(index);
  result := index;
end;
//===CLASS TSSPExcelTable ========================================================================

constructor TSSPExcelTable.Create(AOwner: TComponent; page: TElPageControl; tabcode: string);
begin
  inherited Create(AOwner);
  FNameIndex := 0;
  FTabID := tabcode;
  FFieldList := TStringList.Create;
  FPage := page;
  FTab := FPage.NewPage;
  FTab.Name := 'tab' + tabcode;
  FTab.Caption := 'tab_' + tabcode;


  FGrid := TdxTreeList.Create(self);
  FGrid.Name := 'grid_' + tabcode;
  FGrid.Parent := FTab;
  FGrid.Align := alClient;
  FGrid.Options :=
    [aoColumnSizing]
    + [aoColumnMoving]
    + [aoEditing]
    - [aoTabs]
    + [aoTabThrough]
    - [aoRowSelect]
    - [aoMultiSelect]
    - [aoImmediateEditor]
    - [aoPreview]
    - [aoAutoWidth]
    - [aoExtMultiSelect]
    - [aoHideFocusRect]
    - [aoAutoSort]
    - [aoCaseInsensitive]
    - [aoStoreToRegistry]
    - [aoStoreToIniFile];
  FGrid.OptionsEx :=
    FGrid.OptionsEx
    - [aoInvertSelect]
    + [aoUseBitmap]
    + [aoBandHeaderWidth]
    + [aoAutoCalcPreviewLines]
    + [aoBandSizing]
    + [aoBandMoving]
    + [aoHorzThrough]
    + [aoVertThrough]
    + [aoCellMultiSelect]
    - [aoEnterThrough]
    + [aoEnterShowEditor]
    + [aoFullSizing]
    + [aoDragScroll]
    + [aoDragExpand]
    + [aoDragCollapse]
    + [aoRowAutoHeight]
    + [aoShowHourGlass]
    + [aoBandButtonClicking]
    + [aoBandPanelSizing]
    + [aoHeaderButtonClicking]
    + [aoHeaderPanelSizing]
    + [aoRowSizing]
    - [aoMultiSort]
    - [aoAutoSortRefresh]
    + [aoMouseScroll];
  FGrid.HighlightColor := clBtnFace;
  FGrid.HighlightTextColor := clHighlight;

  FGrid.ShowPreviewGrid := true;
  FGrid.ShowLines := false;
  FGrid.ShowGrid := true;
  FGrid.ShowRoot := false;
  FGrid.HideSelection := false;
  FGrid.HideFocusRect := false;
  FGrid.LookAndFeel := lfFlat;
  FGrid.OnChangeColumn := DefOnChangeColumn;
  FGrid.OnChangeNode := DefOnChangeNode;
  FGrid.OnKeyDown := DefOnKeyDown;
  FGrid.OnExit := DefOnExit;
  FGrid.OnEdited := DefOnCellEdited;
  FGrid.OnEndDragColumn := DefOnEndDragColumn;
  FGrid.OnDragEndHeader := DefOnDragEndHeader;
  FGrid.OnDblClick := DefOnDblClick;

  frmSSP_Excel.CurrentTable := self;
  frmSSP_Excel.CurrentTableIndex := self.FTab.TabIndex;

  LoadData;

  FIsChanged := false;
end;

destructor TSSPExcelTable.Destroy;
var i: integer;
begin
  FFieldList.Free;
  FGrid.Free;
  FTab.Free;
  FRows.Free;
  inherited Destroy;
end;

procedure TSSPExcelTable.LoadData;
var qry: TIBOQuery;
  i: integer;
  f: TWideStringField;
  col, col_index: TdxTreeListColumn;
  node: TdxTreeListNode;
  ROW_ID: integer;
  cell: TSSPCell;
  continue: boolean;
  row: TSSPRow;
begin
  //============================================
  // clear data
  //============================================
  FGrid.BeginUpdate;
  for i := FGrid.Count - 1 downto 0 do
    FGrid.Items[i].Free;
  for i := FGrid.ColumnCount - 1 downto 0 do
    FGrid.Columns[i].Free;
  //============================================
  // load field list
  //============================================
  qry := TIBOQuery.Create(self);
  qry.IB_Connection := dmMain.connMain;
  qry.IB_Transaction := dmMain.trCommited;
  qry.Unicode := true;
  qry.SQL.Text := 'select distinct column_id,cell_width from sys_excel_table where sys_excel_table.tab_id=:tab_id order by 1';
  qry.Prepare;
  qry.ParamByName('TAB_ID').Value := FTabID;
  qry.Open;
  //==============================================
  // create index node
  //==============================================
  col_index := FGrid.CreateColumn(TdxTreeListColumn);
  col_index.Name := FGrid.Name + '_INDEX_NODE';
  col_index.Width := 40;
  col_index.Caption := 'STT';
  col_index.HeaderAlignment := taCenter;
  col_index.Alignment := taCenter;
  col_index.DisableEditor := true;
  col_index.DisableCustomizing := true;
  col_index.Color := clInfoBk;
  col_index.OnCustomDrawCell := DefOnDrawNodeIndex;

  if qry.IsEmpty = false then
  begin
    qry.First;
    while not qry.Eof do
    begin
      //create view
      col := FGrid.CreateColumn(TdxTreeListColumn);
      col.Name := FGrid.Name + '_' + qry.FieldByName('COLUMN_ID').AsString;
      FNameIndex:=qry.FieldByName('COLUMN_ID').AsInteger;
      col.Width := qry.FieldByName('CELL_WIDTH').AsInteger;
      col.HeaderAlignment := taCenter;
      col.OnChange := DefOnCellEditing;
      col.OnCustomDrawColumnHeader := DefOnDrawColumnHeader;
      //create meta data
      //
      qry.Next;
    end
  end;
  FGrid.EndUpdate;

  //============================================
  // load data
  //============================================
  qry.Close;
  qry.SQL.Text := 'select row_id,column_id,cell_code,cell_format,cell_type,cell_value ' +
    'from sys_excel_table where sys_excel_table.tab_id=:tab_id order by 1,2';
  qry.Prepare;
  qry.ParamByName('TAB_ID').Value := FTabID;
  qry.Open;

  if qry.IsEmpty = false then
  begin
    if Assigned(FRows) then
    begin
      FRows.Free;
    end;
    FRows := TStringList.Create;
    qry.First;
    ROW_ID := qry.FieldByName('ROW_ID').AsInteger;
    node := FGrid.Add;
    row := TSSPRow.Create(node);
    cell := TSSPCell.Create(node, col_index);
    row.AddCell(cell);

    FRows.AddObject(row.Name, row);
    continue := qry.Eof;
    while not continue do
    begin
      if (ROW_ID <> qry.FieldByName('ROW_ID').AsInteger) or
        (continue) then
      begin
        if continue then
          Break
        else
          ROW_ID := qry.FieldByName('ROW_ID').AsInteger;
        node := FGrid.Add;
        row := TSSPRow.Create(node);
        FRows.AddObject(row.Name, row);
        cell := TSSPCell.Create(node, col_index);
        row.AddCell(cell);

      end;

      col := FGrid.ColumnByName(FGrid.Name + '_' + qry.FieldByName('COLUMN_ID').asString);
  //    node.Values[col.Index] := qry.FieldByName('CELL_VALUE').Value;
      cell := TSSPCell.Create(node, col);
      row.AddCell(cell);
      qry.Next;
      continue := qry.Eof;
    end;
    //
    qry.First;
    i := 0;
    node := FGrid.Items[i];
    ROW_ID := qry.FieldByName('ROW_ID').AsInteger;
    continue := qry.Eof;
    while not continue do
    begin
      if (ROW_ID <> qry.FieldByName('ROW_ID').AsInteger) or
        (continue) then
      begin
        if continue then
          Break
        else
          ROW_ID := qry.FieldByName('ROW_ID').AsInteger;
        node := node.GetNext;
      end;

      col := FGrid.ColumnByName(FGrid.Name + '_' + qry.FieldByName('COLUMN_ID').asString);
      cell := GetRow(node.Index).GetCell(col.Index);
      cell.State := asReadCellData;
      cell.CellValue := VarToWideStrDef(qry.FieldByName('CELL_VALUE').Value, '');
      cell.CellCode := VarToWideStrDef(qry.FieldByName('CELL_CODE').Value, '');
      cell.CellType := VarToWideStrDef(qry.FieldByName('CELL_TYPE').Value, '');
      cell.CellFormat := VarToWideStrDef(qry.FieldByName('CELL_FORMAT').Value, '');
      cell.State := asNoAction;
      qry.Next;
      continue := qry.Eof;
    end;

  end;
  qry.Close;
  qry.Free;
end;

function TSSPExcelTable.GetRow(index: integer): TSSPRow;
begin
  result := TSSPRow(FRows.Objects[index]);
end;

procedure TSSPExcelTable.DefOnEndDragColumn(Sender: TObject; X,
  Y: Integer; Column: TdxTreeListColumn; var NewPosition: Integer);
var i, fromIndex, toIndex: integer;
  new_cell: TSSPCell;
  row: TSSPRow;
begin
  inherited;
  fromIndex := Column.Index;
  toIndex := NewPosition;
  for i := 0 to FGrid.RowCount - 1 do
  begin
    row := GetRow(i);
    new_cell := TSSPCell.Create(FGrid.Items[i], Column);
    new_cell.Clone(GetRow(i).GetCell(FromIndex));
    if ToIndex > FromIndex then
    begin
      row.InsertObject(toIndex + 1, IntToStr(toIndex + 1), new_cell);
      row.Objects[fromIndex].Free;
      row.Delete(fromIndex);
    end
    else
      if (ToIndex < FromIndex) then
      begin
        row.InsertObject(toIndex, IntToStr(toIndex), new_cell);
        row.Objects[fromIndex + 1].Free;
        row.Delete(fromIndex + 1);
      end;
  end;
end;

procedure TSSPExcelTable.DefOnDrawColumnHeader(
  Sender: TObject; AColumn: TdxTreeListColumn; ACanvas: TCanvas;
  ARect: TRect; var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
  var ADone: Boolean);
begin
  inherited;
  AText := IntToStr(AColumn.Index);
end;

procedure TSSPExcelTable.DefOnDragEndHeader(Sender: TObject;
  AColumn: TdxTreeListColumn; P: TPoint; var NewPosInfo: TdxHeaderPosInfo;
  var Accept: Boolean);
begin
  inherited;
  Accept := (AColumn.Index > 0) and (NewPosInfo.ColIndex > 0);
end;

procedure TSSPExcelTable.DefOnCellEditing(Sender: TObject);
var cell: TSSPCell;
begin
  inherited;
  if FActionState = asNoAction then
  begin
    frmSSP_Excel.dxCellCode.Text := Grid.EditingText;
    cell := GetRow(FCurrentNodeIndex).GetCell(FCurrentCellIndex);
    cell.State := asCellEditing;
  end;
end;

procedure TSSPExcelTable.DefOnCellEdited(Sender: TObject;
  Node: TdxTreeListNode);
var cell: TSSPCell;
begin
  inherited;
  if FActionState = asNoAction then
  begin
    cell := GetRow(FCurrentNodeIndex).GetCell(FCurrentCellIndex);
    if cell.State = asCellEditing then
    begin
      cell.State := asNoAction;
      cell.CellCode := VarToWideStr(Grid.FocusedNode.Values[FCurrentCellIndex]);
      Grid.FocusedNode.Values[FCurrentCellIndex] := cell.CellValue;
      UpdateCellView(cell);
      FIsChanged := true;
    end;
  end;
end;

procedure TSSPExcelTable.DefOnChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  inherited;
  if FGrid.FocusedColumn = 0 then exit;
  FCurrentCellIndex := FGrid.FocusedColumn;
  FCurrentNodeIndex := FGrid.FocusedNode.Index;
  frmSSP_Excel.dxCellPosition.Text := '(' + IntToStr(FCurrentNodeIndex + 1) + ',' + IntToStr(FCurrentCellIndex) + ')';
  UpdateCellView;
end;

procedure TSSPExcelTable.DefOnChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
  inherited;
  if FGrid.FocusedColumn = 0 then exit;
  FCurrentCellIndex := FGrid.FocusedColumn;
  FCurrentNodeIndex := FGrid.FocusedNode.Index;
  frmSSP_Excel.dxCellPosition.Text := '(' + IntToStr(FCurrentNodeIndex + 1) + ',' + IntToStr(FCurrentCellIndex) + ')';
  UpdateCellView;
end;

procedure TSSPExcelTable.DefOnDblClick(Sender: TObject);
begin
  inherited;
  frmSSP_Excel.acEditCode.Execute;
end;

procedure TSSPExcelTable.DefOnDrawNodeIndex(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AText := IntToStr(ANode.AbsoluteIndex + 1);
end;

procedure TSSPExcelTable.DefOnGridMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  //
end;

procedure TSSPExcelTable.UpdateCellView(cell: TSSPCell);
begin
  FActionState := asLoadFromGridToView;
  if not Assigned(cell) then
    cell := GetRow(FCurrentNodeIndex).GetCell(FCurrentCellIndex);
  frmSSP_Excel.dxCellCode.Text := cell.FCellCode;
  frmSSP_Excel.dxCellValue.Text := cell.FCellValue;
  frmSSP_Excel.dxCellFormat.Text := cell.FCellFormat;
  frmSSP_Excel.dxCellType.Text := cell.FCellType;
  FActionState := asNoAction;
  if Assigned(frmSSPExcelCoder) then
    frmSSPExcelCoder.AssignCell(cell);
end;

procedure TSSPExcelTable.DefOnExit(Sender: TObject);
begin
  FGrid.HideEditor;
end;

procedure TSSPExcelTable.DefOnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited
end;

function TSSPExcelTable.SaveTable: boolean;
var qry: TIBOQuery;
  i, j: integer;
  row: TSSPRow;
  cell: TSSPCell;
begin
  qry := frmSSP_Excel.qrySaveData;

  if qry.Active then qry.Close;
  dmMain.RollbackTransaction;
  try
    // xoa du lieu cu
    qry.SQL.Text := 'DELETE FROM SYS_EXCEL_TABLE WHERE TAB_ID = :TAB_ID';
    qry.Prepare;
    qry.ParamByName('TAB_ID').Value := FTabID;
    dmMain.ExecuteSQL(qry);
    //luu du lieu moi
    qry.SQL.Text :=
      'INSERT INTO SYS_EXCEL_TABLE( ' +
      'COLUMN_ID, ' +
      'ROW_ID, ' +
      'TAB_ID, ' +
      'CELL_CODE,  ' +
      'CELL_VALUE, ' +
      'CELL_TYPE,  ' +
      'CELL_FORMAT,' +
      'CELL_WIDTH) ' +
      'VALUES (       ' +
      ':COLUMN_ID, ' +
      ':ROW_ID,    ' +
      ':TAB_ID,    ' +
      ':CELL_CODE, ' +
      ':CELL_VALUE,' +
      ':CELL_TYPE, ' +
      ':CELL_FORMAT,' +
      ':CELL_WIDTH)';
    qry.Prepare;
    qry.ParamByName('TAB_ID').Value := FTabID;
    frmMain.SetStatusBarPrgDisplay(1, (FGrid.ColumnCount - 1) * FGrid.RowCount);
    for i := 0 to FRows.Count - 1 do
    begin
      row := GetRow(i);
      for j := 1 to row.Count - 1 do
      begin
        cell := row.GetCell(j);
        qry.ParamByName('COLUMN_ID').Value := j;
        qry.ParamByName('ROW_ID').Value := i;
        qry.ParamByName('CELL_VALUE').Value := cell.CellValue;
        qry.ParamByName('CELL_CODE').Value := cell.CellCode;
        qry.ParamByName('CELL_TYPE').Value := cell.CellType;
        qry.ParamByName('CELL_FORMAT').Value := cell.CellFormat;
        qry.ParamByName('CELL_WIDTH').Value := FGrid.Columns[j].Width;
        dmMain.ExecuteSQL(qry);
        frmMain.BarPrgStepIt;
      end;
    end;
    dmMain.CommitTransaction;
    FIsChanged := false;
    result := true;
  except
    result := false;
    dmMain.RollbackTransaction;
  end;
  frmMain.SetStatusBarMsg('');
  //
end;
//===CLASS TfrmSSP_Excel=====================================================================

function TfrmSSP_Excel.GetTable(index: integer): TSSPExcelTable;
begin
  result := TSSPExcelTable(listTable.Objects[CurrentTableIndex]);
end;

procedure TfrmSSP_Excel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if GetTable(CurrentTableIndex).IsChanged then
  begin
    if ShowMessageUnicode(65) = mrYes then
    begin
      acSaveTable.Execute;
    end;
  end;
  analyser.Free;
  qryTabList.Close;
  Action := caFree;
  frmSSP_Excel := nil;
  if Assigned(frmSSPExcelCoder) then
  begin
    frmSSPExcelCoder.Free;
    frmSSPExcelCoder := nil;
  end;
end;

procedure TfrmSSP_Excel.FormCreate(Sender: TObject);
begin
  dxCellType.Descriptions.Add(UTF8Decode('Văn bản'));
  dxCellType.Descriptions.Add(UTF8Decode('Ngày'));
  dxCellType.Descriptions.Add(UTF8Decode('Giờ'));
  dxCellType.Descriptions.Add(UTF8Decode('Số'));

  dxCellType.Values.Add('TEXT');
  dxCellType.Values.Add('DATE');
  dxCellType.Values.Add('TIME');
  dxCellType.Values.Add('NUMBER');

  inherited;
  RegisterFunctions;
  qryTabList.Open;
  CustomExpand(treeTabList);
  acLoadTable.Execute;
  CanChangePage := true;
  ActiveCurrentPage;
end;

procedure TfrmSSP_Excel.treeTabListMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (Button = mbRight) then
  begin
    dxTabPopupMenu.PopupFromCursorPos;
  end;
end;

procedure TfrmSSP_Excel.acNewTabExecute(Sender: TObject);
begin
  inherited;
  CanChangePage := false;
  frmSSP_Excel_InsertPage := TfrmSSP_Excel_InsertPage.Create(self, 'INSERT');
  try
    if frmSSP_Excel_InsertPage.ShowModal = mrOk then
    begin
      InitTableData(qryTabListTAB_ID.Value, frmSSP_Excel_InsertPage.dxDefaultColCount.IntValue, frmSSP_Excel_InsertPage.dxDefaultRowCount.IntValue);
      InitTableView(qryTabListTAB_ID.Value);
    end;
  finally
    frmSSP_Excel_InsertPage.Free;
  end;
  CanChangePage := true;
  ActiveCurrentPage
end;

procedure TfrmSSP_Excel.acRenameTabExecute(Sender: TObject);
begin
  inherited;
  frmSSP_Excel_InsertPage := TfrmSSP_Excel_InsertPage.Create(self, 'EDIT');
  try
    frmSSP_Excel_InsertPage.ShowModal;
  finally
    frmSSP_Excel_InsertPage.Free;
  end;
end;

procedure TfrmSSP_Excel.acRenameTabUpdate(Sender: TObject);
begin
  inherited;
  acRenameTab.Enabled := not qryTabListGROUP_ID.IsNull;
end;

procedure TfrmSSP_Excel.treeTabListGetSelectedIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  inherited;
  if node.HasChildren then
    Index := 0
  else
    Index := 1;
end;

procedure TfrmSSP_Excel.treeTabListGetImageIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  inherited;
  if node.HasChildren then
    Index := 0
  else
    Index := 1;
end;

procedure TfrmSSP_Excel.InitTableData(TabID: integer; col_count, row_count: integer);
var i, j: integer;
begin
  if not qryInitData.Prepared then
    qryInitData.Prepare;
  qryInitData.ParamByName('COL_COUNT').Value := col_count;
  qryInitData.ParamByName('ROW_COUNT').Value := row_count;
  qryInitData.ParamByName('TAB_ID').Value := tabID;
  qryInitData.ExecSQL;
end;

procedure TfrmSSP_Excel.InitTableView(TabID: integer);
var SSPExcellTable: TSSPExcelTable;
begin
  SSPExcellTable := TSSPExcelTable.Create(self, pageData, IntToStr(TabID));
  listTable.AddObject(qryTabListTAB_ID.AsString, SSPExcellTable);
end;

procedure TfrmSSP_Excel.acLoadTableExecute(Sender: TObject);
var step: integer;
  record_count: integer;
begin
  inherited;
  listTable := TStringList.Create;

  qryTabList.First;
  step := 0;
  record_count := qryTabList.RecordCount;
  while not qryTabList.Eof do
  begin
    if not qryTabListGROUP_ID.IsNull then
    begin
      InitTableView(qryTabListTAB_ID.Value);
    end;
    qryTabList.Next;
    Inc(step);
  end;
end;

procedure TfrmSSP_Excel.acFreeTablesExecute(Sender: TObject);
var i: integer;
begin
  inherited;
  if Assigned(listTable) then
  begin
    for i := listTable.Count - 1 downto 0 do
    begin
      TSSPExcelTable(listTable.Objects[i]).Free;
      listTable.Delete(i);
    end;
  end
end;

procedure TfrmSSP_Excel.FormDestroy(Sender: TObject);
begin
  inherited;
  acFreeTables.Execute;
end;

procedure TfrmSSP_Excel.ActiveCurrentPage;
var Node: TdxTreeListNode;
  pageIndex: integer;
begin
  Node := treeTabList.FocusedNode;
  lblListCaption.Caption := WideUpperCase(VarToWideStr(node.Values[treeTabListTAB_TITLE.Index]));
  if not CanChangePage then exit;
  if Assigned(Node.Parent) then
  begin
    pageIndex := listTable.IndexOf(VarToStr(node.Values[treeTabListTAB_ID.Index]));
    pageData.ActivePage := TSSPExcelTable(listTable.Objects[pageIndex]).Tab;
    CurrentTableIndex := pageIndex;
    CurrentTable := TSSPExcelTable(listTable.Objects[pageIndex]);
  end;
end;

procedure TfrmSSP_Excel.treeTabListChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
var pageIndex: integer;
begin
  inherited;
  if not CanChangePage then exit;
  if GetTable(CurrentTableIndex).IsChanged then
  begin
    if ShowMessageUnicode(65) = mrYes then
    begin
      acSaveTable.Execute;
    end;
  end;
  if Assigned(Node.Parent) then
  begin
    pageIndex := listTable.IndexOf(VarToStr(node.Values[treeTabListTAB_ID.Index]));
    pageData.ActivePage := TSSPExcelTable(listTable.Objects[pageIndex]).Tab;
    CurrentTableIndex := pageIndex;
    CurrentTable := TSSPExcelTable(listTable.Objects[pageIndex]);
    lblListCaption.Caption := WideUpperCase(VarToWideStr(node.Values[treeTabListTAB_TITLE.Index]));
  end;
end;

procedure TfrmSSP_Excel.acDeleteTabUpdate(Sender: TObject);
begin
  inherited;
  acDeleteTab.Enabled := not qryTabListGROUP_ID.IsNull;
end;

procedure TfrmSSP_Excel.acDeleteTabExecute(Sender: TObject);

begin
  inherited;
  qryTabList.Delete;
  ActiveCurrentPage;
end;

procedure TfrmSSP_Excel.qryTabListBeforeDelete(DataSet: TDataSet);
var pageIndex: integer;
begin
  inherited;
  dmMain.DefOnBeforeDelete(Dataset);
  pageIndex := listTable.IndexOf(qryTabListTAB_ID.AsString);
  TSSPExcelTable(listTable.Objects[pageIndex]).Free;
  listTable.Delete(pageIndex);
end;


procedure TfrmSSP_Excel.dxCellCodeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var cell:TSSPCell;
begin
  inherited;
  if Key = VK_RETURN then
  begin
    if CurrentTable.FActionState = asNoAction then
    begin
      cell := CurrentTable.GetRow(CurrentTable.FCurrentNodeIndex).GetCell(CurrentTable.FCurrentCellIndex);
      cell.CellCode := dxCellCode.Text;
      dxCellValue.Text := cell.CellValue;
      CurrentTable.IsChanged := true;
    end;
  end;
end;

procedure TfrmSSP_Excel.dxCellCodeChange(Sender: TObject);
begin
  if CurrentTable.FActionState <> asNoAction then exit;
  CurrentTable.FActionState := asUpdateToGridCell;
  CurrentTable.FGrid.FocusedNode.Values[CurrentTable.CurrentCellIndex] := dxCellCode.Text;
  CurrentTable.FActionState := asNoAction;
end;

procedure TfrmSSP_Excel.dxCellCodeExit(Sender: TObject);
var
  cell: TSSPCell;
begin
  inherited;
  if CurrentTable.FActionState = asNoAction then
  begin
    cell := CurrentTable.GetRow(CurrentTable.FCurrentNodeIndex).GetCell(CurrentTable.FCurrentCellIndex);
    cell.CellCode := dxCellCode.Text;
    dxCellValue.Text := cell.CellValue;
    CurrentTable.IsChanged := true;
  end;
end;
procedure TfrmSSP_Excel.acAddColExecute(Sender: TObject);
var
  col: TdxTreeListColumn;
  i, current_col_index: integer;
  row: TSSPRow;
  cell: TSSPCell;
begin
  inherited;
  //create column
  current_col_index:=CurrentTable.Grid.ColumnCount;
  col := CurrentTable.Grid.CreateColumn(TdxTreeListColumn);
  CurrentTable.NameIndex := CurrentTable.NameIndex + 1;
  col.Name := CurrentTable.Grid.Name + '_' + IntToStr(CurrentTable.NameIndex);
  col.Width := 100;
  col.HeaderAlignment := taCenter;
  col.OnChange := CurrentTable.DefOnCellEditing;
  col.OnCustomDrawColumnHeader := CurrentTable.DefOnDrawColumnHeader;
  // replate col index
  col.Index := current_col_index;
  //create cell data
  for i := 0 to CurrentTable.Grid.RowCount - 1 do
  begin
    row := CurrentTable.GetRow(i);
    cell := TSSPCell.Create(CurrentTable.Grid.Items[i], col);
    cell.CellValue := '';
    cell.CellCode := '';
    cell.CellType := '';
    cell.CellFormat := '';
    row.AddCell(cell);
  end;
end;

procedure TfrmSSP_Excel.acNewColExecute(Sender: TObject);
var
  col: TdxTreeListColumn;
  i, current_col_index: integer;
  row: TSSPRow;
  cell: TSSPCell;
begin
  inherited;
  //create column
  current_col_index := CurrentTable.Grid.FocusedColumn;
  col := CurrentTable.Grid.CreateColumn(TdxTreeListColumn);
  CurrentTable.NameIndex := CurrentTable.NameIndex + 1;
  col.Name := CurrentTable.Grid.Name + '_' + IntToStr(CurrentTable.NameIndex);
  col.Width := 100;
  col.HeaderAlignment := taCenter;
  col.OnChange := CurrentTable.DefOnCellEditing;
  col.OnCustomDrawColumnHeader := CurrentTable.DefOnDrawColumnHeader;
  // replate col index
  col.Index := current_col_index;
  //create cell data
  for i := 0 to CurrentTable.Grid.RowCount - 1 do
  begin
    row := CurrentTable.GetRow(i);
    cell := TSSPCell.Create(CurrentTable.Grid.Items[i], col);
    cell.CellValue := '';
    cell.CellCode := '';
    cell.CellType := '';
    cell.CellFormat := '';
    row.InsertObject(current_col_index,cell.Name,cell);
  end;
end;


procedure TfrmSSP_Excel.acRemoveColExecute(Sender: TObject);
var i, current_index: integer;
  col: TdxTreeListColumn;
  row: TSSPRow;
begin
  inherited;
  col := CurrentTable.Grid.Columns[CurrentTable.Grid.FocusedColumn];
  if col.Name = CurrentTable.Grid.Name + '_INDEX_NODE' then exit;
  current_index := col.Index;
  col.Free;
  for i := 0 to CurrentTable.Grid.RowCount - 1 do
  begin
    row := CurrentTable.GetRow(i);
    row.Objects[current_index].Free;
    row.Delete(current_index);
  end;

end;

procedure TfrmSSP_Excel.acAddRowExecute(Sender: TObject);
var row: TSSPRow;
  new_node, current_node: TdxTreeListNode;
  i, current_index: integer;
  cell: TSSPCell;
begin
  inherited;
  current_node := CurrentTable.Grid.FocusedNode;
  current_index := current_node.Index;
  new_node := CurrentTable.Grid.Add;

  row := TSSPRow.Create(new_node);
  CurrentTable.Rows.AddObject(IntToStr(new_node.Index), row);
  for i := 0 to CurrentTable.Grid.ColumnCount - 1 do
  begin
    cell := TSSPCell.Create(new_node, CurrentTable.Grid.Columns[i]);
    cell.CellValue := '';
    cell.CellCode := '';
    cell.CellType := '';
    cell.CellFormat := '';
    row.AddCell(cell);
  end;
end;

procedure TfrmSSP_Excel.acNewRowExecute(Sender: TObject);
var row: TSSPRow;
  new_node, current_node: TdxTreeListNode;
  i, current_index: integer;
  cell: TSSPCell;
begin
  inherited;
  current_node := CurrentTable.Grid.FocusedNode;
  current_index := current_node.Index;
  new_node := CurrentTable.Grid.Insert(current_node);

  row := TSSPRow.Create(new_node);
  CurrentTable.Rows.InsertObject(current_index, IntToStr(new_node.Index), row);
  for i := 0 to CurrentTable.Grid.ColumnCount - 1 do
  begin
    cell := TSSPCell.Create(new_node, CurrentTable.Grid.Columns[i]);
    cell.CellValue := '';
    cell.CellCode := '';
    cell.CellType := '';
    cell.CellFormat := '';
    row.AddCell(cell);
  end;
end;

procedure TfrmSSP_Excel.acRemoveRowExecute(Sender: TObject);
var row: TSSPRow;
  current_node: TdxTreeListNode;
  i, current_index: integer;
  cell: TSSPCell;
begin
  inherited;
  current_node := CurrentTable.Grid.FocusedNode;
  current_index := current_node.Index;
  current_node.Free;
  CurrentTable.Rows.Objects[current_index].Free;
  CurrentTable.Rows.Delete(current_index);
  
  CurrentTable.CurrentNodeIndex:=CurrentTable.Grid.FocusedNode.Index;
end;
procedure TfrmSSP_Excel.acSaveTableExecute(Sender: TObject);
begin
  inherited;
  if GetTable(CurrentTableIndex).SaveTable then
    ShowMessageUnicode(63)
  else
    ShowMessageUnicode(64);
end;

function TfrmSSP_Excel.SQLAnalyse(Code: WideString; var Value: WideString): boolean;
  function AnalyseParam(param_name: string): Variant;
  var p: integer;
    col_index, row_index: integer;
    pointed_cell:TSSPCell;
  begin
    if Pos('CELL', param_name) = 1 then
    begin
      p := Pos('_', param_name);
      if p = 5 then
        row_index := CurrentTable.CurrentNodeIndex + 1
      else
      begin
        row_index := StrToIntDef(Copy(param_name, 5, p), CurrentTable.CurrentNodeIndex + 1);
      end;
      col_index := StrToIntDef(Copy(param_name, p + 1, Length(param_name) - p), CurrentTable.CurrentCellIndex);
      result := CurrentTable.GetRow(row_index).GetCell(col_index).CellValue;
      pointed_cell := CurrentTable.GetRow(row_index - 1).GetCell(col_index);
      pointed_cell.RegisterRelatedCell(CurrentTable.CalculatedCell);
    end;
  end;
var buffer: string;
  i,j, current_node, current_cell: integer;
  cell: TSSPCell;
begin
  result := false;
  buffer := Trim(Code);
  if length(buffer) = 0 then
    exit;
  buffer:=UpperCase(buffer);
  if Pos('SELECT', buffer) <> 1 then exit;
  try
    if qryExecute.Active then
      qryExecute.Close;
    qryExecute.SQL.Text := buffer;
    qryExecute.Prepare;
    if not qryExecute.Prepared then exit;
    if qryExecute.ParamCount > 0 then
    begin
      for i := 0 to qryExecute.ParamCount - 1 do
        qryExecute.Params[i].Value := AnalyseParam(qryExecute.Params[i].Name);
    end;
    if CurrentTable.CalculatedCell.State = asReadCellData then
    begin
      result := true;
      exit;
    end;
    qryExecute.Open;
    if qryExecute.IsEmpty = false then
    begin
      //view data on cell list
      current_node := CurrentTable.CurrentNodeIndex;
      current_cell := CurrentTable.CurrentCellIndex;
      qryExecute.First;
      //check size
      if (current_cell + qryExecute.FieldCount)>CurrentTable.Grid.ColumnCount then
      begin
        j:=CurrentTable.Grid.ColumnCount;
        repeat
          acAddCol.Execute;
          j:=j+1;
        until j>=(current_cell + qryExecute.FieldCount);
      end;

      //============================
      Value := qryExecute.Fields[0].Value;
      while not qryExecute.Eof do
      begin
        for i := 0 to qryExecute.FieldCount - 1 do
        begin
          cell := CurrentTable.GetRow(current_node).GetCell(current_cell + i);
          cell.CellValue := VarToWideStr(qryExecute.Fields[i].Value);
          if Cell<>CurrentTable.CalculatedCell then
             cell.CopyCode(''''+VarToWideStr(qryExecute.Fields[i].Value)+'''');
        end;
        qryExecute.Next;
        Inc(current_node);
        if not qryExecute.Eof then
        begin
          if (current_node >= CurrentTable.Rows.Count) then
            acAddRow.Execute;
        end;
      end;
    end;
    result := true;
  except
    exit;
  end;
end;

function TfrmSSP_Excel.MathAnalyse(Code: WideString; var Value: WideString): boolean;
var buffer: string;
begin
  // cat bo ky tu trang
  result := false;
  buffer := Trim(Code);
  if length(buffer) = 0 then
    exit;
  analyser.Script := buffer;
    try
      value := VarToWideStr(analyser.AnalyzeScript);
      result := true;
    except
      result := false;
    end;
end;

function
  TfrmSSP_Excel.DateAnalyse(Code: WideString; var Value: WideString): boolean;
begin
  result := false;
end;

function TfrmSSP_Excel.TimeAnalyse(Code: WideString; var Value: WideString): boolean;
begin
  result := false;
end;

//====================================================================

function TfrmSSP_Excel.SUM_COL(col_index, from_row, to_row: variant): variant;
var pointed_cell: TSSPCell;
  i: integer;
begin
  //
  if VarToStr(col_index) = '_' then
    col_index := CurrentTable.CurrentCellIndex;
  if from_row > to_row then
  begin
    i := from_row;
    from_row := to_row;
    to_row := i;
  end;
  result := 0;
  for i := from_row to to_row do
  begin
    try
      pointed_cell := CurrentTable.GetRow(i - 1).GetCell(col_index);
      if pointed_cell.RegisterRelatedCell(CurrentTable.CalculatedCell) then
        result := result + pointed_cell.CellValue;
    except
    end;
  end;
end;

function TfrmSSP_Excel.SUM_ROW(row_index, from_col, to_col: variant): variant;
var pointed_cell: TSSPCell;
  i: integer;
begin
  //
  if VarToStr(row_index) = '_' then
    row_index := CurrentTable.CurrentNodeIndex + 1;
  if from_col > to_col then
  begin
    i := from_col;
    from_col := to_col;
    to_col := i;
  end;
  result := 0;
  for i := from_col to to_col do
  begin
    try
      pointed_cell := CurrentTable.GetRow(row_index - 1).GetCell(i);
      if pointed_cell.RegisterRelatedCell(CurrentTable.CalculatedCell) then
        result := result + pointed_cell.CellValue;
    except
    end;
  end;
end;

function TfrmSSP_Excel.SUM(from_row, from_col, to_row, to_col: variant): variant;
var pointed_cell: TSSPCell;
  i, j: integer;
begin
  result := 0;
  for i := from_row to to_row do
    for j := from_col to to_col do
    begin
      try
        pointed_cell := CurrentTable.GetRow(i - 1).GetCell(j);
        if pointed_cell.RegisterRelatedCell(CurrentTable.CalculatedCell) then
          result := result + pointed_cell.CellValue;
      except
      end;
    end;
end;

function TfrmSSP_Excel.CELL(row_index, col_index: variant): variant;
var pointed_cell: TSSPCell;
begin
  try
    if VarToStr(row_index) = '_' then
      row_index := CurrentTable.CurrentNodeIndex + 1;
    if VarToStr(col_index) = '_' then
      col_index := CurrentTable.CurrentCellIndex;

    if (row_index = CurrentTable.CalculatedCell.Node.Index - 1) and
      (col_index = CurrentTable.CalculatedCell.Column.Index)
      then
    begin
      result := CurrentTable.CalculatedCell.CellValue;
      exit;
    end
    else
    begin
      pointed_cell := CurrentTable.GetRow(row_index - 1).GetCell(col_index);
      if pointed_cell.RegisterRelatedCell(CurrentTable.CalculatedCell) then
        result := pointed_cell.CellValue
      else
        result := 0;
    end;
  except
  end;
end;

function TfrmSSP_Excel.AVG_COL(col_index, from_row, to_row: variant): variant;
begin
  try
    result := SUM_COL(col_index, from_row, to_row) / (Abs(to_row - from_row) + 1);
  except
    result := 0;
  end;
end;

function TfrmSSP_Excel.AVG_ROW(row_index, from_col, to_col: variant): variant;
begin
  try
    result := SUM_ROW(row_index, from_col, to_col) / (Abs(to_col - from_col) + 1);
  except
    result := 0;
  end;
end;

function TfrmSSP_Excel.AVG(from_row, from_col, to_row, to_col: variant): variant;
begin
  try
    result := SUM(from_row, from_col, to_row, to_col) / (Abs(to_row - from_row) + 1) * (Abs(to_col - from_col) + 1);
  except
    result := 0;
  end;
end;
//=======================================================

procedure TfrmSSP_Excel.RegisterFunctions;
begin
  analyser := TSSP_Script.Create(self);
  analyser.AddMethod2Param('CELL', Cell);
  analyser.AddMethod3Param('SUM_COL', SUM_COL);
  analyser.AddMethod3Param('SUM_ROW', SUM_ROW);
  analyser.AddMethod4Param('SUM', SUM);
  analyser.AddMethod3Param('AVG_COL', AVG_COL);
  analyser.AddMethod3Param('AVG_ROW', AVG_ROW);
  analyser.AddMethod4Param('AVG', AVG);

  analyser.AddFunction2Param('Mod', _Mod);
  analyser.AddFunction2Param('Div', _Div);
  analyser.AddFunction1Param('Abs', _Abs);
  analyser.AddFunction1Param('Sqrt', _Sqrt);
  analyser.AddFunction1Param('Exp', _Exp);
  analyser.AddFunction1Param('Ln', _Ln);
  analyser.AddFunction1Param('Sqr', _Sqr);
  analyser.AddFunction2Param('Round', _Round);
  analyser.AddFunction2Param('Min', _Min);
  analyser.AddFunction2Param('Max', _Max);
end;

procedure TfrmSSP_Excel.dxTreeList1EditValidate(Sender: TObject;
  var ErrorText: WideString; var Accept: Boolean);
begin
  inherited;
  ShowMessage('aa');
end;

procedure TfrmSSP_Excel.dxTreeList1Column1Validate(Sender: TObject;
  var ErrorText: WideString; var Accept: Boolean);
begin
  inherited;
  ShowMessage('ddd');
end;

procedure TfrmSSP_Excel.acEditCodeExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frmSSPExcelCoder) then
  begin
    frmSSPExcelCoder := TfrmSSPExcelCoder.Create(self);
    frmSSPExcelCoder.AssignCell(CurrentTable.GetRow(CurrentTable.FCurrentNodeIndex).GetCell(CurrentTable.FCurrentCellIndex));
    frmSSPExcelCoder.Show;
  end
  else
  begin
    frmSSPExcelCoder.BringToFront;
  end;
end;






end.

