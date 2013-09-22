unit MainDM;

interface

uses
  SysUtils, Classes, IB_Components, DB, IBODataset, dxDBGrid, Dialogs, Messages,
  Windows, Controls, Variants, Registry, TntForms, Forms, IB, ImgList,
  DateUtils, IB_StoredProc, ActnList, DBActns, XPStyleActnCtrls, ActnMan, //LicenseEngine,
  jpeg, GIFImage, Graphics, ElCaption, IB_Session, ElPopBtn,
  IB_Events, dxTL, dxLayoutLookAndFeels, dxCntner, dxExEdtr, // sspInterfaceCaption,
  dxDBTL, ComCtrls,  ppTypes,hhcomponent,
  //ThuyPTP
  //LicenseEngine,
  //
  ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  dxDBELib, dxDBInRw,
  dxBar, TypInfo, dxDBCtrl, dxGrClms, dxLayoutControl, dxmdaset,
  ElPgCtl
  , dxsbar, htmlhlp,
  WinSock,
  ScktComp, Sockets, ElUnicodeStrings, IBOServices, IBOConnectionInfo, SimpleSecurityLibrary,SSP_VersionInfo;

const
  REGISTRY_ROOT=CUSTOMER_ROOT;
  S_CONST_1 = 4;
  S_CONST_2 = 6;
  S_STARTKEY = 2010;
  REGISTRY_USER = REGISTRY_ROOT + '\LastUser\';
  REGISTRY_FILTER = REGISTRY_ROOT + '\';
  REGISTRY_DB_PATH = REGISTRY_ROOT + '\Database\';
  REGISTRY_OTHERS = REGISTRY_ROOT + '\Others\';
  REG_PATH = REGISTRY_ROOT + '\UIConfig\';

  WeekVN: array[1..7] of WideString = ('Thứ 2', 'Thứ 3', 'Thứ 4',
    'Thứ 5',
    'Thứ 6', 'Thứ 7', 'Chủ nhật');
  WeekEng: array[1..7] of string = ('Monday', 'Tuesday', 'Wednesday',
    'Thursday',
    'Friday', 'Saturday', 'Sunday');

  MonthVN: array[1..12] of WideString = ('Tháng Một', 'Tháng Hai',
    'Tháng Ba', 'Tháng Tư',
    'Tháng Năm', 'Tháng Sáu', 'Tháng Bảy', 'Tháng Tám', 'Tháng Chín',
    'Tháng Mười', 'Tháng Mười một', 'Tháng Mười hai');
  MonthEng: array[1..12] of string = ('January', 'February', 'March', 'April',
    'May', 'June', 'July', 'August', 'September', 'October', 'November',
    'December');

  Right_Min = 1;
  Right_Max = 500;
type
  TPermission = (ptMFEATURE = 0, ptMREPORT = 1, ptMREAD = 2, ptMINSERT = 4,
    ptMEDIT = 8, ptMDELETE = 16, ptMMODULID = 32);
  TPermissionMask = set of TPermission;
  TSystemConfig = class(TObject)
  public
    User, Username: Widestring;
    ShowFilter, ShowSummary, ShowGridLine, ShowGroup: Boolean;
    UserRight: WideString;
    DatabasePath: WideString;
    LastAccess: TDateTime;
    AccessCount: Integer;
    Try_Connect_Count: integer;
    Connection_id: Integer;
    IP_Addr: string;
    Host_Name: string;

    FloatFormat: string;
    RoundNumber: integer;
    DateFormat, TimeFormat, DateTimeFormat: string;

    FeaturePermission: array[Right_Min..Right_Max] of Integer;
    ReportPermission: array[Right_Min..Right_Max] of Integer;
    WindowsStyle: string;
    SubSystemID: integer;
    LookAndFeelID: WideString;
    Language: integer;
    AdminRight: boolean;
  end;
  TUIConfig = class(TObject)
  public
    Splitter_ShowSnapButton: boolean;
    Splitter_DefaultSize: integer;
    Splitter_BevelInner: TBevelCut;
    Splitter_UseXPTheme: boolean;

    Button_BevelKind: TBevelKind;
    Button_ThinFrame: boolean;
    Button_MoneyFlat: boolean;
    Button_MoneyActiveColor: integer;
    Button_MoneyInActiveColor: integer;
    Button_MoneyDownColor: integer;
    Button_Flat: boolean;
    Button_UseXPTheme: boolean;
    Button_Color: integer;

    Page_Flat: boolean;
    Page_Color: integer;
    Page_FlatTabBorderColor: integer;
    Page_FontColor: integer;
    Page_HotTrackFontColor: integer;
    Page_FontSize: integer;
    Page_FontStyle: TFontStyles;
    Page_HotTrack: boolean;
    Page_ActiveTabColor: integer;
    Page_InActiveTabColor: integer;
    Page_MultiLine: boolean;
    Page_ShowBorder: boolean;
    Page_TabBkColor: integer;
    Page_TabPosition: TElTabPosition;
    Page_Style: TElTabStyle;
    Page_UseXPTheme: boolean;
    Page_VerticalSideCaption: boolean;

    SideBar_BkGroundBeginColor: integer;
    SideBar_BkGroundEndColor: integer;
    SideBar_BkGroundFillStyle: TdxSideBarFillStyle;
    SideBar_BorderStyle: TBorderStyle;
    SideBar_CanSelected: boolean;
    SideBar_GroupFontColor: integer;
    SideBar_GroupFontSize: integer;
    SideBar_GroupFontStyle: TFontStyles;
    SideBar_ItemFontColor: integer;
    SideBar_ItemFontSize: integer;
    SideBar_ItemFontStyle: TFontStyles;
    SideBar_PaintStyle: TdxsbPaintStyle;
    SideBar_ShowGroup: boolean;
    SideBar_Color: integer;

    Grid_ArrowColor: integer;
    Grid_AutoSearchColor: integer;
    Grid_AutoSearchTextColor: integer;
    Grid_BandColor: integer;
    Grid_BandFontColor: integer;
    Grid_BandFontSize: integer;
    Grid_BandFontStyle: TFontStyles;
    Grid_BorderStyle: TBorderStyle;
    Grid_Color: integer;
    Grid_FixedBandLineColor: integer;
    Grid_FixedBandLineWidth: integer;
    Grid_FontColor: integer;
    Grid_FontSize: integer;
    Grid_FontStyle: TFontStyles;
    Grid_LineColor: integer;
    Grid_IndicatorWidth: integer;
    Grid_GroupNodeColor: integer;
    Grid_GroupPanelColor: integer;
    Grid_GroupPanelFontColor: integer;
    Grid_HeaderColor: integer;
    Grid_HeaderFontColor: integer;
    Grid_HeaderFontSize: integer;
    Grid_HeaderFontStyle: TFontStyles;
    Grid_LookAndFeel: TdxLookAndFeel;
    Grid_OptionBehavior: TdxDBGridOptionsBehavior;
    Grid_OptionDB: TdxDBGridOptionsDB;
    Grid_OptionView: TdxDBGridOptionsView;
    Grid_ShowGrid: boolean;
    Grid_ShowHeader: boolean;
    Grid_ShowNewItemArrow: boolean;
    Grid_ShowRowFooter: boolean;
    Grid_ShowSummaryFooter: boolean;
    Grid_ShowBand: boolean;
    Grid_ShowGroupPanel: boolean;
    Grid_StoreIniFile: boolean;
    Grid_HighLightColor: integer;
    Grid_HighLightTextColor: integer;

    Tree_OptionBehavior: TdxDBTreeListOptionsBehavior;
    Tree_OptionDB: TdxDBTreeListOptionsDB;
    Tree_OptionView: TdxDBTreeListOptionsView;

    LookAndFeel_GroupCaptionColor: integer;
    LookAndFeel_GroupCaptionFontSize: integer;
    LookAndFeel_GroupCaptionFontStyle: TFontStyles;
    LookAndFeel_GroupCaptionTextColor: integer;
    LookAndFeel_GroupColor: integer;
    LookAndFeel_GroupFrameColor: integer;
    LookAndFeel_GroupFrameWidth: integer;
    LookAndFeel_GroupOffsetCaption: boolean;
    LookAndFeel_GroupOffsetItem: boolean;
    LookAndFeel_ItemCaptionFontColor: integer;
    LookAndFeel_ItemCaptionFontSize: integer;
    LookAndFeel_ItemCaptionFontStyle: TFontStyles;
    LookAndFeel_ItemCaptionTextColor: integer;
    LookAndFeel_OffsetControl_H: integer;
    LookAndFeel_OffsetControl_V: integer;
    LookAndFeel_OffsetItem_Offset: integer;
    LookAndFeel_OffsetItem_ArreaH: integer;
    LookAndFeel_OffsetItem_ArreaV: integer;
    LookAndFeel_OffsetRoot_ArreaH: integer;
    LookAndFeel_OffsetRoot_ArreaV: integer;
    LookAndFeel_Edge: TdxEditEdges;
    LookAndFeel_BorderColor: integer;
    LookAndFeel_BorderStyle: TdxEditBorderStyle;
    LookAndFeel_ButtonStyle: TdxEditButtonViewStyle;
    LookAndFeel_ButtonTransparence: TdxEditButtonTransparence;
    LookAndFeel_HotTrack: boolean;
    LookAndFeel_Shadow: boolean;

    Required_Field_Color: integer;
    Read_Only_Color: integer;
    App_Path: string;

    constructor Create;
  end;
  TSSPLookup = class(TObject)
  public
    LK_Sql: string;
    LK_id_dest_field: string;
    LK_value_dest_field: string;
    LK_id_list: TElWideStrings;
    LK_value_list: TElWideStrings;
    LK_control: TComponent;
    LK_FormClass: TFormClass;
    F_qry: TIBOQuery;
    F_ds: TDataSource;
    constructor Create(control: TComponent; id_dest_field, value_dest_field,
      sql: string; formClass: TFormClass = nil; masterLookup: TObject = nil);
    destructor Destroy;
    procedure InitLookupList;
  end;

  TdmMain = class(TDataModule)
    connMain: TIB_Connection;
    trCommited: TIB_Transaction;
    trConcurency: TIB_Transaction;
    imgWordModul: TImageList;
    qryAccessHistory: TIBOQuery;
    MainEventCenter: TIB_Events;
    qryFeaturePermissions: TIBOQuery;
    qryReportPermissions: TIBOQuery;
    qryFeaturePermissionsFEATURE_ID: TIntegerField;
    qryFeaturePermissionsREAD_RIGHT: TIntegerField;
    qryFeaturePermissionsINSERT_RIGHT: TIntegerField;
    qryFeaturePermissionsUPDATE_RIGHT: TIntegerField;
    qryFeaturePermissionsDELETE_RIGHT: TIntegerField;
    qryReportPermissionsREPORT_ID: TIntegerField;
    qryReportPermissionsREAD_RIGHT: TIntegerField;
    qryReportPermissionsINSERT_RIGHT: TIntegerField;
    qryReportPermissionsUPDATE_RIGHT: TIntegerField;
    qryReportPermissionsDELETE_RIGHT: TIntegerField;
    qryFormatOption: TIBOQuery;
    dsOrgInfo: TDataSource;
    OrgInfoPipeLine: TppDBPipeline;
    imgloReport: TImageList;
    qryOrgInfo: TIBOQuery;
    qryOrgInfoSUPER_ORG: TWideStringField;
    qryOrgInfoORG_NAME: TWideStringField;
    qryOrgInfoORG_SHORT_NAME: TWideStringField;
    qryOrgInfoORG_LOGO: TBlobField;
    qryOrgInfoIMG_TYPE: TWideStringField;
    qryOrgInfoPHONE_NUMBER: TWideStringField;
    qryOrgInfoFAX_NUMBER: TWideStringField;
    qryOrgInfoEMAIL: TWideStringField;
    qryOrgInfoWEBSITE: TWideStringField;
    qryOrgInfoORG_ADDRESS: TWideStringField;
    qryOrgInfoORG_TYPE: TWideStringField;
    qryOrgInfoORG_DOMAIN: TWideStringField;
    qryOrgInfoDIRECTOR: TWideStringField;
    qryOrgInfoCHIEF_ACCOUNTANT: TWideStringField;
    qryOrgInfoGENERAL_ACCOUNTANT: TWideStringField;
    qryOrgInfoACCOUNTANT: TWideStringField;
    qryOrgInfoCASHIER: TWideStringField;
    qryOrgInfoSTORE_KEEPER: TWideStringField;
    qryOrgInfoCHIEF_HR: TWideStringField;
    qryOrgInfoORG_TRADE_NAME: TWideStringField;
    qryOrgInfoDEPUTY_DIRECTOR: TWideStringField;
    qryOrgInfoSYS_INFO_ID: TSmallintField;
    qryOrgInfoBANK_NAME: TWideStringField;
    qryOrgInfoACCOUNT_CODE: TWideStringField;
    qryOrgInfoTAX_CODE: TWideStringField;
    qryOrgInfoESTABLISHED_DATE: TDateField;
    qryOrgInfoFOLLOWING_ORDER: TWideStringField;
    qryFormatOptionOPTION_ID: TSmallintField;
    qryFormatOptionDATE_FORMAT: TWideStringField;
    qryFormatOptionTIME_FORMAT: TWideStringField;
    qryFormatOptionROUND_NUMBER: TSmallintField;
    qryFormatOptionNUMERIC_FORMAT: TWideStringField;
    imglDeptTree: TImageList;
    qryFormatOptionDATE_TIME_FORMAT: TWideStringField;
    qryMessageList: TIBOQuery;
    qryMessageListMESSAGE_ID: TIntegerField;
    qryMessageListMESSAGE_VN: TWideStringField;
    qryMessageListTITLE_VN: TWideStringField;
    qryMessageListMESSAGE_ENG: TWideStringField;
    qryMessageListTITLE_ENG: TWideStringField;
    qryMessageListIMAGE_ID: TIntegerField;
    qryMessageListMESSAGE_DEFAULT: TWideStringField;
    qryMessageListTITLE_DEFAULT: TWideStringField;
    imgAction: TImageList;
    qryFormatOptionTHOUSAND_SEPARATOR: TWideStringField;
    qryFormatOptionDECIMAL_SEPARATOR: TWideStringField;
    imglGender: TImageList;
    qryIDFormat: TIBOQuery;
    qryIDFormatFORMAT_ID: TSmallintField;
    qryIDFormatFORMAT_NAME: TWideStringField;
    qryIDFormatID_NAME: TWideStringField;
    qryIDFormatCURRENT_VALUE: TIntegerField;
    StyleController: TdxCheckEditStyleController;
    qryUIConfig: TIBOQuery;
    dlgOpen: TOpenDialog;
    qryMsgList: TIBOQuery;
    qryMsgListMESSAGE_ID: TSmallintField;
    qryMsgListMESSAGE_ENG: TWideStringField;
    qryMsgListMESSAGE_VN: TWideStringField;
    qryMsgListTITLE_VN: TWideStringField;
    qryMsgListTITLE_ENG: TWideStringField;
    qryMsgListIMAGE_ID: TSmallintField;
    qryMsgListMESSAGE_DEFAULT: TWideStringField;
    qryMsgListTITLE_DEFAULT: TWideStringField;
    dsMsgList: TDataSource;
    qryCaption: TIBOQuery;
    ppReport1: TppReport;
    dlgSave: TSaveDialog;
    qryCaptionFORM_NAME: TWideStringField;
    qryCaptionCONTROL_NAME: TWideStringField;
    qryCaptionCAPTION_VN: TWideStringField;
    qryCaptionCAPTION_ENG: TWideStringField;
    qryCaptionCAPTION_DEFAULT: TWideStringField;
    qryCaptionPARENT_CONTROL: TWideStringField;
    qryCaptionCONTROL_TYPE: TWideStringField;
    qryCaptionHINT_VN: TWideStringField;
    qryCaptionHINT_ENG: TWideStringField;
    qryCaptionHINT_DEFAULT: TWideStringField;
    qryAuthority: TIBOQuery;
    qryAuthorityFORM_NAME: TWideStringField;
    qryAuthorityCOMP_NAME: TWideStringField;
    qryAuthorityPARENT_COMP: TWideStringField;
    qryAuthorityCOMP_CLASS: TWideStringField;
    qryAuthoritySYSTEM_ID: TSmallintField;
    qryAuthorityFEATURE_ID: TSmallintField;
    qryAuthorityCHECK_VIEW: TSmallintField;
    qryAuthorityCHECK_EDIT: TSmallintField;
    qryAuthorityCHECK_INSERT: TSmallintField;
    qryAuthorityCHECK_DELETE: TSmallintField;
    qryAuthorityCOMP_TITLE: TWideStringField;
    qryAuthorityFEATURENAME: TWideStringField;
    qryHelpIndex: TIBOQuery;
    dsHelpIndex: TDataSource;
    HtmlHelp1: THtmlHelp;
    qryHelpIndexFORM_NAME: TWideStringField;
    qryHelpIndexHELP_INDEX: TWideStringField;
    qryLogConfig: TIBOQuery;
    dsLogConfig: TDataSource;
    qryLogData: TIBOQuery;
    qryLogDataCONNECTION_ID: TIntegerField;
    qryLogDataTIME_ID: TDateTimeField;
    qryLogDataUSER_ID: TWideStringField;
    qryLogDataSYSTEM_ID: TIntegerField;
    qryLogDataFUNCTION_ID: TWideStringField;
    qryLogDataLOG_DATA: TWideStringField;
    qryLogConfigFORM_NAME: TWideStringField;
    qryLogConfigDATASET_NAME: TWideStringField;
    qryLogConfigLOG_INSERT_FORMAT: TWideStringField;
    qryLogConfigLOG_EDIT_FORMAT: TWideStringField;
    qryLogConfigLOG_DELETE_FORMAT: TWideStringField;
    qryLogConfigFIELD_LIST: TWideStringField;
    qryLogConfigPARAM_LIST: TWideStringField;
    qryLogConfigFEATURE_ID: TSmallintField;
    qryLogConfigSYSTEM_ID: TSmallintField;
    qryOrgInfoDEPUTY_DIRECTOR_2: TWideStringField;
    qryOrgInfoDEPUTY_DIRECTOR_3: TWideStringField;
    dxLayoutLookAndFeelListGobal: TdxLayoutLookAndFeelList;
    StyleWeb: TdxLayoutWebLookAndFeel;
    qryAccessHistoryCONNECTION_ID: TWideStringField;
    qryAccessHistoryHOST_NAME: TWideStringField;
    qryAccessHistoryUSER_ID: TWideStringField;
    qryAccessHistoryUSER_NAME: TWideStringField;
    qryAccessHistoryIS_CONNECTING: TSmallintField;
    qryAccessHistoryTIME_LOGGIN: TDateTimeField;
    qryExecute: TIBOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    SmallintField1: TSmallintField;
    DateTimeField1: TDateTimeField;
    imgMenuList: TImageList;
    qryLookAndFeel: TIBOQuery;
    qryLookAndFeelLF_ID: TWideStringField;
    qryLookAndFeelLF_TITLE: TWideStringField;
    qryThongTinDoanhNghiep: TIBOQuery;
    dsThongTinDoanhNghiep: TDataSource;
    qryThongTinDoanhNghiepORG_NAME: TWideStringField;
    qryThongTinDoanhNghiepORG_LOGO: TBlobField;
    qryThongTinDoanhNghiepORG_ADDRESS: TWideStringField;
    qryThongTinDoanhNghiepORG_PHONE: TWideStringField;
    qryThongTinDoanhNghiepORG_EMAIL: TWideStringField;
    qryThongTinDoanhNghiepORG_FAX: TWideStringField;
    qryThongTinDoanhNghiepIMG_TYPE: TWideStringField;
    qryThongTinDoanhNghiepWEBSITE: TWideStringField;
    //

    procedure DefOnGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DefOnGridMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DefOnTreeMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DefOnTreeListCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
      var AText: WideString; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);

    procedure DefOnAssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure DefOnAssignPictureForGrid(Sender: TObject;
      var Picture: TPicture);
    procedure DefOnGetGraphicClassForGrid(Sender: TObject;
      Node: TdxTreeListNode; var GraphicClass: TGraphicClass);
    procedure DefOnGetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure DefOnFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    //===============================================
    procedure DefOnBeforeOpen(DataSet: TDataSet);
    //========= tyntb ================================//
    procedure DefOnBeforeMultiDelete(DataSet: TDataSet);
    procedure DefOnBeforeDelete(DataSet: TDataSet);
    procedure DefOnBeforeEdit(DataSet: TDataSet);
    procedure DefOnBeforeInsert(DataSet: TDataSet);
    procedure DefOnBeforePost(DataSet: TDataSet);
    procedure DefOnAfterPost(DataSet: TDataSet);
    procedure DefOnAfterDelete(DataSet: TDataSet);
    procedure DefOnAfterInsert(DataSet: TDataSet);
    procedure ExecuteSQL(qry: TIBOQuery);

    //==============================================
    procedure DefOnDeptListGetSelectedIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure DefOnDeptListGetImageIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure DefOnDatasetError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure DefOnDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure DefOnPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    function ProcessConnectionLost(Sender: TObject): boolean;
    procedure InitData;
    procedure OnConnectionError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure TerminateApp(need_alert: boolean = false);

    procedure DataModuleCreate(Sender: TObject);
    function InitConnection: boolean;
    function MsgChangeData(ds: TDataSource; qry: TIBOQuery; confirm: boolean =
      true): boolean;
    function MsgChangeDataSource(ds: TDataSource; confirm: boolean = true):
      boolean;
    procedure DeleteExecute(qry: TIBOQuery);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryCaptionCAPTION_VNChange(Sender: TField);

    procedure DefOnBeforePrint(isprinted: boolean; qryReport: TIBOQuery; form:
      TComponent);
    function DefOnPrepareReport(root_dir: string; template_name: string;
      rptReport: TppReport): boolean;
    procedure LogInsertDataProcess(qry: TIBOQuery);
    procedure LogEditDataProcess(qry: TIBOQuery);
    procedure LogDeleteDataProcess(qry: TIBOQuery);
    procedure LogDataProcess(template: string; qry: TIBOQuery; action_type:
      string);
    function CreateLogString(template: string; qry: TIBOQuery): string;

    procedure WriteLog(log_data: WideString; qry: TIBOQuery; action_type:
      string);
    procedure qryAccessHistoryBeforeDelete(DataSet: TDataSet);
    procedure qryAccessHistoryAfterDelete(DataSet: TDataSet);
    procedure MainEventCenterEventAlert(Sender: TObject;
      AEventName: string; AEventCount: Integer);
    procedure qryAccessHistoryBeforePost(DataSet: TDataSet);
    procedure DefOnFILENAMEChange(Sender: TField);
    procedure MainEventCenterError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
  private
    old_transaction: TIB_Transaction;

  public
    connection_state: string;
    property Conn_State: string read connection_state;
    // du lieu he thong
    //=========================
    procedure SetTransactionConsistency;
    procedure SetTransactionAutoCommit;
    procedure SetTransactionConcurrency;
    procedure BackPreviousTransaction;
    procedure CommitTransaction;
    procedure RollbackTransaction;
    procedure LoadFormatConfig;
    procedure LoadUIConfig;
    procedure LoadLookAndFeel;
    procedure LoadGrid;
    procedure LoadUIControl;

    function GetIPFromHost(var HostName, IPaddr, WSAErr: string): Boolean;
    function GenerateKeyData(ID_KEY: integer): WideString;
    procedure IncreaseKeyData(ID_KEY: integer; step: integer = 1);
    procedure DatasetLoadFile(sender: TObject; AbsoluteIndex: integer;
      FIELD_FILE_NAME: string = 'FILE_NAME'; FIELD_FILE_CONTENT: string =
      'FILE_CONTENT');
    //=============Apply Interface==============
    procedure ScanForm(sender: TObject);
    procedure SetCaption(AControl: TComponent; act_flag: integer = 0);
    procedure DefineMessage;
    procedure LoadCaption(AControl: TComponent; bar: TProgressBar = nil);
    function GetMessage(MsgID: Smallint; var MsgText, MsgTitle: WIdeString; var
      MsgType: Integer): WideString;
    procedure OnppReadVNDByVietnamese(Sender: TObject;
      DisplayFormat: string; DataType: TppDataType; Value: Variant;
      var AText: WideString);
    procedure OnppReadUSDByEnglish(Sender: TObject;
      DisplayFormat: string; DataType: TppDataType; Value: Variant;
      var AText: WideString);
    procedure OnppReadVNDByEnglish(Sender: TObject;
      DisplayFormat: string; DataType: TppDataType; Value: Variant;
      var AText: WideString);
    procedure OnppReadUSDByVietnamese(Sender: TObject;
      DisplayFormat: string; DataType: TppDataType; Value: Variant;
      var AText: WideString);
  end;

procedure ShowHelpContext(index: string);
procedure AuthorityConfig(AOwner: TComponent);
procedure LogConfig(AOwner: TComponent);

procedure ChangeFormat(AComp: TComponent);
procedure InitDataset(var ADataset: TIBODataset);
function CheckRequiredFields(ADataSet: TDataSet): boolean;

function GetFormUseDataset(qry: TDataset): TComponent;
procedure ShowErrors(DataSet: TDataSet; E: EDatabaseError; AMessage: string;
  ASource: smallint);
function ShowMessageUnicode(MsgID: integer; Detail: WideString = ''): Integer;
overload;
function ShowMessageUnicode(Msg: WideString; AMsgType: Integer = 0; Detail:
  WideString = ''): Integer; overload;
function MsgUnicode(Msg, Title: Widestring; AMsgType: Integer = 0; AMsgIcon:
  Integer
  = 0): Integer;
procedure SSP_HandleException(E: Exception);
procedure CancelAllDetailDataset(ds: TDatasource; AOwner: TComponent);

procedure AdaptToOS(AControl: TElFormCaption);
function CheckVNUnicode(s: Variant): boolean;
function CheckVNUnicode_Only(s: Variant): boolean;

function GetWindowStyle: string;
function GetIntFromSetPermission(mask: TPermissionMask): integer;
function CheckPermission(com: TComponent; mask: TPermissionMask = []): boolean;
function CheckPermission_InSidebar(com: TdxSidebar; mask: TPermissionMask = []): boolean;

procedure ApplyPermission(com: TComponent; state: boolean);
procedure LoadPermissionList;
procedure SetPermision(com: TComponent; modul_id: integer; mask: TPermissionMask
  = [ptMREAD, ptMINSERT, ptMEDIT, ptMDELETE]);
procedure SetPermision_InSidebarItem(com: TdxSidebarItem; modul_id: integer; mask:
  TPermissionMask = [ptMREAD, ptMINSERT, ptMEDIT, ptMDELETE]);

procedure SetPermissionInForm(form: TComponent);
procedure SetLogConfig(owner: TComponent);

procedure SetHelpIndexInForm(form: TForm);
procedure CheckPermissionForm(com: TComponent);

procedure ApplyOption(control: TComponent);
procedure Apply_DB_EditControl(com: TComponent);
procedure ApplyShowFilter(control: TControl);
procedure ApplyShowGridLine(control: TControl);
procedure ApplyShowFooter(control: TControl);
procedure ApplyFieldFormat(AControl: TControl);
procedure CustomExpand(tl: TdxDBTreeList);
//=====Apply tung component =================
procedure Apply_Splitter(com: TComponent);
procedure Apply_Inspector(com: TComponent);
procedure Apply_Grid(com: TComponent);
procedure Apply_TreeList(com: TComponent);
procedure Apply_LookAndFeel(com: TComponent);
procedure Apply_Button(com: TComponent);
procedure Apply_SideBar(com: TComponent);
procedure Apply_Page(com: TComponent);
procedure Apply_LookAndFeelItem(com: TComponent);
procedure Apply_Query(com: TComponent);
procedure Apply_MemData(com: TComponent);
procedure Apply_GraphicEdit(com: TComponent);
procedure Apply_FloatField(com: TComponent);
procedure Apply_FormCaption(com: TComponent);
procedure Apply_StyleController(com: TComponent);

// ==== Cua cu Khiem=========================
procedure HintBox(AOwner: TComponent; X, Y: Integer; Promt, Title: WideString;
  IConID: integer = 0); overload;
procedure HintBox(AOwner: TComponent; Sender: TObject; Promt, Title: WideString;
  IConID: integer = 0); overload;
procedure HintBox(DBMsgId: Integer; AOwner: TComponent; Sender: TObject);
overload;
procedure HintBox(AOwner: TComponent; X, Y: Integer; DBMsgID: integer);
overload;

function ShowHintBoxInComponent(comp: TComponent; Dataset: TDataSet; FieldName:
  string; MsgID: integer): boolean;
function ShowHintBoxInTreeGrid(ATreeGrid: TCustomdxDBTreeListControl;
  ANode: TdxTreeListNode; FieldName: string; MsgID: integer): boolean;
//===========================================
procedure SetNullLink(DataSet: TDataset; MasterFieldName, DetailFieldName:
  string);
procedure CancelDataset(dataset: TDataset);
//===========================================
var
  sysConfig: TSystemConfig;
  sysUIConfig: TUIConfig;
  sysSecurity: TSecurity;
  dmMain: TdmMain;
implementation

uses SSP_Library, Login, SSP_Menus, MsgDlgForm, MainUnit,
  HintBoxDlg, ToolbarFrame,EmpInfoDataModule, EmployeeListForm,
  ListBaseFrm, ListManageForm,  ppCtrls,WageManagerForm,
  ElSplit, ExtCtrls, ElPanel, ElCheckItemGrp, dxDBTLCl, ElStatBar,
  RecruitmentManagerForm, TrainingManagerForm, 
  ShellAPI, MsgListForm, CaptionListForm, dxEdLib, Math, dxDBInsp,
  dxInspct, dxGrClEx, dxInspRw, AuthorityConfigForm, dxBarExtItems,
  LogConfigForm, StrUtils, SSP_Compiler, BaseFrm, RequestOutForm,
  OrganizationMapForm, BAOHIEM_ChinhSachForm;
{$R *.dfm}


//==========================================

constructor TSSPLookup.Create(control: TComponent; id_dest_field,
  value_dest_field, sql: string; formClass: TFormClass; masterLookup: TObject);
