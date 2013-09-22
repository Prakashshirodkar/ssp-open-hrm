unit WageParamForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, ElPgCtl, ImgList, dxExEdtr,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ExtCtrls,
  ElPanel, ElSplit, DB, IBODataset, dxGrClEx, ActnList, ElBtnCtl, ElPopBtn,
  dxEditor, dxEdLib, dxmdaset, dxDBTL, dxDBELib;

const
  MessageVn: array[1..5] of WideString = ('Tham số nhân viên: ',
    'Tham số phòng ban: ', 'Tham số chức danh: ',
    'Tham số vị trí : ', 'Dữ liệu t ổng hợp: ');
  MessageEng: array[1..5] of WideString = ('Personal data: ',
    'Data for departments: ',
    'Data for duties: ', 'Data for working position: ', 'Report data: ');
type
  TfrmWageParamData = class(TfrmEditBase)
    pageMain: TElPageControl;
    dxlcMainItem2: TdxLayoutItem;
    ImageList1: TImageList;
    tabWageParam: TElTabSheet;
    tabSummaryReport: TElTabSheet;
    ElSplitter1: TElSplitter;
    pageRight: TElPageControl;
    tabApdungChung: TElTabSheet;
    tabNhanvien: TElTabSheet;
    tabDonvi: TElTabSheet;
    tabChucdanh: TElTabSheet;
    tabVitri: TElTabSheet;
    gridWageParam: TdxDBGrid;
    qryWageParam: TIBOQuery;
    dsWageParam: TDataSource;
    gridWageParamPARAM_NO: TdxDBGridColumn;
    gridWageParamPARAM_VALUE: TdxDBGridCalcColumn;
    gridWageParamELEMENT_NAME: TdxDBGridPopupColumn;
    ActionList1: TActionList;
    acPhatsinh: TAction;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxSelectDept: TdxPopupEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    gridPersonalParam: TdxDBGrid;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dsPersonalParam: TDataSource;
    memPersonalParam: TdxMemData;
    memPersonalParamEMPLOYEE_NO: TWideStringField;
    memPersonalParamFULL_NAME: TWideStringField;
    memPersonalParamDEPT_NAME: TWideStringField;
    memPersonalParamTITLE_NAME: TWideStringField;
    gridPersonalParamEMPLOYEE_NO: TdxDBGridColumn;
    gridPersonalParamFULL_NAME: TdxDBGridColumn;
    gridPersonalParamDEPT_NAME: TdxDBGridColumn;
    gridPersonalParamTITLE_NAME: TdxDBGridColumn;
    acXemThamsoNV: TAction;
    qryGetWageParamList: TIBOQuery;
    qryGetWageParamListELEMENT_NO: TWideStringField;
    qryGetWageParamListELEMENT_NAME: TWideStringField;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    acCapnhatThamsoNV: TAction;
    qryPersonalParam: TIBOQuery;
    qryExecute: TIBOQuery;
    dxLayoutControl1Item5: TdxLayoutItem;
    imOption: TdxImageEdit;
    dxLayoutControl1Group2: TdxLayoutGroup;
    qryPersonalParamEMPLOYEE_NO: TWideStringField;
    qryPersonalParamFULL_NAME: TWideStringField;
    qryPersonalParamDEPT_NAME: TWideStringField;
    qryPersonalParamTITLE_NAME: TWideStringField;
    dxLayoutControl2: TdxLayoutControl;
    ElPopupButton4: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    qryDeptParam: TIBOQuery;
    memDeptParam: TdxMemData;
    dsDeptParam: TDataSource;
    memDeptParamDEPT_NO: TWideStringField;
    memDeptParamP_DEPT_NO: TWideStringField;
    memDeptParamDEPT_NAME: TWideStringField;
    qryDeptParamDEPT_NO: TWideStringField;
    qryDeptParamP_DEPT_NO: TWideStringField;
    qryDeptParamDEPT_NAME: TWideStringField;
    treeDeptParam: TdxDBTreeList;
    dxLayoutControl2Item1: TdxLayoutItem;
    treeDeptParamDEPT_NO: TdxDBTreeListColumn;
    acXemThamsoPB: TAction;
    acCapnhatThamsoPB: TAction;
    dxLayoutControl3: TdxLayoutControl;
    gridTitleParam: TdxDBGrid;
    ElPopupButton6: TElPopupButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    qryTitleParam: TIBOQuery;
    memTitleParam: TdxMemData;
    dsTitleParam: TDataSource;
    memTitleParamTITLE_NO: TWideStringField;
    memTitleParamTITLE_NAME: TWideStringField;
    gridTitleParamTITLE_NO: TdxDBGridColumn;
    gridTitleParamTITLE_NAME: TdxDBGridColumn;
    acCapnhatThamsoCD: TAction;
    acXemThamsoCD: TAction;
    qryTitleParamTITLE_NO: TWideStringField;
    qryTitleParamTITLE_NAME: TWideStringField;
    dxLayoutControl4: TdxLayoutControl;
    ElPopupButton8: TElPopupButton;
    treePositionParam: TdxDBTreeList;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dsPositionParam: TDataSource;
    qryPositionParam: TIBOQuery;
    memPositionParam: TdxMemData;
    qryPositionParamPOSITION_NO: TWideStringField;
    qryPositionParamP_POSITION_NO: TWideStringField;
    qryPositionParamPOSITION_NAME: TWideStringField;
    memPositionParamPOSITION_NO: TWideStringField;
    memPositionParamP_POSITION_NO: TWideStringField;
    memPositionParamPOSITION_NAME: TWideStringField;
    treePositionParamPOSITION_NAME: TdxDBTreeListColumn;
    acXemThamsoVT: TAction;
    acCapnhatThamsoVT: TAction;
    dsNull: TDataSource;
    qryNull: TIBOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    IBOFloatField1: TIBOFloatField;
    qryReport: TIBOQuery;
    dsReport: TDataSource;
    qryReportEMPLOYEE_NO: TWideStringField;
    qryReportFULL_NAME: TWideStringField;
    qryReportTITLE_NAME: TWideStringField;
    qryReportDEPT_NAME: TWideStringField;
    qryReportPARAM_NO: TWideStringField;
    qryReportPARAM_VALUE: TIBOFloatField;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    dxLayoutControl5Item2: TdxLayoutItem;
    imEmpOption: TdxImageEdit;
    dxLayoutControl5Item3: TdxLayoutItem;
    ElPopupButton9: TElPopupButton;
    dxLayoutControl5Item4: TdxLayoutItem;
    ElPopupButton10: TElPopupButton;
    dxLayoutControl5Item5: TdxLayoutItem;
    ElPopupButton11: TElPopupButton;
    dxLayoutControl5Item6: TdxLayoutItem;
    dxInMonth: TdxImageEdit;
    dxLayoutControl5Item7: TdxLayoutItem;
    dxInYear: TdxSpinEdit;
    dxLayoutControl5Group2: TdxLayoutGroup;
    dxInPeriod: TdxSpinEdit;
    dxLayoutControl5Item8: TdxLayoutItem;
    groupMoreOption: TdxLayoutGroup;
    chkBienChung: TdxCheckEdit;
    dxlcItemBienchung: TdxLayoutItem;
    chkChucvu: TdxCheckEdit;
    dxlcItemChucvu: TdxLayoutItem;
    chkChucdanh: TdxCheckEdit;
    dxlcItemChucdanh: TdxLayoutItem;
    chkDonvi: TdxCheckEdit;
    dxlcItemDonvi: TdxLayoutItem;
    chkNhanvien: TdxCheckEdit;
    dxlcItemNhanvien: TdxLayoutItem;
    dxLayoutControl5Group5: TdxLayoutGroup;
    chkMoreOption: TdxCheckEdit;
    dxLayoutControl5Item14: TdxLayoutItem;
    dxLayoutControl5Group6: TdxLayoutGroup;
    gridReport: TdxDBGrid;
    dxLayoutControl5Item15: TdxLayoutItem;
    dxLayoutControl5Group3: TdxLayoutGroup;
    dxSelectFromDept: TdxPopupEdit;
    dxLayoutControl5Item16: TdxLayoutItem;
    memReport: TdxMemData;
    acBack: TAction;
    acNext: TAction;
    acViewReport: TAction;
    memReportEMPLOYEE_NO: TWideStringField;
    memReportFULL_NAME: TWideStringField;
    memReportDEPT_NAME: TWideStringField;
    memReportTITLE_NAME: TWideStringField;
    gridReportEMPLOYEE_NO: TdxDBGridColumn;
    gridReportFULL_NAME: TdxDBGridColumn;
    gridReportDEPT_NAME: TdxDBGridColumn;
    gridReportTITLE_NAME: TdxDBGridColumn;
    qryGetWageParamListCOLOR: TIntegerField;
    treeDeptParamDEPT_NAME: TdxDBTreeListColumn;
    qryGetWageParamListELEMENT_TYPE: TWideStringField;
    acRefreshReportGrid: TAction;
    panelLeft: TPanel;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutControl6: TdxLayoutControl;
    dxLayoutControl6Item1: TdxLayoutItem;
    dxAtMonth: TdxImageEdit;
    dxLayoutControl6Item2: TdxLayoutItem;
    dxAtYear: TdxSpinEdit;
    dxLayoutControl6Item3: TdxLayoutItem;
    dxAtPeriod: TdxSpinEdit;
    dxLayoutControl6Group1: TdxLayoutGroup;
    qryWageParamPARAM_NO: TWideStringField;
    qryWageParamPARAM_VALUE: TIBOFloatField;
    qryWageParamPERIOD_ID: TIntegerField;
    qryWageParamELEMENT_NAME: TWideStringField;
    qryPersonalParamPARAM_NO: TWideStringField;
    qryPersonalParamPARAM_VALUE: TIBOFloatField;
    qryDeptParamPARAM_NO: TWideStringField;
    qryDeptParamPARAM_VALUE: TIBOFloatField;
    qryTitleParamPARAM_NO: TWideStringField;
    qryTitleParamPARAM_VALUE: TIBOFloatField;
    qryPositionParamPARAM_NO: TWideStringField;
    qryPositionParamPARAM_VALUE: TIBOFloatField;
    dxLayoutControl6Group2: TdxLayoutGroup;
    ElPopupButton12: TElPopupButton;
    dxLayoutControl6Item4: TdxLayoutItem;
    acGetData: TAction;
    qryGenWageParam: TIBOQuery;
    dxViewChild: TdxCheckEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    acSaochepDulieu: TAction;
    procedure gridWageParamELEMENT_NAMEInitPopup(Sender: TObject);
    procedure gridWageParamELEMENT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acPhatsinhExecute(Sender: TObject);
    procedure acPhatsinhUpdate(Sender: TObject);

    procedure dxSelectDeptInitPopup(Sender: TObject);
    procedure dxSelectDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure acXemThamsoNVExecute(Sender: TObject);
    procedure dxSelectDeptChange(Sender: TObject);
    procedure acCapnhatThamsoNVExecute(Sender: TObject);
    procedure memPersonalParamAfterEdit(DataSet: TDataSet);
    procedure acCapnhatThamsoNVUpdate(Sender: TObject);
    procedure pageRightChanging(Sender: TObject; NewPage: TElTabSheet;
      var AllowChange: Boolean);
    procedure acXemThamsoPBExecute(Sender: TObject);
    procedure acCapnhatThamsoPBUpdate(Sender: TObject);
    procedure acCapnhatThamsoPBExecute(Sender: TObject);
    procedure memDeptParamAfterEdit(DataSet: TDataSet);
    procedure memTitleParamAfterEdit(DataSet: TDataSet);
    procedure acCapnhatThamsoCDUpdate(Sender: TObject);
    procedure acCapnhatThamsoCDExecute(Sender: TObject);
    procedure acXemThamsoCDExecute(Sender: TObject);
    procedure memPositionParamAfterEdit(DataSet: TDataSet);
    procedure acXemThamsoVTExecute(Sender: TObject);
    procedure acCapnhatThamsoVTUpdate(Sender: TObject);
    procedure acCapnhatThamsoVTExecute(Sender: TObject);
    procedure OnControlEnter(Sender: TObject); override;
    procedure dxSelectFromDeptInitPopup(Sender: TObject);
    procedure dxSelectFromDeptCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxSelectFromDeptChange(Sender: TObject);
    procedure chkMoreOptionChange(Sender: TObject);
    procedure acBackExecute(Sender: TObject);
    procedure acNextExecute(Sender: TObject);
    procedure acViewReportExecute(Sender: TObject);
    procedure gridReportCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure acRefreshReportGridExecute(Sender: TObject);
    procedure dxAtMonthChange(Sender: TObject);
    procedure dxAtYearChange(Sender: TObject);
    procedure dxAtPeriodChange(Sender: TObject);
    procedure acGetDataExecute(Sender: TObject);
    procedure acGetDataUpdate(Sender: TObject);
    procedure qryWageParamNewRecord(DataSet: TDataSet);
    procedure pageMainChanging(Sender: TObject; NewPage: TElTabSheet;
      var AllowChange: Boolean);
    procedure acSaochepDulieuExecute(Sender: TObject);
  private
    { Private declarations }
    SELECT_DEPT, SELECT_PARENT_DEPT, SELECT_FROM_DEPT: WideString;
    Personal_Param_Change,
      Dept_Param_Change,
      Title_Param_Change,
      Position_Param_Change: Boolean;
    F_PERIOD_ID: Integer;
    F_Period_Change: boolean;

    procedure CreateDataview(mem: TdxMemData; grid: TdxDBGrid; ELEMENT_TYPE:
      WideString); overload;
    procedure CreateDataview(mem: TdxMemData; tree: TdxDBTreeList; ELEMENT_TYPE:
      WideString); overload;
    procedure CreateReportView;
    procedure SetPeriodID(Value: Integer);
  public
    { Public declarations }
    property PERIOD_ID: Integer read F_PERIOD_ID write SetPeriodID;
  end;

