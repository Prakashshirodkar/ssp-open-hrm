unit CalendarForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxEdLib, dxDBELib, dxEditor, dxDBTLCl, dxGrClms, DB,
  IBODataset, ElPgCtl, dxGrClEx, ActnList,DateUtils, IB_Components,
  IB_Events, ExtCtrls, ImgList, dxDBTL, ElBtnCtl, ElPopBtn, ElPanel;

type
  TfrmCalendar = class(TfrmEditBase)
    gridCalendar: TdxDBGrid;
    dsCalendar: TDataSource;
    qryCalendar: TIBOQuery;
    qryCalendarCALENDAR_NO: TWideStringField;
    qryCalendarCALENDAR_NAME: TWideStringField;
    qryCalendarCALENDAR_DEFAULT: TIntegerField;
    qryCalendarCALENDAR_NOTE: TWideStringField;
    gridCalendarCALENDAR_NAME: TdxDBGridColumn;
    gridCalendarROTATE: TdxDBGridCheckColumn;
    pageMain: TElPageControl;
    tabLichNgayTrongTuan: TElTabSheet;
    tabGioTrongTuan: TElTabSheet;
    tabLichNgayle: TElTabSheet;
    tabLichGioNgayle: TElTabSheet;
    gridLichLamNgayLe: TdxDBGrid;
    qryWeekDate: TIBOQuery;
    dsWeekDate: TDataSource;
    qryWeekTime: TIBOQuery;
    dsWeekTime: TDataSource;
    qryHolidayDate: TIBOQuery;
    dsHolidayDate: TDataSource;
    qryHolidayTime: TIBOQuery;
    dsHolidayTime: TDataSource;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl2: TdxLayoutControl;
    gridLichgioNgayle: TdxDBGrid;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl3: TdxLayoutControl;
    gridLichgioTrongtuan: TdxDBGrid;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl4: TdxLayoutControl;
    gridLichngayTrongtuan: TdxDBGrid;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    qryWeekDateCALENDAR_NO: TWideStringField;
    qryWeekDateWEEK_DATE_NO: TIntegerField;
    qryWeekDateWEEK_DATE_TYPE: TWideStringField;
    qryWeekDateWDT_NAME: TWideStringField;
    qryWeekDateWEEK_DATE_NOTE: TWideStringField;
    gridLichngayTrongtuanWEEK_DATE_NO: TdxDBGridImageColumn;
    gridLichngayTrongtuanWDT_NAME: TdxDBGridPopupColumn;
    gridLichngayTrongtuanWEEK_DATE_NOTE: TdxDBGridColumn;
    gridLichgioTrongtuanWEEK_DATE_NO: TdxDBGridImageColumn;
    gridLichgioTrongtuanWHT_NAME: TdxDBGridPopupColumn;
    gridLichgioTrongtuanWEEK_END_DATE: TdxDBGridImageColumn;
    gridLichgioTrongtuanWORK_TIME_NOTE: TdxDBGridColumn;
    qryHolidayDateCALENDAR_NO: TWideStringField;
    qryHolidayDateHOLIDAY_NO: TDateField;
    qryHolidayDateHOLIDAY_DATE_TYPE: TWideStringField;
    qryHolidayDateWDT_NAME: TWideStringField;
    qryHolidayDateHOLIDAY_DATE_NOTE: TWideStringField;
    gridLichLamNgayLeWDT_NAME: TdxDBGridPopupColumn;
    gridLichLamNgayLeHOLIDAY_DATE_NOTE: TdxDBGridColumn;
    gridLichLamNgayLeHOLIDAY_NO: TdxDBGridDateColumn;
    gridLichgioNgayleHOLIDAY_NO: TdxDBGridDateColumn;
    gridLichgioNgayleSTART_TIME: TdxDBGridTimeColumn;
    gridLichgioNgayleWHT_NAME: TdxDBGridPopupColumn;
    gridLichgioNgayleEND_TIME: TdxDBGridTimeColumn;
    gridLichgioNgayleWORK_TIME_NOTE: TdxDBGridColumn;
    ActionList1: TActionList;
    acPhatsinhLichLamNgayle: TAction;
    acPhatsinhLichgioNgayle: TAction;
    IB_Events1: TIB_Events;
    pageControl: TElPageControl;
    dxlcMainItem8: TdxLayoutItem;
    tabDinhnghiaLichchuan: TElTabSheet;
    tabNhanvien_Lichchuan: TElTabSheet;
    Splitter1: TSplitter;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    dxLayoutControl5Item1: TdxLayoutItem;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl5Item2: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl5Item3: TdxLayoutItem;
    dxRotate: TdxDBCheckEdit;
    dxLayoutControl5Item4: TdxLayoutItem;
    dxDBMemo1: TdxDBMemo;
    dxLayoutControl5Item5: TdxLayoutItem;
    dxLayoutControl5Group1: TdxLayoutGroup;
    dxLayoutControl5Group3: TdxLayoutGroup;
    imgTabIcon: TImageList;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutControl6: TdxLayoutControl;
    dxLayoutControl6Item1: TdxLayoutItem;
    tlOrgMap: TdxDBTreeList;
    tlOrgMapDEPT_NAME: TdxDBTreeListColumn;
    qryOrgMap: TIBOQuery;
    dsOrgMap: TDataSource;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutControl7: TdxLayoutControl;
    dxLayoutControl7Item1: TdxLayoutItem;
    Splitter2: TSplitter;
    dxLayoutControl8Group_Root: TdxLayoutGroup;
    dxLayoutControl8: TdxLayoutControl;
    qryOrgMapDEPT_NO: TWideStringField;
    qryOrgMapDEPT_NAME: TWideStringField;
    qryOrgMapP_DEPT_NO: TWideStringField;
    qryEmpCalendar: TIBOQuery;
    dsEmpCalendar: TDataSource;
    chkViewAll: TdxCheckEdit;
    dxLayoutControl8Item2: TdxLayoutItem;
    acXemNhanvienLich: TAction;
    gridNhanvienLich: TdxDBGrid;
    gridNhanvienLichEMPLOYEE_NO: TdxDBGridColumn;
    gridNhanvienLichDEPT_NAME: TdxDBGridColumn;
    gridNhanvienLichTITLE_NAME: TdxDBGridColumn;
    gridNhanvienLichDISMISS_DATE: TdxDBGridDateColumn;
    gridNhanvienLichCALENDAR_NAME: TdxDBGridPopupColumn;
    gridNhanvienLichIS_DISMISSED: TdxDBGridCheckColumn;
    acViewPhatsinh: TAction;
    qryEmpCalendarEMPLOYEE_NO: TWideStringField;
    qryEmpCalendarFULL_NAME: TWideStringField;
    qryEmpCalendarDEPT_NAME: TWideStringField;
    qryEmpCalendarTITLE_NO: TWideStringField;
    qryEmpCalendarTITLE_NAME: TWideStringField;
    qryEmpCalendarPOSITION_NO: TWideStringField;
    qryEmpCalendarIS_MAIN_POSITION: TIntegerField;
    qryEmpCalendarASSIGNED_DATE: TDateField;
    qryEmpCalendarEND_DATE: TDateField;
    qryEmpCalendarIS_DISMISSED: TIntegerField;
    qryEmpCalendarDISMISS_DATE: TDateField;
    qryEmpCalendarLICH_LV_CHUAN: TWideStringField;
    qryEmpCalendarCALENDAR_NAME: TWideStringField;
    imgWorkType: TdxImageEdit;
    dxLayoutControl8Item5: TdxLayoutItem;
    dxLayoutControl8Group2: TdxLayoutGroup;
    chkFastGenerate: TdxCheckEdit;
    dxLayoutControl8Item3: TdxLayoutItem;
    dxlcGroupNhapnhanh: TdxLayoutGroup;
    dxPopupEdit1: TdxPopupEdit;
    dxLayoutControl8Item6: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl8Item7: TdxLayoutItem;
    acNhapnhanhDulieu: TAction;
    gridLichgioNgayleEND_DATE: TdxDBGridImageColumn;
    qryHolidayTimeCALENDAR_NO: TWideStringField;
    qryHolidayTimeHOLIDAY_NO: TDateField;
    qryHolidayTimeSTART_TIME: TTimeField;
    qryHolidayTimeWORK_HOUR_TYPE: TWideStringField;
    qryHolidayTimeWHT_NAME: TWideStringField;
    qryHolidayTimeEND_DATE: TIntegerField;
    qryHolidayTimeEND_TIME: TTimeField;
    qryHolidayTimeWORK_TIME_NOTE: TWideStringField;
    gridLichgioTrongtuanSTART_TIME: TdxDBGridTimeColumn;
    gridLichgioTrongtuanEND_TIME: TdxDBGridTimeColumn;
    pageWorkTimeRule: TElTabSheet;
    gridHourRule: TdxDBGrid;
    gridHourRuleWHT_NO: TdxDBGridMaskColumn;
    gridHourRuleWHT_NAME: TdxDBGridPopupColumn;
    gridHourRuleSTART_TIME_EARLY: TdxDBGridTimeColumn;
    gridHourRuleSTART_TIME: TdxDBGridTimeColumn;
    gridHourRuleSTART_TIME_LATE: TdxDBGridTimeColumn;
    gridHourRuleEND_TIME_EARLY: TdxDBGridTimeColumn;
    gridHourRuleEND_TIME: TdxDBGridTimeColumn;
    gridHourRuleEND_TIME_LATE: TdxDBGridTimeColumn;
    gridHourRuleEND_DATE: TdxDBGridImageColumn;
    qryHourRule: TIBOQuery;
    qryHourRuleWHT_NO: TWideStringField;
    qryHourRuleWHT_NAME: TWideStringField;
    qryHourRuleSTART_TIME: TTimeField;
    qryHourRuleEND_TIME: TTimeField;
    qryHourRuleEND_DATE: TSmallintField;
    qryHourRuleSTART_TIME_EARLY: TTimeField;
    qryHourRuleSTART_TIME_LATE: TTimeField;
    qryHourRuleEND_TIME_EARLY: TTimeField;
    qryHourRuleEND_TIME_LATE: TTimeField;
    dsHourRule: TDataSource;
    qryWeekTimeKEY_FIELD: TWideStringField;
    qryWeekTimeCALENDAR_NO: TWideStringField;
    qryWeekTimeWEEK_DATE_NO: TIntegerField;
    qryWeekTimeSTART_TIME: TTimeField;
    qryWeekTimeWORK_HOUR_TYPE: TWideStringField;
    qryWeekTimeWHT_NAME: TWideStringField;
    qryWeekTimeWEEK_END_DATE: TIntegerField;
    qryWeekTimeEND_TIME: TTimeField;
    qryWeekTimeWORK_TIME_NOTE: TWideStringField;
    qryHolidayTimeKEYID: TWideStringField;
    qryWeekDateWORK_HOUR: TIBOFloatField;
    gridLichngayTrongtuanWORK_HOUR: TdxDBGridCalcColumn;
    qryEmpCalendar2: TIBOQuery;
    dsEmpCalendar2: TDataSource;
    gridNhanvienLichFULL_NAME: TdxDBGridPopupColumn;
    dxLayoutControl8Item4: TdxLayoutItem;
    chkLichXoay: TdxCheckEdit;
    dxlcCalendar: TdxLayoutControl;
    dxDBGrid67: TdxDBGrid;
    ElPopupButton209: TElPopupButton;
    ElPopupButton210: TElPopupButton;
    dxLayoutGroup144: TdxLayoutGroup;
    dxLayoutItem279: TdxLayoutItem;
    dxLayoutGroup145: TdxLayoutGroup;
    dxLayoutItem281: TdxLayoutItem;
    dxLayoutItem282: TdxLayoutItem;
    qryCalendarNEXT_CALENDAR: TWideStringField;
    dxDBGrid67CALENDAR_NAME: TdxDBGridColumn;
    dxDBGrid67CALENDAR_NO: TdxDBGridColumn;
    qryCalendar2: TIBOQuery;
    dsCalendar2: TDataSource;
    qryCalendarNEXT_CALENDAR_NAME: TWideStringField;
    qryCalendar2CALENDAR_NO: TWideStringField;
    qryCalendar2CALENDAR_NAME: TWideStringField;
    qryCalendar2CALENDAR_DEFAULT: TIntegerField;
    qryCalendar2CALENDAR_NOTE: TWideStringField;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl8Item8: TdxLayoutItem;
    acThietLap: TAction;
    tabLichxoayvong: TElTabSheet;
    qryCalendarIS_ROTATE: TSmallintField;
    acSetVisible: TAction;
    dxLayoutControl9Group_Root: TdxLayoutGroup;
    dxLayoutControl9: TdxLayoutControl;
    dxLayoutControl9Item1: TdxLayoutItem;
    gridRotate: TdxDBGrid;
    qryCalRotate: TIBOQuery;
    dsCalRotate: TDataSource;
    gridRotateSTT: TdxDBGridSpinColumn;
    gridRotateTIME_LIMIT: TdxDBGridSpinColumn;
    gridRotateCALENDAR_ROTATE_NAME: TdxDBGridPopupColumn;
    qryCalRotateCR_ID: TIntegerField;
    qryCalRotateSTT: TIntegerField;
    qryCalRotateCALENDAR_NO: TWideStringField;
    qryCalRotateTIME_LIMIT: TIntegerField;
    qryCalRotateTIME_UNIT: TIntegerField;
    qryCalRotateCALENDAR_ROTATE: TWideStringField;
    qryCalRotateCALENDAR_ROTATE_NAME: TWideStringField;
    gridRotateTIME_UNIT: TdxDBGridImageColumn;
    qryEmpCalendar2EC_ID: TIntegerField;
    qryEmpCalendar2EMPLOYEE_NO: TWideStringField;
    qryEmpCalendar2CALENDAR_NO: TWideStringField;
    qryEmpCalendar2ASSIGN_DATE: TDateField;
    qryEmpCalendar2FULL_NAME: TWideStringField;
    qryEmpCalendar2DEPT_NAME: TWideStringField;
    qryEmpCalendar2TITLE_NO: TWideStringField;
    qryEmpCalendar2TITLE_NAME: TWideStringField;
    qryEmpCalendar2POSITION_NO: TWideStringField;
    qryEmpCalendar2IS_MAIN_POSITION: TIntegerField;
    qryEmpCalendar2ASSIGNED_DATE: TDateField;
    qryEmpCalendar2END_DATE: TDateField;
    qryEmpCalendar2IS_DISMISSED: TIntegerField;
    qryEmpCalendar2DISMISS_DATE: TDateField;
    qryEmpCalendar2CALENDAR_NAME: TWideStringField;
    gridNhanvienLichASSIGN_DATE: TdxDBGridDateColumn;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl8Item9: TdxLayoutItem;
    acClearCalendar: TAction;
    ElPageControl1: TElPageControl;
    dxLayoutControl8Item10: TdxLayoutItem;
    ElTabSheet1: TElTabSheet;
    ElTabSheet2: TElTabSheet;
    dxLayoutControl10Group_Root: TdxLayoutGroup;
    dxLayoutControl10: TdxLayoutControl;
    dxLayoutControl11: TdxLayoutControl;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutControl10Item1: TdxLayoutItem;
    gridEmpCalemdarHistory: TdxDBGrid;
    dxLayoutControl11Item1: TdxLayoutItem;
    qryEmpCalendarHistory: TIBOQuery;
    dsEmpCalendarHistory: TDataSource;
    qryEmpCalendarHistoryEC_ID: TIntegerField;
    qryEmpCalendarHistoryEMPLOYEE_NO: TWideStringField;
    qryEmpCalendarHistoryCALENDAR_NO: TWideStringField;
    qryEmpCalendarHistoryASSIGN_DATE: TDateField;
    qryEmpCalendarHistoryFULL_NAME: TWideStringField;
    qryEmpCalendarHistoryDEPT_NAME: TWideStringField;
    qryEmpCalendarHistoryTITLE_NO: TWideStringField;
    qryEmpCalendarHistoryTITLE_NAME: TWideStringField;
    qryEmpCalendarHistoryPOSITION_NO: TWideStringField;
    qryEmpCalendarHistoryIS_MAIN_POSITION: TIntegerField;
    qryEmpCalendarHistoryASSIGNED_DATE: TDateField;
    qryEmpCalendarHistoryEND_DATE: TDateField;
    qryEmpCalendarHistoryIS_DISMISSED: TIntegerField;
    qryEmpCalendarHistoryDISMISS_DATE: TDateField;
    qryEmpCalendarHistoryCALENDAR_NAME: TWideStringField;
    gridEmpCalemdarHistoryEMPLOYEE_NO: TdxDBGridColumn;
    gridEmpCalemdarHistoryASSIGN_DATE: TdxDBGridDateColumn;
    gridEmpCalemdarHistoryDEPT_NAME: TdxDBGridColumn;
    gridEmpCalemdarHistoryTITLE_NAME: TdxDBGridColumn;
    gridEmpCalemdarHistoryDISMISS_DATE: TdxDBGridDateColumn;
    gridEmpCalemdarHistoryFULL_NAME: TdxDBGridPopupColumn;
    gridEmpCalemdarHistoryIS_DISMISSED: TdxDBGridCheckColumn;
    gridEmpCalemdarHistoryCALENDAR_NAME: TdxDBGridPopupColumn;
    gridEmpCalemdarHistoryColumn9: TdxDBGridColumn;
    dxlcXoay: TdxLayoutGroup;
    dxLayoutControl5Item6: TdxLayoutItem;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxLayoutControl5Item7: TdxLayoutItem;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxLayoutControl5Item8: TdxLayoutItem;
    dxDBCheckEdit3: TdxDBCheckEdit;
    dxLayoutControl5Item9: TdxLayoutItem;
    dxDBCheckEdit4: TdxDBCheckEdit;
    dxLayoutControl5Item10: TdxLayoutItem;
    dxDBCheckEdit5: TdxDBCheckEdit;
    dxLayoutControl5Item11: TdxLayoutItem;
    dxDBCheckEdit6: TdxDBCheckEdit;
    dxLayoutControl5Item12: TdxLayoutItem;
    dxDBCheckEdit7: TdxDBCheckEdit;
    dxDBImageEdit1: TdxDBImageEdit;
    dxLayoutControl5Item13: TdxLayoutItem;
    qryCalendarSTYLE: TIntegerField;
    qryWeekTimeWEEK_START_DATE: TIntegerField;
    gridLichgioTrongtuanWEEK_START_DATE: TdxDBGridImageColumn;
    procedure FormCreate(Sender: TObject);
    procedure gridLichngayTrongtuanWDT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridLichgioTrongtuanWHT_NAMEInitPopup(Sender: TObject);
    procedure gridLichgioTrongtuanWHT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridLichngayTrongtuanWDT_NAMEInitPopup(Sender: TObject);
    procedure qryWeekDateWDT_NAMEChange(Sender: TField);
    procedure qryWeekTimeWHT_NAMEChange(Sender: TField);
    procedure qryHolidayDateWDT_NAMEChange(Sender: TField);
    procedure gridLichLamNgayLeWDT_NAMEInitPopup(Sender: TObject);
    procedure gridLichLamNgayLeWDT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridLichgioNgayleWHT_NAMEInitPopup(Sender: TObject);
    procedure gridLichgioNgayleWHT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure pageMainChange(Sender: TObject);
    procedure acPhatsinhLichLamNgayleExecute(Sender: TObject);
    procedure acPhatsinhLichgioNgayleExecute(Sender: TObject);
    procedure qryHolidayTimeWHT_NAMEChange(Sender: TField);
    procedure acPhatsinhLichLamNgayleUpdate(Sender: TObject);
    procedure acPhatsinhLichgioNgayleUpdate(Sender: TObject);
    procedure IB_Events1EventAlert(Sender: TObject; AEventName: String;
      AEventCount: Integer);
    procedure OnControlEnter(Sender: TObject); override;
    procedure acXemNhanvienLichExecute(Sender: TObject);
    procedure acViewPhatsinhExecute(Sender: TObject);
    procedure pageControlChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridNhanvienLichCALENDAR_NAMEInitPopup(Sender: TObject);
    procedure gridNhanvienLichCALENDAR_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryEmpCalendarCALENDAR_NAMEChange(Sender: TField);
    procedure chkFastGenerateChange(Sender: TObject);
    procedure dxPopupEdit1InitPopup(Sender: TObject);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure acNhapnhanhDulieuUpdate(Sender: TObject);
    procedure acNhapnhanhDulieuExecute(Sender: TObject);
    procedure dxPopupEdit1Change(Sender: TObject);
    procedure imgWorkTypeChange(Sender: TObject);
    procedure chkViewAllChange(Sender: TObject);
    procedure pageMainChanging(Sender: TObject; NewPage: TElTabSheet;
      var AllowChange: Boolean);
    procedure qryCalendarAfterPost(DataSet: TDataSet);
    procedure gridHourRuleEnter(Sender: TObject);
    procedure gridHourRuleWHT_NAMEInitPopup(Sender: TObject);
    procedure gridHourRuleWHT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryHolidayTimeBeforePost(DataSet: TDataSet);
    procedure gridNhanvienLichFULL_NAMEInitPopup(Sender: TObject);
    procedure gridNhanvienLichFULL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryEmpCalendar2AfterPost(DataSet: TDataSet);
    procedure dxNextCalendarInitPopup(Sender: TObject);
    procedure acThietLapExecute(Sender: TObject);
    procedure dxRotateChange(Sender: TObject);
    procedure gridCalendarChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure acSetVisibleExecute(Sender: TObject);
    procedure qryCalRotateNewRecord(DataSet: TDataSet);
    procedure qryCalRotateAfterPost(DataSet: TDataSet);
    procedure gridRotateCALENDAR_ROTATE_NAMEInitPopup(Sender: TObject);
    procedure gridRotateCALENDAR_ROTATE_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryEmpCalendar2BeforePost(DataSet: TDataSet);
    procedure acClearCalendarExecute(Sender: TObject);
    procedure qryEmpCalendarHistoryAfterPost(DataSet: TDataSet);
    procedure gridEmpCalemdarHistoryFULL_NAMEInitPopup(Sender: TObject);
    procedure gridEmpCalemdarHistoryFULL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridEmpCalemdarHistoryCALENDAR_NAMEInitPopup(
      Sender: TObject);
    procedure gridEmpCalemdarHistoryCALENDAR_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridEmpCalemdarHistoryEnter(Sender: TObject);
    procedure qryEmpCalendarHistoryError(Sender: TObject;
      const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
      const SQLCODE: Integer; SQLMessage, SQL: TStringList;
      var RaiseException: Boolean);
    procedure qryEmpCalendarHistoryAfterOpen(DataSet: TDataSet);
    procedure qryCalendarNewRecord(DataSet: TDataSet);
    procedure qryWeekTimeAfterPost(DataSet: TDataSet);
    procedure qryWeekTimeNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    CALENDAR_NO,CALENDAR_NAME:WideString;
    is_init_form:boolean;
    org_empforselectSQL : string;
    org_CalendarSQL : string;
  public
    { Public declarations }
  end;