begin
  inherited Create;
  LK_id_list := TElWideStringList.Create;
  LK_value_list := TElWideStringList.Create;
  LK_control := control;
  LK_id_dest_field := id_dest_field;
  LK_value_dest_field := value_dest_field;
  LK_Sql := sql;
  if (LK_Control is TdxDBGridMRUColumn) then
  begin
    if not (formClass = nil) then
    begin
      LK_FormClass := formClass;
      TdxDBGridMRUColumn(LK_Control).ShowEllipsis := true;
    end
    else
    begin
      TdxDBGridMRUColumn(LK_Control).ShowEllipsis := false;
    end;
  end
  else
  if (LK_Control is TdxDBMRUEdit) then
  begin
    if not (formClass = nil) then
    begin
      LK_FormClass := formClass;
      TdxDBMRUEdit(LK_Control).ShowEllipsis := true;
    end
    else
    begin
      TdxDBMRUEdit(LK_Control).ShowEllipsis := false;
    end;
  end
  else
  if (LK_Control is TdxMRUEdit) then
  begin
    if not (formClass = nil) then
    begin
      LK_FormClass := formClass;
      TdxMRUEdit(LK_Control).ShowEllipsis := true;
    end
    else
    begin
      TdxDBMRUEdit(LK_Control).ShowEllipsis := false;
    end;
  end
  else
  if (LK_Control is TdxDBTreeListMRUColumn) then
  begin
    if not (formClass = nil) then
    begin
      LK_FormClass := formClass;
      TdxDBTreeListMRUColumn(LK_Control).ShowEllipsis := true;
    end
    else
    begin
      TdxDBTreeListMRUColumn(LK_Control).ShowEllipsis := false;
    end;
  end;;

  F_qry := TIBOQuery.Create(Application);
  F_qry.IB_Connection := dmMain.connMain;
  F_qry.IB_Transaction := dmMain.trCommited;
  F_qry.Unicode := true;
  F_ds := TDataSource.Create(Application);
  F_ds.DataSet := F_qry;
  if Assigned(masterLookup) then
  begin
    if (masterLookup is TDataSource) then
      F_qry.DataSource := TDataSource(masterLookup)
    else if (masterLookup is TSSPLookup) then
      F_qry.DataSource := TSSPLookup(masterLookup).F_ds;
  end;
  InitLookupList;
end;

destructor TSSPLookup.Destroy;
begin
  LK_id_list.Free;
  LK_value_list.Free;
  if F_qry.Active then
    F_qry.Close;
  F_qry.Free;
  F_ds.Free;

  inherited Destroy;
end;

procedure TSSPLookup.InitLookupList;
var qry: TIBOQuery;
begin
  //Edited by THUYPTP - 21/05/2009
{  qry := TIBOQuery.Create(Application);
  qry.IB_Connection := dmMain.connMain;
  qry.Unicode := true;
  qry.SQL.Text := LK_sql;
  LK_id_list.Clear;
  LK_value_list.Clear;
  try
    qry.Prepare;
    if not qry.Prepared then
    begin
      ShowMessage('Error at: ' + qry.SQL.Text);
      Exit;
    end;
  except
    ShowMessage('Error at: ' + qry.SQL.Text);
    Exit;
  end;
  qry.Open;
  if not qry.IsEmpty then
  begin
    while not qry.Eof do
    begin
      LK_id_list.Add(VarToWideStr(qry.Fields[0].Value));
      LK_value_list.Add(VarToWideStr(qry.Fields[1].Value));
      qry.Next;
    end;
  end;
  qry.Close;
  qry.Free;
  if (LK_control is TdxDBGridMRUColumn) then
  begin
    (LK_control as TdxDBGridMRUColumn).Items.Text := LK_value_list.Text;
  end
  else
  if (LK_control is TdxDBMRUEdit) then
  begin
    (LK_control as TdxDBMRUEdit).Items.Text := LK_value_list.Text;
  end
  else
  if (LK_control is TdxMRUEdit) then
  begin
    (LK_control as TdxMRUEdit).Items.Text := LK_value_list.Text;
  end }
  if not Assigned(F_qry) then
    ShowMessage('Error...');
  if F_qry.Active then
    F_qry.Close;
  if F_qry.SQL.Text <> LK_sql then
    F_qry.SQL.Text := LK_sql;
  LK_id_list.Clear;
  LK_value_list.Clear;
  try
    F_qry.Prepare;
    if not F_qry.Prepared then
    begin
      ShowMessage('Error at: ' + F_qry.SQL.Text);
      Exit;
    end;
  except
    ShowMessage('Error at: ' + F_qry.SQL.Text);
    Exit;
  end;
  F_qry.Open;
  if not F_qry.IsEmpty then
  begin
    while not F_qry.Eof do
    begin
      LK_id_list.Add(VarToWideStr(F_qry.Fields[0].Value));
      if LK_id_dest_field = LK_value_dest_field then
        LK_value_list.Add(VarToWideStr(F_qry.Fields[0].Value))
      else
        LK_value_list.Add(VarToWideStr(F_qry.Fields[1].Value));
      F_qry.Next;
    end;
  end;

  if (LK_control is TdxDBGridMRUColumn) then
  begin
    if (LK_control as TdxDBGridMRUColumn).Items.Text <> LK_value_list.Text then
    begin
      (LK_control as TdxDBGridMRUColumn).Items.Clear;
      (LK_control as TdxDBGridMRUColumn).Items.Text := LK_value_list.Text;
      (LK_control as TdxDBGridMRUColumn).TreeList.HideEditor;
      (LK_control as TdxDBGridMRUColumn).TreeList.ShowEditor;
    end;
  end
  else if (LK_control is TdxDBMRUEdit) then
  begin
    if (LK_control as TdxDBMRUEdit).Items.Text <> LK_value_list.Text then
      (LK_control as TdxDBMRUEdit).Items.Text := LK_value_list.Text;
  end
  else if (LK_control is TdxMRUEdit) then
  begin
    if (LK_control as TdxMRUEdit).Items.Text <> LK_value_list.Text then
      (LK_control as TdxMRUEdit).Items.Text := LK_value_list.Text;
  end

end;
//==============================================================================

constructor TUIConfig.Create;
begin
  inherited Create;
  Grid_OptionBehavior := [edgoAutoSort, edgoDragExpand, edgoEnterShowEditor,
    edgoImmediateEditor, edgoTabThrough, edgoVertThrough];
  Grid_OptionDB := [edgoCancelOnExit, edgoCanDelete, edgoCanInsert,
    edgoCanNavigation,
    edgoConfirmDelete, edgoUseBookmarks];
  Grid_OptionView := [edgoBandHeaderWidth, edgoUseBitmap];

  Tree_OptionBehavior := [etoAutoSort, etoDragExpand, etoEnterShowEditor,
    etoImmediateEditor, etoTabThrough, etoVertThrough];
  Tree_OptionDB := [etoCancelOnExit, etoCanDelete, etoCanInsert,
    etoCanNavigation,
    etoConfirmDelete, etoUseBookmarks];
  Tree_OptionView := [etoBandHeaderWidth, etoUseBitmap];

  App_Path := ExtractFilePath(Application.ExeName);
end;

//==========================================

procedure CustomExpand(tl: TdxDBTreeList);
begin
  {  if tl.Count>1 then
      tl.FullCollapse;
    for i := 0 to tl.Count - 1 do
      tl.Items[i].Expand(false);
  }
  tl.FullExpand;
end;

procedure HintBox(AOwner: TComponent; X, Y: Integer; Promt, Title: WideString;
  IconID: integer); overload;
begin
  try
    frmHintBox := TfrmHintBox.Create(AOwner, X, Y, Promt, Title, IConID);
    frmHintBox.Show;
  except
  end;
end;

procedure HintBox(AOwner: TComponent; Sender: TObject; Promt, Title: WideString;
  IConID: integer); overload;
var
  point: TPoint;
begin
  TWinControl(Sender).SetFocus;
  point := TControl(Sender).ClientOrigin;
  HintBox(AOwner, point.X + TControl(Sender).Width div 2, point.Y +
    TControl(Sender).Height div 2, Promt, Title, IConID);
end;

procedure HintBox(AOwner: TComponent; X, Y: Integer; DBMsgID: integer);
  overload;
var
  Msg, Title: WideString;
  IconID: integer;
begin
  if not dmMain.qryMessageList.Active then
    dmMain.qryMessageList.Open;
  if dmMain.qryMessageList.Locate('MESSAGE_ID', DBMsgId, []) then
  begin
    IconID := dmMain.qryMessageListIMAGE_ID.Value;

    if sysConfig.Language = 2 then
    begin
      Msg := dmMain.qryMessageListMESSAGE_ENG.Value;
      Title := dmMain.qryMessageListTITLE_ENG.Value;
    end
    else
      if sysConfig.Language = 1 then
    begin
      Msg := dmMain.qryMessageListMESSAGE_VN.Value;
      Title := dmMain.qryMessageListTITLE_VN.Value;
    end
    else
    begin
      Msg := dmMain.qryMessageListMESSAGE_DEFAULT.Value;
      Title := dmMain.qryMessageListTITLE_DEFAULT.Value;
    end;
    HintBox(AOwner, x, y, Msg, Title, IConID);
  end;
end;

procedure HintBox(DBMsgId: Integer; AOwner: TComponent; Sender: TObject);
  overload;
var
  Msg, Title: WideString;
  IconID: integer;
begin
  if not dmMain.qryMessageList.Active then
    dmMain.qryMessageList.Open;
  if dmMain.qryMessageList.Locate('MESSAGE_ID', DBMsgId, []) then
  begin
    IconID := dmMain.qryMessageListIMAGE_ID.Value;

    if sysConfig.Language = 2 then
    begin
      Msg := dmMain.qryMessageListMESSAGE_ENG.Value;
      Title := dmMain.qryMessageListTITLE_ENG.Value;
    end
    else
      if sysConfig.Language = 1 then
    begin
      Msg := dmMain.qryMessageListMESSAGE_VN.Value;
      Title := dmMain.qryMessageListTITLE_VN.Value;
    end
    else
    begin
      Msg := dmMain.qryMessageListMESSAGE_DEFAULT.Value;
      Title := dmMain.qryMessageListTITLE_DEFAULT.Value;
    end;
    HintBox(AOwner, Sender, Msg, Title, IConID);
  end;
end;

function ShowHintBoxInTreeGrid(ATreeGrid: TCustomdxDBTreeListControl;
  ANode: TdxTreeListNode; FieldName: string; MsgID: integer): boolean;
var
  rec: TRect;
  col: TdxDBTreeListColumn;
  x, y, i: integer;
  point_temp: TPoint;
begin
  col := ATreeGrid.ColumnByFieldName(FieldName);
  if not assigned(col) then
  begin
    result := false;
    exit;
  end;
  ATreeGrid.DataSource.DataSet.FieldByName(FieldName).FocusControl;
  rec := ATreeGrid.CellRect(ANode, col.ColIndex);
  x := (rec.Left + rec.Right) div 2;
  y := (rec.Top + rec.Bottom) div 2;
  for i := 0 to col.Index do
    if ATreeGrid.Columns[i].Visible = false then
      x := x - ATreeGrid.Columns[i].Width;
  point_temp := ATreeGrid.ClientToScreen(Point(x, y));
  HintBox(ATreeGrid.Owner, point_temp.X, point_temp.Y, MsgID);
  result := true;
end;

function ShowHintBoxInComponent(comp: TComponent; DataSet: TDataset; FieldName:
  string; MsgID: integer): boolean;
var
  i, j, x, y: integer;
  tl: TCustomdxDBTreeListControl;
  rec: TRect;
  point_temp: TPoint;
begin
  result := false;
  for i := 0 to comp.ComponentCount - 1 do
  begin
    if (Comp.Components[i] is TdxDBEdit) then
    begin
      if ((Comp.Components[i] as TdxDBEdit).DataField = FieldName)
        and ((Comp.Components[i] as TdxDBEdit).DataSource.DataSet = DataSet)
        then
      begin
        HintBox(MsgID, comp, comp.Components[i]);
        result := true;
      end
    end
    else
      if (Comp.Components[i] is TdxDBMaskEdit) then
    begin
      if ((Comp.Components[i] as TdxDBMaskEdit).DataField = FieldName)
        and ((Comp.Components[i] as TdxDBMaskEdit).DataSource.Dataset = DataSet)
        then
      begin
        HintBox(MsgID, comp, comp.Components[i]);
        result := true;
      end
    end
    else
      if (Comp.Components[i] is TdxDBMemo) then
    begin
      if ((Comp.Components[i] as TdxDBMemo).DataField = FieldName)
        and ((Comp.Components[i] as TdxDBMemo).DataSource.Dataset = DataSet)
        then
      begin
        HintBox(MsgID, comp, comp.Components[i]);
        result := true;
      end
    end
    else
      if (Comp.Components[i] is TdxDBDateEdit) then
    begin
      if ((Comp.Components[i] as TdxDBDateEdit).DataField = FieldName)
        and ((Comp.Components[i] as TdxDBDateEdit).DataSource.Dataset = DataSet)
        then
      begin
        HintBox(MsgID, comp, comp.Components[i]);
        result := true;
      end
    end
    else
      if (Comp.Components[i] is TdxDBButtonEdit) then
    begin
      if ((Comp.Components[i] as TdxDBButtonEdit).DataField = FieldName)
        and ((Comp.Components[i] as TdxDBButtonEdit).DataSource.Dataset =
        DataSet) then
      begin
        HintBox(MsgID, comp, comp.Components[i]);
        result := true;
      end
    end
    else
      if (Comp.Components[i] is TdxDBCheckEdit) then
    begin
      if ((Comp.Components[i] as TdxDBCheckEdit).DataField = FieldName)
        and ((Comp.Components[i] as TdxDBCheckEdit).DataSource.Dataset = DataSet)
        then
      begin
        HintBox(MsgID, comp, comp.Components[i]);
        result := true;
      end
    end
    else
      if (Comp.Components[i] is TdxDBImageEdit) then
    begin
      if ((Comp.Components[i] as TdxDBImageEdit).DataField = FieldName)
        and ((Comp.Components[i] as TdxDBImageEdit).DataSource.Dataset = DataSet)
        then
      begin
        HintBox(MsgID, comp, comp.Components[i]);
        result := true;
      end
    end
    else
      if (Comp.Components[i] is TdxDBSpinEdit) then
    begin
      if ((Comp.Components[i] as TdxDBSpinEdit).DataField = FieldName)
        and ((Comp.Components[i] as TdxDBSpinEdit).DataSource.Dataset = DataSet)
        then
      begin
        HintBox(MsgID, comp, comp.Components[i]);
        result := true;
      end
    end
    else
      if (Comp.Components[i] is TdxDBPickEdit) then
    begin
      if ((Comp.Components[i] as TdxDBPickEdit).DataField = FieldName)
        and ((Comp.Components[i] as TdxDBPickEdit).DataSource.Dataset = DataSet)
        then
      begin
        HintBox(MsgID, comp, comp.Components[i]);
        result := true;
      end
    end
    else
      if (Comp.Components[i] is TdxDBCalcEdit) then
    begin
      if ((Comp.Components[i] as TdxDBCalcEdit).DataField = FieldName)
        and ((Comp.Components[i] as TdxDBCalcEdit).DataSource.Dataset = DataSet)
        then
      begin
        HintBox(MsgID, comp, comp.Components[i]);
        result := true;
      end
    end
    else
      if (Comp.Components[i] is TdxDBHyperLinkEdit) then
    begin
      if ((Comp.Components[i] as TdxDBHyperLinkEdit).DataField = FieldName)
        and ((Comp.Components[i] as TdxDBHyperLinkEdit).DataSource.Dataset =
        DataSet) then
      begin
        HintBox(MsgID, comp, comp.Components[i]);
        result := true;
      end
    end
    else
      if (Comp.Components[i] is TdxDBTimeEdit) then
    begin
      if ((Comp.Components[i] as TdxDBTimeEdit).DataField = FieldName)
        and ((Comp.Components[i] as TdxDBTimeEdit).DataSource.Dataset = DataSet)
        then
      begin
        HintBox(MsgID, comp, comp.Components[i]);
        result := true;
      end
    end
    else
      if (Comp.Components[i] is TdxDBCurrencyEdit) then
    begin
      if ((Comp.Components[i] as TdxDBCurrencyEdit).DataField = FieldName)
        and ((Comp.Components[i] as TdxDBCurrencyEdit).DataSource.Dataset =
        DataSet) then
      begin
        HintBox(MsgID, comp, comp.Components[i]);
        result := true;
      end
    end
    else
      if (Comp.Components[i] is TdxDBGraphicEdit) then
    begin
      if ((Comp.Components[i] as TdxDBGraphicEdit).DataField = FieldName)
        and ((Comp.Components[i] as TdxDBGraphicEdit).DataSource.Dataset =
        DataSet) then
      begin
        HintBox(MsgID, comp, comp.Components[i]);
        result := true;
      end
    end
    else
      if (Comp.Components[i] is TdxDBPopupEdit) then
    begin
      if ((Comp.Components[i] as TdxDBPopupEdit).DataField = FieldName)
        and ((Comp.Components[i] as TdxDBPopupEdit).DataSource.Dataset = DataSet)
        then
      begin
        HintBox(MsgID, comp, comp.Components[i]);
        result := true;
      end
    end
    //added by THUYPTP - 21/05/2009
    else if (Comp.Components[i] is TdxDBMRUEdit) then
    begin
      if ((Comp.Components[i] as TdxDBMRUEdit).DataField = FieldName)
        and ((Comp.Components[i] as TdxDBMRUEdit).DataSource.Dataset = DataSet)
          then
      begin
        HintBox(MsgID, comp, comp.Components[i]);
        result := true;
      end
    end
    ///////////////////////////////

    else
      if (Comp.Components[i] is TdxDBTreeListColumn) then
    begin
      if ((Comp.Components[i] as TdxDBTreeListColumn).FieldName = FieldName) and
        (Comp.Components[i] as TdxDBTreeListColumn).Visible then
      begin
        tl := TCustomdxDBTreeListControl((Comp.Components[i] as
          TdxDBTreeListColumn).ATreeList);
        if (tl.DataSource.DataSet = Dataset) and (tl.Tag <> -1) then
        begin
          Dataset.FieldByName(FieldName).FocusControl;
          //  rec := tl.GetEditRect(tl.FocusedNode, (Comp.Components[i] as
          //    TdxDBTreeListColumn).Index);
          rec := tl.CellRect(tl.FocusedNode, (Comp.Components[i] as
            TdxDBTreeListColumn).ColIndex);
          x := (rec.Left + rec.Right) div 2;
          y := (rec.Top + rec.Bottom) div 2;
          point_temp := tl.ClientToScreen(Point(x, y));
          HintBox(Comp, point_temp.X, point_temp.Y, MsgID);
          result := true;
        end;
      end;
    end;
  end;
end;

procedure TdmMain.IncreaseKeyData(ID_KEY: integer; step: integer);
begin
  if qryIDFormatCURRENT_VALUE.Value <> ID_KEY then
  begin
    if qryIDFormat.Locate('FORMAT_ID', ID_KEY, []) = false then
      exit;
  end;

  if not (qryIDFormat.State in [dsEdit]) then
    qryIDFormat.Edit;
  qryIDFormatCURRENT_VALUE.Value := qryIDFormatCURRENT_VALUE.Value + step;
  qryIDFormat.Post;
end;

function TdmMain.GenerateKeyData(ID_KEY: integer): WideString;
begin
  if not qryIDFormat.Active then qryIDFormat.Open;
  if qryIDFormat.Locate('FORMAT_ID', ID_KEY, []) then
    result := GenerateKey(qryIDFormatFORMAT_NAME.Value,
      qryIDFormatCURRENT_VALUE.Value)
  else
    result := '';
end;

procedure TdmMain.SetTransactionConsistency;
begin
  // old_transaction := connMain.DefaultTransaction;
 //  connMain.DefaultTransaction := trConsistency;
end;

procedure TdmMain.SetTransactionAutoCommit;
begin
  old_transaction := connMain.DefaultTransaction;
  connMain.DefaultTransaction := trCommited;
end;

procedure TdmMain.SetTransactionConcurrency;
begin
  old_transaction := connMain.DefaultTransaction;
  connMain.DefaultTransaction := trConcurency;
end;

procedure TdmMain.BackPreviousTransaction;
begin
  if assigned(old_transaction) then
  begin
    connMain.DefaultTransaction := old_transaction;
    old_transaction := nil;
  end;
end;

procedure TdmMain.CommitTransaction;
begin
  trConcurency.Commit;

end;

procedure TdmMain.RollbackTransaction;
begin
  trConcurency.Rollback;

end;

// Cac ham dung chung

procedure ApplyShowFilter(control: TControl);
var
  i: Integer;
begin
  for i := 0 to Control.ComponentCount - 1 do
    if Control.Components[i] is TdxDBGrid then
      TdxDBGrid(Control.Components[i]).Filter.Active := sysConfig.ShowFilter;
end;

procedure ApplyShowGridLine(control: TControl);
var
  i: Integer;
begin
  for i := 0 to Control.ComponentCount - 1 do
    if Control.Components[i] is TdxDBGrid then
      TdxDBGrid(Control.Components[i]).ShowGrid := sysConfig.ShowGridLine;
end;

procedure ApplyShowFooter(control: TControl);
var
  i: Integer;
begin
  for i := 0 to control.ComponentCount - 1 do
    if control.Components[i] is TdxDBGrid then
      TdxDBGrid(control.Components[i]).ShowSummaryFooter :=
        sysConfig.ShowSummary;
end;

procedure TdmMain.DefOnFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  pp: PPropInfo;
  i: integer;
begin
  if Key = VK_F10 then
    ScanForm(Sender)
  else
    if (Key = VK_F11) and (Shift = [ssCtrl]) then
  begin
    if (sender as TForm).FormStyle = fsMDIChild then
      AuthorityConfig(frmMain);
  end
  else
    if (Key = VK_F12) and (Shift = [ssCtrl]) then
    AuthorityConfig(TForm(Sender))
  else
    if (Key = VK_F1) and (Shift = [ssCtrl]) then
    ShowHelpContext(TForm(Sender).HelpFile)
  else
    if (Key = VK_F9) and (Shift = [ssCtrl]) then
    LogConfig(TComponent(Sender))
  else
end;

procedure TdmMain.DefOnDeptListGetImageIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  inherited;
  if not Assigned(Node.Parent) then
    Index := 0
  else
    Index := 1;
end;

procedure TdmMain.DefOnDeptListGetSelectedIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  inherited;
  if not Assigned(Node.Parent) then
    Index := 0
  else
    Index := 1;
end;
//============= APPLY GIAO DIEN =======================================

procedure Apply_Splitter(com: TComponent);
begin
  (com as TElSplitter).UseXPThemes := sysUIConfig.Splitter_UseXPTheme;
  (com as TElSplitter).BevelOuter := bvNone;
  (com as TElSplitter).BevelInner := sysUIConfig.Splitter_BevelInner;
  (com as TElSplitter).ShowSnapButton := sysUIConfig.Splitter_ShowSnapButton;
  if ((com as TElSplitter).Align = alTop) or
    ((com as TElSplitter).Align = alBottom) then
    (com as TElSplitter).Height := sysUIConfig.Splitter_DefaultSize
  else
    (com as TElSplitter).Width := sysUIConfig.Splitter_DefaultSize;
end;

procedure Apply_LookAndFeelItem(com: TComponent);
begin
  if ((com as TdxLayoutItem).Control is TdxDBGrid)
    or ((com as TdxLayoutItem).Control is TdxDBTreeList) then
  begin
    (com as TdxLayoutItem).ControlOptions.ShowBorder :=
      false;
    (com as TdxLayoutItem).ShowCaption := false;
  end;
end;

procedure Apply_Grid(com: TComponent);
var
  qry: TIBOQuery;
  i: integer;
begin
  if TdxDBGrid(com).Filter.Active = false then
    TdxDBGrid(com).Filter.Active := sysConfig.ShowFilter;

  TdxDBGrid(com).ArrowsColor := sysUIConfig.Grid_ArrowColor;
  TdxDBGrid(com).AutoSearchColor := sysUIConfig.Grid_AutoSearchColor;
  TdxDBGrid(com).AutoSearchTextColor := sysUIConfig.Grid_AutoSearchTextColor;
  TdxDBGrid(com).BandColor := sysUIConfig.Grid_BandColor;
  TdxDBGrid(com).BandFont.Color := sysUIConfig.Grid_BandFontColor;
  TdxDBGrid(com).BandFont.Size := sysUIConfig.Grid_BandFontSize;
  TdxDBGrid(com).BandFont.Style := sysUIConfig.Grid_BandFontStyle;

  TdxDBGrid(com).GridLineColor := sysUIConfig.Grid_LineColor;
  TdxDBGrid(com).GroupPanelColor := sysUIConfig.Grid_GroupPanelColor;
  TdxDBGrid(com).GroupPanelFontColor := sysUIConfig.Grid_GroupPanelFontColor;
  TdxDBGrid(com).GroupNodeColor := sysUIConfig.Grid_GroupNodeColor;

  TdxDBGrid(com).HeaderColor := sysUIConfig.Grid_HeaderColor;
  TdxDBGrid(com).HeaderFont.Color := sysUIConfig.Grid_HeaderFontColor;
  TdxDBGrid(com).HeaderFont.Size := sysUIConfig.Grid_HeaderFontSize;
  TdxDBGrid(com).HeaderFont.Style := sysUIConfig.Grid_HeaderFontStyle;

  TdxDBGrid(com).HighlightColor := sysUIConfig.Grid_HighLightColor;
  TdxDBGrid(com).HighlightTextColor := sysUIConfig.Grid_HighLightTextColor;
  TdxDBGrid(com).GroupPanelFontColor := sysUIConfig.Grid_GroupPanelFontColor;
  TdxDBGrid(com).HideSelectionColor := sysUIConfig.Grid_HighLightColor;
  TdxDBGrid(com).HideSelectionTextColor := sysUIConfig.Grid_HighLightTextColor;

  TdxDBGrid(com).BorderStyle := sysUIConfig.Grid_BorderStyle;
  TdxDBGrid(com).Color := sysUIConfig.Grid_Color;
  TdxDBGrid(com).FixedBandLineColor := sysUIConfig.Grid_FixedBandLineColor;
  TdxDBGrid(com).FixedBandLineWidth := sysUIConfig.Grid_FixedBandLineWidth;
  TdxDBGrid(com).Font.Color := sysUIConfig.Grid_FontColor;
  TdxDBGrid(com).Font.Size := sysUIConfig.Grid_FontSize;
  TdxDBGrid(com).Font.Style := sysUIConfig.Grid_FontStyle;
  TdxDBGrid(com).LookAndFeel := sysUIConfig.Grid_LookAndFeel;
  if TdxDBGrid(com).ShowHeader then
    TdxDBGrid(com).ShowHeader := sysUIConfig.Grid_ShowHeader;

  if TdxDBGrid(com).ShowSummaryFooter = false then
    TdxDBGrid(com).ShowSummaryFooter := sysUIConfig.Grid_ShowSummaryFooter;
  if TdxDBGrid(com).ShowGrid = false then
    TdxDBGrid(com).ShowGrid := sysUIConfig.Grid_ShowGrid;
  TdxDBGrid(com).OptionsBehavior := TdxDBGrid(com).OptionsBehavior + [edgoAutoSearch];
  if sysUIConfig.Grid_StoreIniFile then
  begin
    if not (edgoStoreToIniFile in TdxDBGrid(com).OptionsBehavior) then
    begin
      TdxDBGrid(com).OptionsBehavior := TdxDBGrid(com).OptionsBehavior +
        [edgoStoreToIniFile, edgoEnterThrough];
      TdxDBGrid(com).IniFileName := sysUIConfig.App_Path +
        'treegrid_option.ini';
      TdxDBGrid(com).LoadFromIniFile(TdxDBGrid(com).IniFileName);
    end;
  end;

  TdxDBGrid(com).ShowNewItemRow := sysUIConfig.Grid_ShowNewItemArrow;
  TdxDBGrid(com).ShowRowFooter := sysUIConfig.Grid_ShowRowFooter;
  TdxDBGrid(com).ShowGroupPanel := sysUIConfig.Grid_ShowGroupPanel;

  if TdxDBGrid(com).Tag <> -1 then
    TdxDBGrid(com).OptionsDB := TdxDBGrid(com).OptionsDB +
      sysUIConfig.Grid_OptionDB + [edgoLoadAllRecords] - [edgoSmartRefresh, edgoSmartReload, edgoPartialLoad];
  TdxDBGrid(com).OptionsView := TdxDBGrid(com).OptionsView +
    sysUIConfig.Grid_OptionView;

  if not Assigned(TdxDBGrid(com).OnKeyDown) then
    TdxDBGrid(com).OnKeyDown := dmMain.DefOnGridKeyDown;
  if not Assigned(TdxDBGrid(com).OnMouseUp) then
    TdxDBGrid(com).OnMouseUp := dmMain.DefOnGridMouseUp;

  if Assigned(TdxDBGrid(com).DataSource) and
    Assigned(TdxDBGrid(com).DataSource.DataSet) then
  begin
    if (TdxDBGrid(com).DataSource.DataSet is TIBOQuery) then
    begin
      if
        (TIBOQuery(TdxDBGrid(com).DataSource.DataSet).InsertSQL.Count > 0) then
        TdxDBGrid(com).IsImportFromXLS := true
      else
        TdxDBGrid(com).IsImportFromXLS := false;
      if
        (TIBOQuery(TdxDBGrid(com).DataSource.DataSet).EditSQL.Count <= 0) then
      begin
        if TdxDBGrid(com).Tag <> -1 then
          TdxDBGrid(com).OptionsBehavior :=
            TdxDBGrid(com).OptionsBehavior - [edgoEditing];
      end;
    end;
  end;

  if (edgoEditing in TdxDBGrid(com).OptionsBehavior) and
    Assigned(TdxDBGrid(com).DataSource) and
    Assigned(TdxDBGrid(com).DataSource.DataSet) then
  begin
    qry := TIBOQuery(TdxDBGrid(com).DataSource.Dataset);
    for i := 0 to TdxDBGrid(com).ColumnCount - 1 do
    begin
      try
        if TdxDBGrid(com).Columns[i].DisableEditor then
          TdxDBGrid(com).Columns[i].Color := sysUIConfig.Read_Only_Color
        else
          if (TdxDBGrid(com).Columns[i].FieldName <> '') then
        begin
          if Assigned(TdxDBGrid(com).Columns[i].Field) and
            TdxDBGrid(com).Columns[i].Field.Required then
            TdxDBGrid(com).Columns[i].Color := sysUIConfig.Required_Field_Color;
        end;
        // them
       {if (TdxDBGrid(com).Columns[i] is TdxDBGridPopupColumn) then
             (TdxDBGrid(com).Columns[i] as TdxDBGridPopupColumn).HideEditCursor:=true;
        }
        //Added by THUYPTP - 21/5/2009
        if (TdxDBGrid(com).Columns[i] is TdxDBGridMRUColumn) then
        begin
          (TdxDBGrid(com).Columns[i] as TdxDBGridMRUColumn).ImmediateDropDown :=
            true;
          (TdxDBGrid(com).Columns[i] as TdxDBGridMRUColumn).DropDownRows:=20;  
        end
        else
        /////////////////////////////////////

        if TdxDBGrid(com).Columns[i] is TdxDBGridGraphicColumn then
        begin
          TdxDBGridGraphicColumn(TdxDBGrid(com).Columns[i]).CustomFilter := '*.bmp|*.bmp|*.jpg|*.jpg';
          if not Assigned(TdxDBGridGraphicColumn(TdxDBGrid(com).Columns[i]).OnGetGraphicClass) then
            TdxDBGridGraphicColumn(TdxDBGrid(com).Columns[i]).OnGetGraphicClass := dmMain.DefOnGetGraphicClassForGrid;
          if not Assigned(TdxDBGridGraphicColumn(TdxDBGrid(com).Columns[i]).OnAssignPicture) then
            TdxDBGridGraphicColumn(TdxDBGrid(com).Columns[i]).OnAssignPicture := dmMain.DefOnAssignPictureForGrid;
        end
      except
      end
    end;
  end