var
  frmWageParamData: TfrmWageParamData;

implementation

uses MainDM, SSP_Library, PopupMainForm, DBActns, MainUnit, DateUtils,
  WageDataGenerateForm;

{$R *.dfm}

procedure TfrmWageParamData.SetPeriodID(Value: Integer);
begin
  F_PERIOD_ID := Value;
  F_Period_Change := true;
end;

procedure TfrmWageParamData.OnControlEnter(Sender: TObject);
begin
  if (sender is TComponent) then
  begin
    if (sender as TComponent).Name = gridWageParam.Name then
      frameToolbar1.SetDataSource(dsWageParam)
    else
      frameToolbar1.SetDataSource(dsNull);
  end;
end;

procedure TfrmWageParamData.gridWageParamELEMENT_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWageElement.ParamByName('ELEMENT_TYPE').Value := 'BIEN_CHUNG';
  frmPopupMain.qryWageElement.Open;
  InitPopupControl('dxlcWageElement', frmPopupMain, sender, 2, gridWageParam);
end;

procedure TfrmWageParamData.gridWageParamELEMENT_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryWageElement, qryWageParam,
    'ELEMENT_NO;ELEMENT_NAME', 'PARAM_NO;ELEMENT_NAME',
    'ELEMENT_NAME', Text);
  frmPopupMain.qryWageElement.Close;
end;

