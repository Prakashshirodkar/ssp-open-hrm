unit SSP_Menus;

(*--------------------------------------------------------------------------------
  Thu+ vie^.n na`y du`ng dde^? ta.o Popup Menu cho DBGrid va` DBTreeList.
  --------------------------------------------------------------------------------
  Ca'ch su+? du.ng :
     1. Add to Project file dxTreeGridMenu.pas
     2. The^m va`o mu.c Use : dxTreeGridMenu
     3. Trong event MouseUp cu?a DBGrid the^m ddoa.n code sau :
        if (Button = mbRight) then
          TdxPopupMenuManager.Instance(true).ShowGridPopupMenu(TdxDBGrid(Sender));
     4. Trong event MouseUp cu?a DBTreeList the^m ddoa.n code sau :
        if (Button = mbRight) then
          TdxPopupMenuManager.Instance(false).ShowGridPopupMenu(TdxDBTreeList(Sender));

  --------------------------------------------------------------------------------
  Xin ddu+`ng hie^.u chi?nh file na`y khi chu+a co' ye^u ca^`u.
  --------------------------------------------------------------------------------
*)

interface

uses
  Classes, Menus, Windows, dxDBGrid, dxTL, dxDBCtrl, dxDBTL, dxBar, ExtActns,
  Controls, Dialogs, XLSReadWriteII, IBODataset, Forms, SysUtils, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBTLLnk,
  sspSendMail;
type
  TdxCustomDBGridPopupMenu = class
  private
    fPopupMenu: TdxBarPopupMenu;
    fGrid: TCustomdxDBTreeListControl; //TdxDBGrid;
    fGridColumn: TdxDBGridColumn;
    fParamGrid: Boolean;
  protected
    procedure CreateMenuItems; virtual; abstract;
    procedure BeforePopup; virtual;
    function AddMenuItem(ItemLink: TdxBarItemLinks; ACaption: string; AOnClick:
      TNotifyEvent; ATag: Integer; AGroup: Boolean): TdxBarButton;
    function AddSubMenuItem(ACaption: string; AGroup: Boolean): TdxBarSubItem;
  public
    constructor Create(ParamGrid: Boolean);
    destructor Destroy; override;
    procedure Popup(AGridColumn: TdxDBGridColumn; X, Y: Integer); virtual;
    procedure PopupFromCursor(AGrid: TdxDBGrid; AGridColumn: TdxDBGridColumn);
  end;
  TdxDBGridHeaderPopupMenu = class(TdxCustomDBGridPopupMenu)
  private
    fGroupItem: TdxBarButton;
    fFooterItem: TdxBarButton;
    fFilterItem: TdxBarButton;
    fImportFromXLSItem: TdxBarButton;
    fAutoHeightItem: TdxBarButton;
    fAutoWidthItem: TdxBarButton;
    fColumnSelector: TdxBarButton;
    fLoadAllRecord: TdxBarButton;
    fSmartRefresh: TdxBarButton;
    fPartialRefresh: TdxBarButton;
    fHeaderAlignmentItems: array[TAlignment] of TdxBarButton;
    procedure DoRemoveColumn(Sender: TObject);
    procedure DoCancelSortColumn(Sender: TObject);
    procedure DoColumnSelector(Sender: TObject);
    procedure DoAlign(Sender: TObject);
    procedure DoSearchData(Sender: TObject);
    procedure DoSetFilter(Sender: TObject);
    procedure Comparison(Sender: TObject);
    procedure DoImportFromExcel(Sender: TObject);
    procedure DoSetGroup(Sender: TObject);
    procedure DoPrinting(Sender: TObject);
    procedure DoSetFooter(Sender: TObject);
    procedure ExportToExcel(Sender: TObject);
    procedure DoExpandAll(Sender: TObject);
    procedure DoCollapseAll(Sender: TObject);
    procedure DoSendMail(Sender: TObject);
    procedure OpenByExcel(Sender: TObject);
    procedure ExportToHTML(Sender: TObject);
    procedure ExportToXML(Sender: TObject);
    procedure DoBestFit(Sender: TObject);
    procedure DoAutoWidth(Sender: TObject);
    procedure DoAutoHeight(Sender: TObject);
    procedure DoBestFitAllColumns(Sender: TObject);

    procedure DoSetLoadAllRecord(Sender: TObject);
    procedure DoSetSmartRefresh(Sender: TObject);
    procedure DoSetPartialRefresh(Sender: TObject);
  protected
    procedure BeforePopup; override;
    procedure CreateMenuItems; override;
  end;
  TdxDBGridFooterPopupMenu = class(TdxCustomDBGridPopupMenu)
  private
    fIsRowFooter: Boolean;
    fItems: array[TdxSummaryType] of TdxBarButton;
    fSummaryItem: TdxDBGridSummaryItem;
    fSummaryGroup: TdxDBGridSummaryGroup;
    procedure DoFooterSummary(ASummaryType: TdxSummaryType);
    procedure DoRowFooterSummary(ASummaryType: TdxSummaryType);
    procedure DoSummary(Sender: TObject);
  protected
    procedure BeforePopup; override;
    procedure CreateMenuItems; override;
    property SummaryGroup: TdxDBGridSummaryGroup read fSummaryGroup write
      fSummaryGroup;
    property SummaryItem: TdxDBGridSummaryItem read fSummaryItem write
      fSummaryItem;
  public

    property IsRowFooter: Boolean read fIsRowFooter write fIsRowFooter;
  end;
  TdxPopupMenuManager = class
  private
    GridHeaderPopupMenu: TdxDBGridHeaderPopupMenu;
    GridFooterPopupMenu: TdxDBGridFooterPopupMenu;
  protected
    constructor CreateInstance(AParamGrid: Boolean);
    class function AccessInstance(Request: Integer; AParamGrid: Boolean):
      TdxPopupMenuManager;
  public
    constructor Create;
    destructor Destroy; override;
    class function Instance(AParamGrid: Boolean): TdxPopupMenuManager;
    class procedure ReleaseInstance;
    function ShowGridPopupMenu(Grid: TdxDBGrid): Boolean;
  end;