end;

procedure Apply_TreeList(com: TComponent);
var
  qry: TIBOQuery;
  i: integer;
begin
  TdxDBTreeList(com).ArrowsColor := sysUIConfig.Grid_ArrowColor;
  TdxDBTreeList(com).AutoSearchColor := sysUIConfig.Grid_AutoSearchColor;
  TdxDBTreeList(com).AutoSearchTextColor :=
    sysUIConfig.Grid_AutoSearchTextColor;

  TdxDBTreeList(com).BandColor := sysUIConfig.Grid_BandColor;
  TdxDBTreeList(com).BandFont.Color := sysUIConfig.Grid_BandFontColor;
  TdxDBTreeList(com).BandFont.Size := sysUIConfig.Grid_BandFontSize;
  TdxDBTreeList(com).BandFont.Style := sysUIConfig.Grid_BandFontStyle;
  TdxDBTreeList(com).BorderStyle := sysUIConfig.Grid_BorderStyle;
  TdxDBTreeList(com).Color := sysUIConfig.Grid_Color;

  TdxDBTreeList(com).HeaderColor := sysUIConfig.Grid_HeaderColor;
  TdxDBTreeList(com).HeaderFont.Color := sysUIConfig.Grid_HeaderFontColor;
  TdxDBTreeList(com).HeaderFont.Size := sysUIConfig.Grid_HeaderFontSize;
  TdxDBTreeList(com).HeaderFont.Style := sysUIConfig.Grid_HeaderFontStyle;

  TdxDBTreeList(com).FixedBandLineColor := sysUIConfig.Grid_FixedBandLineColor;
  TdxDBTreeList(com).FixedBandLineWidth := sysUIConfig.Grid_FixedBandLineWidth;

  TdxDBTreeList(com).Font.Color := sysUIConfig.Grid_FontColor;
  TdxDBTreeList(com).Font.Size := sysUIConfig.Grid_FontSize;
  TdxDBTreeList(com).Font.Style := sysUIConfig.Grid_FontStyle;
  TdxDBTreeList(com).LookAndFeel := sysUIConfig.Grid_LookAndFeel;

  if TdxDBTreeList(com).ShowFooter = false then
    TdxDBTreeList(com).ShowFooter := sysUIConfig.Grid_ShowSummaryFooter;
  if TdxDBTreeList(com).ShowHeader then
    TdxDBTreeList(com).ShowHeader := sysUIConfig.Grid_ShowHeader;

  TdxDBTreeList(com).ShowNewItemRow := sysUIConfig.Grid_ShowNewItemArrow;
  TdxDBTreeList(com).HighlightColor := sysUIConfig.Grid_HighLightColor;
  TdxDBTreeList(com).HighlightTextColor := sysUIConfig.Grid_HighLightTextColor;
  TdxDBTreeList(com).HideSelectionColor := sysUIConfig.Grid_HighLightColor;
  TdxDBTreeList(com).HideSelectionTextColor :=
    sysUIConfig.Grid_HighLightTextColor;

  TdxDBTreeList(com).OptionsDB := TdxDBTreeList(com).OptionsDB +
    sysUIConfig.Tree_OptionDB + [etoLoadAllRecords];
  TdxDBTreeList(com).OptionsView := TdxDBTreeList(com).OptionsView +
    sysUIConfig.Tree_OptionView - [etoRowSelect];
  TdxDBTreeList(com).OptionsBehavior := TdxDBTreeList(com).OptionsBehavior +
    sysUIConfig.Tree_OptionBehavior + [etoAutoSearch];

  if sysUIConfig.Grid_StoreIniFile then
  begin
    TdxDBTreeList(com).OptionsBehavior := TdxDBTreeList(com).OptionsBehavior +
      [etoStoreToIniFile];
    TdxDBTreeList(com).IniFileName := sysUIConfig.App_Path +
      'treegrid_option.ini';
  end;

  if not Assigned(TdxDBTreeList(com).OnKeyDown) then
    TdxDBTreeList(com).OnKeyDown := dmMain.DefOnGridKeyDown;
  if not Assigned(TdxDBTreeList(com).OnMouseUp) then
    TdxDBTreeList(com).OnMouseUp := dmMain.DefOnTreeMouseUp;

  if Assigned(TdxDBTreeList(com).DataSource) and
    Assigned(TdxDBTreeList(com).DataSource.DataSet) then
  begin
    if (TdxDBTreeList(com).DataSource.DataSet is TIBOQuery) then
    begin
      if
        (TIBOQuery(TdxDBTreeList(com).DataSource.DataSet).EditSQL.Count <= 0)
        then
        TdxDBTreeList(com).OptionsBehavior :=
          TdxDBTreeList(com).OptionsBehavior - [etoEditing];
    end;
  end;

  if not Assigned(TdxDBTreeList(com).OnCustomDrawCell) then
    TdxDBTreeList(com).OnCustomDrawCell :=
      dmMain.DefOnTreeListCustomDrawCell;

  if (TdxDBTreeList(com).Images = dmMain.imglDeptTree) then
  begin
    if not Assigned(TdxDBTreeList(com).OnGetImageIndex) then
      TdxDBTreeList(com).OnGetImageIndex :=
        dmMain.DefOnDeptListGetImageIndex;
    if not Assigned(TdxDBTreeList(com).OnGetSelectedIndex) then
      TdxDBTreeList(com).OnGetSelectedIndex :=
        dmMain.DefOnDeptListGetSelectedIndex;
  end;
  if (etoEditing in TdxDBTreeList(com).OptionsBehavior) and
    Assigned(TdxDBTreeList(com).DataSource) and
    Assigned(TdxDBTreeList(com).DataSource.DataSet) then
  begin
    qry := TIBOQuery(TdxDBTreelist(com).DataSource.Dataset);
    for i := 0 to TdxDBTreelist(com).ColumnCount - 1 do
    begin
      try
        if (TdxDBTreelist(com).Columns[i].DisableEditor) then
          TdxDBTreelist(com).Columns[i].Color := sysUIConfig.Read_Only_Color
        else
          if (TdxDBTreelist(com).Columns[i].FieldName <> '') and
          TdxDBTreelist(com).Columns[i].Field.Required then
          TdxDBTreelist(com).Columns[i].Color :=
            sysUIConfig.Required_Field_Color;
        //them
{        if (TdxDBTreelist(com).Columns[i] is TdxDBTreeListPopupColumn) then
          (TdxDBTreelist(com).Columns[i] as TdxDBTreeListPopupColumn).HideEditCursor:=true;
}
      except
      end
    end;
  end;
end;

procedure Apply_LookAndFeel(com: TComponent);
begin
  TdxLayoutWebLookAndFeel(com).GroupOptions.CaptionOptions.Color :=
    sysUIConfig.LookAndFeel_GroupCaptionColor;
  TdxLayoutWebLookAndFeel(com).GroupOptions.CaptionOptions.Font.Size :=
    sysUIConfig.LookAndFeel_GroupCaptionFontSize;
  TdxLayoutWebLookAndFeel(com).GroupOptions.CaptionOptions.Font.Style :=
    sysUIConfig.LookAndFeel_GroupCaptionFontStyle;
  TdxLayoutWebLookAndFeel(com).GroupOptions.CaptionOptions.TextColor :=
    sysUIConfig.LookAndFeel_GroupCaptionTextColor;
  TdxLayoutWebLookAndFeel(com).GroupOptions.Color :=
    sysUIConfig.LookAndFeel_GroupColor;
  TdxLayoutWebLookAndFeel(com).GroupOptions.FrameColor :=
    sysUIConfig.LookAndFeel_GroupFrameColor;
  TdxLayoutWebLookAndFeel(com).GroupOptions.FrameWidth :=
    sysUIConfig.LookAndFeel_GroupFrameWidth;
  TdxLayoutWebLookAndFeel(com).GroupOptions.OffsetCaption :=
    sysUIConfig.LookAndFeel_GroupOffsetCaption;
  TdxLayoutWebLookAndFeel(com).GroupOptions.OffsetItems :=
    sysUIConfig.LookAndFeel_GroupOffsetItem;

  TdxLayoutWebLookAndFeel(com).ItemOptions.ControlBorderColor :=
    sysUIConfig.LookAndFeel_BorderColor;
  TdxLayoutWebLookAndFeel(com).ItemOptions.CaptionOptions.Font.Color :=
    sysUIConfig.LookAndFeel_ItemCaptionFontColor;
  TdxLayoutWebLookAndFeel(com).ItemOptions.CaptionOptions.Font.Size :=
    sysUIConfig.LookAndFeel_ItemCaptionFontSize;
  TdxLayoutWebLookAndFeel(com).ItemOptions.CaptionOptions.Font.Style :=
    sysUIConfig.LookAndFeel_ItemCaptionFontStyle;
  TdxLayoutWebLookAndFeel(com).ItemOptions.CaptionOptions.TextColor :=
    sysUIConfig.LookAndFeel_ItemCaptionTextColor;
  if TdxLayoutWebLookAndFeel(com).Tag <> -1 then
  begin
    TdxLayoutWebLookAndFeel(com).Offsets.ControlOffsetHorz :=
      sysUIConfig.LookAndFeel_OffsetControl_H;
    TdxLayoutWebLookAndFeel(com).Offsets.ControlOffsetVert :=
      sysUIConfig.LookAndFeel_OffsetControl_V;
    TdxLayoutWebLookAndFeel(com).Offsets.ItemOffset :=
      sysUIConfig.LookAndFeel_OffsetItem_Offset;
    TdxLayoutWebLookAndFeel(com).Offsets.ItemsAreaOffsetHorz :=
      sysUIConfig.LookAndFeel_OffsetItem_ArreaH;
    TdxLayoutWebLookAndFeel(com).Offsets.RootItemsAreaOffsetHorz :=
      sysUIConfig.LookAndFeel_OffsetRoot_ArreaH;
    TdxLayoutWebLookAndFeel(com).OffSets.RootItemsAreaOffsetVert :=
      sysUIConfig.LookAndFeel_OffsetRoot_ArreaV;
  end;
end;

procedure Apply_Button(com: TComponent);
begin
  if sysConfig.WindowsStyle <> '1' then // khong phai XPTHEME
    TElPopupButton(com).UseXPThemes :=
      false
  else // la XP THEME
    TElPopupButton(com).UseXPThemes := sysUIConfig.Button_UseXPTheme;
  TElPopupButton(com).BevelKind := sysUIConfig.Button_BevelKind;
  TElPopupButton(com).ThinFrame := sysUIConfig.Button_ThinFrame;
  TElPopupButton(com).MoneyFlat := sysUIConfig.Button_MoneyFlat;
  TElPopupButton(com).MoneyFlatActiveColor :=
    sysUIConfig.Button_MoneyActiveColor;
  TElPopupButton(com).MoneyFlatInactiveColor :=
    sysUIConfig.Button_MoneyInActiveColor;
  TElPopupButton(com).MoneyFlatDownColor := sysUIConfig.Button_MoneyDownColor;
  TElPopupButton(com).Flat := sysUIConfig.Button_Flat;
  TElPopupButton(com).Color := sysUIConfig.Button_Color;
end;

procedure Apply_SideBar(com: TComponent);
begin
  TdxSideBar(com).BkGround.BeginColor := sysUIConfig.SideBar_BkGroundBeginColor;
  TdxSideBar(com).BkGround.EndColor := sysUIConfig.SideBar_BkGroundEndColor;
  TdxSideBar(com).BkGround.FillStyle := sysUIConfig.SideBar_BkGroundFillStyle;
  TdxSideBar(com).BorderStyle := sysUIConfig.SideBar_BorderStyle;
  TdxSideBar(com).CanSelected := sysUIConfig.SideBar_CanSelected;
  TdxSideBar(com).GroupFont.Color := sysUIConfig.SideBar_GroupFontColor;
  TdxSideBar(com).GroupFont.Size := sysUIConfig.SideBar_GroupFontSize;
  TdxSideBar(com).GroupFont.Style := sysUIConfig.SideBar_GroupFontStyle;
  TdxSideBar(com).ItemFont.Color := sysUIConfig.SideBar_ItemFontColor;
  TdxSideBar(com).ItemFont.Size := sysUIConfig.SideBar_ItemFontSize;
  TdxSideBar(com).ItemFont.Style := sysUIConfig.SideBar_ItemFontStyle;
  TdxSideBar(com).PaintStyle := sysUIConfig.SideBar_PaintStyle;
  TdxSideBar(com).ShowGroups := sysUIConfig.SideBar_ShowGroup;
  TdxSideBar(com).Color := sysUIConfig.SideBar_Color;
end;

procedure Apply_Page(com: TComponent);
begin
  TElPageControl(com).ActiveTabColor := sysUIConfig.Page_ActiveTabColor;
  TElPageControl(com).Color := sysUIConfig.Page_Color;
  TElPageControl(com).Flat := sysUIConfig.Page_Flat;
  TElPageControl(com).FlatTabBorderColor := sysUIConfig.Page_FlatTabBorderColor;
  TElPageControl(com).Font.Color := sysUIConfig.Page_FontColor;
  TElPageControl(com).Font.Size := sysUIConfig.Page_FontSize;
  TElPageControl(com).Font.Style := sysUIConfig.Page_FontStyle;
  TElPageControl(com).HotTrack := sysUIConfig.Page_HotTrack;
  TElPageControl(com).InactiveTabColor := sysUIConfig.Page_InActiveTabColor;
  TElPageControl(com).Multiline := sysUIConfig.Page_MultiLine;
  TElPageControl(com).ShowBorder := sysUIConfig.Page_ShowBorder;
  TElPageControl(com).TabBkColor := sysUIConfig.Page_TabBkColor;
  TElPageControl(com).UseXPThemes := sysUIConfig.Page_UseXPTheme;
  TElPageControl(com).VerticalSideCaptions :=
    sysUIConfig.Page_VerticalSideCaption;
  if TElPageControl(com).Tag <> -1 then
  begin
    if TElPageControl(com).TabPosition = etpTop then
      TElPageControl(com).TabPosition := sysUIConfig.Page_TabPosition;
    TElPageControl(com).Style := sysUIConfig.Page_Style;
  end;
end;

procedure Apply_Query(com: TComponent);
var i: integer;
begin
  if not Assigned(TIBOQuery(com).BeforeOpen) then
    TIBOQuery(com).BeforeOpen := dmMain.DefOnBeforeOpen;
  if not Assigned(TIBOQuery(com).OnDeleteError) then
    TIBOQuery(com).OnDeleteError :=
      dmMain.DefOnDeleteError;
  if not Assigned(TIBOQuery(com).OnError) then
    TIBOQuery(com).OnError := dmMain.DefOnDatasetError;
  if not Assigned(TIBOQuery(com).BeforePost) then
    TIBOQuery(com).BeforePost := dmMain.DefOnBeforePost;
  if not Assigned(TIBOQuery(com).BeforeDelete) then
    TIBOQuery(com).BeforeDelete :=
      dmMain.DefOnBeforeDelete;
  if not Assigned(TIBOQuery(com).BeforeInsert) then
    TIBOQuery(com).BeforeInsert :=
      dmMain.DefOnBeforeInsert;
  if not Assigned(TIBOQuery(com).AfterInsert) then
    TIBOQuery(com).AfterInsert :=
      dmMain.DefOnAfterInsert;

  if not Assigned(TIBOQuery(com).BeforeEdit) then
    TIBOQuery(com).BeforeEdit := dmMain.DefOnBeforeEdit;
  if not Assigned(TIBOQuery(com).AfterPost) then
    TIBOQuery(com).AfterPost :=
      dmMain.DefOnAfterPost;
  if not Assigned(TIBOQuery(com).AfterDelete) then
    TIBOQuery(com).AfterDelete :=
      dmMain.DefOnAfterDelete;
  for i := 0 to TIBOQuery(com).FieldCount - 1 do
  begin
    if TIBOQuery(com).Fields[i].FieldName = 'FILE_NAME' then
      if not Assigned(TIBOQuery(com).Fields[i].OnChange) then
        TIBOQuery(com).Fields[i].OnChange := dmMain.DefOnFILENAMEChange;
  end;
end;

procedure Apply_MemData(com: TComponent);
begin
  if not Assigned(TdxMemData(com).BeforeDelete) then
    TdxMemData(com).BeforeDelete :=
      dmMain.DefOnBeforeDelete;
  if not Assigned(TdxMemData(com).BeforeInsert) then
    TdxMemData(com).BeforeInsert :=
      dmMain.DefOnBeforeInsert;
  if not Assigned(TdxMemData(com).BeforeEdit) then
    TdxMemData(com).BeforeEdit := dmMain.DefOnBeforeEdit;
  if not Assigned(TdxMemData(com).AfterPost) then
    TdxMemData(com).AfterPost :=
      dmMain.DefOnAfterPost;
  if not Assigned(TdxMemData(com).AfterDelete) then
    TdxMemData(com).AfterDelete :=
      dmMain.DefOnAfterDelete;
end;

procedure Apply_GraphicEdit(com: TComponent);
begin
  TdxDBGraphicEdit(com).CustomFilter :=
    '*.bmp|*.bmp|*.jpg|*.jpg';
  if not Assigned(TdxDBGraphicEdit(com).OnGetGraphicClass) then
    TdxDBGraphicEdit(com).OnGetGraphicClass :=
      dmMain.DefOnGetGraphicClass;
  if not Assigned(TdxDBGraphicEdit(com).OnAssignPicture) then
    TdxDBGraphicEdit(com).OnAssignPicture :=
      dmMain.DefOnAssignPicture;
end;

procedure Apply_FloatField(com: TComponent);
begin
  TFloatField(com).DisplayFormat := sysConfig.FloatFormat;
  TFloatField(com).EditFormat := sysConfig.FloatFormat;
end;

procedure Apply_FormCaption(com: TComponent);
begin
  TElFormCaption(com).SystemFont := false;
  if sysConfig.WindowsStyle = '1' then
    TElFormCaption(com).UseXPThemes := true
  else
    TElFormCaption(com).UseXPThemes := false
end;

procedure Apply_StyleController(com: TComponent);
begin
  if TdxCheckEditStyleController(com).Tag = -1 then exit;
  TdxCheckEditStyleController(com).Edges := sysUIConfig.LookAndFeel_Edge;
  TdxCheckEditStyleController(com).BorderColor :=
    sysUIConfig.LookAndFeel_BorderColor;
  TdxCheckEditStyleController(com).BorderStyle :=
    sysUIConfig.LookAndFeel_BorderStyle;
  TdxCheckEditStyleController(com).ButtonStyle :=
    sysUIConfig.LookAndFeel_ButtonStyle;
  TdxCheckEditStyleController(com).HotTrack := sysUIConfig.LookAndFeel_HotTrack;
  TdxCheckEditStyleController(com).Shadow := sysUIConfig.LookAndFeel_Shadow;
end;

//==============================================================================

procedure ApplyOption(control: TComponent);
var
  i: Integer;
  width: Integer;
begin
  // load log config
  if (control is TForm) or (control is TDataModule) then
    SetLogConfig(control);

  if (control is TForm) then
  begin
    TForm(control).KeyPreview := true;
    if not Assigned(TForm(control).OnKeyDown) then
      TForm(control).OnKeyDown := dmMain.DefOnFormKeyDown;
    // load du lieu phan quyen
    SetPermissionInForm(control);
    SetHelpIndexInForm(TForm(control));
    //    TForm(control).Font.Name:='Verdana';
  end
  else
    if (control is TDataModule) then
  begin
    SetPermissionInForm(TDataModule(control));
  end;

  for i := 0 to control.ComponentCount - 1 do
  begin
    //added by THUTPT - 21/5/2009
    if (control.Components[i] is TdxMRUEdit) then
    begin
      (control.Components[i] as TdxMRUEdit).ImmediateDropDown := true;
      (control.Components[i] as TdxMRUEdit).Style.AssignedValues :=
        (control.Components[i] as TdxMRUEdit).Style.AssignedValues -
        [svBorderColor];
       (control.Components[i] as TdxMRUEdit).DropDownRows:=20;
    end
    else if (control.Components[i] is TdxDBMRUEdit) then
    begin
      (control.Components[i] as TdxDBMRUEdit).ImmediateDropDown := true;
      (control.Components[i] as TdxDBMRUEdit).Style.AssignedValues :=
        (control.Components[i] as TdxDBMRUEdit).Style.AssignedValues -
        [svBorderColor];
       (control.Components[i] as TdxDBMRUEdit).DropDownRows:=20; 
    end;
    //////////////////////////////////////////////


    if (control.Components[i] is TdxSideBar) then
      Apply_SideBar(control.Components[i])
    else

      if (control.Components[i] is TElPopupButton) then
      Apply_Button(control.Components[i])
    else

      if (control.Components[i] is TElPageControl) then
      Apply_Page(control.Components[i])
    else

      if (control.Components[i] is TToolBar) then
    begin
      (control.Components[i] as TToolBar).ParentColor := false;
      (control.Components[i] as TToolBar).Color :=
        sysUIConfig.LookAndFeel_GroupColor;
    end
    else
      if (control.Components[i] is TPanel) then
      (control.Components[i] as TPanel).Color :=
        sysUIConfig.LookAndFeel_GroupColor
    else
      if (control.Components[i] is TElPanel) then
      (control.Components[i] as TElPanel).Color :=
        sysUIConfig.LookAndFeel_GroupColor
    else
      if (control.Components[i] is TdxLayoutControl) then
    begin
      if not Assigned((control.Components[i] as TdxLayoutControl).LookAndFeel)
        then
        (control.Components[i] as TdxLayoutControl).LookAndFeel :=
          dmMain.StyleWeb
    end
    else
      if (control.Components[i] is TElSplitter) then
      Apply_Splitter(control.Components[i])
    else
      if (control.Components[i] is TdxLayoutItem) then
      Apply_LookAndFeelItem(control.Components[i])
    else
      if (control.Components[i] is TframeToolbar) then
    begin
      TframeToolbar(control.Components[i]).btnDelete.Images := dmMain.imgAction;
      TframeToolbar(control.Components[i]).btnInsert.Images := dmMain.imgAction;
      TframeToolbar(control.Components[i]).btnSave.Images := dmMain.imgAction;
      TframeToolbar(control.Components[i]).btnCancel.Images := dmMain.imgAction;
      ApplyOption(TControl(control.Components[i]));
    end
    else
      if (control.Components[i] is TFrame) then
      ApplyOption(TControl(control.Components[i]))
    else
      if (control.Components[i] is TdxSideBar) then
      Apply_SideBar(control.Components[i])
    else
      if (control.Components[i] is TdxInspectorDBCalcRow) then
      TdxInspectorDBCalcRow(control.Components[i]).PopupBorder := pbSingle
    else
      if control.Components[i] is TdxDBGraphicEdit then
      Apply_GraphicEdit(control.Components[i])
    else
      if control.Components[i] is TIBOQuery then
      Apply_Query(control.Components[i])
    else
      if control.Components[i] is TdxMemData then
      Apply_MemData(control.Components[i])
    else

      if control.Components[i] is TdxDBInspector then
      Apply_Inspector(control.Components[i])
    else
      if control.Components[i] is TdxDBGrid then
      Apply_Grid(control.Components[i])
    else
      if control.Components[i] is TdxDBTreeList then
      Apply_TreeList(control.Components[i])
    else
      if control.Components[i] is TFloatField then
      Apply_FloatField(control.Components[i])
    else
      if control.Components[i] is TDateField then
      TDateField(control.Components[i]).DisplayFormat := sysConfig.DateFormat
    else
      if control.Components[i] is TTimeField then
      TTimeField(control.Components[i]).DisplayFormat :=
        sysConfig.TimeFormat
    else
      if control.Components[i] is TDateTimeField then
      TDateTimeField(control.Components[i]).DisplayFormat :=
        sysConfig.DateTimeFormat
    else
      if control.Components[i] is TElFormCaption then
      Apply_FormCaption(control.Components[i])
    else
      if control.Components[i] is TdxDBGridDateColumn then
      (control.Components[i] as TdxDBGridDateColumn).DateOnError := deNull
    else
      if control.Components[i] is TElPopupButton then
      Apply_Button(control.Components[i])
    else
      if control.Components[i] is TdxLayoutWebLookAndFeel then
      Apply_LookAndFeel(control.Components[i])
    else
      if control.Components[i] is TdxCheckEditStyleController then
      Apply_StyleController(control.Components[i])
    else
      if (control.Components[i].InheritsFrom(TdxInplaceEdit)) then
    begin
      if control.Components[i].Tag <> -1 then
      begin
        TdxInplaceEdit(control.Components[i]).Style.AssignedValues :=
          TdxInplaceEdit(control.Components[i]).Style.AssignedValues -
          [svBorderColor] - [svBorderStyle] - [svButtonStyle];
      end;
      Apply_DB_EditControl(control.Components[i]);
    end;
    // Bo sung phan quet giao dien sau
  end;
  dmMain.SetCaption(control);
end;

procedure TdmMain.ScanForm(Sender: TObject);
begin
  begin
    with TCaptionListFrm.Create(TControl(Sender)) do
    try
      CurForm := TControl(Sender);
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure AuthorityConfig(AOwner: TComponent);
begin
  if (sysConfig.User <> 'smallfoot') and
    (sysConfig.User <> 'sspadmin') then exit;
  with TfrmAuthorityConfig.Create(AOwner) do
  try
    ShowModal;
    if (assigned(Aowner) and (AOwner is TForm)) then
      TForm(AOwner).HelpFile := HelpIndex;
  finally
    Free;
  end;
end;

procedure LogConfig(AOwner: TComponent);
begin
  if (sysConfig.User <> 'smallfoot') and
    (sysConfig.User <> 'sspadmin') then exit;
  with TfrmLogConfig.Create(AOwner) do
  try
    ShowModal;
  finally
    Free;
  end;
  SetLogConfig(AOwner);
end;

procedure TdmMain.SetCaption(AControl: TComponent; act_flag: integer = 0);
var
  i, j: Integer;
  temp, temp_child: TComponent;
  caption, hint: WideString;
  parent_name: string;
  parent_index, s_i, e_i: integer;