var
  frmCalendar: TfrmCalendar;

implementation

uses MainDM, PopupMainForm, SSP_Library, InitHolidayTemplateForm,
  InitHolidayTimeTemplateForm, MainUnit, EmpCalendarWizardForm;

{$R *.dfm}
procedure TfrmCalendar.OnControlEnter(Sender: TObject);
begin

  if pageControl.ActivePage=tabDinhnghiaLichchuan then
  begin
    pageMain.ActivePage:=pageMain.ActivePage;
    inherited OnControlEnter(Sender);
  end
  else
  if pageControl.ActivePage=tabNhanvien_Lichchuan then
  begin
    frameToolbar1.SetDataSource(dsEmpCalendar);
    frameToolbar1.dxlctrlGenerate.Visible:=false;
  end
end;

procedure TfrmCalendar.FormCreate(Sender: TObject);
begin
  is_init_form:=true;
  imgWorkType.Descriptions.Add(Utf8decode('Tất cả'));
  imgWorkType.Descriptions.Add(Utf8decode('Đang làm việc'));
  imgWorkType.Descriptions.Add(Utf8decode('Đã nghỉ'));

  imgWorkType.Values.Add('0');
  imgWorkType.Values.Add('1');
  imgWorkType.Values.Add('2');
  imgWorkType.Text:='0';
  inherited;
  qryCalendar.Open;
  qryWeekDate.Open;
  qryWeekTime.Open;
  qryHolidayDate.Open;
  qryHolidayTime.Open;
  qryCalRotate.open;
  gridLichgioNgayle.FullExpand;
  gridLichgioTrongtuan.FullExpand;
  IB_Events1.RegisterEvents;
  //=======================
  qryOrgMap.Open;
  CustomExpand(tlOrgMap);
  pageControl.ActivePage:=tabDinhnghiaLichchuan;
  if qryHourRule.Active then
    qryHourRule.Close;
  qryHourRule.Open;
  
  is_init_form:=false;

  pageWorkTimeRule.TabVisible :=False;

  acsetvisible.Execute;
  //ApplyOption(TControl(self));