implementation
uses DB,//tamkhoa ImportForm,
     SheetData, MainDM;// SendMailForm,GlobalUnit
  {AttachFileNameForm}

const
  stSearchData = 'Tìm kiếm (Phím tắt F8)';
  stExportData = 'Xuất dữ liệu ra';
  stPrints = 'In dữ liệu này';
  stViews = 'Trình bày';
  stOpenByExcel = 'Xem dữ liệu bằng Excel';
  stComparison = 'So sánh với tập tin Excel';
  stExpandAll = 'Bung toàn bộ dữ liệu ra ';
  stCollapseAll = 'Thu toàn bộ dữ liệu lại';
  stSendMail = 'Gửi dữ liệu Excel qua mail';
  stExportExcel = 'Excel';
  stExportHTML = 'HTML';
  stExportXML = 'XML';
  StImportFromXls = 'Đọc dữ liệu từ Excel';
  StPrintGrid = ' In theo dạng hiển thị';
  StGroupOption = 'Gom nhóm dữ liệu';
  StFilterOption = 'Lọc dữ liệu';
  StAutoHeightOption = 'Chiều cao tự động';
  StFooterOption = 'Hiện thanh hạ mục';
  StGroupByThisColumn = 'Nhóm cột này';
  StRemoveThisColumn = 'Giấu cột này';
  StCancelSortThisColumn = 'Không sắp thứ tự cột này';
  StColumnSelector = 'Chọn thêm cột khác';
  StAlignment = 'Canh lề';
  StAlignments: array[TAlignment] of string = ('Canh trái', 'Canh phải',
    'Canh giữa');
  StBestFit = 'Độ rộng vừa (cột này)';
  StBestFitAllColumns = 'Độ rộng vừa (Các cột)';
  StAutoWidth = 'Chiều rộng tự động';
  StSummaryItems: array[TdxSummaryType] of string = ('Để trống',
    'Lấy giá trị tổng', 'Giá trị nhỏ nhất',
    'Giá trị lớn nhất', 'Đếm số lượng dòng',
    'Lấy giá trị trung bình');
  StGridMode='Chế độ trên lưới';
  StLoadAllRecord='Nạp toàn bộ dữ liệu';
  StSmartRefresh='Nạp tự động';
  StPartialRefresh='Nạp từng phần';
  //[NXHop them]
  stSearchData_E = 'Search( Hot key F8)';
  stExportData_E = 'Export data';
  stPrints_E = 'Print data';
  stViews_E = 'View option';
  stOpenByExcel_E = 'View with Excel';
  stComparison_E = 'Compare with Excel file';
  stExpandAll_E = 'Full expand ';
  stCollapseAll_E = 'Full collapse';
  stSendMail_E = 'Send the Excel data by email';
  stExportExcel_E = 'Excel';
  stExportHTML_E = 'HTML';
  stExportXML_E = 'XML';
  StImportFromXls_E = 'Import from Excel';
  StPrintGrid_E = ' Default print';
  StGroupOption_E = 'Group option';
  StFilterOption_E = 'Filter option';
  StAutoHeightOption_E = 'Auto heigth';
  StFooterOption_E = 'Show footer';
  StGroupByThisColumn_E = 'Group column';
  StRemoveThisColumn_E = 'Hide column';
  StCancelSortThisColumn_E = 'Cancel sorting';
  StColumnSelector_E = 'Select columns';
  StAlignment_E = 'Alignment';
  StAlignments_E: array[TAlignment] of string = ('Left alingment',
    'Right alingment', 'Center alingment');
  StBestFit_E = 'Best fit (column)';
  StBestFitAllColumns_E = 'Best fit (all columns)';
  StAutoWidth_E = 'Auto width';
  StSummaryItems_E: array[TdxSummaryType] of string = ('Default', 'Summary',
    'Minimum', 'Maximum', 'Count', 'Average');

  StGridMode_E='Grid mode';
  StLoadAllRecord_E='Load all record';
  StSmartRefresh_E='Smart refresh';
  StPartialRefresh_E='Partial refresh';
  {TdxDBGridPopupMenu}

constructor TdxCustomDBGridPopupMenu.Create(ParamGrid: Boolean);
begin
  inherited Create;
  fPopupMenu := TdxBarPopupMenu.Create(nil);
  fParamGrid := ParamGrid;
  CreateMenuItems;
end;

destructor TdxCustomDBGridPopupMenu.Destroy;
begin
  fPopupMenu.Free;
  //  fBarManager.Free;
  inherited Destroy;
end;

function TdxCustomDBGridPopupMenu.AddMenuItem(ItemLink: TdxBarItemLinks;
  ACaption: string; AOnClick: TNotifyEvent; ATag: Integer; AGroup: Boolean):
  TdxBarButton;
begin
  Result := TdxBarButton.Create(nil);
  Result.Caption := UTF8Decode(ACaption);
  Result.ButtonStyle := bsChecked;
  Result.OnClick := AOnClick;
  Result.Tag := ATag;
  with ItemLink.Add do
  begin
    Item := Result;
    BeginGroup := AGroup;
  end;
end;