begin
  if (sysConfig.Language = 0) and (act_flag = 0) then Exit;
  qryCaption.Close;
  qryCaption.ParamByName('FORM_NAME').Value := AControl.Name;
  qryCaption.Open;
  if qryCaption.IsEmpty then
  begin
    qryCaption.Close;
    Exit;
  end;
  qryCaption.First;
  while not qryCaption.Eof do
  begin
    case sysConfig.Language of
      0:
        begin
          if qryCaptionCAPTION_DEFAULT.IsNull then
            caption := ''
          else
            caption := qryCaptionCAPTION_DEFAULT.Value;
          if qryCaptionHINT_DEFAULT.IsNull then
            hint := ''
          else
            hint := qryCaptionHINT_DEFAULT.Value;
        end;
      1:
        begin
          if qryCaptionCAPTION_VN.IsNull then
            caption := ''
          else
            caption := qryCaptionCAPTION_VN.Value;
          if qryCaptionHINT_VN.IsNull then
            hint := ''
          else
            hint := qryCaptionHINT_VN.Value;
        end;
      2:
        begin
          if qryCaptionCAPTION_ENG.IsNull then
            caption := ''
          else
            caption := qryCaptionCAPTION_ENG.Value;
          if qryCaptionHINT_ENG.IsNull then
            hint := ''
          else
            hint := qryCaptionHINT_ENG.Value;
        end;
    end;
    if qryCaptionCONTROL_TYPE.AsString = 'COM' then
    begin // la component cua form
      temp := AControl.FindComponent(qryCaptionCONTROL_NAME.AsString);
      if Assigned(temp) then
      try
        if HasProperty(temp, 'caption') or HasProperty(temp, 'hint') or
          HasProperty(temp, 'text') then
        begin
          if temp.ClassName = 'TAction' then Continue;
          if HasProperty(temp, 'caption') then
          begin
            if not (caption = '') then
              SetProperty(temp, 'caption', caption)
          end
          else
            if HasProperty(temp, 'text') then
          begin
            if not (caption = '') then
              SetProperty(temp, 'text', caption)
          end;
          if HasProperty(temp, 'hint') then
            if not (hint = '') then
              SetProperty(temp, 'hint', hint);
        end;
      except
      end; //try
    end //if CONTROL_TYPE='COM/
    else
      if qryCaptionCONTROL_TYPE.AsString = 'ELRADIOGROUP_ITEMS' then
    begin // xu li El Radio Group Items
      temp := AControl.FindComponent(qryCaptionPARENT_CONTROL.AsString);
      if Assigned(temp) then
      try
        TElRadioGroup(temp).Items[StrToInt(qryCaptionCONTROL_NAME.AsString)] :=
          caption;
      except
      end;
    end
    else
      if qryCaptionCONTROL_TYPE.AsString = 'ELFORMCAPTION_TEXTS' then
    begin // xu li ElFormCaption - Texts
      temp := AControl.FindComponent(qryCaptionPARENT_CONTROL.AsString);
      if Assigned(temp) then
      try
        TElFormCaption(temp).Texts[StrToInt(qryCaptionCONTROL_NAME.AsString)].Caption :=
          caption;
      except
      end;
    end
    else
      if qryCaptionCONTROL_TYPE.AsString = 'ELFORMCAPTION_BUTTONS' then
    begin // xu li ElFormCation-Buttons
      temp := AControl.FindComponent(qryCaptionPARENT_CONTROL.AsString);
      if Assigned(temp) then
      try
        TElFormCaption(temp).Buttons[StrToInt(qryCaptionCONTROL_NAME.AsString)].Caption :=
          caption;
      except
      end;
    end
    else
      if qryCaptionCONTROL_TYPE.AsString = 'DXPICKEDIT_ITEMS' then
    begin // xu li DxPickEdit-Items
      temp := AControl.FindComponent(qryCaptionPARENT_CONTROL.AsString);
      if Assigned(temp) then
      try
        TdxPickEdit(temp).Items[StrToInt(qryCaptionCONTROL_NAME.AsString)] :=
          caption;
      except
      end;
    end
    else
      if qryCaptionCONTROL_TYPE.AsString = 'DXDBPICKEDIT_ITEMS' then
    begin // xu li DxDBPickEdit-Items
      temp := AControl.FindComponent(qryCaptionPARENT_CONTROL.AsString);
      if Assigned(temp) then
      try
        TdxDBPickEdit(temp).Items[StrToInt(qryCaptionCONTROL_NAME.AsString)] :=
          caption;
      except
      end;
    end
    else
      if qryCaptionCONTROL_TYPE.AsString = 'DXIMAGEEDIT_DESCR' then
    begin // xu li DxImageEdit-Description
      temp := AControl.FindComponent(qryCaptionPARENT_CONTROL.AsString);
      if Assigned(temp) then
      try
        TdxImageEdit(temp).Descriptions[StrToInt(qryCaptionCONTROL_NAME.AsString)] :=
          caption;
      except
      end;
    end
    else
      if qryCaptionCONTROL_TYPE.AsString = 'DXDBIMAGEEDIT_DESCR' then
    begin // xu li DxImageEdit-Description
      temp := AControl.FindComponent(qryCaptionPARENT_CONTROL.AsString);
      if Assigned(temp) then
      try
        TdxDBImageEdit(temp).Descriptions[StrToInt(qryCaptionCONTROL_NAME.AsString)] :=
          caption;
      except
      end;
    end
    else
      if qryCaptionCONTROL_TYPE.AsString = 'DXDBGRID_BANDS' then
    begin // xu li DxDBGrid Band
      temp := AControl.FindComponent(qryCaptionPARENT_CONTROL.AsString);
      if Assigned(temp) then
      try
        TdxDBGrid(temp).Bands[StrToInt(qryCaptionCONTROL_NAME.AsString)].Caption
          :=
          caption;
      except
      end;
    end
    else
      if qryCaptionCONTROL_TYPE.AsString = 'DXDBTREE_BANDS' then
    begin // xu li DxDBGrid Band
      temp := AControl.FindComponent(qryCaptionPARENT_CONTROL.AsString);
      if Assigned(temp) then
      try
        TdxDBTreeList(temp).Bands[StrToInt(qryCaptionCONTROL_NAME.AsString)].Caption :=
          caption;
      except
      end;
    end
    else
      if qryCaptionCONTROL_TYPE.AsString = 'DXDBTLPICKCOLUMN_ITEMS' then
    begin // xu li DxDBTreeListPickColum-Items
      temp := AControl.FindComponent(qryCaptionPARENT_CONTROL.AsString);
      if Assigned(temp) then
      try
        TdxDBTreeListPickColumn(temp).Items[StrToInt(qryCaptionCONTROL_NAME.AsString)] :=
          caption;
      except
      end;
    end
    else
      if qryCaptionCONTROL_TYPE.AsString = 'DXDBTLIMAGECOLUMN_DESCR' then
    begin // xu li DxDBTreeListImageColumn-Description
      temp := AControl.FindComponent(qryCaptionPARENT_CONTROL.AsString);
      if Assigned(temp) then
      try
        TdxDBTreeListImageColumn(temp).Descriptions[StrToInt(qryCaptionCONTROL_NAME.AsString)] :=
          caption;
      except
      end;
    end
    else
      if qryCaptionCONTROL_TYPE.AsString = 'DXDBGRPICKCOLUMN_ITEMS' then
    begin // xu li DxDBGridPickColumn-Items
      temp := AControl.FindComponent(qryCaptionPARENT_CONTROL.AsString);
      if Assigned(temp) then
      try
        TdxDBGridPickColumn(temp).Items[StrToInt(qryCaptionCONTROL_NAME.AsString)] :=
          caption;
      except
      end;
    end
    else
      if qryCaptionCONTROL_TYPE.AsString = 'DXDBGRIMAGECOLUMN_DESCR' then
    begin // xu li DxDBGridImageColumn-Description
      temp := AControl.FindComponent(qryCaptionPARENT_CONTROL.AsString);
      if Assigned(temp) then
      try
        TdxDBGridImageColumn(temp).Descriptions[StrToInt(qryCaptionCONTROL_NAME.AsString)] :=
          caption;
      except
      end;
    end
    else
      if qryCaptionCONTROL_TYPE.AsString = 'ELSTATUSBAR_PANELS' then
    begin // xu li ElStatusBar - Panels
      temp := AControl.FindComponent(qryCaptionPARENT_CONTROL.AsString);
      if Assigned(temp) then
      try
        TElStatusBar(temp).Panels[StrToInt(qryCaptionCONTROL_NAME.AsString)].Text
          :=
          caption;
      except
      end;
    end
    else
      if qryCaptionCONTROL_TYPE.AsString = 'DXSIDEBAR_GROUPS' then
    begin // xu li DxSideBar Group
      temp := AControl.FindComponent(qryCaptionPARENT_CONTROL.AsString);
      if Assigned(temp) then
      try
        TdxSideBar(temp).Groups[StrToInt(qryCaptionCONTROL_NAME.AsString)].Caption :=
          caption;
      except
      end;
    end
    else
      if qryCaptionCONTROL_TYPE.AsString = 'DXINS_DBIMAGEROW_DESCR' then
    begin // xu li dxDBImageRow-Description
      temp := AControl.FindComponent(qryCaptionPARENT_CONTROL.AsString);
      if Assigned(temp) then
      try
        TdxInspectorDBImageRow(temp).Descriptions[StrToInt(qryCaptionCONTROL_NAME.AsString)] :=
          caption;
      except
      end;
    end
    else
      if qryCaptionCONTROL_TYPE.AsString = 'DXSIDEBAR_ITEMS' then
    begin // xu li DxSideBar Item cua Group
      //lay control side bar
      s_i := Pos('[', qryCaptionPARENT_CONTROL.AsString);
      e_i := Pos(']', qryCaptionPARENT_CONTROL.AsString);
      parent_name := Copy(qryCaptionPARENT_CONTROL.AsString, 1, s_i - 1);
      parent_index := StrToInt(Copy(qryCaptionPARENT_CONTROL.AsString, s_i
        + 1, e_i - s_i - 1));
      temp := AControl.FindComponent(parent_name);
      if Assigned(temp) then
      try
        TdxSideBar(temp).Groups[parent_index].Items[StrToInt(qryCaptionCONTROL_NAME.AsString)].Caption :=
          caption;
      except
      end;
    end
    else
      if qryCaptionCONTROL_TYPE.AsString = 'FRAME_COM' then
    begin // xu li FRAME_COMPONENT
      temp := AControl.FindComponent(qryCaptionPARENT_CONTROL.AsString);
      if Assigned(temp) then
      begin
        temp_child := temp.FindComponent(qryCaptionCONTROL_NAME.AsString);
        if Assigned(temp_child) then
          if HasProperty(temp_child, 'caption') or HasProperty(temp_child,
            'hint') then
          begin
            if temp_child.ClassName = 'TAction' then Continue;
            if HasProperty(temp_child, 'caption') then
              if not (caption = '') then
                SetProperty(temp_child, 'caption', caption);
            if HasProperty(temp_child, 'hint') then
              if not (hint = '') then
                SetProperty(temp_child, 'hint', hint);
          end; //if Has property
      end;
    end;
    qryCaption.Next;
  end; //while
end;

procedure TdmMain.DefineMessage;
begin
  qryMsgList.Open;
  MsgListFrm := TMsgListFrm.Create(self);
  try
    MsgListFrm.ShowModal;
  finally
    qryMsgList.Close;
    MsgListFrm.free;
  end;
end;

procedure TdmMain.LoadCaption(AControl: TComponent; bar: TProgressBar);
//Load caption
var
  i, j, k: Integer;
  temp: TComponent;
  caption, hint: WideString;
  show_bar: boolean;
begin
  qryCaption.Close;
  qryCaption.ParamByName('FORM_NAME').Value := AControl.Name;
  qryCaption.Open;
  if Assigned(bar) then
  begin
    bar.Max := AControl.ComponentCount;
    bar.Min := 0;
    bar.Position := 0;
    show_bar := true;
  end
  else
    show_bar := false;

  for i := 0 to AControl.ComponentCount - 1 do
    //quet component
  begin
    if show_bar then bar.Position := i + 1;
    temp := AControl.Components[i];
    if HasProperty(temp, 'caption') or HasProperty(temp, 'hint')
      or HasProperty(temp, 'text') then
    begin
      if temp.InheritsFrom(TAction) then Continue;
      if HasProperty(temp, 'caption') then
        caption := GetProperty(temp, 'caption')
      else
        if HasProperty(temp, 'text') then
        caption := GetProperty(temp, 'text')
      else
        caption := '';

      if HasProperty(temp, 'hint') then
        hint := GetProperty(temp, 'hint')
      else
        hint := '';

      if not qryCaption.Locate('CONTROL_NAME;CONTROL_TYPE',
        VarArrayOf([temp.Name, 'COM']), []) then
      begin
        qryCaption.Insert;
        qryCaptionFORM_NAME.Value := AControl.Name;
        qryCaptionCONTROL_NAME.Value := temp.Name;
        qryCaptionCAPTION_VN.Value := caption;
        qryCaptionHINT_VN.Value := hint;
        qryCaptionCAPTION_DEFAULT.Value := caption;
        qryCaptionHINT_DEFAULT.Value := hint;
        qryCaptionPARENT_CONTROL.Value := AControl.Name;
        qryCaptionCONTROL_TYPE.Value := 'COM';
        qryCaption.Post;
      end;
    end;
    //xet xong control cha - tim items,texts, buttons...
    if temp.ClassName = 'TElRadioGroup' then
    begin
      for j := 0 to TElRadioGroup(temp).Items.Count - 1 do
      begin
        if not
          qryCaption.Locate('CONTROL_NAME;PARENT_CONTROL;CONTROL_TYPE',
          VarArrayOf([IntToStr(j), temp.Name, 'ELRADIOGROUP_ITEMS']), []) then
        begin
          qryCaption.Insert;
          qryCaptionFORM_NAME.Value := AControl.Name;
          qryCaptionCONTROL_NAME.Value := IntToStr(j);
          qryCaptionPARENT_CONTROL.Value := temp.Name;
          qryCaptionCONTROL_TYPE.Value := 'ELRADIOGROUP_ITEMS';
          qryCaptionCAPTION_VN.Value := TElRadioGroup(temp).Items[j];
          qryCaption.Post;
        end;
      end; //quet xong Item cua TElRadioGroup
    end // quet xong TElRadioGroup
    else
      if temp.ClassName = 'TElFormCaption' then
    begin
      for j := 0 to TElFormCaption(temp).Texts.Count - 1 do
      begin
        if not
          qryCaption.Locate('CONTROL_NAME;PARENT_CONTROL;CONTROL_TYPE',
          VarArrayOf([IntToStr(j), temp.Name, 'ELFORMCAPTION_TEXTS']), []) then
        begin
          qryCaption.Insert;
          qryCaptionFORM_NAME.Value := AControl.Name;
          qryCaptionCONTROL_NAME.Value := IntToStr(j);
          qryCaptionPARENT_CONTROL.Value := temp.Name;
          qryCaptionCONTROL_TYPE.Value := 'ELFORMCAPTION_TEXTS';
          qryCaptionCAPTION_VN.Value :=
            TElFormCaption(temp).Texts[j].Caption;
          qryCaption.Post;
        end;
      end;
      for j := 0 to TElFormCaption(temp).Buttons.Count - 1 do
      begin
        if not
          qryCaption.Locate('CONTROL_NAME;PARENT_CONTROL;CONTROL_TYPE',
          VarArrayOf([IntToStr(j), temp.Name, 'ELFORMCAPTION_BUTTONS']), [])
        then
        begin
          qryCaption.Insert;
          qryCaptionFORM_NAME.Value := AControl.Name;
          qryCaptionCONTROL_NAME.Value := IntToStr(j);
          qryCaptionPARENT_CONTROL.Value := temp.Name;
          qryCaptionCONTROL_TYPE.Value := 'ELFORMCAPTION_BUTTONS';
          qryCaptionCAPTION_VN.Value :=
            TElFormCaption(temp).Buttons[j].Caption;
          qryCaption.Post;
        end;
      end;
    end //quet xong ElformCaption
    else
      if temp.ClassName = 'TdxPickEdit' then
    begin
      for j := 0 to TdxPickEdit(temp).Items.Count - 1 do
      begin
        if
          not
          qryCaption.Locate('CONTROL_NAME;PARENT_CONTROL;CONTROL_TYPE',
          VarArrayOf([IntToStr(j), temp.Name, 'DXPICKEDIT_ITEMS']), []) then
        begin
          qryCaption.Insert;
          qryCaptionFORM_NAME.Value := AControl.Name;
          qryCaptionCONTROL_NAME.Value := IntToStr(j);
          qryCaptionPARENT_CONTROL.Value := temp.Name;
          qryCaptionCONTROL_TYPE.Value := 'DXPICKEDIT_ITEMS';
          qryCaptionCAPTION_VN.Value := TdxPickEdit(temp).Items[j];
          qryCaption.Post;
        end;
      end;
    end //quet xong TdxPickEdit
    else
      if temp.ClassName = 'TdxDBPickEdit' then
    begin
      for j := 0 to TdxDBPickEdit(temp).Items.Count - 1 do
      begin
        if
          not
          qryCaption.Locate('CONTROL_NAME;PARENT_CONTROL;CONTROL_TYPE',
          VarArrayOf([IntToStr(j), temp.Name, 'DXDBPICKEDIT_ITEMS']), []) then
        begin
          qryCaption.Insert;
          qryCaptionFORM_NAME.Value := AControl.Name;
          qryCaptionCONTROL_NAME.Value := IntToStr(j);
          qryCaptionPARENT_CONTROL.Value := temp.Name;
          qryCaptionCONTROL_TYPE.Value := 'DXDBPICKEDIT_ITEMS';
          qryCaptionCAPTION_VN.Value := TdxDBPickEdit(temp).Items[j];
          qryCaption.Post;
        end;
      end;
    end //quet xong TdxDBPickEdit
    else
      if temp.ClassName = 'TdxImageEdit' then
    begin
      for j := 0 to TdxImageEdit(temp).Descriptions.Count - 1 do
      begin
        if
          not
          qryCaption.Locate('CONTROL_NAME;PARENT_CONTROL;CONTROL_TYPE',
          VarArrayOf([IntToStr(j), temp.Name, 'DXIMAGEEDIT_DESCR']), []) then
        begin
          qryCaption.Insert;
          qryCaptionFORM_NAME.Value := AControl.Name;
          qryCaptionCONTROL_NAME.Value := IntToStr(j);
          qryCaptionPARENT_CONTROL.Value := temp.Name;
          qryCaptionCONTROL_TYPE.Value := 'DXIMAGEEDIT_DESCR';
          qryCaptionCAPTION_VN.Value :=
            TdxImageEdit(temp).Descriptions[j];
          qryCaption.Post;
        end;
      end;
    end //quet xong TdxImageEdit
    else
      if temp.ClassName = 'TdxDBImageEdit' then
    begin
      for j := 0 to TdxDBImageEdit(temp).Descriptions.Count - 1 do
      begin
        if
          not
          qryCaption.Locate('CONTROL_NAME;PARENT_CONTROL;CONTROL_TYPE',
          VarArrayOf([IntToStr(j), temp.Name, 'DXDBIMAGEEDIT_DESCR']), []) then
        begin
          qryCaption.Insert;
          qryCaptionFORM_NAME.Value := AControl.Name;
          qryCaptionCONTROL_NAME.Value := IntToStr(j);
          qryCaptionPARENT_CONTROL.Value := temp.Name;
          qryCaptionCONTROL_TYPE.Value := 'DXDBIMAGEEDIT_DESCR';
          qryCaptionCAPTION_VN.Value :=
            TdxDBImageEdit(temp).Descriptions[j];
          qryCaption.Post;
        end;
      end;
    end //quet xong TdxImageEdit
    else
      if temp.ClassName = 'TdxDBGrid' then
    begin
      for j := 0 to TdxDBGrid(temp).Bands.Count - 1 do
      begin
        if
          not
          qryCaption.Locate('CONTROL_NAME;PARENT_CONTROL;CONTROL_TYPE',
          VarArrayOf([IntToStr(j), temp.Name, 'DXDBGRID_BANDS']), []) then
        begin
          qryCaption.Insert;
          qryCaptionFORM_NAME.Value := AControl.Name;
          qryCaptionCONTROL_NAME.Value := IntToStr(j);
          qryCaptionPARENT_CONTROL.Value := temp.Name;
          qryCaptionCONTROL_TYPE.Value := 'DXDBGRID_BANDS';
          qryCaptionCAPTION_VN.Value :=
            TdxDBGrid(temp).Bands[j].Caption;
          qryCaption.Post;
        end;
      end; //quet xong Band
    end
    else
      if temp.ClassName = 'TdxDBTreeList' then
    begin
      for j := 0 to TdxDBTreeList(temp).Bands.Count - 1 do
      begin
        if
          not
          qryCaption.Locate('CONTROL_NAME;PARENT_CONTROL;CONTROL_TYPE',
          VarArrayOf([IntToStr(j), temp.Name, 'DXDBTREE_BANDS']), []) then
        begin
          qryCaption.Insert;
          qryCaptionFORM_NAME.Value := AControl.Name;
          qryCaptionCONTROL_NAME.Value := IntToStr(j);
          qryCaptionPARENT_CONTROL.Value := temp.Name;
          qryCaptionCONTROL_TYPE.Value := 'DXDBTREE_BANDS';
          qryCaptionCAPTION_VN.Value :=
            TdxDBTreeList(temp).Bands[j].Caption;
          qryCaption.Post;
        end;
      end; //quet xong Band
    end
    else
      if temp.ClassName = 'TdxDBTreeListPickColumn' then
    begin
      for j := 0 to TdxDBTreeListPickColumn(temp).Items.Count - 1 do
      begin
        if
          not
          qryCaption.Locate('CONTROL_NAME;PARENT_CONTROL;CONTROL_TYPE',
          VarArrayOf([IntToStr(j), temp.Name, 'DXDBTLPICKCOLUMN_ITEMS']), [])
        then
        begin
          qryCaption.Insert;
          qryCaptionFORM_NAME.Value := AControl.Name;
          qryCaptionCONTROL_NAME.Value := IntToStr(j);
          qryCaptionPARENT_CONTROL.Value := temp.Name;
          qryCaptionCONTROL_TYPE.Value := 'DXDBTLPICKCOLUMN_ITEMS';
          qryCaptionCAPTION_VN.Value :=
            TdxDBTreeListPickColumn(temp).Items[j];
          qryCaption.Post;
        end;
      end;
    end //quet xong TdxDBTreeListPickColumn
    else
      if temp.ClassName = 'TdxDBTreeListImageColumn' then
    begin
      for j := 0 to TdxDBTreeListImageColumn(temp).Descriptions.Count - 1 do
      begin
        if
          not
          qryCaption.Locate('CONTROL_NAME;PARENT_CONTROL;CONTROL_TYPE',
          VarArrayOf([IntToStr(j), temp.Name, 'DXDBTLIMAGECOLUMN_DESCR']), [])
        then
        begin
          qryCaption.Insert;
          qryCaptionFORM_NAME.Value := AControl.Name;
          qryCaptionCONTROL_NAME.Value := IntToStr(j);
          qryCaptionPARENT_CONTROL.Value := temp.Name;
          qryCaptionCONTROL_TYPE.Value := 'DXDBTLIMAGECOLUMN_DESCR';
          qryCaptionCAPTION_VN.Value :=
            TdxDBTreeListImageColumn(temp).Descriptions[j];
          qryCaption.Post;
        end;
      end;
    end //quet xong TdxDBTreeListImageColumn
    else
      if temp.ClassName = 'TdxDBGridPickColumn' then
    begin
      for j := 0 to TdxDBGridPickColumn(temp).Items.Count - 1 do
      begin
        if
          not
          qryCaption.Locate('CONTROL_NAME;PARENT_CONTROL;CONTROL_TYPE',
          VarArrayOf([IntToStr(j), temp.Name, 'DXDBGRPICKCOLUMN_ITEMS']), [])
        then
        begin
          qryCaption.Insert;
          qryCaptionFORM_NAME.Value := AControl.Name;
          qryCaptionCONTROL_NAME.Value := IntToStr(j);
          qryCaptionPARENT_CONTROL.Value := temp.Name;
          qryCaptionCONTROL_TYPE.Value := 'DXDBGRPICKCOLUMN_ITEMS';
          qryCaptionCAPTION_VN.Value :=
            TdxDBGridPickColumn(temp).Items[j];
          qryCaption.Post;
        end;
      end;
    end //quet xong TdxDBGridPickColumn
    else
      if temp.ClassName = 'TdxDBGridImageColumn' then
    begin
      for j := 0 to TdxDBGridImageColumn(temp).Descriptions.Count - 1 do
      begin
        if
          not
          qryCaption.Locate('CONTROL_NAME;PARENT_CONTROL;CONTROL_TYPE',
          VarArrayOf([IntToStr(j), temp.Name, 'DXDBGRIMAGECOLUMN_DESCR']), [])
        then
        begin
          qryCaption.Insert;
          qryCaptionFORM_NAME.Value := AControl.Name;
          qryCaptionCONTROL_NAME.Value := IntToStr(j);
          qryCaptionPARENT_CONTROL.Value := temp.Name;
          qryCaptionCONTROL_TYPE.Value := 'DXDBGRIMAGECOLUMN_DESCR';
          qryCaptionCAPTION_VN.Value :=
            TdxDBGridImageColumn(temp).Descriptions[j];
          qryCaption.Post;
        end;
      end;
    end //quet xong TdxDBGridImageColumn
    else
      if temp.ClassName = 'TElStatusBar' then
    begin
      for j := 0 to TElStatusBar(temp).Panels.Count - 1 do
      begin
        if
          not
          qryCaption.Locate('CONTROL_NAME;PARENT_CONTROL;CONTROL_TYPE',
          VarArrayOf([IntToStr(j), temp.Name, 'ELSTATUSBAR_PANELS']), []) then
        begin
          qryCaption.Insert;
          qryCaptionFORM_NAME.Value := AControl.Name;
          qryCaptionCONTROL_NAME.Value := IntToStr(j);
          qryCaptionPARENT_CONTROL.Value := temp.Name;
          qryCaptionCONTROL_TYPE.Value := 'ELSTATUSBAR_PANELS';
          qryCaptionCAPTION_VN.Value :=
            TElStatusBar(temp).Panels[j].Text;
          qryCaption.Post;
        end;
      end; //quet xong StatusBar
    end
    else
      if temp.ClassName = 'TdxSideBar' then
    begin
      for j := 0 to TdxSideBar(temp).GroupCount - 1 do
      begin
        if
          not
          qryCaption.Locate('CONTROL_NAME;PARENT_CONTROL;CONTROL_TYPE',
          VarArrayOf([IntToStr(j), TdxSideBar(temp).Name, 'DXSIDEBAR_GROUPS']),
          []) then
        begin
          qryCaption.Insert;
          qryCaptionFORM_NAME.Value := AControl.Name;
          qryCaptionCONTROL_NAME.Value := IntToStr(j);
          qryCaptionPARENT_CONTROL.Value := TdxSideBar(temp).Name;
          qryCaptionCONTROL_TYPE.Value := 'DXSIDEBAR_GROUPS';
          qryCaptionCAPTION_VN.Value :=
            TdxSideBar(temp).Groups[j].Caption;
          qryCaption.Post;
        end;
        //quet cac item trong group
        for k := 0 to TdxSideBar(temp).Groups[j].ItemCount - 1 do
        begin
          if
            not
            qryCaption.Locate('CONTROL_NAME;PARENT_CONTROL;CONTROL_TYPE',
            VarArrayOf([IntToStr(k), TdxSideBar(temp).Name + '[' + IntToStr(j) +
            ']', 'DXSIDEBAR_ITEMS']), []) then
          begin
            qryCaption.Insert;
            qryCaptionFORM_NAME.Value := AControl.Name;
            qryCaptionCONTROL_NAME.Value := IntToStr(k);
            qryCaptionPARENT_CONTROL.Value := TdxSideBar(temp).Name + '['
              + IntToStr(j) + ']';
            qryCaptionCONTROL_TYPE.Value := 'DXSIDEBAR_ITEMS';
            qryCaptionCAPTION_VN.Value :=
              TdxSideBar(temp).Groups[j].Items[k].Caption;
            qryCaption.Post;
          end;
        end;
      end; //quet xong dxSideBar
    end
    else
      if temp.ClassName = 'TdxInspectorDBImageRow' then
    begin
      for j := 0 to TdxInspectorDBImageRow(temp).Descriptions.Count - 1 do
      begin
        if
          not
          qryCaption.Locate('CONTROL_NAME;PARENT_CONTROL;CONTROL_TYPE',
          VarArrayOf([IntToStr(j), temp.Name, 'DXINS_DBIMAGEROW_DESCR']), [])
        then
        begin
          qryCaption.Insert;
          qryCaptionFORM_NAME.Value := AControl.Name;
          qryCaptionCONTROL_NAME.Value := IntToStr(j);
          qryCaptionPARENT_CONTROL.Value := temp.Name;
          qryCaptionCONTROL_TYPE.Value := 'DXINS_DBIMAGEROW_DESCR';
          qryCaptionCAPTION_VN.Value :=
            TdxInspectorDBImageRow(temp).Descriptions[j];
          qryCaption.Post;
        end;
      end;
    end //quet xong TdxInspectorDBImageRow
    else
      if temp.InheritsFrom(TFrame) then
    begin
      for j := 0 to TFrame(temp).ComponentCount - 1 do
      begin
        if not (TFrame(temp).Components[j].InheritsFrom(TAction)) then
          if HasProperty(TFrame(temp).Components[j], 'caption') or
            HasProperty(TFrame(temp).Components[j], 'hint') then
          begin
            if HasProperty(TFrame(temp).Components[j], 'caption') then
              caption := GetProperty(TFrame(temp).Components[j], 'caption')
            else
              caption := '';
            if HasProperty(TFrame(temp).Components[j], 'hint') then
              hint := GetProperty(TFrame(temp).Components[j], 'hint')
            else
              hint := '';

            if
              not
              qryCaption.Locate('CONTROL_NAME;PARENT_CONTROL;CONTROL_TYPE',
              VarArrayOf([TFrame(temp).Components[j].Name, TFrame(temp).Name,
              'FRAME_COM']), []) then
            begin
              qryCaption.Insert;
              qryCaptionCONTROL_NAME.Value :=
                TFrame(temp).Components[j].Name;
              qryCaptionCAPTION_VN.Value := caption;
              qryCaptionHINT_VN.Value := hint;
              qryCaptionFORM_NAME.Value := AControl.Name;
              qryCaptionPARENT_CONTROL.Value := TFrame(temp).Name;
              qryCaptionCONTROL_TYPE.Value := 'FRAME_COM';
              qryCaption.Post;
            end;
          end;
      end;
    end; // for duyet component
    bar.Position := 0;
  end;
end;

procedure TdmMain.LoadUIControl;
var
  i: integer;
  prop_val: integer;
  ret: Boolean;
  reg: TRegistry;