end;

procedure TfrmCalendar.gridLichngayTrongtuanWDT_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryWorkDateType,qryWeekDate,
             'WDT_NO;WDT_NAME','WEEK_DATE_TYPE;WDT_NAME',
             'WDT_NAME',Text);
  frmPopupMain.qryWorkDateType.Close;
end;

procedure TfrmCalendar.gridLichgioTrongtuanWHT_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
   frmPopupMain.qryWorkHourType.Open;
    InitPopupControl('dxlcWorkHourType',frmPopupMain,sender,2,gridLichgioTrongtuan);

end;

procedure TfrmCalendar.gridLichgioTrongtuanWHT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupMain.qryWorkHourType,qryWeekTime,
             'WHT_NO;WHT_NAME','WORK_HOUR_TYPE;WHT_NAME',
             'WHT_NAME',Text);
  frmPopupMain.qryWorkHourType.Close;
end;

procedure TfrmCalendar.gridLichngayTrongtuanWDT_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
   frmPopupMain.qryWorkDateType.Open;
   InitPopupControl('dxlcWorkDateType',frmPopupMain,sender,2,gridLichngayTrongtuan);

end;

procedure TfrmCalendar.qryWeekDateWDT_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,Sender.FieldName,'WEEK_DATE_TYPE');
end;