procedure TfrmWageParamData.FormCreate(Sender: TObject);
begin
  imOption.Descriptions.Add(Utf8Decode('Đang làm việc'));
  imOption.Descriptions.Add(Utf8Decode('Đã thôi việc'));
  imOption.Descriptions.Add(Utf8Decode('Tất cả'));

  imOption.Values.Add('0');
  imOption.Values.Add('1');
  imOption.Values.Add('2');

  imOption.Text := '0';

  imEmpOption.Descriptions.Add(Utf8Decode('Đang làm việc'));
  imEmpOption.Descriptions.Add(Utf8Decode('Đã thôi việc'));
  imEmpOption.Descriptions.Add(Utf8Decode('Tất cả'));

  imEmpOption.Values.Add('0');
  imEmpOption.Values.Add('1');
  imEmpOption.Values.Add('2');

  imEmpOption.Text := '0';
  //=============================================
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 1'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 2'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 3'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 4'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 5'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 6'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 7'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 8'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 9'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 10'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 11'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 12'));

  dxInMonth.Values.Add('1');
  dxInMonth.Values.Add('2');
  dxInMonth.Values.Add('3');
  dxInMonth.Values.Add('4');
  dxInMonth.Values.Add('5');
  dxInMonth.Values.Add('6');
  dxInMonth.Values.Add('7');
  dxInMonth.Values.Add('8');
  dxInMonth.Values.Add('9');
  dxInMonth.Values.Add('10');
  dxInMonth.Values.Add('11');
  dxInMonth.Values.Add('12');

  dxInMonth.Text := IntToStr(Integer(MonthOf(Now)));
  dxInYear.IntValue := YearOf(Now);

  //================================================
  dxAtMonth.Descriptions.Add(Utf8Decode('Tháng 1'));
  dxAtMonth.Descriptions.Add(Utf8Decode('Tháng 2'));
  dxAtMonth.Descriptions.Add(Utf8Decode('Tháng 3'));
  dxAtMonth.Descriptions.Add(Utf8Decode('Tháng 4'));
  dxAtMonth.Descriptions.Add(Utf8Decode('Tháng 5'));
  dxAtMonth.Descriptions.Add(Utf8Decode('Tháng 6'));
  dxAtMonth.Descriptions.Add(Utf8Decode('Tháng 7'));
  dxAtMonth.Descriptions.Add(Utf8Decode('Tháng 8'));
  dxAtMonth.Descriptions.Add(Utf8Decode('Tháng 9'));
  dxAtMonth.Descriptions.Add(Utf8Decode('Tháng 10'));
  dxAtMonth.Descriptions.Add(Utf8Decode('Tháng 11'));
  dxAtMonth.Descriptions.Add(Utf8Decode('Tháng 12'));

  dxAtMonth.Values.Add('1');
  dxAtMonth.Values.Add('2');
  dxAtMonth.Values.Add('3');
  dxAtMonth.Values.Add('4');
  dxAtMonth.Values.Add('5');
  dxAtMonth.Values.Add('6');
  dxAtMonth.Values.Add('7');
  dxAtMonth.Values.Add('8');
  dxAtMonth.Values.Add('9');
  dxAtMonth.Values.Add('10');
  dxAtMonth.Values.Add('11');
  dxAtMonth.Values.Add('12');

  dxAtMonth.Text := IntToStr(Integer(MonthOf(Now)));
  dxAtYear.IntValue := YearOf(Now);
  //================================================
  CreateDataview(memPersonalParam, gridPersonalParam, 'BIEN_CANHAN');
  CreateDataview(memDeptParam, treeDeptParam, 'BIEN_DONVI');
  CreateDataview(memTitleParam, gridTitleParam, 'BIEN_CHUCDANH');
  CreateDataview(memPositionParam, treePositionParam, 'BIEN_CHUCVU');
  CreateReportView;
  inherited;
  frmPopupMain.qryDeptList.Open;
  if frmPopupMain.qryDeptList.IsEmpty = false then
  begin
    SELECT_DEPT := frmPopupMain.qryDeptListDEPT_NO.Value;
    SELECT_FROM_DEPT := frmPopupMain.qryDeptListDEPT_NO.Value;
    dxSelectDept.Text := frmPopupMain.qryDeptListDEPT_NAME.Value;
    dxSelectFromDept.Text := frmPopupMain.qryDeptListDEPT_NAME.Value;
  end;
  frmPopupMain.qryDeptList.Close;

  acGetData.Execute;
  pageMain.ActivePage := tabWageParam;
  pageRight.ActivePage := tabApdungChung;
end;

procedure TfrmWageParamData.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryWageParam.Close;
  qryGetWageParamList.Close;
  qryreport.Close;
end;

procedure TfrmWageParamData.acPhatsinhExecute(Sender: TObject);
var
  ok: boolean;
begin
  inherited;
  ok := true;
  Screen.Cursor := crSQLWait;
  qryGenWageParam.ParamByName('PARAM_TYPE').Value := 'BIEN_CHUNG';
  qryGenWageParam.ParamByName('PERIOD_ID').Value := PERIOD_ID;
  try
    dmMain.ExecuteSQL(qryGenWageParam);
    qryWageParam.Refresh;
  except
    ShowMessageUnicode(11);
    ok := false;
  end;
  if ok then ShowMessageUnicode(42);
  Screen.Cursor := crDefault;
end;

procedure TfrmWageParamData.acPhatsinhUpdate(Sender: TObject);
begin
  inherited;
  acPhatsinh.Enabled := (frameToolbar1.acDSInsert.DataSource = dsWageParam);
end;

procedure TfrmWageParamData.CreateDataview(mem: TdxMemData; grid: TdxDBGrid;
  ELEMENT_TYPE: WideString);
var
  f: TFloatField;
  newCol: TdxDBTreeListColumn;
begin
  if qryGetWageParamList.Active then
    qryGetWageParamList.Close;
  qryGetWageParamList.ParamByName('ELEMENT_TYPE').Value := ELEMENT_TYPE;

  qryGetWageParamList.Open;
  if qryGetWageParamList.RecordCount > 0 then
  begin
    if mem.Active then mem.Close;
    qryGetWageParamList.First;
    while not qryGetWageParamList.Eof do
    begin
      //tao memField
      f := TFloatField.Create(mem);
      f.Name := mem.Name + qryGetWageParamListELEMENT_NO.AsString;
      f.FieldName := qryGetWageParamListELEMENT_NO.AsString;
      f.FieldKind := fkData;
      f.DataSet := mem;
      f.SetFieldType(ftFloat);
      //      f.DisplayFormat := sysConfig.FloatFormat;
      //      f.EditFormat := sysConfig.FloatFormat;

            //tao gridColumn
      newCol := grid.CreateColumn(TdxDBGridCalcColumn);
      newCol.Name := grid.Name + f.FieldName;
      newCol.FieldName := f.FieldName;
      newCol.Width := 40;
      newCol.HeaderAlignment := taCenter;
      newCol.DisableCustomizing := true;
      newCol.Caption := qryGetWageParamListELEMENT_NAME.Value;
      if grid.Bands.Count > 1 then
        newCol.BandIndex := 1;
      //tao them field nua
      f := TFloatField.Create(mem);
      f.Name := mem.Name + qryGetWageParamListELEMENT_NO.AsString + '_OLD';
      f.FieldName := qryGetWageParamListELEMENT_NO.AsString + '_OLD';
      f.FieldKind := fkData;
      f.DataSet := mem;
      f.SetFieldType(ftFloat);

      //===============================
      qryGetWageParamList.Next;
    end;
    qryGetWageParamList.Close;
  end;
end;

procedure TfrmWageParamData.CreateDataView(mem: TdxMemData; tree:
  TdxDBTreeList; ELEMENT_TYPE: WideString);
var
  f: TFloatField;
  newCol: TdxDBTreeListColumn;
begin

  if qryGetWageParamList.Active then
    qryGetWageParamList.Close;
  qryGetWageParamList.ParamByName('ELEMENT_TYPE').Value := ELEMENT_TYPE;

  qryGetWageParamList.Open;
  if qryGetWageParamList.RecordCount > 0 then
  begin
    if mem.Active then mem.Close;
    qryGetWageParamList.First;
    while not qryGetWageParamList.Eof do
    begin
      //tao memField
      f := TFloatField.Create(mem);
      f.Name := mem.Name + qryGetWageParamListELEMENT_NO.AsString;
      f.FieldName := qryGetWageParamListELEMENT_NO.AsString;
      f.FieldKind := fkData;
      f.DataSet := mem;
      f.SetFieldType(ftFloat);
      f.DisplayFormat := sysConfig.FloatFormat;
      f.EditFormat := sysConfig.FloatFormat;

      //tao treeColumn
      newCol := tree.CreateColumn(TdxDBTreeListCalcColumn);
      newCol.Name := tree.Name + f.FieldName;
      newCol.FieldName := f.FieldName;
      newCol.Width := 40;
      newCol.HeaderAlignment := taCenter;
      newCol.DisableCustomizing := true;
      newCol.Caption := qryGetWageParamListELEMENT_NAME.Value;

      //tao them field nua
      f := TFloatField.Create(mem);
      f.Name := mem.Name + qryGetWageParamListELEMENT_NO.AsString + '_OLD';
      f.FieldName := qryGetWageParamListELEMENT_NO.AsString + '_OLD';
      f.FieldKind := fkData;
      f.DataSet := mem;
      f.SetFieldType(ftFloat);

      //===============================
      qryGetWageParamList.Next;
    end;
    qryGetWageParamList.Close;
  end;