begin
  //=========== Locked by ThuyPTP - 25/11/2007 ================
  //====== Khong su dung tu database m� lay tu Registry =======
  {qryUIConfig.SQL.Text :=
    'SELECT PROP_ID, PROP_VAL FROM CFG_INTERFACE ' +
    ' where CONTROL_TYPE=:CONTROL_TYPE';
  qryUIConfig.Prepare;
  qryUIConfig.ParamByName('CONTROL_TYPE').Value := 'UI_CONTROL';
  qryUIConfig.Open;

  if qryUIConfig.IsEmpty = false then
  begin
    qryUIConfig.First;
    while not qryUIConfig.Eof do
    begin
      prop_id := qryUIConfig.FieldByName('PROP_ID').AsString;
      prop_val := StrToIntDef(qryUIConfig.FieldByName('PROP_VAL').AsString, 0);

      if prop_id = 'SPLITTER_SHOW_SNAP_BUTTON' then
        sysUIConfig.Splitter_ShowSnapButton := (prop_val = 1)
      else
        if prop_id = 'SPLITTER_DEFAULT_SIZE' then
        sysUIConfig.Splitter_DefaultSize := prop_val
      else
        if prop_id = 'SPLITTER_BEVEL_INNER' then
        sysUIConfig.Splitter_BevelInner :=
          TBevelCut(prop_val)
      else
        if prop_id = 'SPLITTER_USE_XP_THEME' then
        sysUIConfig.Splitter_UseXPTheme := (prop_val = 1)
      else
        if prop_id = 'BUTTON_BEVEL_KIND' then
        sysUIConfig.Button_BevelKind :=
          TBevelKind(prop_val)
      else
        if prop_id = 'BUTTON_THIN_FRAME' then
        sysUIConfig.Button_ThinFrame := (prop_val = 1)
      else
        if prop_id = 'BUTTON_MONEY_FLAT' then
        sysUIConfig.Button_MoneyFlat := (prop_val = 1)
      else
        if prop_id = 'BUTTON_MONEY_ACTIVE_COLOR' then
        sysUIConfig.Button_MoneyActiveColor := prop_val
      else
        if prop_id = 'BUTTON_MONEY_INACTIVE_COLOR' then
        sysUIConfig.Button_MoneyInActiveColor := prop_val
      else
        if prop_id = 'BUTTON_DOWN_COLOR' then
        sysUIConfig.Button_MoneyDownColor := prop_val
      else
        if prop_id = 'BUTTON_FLAT' then
        sysUIConfig.Button_Flat := (prop_val = 1)
      else
        if prop_id = 'BUTTON_USE_XP_THEME' then
        sysUIConfig.Button_UseXPTheme := (prop_val = 1)
      else
        if prop_id = 'BUTTON_COLOR' then
        sysUIConfig.Button_Color := prop_val
      else
        if prop_id = 'PAGE_ACTIVE_TAB_COLOR' then
        sysUIConfig.Page_ActiveTabColor := prop_val
      else
        if prop_id = 'PAGE_COLOR' then
        sysUIConfig.Page_Color := prop_val
      else
        if prop_id = 'PAGE_FLAT' then
        sysUIConfig.Page_Flat := (prop_val = 1)
      else
        if prop_id = 'PAGE_FLAT_TAB_BORDER_COLOR' then
        sysUIConfig.Page_FlatTabBorderColor := prop_val
      else
        if prop_id = 'PAGE_FONT_COLOR' then
        sysUIConfig.Page_FontColor := prop_val
      else
        if prop_id = 'PAGE_HOT_TRACK_FONT_COLOR' then
        sysUIConfig.Page_HotTrackFontColor := prop_val
      else
        if prop_id = 'PAGE_FONT_SIZE' then
        sysUIConfig.Page_FontSize := prop_val
      else
        if prop_id = 'PAGE_FONT_STYLE' then
      begin
        if (prop_val mod 2) = 1 then
          sysUIConfig.Page_FontStyle :=
            sysUIConfig.Page_FontStyle + [fsBold]
        else
          sysUIConfig.Page_FontStyle :=
            sysUIConfig.Page_FontStyle - [fsBold];

        if (prop_val div 2) = 1 then
          sysUIConfig.Page_FontStyle :=
            sysUIConfig.Page_FontStyle + [fsItalic]
        else
          sysUIConfig.Page_FontStyle :=
            sysUIConfig.Page_FontStyle - [fsItalic];
      end
      else
        if prop_id = 'PAGE_HOT_TRACK' then
        sysUIConfig.Page_HotTrack := (prop_val = 1)
      else
        if prop_id = 'PAGE_INACTIVE_TAB_COLOR' then
        sysUIConfig.Page_InActiveTabColor := prop_val
      else
        if prop_id = 'PAGE_MULTI_LINE' then
        sysUIConfig.Page_MultiLine := (prop_val = 1)
      else
        if prop_id = 'PAGE_SHOW_BORDER' then
        sysUIConfig.Page_ShowBorder := (prop_val = 1)
      else
        if prop_id = 'PAGE_TAB_BK_COLOR' then
        sysUIConfig.Page_TabBkColor := prop_val
      else
        if prop_id = 'PAGE_TAB_POSITION' then
        sysUIConfig.Page_TabPosition :=
          TElTabPosition(prop_val)
      else
        if prop_id = 'PAGE_STYLE' then
        sysUIConfig.Page_Style :=
          TElTabStyle(prop_val)
      else
        if prop_id = 'PAGE_USE_XP_THEME' then
        sysUIConfig.Page_UseXPTheme := (prop_val = 1)
      else
        if prop_id = 'PAGE_VERTICAL_SIDE_CAPTION' then
        sysUIConfig.Page_VerticalSideCaption := (prop_val = 1)
      else
        if prop_id = 'SIDEBAR_BKGROUND_BEGIN_COLOR' then
        sysUIConfig.SideBar_BkGroundBeginColor := prop_val
      else
        if prop_id = 'SIDEBAR_BKGROUND_END_COLOR' then
        sysUIConfig.SideBar_BkGroundEndColor := prop_val
      else
        if prop_id = 'SIDEBAR_BKGROUND_FILL_STYLE' then
        sysUIConfig.SideBar_BkGroundFillStyle :=
          TdxSidebarFillStyle(prop_val)
      else
        if prop_id = 'SIDEBAR_BORDER_STYLE' then
        sysUIConfig.SideBar_BorderStyle :=
          TBorderStyle(prop_val)
      else
        if prop_id = 'SIDEBAR_CAN_SELECTED' then
        sysUIConfig.SideBar_CanSelected := (prop_val = 1)
      else
        if prop_id = 'SIDEBAR_GROUP_FONT_COLOR' then
        sysUIConfig.SideBar_GroupFontColor := prop_val
      else
        if prop_id = 'SIDEBAR_GROUP_FONT_SIZE' then
        sysUIConfig.SideBar_GroupFontSize := prop_val
      else
        if prop_id = 'SIDEBAR_GROUP_FONT_STYLE' then
      begin
        if (prop_val mod 2) = 1 then
          sysUIConfig.SideBar_GroupFontStyle :=
            sysUIConfig.SideBar_GroupFontStyle + [fsBold]
        else
          sysUIConfig.SideBar_GroupFontStyle :=
            sysUIConfig.SideBar_GroupFontStyle - [fsBold];

        if (prop_val div 2) = 1 then
          sysUIConfig.SideBar_GroupFontStyle :=
            sysUIConfig.SideBar_GroupFontStyle + [fsItalic]
        else
          sysUIConfig.SideBar_GroupFontStyle :=
            sysUIConfig.SideBar_GroupFontStyle - [fsItalic];
      end
      else
        if prop_id = 'SIDEBAR_ITEM_FONT_COLOR' then
        sysUIConfig.SideBar_ItemFontColor := prop_val
      else
        if prop_id = 'SIDEBAR_ITEM_FONT_SIZE' then
        sysUIConfig.SideBar_ItemFontSize := prop_val
      else
        if prop_id = 'SIDEBAR_ITEM_FONT_STYLE' then
      begin
        if (prop_val mod 2) = 1 then
          sysUIConfig.SideBar_ItemFontStyle :=
            sysUIConfig.SideBar_ItemFontStyle + [fsBold]
        else
          sysUIConfig.SideBar_ItemFontStyle :=
            sysUIConfig.SideBar_ItemFontStyle - [fsBold];

        if (prop_val div 2) = 1 then
          sysUIConfig.SideBar_ItemFontStyle :=
            sysUIConfig.SideBar_ItemFontStyle + [fsItalic]
        else
          sysUIConfig.SideBar_ItemFontStyle :=
            sysUIConfig.SideBar_ItemFontStyle - [fsItalic];
      end
      else
        if prop_id = 'SIDEBAR_PAINT_STYLE' then
        sysUIConfig.SideBar_PaintStyle :=
          TdxsbPaintStyle(prop_val)
      else
        if prop_id = 'SIDEBAR_SHOW_GROUP' then
        sysUIConfig.SideBar_ShowGroup := (prop_val = 1)
      else
        if prop_id = 'SIDEBAR_COLOR' then
        sysUIConfig.SideBar_Color := prop_val
      else
        if prop_id = 'REQUIRED_FIELD_COLOR' then
        sysUIConfig.Required_Field_Color := prop_val
      else
        if prop_id = 'READ_ONLY_COLOR' then
        sysUIConfig.Read_Only_Color := prop_val;
      qryUIConfig.Next;
    end
  end;
  qryUIConfig.Close; }


  //************************************************************************
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;

  ret := reg.KeyExists(REG_PATH + 'UIControl');
  if ret = false then
    exit;
  reg.OpenKey(REG_PATH + 'UIControl', False);
  if ret then
  begin
    prop_val := StrToIntDef(reg.ReadString('SPLITTER_SHOW_SNAP_BUTTON'), 0);
    sysUIConfig.Splitter_ShowSnapButton := (prop_val = 1);

    prop_val := StrToIntDef(reg.ReadString('SPLITTER_DEFAULT_SIZE'), 0);
    sysUIConfig.Splitter_DefaultSize := prop_val;

    prop_val := StrToIntDef(reg.ReadString('SPLITTER_BEVEL_INNER'), 0);
    sysUIConfig.Splitter_BevelInner := TBevelCut(prop_val);

    prop_val := StrToIntDef(reg.ReadString('SPLITTER_USE_XP_THEME'), 0);
    sysUIConfig.Splitter_UseXPTheme := (prop_val = 1);

    prop_val := StrToIntDef(reg.ReadString('BUTTON_BEVEL_KIND'), 0);
    sysUIConfig.Button_BevelKind := TBevelKind(prop_val);

    prop_val := StrToIntDef(reg.ReadString('BUTTON_THIN_FRAME'), 0);
    sysUIConfig.Button_ThinFrame := (prop_val = 1);

    prop_val := StrToIntDef(reg.ReadString('BUTTON_MONEY_FLAT'), 0);
    sysUIConfig.Button_MoneyFlat := (prop_val = 1);

    prop_val := StrToIntDef(reg.ReadString('BUTTON_MONEY_ACTIVE_COLOR'), 0);
    sysUIConfig.Button_MoneyActiveColor := prop_val;

    prop_val := StrToIntDef(reg.ReadString('BUTTON_MONEY_INACTIVE_COLOR'), 0);
    sysUIConfig.Button_MoneyInActiveColor := prop_val;

    prop_val := StrToIntDef(reg.ReadString('BUTTON_DOWN_COLOR'), 0);
    sysUIConfig.Button_MoneyDownColor := prop_val;

    prop_val := StrToIntDef(reg.ReadString('BUTTON_FLAT'), 0);
    sysUIConfig.Button_Flat := (prop_val = 1);

    prop_val := StrToIntDef(reg.ReadString('BUTTON_USE_XP_THEME'), 0);
    sysUIConfig.Button_UseXPTheme := (prop_val = 1);

    prop_val := StrToIntDef(reg.ReadString('BUTTON_COLOR'), 0);
    sysUIConfig.Button_Color := prop_val;

    prop_val := StrToIntDef(reg.ReadString('PAGE_ACTIVE_TAB_COLOR'), 0);
    sysUIConfig.Page_ActiveTabColor := prop_val;

    prop_val := StrToIntDef(reg.ReadString('PAGE_COLOR'), 0);
    sysUIConfig.Page_Color := prop_val;

    prop_val := StrToIntDef(reg.ReadString('PAGE_FLAT'), 0);
    sysUIConfig.Page_Flat := (prop_val = 1);

    prop_val := StrToIntDef(reg.ReadString('PAGE_FLAT_TAB_BORDER_COLOR'), 0);
    sysUIConfig.Page_FlatTabBorderColor := prop_val;

    prop_val := StrToIntDef(reg.ReadString('PAGE_FONT_COLOR'), 0);
    sysUIConfig.Page_FontColor := prop_val;

    prop_val := StrToIntDef(reg.ReadString('PAGE_HOT_TRACK_FONT_COLOR'), 0);
    sysUIConfig.Page_HotTrackFontColor := prop_val;

    prop_val := StrToIntDef(reg.ReadString('PAGE_FONT_SIZE'), 0);
    sysUIConfig.Page_FontSize := prop_val;

    prop_val := StrToIntDef(reg.ReadString('PAGE_FONT_STYLE'), 0);
    if (prop_val mod 2) = 1 then
      sysUIConfig.Page_FontStyle :=
        sysUIConfig.Page_FontStyle + [fsBold]
    else
      sysUIConfig.Page_FontStyle :=
        sysUIConfig.Page_FontStyle - [fsBold];

    if (prop_val div 2) = 1 then
      sysUIConfig.Page_FontStyle :=
        sysUIConfig.Page_FontStyle + [fsItalic]
    else
      sysUIConfig.Page_FontStyle :=
        sysUIConfig.Page_FontStyle - [fsItalic];

    prop_val := StrToIntDef(reg.ReadString('PAGE_HOT_TRACK'), 0);
    sysUIConfig.Page_HotTrack := (prop_val = 1);

    prop_val := StrToIntDef(reg.ReadString('PAGE_INACTIVE_TAB_COLOR'), 0);
    sysUIConfig.Page_InActiveTabColor := prop_val;

    prop_val := StrToIntDef(reg.ReadString('PAGE_MULTI_LINE'), 0);
    sysUIConfig.Page_MultiLine := (prop_val = 1);

    prop_val := StrToIntDef(reg.ReadString('PAGE_SHOW_BORDER'), 0);
    sysUIConfig.Page_ShowBorder := (prop_val = 1);

    prop_val := StrToIntDef(reg.ReadString('PAGE_TAB_BK_COLOR'), 0);
    sysUIConfig.Page_TabBkColor := prop_val;

    prop_val := StrToIntDef(reg.ReadString('PAGE_TAB_POSITION'), 0);
    sysUIConfig.Page_TabPosition := TElTabPosition(prop_val);

    prop_val := StrToIntDef(reg.ReadString('PAGE_STYLE'), 0);
    sysUIConfig.Page_Style := TElTabStyle(prop_val);

    prop_val := StrToIntDef(reg.ReadString('PAGE_USE_XP_THEME'), 0);
    sysUIConfig.Page_UseXPTheme := (prop_val = 1);

    prop_val := StrToIntDef(reg.ReadString('PAGE_VERTICAL_SIDE_CAPTION'), 0);
    sysUIConfig.Page_VerticalSideCaption := (prop_val = 1);

    prop_val := StrToIntDef(reg.ReadString('SIDEBAR_BKGROUND_BEGIN_COLOR'), 0);
    sysUIConfig.SideBar_BkGroundBeginColor := prop_val;

    prop_val := StrToIntDef(reg.ReadString('SIDEBAR_BKGROUND_END_COLOR'), 0);
    sysUIConfig.SideBar_BkGroundEndColor := prop_val;

    prop_val := StrToIntDef(reg.ReadString('SIDEBAR_BKGROUND_FILL_STYLE'), 0);
    sysUIConfig.SideBar_BkGroundFillStyle := TdxSidebarFillStyle(prop_val);

    prop_val := StrToIntDef(reg.ReadString('SIDEBAR_BORDER_STYLE'), 0);
    sysUIConfig.SideBar_BorderStyle := TBorderStyle(prop_val);

    prop_val := StrToIntDef(reg.ReadString('SIDEBAR_CAN_SELECTED'), 0);
    sysUIConfig.SideBar_CanSelected := (prop_val = 1);

    prop_val := StrToIntDef(reg.ReadString('SIDEBAR_GROUP_FONT_COLOR'), 0);
    sysUIConfig.SideBar_GroupFontColor := prop_val;

    prop_val := StrToIntDef(reg.ReadString('SIDEBAR_GROUP_FONT_SIZE'), 0);
    sysUIConfig.SideBar_GroupFontSize := prop_val;

    prop_val := StrToIntDef(reg.ReadString('SIDEBAR_GROUP_FONT_STYLE'), 0);
    if (prop_val mod 2) = 1 then
      sysUIConfig.SideBar_GroupFontStyle :=
        sysUIConfig.SideBar_GroupFontStyle + [fsBold]
    else
      sysUIConfig.SideBar_GroupFontStyle :=
        sysUIConfig.SideBar_GroupFontStyle - [fsBold];

    if (prop_val div 2) = 1 then
      sysUIConfig.SideBar_GroupFontStyle :=
        sysUIConfig.SideBar_GroupFontStyle + [fsItalic]
    else
      sysUIConfig.SideBar_GroupFontStyle :=
        sysUIConfig.SideBar_GroupFontStyle - [fsItalic];


    prop_val := StrToIntDef(reg.ReadString('SIDEBAR_ITEM_FONT_COLOR'), 0);
    sysUIConfig.SideBar_ItemFontColor := prop_val;

    prop_val := StrToIntDef(reg.ReadString('SIDEBAR_ITEM_FONT_SIZE'), 0);
    sysUIConfig.SideBar_ItemFontSize := prop_val;

    prop_val := StrToIntDef(reg.ReadString('SIDEBAR_ITEM_FONT_STYLE'), 0);
    if (prop_val mod 2) = 1 then
      sysUIConfig.SideBar_ItemFontStyle :=
        sysUIConfig.SideBar_ItemFontStyle + [fsBold]
    else
      sysUIConfig.SideBar_ItemFontStyle :=
        sysUIConfig.SideBar_ItemFontStyle - [fsBold];

    if (prop_val div 2) = 1 then
      sysUIConfig.SideBar_ItemFontStyle :=
        sysUIConfig.SideBar_ItemFontStyle + [fsItalic]
    else
      sysUIConfig.SideBar_ItemFontStyle :=
        sysUIConfig.SideBar_ItemFontStyle - [fsItalic];

    prop_val := StrToIntDef(reg.ReadString('SIDEBAR_PAINT_STYLE'), 0);
    sysUIConfig.SideBar_PaintStyle := TdxsbPaintStyle(prop_val);

    prop_val := StrToIntDef(reg.ReadString('SIDEBAR_SHOW_GROUP'), 0);
    sysUIConfig.SideBar_ShowGroup := (prop_val = 1);

    prop_val := StrToIntDef(reg.ReadString('SIDEBAR_COLOR'), 0);
    sysUIConfig.SideBar_Color := prop_val;

    prop_val := StrToIntDef(reg.ReadString('REQUIRED_FIELD_COLOR'), 0);
    sysUIConfig.Required_Field_Color := prop_val;

    prop_val := StrToIntDef(reg.ReadString('READ_ONLY_COLOR'), 0);
    sysUIConfig.Read_Only_Color := prop_val;
  end;
end;

procedure TdmMain.LoadUIConfig;
begin
  if not Assigned(sysUIConfig) then exit;
  LoadLookAndFeel;
  LoadGrid;
  LoadUIControl;
end;

procedure TdmMain.LoadFormatConfig;
var
  i: integer;
begin
  if qryFormatOption.Active then
    qryFormatOption.Refresh
  else
    qryFormatOption.Open;

  if qryFormatOption.RecordCount = 1 then
  begin
    UseDelphiDateTimeFormats := false;
    UseDelphiDateTimeFormats := True;
    if not qryFormatOptionTHOUSAND_SEPARATOR.IsNull then
      ThousandSeparator := qryFormatOptionTHOUSAND_SEPARATOR.AsString[1];
    if not qryFormatOptionDECIMAL_SEPARATOR.IsNull then
      DecimalSeparator := qryFormatOptionDECIMAL_SEPARATOR.AsString[1];
    ShortDateFormat := qryFormatOptionDATE_FORMAT.AsString;
    ShortTimeFormat := qryFormatOptionTIME_FORMAT.AsString;
    sysConfig.FloatFormat := qryFormatOptionNUMERIC_FORMAT.AsString;
    sysConfig.RoundNumber := qryFormatOptionROUND_NUMBER.AsInteger;
    sysConfig.DateFormat := qryFormatOptionDATE_FORMAT.AsString;
    sysConfig.TimeFormat := qryFormatOptionTIME_FORMAT.AsString;
    sysConfig.DateTimeFormat := qryFormatOptionDATE_TIME_FORMAT.AsString;
  end;
  qryFormatOption.Close;

  for i := 0 to Application.ComponentCount - 1 do
    if (Application.Components[i] is TDataModule) then
      ApplyFieldFormat(TControl(Application.Components[i]));
  for i := 0 to Screen.FormCount - 1 do
    ApplyFieldFormat(Screen.Forms[i]);

  if qryIDFormat.Active then
    qryIDFormat.Refresh
  else
    qryIDFormat.Open;
end;

//======================================================================

function CheckVNUnicode(s: Variant): boolean;
var
  Str: string;
  I: Integer;
  C: Char;
begin
  Str := UTF8Encode(VarToWideStr(s));
  for i := 1 to Length(Str) do
  begin
    C := Str[i];
    if not (C in ['a'..'z', 'A'..'Z', '_', '1'..'9', '0']) then
    begin
      Result := false;
      Exit;
    end;
  end;
  Result := true;
end;

function CheckVNUnicode_Only(s: Variant): boolean;
var
  Str: string;
  I: Integer;
  C: Char;
begin
  Str := UTF8Encode(VarToWideStr(s));
  if Str <> VarToStr(s) then
    Result := false
  else
    Result := true;
end;

function GetWindowStyle: string;
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\ThemeManager',
      True) then
      Result := reg.ReadString('ThemeActive');
    Reg.Free;
  except Reg.Free;
  end;
end;

procedure ApplyFieldFormat(AControl: TControl);
var
  i: integer;
begin
  for i := 0 to AControl.ComponentCount - 1 do
  begin
    if AControl.Components[i] is TFloatField then
    begin
      TFloatField(AControl.Components[i]).DisplayFormat :=
        sysConfig.FloatFormat;
    end
    else
      if AControl.Components[i] is TIBOFloatField then
    begin
      TIBOFloatField(AControl.Components[i]).DisplayFormat :=
        sysConfig.FloatFormat;
      TIBOFloatField(AControl.Components[i]).EditFormat :=
        sysConfig.FloatFormat;
    end
    else
      if AControl.Components[i] is TDateField then
    begin
      TDateField(AControl.Components[i]).DisplayFormat := sysConfig.DateFormat;
    end
    else
      if AControl.Components[i] is TTimeField then
    begin
      TTimeField(AControl.Components[i]).DisplayFormat := sysConfig.TimeFormat;
    end
    else
      if AControl.Components[i] is TDateTimeField then
    begin
      TDateTimeField(AControl.Components[i]).DisplayFormat :=
        sysConfig.DateTimeFormat;
    end;
  end;
end;

function MsgUnicode(Msg, Title: Widestring; AMsgType: Integer = 0; AMsgIcon:
  Integer
  = 0): Integer;
var
  MsgText: WideString;
begin
  MsgText := UTF8Decode(Msg);
  with TMsgDlgFrm.Create(Application, -1, MsgText, Utf8Decode(Title), AMsgType)
    do
  try
    Width := LblContent.Width + 75;
    Result := ShowModal;
  finally
    Free;
  end;
end;

procedure LoadPermissionList;
var
  permission, i: integer;
begin
  //================================================================//
  // Thu tuc nay` nap thong tin phan quyen cua User hien tai        //
  // Thong tin nay` se duoc su dung de kiem tra User co' quyen gi`  //
  // tren chuc nang - bao cao                                       //
  //================================================================//

  // Load phan quyen tren Feature
  if (sysConfig.User = 'smallfoot') or
    (sysConfig.User = 'sspadmin') then
  begin
    permission := 30;
    for i := Right_Min to Right_Max do
    begin
      sysConfig.FeaturePermission[i] := permission;
      sysConfig.ReportPermission[i] := permission + 1;
    end;
    exit;
  end
  else
    with dmMain.qryFeaturePermissions do
    begin
      if Active then Close;
      ParamByName('USER_ID').Value := sysConfig.User;
      ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
      Open;
      First;
      while not Eof do
      begin
        if (FieldByName('FEATURE_ID').AsInteger >= Right_Min) and
          (FieldByName('FEATURE_ID').AsInteger <= Right_Max) then
        begin
          permission := 0;
          if FieldByName('READ_RIGHT').AsInteger > 0 then
            permission := (permission or Ord(ptMREAD));
          if FieldByName('INSERT_RIGHT').AsInteger > 0 then
            permission := (permission or Ord(ptMINSERT));
          if FieldByName('UPDATE_RIGHT').AsInteger > 0 then
            permission := (permission or Ord(ptMEDIT));
          if FieldByName('DELETE_RIGHT').AsInteger > 0 then
            permission := (permission or Ord(ptMDELETE));
          sysConfig.FeaturePermission[FieldByName('FEATURE_ID').AsInteger] :=
            permission;
        end;
        Next;
      end;
      Close;
    end;
  // Load phan quyen tren Report
  with dmMain.qryReportPermissions do
  begin
    if Active then Close;
    ParamByName('USER_ID').Value := sysConfig.User;
    ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
    Open;
    First;
    while not Eof do
    begin
      if (FieldByName('REPORT_ID').AsInteger >= Right_Min) and
        (FieldByName('REPORT_ID').AsInteger <= Right_Max) then
      begin
        permission := 1;
        if FieldByName('READ_RIGHT').AsInteger > 0 then
          permission := (permission or Ord(ptMREAD));
        if FieldByName('INSERT_RIGHT').AsInteger > 0 then
          permission := (permission or Ord(ptMINSERT));
        if FieldByName('UPDATE_RIGHT').AsInteger > 0 then
          permission := (permission or Ord(ptMEDIT));
        if FieldByName('DELETE_RIGHT').AsInteger > 0 then
          permission := (permission or Ord(ptMDELETE));
        sysConfig.ReportPermission[FieldByName('REPORT_ID').AsInteger] :=
          permission;
      end;
      Next;
    end;
    Close;
  end
end;

procedure SetPermision(com: TComponent; modul_id: integer; mask:
  TPermissionMask);
var
  tag_value: integer;
begin
  //===========================================================//
  // Thu tuc nay` se Dang ky' nhung quyen nao` can kiem tra    //
  // tren 1 component.                                         //
  // Mac dinh cua mask la [ptMREAD,ptMINSERT,ptMEDIT,ptMDELETE]//
  // nghia la` dang ky tat ca 4 quyen nay. Neu muon dang ky    //
  // mot so quyen thoi thi truyen them tham so mask vao`       //
  // * Vi du: SetPermision(com,mol_id,[ptREAD,ptEDIT]) thi`    //
  //   component na`y se chi duoc kiem quyen READ va EDIT thoi //
  //===========================================================//
  // Vi gia tri modul luc nao cung >0 va` mask <> [] nen sau khi//
  // thuc hien SetPermision, gia tri Tag cua component luon >1 //
  // nhu vay co nghia la component nao` co' Tag<=1 thi` khong co//
  // dang ky kiem tra quyen, khi do ha`m CheckPermission se bo //
  // qua cac component nay` khi kiem tra                       //
  //===========================================================//
  // Ham nay se duoc su dung khi Init hay Create 1 form, datamodul
  // de dang ky cac component nam tren form, datamodul do. Co`n //
  // kiem tra quyen se duoc thuc hien bat dau tu luc Show tro di//
  //===========================================================//
  //bit[0] = 0 -> Feature check , =1 -> Report check
  tag_value := GetIntFromSetPermission(mask);
  //tu bit[5] tro di, la` gia tri modul_id
  if tag_value > 0 then
  begin
    tag_value := (tag_value or (Ord(ptMMODULID) * modul_id));
    com.Tag := tag_value;
  end;
end;

procedure SetPermision_InSidebarItem(com: TdxSidebarItem; modul_id: integer; mask:
  TPermissionMask);
var
  tag_value: integer;
begin
  //===========================================================//
  // Thu tuc nay` se Dang ky' nhung quyen nao` can kiem tra    //
  // tren 1 component.                                         //
  // Mac dinh cua mask la [ptMREAD,ptMINSERT,ptMEDIT,ptMDELETE]//
  // nghia la` dang ky tat ca 4 quyen nay. Neu muon dang ky    //
  // mot so quyen thoi thi truyen them tham so mask vao`       //
  // * Vi du: SetPermision(com,mol_id,[ptREAD,ptEDIT]) thi`    //
  //   component na`y se chi duoc kiem quyen READ va EDIT thoi //
  //===========================================================//
  // Vi gia tri modul luc nao cung >0 va` mask <> [] nen sau khi//
  // thuc hien SetPermision, gia tri Tag cua component luon >1 //
  // nhu vay co nghia la component nao` co' Tag<=1 thi` khong co//
  // dang ky kiem tra quyen, khi do ha`m CheckPermission se bo //
  // qua cac component nay` khi kiem tra                       //
  //===========================================================//
  // Ham nay se duoc su dung khi Init hay Create 1 form, datamodul
  // de dang ky cac component nam tren form, datamodul do. Co`n //
  // kiem tra quyen se duoc thuc hien bat dau tu luc Show tro di//
  //===========================================================//
  //bit[0] = 0 -> Feature check , =1 -> Report check
  tag_value := GetIntFromSetPermission(mask);
  //tu bit[5] tro di, la` gia tri modul_id
  if tag_value > 0 then
  begin
    tag_value := (tag_value or (Ord(ptMMODULID) * modul_id));
    com.Tag := tag_value;
  end;
end;

//==================================================================

procedure SetLogConfig(owner: TComponent);
var
  i: integer;
  temp: TComponent;
begin
  if dmMain.qryLogConfig.Active then
    dmMain.qryLogConfig.Close;
  dmMain.qryLogConfig.ParamByName('FORM_NAME').Value := owner.Name;
  dmMain.qryLogConfig.Open;
  if dmMain.qryLogConfig.IsEmpty then
  begin
    dmMain.qryLogConfig.Close;
    Exit;
  end;
  dmMain.qryLogConfig.First;
  while not dmMain.qryLogConfig.Eof do
  begin
    temp := owner.FindComponent(dmMain.qryLogConfigDATASET_NAME.AsString);
    if Assigned(temp) and (temp is TIBOQuery) then
    begin
      TIBOQuery(temp).FieldsDisplayLabel.Text :=
        UTF8Encode(dmMain.qryLogConfigLOG_INSERT_FORMAT.Value);
      TIBOQuery(temp).FieldsDisplayFormat.Text :=
        UTF8Encode(dmMain.qryLogConfigLOG_EDIT_FORMAT.Value);
      TIBOQuery(temp).FieldsAlignment.Text :=
        UTF8Encode(dmMain.qryLogConfigLOG_DELETE_FORMAT.Value);
      if not dmMain.qryLogConfigFEATURE_ID.IsNull then
        TIBOQuery(temp).FieldsEditMask.Text :=
          IntToStr(dmMain.qryLogConfigFEATURE_ID.Value);
    end;
    dmMain.qryLogConfig.Next;
  end;
  dmMain.qryLogConfig.Close;
