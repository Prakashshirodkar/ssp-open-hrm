unit WageConstantForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, ElPgCtl, ImgList, dxExEdtr,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ExtCtrls,
  ElPanel, ElSplit, DB, IBODataset, dxGrClEx, ActnList, ElBtnCtl, ElPopBtn,
  dxEditor, dxEdLib, dxmdaset, dxDBTL, dxDBELib;

const
  MessageVn: array[1..5] of WideString = ('Hằng số nhân viên: ',
    'Hằng số phòng ban: ', 'Hằng số chức danh: ',
    'Hằng số vị trí : ', 'Dữ liệu t ổng hợp: ');
  MessageEng: array[1..5] of WideString = ('Personal data: ',
    'Data for departments: ',
    'Data for duties: ', 'Data for working position: ', 'Report data: ');
type
  TfrmWageConstantData = class(TfrmEditBase)
    pageMain: TElPageControl;
    dxlcMainItem2: TdxLayoutItem;
    ImageList1: TImageList;
    tabWageConst: TElTabSheet;
    tabSummaryReport: TElTabSheet;
    gridChangeLog: TdxDBGrid;
    gridChangeLogCHANGE_NO: TdxDBGridColumn;
    gridChangeLogCHANGE_NAME: TdxDBGridColumn;
    gridChangeLogCHANGE_MONTH: TdxDBGridSpinColumn;
    gridChangeLogCHANGE_YEAR: TdxDBGridSpinColumn;
    gridChangeLogCHANGE_PERIOD: TdxDBGridSpinColumn;
    ElSplitter1: TElSplitter;
    pageRight: TElPageControl;
    tabApdungChung: TElTabSheet;
    tabNhanvien: TElTabSheet;
    tabDonvi: TElTabSheet;
    tabChucdanh: TElTabSheet;
    tabVitri: TElTabSheet;
    qryConstChange: TIBOQuery;
    qryConstChangeCHANGE_NO: TWideStringField;
    qryConstChangeCHANGE_NAME: TWideStringField;
    qryConstChangeCHANGE_MONTH: TIntegerField;
    qryConstChangeCHANGE_YEAR: TIntegerField;
    qryConstChangeCHANGE_PERIOD: TSmallintField;
    dsConstChange: TDataSource;
    gridWageConst: TdxDBGrid;
    qryWageConst: TIBOQuery;
    dsWageConst: TDataSource;
    qryWageConstCHANGE_NO: TWideStringField;
    qryWageConstCONST_NO: TWideStringField;
    qryWageConstCONST_VALUE: TIBOFloatField;
    qryWageConstELEMENT_NAME: TWideStringField;
    gridWageConstCONST_NO: TdxDBGridColumn;
    gridWageConstCONST_VALUE: TdxDBGridCalcColumn;
    gridWageConstELEMENT_NAME: TdxDBGridPopupColumn;
    ActionList1: TActionList;
    acPhatsinh: TAction;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxSelectDept: TdxPopupEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    gridPersonalConst: TdxDBGrid;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dsPersonalConst: TDataSource;
    gridPersonalConstEMPLOYEE_NO: TdxDBGridColumn;
    gridPersonalConstFULL_NAME: TdxDBGridColumn;
    gridPersonalConstDEPT_NAME: TdxDBGridColumn;
    gridPersonalConstTITLE_NAME: TdxDBGridColumn;
    acXemHangsoNV: TAction;
    qryGetWageParamList: TIBOQuery;
    qryGetWageParamListELEMENT_NO: TWideStringField;
    qryGetWageParamListELEMENT_NAME: TWideStringField;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    acCapnhatHangsoNV: TAction;
    qryPersonalConst: TIBOQuery;
    qryExecute: TIBOQuery;
    dxLayoutControl1Item5: TdxLayoutItem;
    imOption: TdxImageEdit;
    dxLayoutControl1Group2: TdxLayoutGroup;
    qryPersonalConstEMPLOYEE_NO: TWideStringField;
    qryPersonalConstFULL_NAME: TWideStringField;
    qryPersonalConstDEPT_NAME: TWideStringField;
    qryPersonalConstTITLE_NAME: TWideStringField;
    qryPersonalConstCONST_NO: TWideStringField;
    qryPersonalConstCONST_VALUE: TIBOFloatField;
    dxLayoutControl2: TdxLayoutControl;
    ElPopupButton4: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    qryDeptConst: TIBOQuery;
    memDeptConst: TdxMemData;
    dsDeptConst: TDataSource;
    memDeptConstDEPT_NO: TWideStringField;
    memDeptConstP_DEPT_NO: TWideStringField;
    memDeptConstDEPT_NAME: TWideStringField;
    qryDeptConstDEPT_NO: TWideStringField;
    qryDeptConstP_DEPT_NO: TWideStringField;
    qryDeptConstDEPT_NAME: TWideStringField;
    qryDeptConstCONST_NO: TWideStringField;
    qryDeptConstCONST_VALUE: TIBOFloatField;
    treeDeptConst: TdxDBTreeList;
    dxLayoutControl2Item1: TdxLayoutItem;
    treeDeptConstDEPT_NO: TdxDBTreeListColumn;
    acXemHangsoPB: TAction;
    acCapnhatHangsoPB: TAction;
    dxLayoutControl3: TdxLayoutControl;
    gridTitleConst: TdxDBGrid;
    ElPopupButton6: TElPopupButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    qryTitleConst: TIBOQuery;
    memTitleConst: TdxMemData;
    dsTitleConst: TDataSource;
    memTitleConstTITLE_NO: TWideStringField;
    memTitleConstTITLE_NAME: TWideStringField;
    gridTitleConstTITLE_NO: TdxDBGridColumn;
    gridTitleConstTITLE_NAME: TdxDBGridColumn;
    acCapnhatHangsoCD: TAction;
    acXemHangsoCD: TAction;
    qryTitleConstTITLE_NO: TWideStringField;
    qryTitleConstTITLE_NAME: TWideStringField;
    qryTitleConstCONST_NO: TWideStringField;
    qryTitleConstCONST_VALUE: TIBOFloatField;
    dxLayoutControl4: TdxLayoutControl;
    ElPopupButton8: TElPopupButton;
    treePositionConst: TdxDBTreeList;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dsPositionConst: TDataSource;
    qryPositionConst: TIBOQuery;
    memPositionConst: TdxMemData;
    qryPositionConstPOSITION_NO: TWideStringField;
    qryPositionConstP_POSITION_NO: TWideStringField;
    qryPositionConstPOSITION_NAME: TWideStringField;
    qryPositionConstCONST_NO: TWideStringField;
    qryPositionConstCONST_VALUE: TIBOFloatField;
    memPositionConstPOSITION_NO: TWideStringField;
    memPositionConstP_POSITION_NO: TWideStringField;
    memPositionConstPOSITION_NAME: TWideStringField;
    treePositionConstPOSITION_NAME: TdxDBTreeListColumn;
    acXemHangsoVT: TAction;
    acCapnhatHangsoVT: TAction;
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
    chkHangChung: TdxCheckEdit;
    dxLayoutControl5Item9: TdxLayoutItem;
    chkChucvu: TdxCheckEdit;
    dxLayoutControl5Item10: TdxLayoutItem;
    chkChucdanh: TdxCheckEdit;
    dxLayoutControl5Item11: TdxLayoutItem;
    chkDonvi: TdxCheckEdit;
    dxLayoutControl5Item12: TdxLayoutItem;
    chkNhanvien: TdxCheckEdit;
    dxLayoutControl5Item13: TdxLayoutItem;
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
    treeDeptConstDEPT_NAME: TdxDBTreeListColumn;
    qryGetWageParamListELEMENT_TYPE: TWideStringField;
    acRefreshReportGrid: TAction;
    qryGenWageParam: TIBOQuery;
    memPersonalConst: TdxMemData;
    memPersonalConstEMPLOYEE_NO: TWideStringField;
    memPersonalConstFULL_NAME: TWideStringField;
    memPersonalConstDEPT_NAME: TWideStringField;
    memPersonalConstTITLE_NAME: TWideStringField;
    dxViewChild: TdxCheckEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    acSaochepDulieu: TAction;
    procedure gridWageConstELEMENT_NAMEInitPopup(Sender: TObject);
    procedure gridWageConstELEMENT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acPhatsinhExecute(Sender: TObject);
    procedure acPhatsinhUpdate(Sender: TObject);

    procedure dxSelectDeptInitPopup(Sender: TObject);
    procedure dxSelectDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure acXemHangsoNVUpdate(Sender: TObject);
    procedure acXemHangsoNVExecute(Sender: TObject);
    procedure dxSelectDeptChange(Sender: TObject);
    procedure acCapnhatHangsoNVExecute(Sender: TObject);
    procedure memPersonalConstAfterEdit(DataSet: TDataSet);
    procedure acCapnhatHangsoNVUpdate(Sender: TObject);
    procedure pageRightChanging(Sender: TObject; NewPage: TElTabSheet;
      var AllowChange: Boolean);
    procedure acXemHangsoPBUpdate(Sender: TObject);
    procedure acXemHangsoPBExecute(Sender: TObject);
    procedure acCapnhatHangsoPBUpdate(Sender: TObject);
    procedure acCapnhatHangsoPBExecute(Sender: TObject);
    procedure dxSelectParentDeptInitPopup(Sender: TObject);
    procedure dxSelectParentDeptCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure memDeptConstAfterEdit(DataSet: TDataSet);
    procedure memTitleConstAfterEdit(DataSet: TDataSet);
    procedure acCapnhatHangsoCDUpdate(Sender: TObject);
    procedure acCapnhatHangsoCDExecute(Sender: TObject);
    procedure acXemHangsoCDUpdate(Sender: TObject);
    procedure acXemHangsoCDExecute(Sender: TObject);
    procedure memPositionConstAfterEdit(DataSet: TDataSet);
    procedure acXemHangsoVTUpdate(Sender: TObject);
    procedure acXemHangsoVTExecute(Sender: TObject);
    procedure acCapnhatHangsoVTUpdate(Sender: TObject);
    procedure acCapnhatHangsoVTExecute(Sender: TObject);
    procedure OnControlEnter(Sender: TObject); override;
    procedure dxSelectFromDeptInitPopup(Sender: TObject);
    procedure dxSelectFromDeptCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxSelectFromDeptChange(Sender: TObject);
    procedure chkMoreOptionChange(Sender: TObject);
    procedure acBackExecute(Sender: TObject);
    procedure acNextExecute(Sender: TObject);
    procedure qryConstChangeBeforePost(DataSet: TDataSet);
    procedure qryConstChangeAfterPost(DataSet: TDataSet);
    procedure acViewReportExecute(Sender: TObject);
    procedure gridReportCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure acRefreshReportGridExecute(Sender: TObject);
    procedure gridChangeLogChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure pageMainChanging(Sender: TObject; NewPage: TElTabSheet;
      var AllowChange: Boolean);
    procedure acSaochepDulieuExecute(Sender: TObject);
    procedure acSaochepDulieuUpdate(Sender: TObject);
  private
    { Private declarations }
    SELECT_DEPT, SELECT_PARENT_DEPT, SELECT_FROM_DEPT: WideString;
    Personal_Const_Change,
      Dept_Const_Change,
      Title_Const_Change,
      Position_Const_Change: Boolean;

    procedure CreateDataview(mem: TdxMemData; grid: TdxDBGrid; ELEMENT_TYPE:
      WideString); overload;
    procedure CreateDataview(mem: TdxMemData; tree: TdxDBTreeList; ELEMENT_TYPE:
      WideString); overload;
    procedure CreateReportView;
  public
    { Public declarations }
  end;