end;
//======================================================

procedure TfrmWageParamData.CreateReportView;
var
  f: TFloatField;
  newCol: TdxDBTreeListColumn;
  old_sql_where: string;
begin

  if qryGetWageParamList.Active then
    qryGetWageParamList.Close;
  old_sql_where := qryGetWageParamList.SQLWhere.Text;
  qryGetWageParamList.SQLWhere.Text :=
    'where ELEMENT_TYPE starting with ''BIEN_''';

  qryGetWageParamList.Open;
  if qryGetWageParamList.RecordCount > 0 then
  begin
    if memReport.Active then memReport.Close;
    qryGetWageParamList.First;
    while not qryGetWageParamList.Eof do
    begin
      //tao memField
      f := TFloatField.Create(memReport);
      f.Name := memReport.Name + qryGetWageParamListELEMENT_NO.AsString;
      f.FieldName := qryGetWageParamListELEMENT_NO.AsString;
      f.FieldKind := fkData;
      f.DataSet := memReport;
      f.SetFieldType(ftFloat);
      f.DisplayFormat := sysConfig.FloatFormat;
      f.EditFormat := sysConfig.FloatFormat;

      //tao treeColumn
      newCol := gridReport.CreateColumn(TdxDBGridCalcColumn);
      newCol.Name := gridReport.Name + f.FieldName;
      newCol.FieldName := f.FieldName;
      newCol.Width := 80;
      newCol.HeaderAlignment := taCenter;
      newCol.DisableCustomizing := true;
      newCol.Caption := qryGetWageParamListELEMENT_NAME.Value;

      //===============================
      if qryGetWageParamListELEMENT_TYPE.Value = 'BIEN_CHUNG' then
      begin
        chkBienChung.Color := qryGetWageParamListCOLOR.Value;
        newCol.Tag := 1;
        chkBienChung.Enabled := true;
      end
      else
        if qryGetWageParamListELEMENT_TYPE.Value = 'BIEN_CANHAN' then
      begin
        chkNhanvien.Color := qryGetWageParamListCOLOR.Value;
        newCol.Tag := 2;
        chkNhanvien.Enabled := true;
      end
      else
        if qryGetWageParamListELEMENT_TYPE.Value = 'BIEN_DONVI' then
      begin
        chkDonvi.Color := qryGetWageParamListCOLOR.Value;
        newCol.Tag := 3;
        chkDonvi.Enabled := true;
      end
      else
        if qryGetWageParamListELEMENT_TYPE.Value = 'BIEN_CHUCDANH' then
      begin
        chkChucdanh.Color := qryGetWageParamListCOLOR.Value;
        newCol.Tag := 4;
        chkChucdanh.Enabled := true;
      end
      else
        if qryGetWageParamListELEMENT_TYPE.Value = 'BIEN_CHUCVU' then
      begin
        chkChucvu.Color := qryGetWageParamListCOLOR.Value;
        newCol.Tag := 5;
        chkChucvu.Enabled := true;
      end;
      qryGetWageParamList.Next;
    end;
    qryGetWageParamList.Close;
    qryGetWageParamList.SQLWhere.Text := old_sql_where;
  end;
end;

procedure TfrmWageParamData.dxSelectDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmWageParamData.dxSelectDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryDeptListDEPT_NAME.Value;
    SELECT_DEPT := frmPopupMain.qryDeptListDEPT_NO.Value;
  end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmWageParamData.acXemThamsoNVExecute(Sender: TObject);
var
  EMPLOYEE_NO: WideString;
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memPersonalParam.Active then memPersonalParam.Close;
  memPersonalParam.DisableControls;

  if qryPersonalParam.Active then
    qryPersonalParam.Close;
  if (Length(SELECT_DEPT) > 0) then
    qryPersonalParam.ParamByName('SELECT_DEPT').Value := SELECT_DEPT
  else
    qryPersonalParam.ParamByName('SELECT_DEPT').Clear;
  qryPersonalParam.ParamByName('IS_DISMISSED').Value := imOption.Text;
  qryPersonalParam.ParamByName('PERIOD_ID').Value := PERIOD_ID;
  if dxViewChild.Checked then
    qryPersonalParam.ParamByName('VIEW_CHILD').Value := 1
  else
    qryPersonalParam.ParamByName('VIEW_CHILD').Value := 0;
  qryPersonalParam.Open;
  memPersonalParam.Open;
  if qryPersonalParam.IsEmpty = false then
  begin
    qryPersonalParam.First;
    i := 1;
    EMPLOYEE_NO := qryPersonalParamEMPLOYEE_NO.Value;

    memPersonalParam.Append;
    memPersonalParamEMPLOYEE_NO.Value := qryPersonalParamEMPLOYEE_NO.Value;
    memPersonalParamFULL_NAME.Value := qryPersonalParamFULL_NAME.Value;
    memPersonalParamDEPT_NAME.Value := qryPersonalParamDEPT_NAME.Value;
    memPersonalParamTITLE_NAME.Value := qryPersonalParamTITLE_NAME.Value;

    repeat
      if (EMPLOYEE_NO <> qryPersonalParamEMPLOYEE_NO.Value) or
        (qryPersonalParam.Eof) then
      begin
        if (memPersonalParam.State in [dsEdit, dsInsert]) then
          memPersonalParam.Post;
        if qryPersonalParam.Eof then
          Break
        else
          EMPLOYEE_NO := qryPersonalParamEMPLOYEE_NO.Value;

        memPersonalParam.Append;
        memPersonalParamEMPLOYEE_NO.Value := qryPersonalParamEMPLOYEE_NO.Value;
        memPersonalParamFULL_NAME.Value := qryPersonalParamFULL_NAME.Value;
        memPersonalParamDEPT_NAME.Value := qryPersonalParamDEPT_NAME.Value;
        memPersonalParamTITLE_NAME.Value := qryPersonalParamTITLE_NAME.Value;
      end;
      if not qryPersonalParamParam_NO.IsNull then
      begin
        if
          Assigned(memPersonalParam.FindField(qryPersonalParamPARAM_NO.AsString))
            then
        begin
          memPersonalParam.FieldByName(qryPersonalParamPARAM_NO.AsString).Value
            :=
            qryPersonalParamPARAM_VALUE.Value;
          memPersonalParam.FieldByName(qryPersonalParamPARAM_NO.AsString +
            '_OLD').Value :=
            qryPersonalParamPARAM_VALUE.Value;
        end;
      end;
      qryPersonalParam.Next;
      if sysConfig.Language = 2 then
        frmMain.SetStatusBarMsg(MessageEng[1] + IntToStr(i))
      else
        frmMain.SetStatusBarMsg(Utf8Decode(MessageVn[1]) + IntToStr(i));
      i := i + 1;
    until (EMPLOYEE_NO = '') and (not (memPersonalParam.State in [dsInsert]));
  end;
  qryPersonalParam.Close;
  Personal_Param_Change := false;
  memPersonalParam.EnableControls;
  Screen.Cursor := crDefault;
  frmMain.SetStatusBarMsg('');
end;

procedure TfrmWageParamData.dxSelectDeptChange(Sender: TObject);
begin
  inherited;
  if (Length(dxSelectDept.Text) = 0) then SELECT_DEPT := '';
end;