procedure TfrmCalendar.qryWeekTimeWHT_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,Sender.FieldName,'WORK_HOUR_TYPE');
end;

procedure TfrmCalendar.qryHolidayDateWDT_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,Sender.FieldName,'HOLIDAY_DATE_TYPE');
end;

procedure TfrmCalendar.gridLichLamNgayLeWDT_NAMEInitPopup(Sender: TObject);
begin
  inherited;
    frmPopupMain.qryWorkDateType.Open;
   InitPopupControl('dxlcWorkDateType',frmPopupMain,sender,2,gridLichLamNgayLe);

end;

procedure TfrmCalendar.gridLichLamNgayLeWDT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
    OnPopupCloseUp(Accept,frmPopupMain.qryWorkDateType,qryHolidayDate,
             'WDT_NO;WDT_NAME','HOLIDAY_DATE_TYPE;WDT_NAME',
             'WDT_NAME',Text);
  frmPopupMain.qryWorkDateType.Close;
end;

procedure TfrmCalendar.gridLichgioNgayleWHT_NAMEInitPopup(Sender: TObject);
begin
  inherited;
   frmPopupMain.qryWorkHourType.Open;
    InitPopupControl('dxlcWorkHourType',frmPopupMain,sender,2,gridLichgioNgayle);

end;