end;

procedure SetPermissionInForm(form: TComponent);
var
  i, g_index, i_index: integer;
  temp, sidebar: TComponent;
  sidebar_item: TdxSideBarItem;
  com_name: string;
  mask: TPermissionMask;
begin
  if dmMain.qryAuthority.Active then
    dmMain.qryAuthority.Close;
  dmMain.qryAuthority.ParamByName('FORM_NAME').Value := form.Name;
  dmMain.qryAuthority.Open;
  if dmMain.qryAuthority.IsEmpty then exit;
  dmMain.qryAuthority.First;
  while not dmMain.qryAuthority.Eof do
  begin
    if (dmMain.qryAuthorityCOMP_CLASS.Value = 'TdxSideBar') then
    begin
      g_index := Pos('|', dmMain.qryAuthorityCOMP_NAME.AsString);
      com_name := Copy(dmMain.qryAuthorityCOMP_NAME.AsString, 1, g_index - 1);
      sidebar := form.FindComponent(com_name);
      if Assigned(sidebar) then
        g_index := StrToInt(Copy(dmMain.qryAuthorityCOMP_NAME.AsString, g_index + 1, Length(dmMain.qryAuthorityCOMP_NAME.AsString) - g_index));
      i_index := g_index mod 100;
      g_index := g_index div 100;
      sidebar_item := TdxSidebar(sidebar).Groups[g_index].Items[i_index];
      if Assigned(sidebar_item) then
      begin
        mask := [];
        if dmMain.qryAuthorityCHECK_VIEW.Value = 1 then
          mask := mask + [ptMREAD];
        if dmMain.qryAuthorityCHECK_EDIT.Value = 1 then
          mask := mask + [ptMEDIT];
        if dmMain.qryAuthorityCHECK_INSERT.Value = 1 then
          mask := mask + [ptMINSERT];
        if dmMain.qryAuthorityCHECK_DELETE.Value = 1 then
          mask := mask + [ptMDELETE];
        SetPermision_InSidebarItem(sidebar_item, dmMain.qryAuthorityFEATURE_ID.Value, mask);
      end;
    end
    else
    begin
      temp := form.FindComponent(dmMain.qryAuthorityCOMP_NAME.AsString);
      if Assigned(temp) then
      begin
        mask := [];
        if dmMain.qryAuthorityCHECK_VIEW.Value = 1 then
          mask := mask + [ptMREAD];
        if dmMain.qryAuthorityCHECK_EDIT.Value = 1 then
          mask := mask + [ptMEDIT];
        if dmMain.qryAuthorityCHECK_INSERT.Value = 1 then
          mask := mask + [ptMINSERT];
        if dmMain.qryAuthorityCHECK_DELETE.Value = 1 then
          mask := mask + [ptMDELETE];
        SetPermision(temp, dmMain.qryAuthorityFEATURE_ID.Value, mask);
      end;
    end;
    dmMain.qryAuthority.Next;
  end;
end;

procedure SetHelpIndexInForm(form: TForm);
var
  i: integer;
  temp: TComponent;
  mask: TPermissionMask;
begin
  dmMain.qryHelpIndex.Close;
  dmMain.qryHelpIndex.ParamByName('FORM_NAME').Value := form.Name;
  dmMain.qryHelpIndex.Open;
  form.HelpFile := dmMain.qryHelpIndexHELP_INDEX.AsString;
  dmMain.qryHelpIndex.Close;
end;

procedure ChangeFormat(AComp: TComponent);
var
  i: integer;
begin
  if not Assigned(AComp) then
    exit;
  if AComp.InheritsFrom(TDataset) then
    with TDataset(AComp) do
    begin
      for i := 0 to FieldCount - 1 do
      begin
        if (Fields[i] is TDateField) or (Fields[i] is TDateTimeField) then
        begin
          (Fields[i] as TDateTimeField).DisplayFormat :=
            sysConfig.DateTimeFormat;
          (Fields[i] as TDateTimeField).EditMask :=
            sysConfig.DateTimeFormat;
        end
        else
          if (Fields[i].InheritsFrom(TFloatField)) then
          (Fields[i] as TFloatField).DisplayFormat :=
            sysConfig.FloatFormat;
      end;
    end
  else
    for i := 0 to AComp.ComponentCount - 1 do
      ChangeFormat(AComp.Components[i]);
end;

function GetIntFromSetPermission(mask: TPermissionMask): integer;
begin
  result := 0;
  if (mask >= [ptMREPORT]) then
    result := (result or Ord(ptMREPORT));
  //bit[1] = 1 -> ReadRight
  if (mask >= [ptMREAD]) then
    result := (result or Ord(ptMREAD));
  //bit[2] = 2 -> InsertRight
  if (mask >= [ptMINSERT]) then
    result := (result or Ord(ptMINSERT));
  //bit[3] = 1 -> UpdateRight
  if (mask >= [ptMEDIT]) then
    result := (result or Ord(ptMEDIT));
  //bit[4] = 1 -> DeleteRight
  if (mask >= [ptMDELETE]) then
    result := (result or Ord(ptMDELETE));

end;

procedure CheckPermissionForm(com: TComponent);
var
  i: integer;
begin
  for i := 0 to com.ComponentCount - 1 do
  begin
    if (com.Components[i] is TdxSidebar) then
      CheckPermission_InSidebar(TdxSidebar(com.Components[i]))
    else
      CheckPermission(com.Components[i]);
  end;
end;

function CheckPermission(com: TComponent; mask: TPermissionMask): boolean;
var
  feature_or_report: boolean;
  modul_id, permission_value, mask_value, check_value: integer;
begin
  //=============================================================//
  // Ham nay se thuc hien kiem tra quyen tren 1 component. Mac   //
  // mask = [] co' nghia la` se kiem tra tren cac quyen da dang  //
  // ky kiem bang ham SetPermission truoc do. Tuy nhien, neu muon//
  // kiem tra tren 1 so quyen cu the thi truyen them tham so mask//
  // de ha`m biet duoc la` user muon kiem quyen gi               //
  //=============================================================//
  // Mac dinh ham nay se duoc su dung khi ShowForm ( neu nhu chua//
  // gan ham OnShow cua form). Chi tiet xin xem ham ApplyOption  //
  //=============================================================//

  // kiem tra bit 1:
  if com.Tag <= 1 then
  begin
    result := true; //khong co kiem tra quyen
    exit;
  end;
  feature_or_report := ((com.Tag and Ord(ptMREPORT)) = 1);
  modul_id := com.Tag div Ord(ptMMODULID);
  permission_value := com.Tag mod Ord(ptMMODULID);

  mask_value := GetIntFromSetPermission(mask);
  if (mask_value > 0) then
    permission_value := (permission_value and mask_value);

  if (feature_or_report = false) then
    //check Feature
    check_value := (permission_value and sysConfig.FeaturePermission[modul_id])
  else //check Report
    check_value := (permission_value and sysConfig.ReportPermission[modul_id]);

  Result := (check_value = permission_value);
  //============================
  ApplyPermission(com, result);
end;

function CheckPermission_InSidebar(com: TdxSidebar; mask: TPermissionMask): boolean;
var
  i, j: integer;
  feature_or_report: boolean;
  modul_id, permission_value, mask_value, check_value: integer;
begin
  //=============================================================//
  // Ham nay se thuc hien kiem tra quyen tren 1 component. Mac   //
  // mask = [] co' nghia la` se kiem tra tren cac quyen da dang  //
  // ky kiem bang ham SetPermission truoc do. Tuy nhien, neu muon//
  // kiem tra tren 1 so quyen cu the thi truyen them tham so mask//
  // de ha`m biet duoc la` user muon kiem quyen gi               //
  //=============================================================//
  // Mac dinh ham nay se duoc su dung khi ShowForm ( neu nhu chua//
  // gan ham OnShow cua form). Chi tiet xin xem ham ApplyOption  //
  //=============================================================//

  // kiem tra bit 1:
  for i := 0 to com.GroupCount - 1 do
    for j := 0 to com.Groups[i].ItemCount - 1 do
    begin
      if com.Groups[i].Items[j].Tag <= 1 then
      begin
        result := true; //khong co kiem tra quyen
        exit;
      end;
      feature_or_report := ((com.Groups[i].Items[j].Tag and Ord(ptMREPORT)) = 1);
      modul_id := com.Groups[i].Items[j].Tag div Ord(ptMMODULID);
      permission_value := com.Groups[i].Items[j].Tag mod Ord(ptMMODULID);

      mask_value := GetIntFromSetPermission(mask);
      if (mask_value > 0) then
        permission_value := (permission_value and mask_value);

      if (feature_or_report = false) then
        //check Feature
        check_value := (permission_value and sysConfig.FeaturePermission[modul_id])
      else //check Report
        check_value := (permission_value and sysConfig.ReportPermission[modul_id]);

      Result := (check_value = permission_value);
      //============================
      if result = false then
        com.Groups[i].Items[j].Enabled := false;
    end;
end;


procedure ApplyPermission(com: TComponent; state: boolean);
begin
  if (com is TAction) then
  begin
    if state = false then
    begin
      (com as TAction).OnUpdate := nil;
      (com as TAction).OnExecute := nil;
    end;
    (com as TAction).Enabled := state;
  end
  else
    if (com is TdxBarItem) then
    (com as TdxBarItem).Enabled := state
  else
    if (com is TdxBarButton) then
    (com as TdxBarButton).Enabled := state
  else
    if (com is TdxBarLargeButton) then
    (com as TdxBarLargeButton).Enabled := state
  else
    if (com is TElGraphicButton) then
    (com as TElGraphicButton).Enabled := state
  else
    if (com is TElGraphicButton) then
    (com as TElGraphicButton).Enabled := state
  else
    if (com is TdxCheckEdit) then
    (com as TdxCheckEdit).Enabled := state

end;

procedure InitDataset(var ADataset: TIBODataset);
begin
  with ADataset do
  begin
    IB_Connection := dmMain.connMain;
    Unicode := true;
  end;
end;


function GetFormUseDataset(qry: TDataset): TComponent;
begin
  result := Screen.ActiveForm;
  if (result is TfrmEmployees) then
    result := (result as TfrmEmployees).CustomForm
  else
    if (result is TfrmListManager) then
      result := (result as TfrmListManager).CustomForm
    else
      if (result is TfrmWageManager) then
        result := (result as TfrmWageManager).CustomForm
      else
        if (result is TfrmRecruitmentManager) then
          result := (result as TfrmRecruitmentManager).CustomForm
        else
          if (result is TfrmTrainingManager) then
            result := (result as TfrmTrainingManager).CustomForm
          else
              if (result is TfrmBAOHIEM_ChinhSach) then
            	  result := (result as TfrmBAOHIEM_ChinhSach).CustomForm
              else
                if (result is TfrmBase) and
                  ((result as TfrmBase).FormStyle =fsMDIForm) then
                begin
                //
                end;
end;

function CheckRequiredFields(ADataSet: TDataset): boolean;
var
  i: integer;
  temp_result: boolean;
  temp_fieldName, link_date_field: string;
  temp_field: TDateField;
  IBODataset: TIBODataset;
  mem: TdxMemData;
  temp_string_value: WideString;
begin
  Result := true;
  if (ADataset is TIBODataset) then
  begin
    IBODataset := TIBODataset(ADataSet);
    temp_result := true;
    if IBODataset <> nil then
      if IBODataset.CheckRequired then
        for i := 0 to IBODataset.FieldCount - 1 do
        begin
          if (IBODataset.Fields[i].DataType in [ftString, ftWideString])
            and (not IBODataset.Fields[i].IsNull) then
          begin
            temp_string_value := Trim(VarToWideStr(IBODataset.Fields[i].Value));
            if temp_string_value = '' then
              IBODataset.Fields[i].Clear
            else
              if temp_string_value <> VarToWideStr(IBODataset.Fields[i].Value) then
              IBODataset.Fields[i].Value := temp_string_value;
          end;
          if IBODataset.Fields[i].Required then
          begin
            if IBODataset.Fields[i].IsNull then
            begin
              Result := false;
              if ShowHintBoxInComponent(GetFormUseDataset(IBODataset), IBODataset,
                IBODataset.Fields[i].FieldName, 7) then
                Exit
              else
              begin
                temp_result := false;
                temp_fieldName := IBODataset.Fields[i].FieldName;
              end;
            end;
          end;
          if IBODataset.Fields[i].Tag = 1 then
          begin
            if CheckVNUnicode(IBODataset.Fields[i].Value) = false then
            begin
              Result := false;
              if ShowHintBoxInComponent(GetFormUseDataset(IBODataset), IBODataset,
                IBODataset.Fields[i].FieldName, 54) then
                Exit
              else
              begin
                temp_result := false;
                temp_fieldName := IBODataset.Fields[i].FieldName;
              end;
            end;
          end
          else
            if IBODataset.Fields[i].Tag = 2 then
          begin
            if CheckVNUnicode_Only(IBODataset.Fields[i].Value) = false then
            begin
              Result := false;
              if ShowHintBoxInComponent(GetFormUseDataset(IBODataset), IBODataset,
                IBODataset.Fields[i].FieldName, 67) then
                Exit
              else
              begin
                temp_result := false;
                temp_fieldName := IBODataset.Fields[i].FieldName;
              end;
            end;
          end;
          // kiem tra tinh hop le cua DateField
          if (IBODataset.Fields[i] is TDateField) and (not
            IBODataset.Fields[i].IsNull) then
          begin
            link_date_field := (IBODataset.Fields[i] as
              TDateField).LookupResultField;
            if Length(link_date_field) > 0 then
            begin
              if link_date_field = 'SYS_CURRENT' then
              begin
                if ((IBODataset.Fields[i] as TDateField).IsNull = false) and
                  ((IBODataset.Fields[i] as TDateField).Value >= Today) then
                begin
                  Result := false;
                  if ShowHintBoxInComponent(GetFormUseDataset(IBODataset),
                    IBODataset,
                    IBODataset.Fields[i].FieldName, 52) then
                    Exit
                  else
                  begin
                    temp_result := false;
                    temp_fieldName := IBODataset.Fields[i].FieldName;
                  end;
                end
              end
              else
              begin
                temp_field := TDateField(IBODataset.FindField(link_date_field));
                if Assigned(temp_field) then
                begin
                  if (temp_field.IsNull = false) and (temp_field.AsDateTime <
                    (IBODataset.Fields[i] as TDateField).Value) then
                  begin
                    Result := false;
                    if ShowHintBoxInComponent(GetFormUseDataset(IBODataset),
                      IBODataset,
                      link_date_field, 52) then
                      Exit
                    else
                    begin
                      temp_result := false;
                      temp_fieldName := IBODataset.Fields[i].FieldName;
                    end;
                  end;
                end;
              end;
            end;
          end
        end;
  end
  else
    if (ADataset is TdxMemData) then
  begin
    mem := TdxMemData(ADataSet);
    temp_result := true;
    if mem <> nil then
      for i := 0 to mem.FieldCount - 1 do
      begin
        if (IBODataset.Fields[i].DataType in [ftString, ftWideString])
          and (not mem.Fields[i].IsNull) then
        begin
          temp_string_value := Trim(VarToWideStr(mem.Fields[i].Value));
          if temp_string_value = '' then
            mem.Fields[i].Clear
          else
            if temp_string_value <> VarToWideStr(mem.Fields[i].Value) then
            mem.Fields[i].Value := temp_string_value;
        end;
        if mem.Fields[i].Required then
        begin
          if mem.Fields[i].IsNull then
          begin
            Result := false;
            if ShowHintBoxInComponent(GetFormUseDataset(mem), mem,
              mem.Fields[i].FieldName, 7) then
              Exit
            else
            begin
              temp_result := false;
              temp_fieldName := mem.Fields[i].FieldName;
            end;
          end;
        end;
      end;
  end;
  if (temp_result = false) then
  begin
    result := false;
    ShowMessageUnicode(7, 'Field +[' + temp_fieldName + '] is required');
  end;
end;

procedure ShowErrors(DataSet: TDataSet; E: EDatabaseError; AMessage: string;
  ASource:
  smallint);
var
  SQLErrCode, ErrCode: integer;
  strFKName: string;
begin
  strFKName := '';
  if E is EIBO_ISCError then
  begin
    SQLErrCode := (E as EIBO_ISCError).ERRCODE;
    ErrCode := (E as EIBO_ISCError).ERRCODE;
  end
  else
    exit;
  case ErrCode of
    335544665: //Bi trung khoa
      begin
        ShowMessageUnicode('Bi trung khoa');
      end;
    335544537: //Du lieu da duoc su dung
      begin
        ShowMessageUnicode('Du lieu da duoc su dung');
      end;
    335544466: //Khoa ngoai khong hop le
      begin
        if ASource = 2 then
          ShowMessageUnicode(' Xoa du lieu khong thanh cong')
        else
          ShowMessageUnicode('Vi pham rang buoc khoa ngoai');
      end;
    335544517: //User Exception
      begin
        ShowMessageUnicode(E.Message);
      end;
  else
    case SQLErrCode of
      -902: //Disconnect; Dut ket noi, ket thuc chuong trinh
        begin
          ShowMessageUnicode('Dut ket noi - lien he voi Admin');
        end;
      -901: //server shutdown suddenly, ket thuc chuong trinh
        case ErrCode of
          335544345, 335544353, 335544337, 335544332, 335544363, 335544407:
            begin
              ShowMessageUnicode('Dung do transaction');
              if Dataset.InheritsFrom(TIBODataset) then
                TIBODataset(Dataset).IB_Transaction.CancelAll;
            end;
          // loi transaction
          335544357:
            // loi disconnect database with open transaction
            begin
              ShowMessageUnicode(' Loi tat database trong khi van con transaction chua ket thuc');
            end;
        else
          // loi cau truc database
          ShowMessage(E.Message);
        end;
      -913: //dealock
        begin
          ShowMessageUnicode('Dung do tranhsaction');
          if Dataset.InheritsFrom(TIBODataset) then
            TIBODataset(Dataset).IB_Transaction.CancelAll;
        end;
    else
      ShowMessage(E.Message);
    end;
    Abort;
  end;
end;

procedure TdmMain.DeleteExecute(qry: TIBOQuery);
begin
  //if MessageBoxW(Application.Handle,PWideChar(UTF8Decode('Bạn có đồng ý xóa bản ghi đang chọn?')), PWideChar(UTF8Decode('Xác nhận')), MB_ICONQUESTION or MB_YESNO) = mrYes then
  if (qry.State in [dsInsert, dsEdit]) then
    exit;
  if qry.IsEmpty then
    exit;
  if ShowMessageUnicode(9) = mrYes then
  begin
    try
      qry.Delete;
      if not qry.IB_Transaction.AutoCommit then
        qry.IB_Transaction.CommitRetaining;
    except
    end;
  end
end;

function TdmMain.MsgChangeDataSource(ds: TDataSource; confirm: boolean):
  boolean;
begin
  result := true;
  if not Assigned(ds.DataSet) then exit;
  if (ds.DataSet is TdxMemData) then exit;
  if TIBOQuery(ds.DataSet).State in [dsEdit, dsInsert] then
  begin
    if confirm then
    begin
      if ShowMessageUnicode(6) = mrYes then
      begin
        try
          TIBOQUery(ds.DataSet).Post;
          if not TIBOQuery(ds.DataSet).IB_Transaction.AutoCommit then
            TIBOQuery(ds.DataSet).IB_Transaction.CommitRetaining;
        except
          result := false;
        end;
      end
      else
      begin
        TIBOQUery(ds.DataSet).Cancel;
        exit;
      end;
    end
    else
    begin
      try
        TIBOQUery(ds.DataSet).Post;
        if not TIBOQuery(ds.DataSet).IB_Transaction.AutoCommit then
          TIBOQuery(ds.DataSet).IB_Transaction.CommitRetaining;
      except
        result := false;
      end;
    end;
    if ds.State in [dsEdit, dsInsert] then
      result := false;
  end;
end;

function TdmMain.MsgChangeData(ds: TDataSource; qry: TIBOQuery; confirm:
  boolean): boolean;
begin
  result := true;
  if ds.State in [dsEdit, dsInsert] then
  begin
    if confirm then
    begin
      if ShowMessageUnicode(6) = mrYes then
      begin
        try
          qry.Post;
          if not qry.IB_Transaction.AutoCommit then
            qry.IB_Transaction.CommitRetaining;
        except
          result := false;
        end;
      end
      else
        qry.Cancel;
    end
    else
    begin
      try
        qry.Post;
        if not qry.IB_Transaction.AutoCommit then
          qry.IB_Transaction.CommitRetaining;
      except
        result := false;
      end;
    end;
    if ds.State in [dsEdit, dsInsert] then
      result := false;
  end;

end;

function ShowMessageUnicode(MsgID: integer; Detail: WideString): Integer;
var
  MsgText: WideString; // Noi dung cua Message
  MsgType: Integer; // Noi dung cua Message
  MsgTitle: Widestring;
begin
  dmMain.GetMessage(MsgID, MsgText, MsgTitle, MSgType);
  MsgDlgFrm := TMsgDlgFrm.Create(Application, MsgID, MsgText, MSgTitle, MsgType,
    Detail);
  try
    MsgDlgFrm.Width := MsgDlgFrm.LblContent.Width + 75;
    result := MsgDlgFrm.ShowModal;
  finally
    MsgDlgFrm.free;
  end;
end;

function TdmMain.GetMessage(MsgID: Smallint; var MsgText, MsgTitle: WIdeString;
  var
  MsgType: Integer): WideString;
begin
  qryMsgList.Open;
  if qryMsgList.Locate('MESSAGE_ID', MsgID, []) then
  begin
    if sysConfig.Language = 2 then
    begin
      if qryMsgListMESSAGE_ENG.IsNull then
      begin
        Result := '';
        MsgText := '';
      end
      else
      begin
        Result := qryMsgListMESSAGE_ENG.Value;
        MsgText := qryMsgListMESSAGE_ENG.Value;
      end;
      if qryMsgListTITLE_ENG.IsNull then
        MsgTitle := ''
      else
        MsgTitle := qryMsgListTITLE_ENG.Value;
    end
    else
      if sysConfig.Language = 1 then
    begin
      if qryMsgListMESSAGE_VN.IsNull then
      begin
        Result := '';
        MSgText := '';
      end
      else
      begin
        Result := qryMsgListMESSAGE_VN.Value;
        MsgText := qryMsgListMESSAGE_VN.Value;
      end;
      if qryMsgListTITLE_VN.IsNull then
        MsgTitle := ''
      else
        MsgTitle := qryMsgListTITLE_VN.Value;
    end
    else
      if sysConfig.Language = 0 then
    begin
      if qryMsgListMESSAGE_DEFAULT.IsNull then
      begin
        Result := '';
        MSgText := '';
      end
      else
      begin
        Result := qryMsgListMESSAGE_DEFAULT.Value;
        MsgText := qryMsgListMESSAGE_DEFAULT.Value;
      end;
      if qryMsgListTITLE_DEFAULT.IsNull then
        MsgTitle := ''
      else
        MsgTitle := qryMsgListTITLE_DEFAULT.Value;
    end;
    MsgType := qryMsgListIMAGE_ID.Value;
  end
  else
  begin
    Result :=
      Utf8Decode('Câu thông báo chưa được định nghĩa. Vui lòng liên hệ nhà cung cấp');
    MsgText :=
      Utf8Decode('Câu thông báo chưa được định nghĩa. Vui lòng liên hệ nhà cung cấp');
    MsgTitle := Utf8Decode('Báo lỗi');
    MsgType := 0;
  end;
  qryMsgList.close;
end;

function ShowMessageUnicode(Msg: WideString; AMsgType: Integer; Detail:
  WideString): Integer;
var
  Msgtext: WideString;
  MsgType: integer;
begin
  MsgText := UTF8Decode(Msg);
  MsgType := AMsgType;
  with TMsgDlgFrm.Create(Application, -1, MsgText, '', MsgType, Detail) do
  try
    Width := LblContent.Width + 75;
    Result := ShowModal;
  finally
    Free;
  end;
end;

procedure TdmMain.DefOnGetGraphicClassForGrid(Sender: TObject;
  Node: TdxTreeListNode; var GraphicClass: TGraphicClass);
var
  img_class: string;
  grid: TdxDBGrid;
  img_column: TdxDBTreeListColumn;
begin
  grid := TdxDBGrid(Node.Owner);
  img_column := grid.ColumnByFieldName('IMG_TYPE');
  img_class :=
    Trim(VarToStr(node.Values[img_column.Index]));
  if img_class <> '' then
    GraphicClass := TGraphicClass(GetClass(img_class))
  else
    GraphicClass := TGraphicClass(GetClass(TBitmap.ClassName));
end;

procedure TdmMain.DefOnGetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
var
  img_class: string;
begin
  img_class :=
    Trim(TdxDBGraphicEdit(sender).DataSource.DataSet.FieldByName('IMG_TYPE').Asstring);
  if img_class <> '' then
    GraphicClass := TGraphicClass(GetClass(img_class))
  else
    GraphicClass := TGraphicClass(GetClass(TBitmap.ClassName));
end;


procedure TdmMain.DefOnAssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
  with TdxDBGraphicEdit(sender) do
  begin
    if Picture.Graphic <> nil then
      DataSource.DataSet.FieldByName('IMG_TYPE').AsString :=
        Picture.Graphic.ClassName
    else
      DataSource.DataSet.FieldByName('IMG_TYPE').Clear;
  end;
end;

procedure TdmMain.DefOnAssignPictureForGrid(Sender: TObject;
  var Picture: TPicture);
var tl: TCustomdxDBTreeListControl;
  img_type: string;
begin
  tl := TCustomdxDBTreeListControl((sender as TdxDBGridGraphicColumn).ATreeList);
  with TdxDBGridGraphicColumn(sender) do
  begin
    if Picture.Graphic <> nil then
    begin
      img_type := Picture.Graphic.ClassName;
      tl.DataSource.DataSet.FieldByName('IMG_TYPE').AsString :=
        Picture.Graphic.ClassName;
    end
    else
      tl.DataSource.DataSet.FieldByName('IMG_TYPE').Clear;
  end;
end;

procedure TdmMain.DefOnBeforeOpen(DataSet: TDataSet);
begin
  if Assigned(TIBOQuery(DataSet).FindParam('USER_NAME')) then
    TIBOQuery(DataSet).ParamByName('USER_NAME').Value := sysConfig.User;
  if Assigned(TIBOQuery(DataSet).FindParam('SUBSYSTEMID')) then
    TIBOQuery(DataSet).ParamByName('SUBSYSTEMID').Value :=
      sysConfig.SubSystemID;
  if Assigned(TIBOQuery(DataSet).FindParam('LANGUAGE_ID')) then
    TIBOQuery(DataSet).ParamByName('LANGUAGE_ID').Value :=
      sysConfig.Language;
end;

procedure TdmMain.DefOnBeforeDelete(DataSet: TDataSet);
begin
  if (Dataset is TIBOQuery) then
  begin
    if TIBOQuery(DataSet).DeleteSQL.Count = 0 then
    begin
      Abort;
      Exit;
    end;
  end;
  if Dataset.State in [dsEdit, dsInsert] then
    Dataset.Cancel;
  if Dataset.State in [dsInsert] then
    Abort;
  if (CheckPermission(Dataset, [ptMDELETE]) = false) then
  begin
    ShowMessageUnicode(15);
    Abort;
  end
  else
  begin
    if ShowMessageUnicode(9) <> mrYes then
      Abort
    else
    begin
      if (Dataset is TIBOQuery) then
        LogDeleteDataProcess(TIBOQuery(Dataset))
    end;
  end
end;

procedure TdmMain.DefOnBeforeMultiDelete(DataSet: TDataSet);
begin
  if (Dataset is TIBOQuery) then
  begin
    if TIBOQuery(DataSet).DeleteSQL.Count = 0 then
    begin
      Abort;
      Exit;
    end;
  end;
  if Dataset.State in [dsEdit, dsInsert] then
    Dataset.Cancel;
  if Dataset.State in [dsInsert] then
    Abort;
  if (CheckPermission(Dataset, [ptMDELETE]) = false) then
  begin
    ShowMessageUnicode(15);
    Abort;
  end
  else
  begin
    if ShowMessageUnicode(92) <> mrYes then
      Abort
    else
    begin
      if (Dataset is TIBOQuery) then
        LogDeleteDataProcess(TIBOQuery(Dataset))
    end;
  end
end;


procedure TdmMain.DefOnBeforeEdit(DataSet: TDataSet);
begin
  if (Dataset is TIBOQuery) then
  begin
    if TIBOQuery(DataSet).EditSQL.Count = 0 then
    begin
      Abort;
      Exit;
    end;
  end;
  if CheckPermission(Dataset, [ptMEDIT]) = false then
  begin
    ShowMessageUnicode(14);
    Abort;
  end;
end;

procedure TdmMain.DefOnBeforeInsert(DataSet: TDataSet);
begin
  if Assigned(DataSet.DataSource) then
  begin
    if Assigned(DataSet.DataSource.DataSet) then
    begin
      if DataSet.DataSource.DataSet.RecordCount = 0 then
      begin
        Abort;
        Exit;
      end;
    end;
  end;
  if (Dataset is TIBOQuery) then
  begin
    if TIBOQuery(DataSet).InsertSQL.Count = 0 then
    begin
      Abort;
      Exit;
    end;
  end;
  if CheckPermission(Dataset, [ptMINSERT]) = false then
  begin
    ShowMessageUnicode(13);
    Abort;
  end;
end;

procedure TdmMain.DefOnAfterPost(DataSet: TDataSet);
begin
  if qryLogData.Filtered then
  begin
    try
      qryLogData.ExecSQL;
    except
    end;
    qryLogdata.Filtered := false;
  end;
end;