procedure TfrmWageParamData.acCapnhatThamsoNVExecute(Sender: TObject);
var
  ok: boolean;
  bookmark: TBookmark;
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memPersonalParam.RecordCount = 0 then exit;
  dmMain.RollbackTransaction;
  ok := true;
  if (memPersonalParam.State in [dsEdit]) then
    memPersonalParam.Post;
  bookmark := memPersonalParam.GetBookmark;
  memPersonalParam.DisableControls;
  frmMain.SetStatusBarPrgDisplay(0, memPersonalParam.RecordCount);
  memPersonalParam.First;

  while not memPersonalParam.Eof do
  begin
    i := 5;
    while i <= memPersonalParam.FieldCount - 1 do
    begin
      if memPersonalParam.Fields[i + 1].IsNull then
      begin
        if (not memPersonalParam.Fields[i].IsNull) then //insert
        begin
          qryExecute.SQL.Text :=
            ' insert into hr_personal_Param(period_id,employee_no,Param_no,Param_value) ' +
            ' values(:period_id,:employee_no,:Param_no,:Param_value)';
          qryExecute.ParamByName('PERIOD_ID').Value := PERIOD_ID;
          qryExecute.ParamByName('EMPLOYEE_NO').Value :=
            memPersonalParamEMPLOYEE_NO.Value;
          qryExecute.ParamByName('PARAM_NO').Value :=
            memPersonalParam.Fields[i].FieldName;
          qryExecute.ParamByName('PARAM_VALUE').Value :=
            memPersonalParam.Fields[i].Value;
          dmMain.ExecuteSQL(qryExecute);
        end
      end
      else
        if memPersonalParam.Fields[i].IsNull then //delete
      begin
        qryExecute.SQL.Text :=
          ' delete from hr_personal_Param where ' +
          ' period_id=:period_id and employee_no=:employee_no and ' +
          ' Param_no=:Param_no';
        qryExecute.ParamByName('period_id').Value := PERIOD_ID;
        qryExecute.ParamByName('EMPLOYEE_NO').Value :=
          memPersonalParamEMPLOYEE_NO.Value;
        qryExecute.ParamByName('Param_NO').Value :=
          memPersonalParam.Fields[i].FieldName;
        dmMain.ExecuteSQL(qryExecute);
      end
      else
        if memPersonalParam.Fields[i].Value <> memPersonalParam.Fields[i +
        1].Value then
        //update
      begin
        qryExecute.SQL.Text :=
          ' update hr_personal_Param set ' +
          ' Param_value=:Param_value ' +
          ' where period_id=:period_id and employee_no=:employee_no and ' +
          ' Param_no=:Param_no';
        qryExecute.ParamByName('period_id').Value :=
          PERIOD_ID;
        qryExecute.ParamByName('EMPLOYEE_NO').Value :=
          memPersonalParamEMPLOYEE_NO.Value;
        qryExecute.ParamByName('PARAM_NO').Value :=
          memPersonalParam.Fields[i].FieldName;
        qryExecute.ParamByName('PARAM_VALUE').Value :=
          memPersonalParam.Fields[i].Value;
        dmMain.ExecuteSQL(qryExecute);
      end;
      if not (memPersonalParam.State in [dsEdit]) then
        memPersonalParam.Edit;
      if memPersonalParam.Fields[i].IsNull then
        memPersonalParam.Fields[i + 1].Clear
      else
        memPersonalParam.Fields[i + 1].Value :=
          memPersonalParam.Fields[i].Value;
      i := i + 2;
    end;
    if memPersonalParam.State in [dsEdit] then
      memPersonalParam.Post;
    memPersonalParam.Next;
    frmMain.BarPrgStepIt;
  end;
  Personal_Param_Change := false;
  memPersonalParam.GotoBookmark(bookmark);
  memPersonalParam.EnableControls;
  if ok then
    dmmain.CommitTransaction
  else
    dmMain.RollbackTransaction;
  Screen.Cursor := crDefault;
end;

procedure TfrmWageParamData.memPersonalParamAfterEdit(
  DataSet: TDataSet);
begin
  inherited;
  Personal_Param_Change := true;
end;

procedure TfrmWageParamData.acCapnhatThamsoNVUpdate(Sender: TObject);
begin
  inherited;
  acCapnhatThamsoNV.Enabled := Personal_Param_Change;
end;