procedure TfrmCalendar.gridLichgioNgayleWHT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
    OnPopupCloseUp(Accept,frmPopupMain.qryWorkHourType,qryHolidayTime,
             'WHT_NO;WHT_NAME','WORK_HOUR_TYPE;WHT_NAME',
             'WHT_NAME',Text);
  frmPopupMain.qryWorkHourType.Close;
end;

procedure TfrmCalendar.pageMainChange(Sender: TObject);
begin
  inherited;
  acViewPhatsinh.Execute;
end;

procedure TfrmCalendar.acPhatsinhLichLamNgayleExecute(Sender: TObject);
begin
  inherited;
  with TfrmInitHolidayTemplate.Create(self) do
  try
     CALENDAR_NO:=qryCalendarCALENDAR_NO.Value;
     spInYear.IntValue:=YearOf(Now);
     chkDeleteOldData.Checked:=true;
     if ShowModal=mrOk then
      qryHolidayDate.Refresh;
  finally
     Free;
  end;

end;

procedure TfrmCalendar.acPhatsinhLichgioNgayleExecute(Sender: TObject);
begin
  inherited;
   with TfrmInitHolidayTimeTemplate.Create(self) do
  try
     CALENDAR_NO:=qryCalendarCALENDAR_NO.Value;
     spInYear.IntValue:=YearOf(Now);
     chkDeleteOldData.Checked:=true;
     if ShowModal=mrOk then
      qryHolidayTime.Refresh;
  finally
     Free;
  end;
end;

procedure TfrmCalendar.qryHolidayTimeWHT_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,Sender.FieldName,'WORK_HOUR_TYPE');
end;

procedure TfrmCalendar.acPhatsinhLichLamNgayleUpdate(Sender: TObject);
begin
  inherited;
  acPhatsinhLichLamNgayle.Enabled:=(qryCalendar.RecordCount>0);
end;

procedure TfrmCalendar.acPhatsinhLichgioNgayleUpdate(Sender: TObject);
begin
  inherited;
  acPhatsinhLichgioNgayle.Enabled:=(qryCalendar.RecordCount>0);
end;

procedure TfrmCalendar.IB_Events1EventAlert(Sender: TObject;
  AEventName: String; AEventCount: Integer);
 var boomark:TBookmark;

begin
  inherited;
  if AEventName='CALENDAR_DEFAULT CHANGE' then
  begin
    qryCalendar.DisableControls;
    boomark:=qryCalendar.GetBookmark;
    qryCalendar.Refresh;
    qryCalendar.GotoBookmark(boomark);
    qryCalendar.EnableControls;
  end;
end;

procedure TfrmCalendar.acXemNhanvienLichExecute(Sender: TObject);
begin
  inherited;
  {Phuc sua qryEmpCalendar thanh qryEmpCalendar2}
  Screen.Cursor:=crSQLWait;
  qryEmpCalendar2.DisableControls;
  if qryEmpCalendar2.Active then
    qryEmpCalendar2.Close;
  if imgWorkType.Text='0' then // tat ca
    qryEmpCalendar2.SQLWhere.Text:=' where IS_MAIN_POSITION=1'
  else
  if imgWorkType.Text='1' then // dang lam viec
    qryEmpCalendar2.SQLWhere.Text:=' where IS_MAIN_POSITION=1 and IS_DISMISSED<>1 '
  else
  if imgWorkType.Text='2' then // da nghi viec
      qryEmpCalendar2.SQLWhere.Text:=' where IS_MAIN_POSITION=1 and IS_DISMISSED=1 '
  else
    qryEmpCalendar2.SQLWhere.Text:=' where IS_MAIN_POSITION=1' ;

  if chkViewAll.Checked then
    qryEmpCalendar2.ParamByName('VIEW_ALL').Value:=1
  else
    qryEmpCalendar2.ParamByName('VIEW_ALL').Value:=0;
  qryEmpCalendar2.Open;
  gridNhanvienLichDEPT_NAME.Visible:=chkViewAll.Checked;
  qryEmpCalendar2.EnableControls;

  //////////
  qryEmpCalendarHistory.DisableControls;
  if qryEmpCalendarHistory.Active then
    qryEmpCalendarHistory.Close;
  if imgWorkType.Text='0' then // tat ca
    qryEmpCalendarHistory.SQLWhere.Text:=' where IS_MAIN_POSITION=1'
  else
  if imgWorkType.Text='1' then // dang lam viec
    qryEmpCalendarHistory.SQLWhere.Text:=' where IS_MAIN_POSITION=1 and IS_DISMISSED<>1 '
  else
  if imgWorkType.Text='2' then // da nghi viec
      qryEmpCalendarHistory.SQLWhere.Text:=' where IS_MAIN_POSITION=1 and IS_DISMISSED=1 '
  else
    qryEmpCalendarHistory.SQLWhere.Text:=' where IS_MAIN_POSITION=1' ;

  if chkViewAll.Checked then
    qryEmpCalendarHistory.ParamByName('VIEW_ALL').Value:=1
  else
    qryEmpCalendarHistory.ParamByName('VIEW_ALL').Value:=0;
  qryEmpCalendarHistory.Open;
  gridEmpCalemdarHistoryDEPT_NAME.Visible:=chkViewAll.Checked;
  qryEmpCalendarHistory.EnableControls;
  //////////
  Screen.Cursor:=crDefault;