var
  frmWageConstantData: TfrmWageConstantData;

implementation

uses MainDM, SSP_Library, PopupMainForm, DBActns, MainUnit, DateUtils,
  WageDataGenerateForm;

{$R *.dfm}

procedure TfrmWageConstantData.OnControlEnter(Sender: TObject);
begin
  if (sender is TComponent) then
  begin
    if (sender as TComponent).Name = gridChangeLog.Name then
      frameToolbar1.SetDataSource(dsConstChange)
    else
      if (sender as TComponent).Name = gridWageConst.Name then
      frameToolbar1.SetDataSource(dsWageConst)
    else
      frameToolbar1.SetDataSource(dsNull);
  end;
end;

procedure TfrmWageConstantData.gridWageConstELEMENT_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWageElement.ParamByName('ELEMENT_TYPE').Value := 'HANG_CHUNG';
  frmPopupMain.qryWageElement.Open;
  InitPopupControl('dxlcWageElement', frmPopupMain, sender, 2, gridWageConst);
end;

procedure TfrmWageConstantData.gridWageConstELEMENT_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryWageElement, qryWageConst,
    'ELEMENT_NO;ELEMENT_NAME', 'CONST_NO;ELEMENT_NAME',
    'ELEMENT_NAME', Text);
  frmPopupMain.qryWageElement.Close;