function TdxCustomDBGridPopupMenu.AddSubMenuItem(ACaption: string; AGroup:
  Boolean): TdxBarSubItem;
begin
  Result := TdxBarSubItem.Create(nil);
  Result.Caption := UTF8Decode(ACaption);
  Result.Tag := -1;
  with fPopupMenu.ItemLinks.Add do
  begin
    Item := Result;
    BeginGroup := AGroup;
  end;
end;

procedure TdxCustomDBGridPopupMenu.BeforePopup;
begin
end;

procedure TdxCustomDBGridPopupMenu.Popup(AGridColumn: TdxDBGridColumn; X, Y:
  Integer);
begin
  fGridColumn := TdxDBGridColumn(AGridColumn);
  BeforePopup;
  fPopupMenu.Popup(X, Y);
end;

procedure TdxCustomDBGridPopupMenu.PopupFromCursor(AGrid: TdxDBGrid;
  AGridColumn: TdxDBGridColumn);
var
  Point: TPoint;
begin
  fGrid := AGrid;
  GetCursorPos(Point);
  Popup(AGridColumn, Point.X, Point.Y);
end;
{TdxDBGridHeaderPopupMenu}

procedure TdxDBGridHeaderPopupMenu.BeforePopup;
var
  Align: TAlignment;
begin
  Assert(fGridColumn <> nil, 'Parameter column is NULL');
  if (fGrid is TdxDBGrid) then
  begin
    fFilterItem.Down := (fGrid as TdxDBGrid).Filter.Active;
    fGroupItem.Down := (fGrid as TdxDBGrid).ShowGroupPanel;
    if (fGrid as TdxDBGrid).IsImportFromXLS then
      fImportFromXLSItem.Visible := ivAlways
    else
      fImportFromXLSItem.Visible := ivNever;
  end;
  if (fGrid is TdxDBGrid) then
    fAutoHeightItem.Down := (edgoRowAutoHeight in (fGrid as
      TdxDBGrid).OptionsView)
  else
    fAutoHeightItem.Down := (etoRowAutoHeight in (fGrid as
      TdxDBTreeList).OptionsView);

  if (fGrid is TdxDBGrid) then
    fAutoWidthItem.Down := (edgoAutoWidth in (fGrid as TdxDBGrid).OptionsView)
  else
    fAutoWidthItem.Down := (etoAutoWidth in (fGrid as
      TdxDBTreeList).OptionsView);

  if (fGrid is TdxDBGrid) then
    fFooterItem.Down := (fGrid as TdxDBGrid).ShowSummaryFooter
  else
    fFooterItem.Down := (fGrid as TdxDBTreeList).ShowFooter;

  //  if fParamGrid then // neu la` luoi
  //    fGroupByColumn.Enabled := TdxDBGrid(fGridColumn.TreeList).CanAddGroupColumn(fGridColumn);
  fColumnSelector.Down := fGridColumn.TreeList.IsCustomizing;
  for Align := Low(TAlignment) to High(TAlignment) do
    fHeaderAlignmentItems[Align].Down := fGridColumn.Alignment = Align;

  if (fGrid is TdxDBGrid) then
  begin
    fLoadAllRecord.Down := (edgoLoadAllRecords in (fGrid as
      TdxDBGrid).OptionsDB);
    fSmartRefresh.Down := (edgoSmartRefresh in (fGrid as
      TdxDBGrid).OptionsDB);
    fPartialRefresh.Down := (edgoPartialLoad in (fGrid as
      TdxDBGrid).OptionsDB);
  end
  else
  begin
    fLoadAllRecord.Down:=(etoLoadAllRecords in (fgrid as TdxDBTreeList).OptionsDB);
    fSmartRefresh.Down:=not(etoLoadAllRecords in (fgrid as TdxDBTreeList).OptionsDB);
  end;
end;

procedure TdxDBGridHeaderPopupMenu.CreateMenuItems;
var
  MenuItem: TdxBarSubItem;
  MenuExportItem: TdxBarSubItem;
  MenuPrintItem: TdxBarSubItem;
  MenuViewItem: TdxBarSubItem;
  MenuGridMode: TdxBarSubItem;
  ItemLink: TdxBarItemLinks;
  Align: TAlignment;
begin
  fPopupMenu.ItemLinks.Clear;
  ItemLink := fPopupmenu.ItemLinks;
  if (sysConfig.Language = 0) or (sysConfig.Language = 1) then
  begin
    AddMenuItem(ItemLink, stSearchData, DoSearchData, -1, TRUE);
    AddMenuItem(ItemLink, StRemoveThisColumn, DoRemoveColumn, -1, TRUE);
    AddMenuItem(ItemLink, StCancelSortThisColumn, DoCancelSortColumn, -1, FALSE);

      fColumnSelector := AddMenuItem(ItemLink, StColumnSelector, DoColumnSelector,
      -1, FALSE);

    if (fParamGrid) then
    begin
      fFilterItem := AddMenuItem(ItemLink, StFilterOption, DoSetFilter, -1,
        TRUE);
      fGroupItem := AddMenuItem(ItemLink, StGroupOption, DoSetGroup, -1, False);
    end;

    MenuViewItem := AddSubMenuItem(stViews, TRUE);
    fFooterItem := AddMenuItem(MenuViewItem.ItemLinks, StFooterOption,
      DoSetFooter, -1, False);
    fAutoHeightItem := AddMenuItem(MenuViewItem.ItemLinks, StAutoHeightOption,
      DoAutoHeight, -1, False);

    fAutoWidthItem := AddMenuItem(MenuViewItem.ItemLinks, StAutoWidth,
      DoAutoWidth, -1, FALSE);
    AddMenuItem(MenuViewItem.ItemLinks, StBestFit, DoBestFit, -1, TRUE);
    AddMenuItem(MenuViewItem.ItemLinks, StBestFitAllColumns,
      DoBestFitAllColumns,
      -1, FALSE);

    MenuItem := AddSubMenuItem(StAlignment, FALSE);
    for Align := Low(TAlignment) to High(TAlignment) do
      fHeaderAlignmentItems[Align] := AddMenuItem(MenuItem.ItemLinks,
        StAlignments[Align], DoAlign, Integer(Align), FALSE);

    MenuExportItem := AddSubMenuItem(stExportData, TRUE);
    AddMenuItem(MenuExportItem.ItemLinks, stExportExcel, ExportToExcel, -1,
      False);
    if fParamGrid then
    begin
      AddMenuItem(MenuExportItem.ItemLinks, stExportHTML, ExportToHTML, -1,
        False);
      AddMenuItem(MenuExportItem.ItemLinks, stExportXML, ExportToXML, -1,
        False);
    end;

    AddMenuItem(ItemLink, stOpenByExcel, OpenByExcel, -1, False);