procedure TdmMain.DefOnAfterInsert(DataSet: TDataSet);
var i: integer;
begin
 try
  Dataset.Fields[0].FocusControl;
 except
 end; 
end;

procedure TdmMain.DefOnAfterDelete(DataSet: TDataSet);
begin
  if qryLogData.Filtered then
  begin
    try
      qryLogData.ExecSQL;
    except
    end;
    qryLogdata.Filtered := false;
  end;
end;

procedure TdmMain.DefOnBeforePost(DataSet: TDataSet);
begin
  if not CheckRequiredFields(DataSet) then
    Abort
  else
    // ghi nhan nhat ky du lieu neu co
    if (Dataset is TIBOQuery) then
  begin
    if (TIBOQuery(Dataset).State in [dsInsert]) and
      (TIBOQuery(Dataset).FieldsDisplayLabel.Text <> '') then
      LogInsertDataProcess(TIBOQuery(Dataset))
    else
      if (TIBOQuery(Dataset).State in [dsEdit]) and
      (TIBOQuery(Dataset).FieldsDisplayFormat.Text <> '') then
      LogEditDataProcess(TIBOQuery(Dataset))
  end;
end;

procedure TdmMain.ExecuteSQL(qry: TIBOQuery);
var
  success: boolean;
begin
  try
    LogDataProcess(qry.FieldsDisplayLabel.Text, qry, 'EXECUTE');
    qry.ExecSQL;
    DefOnAfterPost(qry);
  except
  end;
end;

procedure TdmMain.LogInsertDataProcess(qry: TIBOQuery);
begin
  LogDataProcess(qry.FieldsDisplayLabel.Text, qry, 'INSERT');
end;

procedure TdmMain.LogEditDataProcess(qry: TIBOQuery);
begin
  LogDataProcess(qry.FieldsDisplayFormat.Text, qry, 'EDIT');
end;

procedure TdmMain.LogDeleteDataProcess(qry: TIBOQuery);
begin
  LogDataProcess(qry.FieldsAlignment.Text, qry, 'DELETE');
end;

procedure TdmMain.WriteLog(log_data: WideString; qry: TIBOQuery; action_type:
  string);
begin
  qryLogData.Filtered := false;
  qryLogData.ParamByname('CONNECTION_ID').Value := sysConfig.IP_Addr;
  qryLogData.ParamByname('HOST_NAME').Value := sysConfig.Host_Name;

  qryLogData.ParamByname('TIME_ID').Value := Now;
  if (sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') then
    qryLogData.ParamByname('USER_ID').Clear
  else
    qryLogData.ParamByname('USER_ID').Value := sysConfig.User;

  qryLogData.ParamByname('SYSTEM_ID').Value := sysConfig.SubSystemID;
  if qry.FieldsEditMask.Text <> '' then
  try
    qryLogData.ParamByname('FEATURE_ID').Value :=
      StrToInt(qry.FieldsEditMask.Strings[0]);
  except
    qryLogData.ParamByname('FEATURE_ID').Clear;
  end;
  qryLogData.ParamByname('LOG_DATA').Value := log_data;
  qryLogData.ParamByname('ACTION_TYPE').Value := action_type;
  qryLogData.Filtered := true;
end;

function TdmMain.CreateLogString(template: string; qry: TIBOQuery): string;
var
  Done: boolean;
  l, from_index, to_index: integer;
  data, str_template, field_name, field_type, str_replace: string;
begin
  if (template = '') then
  begin
    result := '';
    exit;
  end
  else
  begin
    l := Length(template);
    Done := false;
    from_index := 0;
    to_index := 0;
    data := template;
    repeat
      from_index := PosEx('[:', template, to_index + 1);
      if (from_index = 0) or (from_index > l) then
        Done := true
      else
      begin
        to_index := PosEx(']', template, from_index + 1);
        if to_index < from_index then
          Done := true
        else
        begin
          //lay doan ky tu thay the
          str_template := Copy(template, from_index, to_index - from_index + 1);
          field_type := Copy(str_template, Length(str_template) - 3, 3);
          field_name := Copy(str_template, 3, Length(str_template) - 7);
          if field_type = 'PRM' then
          begin
            try
              str_replace :=
                UTF8Encode(VarToWideStr(qry.ParamByname(field_name).value));
            except
              str_replace := '<can not find param ' + field_name + '>';
            end;
          end
          else
            if field_type = 'NEW' then
          begin
            try
              str_replace :=
                UTF8Encode(VarToWideStr(qry.fieldByname(field_name).NewValue));
            except
              str_replace := '<can not find field ' + field_name + '>';
            end;
          end
          else
            if field_type = 'OLD' then
          begin
            try
              str_replace :=
                UTF8Encode(VarToWideStr(qry.fieldByname(field_name).OldValue));
            except
              str_replace := '<can not find field ' + field_name + '>';
            end;
          end;
          data := StringReplace(data, str_template, str_replace,
            [rfReplaceAll]);
          from_index := to_index + 1;
        end
      end
    until Done;
  end;
  result := data;
end;

procedure TdmMain.LogDataProcess(template: string; qry: TIBOQuery; action_type:
  string);
var
  log_data, sub_log_template, sub_log_data, field_name: string;
  cur_pos, if_pos, end_if_pos, begin_condision_pos, end_condition_pos,
    temp_length: integer;
  Done, can_write_log: boolean;
begin
  //cat thanh tung chuoi de xu li
  temp_length := Length(template);
  if temp_length = 0 then exit;

  cur_pos := 1;
  done := false;
  can_write_log := false;
  ;
  log_data := '';
  repeat
    if_pos := PosEx('[IF', template, cur_pos);
    if if_pos = 0 then //khong tim thay
    begin
      sub_log_template := Copy(template, cur_pos, temp_length - cur_pos + 1);
      Done := true; //ket thuc
      can_write_log := true;
    end
    else
      if if_pos > cur_pos then
    begin
      sub_log_template := Copy(template, cur_pos, if_pos - cur_pos);
      cur_pos := if_pos; // xu li doan van khong co if
    end
    else //tim dung IF ngay dau cau: cat lay phan ruot cua menh de IF
    begin
      end_if_pos := PosEx('[END_IF]', template, if_pos);
      if end_if_pos < if_pos then // tim khong co [END_IF]
      begin
        sub_log_template := '';
        Done := true;
      end;
      begin_condision_pos := PosEx(':', template, if_pos);
      end_condition_pos := PosEx(']', template, if_pos);
      if (begin_condision_pos > 0) and
        (end_condition_pos > begin_condision_pos) and
        (end_condition_pos <= end_if_pos) then
      begin
        field_name := Copy(template, begin_condision_pos + 1, end_condition_pos
          - begin_condision_pos - 1);
        try
          if qry.FieldByName(field_name).OldValue <>
            qry.FieldByName(field_name).NewValue then
          begin
            sub_log_template := Copy(template, end_condition_pos + 1, end_if_pos
              - end_condition_pos - 1);
            if sub_log_template <> '' then
              can_write_log := true;
          end
          else
            sub_log_template := '';
          cur_pos := end_if_pos + Length('[END_IF]');
        except
          sub_log_template := '';
          Done := true;
        end;
      end
      else
      begin
        sub_log_template := '';
        Done := true;
      end;
    end;

    sub_log_data := CreateLogString(sub_log_template, qry);
    if sub_log_data <> '' then
      log_data := log_data + sub_log_data;
  until Done;

  // ghi nhat ky chuong trinh
  if can_write_log then
    WriteLog(UTF8Decode(log_data), qry, action_type);
end;
//====================================================

procedure CancelDataset(dataset: TDataset);
begin
  if (Dataset.State in [dsInsert, dsEdit]) then
    Dataset.Cancel;
end;

procedure TdmMain.DatasetLoadFile(sender: TObject; AbsoluteIndex: integer;
  FIELD_FILE_NAME, FIELD_FILE_CONTENT: string);
var
  qry: TIBOQuery;
  state: string;
begin
  if (sender is TdxDBButtonEdit) then
    qry := TIBOQuery((sender as TdxDBButtonEdit).Datasource.Dataset)
  else
    if (sender is TdxDBGridButtonColumn) then
    qry := TIBOQuery((sender as
      TdxDBGridButtonColumn).Field.Dataset)
  else
    if (sender is TdxDBTreeListButtonColumn) then
    qry := TIBOQuery((sender as
      TdxDBTreeListButtonColumn).Field.Dataset)
  else
    if (sender is TdxInspectorDBButtonRow) then
    qry := TIBOQuery((sender as TdxInspectorDBButtonRow).Field.DataSet);

  if not Assigned(qry) then exit;
  if AbsoluteIndex = 0 then
  begin
    if dlgOpen.Execute then
    begin
      if not (qry.State in [dsEdit, dsInsert]) then
      begin
        state := 'Browse';
        qry.Edit;
      end
      else
        state := 'EditInsert';
      try
        TBlobField(qry.FieldByName(FIELD_FILE_CONTENT)).LoadFromFile(dlgOpen.FileName);
        qry.FieldByName(FIELD_FILE_NAME).Value :=
          ExtractFileName(dlgOpen.FileName);
      except
        ShowMessageUnicode(53);
        if state = 'Browse' then qry.Cancel;
      end;
    end;
  end
  else
    if AbsoluteIndex = 1 then
  begin
    if Length(qry.FieldByName(FIELD_FILE_NAME).AsString) = 0 then exit;
    try
      TBlobField(qry.FieldByName(FIELD_FILE_CONTENT)).SaveToFile(ExtractFilePath(Application.ExeName)
        + qry.FieldByName(FIELD_FILE_NAME).AsString);
      ShellExecute(TForm((sender as TComponent).Owner).Handle, 'open',
        PChar(ExtractFilePath(Application.ExeName)
        + qry.FieldByName(FIELD_FILE_NAME).AsString), nil, nil, SW_SHOWNORMAL);
    except
      ShowMessageUnicode(53);
    end;
  end;
end;

procedure SetNullLink(DataSet: TDataset; MasterFieldName, DetailFieldName:
  string);
var
  list: TStringList;
  master_field, detail_field: TField;
  i: integer;
begin
  master_field := DataSet.FindField(MasterFieldName);
  if not Assigned(master_field) then exit;
  if not ((master_field.IsNull) or (Trim(master_field.AsString) = '')) then
    exit;

  list := TStringList.Create;
  list.Delimiter := ';';
  list.DelimitedText := DetailFieldName;
  for i := 0 to list.Count - 1 do
  begin
    detail_field := DataSet.FindField(list.Strings[i]);
    if Assigned(detail_field) then
      detail_field.Clear;
  end;
end;

procedure TdmMain.DefOnDatasetError(Sender: TObject; const ERRCODE: Integer;
  ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
  SQLMessage, SQL: TStringList; var RaiseException: Boolean);
var
  f: integer;
begin
  if connection_state = 'ERROR' then
  begin
    RaiseException := false;
    Exit;
  end
  else
  begin
    case ERRCODE of
      335544721, 335544741:
        begin
          {
                    ShowMessageUnicode('Kết nối cơ sở dữ liệu không thành công'
                      + #13 + #10 +
                      'Vui lòng nhấn nút Đóng để tắt chương trình.', 1,
                      'Lỗi k ết nối CSDL');
                    connection_state := 'ERROR';
                    (Sender as TIBODataset).AbortFetching;
                    (Sender as TIBODataset).Active := false;
                  //  Abort;
                    Application.Terminate;
                    {
                    SendMessage(Application.MainForm.Handle, WM_CLOSE, 0, 0);
                    TerminateApp;
                    }
        end;
      335544665:
        begin
          ShowMessageUnicode(28, ErrorMessage.Text);
          Abort;
          RaiseException := False;
        end;
      335544466:
        begin
          ShowMessageUnicode(27, ErrorMessage.Text);
          Abort;
          RaiseException := False;
        end;
      335544347:
        begin
          ShowMessageUnicode(26, ErrorMessage.Text);
          Abort;
          RaiseException := False;
        end;
      335544351:
        begin
          Abort;
          RaiseException := False;
        end
    else
      begin
        ShowMessageUnicode(27, ErrorMessage.Text);
        Abort;
        RaiseException := false;
      end;
    end;
  end;
end;

procedure TdmMain.DefOnGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  try
    ProcessKeyDownOnGrid(sender, key, shift);
  except
  end;
end;

procedure TdmMain.DefOnGridMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbRight) then
  begin
    if frmMain.ShowGridMenus(TdxDBGrid(Sender)) then exit;
  end;
end;

procedure TdmMain.DefOnTreeMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbRight) then
  begin
    if frmMain.ShowGridMenus(TdxDBGrid(Sender)) then exit;
  end;
end;

procedure TdmMain.DefOnTreeListCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  try
    if not Assigned(ANode.Parent) then
    begin
      AFont.Style := AFont.Style + [fsBold];
    end
    else
    begin
      AFont.Style := AFont.Style - [fsBold];
    end;
  except
  end
end;

procedure TdmMain.DefOnDeleteError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  ShowErrors(Dataset, E, E.Message, 2);
  Action := daAbort;
end;

procedure TdmMain.DefOnPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  ShowErrors(Dataset, E, E.Message, 1);
  Action := daAbort;
end;

procedure TdmMain.InitData;
var
  reg: TRegistry;
  ret: Boolean;
begin

  sysConfig.WindowsStyle := GetWindowStyle;
  //***************** Added by ThuyPTP - 25/11/2007 ******************
  if qryLookAndFeel.Active = false then qryLookAndFeel.Open;
  qryLookAndFeel.First;

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;

  while not qryLookAndFeel.Eof do
  begin
    //************** Tao Registry luu giu mau giao dien ****************
    ret := reg.KeyExists(REGISTRY_ROOT + '\Option');
    if ret = false then
    begin
      reg.CreateKey(REGISTRY_ROOT + '\Option');
      reg.OpenKey(REGISTRY_ROOT + '\Option', False);
      reg.WriteString('UI_CONFIG', qryLookAndFeelLF_ID.AsString);
    end
    else
    begin
      reg.OpenKey(REGISTRY_ROOT + '\Option', False);
      ret := reg.ValueExists('UI_CONFIG');
      if ret = false then
        reg.WriteString('UI_CONFIG', qryLookAndFeelLF_ID.AsString);
    end;
    //*************************************************
    //********* Tao chi tiet Look anh Feel ************
    ret := reg.KeyExists(REG_PATH + qryLookAndFeelLF_ID.AsString);
    if ret = false then
    begin
      reg.CreateKey(REG_PATH + qryLookAndFeelLF_ID.AsString);
      reg.OpenKey(REG_PATH + qryLookAndFeelLF_ID.AsString, False);

      if qryUIConfig.Active then
        qryUIConfig.Close;
      qryUIConfig.SQL.Text :=
        ' SELECT PROP_ID , PROP_VAL FROM CFG_LF_DETAIL ' +
        ' where LF_ID= :LF_ID';
      qryUIConfig.ParamByName('LF_ID').Value := qryLookAndFeelLF_ID.Value;
      qryUIConfig.Open;
      qryUIConfig.First;
      while not qryUIConfig.Eof do
      begin
        if not (qryUIConfig.FieldByName('PROP_VAL').IsNull) then
          reg.WriteString(qryUIConfig.FieldByName('PROP_ID').AsString, qryUIConfig.FieldByName('PROP_VAL').AsString)
        else
          reg.WriteString(qryUIConfig.FieldByName('PROP_ID').AsString, '0');
        qryUIConfig.Next;
      end;
    end;
    qryLookAndFeel.Next;
  end;
  qryLookAndFeel.Close;

  //********** Tao chi tiet luu giu thong tin Data grid **************
  if qryUIConfig.Active then
    qryUIConfig.Close;
  qryUIConfig.SQL.Text :=
    ' SELECT CONTROL_TYPE, PROP_ID, PROP_VAL ' +
    ' FROM cfg_interface ' +
    ' WHERE CONTROL_TYPE=''DATA_GRID''';
  qryUIConfig.Open;
  qryUIConfig.First;
  ret := reg.KeyExists(REG_PATH + 'Data Grid');
  if ret = false then
  begin
    reg.CreateKey(REG_PATH + 'Data Grid');
    reg.OpenKey(REG_PATH + 'Data Grid', False);
    while not qryUIConfig.Eof do
    begin
      if not (qryUIConfig.FieldByName('PROP_VAL').IsNull) then
        reg.WriteString(qryUIConfig.FieldByName('PROP_ID').AsString, qryUIConfig.FieldByName('PROP_VAL').AsString)
      else
        reg.WriteString(qryUIConfig.FieldByName('PROP_ID').AsString, '0');
      qryUIConfig.Next;
    end;
  end;

  //********** Tao chi tiet luu giu thong tin UI Control **************
  if qryUIConfig.Active then
    qryUIConfig.Close;
  qryUIConfig.SQL.Text :=
    ' SELECT CONTROL_TYPE, PROP_ID, PROP_VAL ' +
    ' FROM cfg_interface ' +
    ' WHERE CONTROL_TYPE=''UI_CONTROL''';
  qryUIConfig.Open;
  qryUIConfig.First;
  ret := reg.KeyExists(REG_PATH + 'UIControl');
  if ret = false then
  begin
    reg.CreateKey(REG_PATH + 'UIControl');
    reg.OpenKey(REG_PATH + 'UIControl', False);
    while not qryUIConfig.Eof do
    begin
      if not (qryUIConfig.FieldByName('PROP_VAL').IsNull) then
        reg.WriteString(qryUIConfig.FieldByName('PROP_ID').AsString, qryUIConfig.FieldByName('PROP_VAL').AsString)
      else
        reg.WriteString(qryUIConfig.FieldByName('PROP_ID').AsString, '0');
      qryUIConfig.Next;
    end;

  end;
  qryUIConfig.Close;

  //===================================
  LoadFormatConfig;
  LoadUIConfig;
  ApplyOption(TControl(self));
  LoadPermissionList;
  if qryOrgInfo.Active = false then
    qryOrgInfo.Open;
  if qryThongTinDoanhNghiep.Active = false then
    qryThongTinDoanhNghiep.Open;
  //====================================
  qryExecute.SQL.Text := 'delete from sys_connection where user_id=:user_id';
  qryExecute.Prepare;
  qryExecute.ParamByName('USER_ID').Value := sysConfig.User;
  ExecuteSQL(qryExecute);

  if qryAccessHistory.Active then qryAccessHistory.Close;
  qryAccessHistory.ParamByName('CONNECTION_ID').Value := sysConfig.IP_Addr;
  qryAccessHistory.ParamByName('USER_ID').Value := sysConfig.User;

  qryAccessHistory.Open;
  if qryAccessHistory.IsEmpty then
  begin
    qryAccessHistory.Insert;
    qryAccessHistoryCONNECTION_ID.Value := sysConfig.IP_Addr;
    qryAccessHistoryHOST_NAME.Value := sysConfig.Host_Name;
    qryAccessHistoryUSER_ID.Value := sysConfig.User;
    qryAccessHistoryUSER_NAME.Value := sysConfig.Username;
    qryAccessHistoryIS_CONNECTING.Value := 1;
    qryAccessHistoryTIME_LOGGIN.Value := Now;
    qryAccessHistory.Post;
  end
  else
  begin
    while qryAccessHistory.RecordCount > 1 do
    begin
      qryAccessHistory.Delete;
    end
  end;
  qryAccessHistory.Close;
  MainEventCenter.Events.Add(sysConfig.IP_Addr + ':' + sysConfig.User);
  MainEventCenter.Events.Add('REQUEST_OUT:'+sysConfig.IP_Addr + ':' + sysConfig.User);
  MainEventCenter.RegisterEvents;
end;

procedure TdmMain.OnConnectionError(Sender: TObject; const ERRCODE: Integer;
  ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
  SQLMessage, SQL: TStringList; var RaiseException: Boolean);
var
  f: smallint;
  i: integer;
begin
  connection_state := 'ERROR';
  RaiseException := false;
  f := 0;
  case ERRCODE of
    335544721, 335544741, 335544352:
      begin
        ShowMessageUnicode('Kết nối cơ sở dữ liệu không thành công'
          + #13 + #10 +
          'Vui lòng nhấn nút Đóng để thoát khỏi chương trình', 0,
          'Lỗi k ết nối CSDL');
        f := 1;
      end;
    335544472: ShowMessageUnicode('Cấu hình không hợp lệ.' + #13 + #10 +
        'Vui lòng liên hệ với nhà cung cấp.', 0, 'Lỗi cấu hình ');
    335544375:
      begin
        ShowMessageUnicode('Hệ quản trị cơ sở dữ liệu không hợp lệ'
          + #13 + #10 +
          'Vui lòng nhấn nút Đóng để thoát khỏi chương trình', 0,
          'Lỗi hệ quản trị CSDL');
        f := 1;
      end;
    335544344:
      ShowMessageUnicode('Truy cập dữ liệu thất bại.');
    335544485, 335544569:
      // khong xu ly gi' ca vi loi nay do connection lost
      begin
        RaiseException := true;
        Abort;
      end;
  else
    begin
      RaiseException := true;
    end
  end;
  if f = 1 then
  begin
    connMain.Close;
    Application.Terminate;
    Abort;
  end
  else
    if f = 2 then
  begin
    if ProcessConnectionLost(Sender) = false then
      TerminateApp(true);
  end
end;

procedure TdmMain.TerminateApp(need_alert: boolean);
var
  i: integer;
begin
  if need_alert then
    ShowMessageUnicode('Chương trình buộc tạm ngưng. Vui lòng nhấn nút Đóng để tắt chương trình');
  for i := 0 to connMain.DatasetCount - 1 do
    connMain.Datasets[i].Close;
  connMain.Close;
  Application.Terminate;
  Abort;
end;

function TdmMain.ProcessConnectionLost(Sender: TObject): boolean;
var
  i: integer;
begin
  i := 0;
  while i < 3 do
  begin
    connMain.ForceDisconnect;
    connMain.Close;
    if connMain.VerifyConnection then
    begin
      connMain.Connect;
      SendMsgBroadcast(WM_USER_REFRESH, 0, 0);
      connection_state := 'CONNECT';
      result := true;
      exit;
    end
    else
      inc(i);
  end;
  if i = 3 then result := false;
end;

function TdmMain.GetIPFromHost(var HostName, IPaddr, WSAErr: string): Boolean;
type
  Name = array[0..100] of Char;
  PName = ^Name;
var
  HEnt: pHostEnt;
  HName: PName;
  WSAData: TWSAData;
  i: Integer;
begin
  Result := False;
  if WSAStartup($0101, WSAData) <> 0 then
  begin
    WSAErr := 'Winsock is not responding."';
    Exit;
  end;
  IPaddr := '';
  New(HName);
  if GetHostName(HName^, SizeOf(Name)) = 0 then
  begin
    HostName := StrPas(HName^);
    HEnt := GetHostByName(HName^);
    for i := 0 to HEnt^.h_length - 1 do
      IPaddr :=
        Concat(IPaddr,
        IntToStr(Ord(HEnt^.h_addr_list^[i])) + '.');
    SetLength(IPaddr, Length(IPaddr) - 1);
    Result := True;
  end
  else
  begin
    case WSAGetLastError of
      WSANOTINITIALISED: WSAErr := 'WSANotInitialised';
      WSAENETDOWN: WSAErr := 'WSAENetDown';
      WSAEINPROGRESS: WSAErr := 'WSAEInProgress';
    end;
  end;
  Dispose(HName);
  WSACleanup;
end;

procedure TdmMain.DataModuleCreate(Sender: TObject);
var
  Reg: TRegistry;
  error:string;
begin
  sysSecurity := TSecurity.Create(S_CONST_1, S_CONST_2);
  sysUIConfig := TUIConfig.Create;
  sysConfig := TSystemConfig.Create;
  sysConfig.SubSystemID := 1; // Ma PHAN HE NHAN SU
  if GetIPFromHost(sysConfig.Host_Name, sysConfig.IP_Addr, error) = false then
    showmessage(error);

  //Khi cap ma vinh vien thi khoa 3 dong lenh nay lai
  // Va mo dong lenh ShowModalForm(TfrmGioiThieu, frmGioiThieu)
  //ben hanh dong acAboutExecute cua Form Main ra
  //sspLicense1.RegistryKey := REGISTRY_ROOT;

  //sspLicense1.SetAppKey(Application.Title);
  //sspLicense1.UROK;
  //

  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\SSP\Interface', TRUE) then
    begin
      try
        sysConfig.Language := Reg.ReadInteger('Language');
      except
        sysConfig.Language := 0;
      end;
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

function TdmMain.InitConnection: boolean;
var
  reg: TRegistry;
  IsLocal: Boolean;
  ServerName, DatabaseName, UserName, Pass: string;
  NoError: Boolean;
begin
  if connMain.Connected then
    connMain.Close;
  {Lay cac thong so tu registry}
  reg := TRegistry.Create;
  isLocal := True;
  try
    reg.RootKey := HKEY_CURRENT_USER;
    NoError := reg.OpenKeyReadOnly(REGISTRY_DB_PATH);
    if NoError then
    begin
      IsLocal := reg.ReadBool('IsLocal');
      ServerName := sysSecurity.Decrypt(reg.ReadString('ServerName'), S_STARTKEY);
      DatabaseName := sysSecurity.Decrypt(reg.ReadString('Database'), S_STARTKEY);
      UserName := sysSecurity.Decrypt(reg.ReadString('UserName'), S_STARTKEY);
      Pass := sysSecurity.Decrypt(reg.ReadString('Password'), S_STARTKEY);
      reg.CloseKey;
    end
  finally
    reg.Free;
  end;
  if IsLocal = True then
  begin
    connMain.DatabaseName := DataBaseName;
  end
  else
  begin
    connMain.DatabaseName := ServerName + ':' + DataBaseName;
  end;
  connMain.Username := UserName;
  connMain.Password := Pass;
  connMain.SQLDialect := 3;
  try
    connMain.Open;
    if connMain.Connected then
    begin
      sysConfig.DatabasePath := connMain.DatabaseName;
      Result := true;
    end
    else
      result := false
  except
    Result := false;
  end;
end;

procedure TdmMain.DataModuleDestroy(Sender: TObject);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\SSP\Interface', TRUE) then
    begin
      try
        Reg.WriteInteger('Language', sysConfig.Language);
      except
      end;
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
  sysUIConfig.Free;
  sysConfig.Free;
  sysSecurity.Free;
  //===============================================================
end;

procedure AdaptToOS(AControl: TElFormCaption);
begin
  AControl.UseXPThemes := false;
  case Win32Platform of
    VER_PLATFORM_WIN32_NT:
      begin
        if Win32MajorVersion = 5 then
          if Win32MinorVersion = 1 then
            if sysConfig.WindowsStyle = '1' then
              AControl.UseXPThemes := true;
      end
  end;
end;

function TdmMain.DefOnPrepareReport(root_dir: string; template_name: string;
  rptReport: TppReport): boolean;
var
  pathName: string;
begin

  try
    pathName := root_dir + '\' + template_name;
    if (FileExists(pathName)) then
    begin
      rptReport.Template.FileName := pathName;
      rptReport.Template.Load;
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

procedure TdmMain.DefOnBeforePrint(isprinted: boolean;
  qryReport: TIBOQuery; form: TComponent);
var
  i: integer;
  compReport: TComponent;
  DisplayCap: Widestring;
  CompCap: string;
  qry: TIBOQuery;
begin
  for i := 0 to form.ComponentCount - 1 do
  begin
    compReport := form.Components[i];
    if (compReport is TppDBImage) then
    begin
      try
        qry := TIBOQuery(form.FindComponent((compReport as
          TppDBImage).DataPipeline.GetDataSetName));
        if Assigned(qry) then
        begin
          if (qry.FieldByname('IMG_TYPE').AsString = 'TJPEGImage') then
            (compReport as TppDBImage).GraphicType := 'JPEG'
          else
            if (qry.FieldByname('IMG_TYPE').AsString = 'TBitmap') then
            (compReport as TppDBImage).GraphicType := 'Bitmap';
        end;
      except
      end;
      Continue;
      end
      else
        if (compReport is TppDBText) then
        begin
          //Doc VND bang tieng viet
          if UpperCase(TppDBText(compReport).DisplayFormat) = 'VND_INWORDS_VIETNAMESE' then
            TppDBText(compReport).OnFormat := OnppReadVNDByVietnamese
          //Doc VND bang tieng anh
          else if UpperCase(TppDBText(compReport).DisplayFormat) = 'VND_INWORDS_ENGLISH' then
            TppDBText(compReport).OnFormat := OnppReadVNDByEnglish
          //Doc USD bang tieng anh
          else if UpperCase(TppDBText(compReport).DisplayFormat) = 'USD_INWORDS_ENGLISH' then
            TppDBText(compReport).OnFormat := OnppReadUSDByEnglish
          //Doc USD bang tieng viet
          else if UpperCase(TppDBText(compReport).DisplayFormat) = 'USD_INWORDS_VIETNAMESE' then
            TppDBText(compReport).OnFormat := OnppReadUSDByVietnamese;
        end;
    ;
    if isprinted = false then continue;
    if not (compReport is TppLabel) then
      Continue;
    DisplayCap := '\\\///';
    if (compReport as TppLabel).Height < 0.1 then
      (compReport as TppLabel).Height := 0.2;
    CompCap := LowerCase(UTF8Encode((compReport as TppLabel).Caption));
    if (CompCap = 'lbl_param0_date') then
      TppLabel(compReport).Caption :=
        DateTimeToText(VarToDateTime(qryReport.Params[0].Value))
    else
      if (CompCap = 'lbl_param1_date') then
      TppLabel(compReport).Caption :=
        DateTimeToText(VarToDateTime(qryReport.Params[1].Value)) ;
    {else
      if (CompCap = 'lbl_param0') then
      TppLabel(compReport).Caption := VarToStr(qryReport.Params[0].Value)
    else
      if (CompCap = 'lbl_param1') then
      TppLabel(compReport).Caption := VarToStr(qryReport.Params[1].Value)
    else
      if (CompCap = 'lbl_param2') then
      TppLabel(compReport).Caption :=
        VarToStr(qryReport.Params[2].Value)
    else
      if (CompCap = 'lbl_param3') then
      TppLabel(compReport).Caption :=
        VarToStr(qryReport.Params[3].Value)
    else
      if (CompCap = 'lbl_param4') then
      TppLabel(compReport).Caption :=
        VarToStr(qryReport.Params[4].Value); }
  end;