end;

procedure TfrmWageConstantData.FormCreate(Sender: TObject);
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
  CreateDataview(memPersonalConst, gridPersonalConst, 'HANG_CANHAN');
  CreateDataview(memDeptConst, treeDeptConst, 'HANG_DONVI');
  CreateDataview(memTitleConst, gridTitleConst, 'HANG_CHUCDANH');
  CreateDataview(memPositionConst, treePositionConst, 'HANG_CHUCVU');
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

  qryConstChange.Open;
  frameToolbar1.SetDataSource(dsConstChange);
  qryWageConst.Open;
  acXemHangsoNV.Execute;
  acXemHangsoPB.Execute;
  acXemHangsoCD.Execute;
  acXemHangsoVT.Execute;
  pageMain.ActivePage := tabWageConst;
  pageRight.ActivePage := tabApdungChung;
end;

procedure TfrmWageConstantData.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryWageConst.Close;
  qryConstChange.Close;
  qryGetWageParamList.Close;
  qryReport.Close;
end;

procedure TfrmWageConstantData.acPhatsinhExecute(Sender: TObject);
var
  ok: boolean;
begin
  inherited;
  ok := true;
  Screen.Cursor := crSQLWait;
  qryGenWageParam.ParamByName('PARAM_TYPE').Value := 'HANG_CHUNG';
  qryGenWageParam.ParamByName('CHANGE_NO').Value :=
    qryConstChangeCHANGE_NO.Value;
  try
    dmMain.ExecuteSQL(qryGenWageParam);
    qryWageConst.Refresh;
  except
    ok := false;
  end;
  if ok then ShowMessageUnicode(42);
  Screen.Cursor := crDefault;
end;

procedure TfrmWageConstantData.acPhatsinhUpdate(Sender: TObject);
begin
  inherited;
  acPhatsinh.Enabled := (qryConstChange.RecordCount > 0) and
    (frameToolbar1.acDSInsert.DataSource = dsWageConst);
end;