//    AddMenuItem(ItemLink, stComparison, Comparison, -1, False);
    AddMenuItem(MenuExportItem.ItemLinks, stSendMail, DoSendMail, -1, True);

    if fParamGrid then
      fImportFromXLSItem := AddMenuItem(ItemLink, StImportFromXls,
        DoImportFromExcel, -1, False);
//    AddMenuItem(ItemLink, StPrintGrid, DoPrinting, -1, False);

    AddMenuItem(ItemLink, stExpandAll, DoExpandAll, -1, True);
    AddMenuItem(ItemLink, stCollapseAll, DoCollapseAll, -1, False);

    MenuGridMode := AddSubMenuItem(StGridMode, TRUE);
    fLoadAllRecord := AddMenuItem(MenuGridMode.ItemLinks, StLoadAllRecord,
      DoSetLoadAllRecord, -1, false);
    fSmartRefresh := AddMenuItem(MenuGridMode.ItemLinks, StSmartRefresh,
      DoSetSmartRefresh, -1, False);
    if fParamGrid then
    fPartialRefresh := AddMenuItem(MenuGridMode.ItemLinks, StPartialRefresh,
      DoSetPartialRefresh, -1, FALSE);
  end
    //[NXHop them]
  else
    if sysConfig.Language = 2 then
  begin
    AddMenuItem(ItemLink, stSearchData_E, DoSearchData, -1, TRUE);
    AddMenuItem(ItemLink, StRemoveThisColumn_E, DoRemoveColumn, -1, TRUE);
    AddMenuItem(ItemLink, StCancelSortThisColumn_E, DoCancelSortColumn, -1, FALSE);
    fColumnSelector := AddMenuItem(ItemLink, StColumnSelector_E,
      DoColumnSelector,
      -1, FALSE);

    if (fParamGrid) then
    begin
      fFilterItem := AddMenuItem(ItemLink, StFilterOption_E, DoSetFilter, -1,
        TRUE);
      fGroupItem := AddMenuItem(ItemLink, StGroupOption_E, DoSetGroup, -1,
        False);
    end;

    MenuViewItem := AddSubMenuItem(stViews_E, TRUE);
    fFooterItem := AddMenuItem(MenuViewItem.ItemLinks, StFooterOption_E,
      DoSetFooter, -1, False);
    fAutoHeightItem := AddMenuItem(MenuViewItem.ItemLinks, StAutoHeightOption_E,
      DoAutoHeight, -1, False);

    fAutoWidthItem := AddMenuItem(MenuViewItem.ItemLinks, StAutoWidth_E,
      DoAutoWidth, -1, FALSE);
    AddMenuItem(MenuViewItem.ItemLinks, StBestFit_E, DoBestFit, -1, TRUE);
    AddMenuItem(MenuViewItem.ItemLinks, StBestFitAllColumns_E,
      DoBestFitAllColumns,
      -1, FALSE);

    MenuItem := AddSubMenuItem(StAlignment_E, FALSE);
    for Align := Low(TAlignment) to High(TAlignment) do
      fHeaderAlignmentItems[Align] := AddMenuItem(MenuItem.ItemLinks,
        StAlignments_E[Align], DoAlign, Integer(Align), FALSE);

    MenuExportItem := AddSubMenuItem(stExportData_E, TRUE);
    AddMenuItem(MenuExportItem.ItemLinks, stExportExcel_E, ExportToExcel, -1,
      False);
    if fParamGrid then
    begin
      AddMenuItem(MenuExportItem.ItemLinks, stExportHTML_E, ExportToHTML, -1,
        False);
      AddMenuItem(MenuExportItem.ItemLinks, stExportXML_E, ExportToXML, -1,
        False);
    end;

    AddMenuItem(ItemLink, stOpenByExcel_E, OpenByExcel, -1, False);
//    AddMenuItem(ItemLink, stComparison_E, Comparison, -1, False);
    AddMenuItem(MenuExportItem.ItemLinks, stSendMail_E, DoSendMail, -1, True);

    if fParamGrid then
      fImportFromXLSItem := AddMenuItem(ItemLink, StImportFromXls_E,
        DoImportFromExcel, -1, False);