procedure TfrmWageParamData.pageRightChanging(Sender: TObject;
  NewPage: TElTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if pageRight.ActivePage = tabNhanvien then
  begin
    if Personal_Param_Change then
      if ShowMessageUnicode(41) = mrYes then
        acCapnhatThamsoNV.Execute
      else
        acXemThamsoNV.Execute;
  end
  else
    if pageRight.ActivePage = tabDonvi then
  begin
    if Dept_Param_Change then
      if ShowMessageUnicode(41) = mrYes then
        acCapnhatThamsoPB.Execute
      else
        acXemThamsoPB.Execute;
  end
  else
    if pageRight.ActivePage = tabChucdanh then
  begin
    if Title_Param_Change then
      if ShowMessageUnicode(41) = mrYes then
        acCapnhatThamsoCD.Execute
      else
        acXemThamsoCD.Execute;
  end
  else
    if pageRight.ActivePage = tabVitri then
  begin
    if Position_Param_Change then
      if ShowMessageUnicode(41) = mrYes then
        acCapnhatThamsoVT.Execute
      else
        acXemThamsoVT.Execute;
  end;
end;

procedure TfrmWageParamData.acXemThamsoPBExecute(Sender: TObject);
var
  DEPT_NO: WideString;
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memDeptParam.Active then memDeptParam.Close;
  memDeptParam.DisableControls;

  if qryDeptParam.Active then
    qryDeptParam.Close;

  qryDeptParam.ParamByName('PERIOD_ID').Value := PERIOD_ID;
  qryDeptParam.Open;
  memDeptParam.Open;
  if qryDeptParam.IsEmpty = false then
  begin
    qryDeptParam.First;
    i := 1;
    DEPT_NO := qryDeptParamDEPT_NO.Value;

    memDeptParam.Append;
    memDeptParamDEPT_NO.Value := qryDeptParamDEPT_NO.Value;
    if qryDeptParamP_DEPT_NO.IsNull then
      memDeptParamP_DEPT_NO.Clear
    else
      memDeptParamP_DEPT_NO.Value := qryDeptParamP_DEPT_NO.Value;
    memDeptParamDEPT_NAME.Value := qryDeptParamDEPT_NAME.Value;

    repeat
      if (DEPT_NO <> qryDeptParamDEPT_NO.Value) or
        (qryDeptParam.Eof) then
      begin
        if (memDeptParam.State in [dsEdit, dsInsert]) then
          memDeptParam.Post;
        if qryDeptParam.Eof then
          Break
        else
          DEPT_NO := qryDeptParamDEPT_NO.Value;

        memDeptParam.Append;
        memDeptParamDEPT_NO.Value := qryDeptParamDEPT_NO.Value;
        if qryDeptParamP_DEPT_NO.IsNull then
          memDeptParamP_DEPT_NO.Clear
        else
          memDeptParamP_DEPT_NO.Value := qryDeptParamP_DEPT_NO.Value;
        memDeptParamDEPT_NAME.Value := qryDeptParamDEPT_NAME.Value;
      end;
      if not qryDeptParamParam_NO.IsNull then
      begin
        if Assigned(memDeptParam.FindField(qryDeptParamParam_NO.AsString)) then
        begin
          memDeptParam.FieldByName(qryDeptParamParam_NO.AsString).Value :=
            qryDeptParamParam_VALUE.Value;
          memDeptParam.FieldByName(qryDeptParamParam_NO.AsString + '_OLD').Value
            :=
            qryDeptParamParam_VALUE.Value;
        end;
      end;
      qryDeptParam.Next;
      if sysConfig.Language = 2 then
        frmMain.SetStatusBarMsg(MessageEng[2] + IntToStr(i))
      else
        frmMain.SetStatusBarMsg(Utf8Decode(MessageVn[2]) + IntToStr(i));
      i := i + 1;

    until (DEPT_NO = '') and (not (memDeptParam.State in [dsInsert]));
  end;
  qryDeptParam.Close;
  memDeptParam.EnableControls;
  Dept_Param_Change := false;
  Screen.Cursor := crDefault;
  frmMain.SetStatusBarMsg('');
end;

procedure TfrmWageParamData.acCapnhatThamsoPBUpdate(Sender: TObject);
begin
  inherited;
  acCapnhatThamsoPB.Enabled := Dept_Param_Change;
end;

procedure TfrmWageParamData.acCapnhatThamsoPBExecute(Sender: TObject);
var
  ok: boolean;
  bookmark: TBookmark;
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memDeptParam.RecordCount = 0 then exit;
  dmMain.RollbackTransaction;
  ok := true;
  if (memDeptParam.State in [dsEdit]) then
    memDeptParam.Post;
  bookmark := memDeptParam.GetBookmark;
  memDeptParam.DisableControls;
  frmMain.SetStatusBarPrgDisplay(0, memDeptParam.RecordCount);
  memDeptParam.First;

  while not memDeptParam.Eof do
  begin
    i := 4;
    while i <= memDeptParam.FieldCount - 1 do
    begin
      if memDeptParam.Fields[i + 1].IsNull then
      begin
        if (not memDeptParam.Fields[i].IsNull) then //insert
        begin
          qryExecute.SQL.Text :=
            ' insert into hr_dept_Param(period_id,dept_no,Param_no,Param_value) ' +
            ' values(:period_id,:dept_no,:Param_no,:Param_value)';
          qryExecute.ParamByName('period_id').Value :=
            PERIOD_ID;
          qryExecute.ParamByName('DEPT_NO').Value := memDeptParamDEPT_NO.Value;
          qryExecute.ParamByName('Param_NO').Value :=
            memDeptParam.Fields[i].FieldName;
          qryExecute.ParamByName('Param_VALUE').Value :=
            memDeptParam.Fields[i].Value;
          dmMain.ExecuteSQL(qryExecute);
        end
      end
      else
        if memDeptParam.Fields[i].IsNull then //delete
      begin
        qryExecute.SQL.Text :=
          ' delete from hr_dept_Param where ' +
          ' period_id=:period_id and dept_no=:dept_no and ' +
          ' Param_no=:Param_no';
        qryExecute.ParamByName('period_id').Value :=
          PERIOD_ID;
        qryExecute.ParamByName('DEPT_NO').Value := memDeptParamDEPT_NO.Value;
        qryExecute.ParamByName('Param_NO').Value :=
          memDeptParam.Fields[i].FieldName;
        dmMain.ExecuteSQL(qryExecute);
      end
      else
        if memDeptParam.Fields[i].Value <> memDeptParam.Fields[i + 1].Value then
        //update
      begin
        qryExecute.SQL.Text :=
          ' update hr_dept_Param set ' +
          ' Param_value=:Param_value ' +
          ' where period_id=:period_id and dept_no=:dept_no and ' +
          ' Param_no=:Param_no';
        qryExecute.ParamByName('period_id').Value :=
          PERIOD_ID;
        qryExecute.ParamByName('DEPT_NO').Value := memDeptParamDEPT_NO.Value;
        qryExecute.ParamByName('Param_NO').Value :=
          memDeptParam.Fields[i].FieldName;
        qryExecute.ParamByName('Param_VALUE').Value :=
          memDeptParam.Fields[i].Value;
        dmMain.ExecuteSQL(qryExecute);
      end;
      if not (memDeptParam.State in [dsEdit]) then
        memDeptParam.Edit;
      if memDeptParam.Fields[i].IsNull then
        memDeptParam.Fields[i + 1].Clear
      else
        memDeptParam.Fields[i + 1].Value := memDeptParam.Fields[i].Value;
      i := i + 2;
    end;
    if memDeptParam.State in [dsEdit] then
      memDeptParam.Post;
    memDeptParam.Next;
    frmMain.BarPrgStepIt;
  end;
  Dept_Param_Change := false;
  memDeptParam.GotoBookmark(bookmark);
  memDeptParam.EnableControls;
  if ok then
    dmmain.CommitTransaction
  else
    dmMain.RollbackTransaction;
  Screen.Cursor := crDefault;
end;

procedure TfrmWageParamData.memDeptParamAfterEdit(DataSet: TDataSet);
begin
  inherited;
  Dept_Param_Change := true;
end;

procedure TfrmWageParamData.memTitleParamAfterEdit(DataSet: TDataSet);
begin
  inherited;
  Title_Param_Change := true;
end;

procedure TfrmWageParamData.acCapnhatThamsoCDUpdate(Sender: TObject);
begin
  inherited;
  acCapnhatThamsoCD.Enabled := Title_Param_Change;
end;

procedure TfrmWageParamData.acCapnhatThamsoCDExecute(Sender: TObject);
var
  ok: boolean;
  bookmark: TBookmark;
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memTitleParam.RecordCount = 0 then exit;
  dmMain.RollbackTransaction;
  ok := true;
  if (memTitleParam.State in [dsEdit]) then
    memTitleParam.Post;
  bookmark := memTitleParam.GetBookmark;
  memTitleParam.DisableControls;
  frmMain.SetStatusBarPrgDisplay(0, memTitleParam.RecordCount);
  memTitleParam.First;

  while not memTitleParam.Eof do
  begin
    i := 3;
    while i <= memTitleParam.FieldCount - 1 do
    begin
      if memTitleParam.Fields[i + 1].IsNull then
      begin
        if (not memTitleParam.Fields[i].IsNull) then //insert
        begin
          qryExecute.SQL.Text :=
            ' insert into hr_title_Param(period_id,title_no,Param_no,Param_value) ' +
            ' values(:period_id,:title_no,:Param_no,:Param_value)';
          qryExecute.ParamByName('period_id').Value :=
            PERIOD_ID;
          qryExecute.ParamByName('title_NO').Value :=
            memTitleParamtitle_NO.Value;
          qryExecute.ParamByName('Param_NO').Value :=
            memTitleParam.Fields[i].FieldName;
          qryExecute.ParamByName('Param_VALUE').Value :=
            memTitleParam.Fields[i].Value;
          dmMain.ExecuteSQL(qryExecute);
        end
      end
      else
        if memTitleParam.Fields[i].IsNull then //delete
      begin
        qryExecute.SQL.Text :=
          ' delete from hr_title_Param where ' +
          ' period_id=:period_id and title_no=:title_no and ' +
          ' Param_no=:Param_no';
        qryExecute.ParamByName('period_id').Value :=
          PERIOD_ID;
        qryExecute.ParamByName('TITLE_NO').Value := memTitleParamTITLE_NO.Value;
        qryExecute.ParamByName('Param_NO').Value :=
          memTitleParam.Fields[i].FieldName;
        dmMain.ExecuteSQL(qryExecute);
      end
      else
        if memTitleParam.Fields[i].Value <> memTitleParam.Fields[i + 1].Value
          then
        //update
      begin
        qryExecute.SQL.Text :=
          ' update hr_title_Param set ' +
          ' Param_value=:Param_value ' +
          ' where period_id=:period_id and title_no=:title_no and ' +
          ' Param_no=:Param_no';
        qryExecute.ParamByName('period_id').Value :=
          PERIOD_ID;
        qryExecute.ParamByName('TITLE_NO').Value := memTitleParamTITLE_NO.Value;
        qryExecute.ParamByName('Param_NO').Value :=
          memTitleParam.Fields[i].FieldName;
        qryExecute.ParamByName('Param_VALUE').Value :=
          memTitleParam.Fields[i].Value;
        dmMain.ExecuteSQL(qryExecute);
      end;
      if not (memTitleParam.State in [dsEdit]) then
        memTitleParam.Edit;
      if memTitleParam.Fields[i].IsNull then
        memTitleParam.Fields[i + 1].Clear
      else
        memTitleParam.Fields[i + 1].Value := memTitleParam.Fields[i].Value;
      i := i + 2;
    end;
    if memTitleParam.State in [dsEdit] then
      memTitleParam.Post;
    memTitleParam.Next;
    frmMain.BarPrgStepIt;
  end;
  title_Param_Change := false;
  memTitleParam.GotoBookmark(bookmark);
  memTitleParam.EnableControls;
  if ok then
    dmmain.CommitTransaction
  else
    dmMain.RollbackTransaction;
  Screen.Cursor := crDefault;
end;

procedure TfrmWageParamData.acXemThamsoCDExecute(Sender: TObject);
var
  TITLE_NO: WideString;
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memTitleParam.Active then memTitleParam.Close;
  memTitleParam.DisableControls;

  if qryTitleParam.Active then
    qryTitleParam.Close;
  qryTitleParam.ParamByName('PERIOD_ID').Value := PERIOD_ID;
  qryTitleParam.Open;
  memTitleParam.Open;
  if qryTitleParam.IsEmpty = false then
  begin
    qryTitleParam.First;
    i := 1;
    TITLE_NO := qryTitleParamTITLE_NO.Value;

    memTitleParam.Append;
    memTitleParamTITLE_NO.Value := qryTitleParamTITLE_NO.Value;
    memTitleParamTITLE_NAME.Value := qryTitleParamTITLE_NAME.Value;

    repeat
      if (TITLE_NO <> qryTitleParamTITLE_NO.Value) or
        (qryTitleParam.Eof) then
      begin
        if (memTitleParam.State in [dsEdit, dsInsert]) then
          memTitleParam.Post;
        if qryTitleParam.Eof then
          Break
        else
          TITLE_NO := qryTitleParamTITLE_NO.Value;

        memTitleParam.Append;
        memTitleParamTITLE_NO.Value := qryTitleParamTITLE_NO.Value;
        memTitleParamTITLE_NAME.Value := qryTitleParamTITLE_NAME.Value;
      end;
      if not qryTitleParamParam_NO.IsNull then
      begin
        if Assigned(memTitleParam.FindField(qryTitleParamParam_NO.AsString))
          then
        begin
          memTitleParam.FieldByName(qryTitleParamParam_NO.AsString).Value :=
            qryTitleParamParam_VALUE.Value;
          memTitleParam.FieldByName(qryTitleParamParam_NO.AsString +
            '_OLD').Value :=
            qryTitleParamParam_VALUE.Value;
        end;
      end;
      qryTitleParam.Next;
      if sysConfig.Language = 2 then
        frmMain.SetStatusBarMsg(MessageEng[3] + IntToStr(i))
      else
        frmMain.SetStatusBarMsg(Utf8Decode(MessageVn[3]) + IntToStr(i));
      i := i + 1;

    until (TITLE_NO = '') and (not (memTitleParam.State in [dsInsert]));
  end;
  qryTitleParam.Close;
  memTitleParam.EnableControls;
  Title_Param_Change := false;
  Screen.Cursor := crDefault;
  frmMain.SetStatusBarMsg('');
end;

procedure TfrmWageParamData.memPositionParamAfterEdit(
  DataSet: TDataSet);
begin
  inherited;
  Position_Param_Change := true;
end;

procedure TfrmWageParamData.acXemThamsoVTExecute(Sender: TObject);
var
  POSITION_NO: WideString;
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memPositionParam.Active then memPositionParam.Close;
  memPositionParam.DisableControls;

  if qryPositionParam.Active then
    qryPositionParam.Close;
  qryPositionParam.ParamByName('PERIOD_ID').Value := PERIOD_ID;
  qryPositionParam.Open;
  memPositionParam.Open;
  if qryPositionParam.IsEmpty = false then
  begin
    qryPositionParam.First;
    i := 1;
    POSITION_NO := qryPositionParamPOSITION_NO.Value;

    memPositionParam.Append;
    memPositionParamPOSITION_NO.Value := qryPositionParamPOSITION_NO.Value;
    memPositionParamP_POSITION_NO.Value := qryPositionParamP_POSITION_NO.Value;
    memPositionParamPOSITION_NAME.Value := qryPositionParamPOSITION_NAME.Value;

    repeat
      if (POSITION_NO <> qryPositionParamPOSITION_NO.Value) or
        (qryPositionParam.Eof) then
      begin
        if (memPositionParam.State in [dsEdit, dsInsert]) then
          memPositionParam.Post;
        if qryPositionParam.Eof then
          Break
        else
          POSITION_NO := qryPositionParamPOSITION_NO.Value;

        memPositionParam.Append;
        memPositionParamPOSITION_NO.Value := qryPositionParamPOSITION_NO.Value;
        if qryPositionParamP_POSITION_NO.IsNull = false then
          memPositionParamP_POSITION_NO.Value :=
            qryPositionParamP_POSITION_NO.Value
        else
          memPositionParamP_POSITION_NO.Clear;
        memPositionParamPOSITION_NAME.Value :=
          qryPositionParamPOSITION_NAME.Value;
      end;
      if not qryPositionParamParam_NO.IsNull then
      begin
        if
          Assigned(memPositionParam.FindField(qryPositionParamParam_NO.AsString))
            then
        begin
          memPositionParam.FieldByName(qryPositionParamParam_NO.AsString).Value
            :=
            qryPositionParamParam_VALUE.Value;
          memPositionParam.FieldByName(qryPositionParamParam_NO.AsString +
            '_OLD').Value :=
            qryPositionParamParam_VALUE.Value;
        end;
      end;
      qryPositionParam.Next;
      if sysConfig.Language = 2 then
        frmMain.SetStatusBarMsg(MessageEng[4] + IntToStr(i))
      else
        frmMain.SetStatusBarMsg(Utf8Decode(MessageVn[4]) + IntToStr(i));
      i := i + 1;

    until (POSITION_NO = '') and (not (memPositionParam.State in [dsInsert]));
  end;
  qryPositionParam.Close;
  memPositionParam.EnableControls;
  Position_Param_Change := false;
  Screen.Cursor := crDefault;
  frmmain.SetStatusBarMsg('');
end;

procedure TfrmWageParamData.acCapnhatThamsoVTUpdate(Sender: TObject);
begin
  inherited;
  acCapnhatThamsoVT.Enabled := Position_Param_Change;
end;

procedure TfrmWageParamData.acCapnhatThamsoVTExecute(Sender: TObject);
var
  ok: boolean;
  bookmark: TBookmark;
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memPositionParam.RecordCount = 0 then exit;
  dmMain.RollbackTransaction;
  ok := true;
  if (memPositionParam.State in [dsEdit]) then
    memPositionParam.Post;
  bookmark := memPositionParam.GetBookmark;
  memPositionParam.DisableControls;
  frmMain.SetStatusBarPrgDisplay(0, memPositionParam.RecordCount);
  memPositionParam.First;

  while not memPositionParam.Eof do
  begin
    i := 4;
    while i <= memPositionParam.FieldCount - 1 do
    begin
      if memPositionParam.Fields[i + 1].IsNull then
      begin
        if (not memPositionParam.Fields[i].IsNull) then //insert
        begin
          qryExecute.SQL.Text :=
            ' insert into hr_POSITION_Param(period_id,POSITION_no,Param_no,Param_value) ' +
            ' values(:period_id,:POSITION_no,:Param_no,:Param_value)';
          qryExecute.ParamByName('period_id').Value :=
            PERIOD_ID;
          qryExecute.ParamByName('POSITION_NO').Value :=
            memPositionParamPOSITION_NO.Value;
          qryExecute.ParamByName('Param_NO').Value :=
            memPositionParam.Fields[i].FieldName;
          qryExecute.ParamByName('Param_VALUE').Value :=
            memPositionParam.Fields[i].Value;
          dmMain.ExecuteSQL(qryExecute);
        end
      end
      else
        if memPositionParam.Fields[i].IsNull then //delete
      begin
        qryExecute.SQL.Text :=
          ' delete from hr_POSITION_Param where ' +
          ' period_id=:period_id and POSITION_no=:POSITION_no and ' +
          ' Param_no=:Param_no';
        qryExecute.ParamByName('period_id').Value :=
          PERIOD_ID;
        qryExecute.ParamByName('POSITION_NO').Value :=
          memPositionParamPOSITION_NO.Value;
        qryExecute.ParamByName('Param_NO').Value :=
          memPositionParam.Fields[i].FieldName;
        dmMain.ExecuteSQL(qryExecute);
      end
      else
        if memPositionParam.Fields[i].Value <> memPositionParam.Fields[i +
        1].Value then
        //update
      begin
        qryExecute.SQL.Text :=
          ' update hr_POSITION_Param set ' +
          ' Param_value=:Param_value ' +
          ' where period_id=:period_id and POSITION_no=:POSITION_no and ' +
          ' Param_no=:Param_no';
        qryExecute.ParamByName('period_id').Value :=
          PERIOD_ID;
        qryExecute.ParamByName('POSITION_NO').Value :=
          memPositionParamPOSITION_NO.Value;
        qryExecute.ParamByName('Param_NO').Value :=
          memPositionParam.Fields[i].FieldName;
        qryExecute.ParamByName('Param_VALUE').Value :=
          memPositionParam.Fields[i].Value;
        dmMain.ExecuteSQL(qryExecute);
      end;
      if not (memPositionParam.State in [dsEdit]) then
        memPositionParam.Edit;
      if memPositionParam.Fields[i].IsNull then
        memPositionParam.Fields[i + 1].Clear
      else
        memPositionParam.Fields[i + 1].Value :=
          memPositionParam.Fields[i].Value;
      i := i + 2;
    end;
    if memPositionParam.State in [dsEdit] then
      memPositionParam.Post;
    memPositionParam.Next;
    frmMain.BarPrgStepIt;
  end;
  POSITION_Param_Change := false;
  memPositionParam.GotoBookmark(bookmark);
  memPositionParam.EnableControls;
  if ok then
    dmmain.CommitTransaction
  else
    dmMain.RollbackTransaction;
  Screen.Cursor := crDefault;
end;

procedure TfrmWageParamData.dxSelectFromDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmWageParamData.dxSelectFromDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryDeptListDEPT_NAME.Value;
    SELECT_FROM_DEPT := frmPopupMain.qryDeptListDEPT_NO.Value;
  end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmWageParamData.dxSelectFromDeptChange(Sender: TObject);
begin
  inherited;
  if (Length(dxSelectFromDept.Text) = 0) then SELECT_FROM_DEPT := '';
end;

procedure TfrmWageParamData.chkMoreOptionChange(Sender: TObject);
begin
  inherited;
  groupMoreOption.Visible := chkMoreOption.Checked;
end;

procedure TfrmWageParamData.acBackExecute(Sender: TObject);
begin
  inherited;

  if dxInMonth.Text = '1' then
  begin
    dxInMonth.Text := '12';
    dxInYear.IntValue := dxInYear.IntValue - 1;
  end
  else
    dxInMonth.Text := IntToStr(StrToInt(dxInMonth.Text) - 1);
  acViewReport.Execute;
end;

procedure TfrmWageParamData.acNextExecute(Sender: TObject);
begin
  inherited;
  if dxInMonth.Text = '12' then
  begin
    dxInMonth.Text := '1';
    dxInYear.IntValue := dxInYear.IntValue + 1;
  end
  else
    dxInMonth.Text := IntToStr(StrToInt(dxInMonth.Text) + 1);
  acViewReport.Execute;
end;

procedure TfrmWageParamData.acViewReportExecute(Sender: TObject);
var
  EMPLOYEE_NO: WideString;
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memReport.Active then memReport.Close;
  memReport.DisableControls;

  if qryReport.Active then
    qryReport.Close;

  qryReport.ParamByName('FROM_DEPT').Value := SELECT_FROM_DEPT;
  qryReport.ParamByName('STATE').Value := imEmpOption.Text;
  qryReport.ParamByName('AT_MONTH').Value := dxInMonth.Text;
  qryReport.ParamByName('AT_YEAR').Value := dxInYear.IntValue;
  qryReport.ParamByName('AT_PERIOD').Value := dxInPeriod.IntValue;
  qryReport.Open;
  memReport.Open;
  if qryReport.IsEmpty = false then
  begin
    qryReport.First;
    i := 1;
    EMPLOYEE_NO := qryReportEMPLOYEE_NO.Value;

    memReport.Append;
    memReportEMPLOYEE_NO.Value := qryReportEMPLOYEE_NO.Value;
    memReportFULL_NAME.Value := qryReportFULL_NAME.Value;
    memReportDEPT_NAME.Value := qryReportDEPT_NAME.Value;
    memReportTITLE_NAME.Value := qryReportTITLE_NAME.Value;

    repeat
      if (EMPLOYEE_NO <> qryReportEMPLOYEE_NO.Value) or
        (qryReport.Eof) then
      begin
        if (memReport.State in [dsEdit, dsInsert]) then
          memReport.Post;
        if qryReport.Eof then
          Break
        else
          EMPLOYEE_NO := qryReportEMPLOYEE_NO.Value;

        memReport.Append;
        memReportEMPLOYEE_NO.Value := qryReportEMPLOYEE_NO.Value;
        memReportFULL_NAME.Value := qryReportFULL_NAME.Value;
        memReportDEPT_NAME.Value := qryReportDEPT_NAME.Value;
        memReportTITLE_NAME.Value := qryReportTITLE_NAME.Value;
      end;
      if not qryReportPARAM_NO.IsNull then
      begin
        if Assigned(memReport.FindField(qryReportPARAM_NO.AsString)) then
        begin
          memReport.FieldByName(qryReportPARAM_NO.AsString).Value :=
            qryReportPARAM_VALUE.Value;
        end;
      end;
      qryReport.Next;
      if sysConfig.Language = 2 then
        frmMain.SetStatusBarMsg(MessageEng[5] + IntToStr(i))
      else
        frmMain.SetStatusBarMsg(Utf8Decode(MessageVn[5]) + IntToStr(i));
      i := i + 1;

    until (EMPLOYEE_NO = '') and (not (memReport.State in [dsInsert]));
  end;
  qryReport.Close;
  memReport.EnableControls;
  Screen.Cursor := crDefault;
  frmMain.SetStatusBarMsg('');
end;

procedure TfrmWageParamData.gridReportCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    if AColumn.Index > 3 then
    begin
      case AColumn.Tag of
        1:
          begin
            AColor := chkBienChung.Color;

          end;
        2:
          begin
            AColor := chkNhanvien.Color;

          end;
        3:
          begin
            AColor := chkDonvi.Color;

          end;
        4:
          begin
            AColor := chkChucdanh.Color;

          end;
        5:
          begin
            AColor := chkChucvu.Color;

          end;
      end;
    end;
  except
  end
end;

procedure TfrmWageParamData.acRefreshReportGridExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  gridReport.BeginUpdate;
  for i := 3 to gridReport.ColumnCount - 1 do
  begin
    case gridReport.Columns[i].Tag of
      1: gridReport.Columns[i].Visible := chkBienChung.Checked;
      2: gridReport.Columns[i].Visible := chkNhanvien.Checked;
      3: gridReport.Columns[i].Visible := chkDonvi.Checked;
      4: gridReport.Columns[i].Visible := chkChucdanh.Checked;
      5: gridReport.Columns[i].Visible := chkChucvu.Checked;
    end;
  end;
  gridReport.EndUpdate;
end;

procedure TfrmWageParamData.dxAtMonthChange(Sender: TObject);
begin
  inherited;
  PERIOD_ID := 10 * (dxAtYear.IntValue * 12 + StrToInt(dxAtMonth.Text) - 1) +
    dxAtPeriod.IntValue;
end;

procedure TfrmWageParamData.dxAtYearChange(Sender: TObject);
begin
  inherited;
  PERIOD_ID := 10 * (dxAtYear.IntValue * 12 + StrToInt(dxAtMonth.Text) - 1) +
    dxAtPeriod.IntValue;
end;

procedure TfrmWageParamData.dxAtPeriodChange(Sender: TObject);
begin
  inherited;
  PERIOD_ID := 10 * (dxAtYear.IntValue * 12 + StrToInt(dxAtMonth.Text) - 1) +
    dxAtPeriod.IntValue;
end;

procedure TfrmWageParamData.acGetDataExecute(Sender: TObject);
begin
  inherited;

  if qryWageParam.Active then
    qryWageParam.Close;
  qryWageParam.ParamByName('PERIOD_ID').Value := PERIOD_ID;
  qryWageParam.Open;

  acXemThamsoNV.Execute;
  acXemThamsoPB.Execute;
  acXemThamsoCD.Execute;
  acXemThamsoVT.Execute;
  F_Period_Change := false;
end;

procedure TfrmWageParamData.acGetDataUpdate(Sender: TObject);
begin
  inherited;
  acGetData.Enabled := F_Period_Change;
end;

procedure TfrmWageParamData.qryWageParamNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryWageParamPERIOD_ID.Value := PERIOD_ID;
end;

procedure TfrmWageParamData.pageMainChanging(Sender: TObject;
  NewPage: TElTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if newPage = tabSummaryReport then
    if memReport.Active = false then
      acViewReport.Execute;
end;

procedure TfrmWageParamData.acSaochepDulieuExecute(Sender: TObject);
begin
  inherited;
  with TfrmWageDataGenerate.Create(self, StrToInt(dxAtMonth.Text),
    dxAtYear.IntValue, dxAtPeriod.IntValue, 'PARAM') do
  try
    if ShowModal = mrOk then
    begin
      qryWageParam.Refresh;
      acXemThamsoNV.Execute;
      acXemThamsoPB.Execute;
      acXemThamsoCD.Execute;
      acXemThamsoVT.Execute;
    end;
  finally
    Free;
  end;
end;

end.