end;

procedure TfrmCalendar.acViewPhatsinhExecute(Sender: TObject);
begin
  inherited;
    if pageMain.ActivePage=tabLichNgayTrongTuan then
  begin
    frameToolbar1.dxlctrlGenerate.Visible:=false;
    frameToolbar1.btnGenerate.Action:=nil;
  end
  else
  if pageMain.ActivePage=tabGioTrongTuan then
  begin
    frameToolbar1.dxlctrlGenerate.Visible:=false;
    frameToolbar1.btnGenerate.Action:=nil;
  end
  else
  if pageMain.ActivePage=tabLichNgayle then
  begin
    frameToolbar1.dxlctrlGenerate.Visible:=true;
    frameToolbar1.btnGenerate.Action:=acPhatsinhLichLamNgayle;
  end
  else
  if pageMain.ActivePage=tabLichGioNgayle then
  begin
    frameToolbar1.dxlctrlGenerate.Visible:=true;
    frameToolbar1.btnGenerate.Action:=acPhatsinhLichgioNgayle;
  end

end;

procedure TfrmCalendar.pageControlChange(Sender: TObject);
begin
  inherited;
  if pageControl.ActivePage=tabDinhnghiaLichchuan then
  begin
    acViewPhatsinh.Execute;
  end
  else
  if pageControl.ActivePage=tabNhanvien_Lichchuan then
    acXemNhanvienLich.Execute;
end;

procedure TfrmCalendar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmPopupMain.ListKeyField:=qryCalendarCALENDAR_NO.Value;
  inherited;
end;

procedure TfrmCalendar.gridNhanvienLichCALENDAR_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryCalendar.Open;
    InitPopupControl('dxlcCalendar',frmPopupMain,sender,2,gridNhanvienLich);
  frmPopupMain.btnCalendar.Visible:=false;  
end;

procedure TfrmCalendar.gridNhanvienLichCALENDAR_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  {OnPopupCloseUp(Accept,frmPopupMain.qryCalendar,qryEmpCalendar,
             'CALENDAR_NO;CALENDAR_NAME','LICH_LV_CHUAN;CALENDAR_NAME',
             'CALENDAR_NAME',Text);} {Phuc rao}
  {Phuc add}
  OnPopupCloseUp(Accept,frmPopupMain.qryCalendar,qryEmpCalendar2,
             'CALENDAR_NO;CALENDAR_NAME','CALENDAR_NO;CALENDAR_NAME',
             'CALENDAR_NAME',Text);
  {}
  frmPopupMain.qryCalendar.Close;
  frmPopupMain.btnCalendar.Visible:=true;
end;

procedure TfrmCalendar.qryEmpCalendarCALENDAR_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,Sender.FieldName,'LICH_LV_CHUAN');
end;

procedure TfrmCalendar.chkFastGenerateChange(Sender: TObject);
begin
  inherited;
  dxlcGroupNhapnhanh.Visible:=chkFastGenerate.Checked;
  if chkFastGenerate.Checked then
    gridNhanvienLich.OptionsBehavior:=gridNhanvienLich.OptionsBehavior+
      [edgoMultiSelect]
  else
    gridNhanvienLich.OptionsBehavior:=gridNhanvienLich.OptionsBehavior-
      [edgoMultiSelect]
end;

procedure TfrmCalendar.dxPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryCalendar.Open;
    InitPopupControl('dxlcCalendar',frmPopupMain,sender,2,gridNhanvienLich);
  frmPopupMain.btnCalendar.Visible:=false; 
end;

procedure TfrmCalendar.dxPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text:=frmPopupMain.qryCalendarCALENDAR_NAME.Value;
    CALENDAR_NO:=frmPopupMain.qryCalendarCALENDAR_NO.Value;
    CALENDAR_NAME:=frmPopupMain.qryCalendarCALENDAR_NAME.Value;
  end;
  frmPopupMain.qryCalendar.Close;
  frmPopupMain.btnCalendar.Visible:=true;
end;

procedure TfrmCalendar.acNhapnhanhDulieuUpdate(Sender: TObject);
begin
  inherited;
  acNhapnhanhDulieu.Enabled:=(Length(CALENDAR_NO)>0);
end;

procedure TfrmCalendar.acNhapnhanhDulieuExecute(Sender: TObject);
var bookmark:TBookmark;
    i:integer;
begin
  inherited;
  //
  Screen.Cursor:=crSQLWait;
  qryEmpCalendar.DisableControls;
  bookmark:=qryEmpCalendar.GetBookmark;
  frmMain.SetStatusBarPrgDisplay(0,gridNhanvienLich.SelectedCount);
  for i:=0 to gridNhanvienLich.SelectedCount-1 do
  begin
    if qryEmpCalendar.Locate('EMPLOYEE_NO',VarToWideStr(gridNhanvienLich.SelectedNodes[i].Values[gridNhanvienLichEMPLOYEE_NO.Index]),[])
    then
    begin
      if not (qryEmpCalendar.State in [dsEdit,dsInsert]) then
        qryEmpCalendar.Edit;
      qryEmpCalendarLICH_LV_CHUAN.Value:=CALENDAR_NO;
      qryEmpCalendarCALENDAR_NAME.Value:=CALENDAR_NAME;
      qryEmpCalendar.Post;
    end;
    frmMain.BarPrgStepIt;
  end;
  qryEmpCalendar.GotoBookmark(bookmark);
  qryEmpCalendar.EnableControls;
  Screen.Cursor:=crDefault;