procedure TfrmWageConstantData.CreateDataview(mem: TdxMemData; grid: TdxDBGrid;
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
      f.DisplayFormat := sysConfig.FloatFormat;
      f.EditFormat := sysConfig.FloatFormat;

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

procedure TfrmWageConstantData.CreateDataView(mem: TdxMemData; tree:
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

procedure TfrmWageConstantData.CreateReportView;
var
  f: TFloatField;
  newCol: TdxDBTreeListColumn;
  old_sql_where: string;
begin

  if qryGetWageParamList.Active then
    qryGetWageParamList.Close;
  old_sql_where := qryGetWageParamList.SQLWhere.Text;
  qryGetWageParamList.SQLWhere.Text :=
    'where ELEMENT_TYPE starting with ''HANG_''';

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
      if qryGetWageParamListELEMENT_TYPE.Value = 'HANG_CHUNG' then
      begin
        chkHangChung.Color := qryGetWageParamListCOLOR.Value;
        newCol.Tag := 1;
        chkHangchung.Enabled := true;
      end
      else
        if qryGetWageParamListELEMENT_TYPE.Value = 'HANG_CANHAN' then
      begin
        chkNhanvien.Color := qryGetWageParamListCOLOR.Value;
        newCol.Tag := 2;
        chkNhanvien.Enabled := true;
      end
      else
        if qryGetWageParamListELEMENT_TYPE.Value = 'HANG_DONVI' then
      begin
        chkDonvi.Color := qryGetWageParamListCOLOR.Value;
        newCol.Tag := 3;
        chkDonvi.Enabled := true;
      end
      else
        if qryGetWageParamListELEMENT_TYPE.Value = 'HANG_CHUCDANH' then
      begin
        chkChucdanh.Color := qryGetWageParamListCOLOR.Value;
        newCol.Tag := 4;
        chkChucdanh.Enabled := true;
      end
      else
        if qryGetWageParamListELEMENT_TYPE.Value = 'HANG_CHUCVU' then
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

procedure TfrmWageConstantData.dxSelectDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmWageConstantData.dxSelectDeptCloseUp(Sender: TObject;
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

procedure TfrmWageConstantData.acXemHangsoNVUpdate(Sender: TObject);
begin
  inherited;
  acXemHangsoNV.Enabled := (qryConstChange.RecordCount > 0);
end;

procedure TfrmWageConstantData.acXemHangsoNVExecute(Sender: TObject);
var
  EMPLOYEE_NO: WideString;
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memPersonalConst.Active then memPersonalConst.Close;
  memPersonalConst.DisableControls;

  if qryPersonalConst.Active then
    qryPersonalConst.Close;
  if (Length(SELECT_DEPT) > 0) then
    qryPersonalConst.ParamByName('SELECT_DEPT').Value := SELECT_DEPT
  else
    qryPersonalConst.ParamByName('SELECT_DEPT').Clear;
  qryPersonalConst.ParamByName('IS_DISMISSED').Value := imOption.Text;
  if dxViewChild.Checked then
    qryPersonalConst.ParamByName('VIEW_CHILD').Value := 1
  else
    qryPersonalConst.ParamByName('VIEW_CHILD').Value := 0;
  qryPersonalConst.Open;
  if memPersonalConst.Active then
    memPersonalConst.Close;
  memPersonalConst.Open;
  if qryPersonalConst.RecordCount > 0 then
  begin
    qryPersonalConst.First;
    i := 1;
    EMPLOYEE_NO := qryPersonalConstEMPLOYEE_NO.Value;

    memPersonalConst.Append;
    memPersonalConstEMPLOYEE_NO.Value := qryPersonalConstEMPLOYEE_NO.Value;
    memPersonalConstFULL_NAME.Value := qryPersonalConstFULL_NAME.Value;
    memPersonalConstDEPT_NAME.Value := qryPersonalConstDEPT_NAME.Value;
    memPersonalConstTITLE_NAME.Value := qryPersonalConstTITLE_NAME.Value;
    repeat
      if (EMPLOYEE_NO <> qryPersonalConstEMPLOYEE_NO.Value) or
        (qryPersonalConst.Eof) then
      begin
        if (memPersonalConst.State in [dsEdit, dsInsert]) then
          memPersonalConst.Post;
        if qryPersonalConst.Eof then
          Break
        else
          EMPLOYEE_NO := qryPersonalConstEMPLOYEE_NO.Value;

        memPersonalConst.Append;
        memPersonalConstEMPLOYEE_NO.Value := qryPersonalConstEMPLOYEE_NO.Value;
        memPersonalConstFULL_NAME.Value := qryPersonalConstFULL_NAME.Value;
        memPersonalConstDEPT_NAME.Value := qryPersonalConstDEPT_NAME.Value;
        memPersonalConstTITLE_NAME.Value := qryPersonalConstTITLE_NAME.Value;
      end;
      if not qryPersonalConstCONST_NO.IsNull then
      begin
        if
          Assigned(memPersonalConst.FindField(qryPersonalConstCONST_NO.AsString))
            then
        begin
          memPersonalConst.FieldByName(qryPersonalConstCONST_NO.AsString).Value
            :=
            qryPersonalConstCONST_VALUE.Value;
          memPersonalConst.FieldByName(qryPersonalConstCONST_NO.AsString +
            '_OLD').Value :=
            qryPersonalConstCONST_VALUE.Value;
        end;
      end;
      qryPersonalConst.Next;
      if sysConfig.Language = 2 then
        frmMain.SetStatusBarMsg(MessageEng[1] + IntToStr(i))
      else
        frmMain.SetStatusBarMsg(Utf8Decode(MessageVn[1]) + IntToStr(i));
      i := i + 1
    until (EMPLOYEE_NO = '') and (not (memPersonalConst.State in [dsInsert]));
  end;
  qryPersonalConst.Close;
  memPersonalConst.EnableControls;
  Personal_Const_Change := false;
  Screen.Cursor := crDefault;
  frmMain.SetStatusBarMsg('');
end;

procedure TfrmWageConstantData.dxSelectDeptChange(Sender: TObject);
begin
  inherited;
  if (Length(dxSelectDept.Text) = 0) then SELECT_DEPT := '';
end;

procedure TfrmWageConstantData.acCapnhatHangsoNVExecute(Sender: TObject);
var
  ok: boolean;
  bookmark: TBookmark;
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memPersonalConst.RecordCount = 0 then exit;
  dmMain.RollbackTransaction;
  ok := true;
  if (memPersonalConst.State in [dsEdit]) then
    memPersonalConst.Post;
  bookmark := memPersonalConst.GetBookmark;
  memPersonalConst.DisableControls;
  frmMain.SetStatusBarPrgDisplay(0, memPersonalConst.RecordCount);
  memPersonalConst.First;

  while not memPersonalConst.Eof do
  begin
    i := 5;
    while i <= memPersonalConst.FieldCount - 1 do
    begin
      if memPersonalConst.Fields[i + 1].IsNull then
      begin
        if (not memPersonalConst.Fields[i].IsNull) then //insert
        begin
          qryExecute.SQL.Text :=
            ' insert into hr_personal_const(change_no,employee_no,const_no,const_value) ' +
            ' values(:change_no,:employee_no,:const_no,:const_value)';
          qryExecute.ParamByName('CHANGE_NO').Value :=
            qryConstChangeCHANGE_NO.Value;
          qryExecute.ParamByName('EMPLOYEE_NO').Value :=
            memPersonalConstEMPLOYEE_NO.Value;
          qryExecute.ParamByName('CONST_NO').Value :=
            memPersonalConst.Fields[i].FieldName;
          qryExecute.ParamByName('CONST_VALUE').Value :=
            memPersonalConst.Fields[i].Value;
          dmMain.ExecuteSQL(qryExecute);
        end
      end
      else
        if memPersonalConst.Fields[i].IsNull then //delete
      begin
        qryExecute.SQL.Text :=
          ' delete from hr_personal_const where ' +
          ' change_no=:change_no and employee_no=:employee_no and ' +
          ' const_no=:const_no';
        qryExecute.ParamByName('CHANGE_NO').Value :=
          qryConstChangeCHANGE_NO.Value;
        qryExecute.ParamByName('EMPLOYEE_NO').Value :=
          memPersonalConstEMPLOYEE_NO.Value;
        qryExecute.ParamByName('CONST_NO').Value :=
          memPersonalConst.Fields[i].FieldName;
        dmMain.ExecuteSQL(qryExecute);
      end
      else
        if memPersonalConst.Fields[i].Value <> memPersonalConst.Fields[i +
        1].Value then
        //update
      begin
        qryExecute.SQL.Text :=
          ' update hr_personal_const set ' +
          ' const_value=:const_value ' +
          ' where change_no=:change_no and employee_no=:employee_no and ' +
          ' const_no=:const_no';
        qryExecute.ParamByName('CHANGE_NO').Value :=
          qryConstChangeCHANGE_NO.Value;
        qryExecute.ParamByName('EMPLOYEE_NO').Value :=
          memPersonalConstEMPLOYEE_NO.Value;
        qryExecute.ParamByName('CONST_NO').Value :=
          memPersonalConst.Fields[i].FieldName;
        qryExecute.ParamByName('CONST_VALUE').Value :=
          memPersonalConst.Fields[i].Value;
        dmMain.ExecuteSQL(qryExecute);
      end;
      if not (memPersonalConst.State in [dsEdit]) then
        memPersonalConst.Edit;
      if memPersonalConst.Fields[i].IsNull then
        memPersonalConst.Fields[i + 1].Clear
      else
        memPersonalConst.Fields[i + 1].Value :=
          memPersonalConst.Fields[i].Value;
      i := i + 2;
    end;
    if memPersonalConst.State in [dsEdit] then
      memPersonalConst.Post;
    memPersonalConst.Next;
    frmMain.BarPrgStepIt;
  end;
  Personal_Const_Change := false;
  memPersonalConst.GotoBookmark(bookmark);
  memPersonalConst.EnableControls;
  if ok then
    dmmain.CommitTransaction
  else
    dmMain.RollbackTransaction;
  Screen.Cursor := crDefault;
end;

procedure TfrmWageConstantData.memPersonalConstAfterEdit(
  DataSet: TDataSet);
begin
  inherited;
  Personal_Const_Change := true;
end;

procedure TfrmWageConstantData.acCapnhatHangsoNVUpdate(Sender: TObject);
begin
  inherited;
  acCapnhatHangsoNV.Enabled := Personal_Const_Change;
end;

procedure TfrmWageConstantData.pageRightChanging(Sender: TObject;
  NewPage: TElTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if pageRight.ActivePage = tabNhanvien then
  begin
    if Personal_Const_Change then
      if ShowMessageUnicode(41) = mrYes then
        acCapnhatHangsoNV.Execute
      else
        acXemHangsoNV.Execute;
  end
  else
    if pageRight.ActivePage = tabDonvi then
  begin
    if Dept_Const_Change then
      if ShowMessageUnicode(41) = mrYes then
        acCapnhatHangsoPB.Execute
      else
        acXemHangsoPB.Execute;
  end
  else
    if pageRight.ActivePage = tabChucdanh then
  begin
    if Title_Const_Change then
      if ShowMessageUnicode(41) = mrYes then
        acCapnhatHangsoCD.Execute
      else
        acXemHangsoCD.Execute;
  end
  else
    if pageRight.ActivePage = tabVitri then
  begin
    if Position_Const_Change then
      if ShowMessageUnicode(41) = mrYes then
        acCapnhatHangsoVT.Execute
      else
        acXemHangsoVT.Execute;
  end;
end;

procedure TfrmWageConstantData.acXemHangsoPBUpdate(Sender: TObject);
begin
  inherited;
  acXemHangsoPB.Enabled := (qryConstChange.RecordCount > 0);
end;

procedure TfrmWageConstantData.acXemHangsoPBExecute(Sender: TObject);
var
  DEPT_NO: WideString;
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memDeptConst.Active then memDeptConst.Close;
  memDeptConst.DisableControls;

  if qryDeptConst.Active then
    qryDeptConst.Close;

  qryDeptConst.Open;
  memDeptConst.Open;
  if qryDeptConst.IsEmpTy = false then
  begin
    qryDeptConst.First;
    i := 1;
    DEPT_NO := qryDeptConstDEPT_NO.Value;

    memDeptConst.Append;
    memDeptConstDEPT_NO.Value := qryDeptConstDEPT_NO.Value;
    if qryDeptConstP_DEPT_NO.IsNUll then
      memDeptConstP_DEPT_NO.Clear
    else
      memDeptConstP_DEPT_NO.Value := qryDeptConstP_DEPT_NO.Value;
    memDeptConstDEPT_NAME.Value := qryDeptConstDEPT_NAME.Value;

    repeat
      if (DEPT_NO <> qryDeptConstDEPT_NO.Value) or
        (qryDeptConst.Eof) then
      begin
        if (memDeptConst.State in [dsEdit, dsInsert]) then
          memDeptConst.Post;
        if qryDeptConst.Eof then
          Break
        else
          DEPT_NO := qryDeptConstDEPT_NO.Value;

        memDeptConst.Append;
        memDeptConstDEPT_NO.Value := qryDeptConstDEPT_NO.Value;
        if qryDeptConstP_DEPT_NO.IsNUll then
          memDeptConstP_DEPT_NO.Clear
        else
          memDeptConstP_DEPT_NO.Value := qryDeptConstP_DEPT_NO.Value;
        memDeptConstDEPT_NAME.Value := qryDeptConstDEPT_NAME.Value;
      end;
      if not qryDeptConstCONST_NO.IsNull then
      begin
        if Assigned(memDeptConst.FindField(qryDeptConstCONST_NO.AsString)) then
        begin
          memDeptConst.FieldByName(qryDeptConstCONST_NO.AsString).Value :=
            qryDeptConstCONST_VALUE.Value;
          memDeptConst.FieldByName(qryDeptConstCONST_NO.AsString + '_OLD').Value
            :=
            qryDeptConstCONST_VALUE.Value;
        end;
      end;
      qryDeptConst.Next;
      if sysConfig.Language = 2 then
        frmMain.SetStatusBarMsg(MessageEng[2] + IntToStr(i))
      else
        frmMain.SetStatusBarMsg(Utf8Decode(MessageVn[2]) + IntToStr(i));
      i := i + 1
    until (DEPT_NO = '') and (not (memDeptConst.State in [dsInsert]));
  end;
  qryDeptConst.Close;
  memDeptConst.EnableControls;
  Dept_Const_Change := false;
  Screen.Cursor := crDefault;
  frmMain.SetStatusBarMsg('');
end;

procedure TfrmWageConstantData.acCapnhatHangsoPBUpdate(Sender: TObject);
begin
  inherited;
  acCapnhatHangsoPB.Enabled := Dept_Const_Change;
end;

procedure TfrmWageConstantData.acCapnhatHangsoPBExecute(Sender: TObject);
var
  ok: boolean;
  bookmark: TBookmark;
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memDeptConst.RecordCount = 0 then exit;
  dmMain.RollbackTransaction;
  ok := true;
  if (memDeptConst.State in [dsEdit]) then
    memDeptConst.Post;
  bookmark := memDeptConst.GetBookmark;
  memDeptConst.DisableControls;
  frmMain.SetStatusBarPrgDisplay(0, memDeptConst.RecordCount);
  memDeptConst.First;

  while not memDeptConst.Eof do
  begin
    i := 4;
    while i <= memDeptConst.FieldCount - 1 do
    begin
      if memDeptConst.Fields[i + 1].IsNull then
      begin
        if (not memDeptConst.Fields[i].IsNull) then //insert
        begin
          qryExecute.SQL.Text :=
            ' insert into hr_dept_const(change_no,dept_no,const_no,const_value) ' +
            ' values(:change_no,:dept_no,:const_no,:const_value)';
          qryExecute.ParamByName('CHANGE_NO').Value :=
            qryConstChangeCHANGE_NO.Value;
          qryExecute.ParamByName('DEPT_NO').Value := memDeptConstDEPT_NO.Value;
          qryExecute.ParamByName('CONST_NO').Value :=
            memDeptConst.Fields[i].FieldName;
          qryExecute.ParamByName('CONST_VALUE').Value :=
            memDeptConst.Fields[i].Value;
          dmMain.ExecuteSQL(qryExecute);
        end
      end
      else
        if memDeptConst.Fields[i].IsNull then //delete
      begin
        qryExecute.SQL.Text :=
          ' delete from hr_dept_const where ' +
          ' change_no=:change_no and dept_no=:dept_no and ' +
          ' const_no=:const_no';
        qryExecute.ParamByName('CHANGE_NO').Value :=
          qryConstChangeCHANGE_NO.Value;
        qryExecute.ParamByName('DEPT_NO').Value := memDeptConstDEPT_NO.Value;
        qryExecute.ParamByName('CONST_NO').Value :=
          memDeptConst.Fields[i].FieldName;
        dmMain.ExecuteSQL(qryExecute);
      end
      else
        if memDeptConst.Fields[i].Value <> memDeptConst.Fields[i + 1].Value then
        //update
      begin
        qryExecute.SQL.Text :=
          ' update hr_dept_const set ' +
          ' const_value=:const_value ' +
          ' where change_no=:change_no and dept_no=:dept_no and ' +
          ' const_no=:const_no';
        qryExecute.ParamByName('CHANGE_NO').Value :=
          qryConstChangeCHANGE_NO.Value;
        qryExecute.ParamByName('DEPT_NO').Value := memDeptConstDEPT_NO.Value;
        qryExecute.ParamByName('CONST_NO').Value :=
          memDeptConst.Fields[i].FieldName;
        qryExecute.ParamByName('CONST_VALUE').Value :=
          memDeptConst.Fields[i].Value;
        dmMain.ExecuteSQL(qryExecute);
      end;
      if not (memDeptConst.State in [dsEdit]) then
        memDeptConst.Edit;
      if memDeptConst.Fields[i].IsNull then
        memDeptConst.Fields[i + 1].Clear
      else
        memDeptConst.Fields[i + 1].Value := memDeptConst.Fields[i].Value;
      i := i + 2;
    end;
    if memDeptConst.State in [dsEdit] then
      memDeptConst.Post;
    memDeptConst.Next;
    frmMain.BarPrgStepIt;
  end;
  Dept_Const_Change := false;
  memDeptConst.GotoBookmark(bookmark);
  memDeptConst.EnableControls;
  if ok then
    dmmain.CommitTransaction
  else
    dmMain.RollbackTransaction;
  Screen.Cursor := crDefault;
end;

procedure TfrmWageConstantData.dxSelectParentDeptInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmWageConstantData.dxSelectParentDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryDeptListDEPT_NAME.Value;
    SELECT_PARENT_DEPT := frmPopupMain.qryDeptListDEPT_NO.Value;
  end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmWageConstantData.memDeptConstAfterEdit(DataSet: TDataSet);
begin
  inherited;
  Dept_Const_Change := true;
end;

procedure TfrmWageConstantData.memTitleConstAfterEdit(DataSet: TDataSet);
begin
  inherited;
  Title_Const_Change := true;
end;

procedure TfrmWageConstantData.acCapnhatHangsoCDUpdate(Sender: TObject);
begin
  inherited;
  acCapnhatHangsoCD.Enabled := Title_Const_Change;
end;

procedure TfrmWageConstantData.acCapnhatHangsoCDExecute(Sender: TObject);
var
  ok: boolean;
  bookmark: TBookmark;
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memTitleConst.RecordCount = 0 then exit;
  dmMain.RollbackTransaction;
  ok := true;
  if (memTitleConst.State in [dsEdit]) then
    memTitleConst.Post;
  bookmark := memTitleConst.GetBookmark;
  memTitleConst.DisableControls;
  frmMain.SetStatusBarPrgDisplay(0, memTitleConst.RecordCount);
  memTitleConst.First;

  while not memTitleConst.Eof do
  begin
    i := 3;
    while i <= memTitleConst.FieldCount - 1 do
    begin
      if memTitleConst.Fields[i + 1].IsNull then
      begin
        if (not memTitleConst.Fields[i].IsNull) then //insert
        begin
          qryExecute.SQL.Text :=
            ' insert into hr_title_const(change_no,title_no,const_no,const_value) ' +
            ' values(:change_no,:title_no,:const_no,:const_value)';
          qryExecute.ParamByName('CHANGE_NO').Value :=
            qryConstChangeCHANGE_NO.Value;
          qryExecute.ParamByName('title_NO').Value :=
            memTitleConsttitle_NO.Value;
          qryExecute.ParamByName('CONST_NO').Value :=
            memTitleConst.Fields[i].FieldName;
          qryExecute.ParamByName('CONST_VALUE').Value :=
            memTitleConst.Fields[i].Value;
          dmMain.ExecuteSQL(qryExecute);
        end
      end
      else
        if memTitleConst.Fields[i].IsNull then //delete
      begin
        qryExecute.SQL.Text :=
          ' delete from hr_title_const where ' +
          ' change_no=:change_no and title_no=:title_no and ' +
          ' const_no=:const_no';
        qryExecute.ParamByName('CHANGE_NO').Value :=
          qryConstChangeCHANGE_NO.Value;
        qryExecute.ParamByName('TITLE_NO').Value := memTitleConstTITLE_NO.Value;
        qryExecute.ParamByName('CONST_NO').Value :=
          memTitleConst.Fields[i].FieldName;
        dmMain.ExecuteSQL(qryExecute);
      end
      else
        if memTitleConst.Fields[i].Value <> memTitleConst.Fields[i + 1].Value
          then
        //update
      begin
        qryExecute.SQL.Text :=
          ' update hr_title_const set ' +
          ' const_value=:const_value ' +
          ' where change_no=:change_no and title_no=:title_no and ' +
          ' const_no=:const_no';
        qryExecute.ParamByName('CHANGE_NO').Value :=
          qryConstChangeCHANGE_NO.Value;
        qryExecute.ParamByName('TITLE_NO').Value := memTitleConstTITLE_NO.Value;
        qryExecute.ParamByName('CONST_NO').Value :=
          memTitleConst.Fields[i].FieldName;
        qryExecute.ParamByName('CONST_VALUE').Value :=
          memTitleConst.Fields[i].Value;
        dmMain.ExecuteSQL(qryExecute);
      end;
      if not (memTitleConst.State in [dsEdit]) then
        memTitleConst.Edit;
      if memTitleConst.Fields[i].IsNull then
        memTitleConst.Fields[i + 1].Clear
      else
        memTitleConst.Fields[i + 1].Value := memTitleConst.Fields[i].Value;
      i := i + 2;
    end;
    if memTitleConst.State in [dsEdit] then
      memTitleConst.Post;
    memTitleConst.Next;
    frmMain.BarPrgStepIt;
  end;
  title_Const_Change := false;
  memTitleConst.GotoBookmark(bookmark);
  memTitleConst.EnableControls;
  if ok then
    dmmain.CommitTransaction
  else
    dmMain.RollbackTransaction;
  Screen.Cursor := crDefault;
end;

procedure TfrmWageConstantData.acXemHangsoCDUpdate(Sender: TObject);
begin
  inherited;
  acXemHangsoCD.Enabled := (qryConstChange.RecordCount > 0);
end;

procedure TfrmWageConstantData.acXemHangsoCDExecute(Sender: TObject);
var
  TITLE_NO: WideString;
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memTitleConst.Active then memTitleConst.Close;
  memTitleConst.DisableControls;

  if qryTitleConst.Active then
    qryTitleConst.Close;

  qryTitleConst.Open;
  memTitleConst.Open;
  if qryTitleConst.IsEmpty = false then
  begin
    qryTitleConst.First;
    i := 1;
    TITLE_NO := qryTitleConstTITLE_NO.Value;

    memTitleConst.Append;
    memTitleConstTITLE_NO.Value := qryTitleConstTITLE_NO.Value;
    memTitleConstTITLE_NAME.Value := qryTitleConstTITLE_NAME.Value;

    repeat
      if (TITLE_NO <> qryTitleConstTITLE_NO.Value) or
        (qryTitleConst.Eof) then
      begin
        if (memTitleConst.State in [dsEdit, dsInsert]) then
          memTitleConst.Post;
        if qryTitleConst.Eof then
          Break
        else
          TITLE_NO := qryTitleConstTITLE_NO.Value;

        memTitleConst.Append;
        memTitleConstTITLE_NO.Value := qryTitleConstTITLE_NO.Value;
        memTitleConstTITLE_NAME.Value := qryTitleConstTITLE_NAME.Value;
      end;
      if not qryTitleConstCONST_NO.IsNull then
      begin
        if Assigned(memTitleConst.FindField(qryTitleConstCONST_NO.AsString))
          then
        begin
          memTitleConst.FieldByName(qryTitleConstCONST_NO.AsString).Value :=
            qryTitleConstCONST_VALUE.Value;
          memTitleConst.FieldByName(qryTitleConstCONST_NO.AsString +
            '_OLD').Value :=
            qryTitleConstCONST_VALUE.Value;
        end;
      end;
      qryTitleConst.Next;
      if sysConfig.Language = 2 then
        frmMain.SetStatusBarMsg(MessageEng[3] + IntToStr(i))
      else
        frmMain.SetStatusBarMsg(Utf8Decode(MessageVn[3]) + IntToStr(i));
      i := i + 1
    until (TITLE_NO = '') and (not (memTitleConst.State in [dsInsert]));
  end;
  qryTitleConst.Close;
  memTitleConst.EnableControls;
  Title_Const_Change := false;
  Screen.Cursor := crDefault;
  frmMain.SetStatusBarMsg('');
end;

procedure TfrmWageConstantData.memPositionConstAfterEdit(
  DataSet: TDataSet);
begin
  inherited;
  Position_Const_Change := true;
end;

procedure TfrmWageConstantData.acXemHangsoVTUpdate(Sender: TObject);
begin
  inherited;
  acXemHangsoVT.Enabled := (qryConstChange.RecordCount > 0);
end;

procedure TfrmWageConstantData.acXemHangsoVTExecute(Sender: TObject);
var
  POSITION_NO: WideString;
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memPositionConst.Active then memPositionConst.Close;
  memPositionConst.DisableControls;

  if qryPositionConst.Active then
    qryPositionConst.Close;

  qryPositionConst.Open;
  memPositionConst.Open;
  if qryPositionConst.RecordCount > 0 then
  begin
    qryPositionConst.First;
    i := 1;
    POSITION_NO := qryPositionConstPOSITION_NO.Value;

    memPositionConst.Append;
    memPositionConstPOSITION_NO.Value := qryPositionConstPOSITION_NO.Value;
    memPositionConstP_POSITION_NO.Value := qryPositionConstP_POSITION_NO.Value;
    memPositionConstPOSITION_NAME.Value := qryPositionConstPOSITION_NAME.Value;

    repeat
      if (POSITION_NO <> qryPositionConstPOSITION_NO.Value) or
        (qryPositionConst.Eof) then
      begin
        if (memPositionConst.State in [dsEdit, dsInsert]) then
          memPositionConst.Post;
        if qryPositionConst.Eof then
          Break
        else
          POSITION_NO := qryPositionConstPOSITION_NO.Value;

        memPositionConst.Append;
        memPositionConstPOSITION_NO.Value := qryPositionConstPOSITION_NO.Value;
        if qryPositionConstP_POSITION_NO.IsNull = false then
          memPositionConstP_POSITION_NO.Value :=
            qryPositionConstP_POSITION_NO.Value
        else
          memPositionConstP_POSITION_NO.Clear;
        memPositionConstPOSITION_NAME.Value :=
          qryPositionConstPOSITION_NAME.Value;
      end;
      if not qryPositionConstCONST_NO.IsNull then
      begin
        if
          Assigned(memPositionConst.FindField(qryPositionConstCONST_NO.AsString))
            then
        begin
          memPositionConst.FieldByName(qryPositionConstCONST_NO.AsString).Value
            :=
            qryPositionConstCONST_VALUE.Value;
          memPositionConst.FieldByName(qryPositionConstCONST_NO.AsString +
            '_OLD').Value :=
            qryPositionConstCONST_VALUE.Value;
        end;
      end;
      qryPositionConst.Next;
      if sysConfig.Language = 2 then
        frmMain.SetStatusBarMsg(MessageEng[4] + IntToStr(i))
      else
        frmMain.SetStatusBarMsg(Utf8Decode(MessageVn[4]) + IntToStr(i));
      i := i + 1
    until (POSITION_NO = '') and (not (memPositionConst.State in [dsInsert]));
  end;
  qryPositionConst.Close;
  memPositionConst.EnableControls;
  Position_Const_Change := false;
  Screen.Cursor := crDefault;
  frmMain.SetStatusBarMsg('');
end;

procedure TfrmWageConstantData.acCapnhatHangsoVTUpdate(Sender: TObject);
begin
  inherited;
  acCapnhatHangsoVT.Enabled := Position_Const_Change;
end;

procedure TfrmWageConstantData.acCapnhatHangsoVTExecute(Sender: TObject);
var
  ok: boolean;
  bookmark: TBookmark;
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memPositionConst.RecordCount = 0 then exit;
  dmMain.RollbackTransaction;
  ok := true;
  if (memPositionConst.State in [dsEdit]) then
    memPositionConst.Post;
  bookmark := memPositionConst.GetBookmark;
  memPositionConst.DisableControls;
  frmMain.SetStatusBarPrgDisplay(0, memPositionConst.RecordCount);
  memPositionConst.First;

  while not memPositionConst.Eof do
  begin
    i := 4;
    while i <= memPositionConst.FieldCount - 1 do
    begin
      if memPositionConst.Fields[i + 1].IsNull then
      begin
        if (not memPositionConst.Fields[i].IsNull) then //insert
        begin
          qryExecute.SQL.Text :=
            ' insert into hr_POSITION_const(change_no,POSITION_no,const_no,const_value) ' +
            ' values(:change_no,:POSITION_no,:const_no,:const_value)';
          qryExecute.ParamByName('CHANGE_NO').Value :=
            qryConstChangeCHANGE_NO.Value;
          qryExecute.ParamByName('POSITION_NO').Value :=
            memPositionConstPOSITION_NO.Value;
          qryExecute.ParamByName('CONST_NO').Value :=
            memPositionConst.Fields[i].FieldName;
          qryExecute.ParamByName('CONST_VALUE').Value :=
            memPositionConst.Fields[i].Value;
          dmMain.ExecuteSQL(qryExecute);
        end
      end
      else
        if memPositionConst.Fields[i].IsNull then //delete
      begin
        qryExecute.SQL.Text :=
          ' delete from hr_POSITION_const where ' +
          ' change_no=:change_no and POSITION_no=:POSITION_no and ' +
          ' const_no=:const_no';
        qryExecute.ParamByName('CHANGE_NO').Value :=
          qryConstChangeCHANGE_NO.Value;
        qryExecute.ParamByName('POSITION_NO').Value :=
          memPositionConstPOSITION_NO.Value;
        qryExecute.ParamByName('CONST_NO').Value :=
          memPositionConst.Fields[i].FieldName;
        dmMain.ExecuteSQL(qryExecute);
      end
      else
        if memPositionConst.Fields[i].Value <> memPositionConst.Fields[i +
        1].Value then
        //update
      begin
        qryExecute.SQL.Text :=
          ' update hr_POSITION_const set ' +
          ' const_value=:const_value ' +
          ' where change_no=:change_no and POSITION_no=:POSITION_no and ' +
          ' const_no=:const_no';
        qryExecute.ParamByName('CHANGE_NO').Value :=
          qryConstChangeCHANGE_NO.Value;
        qryExecute.ParamByName('POSITION_NO').Value :=
          memPositionConstPOSITION_NO.Value;
        qryExecute.ParamByName('CONST_NO').Value :=
          memPositionConst.Fields[i].FieldName;
        qryExecute.ParamByName('CONST_VALUE').Value :=
          memPositionConst.Fields[i].Value;
        dmMain.ExecuteSQL(qryExecute);
      end;
      if not (memPositionConst.State in [dsEdit]) then
        memPositionConst.Edit;
      if memPositionConst.Fields[i].IsNull then
        memPositionConst.Fields[i + 1].Clear
      else
        memPositionConst.Fields[i + 1].Value :=
          memPositionConst.Fields[i].Value;
      i := i + 2;
    end;
    if memPositionConst.State in [dsEdit] then
      memPositionConst.Post;
    memPositionConst.Next;
    frmMain.BarPrgStepIt;
  end;
  POSITION_Const_Change := false;
  memPositionConst.GotoBookmark(bookmark);
  memPositionConst.EnableControls;
  if ok then
    dmmain.CommitTransaction
  else
    dmMain.RollbackTransaction;
  Screen.Cursor := crDefault;
end;

procedure TfrmWageConstantData.dxSelectFromDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmWageConstantData.dxSelectFromDeptCloseUp(Sender: TObject;
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

procedure TfrmWageConstantData.dxSelectFromDeptChange(Sender: TObject);
begin
  inherited;
  if (Length(dxSelectFromDept.Text) = 0) then SELECT_FROM_DEPT := '';
end;

procedure TfrmWageConstantData.chkMoreOptionChange(Sender: TObject);
begin
  inherited;
  groupMoreOption.Visible := chkMoreOption.Checked;
end;

procedure TfrmWageConstantData.acBackExecute(Sender: TObject);
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

procedure TfrmWageConstantData.acNextExecute(Sender: TObject);
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

procedure TfrmWageConstantData.qryConstChangeBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryConstChange.State in [dsInsert] then
  begin
    Personal_Const_Change := true;
    Dept_Const_Change := true;
    Title_Const_Change := true;
    Position_Const_Change := true;
  end;
  dmMain.DefOnBeforePost(DataSet);
end;

procedure TfrmWageConstantData.qryConstChangeAfterPost(DataSet: TDataSet);
begin
  inherited;
  if Personal_Const_Change and
    Dept_Const_Change and
    Title_Const_Change and
    Position_Const_Change then
  begin
    acXemHangsoNV.Execute;
    acXemHangsoPB.Execute;
    acXemHangsoCD.Execute;
    acXemHangsoVT.Execute;
  end;
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TfrmWageConstantData.acViewReportExecute(Sender: TObject);
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
      i := i + 1
    until (EMPLOYEE_NO = '') and (not (memReport.State in [dsInsert]));
  end;
  qryReport.Close;
  memReport.EnableControls;
  Screen.Cursor := crDefault;
  frmMain.SetStatusBarMsg('');
end;

procedure TfrmWageConstantData.gridReportCustomDrawCell(Sender: TObject;
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
            AColor := chkHangChung.Color;

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

procedure TfrmWageConstantData.acRefreshReportGridExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  gridReport.BeginUpdate;
  for i := 3 to gridReport.ColumnCount - 1 do
  begin
    case gridReport.Columns[i].Tag of
      1: gridReport.Columns[i].Visible := chkHangChung.Checked;
      2: gridReport.Columns[i].Visible := chkNhanvien.Checked;
      3: gridReport.Columns[i].Visible := chkDonvi.Checked;
      4: gridReport.Columns[i].Visible := chkChucdanh.Checked;
      5: gridReport.Columns[i].Visible := chkChucvu.Checked;
    end;
  end;
  gridReport.EndUpdate;
end;

procedure TfrmWageConstantData.gridChangeLogChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  acXemHangsoNV.Execute;
  acXemHangsoPB.Execute;
  acXemHangsoCD.Execute;
  acXemHangsoVT.Execute;
end;

procedure TfrmWageConstantData.pageMainChanging(Sender: TObject;
  NewPage: TElTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if newPage = tabSummaryReport then
    if memReport.Active = false then
      acViewReport.Execute;
end;

procedure TfrmWageConstantData.acSaochepDulieuExecute(Sender: TObject);
begin
  inherited;
  with TfrmWageDataGenerate.Create(self, qryConstChangeCHANGE_MONTH.Value,
    qryConstChangeCHANGE_YEAR.Value, qryConstChangeCHANGE_PERIOD.Value, 'CONST')
      do
  try
    if ShowModal = mrOk then
    begin
      qryWageConst.Refresh;
      acXemHangsoNV.Execute;
      acXemHangsoPB.Execute;
      acXemHangsoCD.Execute;
      acXemHangsoVT.Execute;
    end;
  finally
    Free;
  end;
end;

procedure TfrmWageConstantData.acSaochepDulieuUpdate(Sender: TObject);
begin
  inherited;
  acSaochepDulieu.Enabled := (qryConstChange.IsEmpty = false) and (not
    (qryConstChange.State in [dsInsert, dsEdit]));
end;

end.