//Ng.Xuan.Hop fixed at
//    AddMenuItem(ItemLink, StPrintGrid_E, DoPrinting, -1, False);
//
    AddMenuItem(ItemLink, stExpandAll_E, DoExpandAll, -1, True);
    AddMenuItem(ItemLink, stCollapseAll_E, DoCollapseAll, -1, False);

    MenuGridMode := AddSubMenuItem(StGridMode_E, TRUE);
    fLoadAllRecord := AddMenuItem(MenuGridMode.ItemLinks, StLoadAllRecord_E,
      DoSetLoadAllRecord, -1, false);
    fSmartRefresh := AddMenuItem(MenuGridMode.ItemLinks, StSmartRefresh_E,
      DoSetSmartRefresh, -1, False);
    if fParamGrid then
    fPartialRefresh := AddMenuItem(MenuGridMode.ItemLinks, StPartialRefresh_E,
      DoSetPartialRefresh, -1, FALSE);

  end;

end;

procedure TdxDBGridHeaderPopupMenu.DoSearchData(Sender: TObject);
begin
  keybd_event(vk_F8, 0, 0, 0);
  keybd_event(vk_F8, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TdxDBGridHeaderPopupMenu.DoRemoveColumn(Sender: TObject);
begin
  if fGrid.VisibleColumnCount > 1 then
    fGridColumn.Visible := False
  else
    ShowMessageUnicode('Đã vượt quá giới hạn cột hiển thị !');
end;
procedure TdxDBGridHeaderPopupMenu.DoCancelSortColumn(Sender: TObject);
begin
 fGridColumn.Sorted:=csNone;
end;
procedure TdxDBGridHeaderPopupMenu.DoColumnSelector(Sender: TObject);
begin
  if fGridColumn.TreeList.IsCustomizing then
    fGridColumn.TreeList.EndColumnsCustomizing
  else
    fGridColumn.TreeList.ColumnsCustomizing;
end;

procedure TdxDBGridHeaderPopupMenu.DoAlign(Sender: TObject);
begin
  fGridColumn.Alignment := TAlignment(TMenuItem(Sender).Tag);
end;

procedure TdxDBGridHeaderPopupMenu.DoSetFilter(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
    (fGrid as TdxDBGrid).Filter.Active := not (fGrid as
      TdxDBGrid).Filter.Active;
end;

procedure TdxDBGridHeaderPopupMenu.Comparison(Sender: TObject);
var
  OpenDialog1: TOpenDialog;
  cfr: TCustomFileRun;
begin
  OpenDialog1 := TOpenDialog.Create(nil);
  OpenDialog1.Filter := 'Excel Files|*.xls';
  OpenDialog1.DefaultExt := 'xls';

  if not OpenDialog1.Execute then exit;

  try
    if (fGrid is TdxDBGrid) then
      (fGrid as TdxDBGrid).SaveToXLS(OpenDialog1.FileName, TRUE)
    else
      if (fGrid is TdxDBTreeList) then
      (fGrid as TdxDBTreeList).SaveToXLS(OpenDialog1.FileName, true, 0, nil);
  except
    ShowMessageUnicode('So sánh không thành công !');
    Exit;
  end;

  cfr := TCustomFileRun.Create(nil);
  cfr.FileName := GetCurrentDir + '\data.xls';
  cfr.Execute;
  cfr.Free;

  OpenDialog1.Free;
end;

procedure TdxDBGridHeaderPopupMenu.DoImportFromExcel(Sender: TObject);
var
  OpenDialog1: TOpenDialog;
  ImportCount, ErrorCount: Integer;
  Msg: string;
begin
  if not (fGrid is TdxDBGrid) then Exit;

  if not (fGrid as TdxDBGrid).IsImportFromXLS then exit;

  if (fGrid.DataSource.DataSet is TIBOQuery) then
    if (fGrid.DataSource.DataSet as TIBOQuery).InsertSQL.Text = '' then exit;

  OpenDialog1 := TOpenDialog.Create(nil);
  OpenDialog1.Filter := 'Excel Files|*.xls';
  OpenDialog1.DefaultExt := 'xls';

  if not OpenDialog1.Execute then exit;

  Screen.Cursor := crHourGlass;
  try
    (fGrid as TdxDBGrid).LoadFromXLS(OpenDialog1.FileName, ImportCount,
      ErrorCount);
  except
    on e: exception do
    begin
      Screen.Cursor := crDefault;
      ShowMessageUnicode('Thực hiện không thành công !');
      OpenDialog1.Free;
      Exit;
    end;
  end;
  Screen.Cursor := crDefault;
  OpenDialog1.Free;
  Msg := 'Chuyển dữ liệu thành công';
  Msg := StringReplace(Msg, '#SUCCESS#', IntToStr(ImportCount), [rfReplaceAll]);
  Msg := StringReplace(Msg, '#ERROR#', IntToStr(ErrorCount), [rfReplaceAll]);
  ShowMessageUnicode(Msg);
end;

procedure TdxDBGridHeaderPopupMenu.DoSetGroup(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
    (fGrid as TdxDBGrid).ShowGroupPanel := not (fGrid as
      TdxDBGrid).ShowGroupPanel;
end;

procedure TdxDBGridHeaderPopupMenu.DoPrinting(Sender: TObject);
var
  CompPrint: TdxComponentPrinter;
  CompPrintLink: TBasedxReportLink;
begin

  CompPrint := TdxComponentPrinter.Create(fGrid.Parent);
//Loi tai day - Khong AddLink vo duoc
  CompPrintLink := CompPrint.AddLink(fGrid);
//  
  if fGrid is TdxDbTreeList then
    CompPrintLink.Name := 'Link' + fGrid.Name;
  CompPrintLink.ShrinkToPageWidth := True;
  if fGrid.Width > 600 then
    CompPrintLink.PrinterPage.Orientation := poLandscape
  else
    CompPrintLink.PrinterPage.Orientation := poPortrait;
  CompPrintLink.Print(True, nil);
  CompPrintLink.Free;
  CompPrint.Free;
end;

procedure TdxDBGridHeaderPopupMenu.DoSetFooter(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
  begin
    (fGrid as TdxDBGrid).ShowSummaryFooter := not (fGrid as
      TdxDBGrid).ShowSummaryFooter;
    (fGrid as TdxDBGrid).ShowRowFooter := (fGrid as
      TdxDBGrid).ShowSummaryFooter;
  end
  else
    if (fGrid is TdxDBTreeList) then
    (fGrid as TdxDBTreeList).ShowFooter := not (fGrid as
      TdxDBTreeList).ShowFooter;
end;
procedure TdxDBGridHeaderPopupMenu.DoSetLoadAllRecord(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
  begin
    if fLoadAllRecord.Down then
    begin
      (fGrid as TdxDBGrid).OptionsDB := (fGrid as TdxDBGrid).OptionsDB+
       [edgoLoadAllRecords] - [edgoSmartRefresh, edgoSmartReload, edgoPartialLoad];
    end;
  end
  else
  if (fGrid is TdxDBTreeList) then
  begin
    if fLoadAllRecord.Down then
      (fGrid as TdxDBTreeList).OptionsDB := (fGrid as TdxDBTreeList).OptionsDB+
      [etoLoadAllRecords];
  end;
end;
procedure TdxDBGridHeaderPopupMenu.DoSetSmartRefresh(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
  begin
    if fSmartRefresh.Down then
    (fGrid as TdxDBGrid).OptionsDB := (fGrid as TdxDBGrid).OptionsDB
    - [edgoLoadAllRecords, edgoPartialLoad] + [edgoSmartRefresh, edgoSmartReload];
  end
  else
  if (fGrid is TdxDBTreeList) then
  begin
    if fSmartRefresh.Down then
    (fGrid as TdxDBTreeList).OptionsDB := (fGrid as TdxDBTreeList).OptionsDB-
    [etoLoadAllRecords];
  end;
end;
procedure TdxDBGridHeaderPopupMenu.DoSetPartialRefresh(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
  begin
    if fPartialRefresh.Down then
    (fGrid as TdxDBGrid).OptionsDB := (fGrid as TdxDBGrid).OptionsDB
    - [edgoLoadAllRecords, edgoSmartRefresh, edgoSmartReload] + [edgoPartialLoad];
  end
end;
procedure TdxDBGridHeaderPopupMenu.OpenByExcel(Sender: TObject);
var
  cfr: TCustomFileRun;
  dir: string;
begin
  try
    dir := ExtractFileDir(Application.ExeName) + '\temp';
    if not DirectoryExists(dir) then
      if CreateDir(dir) = false then
      begin
        ShowMessageUnicode('Không thể tạo được thư mục "' + dir + '"');
        exit;
      end;
    if (fGrid is TdxDBGrid) then
      (fGrid as TdxDBGrid).SaveToXLS(dir + '\data.xls', true)
    else
      if (fGrid is TdxDBTreeList) then
      (fGrid as TdxDBTreeList).SaveToXLS(dir + '\data.xls', true)
    else
      Exit;
  except
    ShowMessageUnicode('Bạn vui lòng đóng chương trình Excel trước khi mở !');
    Exit;
  end;

  cfr := TCustomFileRun.Create(nil);
  cfr.FileName := dir + '\data.xls';
  cfr.Execute;
  cfr.Free;
end;

procedure TdxDBGridHeaderPopupMenu.DoSendMail(Sender: TObject);
var
  strName: string;
  SaveDlg: TSaveDialog;
begin
  SaveDlg := TSaveDialog.Create(nil);
  SaveDlg.Filter := 'Excel Files|*.xls';
  SaveDlg.DefaultExt := 'xls';
  strName := GetCurrentDir + '\data.xls';
  SaveDlg.FileName := strName;
  try
    if SaveDlg.Execute then
    begin
      strName := SaveDlg.FileName;
      if (fGrid is TdxDBGrid) then
        (fGrid as TdxDBGrid).SaveToXLS(SaveDlg.FileName, true)
      else
        if (fGrid is TdxDBTreeList) then
        (fGrid as TdxDBTreeList).SaveToXLS(strName, true)
      else
        Exit;
      with TMAPIMail.Create(Screen.ActiveForm) do
      try
        Attachments.Add(strName);
        EditDialog := true;
        Send;
      finally
        Free;
      end;
    end;
    SaveDlg.Free;
  except
    ShowMessageUnicode('Không tạo được file Excel !');
  end;
end;

procedure TdxDBGridHeaderPopupMenu.ExportToExcel(Sender: TObject);
var
  SaveDlg: TSaveDialog;
begin
  SaveDlg := TSaveDialog.Create(nil);
  SaveDlg.Filter := 'Excel Files|*.xls';
  SaveDlg.DefaultExt := 'xls';
  try
    if SaveDlg.Execute then
    begin
      if (fGrid is TdxDBTreeList) then
        (fGrid as TdxDBTreeList).SaveToXLS(SaveDlg.FileName, true)
      else
        (fGrid as TdxDBGrid).SaveToXLS(SaveDlg.FileName, true);
    end;
  except
    SaveDlg.Free;
    ShowMessageUnicode('Thực hiện không thành công' + #10#13 +
      'Hoặc bạn phải đóng Excel trước khi import !');
  end;
end;

procedure TdxDBGridHeaderPopupMenu.DoExpandAll(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
    (fGrid as TdxDBGrid).FullExpand
  else
    if (fGrid is TdxDBTreeList) then
    (fGrid as TdxDBTreeList).FullExpand;
end;

procedure TdxDBGridHeaderPopupMenu.DoCollapseAll(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
    (fGrid as TdxDBGrid).FullCollapse
  else
    if (fGrid is TdxDBTreeList) then
    (fGrid as TdxDBTreeList).FullCollapse;
end;

procedure TdxDBGridHeaderPopupMenu.ExportToHTML(Sender: TObject);
var
  SaveDlg: TSaveDialog;
begin
  if not (fGrid is TdxDBGrid) then exit;

  SaveDlg := TSaveDialog.Create(nil);
  SaveDlg.Filter := 'Web Page Files|*.html';
  SaveDlg.DefaultExt := 'htm';
  try
    if SaveDlg.Execute then
      (fGrid as TdxDBGrid).SaveToHTML(SaveDlg.FileName, true);
  except
    SaveDlg.Free;
    ShowMessageUnicode('Thực hiện không thành công !');
    Exit;
  end;
end;

procedure TdxDBGridHeaderPopupMenu.ExportToXML(Sender: TObject);
var
  SaveDlg: TSaveDialog;
begin
  if not (fGrid is TdxDBGrid) then Exit;

  SaveDlg := TSaveDialog.Create(nil);
  SaveDlg.Filter := 'XML Files|*.xml';
  SaveDlg.DefaultExt := 'xml';
  try
    if SaveDlg.Execute then
      (fGrid as TdxDBGrid).SaveToXML(SaveDlg.FileName, true);
  except
    SaveDlg.Free;
    ShowMessageUnicode('Thực hiện không thành công !');
    Exit;
  end;
end;

procedure TdxDBGridHeaderPopupMenu.DoBestFit(Sender: TObject);
begin
  fGridColumn.TreeList.ApplyBestFit(fGridColumn);
end;

procedure TdxDBGridHeaderPopupMenu.DoBestFitAllColumns(Sender: TObject);
begin
  fGridColumn.TreeList.ApplyBestFit(nil);
  //    fGridColumn.TreeList
end;

procedure TdxDBGridHeaderPopupMenu.DoAutoWidth(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
  begin
    if fAutoWidthItem.Down then
      (fGrid as TdxDBGrid).OptionsView := (fGrid as TdxDBGrid).OptionsView +
        [edgoAutoWidth]
    else
      (fGrid as TdxDBGrid).OptionsView := (fGrid as TdxDBGrid).OptionsView -
        [edgoAutoWidth];
  end
  else
    if (fGrid is TdxDBTreeList) then
  begin
    if fAutoWidthItem.Down then
      (fGrid as TdxDBTreeList).OptionsView := (fGrid as
        TdxDBTreeList).OptionsView + [etoAutoWidth]
    else
      (fGrid as TdxDBTreeList).OptionsView := (fGrid as
        TdxDBTreeList).OptionsView - [etoAutoWidth];
  end;
end;

procedure TdxDBGridHeaderPopupMenu.DoAutoHeight(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
  begin
    if fAutoHeightItem.Down then
      (fGrid as TdxDBGrid).OptionsView := (fGrid as TdxDBGrid).OptionsView +
        [edgoRowAutoHeight]
    else
      (fGrid as TdxDBGrid).OptionsView := (fGrid as TdxDBGrid).OptionsView -
        [edgoRowAutoHeight];
  end
  else
    if (fGrid is TdxDBTreeList) then
  begin
    if fAutoHeightItem.Down then
      (fGrid as TdxDBTreeList).OptionsView := (fGrid as
        TdxDBTreeList).OptionsView + [etoRowAutoHeight]
    else
      (fGrid as TdxDBTreeList).OptionsView := (fGrid as
        TdxDBTreeList).OptionsView - [etoRowAutoHeight];
  end
end;

{TdxDBGridFooterPopupMenu}

procedure TdxDBGridFooterPopupMenu.BeforePopup;
var
  SummaryType: TdxSummaryType;
begin
  Assert(fGridColumn <> nil, 'Parameter column is NULL');
  if IsRowFooter then
    SummaryType := SummaryItem.SummaryType
  else
    SummaryType := fGridColumn.SummaryFooterType;
  fItems[SummaryType].Down := True;
  if Assigned(fGridColumn.Field) then
  begin
    fItems[cstMin].Enabled := (fGridColumn.Field.DataType in
      [ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftDate, ftTime,
      ftDateTime, ftAutoInc]);
    fItems[cstMax].Enabled := fItems[cstMin].Enabled;
    fItems[cstSum].Enabled := (fGridColumn.Field.DataType in [ftSmallint,
      ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftAutoInc]);
    fItems[cstAvg].Enabled := fItems[cstSum].Enabled;
  end;
end;

procedure TdxDBGridFooterPopupMenu.CreateMenuItems;
var
  SummaryType: TdxSummaryType;
  ItemLink: TdxBarItemLinks;
begin
  fPopupMenu.ItemLinks.Clear;
  ItemLink := fPopupmenu.ItemLinks;
  if (sysConfig.Language = 0) or (sysConfig.Language = 1) then
  begin
    for SummaryType := cstSum to cstAvg do
      //Low(TdxSummaryType-1) to High(TdxSummaryType) do
    begin
      fItems[SummaryType] := AddMenuItem(ItemLink, StSummaryItems[SummaryType],
        DoSummary, Integer(SummaryType), FALSE);
      fItems[SummaryType].GroupIndex := 1;
    end;
    SummaryType := Low(TdxSummaryType);
    fItems[SummaryType] := AddMenuItem(ItemLink, StSummaryItems[SummaryType],
      DoSummary, Integer(SummaryType), TRUE);
    fItems[SummaryType].GroupIndex := 1;
  end
  else
    if sysConfig.Language = 2 then
  begin
    for SummaryType := cstSum to cstAvg do
      //Low(TdxSummaryType-1) to High(TdxSummaryType) do
    begin
      fItems[SummaryType] := AddMenuItem(ItemLink, StSummaryItems_E[SummaryType],
        DoSummary, Integer(SummaryType), FALSE);
      fItems[SummaryType].GroupIndex := 1;
    end;
    SummaryType := Low(TdxSummaryType);
    fItems[SummaryType] := AddMenuItem(ItemLink, StSummaryItems_E[SummaryType],
      DoSummary, Integer(SummaryType), TRUE);
    fItems[SummaryType].GroupIndex := 1;
  end;
end;

procedure TdxDBGridFooterPopupMenu.DoFooterSummary(ASummaryType:
  TdxSummaryType);
begin
  fGridColumn.SummaryFooterType := ASummaryType;
  fGridColumn.SummaryFooterField := fGridColumn.FieldName;
  if fGridColumn.Field is TIBOFloatField then
{
    if fGridColumn.SummaryFooterFormat = '' then
      fGridColumn.SummaryFooterFormat := CACHESO_FORMAT;
}      
end;

procedure TdxDBGridFooterPopupMenu.DoRowFooterSummary(ASummaryType:
  TdxSummaryType);
begin
  SummaryItem.SummaryType := ASummaryType;
{
  if fGridColumn.Field is TIBOFloatField then
    if SummaryItem.SummaryFormat = '' then
      SummaryItem.SummaryFormat := CACHESO_FORMAT;
}      
end;

procedure TdxDBGridFooterPopupMenu.DoSummary(Sender: TObject);
begin
  if IsRowFooter then
    DoRowFooterSummary(TdxSummaryType(TMenuItem(Sender).Tag))
  else
    DoFooterSummary(TdxSummaryType(TMenuItem(Sender).Tag));
  if fParamGrid then
    TdxDBGrid(fGridColumn.TreeList).RefreshGroupColumns
  else
    TCustomdxDBGrid(fGridColumn.TreeList).FullRefresh;
end;
{TdxDBGridPopupMenuManager}

class function TdxPopupMenuManager.AccessInstance(Request: Integer; AParamGrid:
  Boolean): TdxPopupMenuManager;
var
  FInstance: TdxPopupMenuManager;
begin
  FInstance := nil;
  case Request of
    0: ;
    1:
      if not Assigned(FInstance) then
      FInstance := CreateInstance(AParamGrid);
    2: FInstance := nil;
  else
    raise Exception.CreateFmt('Illegal request %d in AccessInstance',
      [Request]);
  end;
  Result := FInstance;
end;

constructor TdxPopupMenuManager.Create;
begin
  inherited Create;
  raise Exception.CreateFmt('Access class %s through Instance only',
    [ClassName]);
end;

constructor TdxPopupMenuManager.CreateInstance(AParamGrid: Boolean);
begin
  inherited Create;
  GridHeaderPopupMenu := TdxDBGridHeaderPopupMenu.Create(AParamGrid);
  GridFooterPopupMenu := TdxDBGridFooterPopupMenu.Create(AParamGrid);
end;

destructor TdxPopupMenuManager.Destroy;
begin
  if AccessInstance(0, TRUE) = Self then AccessInstance(2, TRUE);
  GridHeaderPopupMenu.Free;
  GridFooterPopupMenu.Free;
  inherited Destroy;
end;

class function TdxPopupMenuManager.Instance(AParamGrid: Boolean):
  TdxPopupMenuManager;
begin
  Result := AccessInstance(1, AParamGrid);
end;

class procedure TdxPopupMenuManager.ReleaseInstance;
begin
  AccessInstance(0, TRUE).Free;
end;

function TdxPopupMenuManager.ShowGridPopupMenu(Grid: TdxDBGrid): Boolean;
var
  hTest: TdxTreeListHitTest;
  GridColumn: TdxDBGridColumn;
  SummaryGroup: TdxDBGridSummaryGroup;
  p: TPoint;
begin
  GetCursorPos(p);
  p := Grid.ScreenToClient(p);
  hTest := Grid.GetHitTestInfoAt(p.X, p.Y);
  GridColumn := nil;
  case hTest of
    htColumn, htColumnEdge:
      begin
        GridColumn := TdxDBGridColumn(Grid.GetColumnAt(p.X, p.Y));
        if GridColumn <> nil then
        begin
          GridHeaderPopupMenu.PopupFromCursor(Grid, GridColumn);
        end;
      end;
    htSummaryFooter:
      begin
        GridColumn := TdxDBGridColumn(Grid.GetFooterColumnAt(p.X, p.Y));
        if GridColumn <> nil then
        begin
          GridFooterPopupMenu.IsRowFooter := False;
          GridFooterPopupMenu.PopupFromCursor(Grid, GridColumn);
        end;
      end;
    htSummaryNodeFooter:
      begin
        GridFooterPopupMenu.SummaryItem := Grid.GetSummaryItemAt(p.X, p.Y,
          SummaryGroup, TdxDBTreeListColumn(GridColumn), True);
        if GridColumn <> nil then
        begin
          GridFooterPopupMenu.SummaryGroup := SummaryGroup;
          GridFooterPopupMenu.IsRowFooter := True;
          GridFooterPopupMenu.PopupFromCursor(Grid, GridColumn);
        end;
      end;
  end;
  Result := GridColumn <> nil;
end;
initialization
finalization
  TdxPopupMenuManager.ReleaseInstance;
end.