end;

procedure TfrmCalendar.dxPopupEdit1Change(Sender: TObject);
begin
  inherited;
  if Length(dxPopupEdit1.Text)=0 then
  begin
    CALENDAR_NO:='';
    CALENDAR_NAME:='';
  end;
end;

procedure TfrmCalendar.imgWorkTypeChange(Sender: TObject);
begin
  inherited;
  if is_init_form=false then acXemNhanvienLich.Execute;
end;

procedure TfrmCalendar.chkViewAllChange(Sender: TObject);
begin
  inherited;
  if is_init_form=false then acXemNhanvienLich.Execute;
end;

procedure TfrmCalendar.pageMainChanging(Sender: TObject;
  NewPage: TElTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if pageMain.ActivePage=tabLichNgayTrongTuan then
    AllowChange:=dmMain.MsgChangeDataSource(dsWeekDate)
  else
  if pageMain.ActivePage=tabGioTrongTuan then
    AllowChange:=dmMain.MsgChangeDataSource(dsWeekTime)
  else
  if pageMain.ActivePage=tabLichNgayle then
    AllowChange:=dmMain.MsgChangeDataSource(dsHolidayDate)
  else
  if pageMain.ActivePage=tabLichGioNgayle then
    AllowChange:=dmMain.MsgChangeDataSource(dsHolidayTime)
end;

procedure TfrmCalendar.qryCalendarAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryWeekDate.Active then
    qryWeekDate.RefreshKeys;
  if qryWeekTime.Active then
    qryWeekTime.RefreshKeys;
  if qryHolidayDate.Active then
    qryHolidayDate.RefreshKeys;
  if qryHolidayTime.Active then
    qryHolidayTime.RefreshKeys;
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TfrmCalendar.gridHourRuleEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsHourRule);
end;

procedure TfrmCalendar.gridHourRuleWHT_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWorkHourType.Open;
    InitPopupControl('dxlcWorkHourType',frmPopupMain,sender,2,gridHourRule);
end;

procedure TfrmCalendar.gridHourRuleWHT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryWorkHourType,qryHourRule,
             'WHT_NO;WHT_NAME','WHT_NO;WHT_NAME','WHT_NAME',Text);
  frmPopupMain.qryWorkHourType.Close;
end;

procedure TfrmCalendar.qryHolidayTimeBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryHolidayTimeKEYID.Value := qryHolidayTimeHOLIDAY_NO.DisplayText + qryHolidayTimeSTART_TIME.DisplayText;
end;

procedure TfrmCalendar.gridNhanvienLichFULL_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  org_empforselectSQL := frmPopupMain.qryEmpForSelect.SQL.Text;
  
  frmPopupMain.qryEmpForSelect.SQL.Text :=
      frmPopupMain.qryEmpForSelect.SQL.Text + ' and HR_MASK_EMPLOYEE.dept_no = :DEPT_NO ';
  frmPopupMain.qryEmpForSelect.ParamByName('DEPT_NO').Value :=
      qryOrgMapDEPT_NO.Value;

  //Edited by THUYPTP - 28/4/2009
  //frmPopupMain.qryEmpForSelect.Open;
  frmPopupMain.dximOptionChange(sender);
  //Het
  InitPopupControl('dxlcEmpForSelect', frmPopupMain, sender, 2.5,
    gridNhanvienLich);
end;

procedure TfrmCalendar.gridNhanvienLichFULL_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryEmpForSelect,
    qryEmpCalendar2,
    'EMPLOYEE_NO;FULL_NAME',
    'EMPLOYEE_NO;FULL_NAME',
    'FULL_NAME', Text);
  frmPopupMain.qryEmpForSelect.Close;

  frmPopupMain.qryEmpForSelect.SQL.Text := org_empforselectSQL;
end;

procedure TfrmCalendar.qryEmpCalendar2AfterPost(DataSet: TDataSet);
begin
  inherited;
  qryEmpCalendar2.Refresh;
end;

procedure TfrmCalendar.dxNextCalendarInitPopup(Sender: TObject);
begin
  inherited;
  qryCalendar2.open;
  InitPopupControl('dxlcCalendar',frmCalendar,Sender,2.5);
end;



procedure TfrmCalendar.acThietLapExecute(Sender: TObject);
var frmEmpCalendarWizard :  TfrmEmpCalendarWizard;
begin
  inherited;
//  ShowModalForm(TfrmEmpCalendarWizard,frmEmpCalendarWizard);
  frmEmpCalendarWizard := TfrmEmpCalendarWizard.Create(Application);

  if frmEmpCalendarWizard.ShowModal = mrOK then
  begin
    qryEmpCalendar2.Refresh;
    qryEmpCalendarHistory.Refresh;
    gridEmpCalemdarHistory.FullExpand;
  end;
end;

procedure TfrmCalendar.dxRotateChange(Sender: TObject);
begin
  inherited;
  acsetvisible.Execute;
end;

procedure TfrmCalendar.gridCalendarChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  inherited;
  acsetvisible.Execute;
end;

procedure TfrmCalendar.acSetVisibleExecute(Sender: TObject);
begin
  inherited;
  if dxRotate.Checked then
  begin
    tabLichNgayTrongTuan.TabVisible := not true;
    tabGioTrongTuan.TabVisible := not true;
    tabLichNgayle.TabVisible := not true;
    tabLichGioNgayle.TabVisible := not true;
    tabLichxoayvong.TabVisible := dxRotate.Checked;
    tabLichxoayvong.Show;
    //dxlcXoay.Visible := dxRotate.Checked;
  end
  else
  begin
    tabLichNgayTrongTuan.TabVisible := true;
    tabGioTrongTuan.TabVisible := true;
    tabLichNgayle.TabVisible := true;
    tabLichGioNgayle.TabVisible := true;
    tabLichxoayvong.TabVisible := not true;
    tabLichNgayTrongTuan.Show;
    //dxlcXoay.Visible := not dxRotate.Checked;
  end;
end;

procedure TfrmCalendar.qryCalRotateNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryCalRotateCALENDAR_NO.Value := qryCalendarCALENDAR_NO.Value;
end;

procedure TfrmCalendar.qryCalRotateAfterPost(DataSet: TDataSet);
begin
  inherited;
  qryCalRotate.Refresh;
end;