end;

procedure Apply_DB_EditControl(com: TComponent);
var
  qry: TIBOQuery;
  FieldName: string;
  pp: PPropInfo;
  ds: TDatasource;
  read_only: boolean;
begin
  pp := GetPropInfo(com, 'DataSource', [tkClass]);
  if not Assigned(pp) then exit;
  ds := TDatasource(GetOrdProp(com, pp));
  if Assigned(ds) and
    Assigned(ds.DataSet) and
    (ds.DataSet is TIBOQuery) then
  begin
    pp := GetPropInfo(com.ClassInfo, 'DataField');
    if not Assigned(pp) then exit;
    FieldName := string(GetStrProp(com, pp));
    if (ds.DataSet as TIBOQuery).FieldByName(FieldName).Required and
      ((ds.DataSet as TIBOQuery).FieldByName(FieldName).Tag <> -1) then
    begin
      pp := GetPropInfo(com.ClassInfo, 'Color');
      if Assigned(pp) then
        SetOrdProp(com, pp, Integer(sysUIConfig.Required_Field_Color));
    end
    else
    begin
      pp := GetPropInfo(com.ClassInfo, 'ReadOnly');
      if not Assigned(pp) then exit;

      read_only := Boolean(GetOrdProp(com, pp));
      if read_only then
      begin
        pp := GetPropInfo(com.ClassInfo, 'Color');
        if Assigned(pp) then
          SetOrdProp(com, pp, Integer(sysUIConfig.Read_Only_Color));
      end;
    end
  end;
  // them
{  if (com is TdxDBPopupEdit) then
  begin
    if
    (com as TdxDBPopupEdit).HideEditCursor:=true;
  end
 }
end;

procedure Apply_Inspector(com: TComponent);
var
  i: integer;
begin

  TdxDBInspector(com).BorderStyle := sysUIConfig.Grid_BorderStyle;
  TdxDBInspector(com).Font.Color := sysUIConfig.Grid_FontColor;
  TdxDBInspector(com).Font.Size := sysUIConfig.Grid_FontSize;
  TdxDBInspector(com).Font.Style := sysUIConfig.Grid_FontStyle;

  if Assigned(TdxDBInspector(com).DataSource) and
    Assigned(TdxDBInspector(com).DataSource.DataSet) then
  begin
    if (TdxDBInspector(com).DataSource.DataSet is TIBOQuery) then
    begin
      if
        (TIBOQuery(TdxDBInspector(com).DataSource.DataSet).EditSQL.Count <= 0)
        then
        TdxDBInspector(com).Options :=
          TdxDBInspector(com).Options - [dioEditing];
    end;
  end;

end;

procedure SSP_HandleException(E: Exception);
begin
  if e.Message = 'Record was not located to update' then
    ShowMessageUnicode(60)
  else
    if e.Message = 'Operation aborted' then
  begin
  end
  else
    ShowMessage(e.Message);
end;

procedure CancelAllDetailDataset(ds: TDatasource; AOwner: TComponent);
var
  i: integer;
begin
  for i := 0 to AOwner.ComponentCount - 1 do
  begin
    if (AOwner.Components[i] is TIBOQuery) then
    begin
      if (AOwner.Components[i] as TIBOQuery).DataSource = ds then
      begin
        if (AOwner.Components[i] as TIBOQuery).State in [dsInsert, dsEdit] then
          (AOwner.Components[i] as TIBOQuery).Cancel;
      end
    end;
  end;
end;

procedure TdmMain.qryCaptionCAPTION_VNChange(Sender: TField);
begin
  if qryCaptionCAPTION_DEFAULT.IsNull and
    (not qryCaptionCAPTION_VN.IsNull) then
    qryCaptionCAPTION_DEFAULT.Value := qryCaptionCAPTION_VN.Value;
  if qryCaptionHINT_DEFAULT.IsNull and
    (not qryCaptionHINT_VN.IsNull) then
    qryCaptionHINT_DEFAULT.Value := qryCaptionHINT_VN.Value;

end;

procedure ShowHelpContext(index: string);
begin
  if index = '' then
  begin
    if HtmlHelp(Application.handle, PAnsiChar( ExtractFilePath(Application.ExeName) + 'HDSD SSP-HRM.chm'), HH_DISPLAY_TOPIC, 0) = 0
      then
      ShowMessageUnicode(18);
  end
  else
  begin
    if HtmlHelp(Application.handle, PAnsiChar( ExtractFilePath(Application.ExeName) + 'HDSD SSP-HRM.chm::/' + index),
      HH_DISPLAY_TOPIC, 0) = 0 then
      ShowMessageUnicode(18);
  end;

end;

procedure TdmMain.qryAccessHistoryBeforeDelete(DataSet: TDataSet);
begin
  //
end;

procedure TdmMain.qryAccessHistoryAfterDelete(DataSet: TDataSet);
begin
  //
end;

procedure TdmMain.MainEventCenterEventAlert(Sender: TObject;
  AEventName: string; AEventCount: Integer);
begin
  if (AEventName=sysConfig.IP_Addr + ':' + sysConfig.User) then
  begin
    ShowMessageUnicode(73);
    Application.Terminate;
  end
  else
  if (AEventName='REQUEST_OUT:'+sysConfig.IP_Addr + ':' + sysConfig.User) then
  begin
    ShowModalForm(TfrmRequestOut,frmRequestOut);
  end;
end;

procedure TdmMain.qryAccessHistoryBeforePost(DataSet: TDataSet);
begin
  if Trim(qryAccessHistoryCONNECTION_ID.Value) = '' then
    qryAccessHistoryCONNECTION_ID.Value := 'unknow connection';
end;

procedure TdmMain.DefOnFILENAMEChange(Sender: TField);
var dataset: TDataset;
begin
  if Sender.IsNull then
  begin
    dataset := sender.DataSet;
    if Assigned(dataset.FindField('FILE_CONTENT')) then
    begin
      if Dataset.FieldByName('FILE_CONTENT').IsBlob then
        Dataset.FieldByName('FILE_CONTENT').Clear;
    end
  end
end;

procedure TdmMain.MainEventCenterError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  RaiseException := false;
end;

procedure TdmMain.LoadGrid;
var
  i: integer;
  prop_val: integer;
  ret: Boolean;
  reg: TRegistry;
begin
  //************************************************************************
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;

  ret := reg.KeyExists(REG_PATH + 'Data Grid');
  if ret = false then
    exit;
  reg.OpenKey(REG_PATH + 'Data Grid', False);
  if ret then
  begin
    sysUIConfig.Grid_ArrowColor := StrToIntDef(reg.ReadString('ARROW_COLOR'), 0);
    sysUIConfig.Grid_AutoSearchColor := StrToIntDef(reg.ReadString('AUTO_SEARCH_COLOR'), 0);
    sysUIConfig.Grid_AutoSearchTextColor := StrToIntDef(reg.ReadString('AUTO_SEARCH_TEXT_COLOR'), 0);
    sysUIConfig.Grid_BandColor := StrToIntDef(reg.ReadString('BAND_COLOR'), 0);
    sysUIConfig.Grid_BandFontColor := StrToIntDef(reg.ReadString('BAND_FONT_COLOR'), 0);
    sysUIConfig.Grid_BandFontSize := StrToIntDef(reg.ReadString('BAND_FONT_SIZE'), 0);

    prop_val := StrToIntDef(reg.ReadString('BAND_FONT_STYLE'), 0);
    if (prop_val mod 2) = 1 then
      sysUIConfig.Grid_BandFontStyle :=
        sysUIConfig.Grid_BandFontStyle + [fsBold]
    else
      sysUIConfig.Grid_BandFontStyle :=
        sysUIConfig.Grid_BandFontStyle - [fsBold];

    prop_val := StrToIntDef(reg.ReadString('BAND_FONT_STYLE'), 0);
    if (prop_val div 2) = 1 then
      sysUIConfig.Grid_BandFontStyle :=
        sysUIConfig.Grid_BandFontStyle + [fsItalic]
    else
      sysUIConfig.Grid_BandFontStyle :=
        sysUIConfig.Grid_BandFontStyle - [fsItalic];

    sysUIConfig.Grid_BorderStyle :=
      TBorderStyle(StrToIntDef(reg.ReadString('BORDER_STYLE'), 0));

    sysUIConfig.Grid_Color := StrToIntDef(reg.ReadString('COLOR'), 0);
    sysUIConfig.Grid_FixedBandLineColor := StrToIntDef(reg.ReadString('FIXED_BAND_LINE_COLOR'), 0);
    sysUIConfig.Grid_FixedBandLineWidth := StrToIntDef(reg.ReadString('FIXED_BAND_LINE_WIDTH'), 0);
    sysUIConfig.Grid_FontColor := StrToIntDef(reg.ReadString('FONT_COLOR'), 0);
    sysUIConfig.Grid_FontSize := StrToIntDef(reg.ReadString('FONT_SIZE'), 0);

    prop_val := StrToIntDef(reg.ReadString('FONT_STYLE'), 0);
    if (prop_val mod 2) = 1 then
      sysUIConfig.Grid_FontStyle :=
        sysUIConfig.Grid_FontStyle + [fsBold]
    else
      sysUIConfig.Grid_FontStyle :=
        sysUIConfig.Grid_FontStyle - [fsBold];

    if (prop_val div 2) = 1 then
      sysUIConfig.Grid_FontStyle :=
        sysUIConfig.Grid_FontStyle + [fsItalic]
    else
      sysUIConfig.Grid_FontStyle :=
        sysUIConfig.Grid_FontStyle - [fsItalic];

    sysUIConfig.Grid_LineColor := StrToIntDef(reg.ReadString('GRID_LINE_COLOR'), 0);
    sysUIConfig.Grid_IndicatorWidth := StrToIntDef(reg.ReadString('GRID_INDICATOR_WIDTH'), 0);
    sysUIConfig.Grid_GroupNodeColor := StrToIntDef(reg.ReadString('GROUP_NODE_COLOR'), 0);
    sysUIConfig.Grid_GroupPanelColor := StrToIntDef(reg.ReadString('GROUP_PANEL_COLOR'), 0);
    sysUIConfig.Grid_GroupPanelFontColor := StrToIntDef(reg.ReadString('GROUP_PANEL_FONT_COLOR'), 0);
    sysUIConfig.Grid_HeaderColor := StrToIntDef(reg.ReadString('HEADER_COLOR'), 0);
    sysUIConfig.Grid_HeaderFontColor := StrToIntDef(reg.ReadString('HEADER_FONT_COLOR'), 0);
    sysUIConfig.Grid_HeaderFontSize := StrToIntDef(reg.ReadString('HEADER_FONT_SIZE'), 0);

    prop_val := StrToIntDef(reg.ReadString('HEADER_FONT_STYLE'), 0);
    if (prop_val mod 2) = 1 then
      sysUIConfig.Grid_HeaderFontStyle :=
        sysUIConfig.Grid_HeaderFontStyle + [fsBold]
    else
      sysUIConfig.Grid_HeaderFontStyle :=
        sysUIConfig.Grid_HeaderFontStyle - [fsBold];

    if (prop_val div 2) = 1 then
      sysUIConfig.Grid_HeaderFontStyle :=
        sysUIConfig.Grid_HeaderFontStyle + [fsItalic]
    else
      sysUIConfig.Grid_HeaderFontStyle :=
        sysUIConfig.Grid_HeaderFontStyle - [fsItalic];

    sysUIConfig.Grid_LookAndFeel := TdxLookAndFeel(StrToIntDef(reg.ReadString('LOOK_AND_FEEL'), 0));

    prop_val := StrToIntDef(reg.ReadString('OPTION_BEHAVIOR'), 0);
    if (prop_val mod 2) = 1 then
    begin
      sysUIConfig.Grid_OptionBehavior :=
        sysUIConfig.Grid_OptionBehavior + [edgoAutoSearch];
      sysUIConfig.Tree_OptionBehavior :=
        sysUIConfig.Tree_OptionBehavior + [etoAutoSearch];
    end
    else
    begin
      sysUIConfig.Grid_OptionBehavior :=
        sysUIConfig.Grid_OptionBehavior - [edgoAutoSearch];
      sysUIConfig.Tree_OptionBehavior :=
        sysUIConfig.Tree_OptionBehavior - [etoAutoSearch];
    end;
    prop_val := proP_val div 2;
    if (prop_val mod 2) = 1 then
    begin
      sysUIConfig.Grid_OptionBehavior :=
        sysUIConfig.Grid_OptionBehavior + [edgoEnterThrough];
      sysUIConfig.Tree_OptionBehavior :=
        sysUIConfig.Tree_OptionBehavior + [etoEnterThrough];
    end
    else
    begin
      sysUIConfig.Grid_OptionBehavior :=
        sysUIConfig.Grid_OptionBehavior - [edgoEnterThrough];
      sysUIConfig.Tree_OptionBehavior :=
        sysUIConfig.Tree_OptionBehavior - [etoEnterThrough];
    end;

    prop_val := proP_val div 2;
    if (prop_val mod 2) = 1 then
    begin
      sysUIConfig.Grid_OptionBehavior :=
        sysUIConfig.Grid_OptionBehavior + [edgoImmediateEditor];
      sysUIConfig.Tree_OptionBehavior :=
        sysUIConfig.Tree_OptionBehavior + [etoImmediateEditor];
    end
    else
    begin
      sysUIConfig.Grid_OptionBehavior :=
        sysUIConfig.Grid_OptionBehavior - [edgoImmediateEditor];
      sysUIConfig.Tree_OptionBehavior :=
        sysUIConfig.Tree_OptionBehavior - [etoImmediateEditor];
    end;
    prop_val := proP_val div 2;
    if (prop_val mod 2) = 1 then
    begin
      sysUIConfig.Grid_OptionBehavior :=
        sysUIConfig.Grid_OptionBehavior + [edgoTabThrough];
      sysUIConfig.Tree_OptionBehavior :=
        sysUIConfig.Tree_OptionBehavior + [etoTabThrough];
    end
    else
    begin
      sysUIConfig.Grid_OptionBehavior :=
        sysUIConfig.Grid_OptionBehavior - [edgoTabThrough];
      sysUIConfig.Tree_OptionBehavior :=
        sysUIConfig.Tree_OptionBehavior - [etoTabThrough];
    end;

    prop_val := StrToIntDef(reg.ReadString('OPTION_D'), 0);
    if (prop_val mod 2) = 1 then
    begin
      sysUIConfig.Grid_OptionDB :=
        sysUIConfig.Grid_OptionDB + [edgoLoadAllRecords];
      sysUIConfig.Tree_OptionDB :=
        sysUIConfig.Tree_OptionDB + [etoLoadAllRecords];
    end
    else
    begin
      sysUIConfig.Grid_OptionDB :=
        sysUIConfig.Grid_OptionDB - [edgoLoadAllRecords];
      sysUIConfig.Tree_OptionDB :=
        sysUIConfig.Tree_OptionDB - [etoLoadAllRecords];
    end;

    prop_val := prop_val div 2;
    if (prop_val mod 2) = 1 then
    begin
      sysUIConfig.Grid_OptionDB :=
        sysUIConfig.Grid_OptionDB + [edgoPartialLoad];
    end
    else
    begin
      sysUIConfig.Grid_OptionDB :=
        sysUIConfig.Grid_OptionDB - [edgoPartialLoad];
    end;
    prop_val := proP_val div 2;
    if (prop_val mod 2) = 1 then
      sysUIConfig.Grid_OptionDB :=
        sysUIConfig.Grid_OptionDB + [edgoSmartRefresh]
    else
      sysUIConfig.Grid_OptionDB :=
        sysUIConfig.Grid_OptionDB - [edgoSmartRefresh];
  end;

  prop_val := StrToIntDef(reg.ReadString('OPTION_VIEW'), 0);
  if (prop_val mod 2) = 1 then
  begin
    sysUIConfig.Grid_OptionView :=
      sysUIConfig.Grid_OptionView + [edgoAutoHeaderPanelHeight];
    sysUIConfig.Tree_OptionView :=
      sysUIConfig.Tree_OptionView + [etoAutoHeaderPanelHeight]
  end
  else
  begin
    sysUIConfig.Grid_OptionView :=
      sysUIConfig.Grid_OptionView - [edgoAutoHeaderPanelHeight];
    sysUIConfig.Tree_OptionView :=
      sysUIConfig.Tree_OptionView - [etoAutoHeaderPanelHeight];
  end;

  prop_val := proP_val div 2;
  if (prop_val mod 2) = 1 then
  begin
    //sysUIConfig.Grid_OptionView:=
    //sysUIConfig.Grid_OptionView+[edgoAutoWidth];
    //sysUIConfig.Tree_OptionView:=
    //sysUIConfig.Tree_OptionView+[etoAutoWidth]
  end
  else
  begin
    //sysUIConfig.Grid_OptionView:=
    //sysUIConfig.Grid_OptionView-[edgoAutoWidth];
    //sysUIConfig.Tree_OptionView:=
    //sysUIConfig.Tree_OptionView-[etoAutoWidth];
  end;

  prop_val := proP_val div 2;
  if (prop_val mod 2) = 1 then
  begin
    sysUIConfig.Grid_OptionView :=
      sysUIConfig.Grid_OptionView + [edgoIndicator];
    sysUIConfig.Tree_OptionView :=
      sysUIConfig.Tree_OptionView + [etoIndicator]
  end
  else
  begin
    sysUIConfig.Grid_OptionView :=
      sysUIConfig.Grid_OptionView - [edgoIndicator];
    sysUIConfig.Tree_OptionView :=
      sysUIConfig.Tree_OptionView - [etoIndicator];
  end;

  prop_val := proP_val div 2;
  if (prop_val mod 2) = 1 then
  begin
    sysUIConfig.Grid_OptionView :=
      sysUIConfig.Grid_OptionView + [edgoRowAutoHeight];
    sysUIConfig.Tree_OptionView :=
      sysUIConfig.Tree_OptionView + [etoRowAutoHeight];
  end
  else
  begin
    sysUIConfig.Grid_OptionView :=
      sysUIConfig.Grid_OptionView - [edgoRowAutoHeight];
    sysUIConfig.Tree_OptionView :=
      sysUIConfig.Tree_OptionView - [etoRowAutoHeight];
  end;

  prop_val := StrToIntDef(reg.ReadString('SHOW_GRID'), 0);
  sysUIConfig.Grid_ShowGrid := (prop_val = 1);

  prop_val := StrToIntDef(reg.ReadString('SHOW_HEADER'), 0);
  sysUIConfig.Grid_ShowHeader := (prop_val = 1);

  prop_val := StrToIntDef(reg.ReadString('SHOW_NEW_ITEM_ROW'), 0);
  sysUIConfig.Grid_ShowNewItemArrow := (prop_val = 1);

  prop_val := StrToIntDef(reg.ReadString('SHOW_ROW_FOOTER'), 0);
  sysUIConfig.Grid_ShowRowFooter := (prop_val = 1);

  prop_val := StrToIntDef(reg.ReadString('SHOW_SUMMARY_FOOTER'), 0);
  sysUIConfig.Grid_ShowSummaryFooter := (prop_val = 1);

  prop_val := StrToIntDef(reg.ReadString('SHOW_BAND'), 0);
  sysUIConfig.Grid_ShowBand := (prop_val = 1);

  prop_val := StrToIntDef(reg.ReadString('SHOW_GROUP_PANEL'), 0);
  sysUIConfig.Grid_ShowGroupPanel := (prop_val = 1);

  prop_val := StrToIntDef(reg.ReadString('STORE_INI_FILE'), 0);
  sysUIConfig.Grid_StoreIniFile := (prop_val = 1);

  sysUIConfig.Grid_HighLightColor := StrToIntDef(reg.ReadString('HIGH_LIGHT_COLOR'), 0);
  sysUIConfig.Grid_HighLightTextColor := StrToIntDef(reg.ReadString('HIGH_LIGHT_TEXT_COLOR'), 0);
end;

procedure TdmMain.LoadLookAndFeel;
var
  int_value: integer;
  ret: boolean;
  path: string;
  reg: TRegistry;
begin
   //************************************************************************
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;
  //************ lay mau giao dien dang su dung ************************
  ret := reg.KeyExists(REGISTRY_ROOT + '\Option');
  if ret = false then
    Exit;
  reg.OpenKey(REGISTRY_ROOT + '\Option', False);
  path := reg.ReadString('UI_CONFIG');
  //************************************************************************

  //************************************************************************
  ret := reg.KeyExists(REG_PATH + path);
  if ret = false then
    exit;
  reg.OpenKey(REG_PATH + path, False);
  if ret then
  begin
    sysUIConfig.LookAndFeel_GroupCaptionColor := StrToInt(reg.ReadString('GRP_CAP_COLOR'));
    sysUIConfig.LookAndFeel_GroupCaptionFontSize := StrToInt(reg.ReadString('GRP_CAP_FONT_SIZE'));
    int_value := StrToInt(reg.ReadString('GRP_CAP_FONT_STYLE'));
    if (int_value mod 2) = 1 then
      sysUIConfig.LookAndFeel_GroupCaptionFontStyle :=
        sysUIConfig.LookAndFeel_GroupCaptionFontStyle + [fsBold]
    else
      sysUIConfig.LookAndFeel_GroupCaptionFontStyle :=
        sysUIConfig.LookAndFeel_GroupCaptionFontStyle - [fsBold];

    int_value := StrToInt(reg.ReadString('GRP_CAP_FONT_STYLE'));
    if (int_value div 2) = 1 then
      sysUIConfig.LookAndFeel_GroupCaptionFontStyle :=
        sysUIConfig.LookAndFeel_GroupCaptionFontStyle + [fsItalic]
    else
      sysUIConfig.LookAndFeel_GroupCaptionFontStyle :=
        sysUIConfig.LookAndFeel_GroupCaptionFontStyle - [fsItalic];

    sysUIConfig.LookAndFeel_GroupCaptionTextColor := StrToInt(reg.ReadString('GRP_CAP_TEXT_COLOR'));
    sysUIConfig.LookAndFeel_GroupColor := StrToInt(reg.ReadString('GRP_COLOR'));
    sysUIConfig.LookAndFeel_GroupFrameColor := StrToInt(reg.ReadString('GRP_FRAME_COLOR'));
    sysUIConfig.LookAndFeel_GroupFrameWidth := StrToInt(reg.ReadString('GRP_FRAME_WIDTH'));

    int_value := StrToInt(reg.ReadString('GRP_OFFSET_CAP'));
    sysUIConfig.LookAndFeel_GroupOffsetCaption := (int_value = 1);

    int_value := StrToInt(reg.ReadString('GRP_OFFSET_ITEM'));
    sysUIConfig.LookAndFeel_GroupOffsetItem := (int_value = 1);

    sysUIConfig.LookAndFeel_ItemCaptionFontColor := 0; // StrToInt(reg.ReadString('ITEM_CAP_FONT_COLOR'));

    int_value := StrToInt(reg.ReadString('ITEM_CAP_FONT_STYLE'));
    if (int_value mod 2) = 1 then
      sysUIConfig.LookAndFeel_ItemCaptionFontStyle :=
        sysUIConfig.LookAndFeel_ItemCaptionFontStyle + [fsBold]
    else
      sysUIConfig.LookAndFeel_ItemCaptionFontStyle :=
        sysUIConfig.LookAndFeel_ItemCaptionFontStyle - [fsBold];

    int_value := StrToInt(reg.ReadString('ITEM_CAP_FONT_STYLE'));
    if (int_value div 2) = 1 then
      sysUIConfig.LookAndFeel_ItemCaptionFontStyle :=
        sysUIConfig.LookAndFeel_ItemCaptionFontStyle + [fsItalic]
    else
      sysUIConfig.LookAndFeel_ItemCaptionFontStyle :=
        sysUIConfig.LookAndFeel_ItemCaptionFontStyle - [fsItalic];

    sysUIConfig.LookAndFeel_ItemCaptionTextColor := StrToInt(reg.ReadString('ITEM_CAP_TEXT_COLOR'));
    sysUIConfig.LookAndFeel_ItemCaptionFontSize := StrToInt(reg.ReadString('ITEM_CAP_FONT_SIZE'));
    sysUIConfig.LookAndFeel_OffsetControl_H := StrToInt(reg.ReadString('OFS_CONTROL_OFS_H'));
    sysUIConfig.LookAndFeel_OffsetControl_V := StrToInt(reg.ReadString('OFS_CONTROL_OFS_V'));
    sysUIConfig.LookAndFeel_OffsetItem_Offset := StrToInt(reg.ReadString('OFS_ITEM_OFS'));
    sysUIConfig.LookAndFeel_OffsetItem_ArreaH := StrToInt(reg.ReadString('OFS_ITEM_AREA_OFS_H'));
    sysUIConfig.LookAndFeel_OffsetItem_ArreaV := StrToInt(reg.ReadString('OFS_ITEM_AREA_OFS_V'));
    sysUIConfig.LookAndFeel_OffsetRoot_ArreaH := StrToInt(reg.ReadString('OFS_ROOT_AREA_OFS_H'));
    sysUIConfig.LookAndFeel_OffsetRoot_ArreaV := StrToInt(reg.ReadString('OFS_ROOT_AREA_OFS_V'));

    int_value := StrToInt(reg.ReadString('EDGE'));
    if (int_value mod 2) = 1 then
      sysUIConfig.LookAndFeel_Edge :=
        sysUIConfig.LookAndFeel_Edge + [edgLeft]
    else
      sysUIConfig.LookAndFeel_Edge :=
        sysUIConfig.LookAndFeel_Edge - [edgLeft];

    int_value := int_value div 2;
    if (int_value mod 2) = 1 then
      sysUIConfig.LookAndFeel_Edge :=
        sysUIConfig.LookAndFeel_Edge + [edgTop]
    else
      sysUIConfig.LookAndFeel_Edge :=
        sysUIConfig.LookAndFeel_Edge - [edgTop];

    int_value := int_value div 2;
    if (int_value mod 2) = 1 then
      sysUIConfig.LookAndFeel_Edge :=
        sysUIConfig.LookAndFeel_Edge + [edgRight]
    else
      sysUIConfig.LookAndFeel_Edge :=
        sysUIConfig.LookAndFeel_Edge - [edgRight];

    int_value := int_value div 2;
    if (int_value mod 2) = 1 then
      sysUIConfig.LookAndFeel_Edge :=
        sysUIConfig.LookAndFeel_Edge + [edgBottom]
    else
      sysUIConfig.LookAndFeel_Edge :=
        sysUIConfig.LookAndFeel_Edge - [edgBottom];

    sysUIConfig.LookAndFeel_BorderColor := StrToInt(reg.ReadString('BORDER_COLOR'));
    sysUIConfig.LookAndFeel_BorderStyle :=
      TdxEditBorderStyle(StrToInt(reg.ReadString('BORDER_STYLE')));
    sysUIConfig.LookAndFeel_ButtonStyle :=
      TdxEditButtonViewStyle(StrToInt(reg.ReadString('BUTTON_STYLE')));
    sysUIConfig.LookAndFeel_ButtonTransparence :=
      TdxEditButtonTransparence(StrToInt(reg.ReadString('BUTTON_TRANSPARENCE')));

    int_value := StrToInt(reg.ReadString('SHADOW'));
    sysUIConfig.LookAndFeel_Shadow := (int_value = 1);

    int_value := StrToInt(reg.ReadString('HOT_TRACT'));
    sysUIConfig.LookAndFeel_HotTrack := (int_value = 1);
  end
end;
procedure TdmMain.OnppReadVNDByVietnamese(Sender: TObject;
  DisplayFormat: string; DataType: TppDataType; Value: Variant;
  var AText: WideString);
var
  text_comp: TppDBText;
  val: double;
  country: integer;
begin
  AText := '';
  try
    text_comp := TppDBText(Sender);
    with text_comp, TppDBPipeLine(text_comp.DataPipeline) do
      if TryStrToFloat(VarToStr(Value), val) then
      begin
        // Da sua 84 thanh 1: ma code cua My
        country := 84;
        AText := NumInWords(country, LANG_VIETNAMESE, val);
      end;
  except
  end;
end;
procedure TdmMain.OnppReadUSDByEnglish(Sender: TObject;
  DisplayFormat: string; DataType: TppDataType; Value: Variant;
  var AText: WideString);
var
  text_comp: TppDBText;
  val: double;
  country: integer;
begin
  AText := '';
  try
    text_comp := TppDBText(Sender);
    with text_comp, TppDBPipeLine(text_comp.DataPipeline) do
      if TryStrToFloat(VarToStr(Value), val) then
      begin
        // Da sua 84 thanh 1: ma code cua My
        country := 1;
        AText := NumInWords(country, LANG_ENGLISH, val);
      end;
  except
  end;
end;
procedure TdmMain.OnppReadVNDByEnglish(Sender: TObject;
  DisplayFormat: string; DataType: TppDataType; Value: Variant;
  var AText: WideString);
var
  text_comp: TppDBText;
  val: double;
  country: integer;
begin
  AText := '';
  try
    text_comp := TppDBText(Sender);
    with text_comp, TppDBPipeLine(text_comp.DataPipeline) do
      if TryStrToFloat(VarToStr(Value), val) then
      begin
        // Da sua 84 thanh 1: ma code cua My
        country := 84;
        AText := NumInWords(country, LANG_ENGLISH, val);
      end;
  except
  end;
end;
procedure TdmMain.OnppReadUSDByVietnamese(Sender: TObject;
  DisplayFormat: string; DataType: TppDataType; Value: Variant;
  var AText: WideString);
var
  text_comp: TppDBText;
  val: double;
  country: integer;
begin
  AText := '';
  try
    text_comp := TppDBText(Sender);
    with text_comp, TppDBPipeLine(text_comp.DataPipeline) do
      if TryStrToFloat(VarToStr(Value), val) then
      begin
        country := 1;
        AText := NumInWords(country, LANG_VIETNAMESE, val);
      end;
  except
  end;
end;


initialization
  RegisterClasses([TIcon, TMetafile, TBitmap, TJPEGImage, TGIFImage]);
end.