procedure TfrmCalendar.gridRotateCALENDAR_ROTATE_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  org_CalendarSQL := frmPopupMain.qryCalendar.SQL.Text;
  frmPopupMain.qryCalendar.SQL.Text :=
    frmPopupMain.qryCalendar.SQL.Text + ' where hr_calendar.is_rotate <> 1 or hr_calendar.is_rotate is null ';
  frmPopupMain.qryCalendar.Open;
  InitPopupControl('dxlcCalendar', frmPopupMain , sender, 2.5, gridRotate);
  frmPopupMain.btnCalendar.Visible:=false; 
end;

procedure TfrmCalendar.gridRotateCALENDAR_ROTATE_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryCalendar,
    qryCalRotate,
    'CALENDAR_NO;CALENDAR_NAME',
    'CALENDAR_ROTATE;CALENDAR_ROTATE_NAME',
    'CALENDAR_NAME', Text);
  frmPopupMain.qryCalendar.close;
  frmPopupMain.qryCalendar.SQL.Text := org_CalendarSQL;
end;

procedure TfrmCalendar.qryEmpCalendar2BeforePost(DataSet: TDataSet);
var
  text : string;
begin
  inherited;

//  if qryEmpCalendar2EC_ID.IsNull then
  if VarIsNull(qryEmpCalendar2EC_ID.OldValue) then
  begin
    // insert
    qryEmpCalendar2.EditSQL.Text :=
    '  INSERT INTO HR_EMP_CALENDAR( ' +
    '        EMPLOYEE_NO,           ' +
    '        CALENDAR_NO,           ' +
    '        ASSIGN_DATE)           ' +
    '  VALUES (                     ' +
    '        :EMPLOYEE_NO,          ' +
    '        :CALENDAR_NO,          ' +
    '        :ASSIGN_DATE)          ' ;
    dmMain.DefOnBeforePost(qryEmpCalendar2);
  end
  else
  begin
    if VarIsNull(qryEmpCalendar2EC_ID.newValue) then
    begin
      qryEmpCalendar2.EditSQL.Text :=
      '  DELETE FROM HR_EMP_CALENDAR ' +
      '  WHERE                       ' +
      '   EC_ID = :OLD_EC_ID ';
      
      
    end
    else
    begin
      qryEmpCalendar2.EditSQL.Text :=
      '  UPDATE HR_EMP_CALENDAR SET     '+
      '    EMPLOYEE_NO = :EMPLOYEE_NO,  '+
      '    CALENDAR_NO = :CALENDAR_NO,  '+
      '    ASSIGN_DATE = :ASSIGN_DATE   '+
      '  WHERE                          '+
      '    EC_ID = :OLD_EC_ID           ';
      //dmMain.DefOnBeforeEdit(qryEmpCalendar2);
    end;  
  end;
end;

procedure TfrmCalendar.acClearCalendarExecute(Sender: TObject);
begin
  inherited;
  if (ShowMessageUnicode(9) <> mrYes) or
     (qryEmpCalendar2EC_ID.IsNull) then
    Abort
  else
  begin
    qryEmpCalendar2.Edit;
    qryEmpCalendar2EC_ID.Clear;
    qryEmpCalendar2CALENDAR_NO.Clear;
    qryEmpCalendar2ASSIGN_DATE.Clear;
    qryEmpCalendar2.Post;
    dmmain.LogDeleteDataProcess(qryEmpCalendar2);
  end;
end;

procedure TfrmCalendar.qryEmpCalendarHistoryAfterPost(DataSet: TDataSet);
begin
  inherited;
  qryEmpCalendarHistory.Refresh;
  gridEmpCalemdarHistory.FullExpand;
end;

procedure TfrmCalendar.gridEmpCalemdarHistoryFULL_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  org_empforselectSQL := frmPopupMain.qryEmpForSelect.SQL.Text;
  
  frmPopupMain.qryEmpForSelect.SQL.Text :=
      frmPopupMain.qryEmpForSelect.SQL.Text + ' and HR_MASK_EMPLOYEE.dept_no = :DEPT_NO ';
  frmPopupMain.qryEmpForSelect.ParamByName('DEPT_NO').Value :=
      qryOrgMapDEPT_NO.Value;

  //Edited by THUYPTP - 28/4/2009
  //frmPopupMain.qryEmpForSelect.Open;
  frmPopupMain.dximOptionChange(sender);
  //Het
  InitPopupControl('dxlcEmpForSelect', frmPopupMain, sender, 2.5,
    gridEmpCalemdarHistory);
end;

procedure TfrmCalendar.gridEmpCalemdarHistoryFULL_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryEmpForSelect,
    qryEmpCalendarHistory,
    'EMPLOYEE_NO;FULL_NAME',
    'EMPLOYEE_NO;FULL_NAME',
    'FULL_NAME', Text);
  frmPopupMain.qryEmpForSelect.Close;

  frmPopupMain.qryEmpForSelect.SQL.Text := org_empforselectSQL;
end;

procedure TfrmCalendar.gridEmpCalemdarHistoryCALENDAR_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryCalendar.Open;
    InitPopupControl('dxlcCalendar',frmPopupMain,sender,2,gridEmpCalemdarHistory);
  frmPopupMain.btnCalendar.Visible:=false;  
end;

procedure TfrmCalendar.gridEmpCalemdarHistoryCALENDAR_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryCalendar,qryEmpCalendarHistory,
             'CALENDAR_NO;CALENDAR_NAME','CALENDAR_NO;CALENDAR_NAME',
             'CALENDAR_NAME',Text);
  frmPopupMain.qryCalendar.Close;
  frmPopupMain.btnCalendar.Visible:=true;
end;

procedure TfrmCalendar.gridEmpCalemdarHistoryEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsEmpCalendarHistory);
end;

procedure TfrmCalendar.qryEmpCalendarHistoryError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  inherited;
  if ErrorMessage.strings[4] = 'PROTECTED_DATA' then
    ShowMessageUnicode(200);
  abort;  
end;

procedure TfrmCalendar.qryEmpCalendarHistoryAfterOpen(DataSet: TDataSet);
begin
  inherited;
  gridEmpCalemdarHistory.FullExpand;
end;

procedure TfrmCalendar.qryCalendarNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryCalendarSTYLE.Value := 0;
end;

procedure TfrmCalendar.qryWeekTimeAfterPost(DataSet: TDataSet);
begin
  inherited;
  gridLichgioTrongtuan.FullExpand;
end;

procedure TfrmCalendar.qryWeekTimeNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryWeekTimeWEEK_START_DATE.Value:=0;
end;

end.
