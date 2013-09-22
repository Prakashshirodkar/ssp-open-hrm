unit Luong_Bangluong;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  ImgList, ElPgCtl, dxBar, dxDBCtrl, dxTL, dxCntner, dxDBTL, ExtCtrls,
  dxLayoutControl, cxControls, StdCtrls, ElCLabel, ElLabel, ElPanel,
  ElSplit, DB, IBODataset, dxmdaset, ActnList, IB_Components, IB_Process,
  IB_Script, dxEdLib, dxEditor, ElBtnCtl, ElPopBtn, dxDBGrid, dxDBTLCl,
  dxGrClms, ToolbarFrame, dxBarExtItems, SSP_Script, ppEndUsr, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, TeEngine, TeeTools,
  TeePageNumTool, Series, TeeProcs, Chart, DBChart, TeeComma;
const
  s_select =
    ' SELECT DISTINCT WB_KEY_ID ' +
    ' , MA_NHANVIEN ' +
    ' , LAST_NAME||'' ''||MIDDLE_NAME||'' ''||FIRST_NAME FULL_NAME ' +
    ' , ACCOUNT_ID ' +
    ' , ACCOUNT_BANK ' +
    ' , EMAIL ' +
    ' , MA_DONVI ' +
    ' , DEPT_NAME ' +
    ' , MA_CHUCVU ' +
    ' , TITLE_NAME ' +
    ' , MA_DOT ' +
    ' , MA_THANG ' +
    ' , MA_NAM ' +
    ' , THUTU_DV ';
  s_leftjoin =
    ' left join HR_EMPLOYEE on MA_NHANVIEN=HR_EMPLOYEE.EMPLOYEE_NO ' +
    ' left join HR_DEPARTMENT ON MA_DONVI=HR_DEPARTMENT.DEPT_NO ' +
    ' left join HR_TITLE on MA_CHUCVU=HR_TITLE.TITLE_NO ';
  s_where =
    ' where (MA_THANG=:THANG) and (MA_NAM=:NAM) and (MA_DOT=:DOT) and ' +
    ' ((:VIEW_ALL=0 and MA_DONVI=:DEPT_NO) or ' +
    '  (:VIEW_ALL=1 and (DEPT_LEFT_INDEX>=:LEFT_INDEX) and (DEPT_RIGHT_INDEX<=:RIGHT_INDEX))' +
    ' ) order by THUTU_DV,THUTU_NV, MA_NHANVIEN ';

type
  TTimeSpend = record
    begin_time, end_time: TTime;
    total_time: Double;
  end;
  TfrmLuong_Bangluong = class(TfrmBase)
    panelLeft: TPanel;
    tlBangluong: TdxDBTreeList;
    pageControl: TElPageControl;
    ElTabSheet1: TElTabSheet;
    imgMenuList: TImageList;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElSplitter1: TElSplitter;
    mainPanel: TElPanel;
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    pageContent: TElPageControl;
    tabIntroduce: TElTabSheet;
    tabVIewDetail: TElTabSheet;
    panelView: TPanel;
    qryBangluong: TIBOQuery;
    qryBangluongL_ID: TIntegerField;
    qryBangluongTHANG: TIntegerField;
    qryBangluongNAM: TIntegerField;
    qryBangluongTHANG_NAM: TIntegerField;
    qryBangluongPA_MA: TIntegerField;
    qryBangluongTIEU_DE: TWideStringField;
    memBangluong: TdxMemData;
    dsBangluong: TDataSource;
    memBangluongKEY_ID: TStringField;
    memBangluongP_ID: TStringField;
    memBangluongL_ID: TIntegerField;
    memBangluongTIEU_DE: TWideStringField;
    memBangluongIMG_INDEX: TIntegerField;
    tlBangluongTIEU_DE: TdxDBTreeListColumn;
    tlBangluongIMG_INDEX: TdxDBTreeListColumn;
    ActionList1: TActionList;
    imlIcon: TImageList;
    acRefreshDSBangluong: TAction;
    acDangkyBangluongMoi: TAction;
    acHieuchinhTTBangluong: TAction;
    dxBarManager1: TdxBarManager;
    dxChucnang: TdxBarSubItem;
    dxDangkyBangluong: TdxBarButton;
    dxMobangluong: TdxBarButton;
    menuPop: TdxBarPopupMenu;
    acXoabangluong: TAction;
    dxXoabangluong: TdxBarButton;
    transaction: TIB_Transaction;
    scriptExecute: TIB_Script;
    qryBangluongPA_KYHIEU: TWideStringField;
    memBangluongPA_KYHIEU: TWideStringField;
    memBangluongTHANG: TIntegerField;
    memBangluongNAM: TIntegerField;
    acChitietBangluong: TAction;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxBarDockControl2: TdxBarDockControl;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxApdungchung: TdxBarButton;
    acChucnangIn: TAction;
    dxLayoutControl2Group4: TdxLayoutGroup;
    dxChonDonvi: TdxPopupEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxCapduoi: TdxCheckEdit;
    dxLayoutControl2Item7: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl2Item8: TdxLayoutItem;
    ActionList2: TActionList;
    acXembangluong: TAction;
    gridLuong: TdxDBGrid;
    dxLayoutControl2Item9: TdxLayoutItem;
    acDulieuChung: TAction;
    acDulieuDonvi: TAction;
    acDulieuVitri: TAction;
    acDulieuChucvu: TAction;
    dxDulieuDonvi: TdxBarButton;
    dxDulieuChucvu: TdxBarButton;
    dxDulieuVitri: TdxBarButton;
    dxTinhluong: TdxBarButton;
    acTinhluong: TAction;
    acNhatkyLuong: TAction;
    dxNhatkyLuong: TdxBarButton;
    dxTuychon: TdxBarButton;
    qryCongthuc: TIBOQuery;
    dsLuong: TDataSource;
    gridLuongMA_NHANVIEN: TdxDBGridColumn;
    gridLuongDEPT_NAME: TdxDBGridColumn;
    gridLuongTITLE_NAME: TdxDBGridColumn;
    gridLuongFULL_NAME: TdxDBGridColumn;
    gridLuongACCOUNT_ID: TdxDBGridColumn;
    gridLuongACCOUNT_BANK: TdxDBGridColumn;
    gridLuongEMAIL: TdxDBGridColumn;
    memBangluongPA_MA: TIntegerField;
    acKhoitaoBangluong: TAction;
    dxKhoitaoBangluong: TdxBarButton;
    dxLayoutControl2Item1: TdxLayoutItem;
    frameToolbar1: TframeToolbar;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    dxChophepHieuchinh: TdxCheckEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxTinhNhanh: TdxBarButton;
    acTinhluongNhanh: TAction;
    gridLuongWB_KEY_ID: TdxDBGridColumn;
    qrySession: TIBOQuery;
    qrySessionPA_MA: TIntegerField;
    qrySessionS_MA: TIntegerField;
    qrySessionS_TIEUDE: TWideStringField;
    qrySessionS_BEFORE_SCRIPT: TWideStringField;
    qrySessionS_AFTER_SCRIPT: TWideStringField;
    qrySessionS_REFRESH: TIntegerField;
    qrySessionS_EXEC_BSCRIPT: TIntegerField;
    qrySessionS_EXEC_AFTER: TIntegerField;
    qryCongthucPA_MA: TIntegerField;
    qryCongthucCT_MA: TIntegerField;
    qryCongthucCT_KYHIEU: TWideStringField;
    qryCongthucCT_TIEUDE: TWideStringField;
    qryCongthucCT_KIEUDULIEU: TWideStringField;
    qryCongthucCT_BIEUTHUC: TWideStringField;
    qryCongthucCT_NHAPTRUCTIEP: TIntegerField;
    qryCongthucCT_HINHTHUC_NHAPLIEU: TWideStringField;
    qryCongthucCT_TUDONG_CAPNHAT: TIntegerField;
    qryCongthucCT_THUTU_TINH: TIntegerField;
    qryCongthucCT_THUTU_HIENTHI: TIntegerField;
    qryCongthucCT_SESSION: TIntegerField;
    qryCongthucCT_WIDTH: TIntegerField;
    dxlcDeptListGroup_Root: TdxLayoutGroup;
    dxlcDeptList: TdxLayoutControl;
    tlDeptList: TdxDBTreeList;
    dxlcDeptListItem1: TdxLayoutItem;
    dsDeptList: TDataSource;
    qryDeptList: TIBOQuery;
    qryDeptListDEPT_NO: TWideStringField;
    qryDeptListDEPT_NAME: TWideStringField;
    qryDeptListP_DEPT_NO: TWideStringField;
    qryDeptListLEFT_INDEX: TIntegerField;
    qryDeptListRIGHT_INDEX: TIntegerField;
    tlDeptListDEPT_NAME: TdxDBTreeListColumn;
    acSaochepBangluong: TAction;
    dxSaochepLuong: TdxBarButton;
    dxKhoitaoLuong: TdxBarSubItem;
    dsSession: TDataSource;
    qrySessionDetail: TIBOQuery;
    qrySessionDetailPA_MA: TIntegerField;
    qrySessionDetailCT_MA: TIntegerField;
    qrySessionDetailCT_KYHIEU: TWideStringField;
    qrySessionDetailCT_TIEUDE: TWideStringField;
    qrySessionDetailCT_KIEUDULIEU: TWideStringField;
    qrySessionDetailCT_BIEUTHUC: TWideStringField;
    qrySessionDetailCT_NHAPTRUCTIEP: TIntegerField;
    qrySessionDetailCT_HINHTHUC_NHAPLIEU: TWideStringField;
    qrySessionDetailCT_TUDONG_CAPNHAT: TIntegerField;
    qrySessionDetailCT_THUTU_TINH: TIntegerField;
    qrySessionDetailCT_THUTU_HIENTHI: TIntegerField;
    qrySessionDetailCT_SESSION: TIntegerField;
    qrySessionDetailCT_WIDTH: TIntegerField;
    acChonthemNhanvien: TAction;
    acGetSelectedEmployee: TAction;
    dxChonthemNhanvien: TdxBarButton;
    qryLuong: TIBOQuery;
    qryLuongWB_KEY_ID: TIntegerField;
    qryLuongMA_NHANVIEN: TWideStringField;
    qryLuongFULL_NAME: TWideStringField;
    qryLuongACCOUNT_ID: TWideStringField;
    qryLuongACCOUNT_BANK: TWideStringField;
    qryLuongEMAIL: TWideStringField;
    qryLuongMA_DONVI: TWideStringField;
    qryLuongDEPT_NAME: TWideStringField;
    qryLuongMA_CHUCVU: TWideStringField;
    qryLuongTITLE_NAME: TWideStringField;
    qryLuongMA_THANG: TIntegerField;
    qryLuongMA_NAM: TIntegerField;
    dxShowError: TdxCheckEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    acTuychon: TAction;
    dxChonmauIn: TdxBarControlContainerItem;
    dxMauin: TdxPopupEdit;
    acXemMauin: TAction;
    acThietkeMauin: TAction;
    acInbangluong: TAction;
    dxXem: TdxBarButton;
    dxThietkeMauin: TdxBarButton;
    dxInBangluong: TdxBarButton;
    dxlcMauinGroup_Root: TdxLayoutGroup;
    dxlcMauin: TdxLayoutControl;
    gridMauin: TdxDBGrid;
    dxlcMauinItem1: TdxLayoutItem;
    dsMauin: TDataSource;
    qryMauin: TIBOQuery;
    qryMauinKEY_ID: TIntegerField;
    qryMauinTIEUDE_MAUIN: TWideStringField;
    qryMauinFILE_NAME: TWideStringField;
    qryMauinFILE_CONTENT: TBlobField;
    gridMauinTIEUDE_MAUIN: TdxDBGridColumn;
    gridMauinFILE_NAME: TdxDBGridColumn;
    ElPopupButton1: TElPopupButton;
    dxlcMauinItem2: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxlcMauinItem3: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxlcMauinItem4: TdxLayoutItem;
    dxlcMauinGroup1: TdxLayoutGroup;
    acDanhmucMauin: TAction;
    ppLuong: TppDBPipeline;
    rpLuong: TppReport;
    dsnLuong: TppDesigner;
    qryKhoaDuLieu: TIBOQuery;
    dsKhoaDuLieu: TDataSource;
    qryKhoaDuLieuL_ID: TIntegerField;
    qryKhoaDuLieuLOCK_DATE: TDateField;
    qryKhoaDuLieuUSER_NAME: TWideStringField;
    memDisplayReport: TdxMemData;
    dsDisplayReport: TDataSource;
    ppCTGiamTru: TppDBPipeline;
    rpCTGiamTru: TppReport;
    dsnCTGiamTru: TppDesigner;
    dsCTGiamTru: TDataSource;
    qryCTGiamTru: TIBOQuery;
    qryCTGiamTruHO_TEN: TWideStringField;
    qryCTGiamTruMASO_THUE: TWideStringField;
    qryCTGiamTruNGAY_SINH: TDateField;
    qryCTGiamTruSO_CMND: TWideStringField;
    qryCTGiamTruSO_HOCHIEU: TWideStringField;
    qryCTGiamTruQUAN_HE: TWideStringField;
    gridLuongMA_THANG: TdxDBGridColumn;
    gridLuongMA_NAM: TdxDBGridColumn;
    tabTHTheoDonVi: TElTabSheet;
    imgTab: TImageList;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxCotLuong: TdxMRUEdit;
    dxLayoutControl3Item1: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl3Item2: TdxLayoutItem;
    gridTongHopDonVi: TdxDBGrid;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    acTongHopDonVi: TAction;
    qryTongHop: TIBOQuery;
    dsTongHopDonVi: TDataSource;
    memTongHopDonVi: TdxMemData;
    memTongHopDonViDEPT_NO: TWideStringField;
    memTongHopDonViDEPT_NAME: TWideStringField;
    memTongHopDonViTOTAL: TFloatField;
    gridTongHopDonViDEPT_NO: TdxDBGridColumn;
    gridTongHopDonViDEPT_NAME: TdxDBGridColumn;
    gridTongHopDonViTOTAL: TdxDBGridCalcColumn;
    tcGeneralReport: TDBChart;
    sLine: TLineSeries;
    sBar: TBarSeries;
    sHBar: THorizBarSeries;
    sArea: TAreaSeries;
    sPoint: TPointSeries;
    sPie: TPieSeries;
    sFLine: TFastLineSeries;
    sHLine: THorizLineSeries;
    sHArea: THorizAreaSeries;
    TeeCommander1: TTeeCommander;
    Panel1: TPanel;
    dxDangBieuDo: TdxImageEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    dxLayoutControl3Group3: TdxLayoutGroup;
    tabTHTheoThoiGian: TElTabSheet;
    dxLayoutControl4: TdxLayoutControl;
    dxCotLuong2: TdxMRUEdit;
    ElPopupButton6: TElPopupButton;
    gridTongHopThoiGian: TdxDBGrid;
    dxDangBieuDo2: TdxImageEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    acTongHopThoiGian: TAction;
    memTongHopThoiGian: TdxMemData;
    dsTongHopThoiGian: TDataSource;
    memTongHopThoiGianKEY_FIELD: TIntegerField;
    memTongHopThoiGianKEY_VALUE: TWideStringField;
    gridTongHopThoiGianKEY_FIELD: TdxDBGridColumn;
    gridTongHopThoiGianKEY_VALUE: TdxDBGridColumn;
    gridTongHopThoiGianTOTAL: TdxDBGridCalcColumn;
    dxTuThang: TdxSpinEdit;
    dxTuNam: TdxSpinEdit;
    dxLayoutControl4Group1: TdxLayoutGroup;
    dxLayoutControl4Item1: TdxLayoutItem;
    dxLayoutControl4Item2: TdxLayoutItem;
    memTongHopThoiGianTOTAL: TFloatField;
    Panel2: TPanel;
    tcGeneralReport1: TDBChart;
    LineSeries1: TLineSeries;
    BarSeries1: TBarSeries;
    HorizBarSeries1: THorizBarSeries;
    AreaSeries1: TAreaSeries;
    PointSeries1: TPointSeries;
    PieSeries1: TPieSeries;
    FastLineSeries1: TFastLineSeries;
    HorizLineSeries1: THorizLineSeries;
    HorizAreaSeries1: THorizAreaSeries;
    TeeCommander2: TTeeCommander;
    tabTHTheoDvi_TGian: TElTabSheet;
    dxLayoutControl5: TdxLayoutControl;
    dxCotLuong3: TdxMRUEdit;
    ElPopupButton7: TElPopupButton;
    dxDangBieuDo3: TdxImageEdit;
    dxFromMonth: TdxSpinEdit;
    dxFromYear: TdxSpinEdit;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    gridTHDVi_TGian: TdxDBGrid;
    dxLayoutControl5Item1: TdxLayoutItem;
    Panel3: TPanel;
    tcGeneralReport2: TDBChart;
    LineSeries2: TLineSeries;
    BarSeries2: TBarSeries;
    HorizBarSeries2: THorizBarSeries;
    AreaSeries2: TAreaSeries;
    PointSeries2: TPointSeries;
    PieSeries2: TPieSeries;
    FastLineSeries2: TFastLineSeries;
    HorizLineSeries2: THorizLineSeries;
    HorizAreaSeries2: THorizAreaSeries;
    TeeCommander3: TTeeCommander;
    memTHDVi_TGian: TdxMemData;
    dsTHDVi_TGian: TDataSource;
    gridTHDVi_TGianDEPT_NO: TdxDBGridColumn;
    gridTHDVi_TGianDEPT_NAME: TdxDBGridColumn;
    gridTHDVi_TGianTOTAL: TdxDBGridColumn;
    acTHDVi_TGian: TAction;
    memTHDVi_TGianDEPT_NO: TWideStringField;
    memTHDVi_TGianDEPT_NAME: TWideStringField;
    memTHDVi_TGianTOTAL: TFloatField;
    qryBangluongDOT: TIntegerField;
    memBangluongDOT: TIntegerField;
    qryLuongMA_DOT: TIntegerField;
    dxDuLieuNhanVien: TdxBarButton;
    acDuLieuNhanVien: TAction;
    qryLuongTHUTU_DV: TIntegerField;
    gridLuongTHUTU_DV: TdxDBGridColumn;
    procedure acRefreshDSBangluongExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acDangkyBangluongMoiExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acHieuchinhTTBangluongExecute(Sender: TObject);
    procedure acHieuchinhTTBangluongUpdate(Sender: TObject);
    procedure tlBangluongMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acXoabangluongExecute(Sender: TObject);
    procedure acXoabangluongUpdate(Sender: TObject);
    procedure tlBangluongDblClick(Sender: TObject);
    procedure acChitietBangluongExecute(Sender: TObject);
    procedure acDulieuDonviExecute(Sender: TObject);
    procedure acDulieuVitriExecute(Sender: TObject);
    procedure acDulieuChucvuExecute(Sender: TObject);
    procedure dxChonDonviInitPopup(Sender: TObject);
    procedure dxChonDonviCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure acXembangluongUpdate(Sender: TObject);
    procedure acXembangluongExecute(Sender: TObject);
    procedure acKhoitaoBangluongExecute(Sender: TObject);
    procedure dxChophepHieuchinhChange(Sender: TObject);
    procedure acTinhluongExecute(Sender: TObject);
    function TinhLuong_Canhan: TTimeSpend;
    function TinhLuong_Session: TTimeSpend;
    function Cotluong: Variant;
    procedure acTinhluongNhanhExecute(Sender: TObject);
    procedure acTinhluongNhanhUpdate(Sender: TObject);
    procedure acTinhluongUpdate(Sender: TObject);
    procedure tlDeptListDblClick(Sender: TObject);
    procedure acSaochepBangluongExecute(Sender: TObject);
    procedure acChonthemNhanvienExecute(Sender: TObject);
    procedure acGetSelectedEmployeeExecute(Sender: TObject);
    procedure gridLuongDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure gridLuongCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: WideString; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure dxShowErrorChange(Sender: TObject);
    procedure acDulieuChungExecute(Sender: TObject);
    procedure ApplyGridView;
    procedure SaveGridView;
    procedure acTuychonUpdate(Sender: TObject);
    procedure acTuychonExecute(Sender: TObject);
    procedure acDanhmucMauinExecute(Sender: TObject);
    procedure dxMauinInitPopup(Sender: TObject);
    procedure dxMauinCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure gridMauinDblClick(Sender: TObject);
    procedure acXemMauinExecute(Sender: TObject);
    function PrepareReport: boolean;
    procedure DefOnBeforePrint(isprinted: boolean; qryReport: TIBOQuery);
    procedure acThietkeMauinExecute(Sender: TObject);
    procedure acInbangluongExecute(Sender: TObject);
    procedure acKhoitaoBangluongUpdate(Sender: TObject);
    procedure acTongHopDonViExecute(Sender: TObject);
    procedure acTongHopDonViUpdate(Sender: TObject);
    procedure dxDangBieuDoCloseUp(Sender: TObject; var Value: WideString;
      var Accept: Boolean);
    procedure acTongHopThoiGianExecute(Sender: TObject);
    procedure acTongHopThoiGianUpdate(Sender: TObject);
    procedure dxDangBieuDo2CloseUp(Sender: TObject; var Value: WideString;
      var Accept: Boolean);
    procedure acTHDVi_TGianExecute(Sender: TObject);
    procedure dxDangBieuDo3CloseUp(Sender: TObject; var Value: WideString;
      var Accept: Boolean);
    procedure acTHDVi_TGianUpdate(Sender: TObject);
    procedure acDuLieuNhanVienExecute(Sender: TObject);
  private
    { Private declarations }
    F_DEPT_NO, F_DEPT_NAME: WideString;
    F_DEPT_LEFT_INDEX, F_DEPT_RIGHT_INDEX: integer;
    F_THANG, F_NAM, F_PA_MA, F_DOT: Integer;
    F_PA_KYHIEU: string;
    F_TIEUDE: WideString;
    F_Script: TSSP_Script;
    F_FieldList: TStrings;
    F_FILE_NAME:string;
    F_FILE_TIEUDE:widestring;
    cur_chart: TCustomSeries;
    cur_chart1 : TCustomSeries;
    cur_chart2 : TCustomSeries;
    F_CHART_TYPE, F_CHART_TYPE1, F_CHART_TYPE2 : String;


    procedure CheckWagePlanLock();
    procedure LoadDisplayData();

  public
    { Public declarations }
    F_ErrorList: TStrings;
    property PA_MA:integer read F_PA_MA;
    property P_DEPT_NO: WideString read F_DEPT_NO;
    property P_THANG: integer read F_THANG;
    property P_NAM: integer read F_NAM;
    property P_DOT: integer read F_DOT;
    property P_LEFT_INDEX: integer read F_DEPT_LEFT_INDEX;
    property P_RIGHT_INDEX: integer read F_DEPT_RIGHT_INDEX;
    property P_PA_KYHIEU: string read F_PA_KYHIEU;
  end;
function GetTotalTime(var t: TTimeSpend): double;
var
  frmLuong_Bangluong: TfrmLuong_Bangluong;

implementation

uses MainDM, Luong_ChitietBangForm, PopupMainForm, SSP_Library,
  Luong_DonviForm, Luong_ChucvuForm, Luong_VitriForm, Luong_TinhluongForm,
  DateUtils,ppCtrls,ppTypes,
  SSP_Luong, Luong_SapchepForm, Luong_Themnhanvien, LuongDataModule,Registry,
  Luong_TienichNhaplieuForm, Luong_ToolForm, Luong_MauinForm, Math,
  Luong_NhanVienForm;

{$R *.dfm}

function GetTotalTime(var t: TTimeSpend): double;
begin
  t.total_time := (t.end_time - t.begin_time) * 86400;
  result := t.total_time;
end;
//==================================================

procedure TfrmLuong_Bangluong.acRefreshDSBangluongExecute(Sender: TObject);
var
  DOT, THANG, NAM: integer;
begin
  inherited;
  if qryBangluong.Active then
    qryBangluong.Close;
  qryBangluong.Open;
  if memBangluong.Active then
    memBangluong.Close;
  memBangluong.Open;
  if not qryBangluong.IsEmpty then
  begin
    qryBangluong.First;
    while not qryBangluong.Eof do
    begin
      if (NAM <> qryBangluongNAM.Value) then
      begin
        memBangluong.Append;
        memBangluongKEY_ID.Value := 'NAM_' + IntToStr(qryBangluongNAM.Value);
        memBangluongP_ID.Clear;
        memBangluongTIEU_DE.Value := UTF8Decode('NĂM ' +
          IntToStr(qryBangluongNAM.Value));
        memBangluongIMG_INDEX.Value := 0;
        memBangluong.Post;
        NAM := qryBangluongNAM.Value;
        THANG := -1;
      end;

      if (THANG <> qryBangluongTHANG.Value) then
      begin
        memBangluong.Append;
        memBangluongKEY_ID.Value := 'NAM_' + IntToStr(qryBangluongNAM.Value) +
          '_THANG_' + IntToStr(qryBangluongTHANG.Value);
        memBangluongP_ID.Value := 'NAM_' + IntToStr(qryBangluongNAM.Value);
        memBangluongTIEU_DE.Value := UTF8Decode('Tháng ' +
          IntToStr(qryBangluongTHANG.Value) + '/' +
          IntToStr(qryBangluongNAM.Value));
        memBangluongIMG_INDEX.Value := 1;
        memBangluong.Post;
        THANG := qryBangluongTHANG.Value;
        DOT := -1;
      end;

      if (DOT <> qryBangluongDOT.Value) then
      begin
        memBangluong.Append;
        memBangluongKEY_ID.Value := 'NAM_' + IntToStr(qryBangluongNAM.Value) +
          '_THANG_' + IntToStr(qryBangluongTHANG.Value) +
          '_DOT_' + IntToStr(qryBangluongDOT.Value);
        memBangluongP_ID.Value := 'NAM_' + IntToStr(qryBangluongNAM.Value) +
          '_THANG_' + IntToStr(qryBangluongTHANG.Value);
        memBangluongTIEU_DE.Value := UTF8Decode('Đợt ' +
          IntToStr(qryBangluongDOT.Value));
        memBangluongIMG_INDEX.Value := 2;
        DOT := qryBangluongDOT.Value;
        memBangluong.Post;
      end;


      memBangluong.Append;
      memBangluongKEY_ID.Value := qryBangluongL_ID.AsString;
      memBangluongP_ID.Value := 'NAM_' + IntToStr(qryBangluongNAM.Value) +
        '_THANG_' + IntToStr(qryBangluongTHANG.Value) +
        '_DOT_' + IntToStr(qryBangluongDOT.Value);
      memBangluongTIEU_DE.Value := qryBangluongTIEU_DE.Value;
      memBangluongIMG_INDEX.Value := 3;
      memBangluongL_ID.Value := qryBangluongL_ID.Value;
      memBangluongPA_MA.Value := qryBangluongPA_MA.Value;
      memBangluongPA_KYHIEU.Value := qryBangluongPA_KYHIEU.Value;
      memBangluongTHANG.Value := qryBangluongTHANG.Value;
      membangluongNAM.Value := qryBangluongNAM.Value;
      memBangluongDOT.Value := qryBangluongDOT.Value;
      memBangluong.Post;
      qryBangluong.Next;
    end;
  end;
  tlBangluong.Repaint;
end;

procedure TfrmLuong_Bangluong.FormCreate(Sender: TObject);
begin
  dxDangBieuDo.Values.Add('LINE');
  dxDangBieuDo.Values.Add('FLINE');
  dxDangBieuDo.Values.Add('HLINE');
  dxDangBieuDo.Values.Add('BAR');
  dxDangBieuDo.Values.Add('HBAR');
  dxDangBieuDo.Values.Add('AREA');
  dxDangBieuDo.Values.Add('HAREA');
  dxDangBieuDo.Values.Add('POINT');
  dxDangBieuDo.Values.Add('PIE');

  dxDangBieuDo.Descriptions.Add(UTF8Decode('Đường'));
  dxDangBieuDo.Descriptions.Add(UTF8Decode('Đường đơn'));
  dxDangBieuDo.Descriptions.Add(UTF8Decode('Đường ngang'));
  dxDangBieuDo.Descriptions.Add(UTF8Decode('Cột đứng'));
  dxDangBieuDo.Descriptions.Add(UTF8Decode('Cột ngang'));
  dxDangBieuDo.Descriptions.Add(UTF8Decode('Miền'));
  dxDangBieuDo.Descriptions.Add(UTF8Decode('Miền ngang'));
  dxDangBieuDo.Descriptions.Add(UTF8Decode('Điểm'));
  dxDangBieuDo.Descriptions.Add(UTF8Decode('Bánh'));

  dxDangBieuDo2.Values.Add('LINE');
  dxDangBieuDo2.Values.Add('FLINE');
  dxDangBieuDo2.Values.Add('HLINE');
  dxDangBieuDo2.Values.Add('BAR');
  dxDangBieuDo2.Values.Add('HBAR');
  dxDangBieuDo2.Values.Add('AREA');
  dxDangBieuDo2.Values.Add('HAREA');
  dxDangBieuDo2.Values.Add('POINT');
  dxDangBieuDo2.Values.Add('PIE');

  dxDangBieuDo2.Descriptions.Add(UTF8Decode('Đường'));
  dxDangBieuDo2.Descriptions.Add(UTF8Decode('Đường đơn'));
  dxDangBieuDo2.Descriptions.Add(UTF8Decode('Đường ngang'));
  dxDangBieuDo2.Descriptions.Add(UTF8Decode('Cột đứng'));
  dxDangBieuDo2.Descriptions.Add(UTF8Decode('Cột ngang'));
  dxDangBieuDo2.Descriptions.Add(UTF8Decode('Miền'));
  dxDangBieuDo2.Descriptions.Add(UTF8Decode('Miền ngang'));
  dxDangBieuDo2.Descriptions.Add(UTF8Decode('Điểm'));
  dxDangBieuDo2.Descriptions.Add(UTF8Decode('Bánh'));


  dxDangBieuDo3.Values.Add('LINE');
  dxDangBieuDo3.Values.Add('FLINE');
  dxDangBieuDo3.Values.Add('HLINE');
  dxDangBieuDo3.Values.Add('BAR');
  dxDangBieuDo3.Values.Add('HBAR');
  dxDangBieuDo3.Values.Add('AREA');
  dxDangBieuDo3.Values.Add('HAREA');
  dxDangBieuDo3.Values.Add('POINT');
  dxDangBieuDo3.Values.Add('PIE');

  dxDangBieuDo3.Descriptions.Add(UTF8Decode('Đường'));
  dxDangBieuDo3.Descriptions.Add(UTF8Decode('Đường đơn'));
  dxDangBieuDo3.Descriptions.Add(UTF8Decode('Đường ngang'));
  dxDangBieuDo3.Descriptions.Add(UTF8Decode('Cột đứng'));
  dxDangBieuDo3.Descriptions.Add(UTF8Decode('Cột ngang'));
  dxDangBieuDo3.Descriptions.Add(UTF8Decode('Miền'));
  dxDangBieuDo3.Descriptions.Add(UTF8Decode('Miền ngang'));
  dxDangBieuDo3.Descriptions.Add(UTF8Decode('Điểm'));
  dxDangBieuDo3.Descriptions.Add(UTF8Decode('Bánh'));

  inherited;
  pageContent.ShowTabs := false;
  acRefreshDSBangluong.Execute;
  pageContent.ActivePage := tabIntroduce;
  //edit by THUYPTP - 01/10/2009
  //pageContent.ShowTabs := false;
  tabIntroduce.TabVisible := false;
  //End edit 
  F_Script := TSSP_Script.Create(self);
  F_FieldList := TStringList.Create;
  F_ErrorList := TStringList.Create;

  qryKhoaDuLieu.Open;

  dxDangBieuDo.Text := 'BAR';
  F_CHART_TYPE := 'BAR';

  dxDangBieuDo2.Text := 'BAR';
  F_CHART_TYPE1 := 'BAR';

  dxDangBieuDo3.Text := 'BAR';
  F_CHART_TYPE2 := 'BAR';
end;

procedure TfrmLuong_Bangluong.acDangkyBangluongMoiExecute(Sender: TObject);
begin
  inherited;
  frmLuong_ChitietBang := TfrmLuong_ChitietBang.Create(self);
  try
    if frmLuong_ChitietBang.ShowModal = mrOk then
      acRefreshDSBangluong.Execute;
  finally
    frmLuong_ChitietBang.Free;
    frmLuong_ChitietBang := nil;
  end;
end;

procedure TfrmLuong_Bangluong.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: integer;
begin
  inherited;
  if Assigned(frmLuong_Themnhanvien) then
    frmLuong_Themnhanvien.Free;
  Action := caFree;
  if F_FieldList.Count > 0 then
  begin
    for i := F_FieldList.Count - 1 downto 0 do
    begin
      TField(F_FieldList.Objects[i]).Free;
    end;
  end;
  F_FieldList.Clear;
  F_Script.Free;
  F_ErrorList.Free;
  frmLuong_Bangluong := nil;
end;

procedure TfrmLuong_Bangluong.acHieuchinhTTBangluongExecute(
  Sender: TObject);
begin
  inherited;
  SaveGridView;
  frmLuong_ChitietBang := TfrmLuong_ChitietBang.Create(self,
    memBangluongL_ID.Value);
  try
    if frmLuong_ChitietBang.ShowModal = mrOk then
      acRefreshDSBangluong.Execute;
  finally
    frmLuong_ChitietBang.Free;
    frmLuong_ChitietBang := nil;
  end;
end;

procedure TfrmLuong_Bangluong.acHieuchinhTTBangluongUpdate(
  Sender: TObject);
begin
  inherited;
  acHieuchinhTTBangluong.Enabled := (memBangluongL_ID.Value > 0) and (qryKhoaDuLieu.RecordCount =0 );
end;

procedure TfrmLuong_Bangluong.tlBangluongMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Button = mbRight then
    menuPop.PopupFromCursorPos;
end;

procedure TfrmLuong_Bangluong.acXoabangluongExecute(Sender: TObject);
var
  msg_thongbao: Widestring;
begin
  inherited;
  //Added by THUYPTP - 10/04/2009
  if ((sysConfig.Language = 1) or (sysConfig.Language = 0)) then
    msg_thongbao := 'Thực hiện xóa bảng lương: ' + UTF8Encode(memBangluongTIEU_DE.Value) +
      ' sẽ xóa toàn bộ dữ liệu đã tính lương trên bảng lương.  ' +
      'Bạn có chắc chắn muốn thực hiện tác vụ này không?'
  else
    msg_thongbao := 'This action will delete all of current wage book data: ' +  UTF8Encode(memBangluongTIEU_DE.Value) +
      '  Are you sure to continue?';
  if ShowMessageUnicode(msg_thongbao,3,'Cảnh báo') = mrYes then
  begin
    try
      scriptExecute.SQL.Clear;
      scriptExecute.SQL.Add('delete from WB_' + memBangluongPA_KYHIEU.AsString +
        ' where MA_THANG=' + memBangluongTHANG.AsString +
        ' and MA_NAM=' + memBangluongNAM.AsString +
        ' and MA_DOT=' + memBangluongDOT.AsString + ';');
      scriptExecute.SQL.Add('delete from HR_LUONG_THANG where L_ID = ' +
        memBangluongL_ID.AsString + ';');
      scriptExecute.SQL.Add('COMMIT WORK;');
      scriptExecute.Execute;
      if ((sysConfig.Language = 1) or (sysConfig.Language = 0)) then
        ShowMessageUnicode('Thực hiện tác vụ xóa bảng lương thành công',1,'Xóa bảng lương')
      else
        ShowMessageUnicode('Wage book has been deleted successfully !',1,'Delete wage book');
      acRefreshDSBangluong.Execute;
      if memBangluong.RecordCount > 0 then
      begin
          acChitietBangluong.Execute;
          CheckWagePlanLock();
      end
    except
      ShowMessageUnicode(90);
    end;
  end;
end;

procedure TfrmLuong_Bangluong.acXoabangluongUpdate(Sender: TObject);
begin
  inherited;
  acXoabangluong.Enabled := (memBangluongL_ID.Value > 0) and (qryKhoaDuLieu.RecordCount =0 );
end;

procedure TfrmLuong_Bangluong.tlBangluongDblClick(Sender: TObject);
begin
  inherited;
  pageContent.ShowTabs := true;
  acChitietBangluong.Execute;
  CheckWagePlanLock();
  memTongHopDonVi.Close;
  memTongHopThoiGian.Close;    
end;

procedure TfrmLuong_Bangluong.acChitietBangluongExecute(Sender: TObject);
var
  i: integer;
  col: TdxDBTreeListColumn;
  band: TdxTreeListBand;
  insert_s1, insert_s2, update_s1, delete_s1: string;
  f: TField;
begin
  inherited;
  if Assigned(frmLuong_Themnhanvien) then
    frmLuong_Themnhanvien.Free;
  frmLuong_Themnhanvien := nil;

  if memBangluongIMG_INDEX.Value <> 3 then
    exit;
  Screen.Cursor := crSQLWait;
  if F_PA_KYHIEU<>'' then
    SaveGridView;
  F_DOT := memBangluongDOT.Value;
  F_THANG := memBangluongTHANG.Value;
  F_NAM := memBangluongNAM.Value;
  F_PA_KYHIEU := memBangluongPA_KYHIEU.Value;
  F_TIEUDE := memBangluongTIEU_DE.Value;
  F_PA_MA := memBangluongPA_MA.Value;
  lblListCaption.Caption := WideUpperCase(F_TIEUDE);

  //Buoc 1: xoa trang VIEW bang luong
  qryLuong.DisableControls;

  gridLuong.BeginUpdate;
  if qryLuong.Active then
    qryLuong.Close;
  if gridLuong.ColumnCount > 0 then
  begin
    for i := gridLuong.ColumnCount - 1 downto 0 do
    begin
      if gridLuong.Columns[i].Tag <> -1 then
        gridLuong.Columns[i].Free;
    end;
  end;
  if gridLuong.Bands.Count > 1 then
  begin
    for i := gridLuong.Bands.Count - 1 downto 0 do
    begin
      if gridLuong.Bands[i].DisableCustomizing = false then
        gridLuong.Bands[i].Free;
    end;
  end;

  F_Script.ClearIdentifiers;
  InitIdentifier(F_Script, false);
  // Buoc 2: khoi tao Banner-Session

  if qrySession.Active then
    qrySession.Close;
  qrySession.ParamByName('PA_MA').Value := F_PA_MA;
  qrySession.Open;
  if qrySession.IsEmpty = false then
  begin

    qrySession.First;
    while not qrySession.Eof do
    begin
      band := gridLuong.Bands.Add;
      band.Caption := qrySessionS_TIEUDE.Value;
      qrySession.Next;
    end;
  end;
  //Buoc 3: khoi tao GRID
  // - Khoi tao phan THONG TIN NHAN VIEN

  if qryCongthuc.Active then
    qryCongthuc.Close;
  qryCongthuc.ParamByName('PA_MA').Value := F_PA_MA;
  qryCongthuc.Open;

  //added by ThuyPTP - 01/10/2009
  RegisterLookupControl(dxCotLuong,'CT_KYHIEU','CT_TIEUDE',
    'SELECT CT_KYHIEU, CT_TIEUDE ' +
    'FROM HR_LUONG_CONGTHUC ' +
    'where HR_LUONG_CONGTHUC.PA_MA= ' + IntToStr(F_PA_MA) +
    ' and CT_KIEUDULIEU = ''DOUBLE'' ' +
    ' order by CT_SESSION,CT_THUTU_HIENTHI');
  RegisterLookupControl(dxCotLuong2,'CT_KYHIEU','CT_TIEUDE',
    'SELECT CT_KYHIEU, CT_TIEUDE ' +
    'FROM HR_LUONG_CONGTHUC ' +
    'where HR_LUONG_CONGTHUC.PA_MA= ' + IntToStr(F_PA_MA) +
    ' and CT_KIEUDULIEU = ''DOUBLE'' ' +
    ' order by CT_SESSION,CT_THUTU_HIENTHI');
  dxTuNam.IntValue := F_NAM;
  RegisterLookupControl(dxCotLuong3,'CT_KYHIEU','CT_TIEUDE',
    'SELECT CT_KYHIEU, CT_TIEUDE ' +
    'FROM HR_LUONG_CONGTHUC ' +
    'where HR_LUONG_CONGTHUC.PA_MA= ' + IntToStr(F_PA_MA) +
    ' and CT_KIEUDULIEU = ''DOUBLE'' ' +
    ' order by CT_SESSION,CT_THUTU_HIENTHI');
  dxFromYear.IntValue := F_NAM;
  //End add

  if qryLuong.Active then
    qryLuong.Close;
  qryLuong.SQL.Clear;
  qryLuong.SQL.Text := s_select;

  qryLuong.DeleteSQL.Clear;
  qryLuong.DeleteSQL.Text := 'delete from WB_' + F_PA_KYHIEU +
    ' where WB_KEY_ID=:OLD_WB_KEY_ID';
  qryLuong.KeyLinks.Clear;
  qryLuong.KeyLinks.Add('WB_KEY_ID');
  qryLuong.GeneratorLinks.Clear;
  qryLuong.GeneratorLinks.Add('WB_KEY_ID=GEN_WB_' + F_PA_KYHIEU + '_ID');

  qryLuong.InsertSQL.Clear;
  qryLuong.InsertSQL.Text := 'insert into WB_' + F_PA_KYHIEU;
  qryLuong.EditSQL.Clear;
  qryLuong.EditSQL.Text := 'update WB_' + F_PA_KYHIEU + ' set ';

  insert_s1 :=
    'WB_KEY_ID , MA_NHANVIEN , MA_DONVI , MA_CHUCVU, MA_DOT, MA_THANG , MA_NAM ';
  insert_s2 :=
    ':WB_KEY_ID , :MA_NHANVIEN , :MA_DONVI , :MA_CHUCVU, :MA_DOT, :MA_THANG , :MA_NAM ';

  update_s1 := ' WB_KEY_ID=:WB_KEY_ID , ' +
    ' MA_NHANVIEN=:MA_NHANVIEN , ' +
    ' MA_DONVI=:MA_DONVI ,' +
    ' MA_CHUCVU=:MA_CHUCVU,' +
    ' MA_DOT=:MA_DOT ,' +
    ' MA_THANG=:MA_THANG ,' +
    ' MA_NAM=:MA_NAM ';

  if qryCongthuc.IsEmpty = false then
  begin
    if F_FieldList.Count > 0 then
    begin
      for i := F_FieldList.Count - 1 downto 0 do
      begin
        TField(F_FieldList.Objects[i]).Free;
      end;
    end;
    F_FieldList.Clear;
    qryCongthuc.First;
    while not qryCongthuc.Eof do
    begin
      F_Script.AddMethod0Param(qryCongthucCT_KYHIEU.AsString, Cotluong);
      // cau SELECT
      qryLuong.SQL.Text := qryLuong.SQL.Text + ' , ' +
        qryCongthucCT_KYHIEU.AsString;
      if qryCongthucCT_KIEUDULIEU.Value = 'DOUBLE' then
      begin
        f := TFloatField.Create(qryLuong);
        f.SetFieldType(ftFloat);
        TFloatField(f).DisplayFormat := sysConfig.FloatFormat;
        col := gridLuong.CreateColumn(TdxDBGridCalcColumn)
      end
      else if qryCongthucCT_KIEUDULIEU.Value = 'VARCHAR' then
      begin
        f := TWideStringField.Create(qryLuong);
        f.SetFieldType(ftWideString);
        f.Size := 42;
        col := gridLuong.CreateColumn(TdxDBGridColumn);
      end
      else if qryCongthucCT_KIEUDULIEU.Value = 'MEMO' then
      begin
        f := TWideStringField.Create(qryLuong);
        f.SetFieldType(ftWideString);
        f.Size := 1024;
        col := gridLuong.CreateColumn(TdxDBGridColumn);
      end
      else if qryCongthucCT_KIEUDULIEU.Value = 'DATE' then
      begin
        f := TDateField.Create(qryLuong);
        f.SetFieldType(ftDate);
        col := gridLuong.CreateColumn(TdxDBGridDateColumn);
      end;

      // cau INSERT SQL
      insert_s1 := insert_s1 + ' , ' + qryCongthucCT_KYHIEU.AsString;
      insert_s2 := insert_s2 + ' , :' + qryCongthucCT_KYHIEU.AsString;
      update_s1 := update_s1 + ' , ' + qryCongthucCT_KYHIEU.AsString + '=:' +
        qryCongthucCT_KYHIEU.AsString;

      f.Name := qryLuong.Name + qryCongthucCT_KYHIEU.AsString;
      f.FieldName := qryCongthucCT_KYHIEU.AsString;
      f.FieldKind := fkData;
      f.DataSet := qryLuong;
      F_FieldList.AddObject(qryCOngthucCT_KYHIEU.AsString, f);

      col.Name := gridLuong.Name + qryCongthucCT_KYHIEU.AsString;
      col.FieldName := qryCongthucCT_KYHIEU.AsString;
      col.Width := qryCongthucCT_WIDTH.Value;
      col.HeaderAlignment := taCenter;
      col.DisableCustomizing := true;
      col.Caption := qryCongthucCT_TIEUDE.Value;

      if qryCongthucCT_HINHTHUC_NHAPLIEU.Value = 'TUDONG_CAPNHAT' then
      begin
        col.DisableEditor := true;
        col.ReadOnly := true;
        col.Tag := 1
      end
      else if qryCongthucCT_HINHTHUC_NHAPLIEU.Value <> 'TINHTOAN' then
      begin
        col.DisableEditor := false;
        col.ReadOnly := false;
        col.Tag := 0;
      end
      else
      begin
        col.DisableEditor := true;
        col.ReadOnly := true;
        col.Color := sysUIConfig.Read_Only_Color;
        col.Tag := 2
      end;
      col.BandIndex := qryCongthucCT_SESSION.Value;

      qryCongthuc.Next
    end;
  end;
  qryLuong.SQL.Text := qryLuong.SQL.Text +
    ' FROM WB_' + F_PA_KYHIEU + ' ' +
    s_leftjoin + ' ' + s_where;
  qryLuong.InsertSQL.Text := qryLuong.InsertSQL.Text + '(' + insert_s1 +
    ') values (' + insert_s2 + ')';
  qryLuong.EditSQL.Text := qryLuong.EditSQL.Text + update_s1 +
    ' where WB_KEY_ID=:OLD_WB_KEY_ID';
  qryLuong.Prepare;
  acXembangluong.Execute;
  frameToolbar1.SetDataSource(dsLuong);
  frameToolbar1.SetListSource(dsLuong);
  Apply_Grid(gridLuong);
  gridLuong.EndUpdate;
  qryLuong.EnableControls;
  pageContent.ActivePage := tabVIewDetail;
  ApplyGridView;

  if Assigned(frmLuong_Tuychon) then
    frmLuong_Tuychon.ReloadGridView;
  Screen.Cursor := crDefault;
end;

procedure TfrmLuong_Bangluong.acDulieuDonviExecute(Sender: TObject);
begin
  inherited;
  frmLuong_Donvi := TfrmLuong_DOnvi.Create(self, F_PA_MA, F_PA_KYHIEU,
    F_DOT,F_THANG,F_NAM);
  try
    frmLuong_Donvi.ShowModal;
  finally
    frmLuong_donvi.Free;
    frmLuong_Donvi := nil;
  end;

end;

procedure TfrmLuong_Bangluong.acDulieuVitriExecute(Sender: TObject);
begin
  inherited;
  frmLuong_Vitri := TfrmLuong_Vitri.Create(self, F_PA_MA, F_PA_KYHIEU,
    F_DOT,F_THANG,F_NAM);
  try
    frmLuong_Vitri.ShowModal;
  finally
    frmLuong_Vitri.Free;
    frmLuong_Vitri := nil;
  end;
end;

procedure TfrmLuong_Bangluong.acDulieuChucvuExecute(Sender: TObject);
begin
  inherited;
  frmLuong_Chucvu := TfrmLuong_Chucvu.Create(self, F_PA_MA, F_PA_KYHIEU,
    F_DOT, F_THANG, F_NAM);
  try
    frmLuong_Chucvu.ShowModal;
  finally
    frmLuong_Chucvu.Free;
    frmLuong_Chucvu := nil;
  end;
end;

procedure TfrmLuong_Bangluong.dxChonDonviInitPopup(Sender: TObject);
begin
  inherited;
  if qryDeptList.Active then qryDeptList.Close;  
  qryDeptList.Open;
  InitPopupControl('dxlcDeptList', self, sender, 2);
  tlDeptList.FullExpand;
end;

procedure TfrmLuong_Bangluong.dxChonDonviCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := qryDeptListDEPT_NAME.Value;
    F_DEPT_NO := qryDeptListDEPT_NO.Value;
    F_DEPT_NAME := qryDeptListDEPT_NAME.Value;
    F_DEPT_LEFT_INDEX := qryDeptListLEFT_INDEX.Value;
    F_DEPT_RIGHT_INDEX := qryDeptListRIGHT_INDEX.Value;
  end;
end;

procedure TfrmLuong_Bangluong.acXembangluongUpdate(Sender: TObject);
begin
  inherited;
  acXemBangluong.Enabled := qryLuong.Prepared;
end;

procedure TfrmLuong_Bangluong.acXembangluongExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if qryLuong.Active then
    qryLuong.Close;
  qryLuong.ParamByName('DEPT_NO').Value := F_DEPT_NO;
  qryLuong.ParamByName('DOT').Value := F_DOT;
  qryLuong.ParamByName('THANG').Value := F_THANG;
  qryLuong.ParamByName('NAM').Value := F_NAM;
  if dxCapduoi.Checked then
    qryLuong.ParamByName('VIEW_ALL').Value := 1
  else
    qryLuong.ParamByName('VIEW_ALL').Value := 0;
  qryLuong.ParamByName('LEFT_INDEX').Value := F_DEPT_LEFT_INDEX;
  qryLuong.ParamByName('RIGHT_INDEX').Value := F_DEPT_RIGHT_INDEX;
  qryLuong.Open;
  gridLuong.FullExpand;

  if memDisplayReport.Active then memDisplayReport.Close;
  memDisplayReport.CreateFieldsFromDataSet(qryLuong);

  LoadDisplayData;

  Screen.Cursor := crDefault;
end;

procedure TfrmLuong_Bangluong.acKhoitaoBangluongExecute(Sender: TObject);
var
  res: integer;
begin
  inherited;
  //Added by THUYPTP - 17/04/2009
  if F_DEPT_NO = '' then
  begin
    ShowMessageUnicode(110); 
    exit;
  end;
  //Het

  scriptExecute.SQL.Clear;
  scriptExecute.SQL.Add('insert into WB_' + F_PA_KYHIEU +
    '(ma_nhanvien,ma_donvi,ma_chucvu,ma_dot,ma_thang,ma_nam) '
    + 'select ma_nhanvien, ma_donvi, ma_chucvu,'
    +  IntToStr(F_DOT) + ',' + IntToStr(F_THANG) + ',' + IntToStr(F_NAM)
    + ' from hr_luong_pa_nv where ma_pa=' + IntToStr(F_PA_MA) + ' and'
    + ' ma_nhanvien||ma_donvi||ma_chucvu not in '
    + ' (select ma_nhanvien||ma_donvi||ma_chucvu '
    + '  from WB_' + F_PA_KYHIEU
    + '  where ma_thang=' + IntToStr(F_THANG)
    + '  and ma_nam=' + IntToStr(F_NAM)
    + '  and ma_dot=' + IntToStr(F_DOT) + ');');
  scriptExecute.SQL.Add('COMMIT WORK;');
  try
    scriptExecute.Execute;
    acXembangluong.Execute;
  except
    //ShowMessage('Error while creating wagebook data');
    ShowMessageUnicode(101);
  end;

end;

procedure TfrmLuong_Bangluong.dxChophepHieuchinhChange(Sender: TObject);
begin
  inherited;
  if dxChophepHieuchinh.Checked then
    gridLuong.OptionsBehavior := gridLuong.OptionsBehavior + [edgoEditing]
  else
    gridLuong.OptionsBehavior := gridLuong.OptionsBehavior - [edgoEditing]
end;

procedure TfrmLuong_Bangluong.acTinhluongExecute(Sender: TObject);
begin
  inherited;
  if qryLuong.State in [dsEdit] then qryLuong.Post;
  if not Assigned(frmLuong_Tinhluong) then
  begin
    frmLuong_Tinhluong := TfrmLuong_Tinhluong.Create(self);
    frmLuong_Tinhluong.Show;
  end
  else
    frmLuong_Tinhluong.BringToFront;
end;

function TfrmLuong_Bangluong.Cotluong: Variant;
var
  cur_function: string;
begin
  try
    cur_function := Trim(F_Script.GetCurFunction);
    if cur_function = '' then
      result := ''
    else
    begin
      if Assigned(qryLuong.FindField(cur_function)) then
      begin
        if qryLuong.FieldByName(cur_function).IsNull then
        begin
          if (qryLuong.FieldByName(cur_function) is TFloatField) then
            result := 0
          else
            result := '';
        end
        else
          result := qryLuong.FieldByName(cur_function).Value;
      end
    end;
  except
    result := 'Error';
  end;
end;
//=========================================================================================

function TfrmLuong_Bangluong.TinhLuong_Canhan: TTimeSpend;
//MO TA : thuc hien tinh luong do nhan vien hien tai tren bang luong
begin
  if dmLuong.PA_KYHIEU <> F_PA_KYHIEU then
    dmLuong.PA_KYHIEU := F_PA_KYHIEU;
  result.begin_time := Now;
  dmLuong.MA_NHANVIEN := qryLuongMA_NHANVIEN.Value;
  dmLuong.MA_DONVI := qryLuongMA_DONVI.Value;
  dmLuong.MA_CHUCVU := qryLuongMA_CHUCVU.Value;
  dmLuong.THANG := qryLuongMA_THANG.Value;
  dmLuong.NAM := qryLuongMA_NAM.Value;
  dmLuong.DOT := qryLuongMA_DOT.Value;

  if qryLuong.Eof then
  begin
    result.end_time := Now;
    result.total_time := result.end_time - result.begin_time;
    exit;
  end;
  try
    if not (qryLuong.State in [dsEdit, dsInsert]) then
      qryLuong.Edit;
    qryCongthuc.First;
    while not qryCongthuc.Eof do
    begin
      if qryCongthucCT_HINHTHUC_NHAPLIEU.Value = 'TINHTOAN' then
      begin
        F_Script.Script := qryCongthucCT_BIEUTHUC.Value;
        try
          qryLuong.FieldByName(qryCongthucCT_KYHIEU.AsString).Value :=
            F_Script.AnalyzeScript;
        except
          qryLuong.FieldByName(qryCongthucCT_KYHIEU.AsString).Clear;
          F_ErrorList.Add(qryCongthucCT_KYHIEU.AsString);
        end;
      end;
      qryCongthuc.Next;
    end;
  finally
    if qryLuong.State in [dsEdit] then
      qryLuong.Post;
  end;
  result.end_time := Now;
end;

function TfrmLuong_Bangluong.TinhLuong_Session: TTimeSpend;
//MO TA : thuc hien tinh luong do nhan vien hien tai tren bang luong
begin
  if dmLuong.PA_KYHIEU <> F_PA_KYHIEU then
    dmLuong.PA_KYHIEU := F_PA_KYHIEU;
  dmLuong.MA_NHANVIEN := qryLuongMA_NHANVIEN.Value;
  dmLuong.MA_DONVI := qryLuongMA_DONVI.Value;
  dmLuong.MA_CHUCVU := qryLuongMA_CHUCVU.Value;
  dmLuong.THANG := qryLuongMA_THANG.Value;
  dmLuong.NAM := qryLuongMA_NAM.Value;
  dmLuong.DOT := qryLuongMA_DOT.Value;

  result.begin_time := Now;
  if not qrySessionDetail.Active then
    qrySessionDetail.Open
  else
    qrySessionDetail.Refresh;
  if qrySessionDetail.Eof then
  begin
    result.end_time := Now;
    result.total_time := result.end_time - result.begin_time;
    exit;
  end;
  try
    if not (qryLuong.State in [dsEdit, dsInsert]) then
      qryLuong.Edit;
    qrySessionDetail.First;
    while not qrySessionDetail.Eof do
    begin
      if qrySessionDetailCT_HINHTHUC_NHAPLIEU.Value = 'TINHTOAN' then
      begin
        F_Script.Script := qrySessionDetailCT_BIEUTHUC.Value;
        try
          qryLuong.FieldByName(qrySessionDetailCT_KYHIEU.AsString).Value :=
            F_Script.AnalyzeScript;
        except
          qryLuong.FieldByName(qrySessionDetailCT_KYHIEU.AsString).Clear;
          F_ErrorList.Add(qrySessionDetailCT_KYHIEU.AsString);
        end;
      end;
      qrySessionDetail.Next;
    end;
  finally
    if qryLuong.State in [dsEdit] then
      qryLuong.Post;
{    if frmLuong_Tinhluong.dxUntracked.Checked=false then
    begin
       frmLuong_Tinhluong.bar.StepIt;
       frmLuong_Tinhluong.Repaint;
    end;
}    
  end;
  result.end_time := Now;

end;

procedure TfrmLuong_Bangluong.acTinhluongNhanhExecute(Sender: TObject);
var
  t: TTimeSpend;
begin
  inherited;
  F_ErrorList.Clear;
  Screen.Cursor := crSQLWait;
  if qryLuong.State in [dsEdit] then qryLuong.Post;   
  try
    t := TinhLuong_Canhan;
    ShowMessageUnicode(39);
  except
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmLuong_Bangluong.acTinhluongNhanhUpdate(Sender: TObject);
begin
  inherited;
  acTinhluongnhanh.Enabled :=  not ((qryLuong.IsEmpty) or (qryKhoaDuLieu.RecordCount > 0));
end;

procedure TfrmLuong_Bangluong.acTinhluongUpdate(Sender: TObject);
begin
  inherited;
  acTinhLuong.Enabled := not ((qryLuong.IsEmpty) or (qryKhoaDuLieu.RecordCount>0)) ;
end;

procedure TfrmLuong_Bangluong.tlDeptListDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self, true, sender);
end;

procedure TfrmLuong_Bangluong.acSaochepBangluongExecute(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmLuong_Saochep, frmLuong_Saochep);
end;

procedure TfrmLuong_Bangluong.acChonthemNhanvienExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frmLuong_Themnhanvien) then
  begin
    frmLuong_Themnhanvien := TfrmLuong_Themnhanvien.Create(self, F_PA_KYHIEU,
      F_THANG, F_NAM);
    frmLuong_Themnhanvien.Show;
  end
  else
    frmLuong_Themnhanvien.BringToFront;
end;

procedure TfrmLuong_Bangluong.acGetSelectedEmployeeExecute(
  Sender: TObject);
begin
  inherited;
  if not Assigned(frmLuong_Themnhanvien) then
    exit;
  if frmLuong_Themnhanvien.memData.IsEmpty then
    exit;
  frmLuong_Themnhanvien.memData.First;
  qryLuong.DisableControls;
  while not frmLuong_Themnhanvien.memData.Eof do
  begin
    if not (qryLuong.State in [dsInsert]) then
      qryLuong.Append;
    qryLuong.FieldByName('MA_NHANVIEN').Value :=
      frmLuong_Themnhanvien.memData.FieldByName('EMP_NO').Value;
    qryLuong.FieldByName('FULL_NAME').Value :=
      frmLuong_Themnhanvien.memData.FieldByName('FULL_NAME').Value;
    qryLuong.FieldByName('MA_DONVI').Value :=
      frmLuong_Themnhanvien.memData.FieldByName('DEPT_NO').Value;
    qryLuong.FieldByName('DEPT_NAME').Value :=
      frmLuong_Themnhanvien.memData.FieldByName('DEPT_NAME').Value;
    qryLuong.FieldByName('MA_CHUCVU').Value :=
      frmLuong_Themnhanvien.memData.FieldByName('TITLE_NO').Value;
    qryLuong.FieldByName('TITLE_NAME').Value :=
      frmLuong_Themnhanvien.memData.FieldByName('TITLE_NAME').Value;
    qryLuong.FieldByName('MA_THANG').Value := F_THANG;
    qryLuong.FieldByName('MA_NAM').Value := F_NAM;
    qryLuong.FieldByName('MA_DOT').Value := F_DOT;

    try
      qryLuong.Post;
    except
      qryLuong.Cancel;
    end;
    frmLuong_Themnhanvien.memData.Next;
  end;
  qryLuong.EnableControls;
end;

procedure TfrmLuong_Bangluong.gridLuongDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  if Assigned(frmLuong_Themnhanvien) then
    frmLuong_Themnhanvien.SetFocusForm(self)
end;

procedure TfrmLuong_Bangluong.gridLuongCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: WideString; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
begin
  inherited;
  if AColumn.BandIndex = 0 then
    exit;
  if AColumn.Tag = 1 then // TUDONG_CAPNHAT
    AColor := $00C1FFC1
  else if AColumn.Tag = 2 then // TINH TOAN
    AColor := $00A8D3FF
  else
    AColor := clWhite;
   if dxShowError.Checked then
  begin
    if F_ErrorList.IndexOf(AColumn.FieldName)>=0 then
    begin
      AColor:=clRed;
      AFont.Color:=clWhite;
    end;  
  end;
end;

procedure TfrmLuong_Bangluong.dxShowErrorChange(Sender: TObject);
begin
  inherited;
  gridLuong.Repaint;
end;

procedure TfrmLuong_Bangluong.acDulieuChungExecute(Sender: TObject);
begin
  inherited;
  if Assigned(frmLuong_TienichNhaplieu) then
     frmLuong_TienichNhaplieu.BringToFront
  else
  begin
    frmLuong_TienichNhaplieu:=TfrmLuong_TienichNhaplieu.Create(self);
    frmLuong_TienichNhaplieu.Show;
  end;

end;

procedure TfrmLuong_Bangluong.ApplyGridView;
var reg :TRegistry;
    i:integer;
    bool_value:boolean;
    text_value:string;
begin
  reg:=TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey(REGISTRY_ROOT + '\'+sysConfig.User+'\Bangluong\'+F_PA_KYHIEU, true);
  for i:=1 to gridLuong.Bands.Count-1 do
  begin
    try
      bool_value:= reg.ReadBool('Band'+IntToStr(i));
      gridLuong.Bands[i].Visible:=bool_value;
    except
    end
  end;
  for i:=0 to gridLuong.ColumnCount-1 do
  begin
    if gridLuong.Columns[i].BandIndex=0 then Continue;
    try
      bool_value:= reg.ReadBool(gridLuong.Columns[i].Name);
      gridLuong.Columns[i].Visible:=bool_value;
    except
    end
  end;
  try
    text_value:=reg.ReadString('TemplateFileName');
    F_FILE_NAME:=text_value;
    text_value:=reg.ReadString('TemplateFileTitle');
    dxMauin.Text:=UTF8Decode(text_value);
    F_FILE_TIEUDE:=UTF8Decode(text_value);
  except
    F_FILE_NAME:='';
    F_FILE_TIEUDE:='';
    dxMauin.Text:='';

  end;
  reg.CloseKey;
  reg.Free;
end;
procedure TfrmLuong_Bangluong.SaveGridView;
var reg :TRegistry;
    i:integer;
begin
  reg:=TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey(REGISTRY_ROOT + '\'+sysConfig.User+'\Bangluong\'+F_PA_KYHIEU, true);
  for i:=1 to gridLuong.Bands.Count-1 do
  begin
    try
      reg.WriteBool('Band'+IntToStr(i),gridLuong.Bands[i].Visible);
    except
    end
  end;
  for i:=0 to gridLuong.ColumnCount-1 do
  begin
    if gridLuong.Columns[i].BandIndex=0 then Continue;
    try
      reg.WriteBool(gridLuong.Columns[i].Name,gridLuong.Columns[i].Visible);
    except
    end
  end;
  reg.WriteString('TemplateFileName',F_FILE_NAME);
  reg.WriteString('TemplateFileTitle',UTF8Encode(F_FILE_TIEUDE));
  reg.CloseKey;
  reg.Free;
end;
procedure TfrmLuong_Bangluong.acTuychonUpdate(Sender: TObject);
begin
  inherited;
  acTuychon.Enabled:=(F_PA_KYHIEU<>'')
end;

procedure TfrmLuong_Bangluong.acTuychonExecute(Sender: TObject);
begin
  inherited;
  if Assigned(frmLuong_Tuychon) then
   frmLuong_Tuychon.BringToFront
  else
  begin
    frmLuong_Tuychon:=TfrmLuong_Tuychon.Create(self);
    frmLuong_Tuychon.Show;
  end;
end;

procedure TfrmLuong_Bangluong.acDanhmucMauinExecute(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmLuong_Mauin,frmLuong_Mauin);
  qryMauin.Refresh;
end;

procedure TfrmLuong_Bangluong.dxMauinInitPopup(Sender: TObject);
begin
  inherited;
  if not qryMauin.Active then
    qryMauin.Open;
    InitPopupControl('dxlcMauin',self,sender,2);
end;

procedure TfrmLuong_Bangluong.dxMauinCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text:=qryMauinTIEUDE_MAUIN.Value;
    F_FILE_NAME:=qryMauinFILE_NAME.Value;
    F_FILE_TIEUDE:=qryMauinTIEUDE_MAUIN.Value;
  end;
end;

procedure TfrmLuong_Bangluong.gridMauinDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self,true,sender);
end;

procedure TfrmLuong_Bangluong.acXemMauinExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  DefOnBeforePrint(true, qryLuong);
  rpLuong.AllowPrintToFile := True;
  rpLuong.DeviceType := dtScreen;
  rpLuong.Print;
end;

function TfrmLuong_Bangluong.PrepareReport: boolean;
var
  pathName, pathDirectory: string;
begin
  try
    pathDirectory := ExtractFilePath(Application.ExeName) + 'Reports\WageReport';
    case sysConfig.Language of
      0, 1:
        pathName := pathDirectory + '\Vn\' + F_FILE_NAME;
      2:
        pathName := pathDirectory + '\Eng\' + F_FILE_NAME;
    end;

    if (FileExists(pathName)) then
    begin
      LoadDisplayData;
      rpLuong.Template.FileName := pathName;
      rpLuong.Template.Load;
    end
    else
    begin
      ShowMessageUnicode(24);
      Result := false;
      exit;
    end;
  except
    result := false;
    exit;
  end;
  result := true;
end;

procedure TfrmLuong_Bangluong.DefOnBeforePrint(isprinted: boolean; qryReport: TIBOQuery);
var
  i: integer;
  compReport: TComponent;
  CompCap: WideString;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    compReport := Components[i];
    if (compReport is TppDBImage) then
    begin
      if (dmMain.qryOrgInfoIMG_TYPE.AsString = 'TJPEGImage') then
        (compReport as TppDBImage).GraphicType := 'JPEG'
      else
        if (dmMain.qryOrgInfoIMG_TYPE.AsString = 'TBitmap') then
        (compReport as TppDBImage).GraphicType := 'Bitmap';
      Continue;
    end
    else
        if (compReport is TppDBText) then
        begin
          //Doc VND bang tieng viet
          if UpperCase(TppDBText(compReport).DisplayFormat) = 'VND_INWORDS_VIETNAMESE' then
            TppDBText(compReport).OnFormat := dmMain.OnppReadVNDByVietnamese
          //Doc VND bang tieng anh
          else if UpperCase(TppDBText(compReport).DisplayFormat) = 'VND_INWORDS_ENGLISH' then
            TppDBText(compReport).OnFormat := dmMain.OnppReadVNDByEnglish
          //Doc USD bang tieng anh
          else if UpperCase(TppDBText(compReport).DisplayFormat) = 'USD_INWORDS_ENGLISH' then
            TppDBText(compReport).OnFormat := dmMain.OnppReadUSDByEnglish
          //Doc USD bang tieng viet
          else if UpperCase(TppDBText(compReport).DisplayFormat) = 'USD_INWORDS_VIETNAMESE' then
            TppDBText(compReport).OnFormat := dmMain.OnppReadUSDByVietnamese;
        end;
    

    if not (compReport is TppLabel) then
      Continue;
    if (compReport as TppLabel).Height < 0.1 then
      (compReport as TppLabel).Height := 0.2;
    if isprinted = false then continue;
    CompCap := LowerCase(UTF8Encode((compReport as TppLabel).Caption));
    if (CompCap = 'lbl_param_month') then
      TppLabel(compReport).Caption := memBangluongTHANG.AsString
    else
      if (CompCap = 'lbl_param_year') then
      TppLabel(compReport).Caption := memBangluongNAM.AsString
    else
      if (CompCap = 'lbl_param_period') then
      TppLabel(compReport).Caption := memBangluongDOT.AsString
    else
      if (CompCap = 'lbl_param_dept_name') then
      TppLabel(compReport).Caption := F_DEPT_NAME
    else
      if (CompCap = 'lbl_param_dept_no') then
      TppLabel(compReport).Caption := F_DEPT_NO
    else
      if (CompCap = 'lbl_current_date') then
      TppLabel(compReport).Caption := DateToStr(Today)
    else
      if (CompCap = 'lbl_current_day') then
      TppLabel(compReport).Caption := IntToStr(DayOf(Today))
    else
      if (CompCap = 'lbl_current_month') then
      TppLabel(compReport).Caption := IntToStr(MonthOf(Today))
    else
      if (CompCap = 'lbl_current_year') then
      TppLabel(compReport).Caption := IntToStr(DayOf(Today))
  end;
end;

procedure TfrmLuong_Bangluong.acThietkeMauinExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  DefOnBeforePrint(false, qryLuong);
  dsnLuong.ShowModal;
  rpLuong.PrintToDevices;
end;

procedure TfrmLuong_Bangluong.acInbangluongExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  DefOnBeforePrint(true, qryLuong);
  rpLuong.AllowPrintToFile := True;
  rpLuong.DeviceType := dtPrinter;
  rpLuong.Print;
end;

procedure TfrmLuong_Bangluong.CheckWagePlanLock();
begin
  inherited;
  if qryKhoaDuLieu.Active then
    qryKhoaDuLieu.Close;
  qryKhoaDuLieu.Open;
  if qryKhoaDuLieu.RecordCount > 0 then
  begin
    acKhoitaoBangluong.Enabled := false;
    acSaochepBangluong.Enabled := false;
    acChonthemNhanvien.Enabled := false;
    acDulieuDonvi.Enabled := false;
    acDulieuChung.Enabled := false;
    acDulieuVitri.Enabled := false;
    acDulieuChucvu.Enabled := false;
    acTinhluong.Enabled := false;
    acTinhluongNhanh.Enabled := false;
    acHieuchinhTTBangluong.Enabled := false;
    acXoabangluong.Enabled := false;
    dxChophepHieuchinh.Checked := false;
    dxChophepHieuchinh.ReadOnly := true;
    frameToolbar1.dxlctrlDelete.Visible := false;
  end
  else
  begin
    acKhoitaoBangluong.Enabled := true;
    acSaochepBangluong.Enabled := true;
    acChonthemNhanvien.Enabled := true;
    acDulieuDonvi.Enabled := true;
    acDulieuChung.Enabled := true;
    acDulieuVitri.Enabled := true;
    acDulieuChucvu.Enabled := true;
    acTinhluong.Enabled := true;
    acTinhluongNhanh.Enabled := true;
    acHieuchinhTTBangluong.Enabled := true;
    acXoabangluong.Enabled := true;
    dxChophepHieuchinh.ReadOnly := false;
    frameToolbar1.dxlctrlDelete.Visible := true;
  end;
end;

procedure TfrmLuong_Bangluong.LoadDisplayData();
  procedure LoadNode (cur_node:TdxTreeListNode);
  var i:integer;
  begin
    if cur_node.HasChildren then
    begin
      for i:=0 to cur_node.Count-1 do
        LoadNode(cur_node.Items[i]);
    end
    else
    begin
      if not (memDisplayReport.State in [dsInsert,dsEdit]) then
        memDisplayReport.Append;
      for i:=0 to gridLuong.ColumnCount-1 do
      begin
        if (memDisplayReport.FieldByName(gridLuong.Columns[i].FieldName).DataType in [ftString,ftWideString]) then
          memDisplayReport.FieldByName(gridLuong.Columns[i].FieldName).Value:=cur_node.Values[gridLuong.Columns[i].Index]
        else if (memDisplayReport.FieldByName(gridLuong.Columns[i].FieldName).DataType in [ftDate]) then
        begin
          if cur_node.Values[gridLuong.Columns[i].Index] <> null then
            memDisplayReport.FieldByName(gridLuong.Columns[i].FieldName).Value:= StrToDateDef(cur_node.Values[gridLuong.Columns[i].Index],0);
        end
        else if (memDisplayReport.FieldByName(gridLuong.Columns[i].FieldName).DataType in [ftInteger]) then
        begin
          if cur_node.Values[gridLuong.Columns[i].Index] <> null then
            memDisplayReport.FieldByName(gridLuong.Columns[i].FieldName).Value:= StrToIntDef(cur_node.Values[gridLuong.Columns[i].Index],0);
        end
        else if (memDisplayReport.FieldByName(gridLuong.Columns[i].FieldName).DataType in [ftFloat]) then
        begin
          if cur_node.Values[gridLuong.Columns[i].Index] <> null then
            memDisplayReport.FieldByName(gridLuong.Columns[i].FieldName).Value:= StrToFloatDef(cur_node.Values[gridLuong.Columns[i].Index],0);
//          else
//            memDisplayReport.FieldByName(gridLuong.Columns[i].FieldName).Value:=cur_node.Values[gridLuong.Columns[i].Index];
        end;
      end;
      memDisplayReport.Post;
    end;
  end;
var i,j:integer;
  node: TdxTreeListNode;
begin
  memDisplayReport.DisableControls;
  if memDisplayReport.Active then memDisplayReport.Close;
  memDisplayReport.Open;

  for i := 0 to gridLuong.Count - 1 do
  begin
    node := gridLuong.Items[i];
    if node.IsVisible then
      LoadNode(node);
  end;
  memDisplayReport.EnableControls;

  if qryCTGiamTru.Active then qryCTGiamTru.Close;
  qryCTGiamTru.Open;
  ppCTGiamTru.DataSource := dsCTGiamTru;
//  qryCTGiamTru.ParamByName('MA_THANG').Value := memDisplayReport.FieldByName('MA_THANG').Value;
//  qryCTGiamTru.ParamByName('MA_NAM').Value := memDisplayReport.FieldByName('MA_NAM').Value;
//  qryCTGiamTru.ParamByName('MA_NHANVIEN').Value := memDisplayReport.FieldByName('MA_NHANVIEN').Value;

end;

procedure TfrmLuong_Bangluong.acKhoitaoBangluongUpdate(Sender: TObject);
begin
  inherited;
  acKhoitaoBangluong.Enabled := (qryluong.RecordCount = 0);  
end;

procedure TfrmLuong_Bangluong.acTongHopDonViExecute(Sender: TObject);
var
  SQL_String : String;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memTongHopDonVi.Active then memTongHopDonVi.Close;
  memTongHopDonVi.Open;
  memTongHopDonVi.DisableControls;

  if qryTongHop.Active then qryTongHop.Close;
  qryTongHop.SQL.Clear;
  SQL_String := ' SELECT MA_DONVI,DEPT_NAME, SUM(' + GetLookupKeyField(dxCotLuong) + ') TOTAL ' +
                ' FROM WB_'  + F_PA_KYHIEU +
                ' JOIN hr_department on WB_' + F_PA_KYHIEU + '.MA_DONVI = HR_DEPARTMENT.DEPT_NO ' +
                ' WHERE MA_THANG = :MA_THANG ' +
                ' AND MA_NAM = :MA_NAM ' +
                ' AND MA_DOT = :MA_DOT ' +
                ' GROUP BY MA_DONVI,DEPT_NAME ' +
                ' ORDER BY DEPT_NAME';
  qryTongHop.SQL.Text := SQL_String;
  qryTongHop.ParamByName('MA_THANG').Value := F_THANG;
  qryTongHop.ParamByName('MA_NAM').Value := F_NAM;
  qryTongHop.ParamByName('MA_DOT').Value := F_DOT;
  qryTongHop.Open;
  if not qryTongHop.IsEmpty then
  begin
    qryTongHop.First;
    while not qryTongHop.Eof do
    begin

      memTongHopDonVi.Append;
      memTongHopDonViDEPT_NO.Value := qryTongHop.FieldByName('MA_DONVI').Value;
      memTongHopDonViDEPT_NAME.Value := qryTongHop.FieldByName('DEPT_NAME').Value;
      if qryTongHop.FieldByName('TOTAL').IsNull then
        memTongHopDonViTOTAL.Value := 0
      else
        memTongHopDonViTOTAL.Value := qryTongHop.FieldByName('TOTAL').Value;
      memTongHopDonVi.Post;  

      qryTongHop.Next;  
    end;
  end;
  qryTongHop.Close;  
  memTongHopDonVi.EnableControls;

  if Assigned(cur_chart) then
    cur_chart.Visible := False;

  tcGeneralReport.View3D  := true;
  tcGeneralReport.View3DOptions.Rotation := 332;
  tcGeneralReport.View3DOptions.Elevation  := 319;
  tcGeneralReport.View3DOptions.HorizOffset := -67;
  tcGeneralReport.View3DOptions.VertOffset := 16;
  tcGeneralReport.View3DOptions.Perspective := 0;
  tcGeneralReport.View3DOptions.Zoom := 85;


  if F_CHART_TYPE = 'LINE' then
  begin
    cur_chart := TCustomSeries(sLine);
  end
  else
    if F_CHART_TYPE = 'BAR' then
    begin
      cur_chart := TCustomSeries(sBar);
    end
    else
      if F_CHART_TYPE = 'FLINE' then
      begin
        cur_chart := TCustomSeries(sFLine);
      end
      else
        if F_CHART_TYPE = 'HLINE' then
        begin
          cur_chart := TCustomSeries(sHLine);
        end
        else
          if F_CHART_TYPE = 'HBAR' then
          begin
            cur_chart := TCustomSeries(sHBar);
          end
          else
            if F_CHART_TYPE = 'AREA' then
            begin
              cur_chart := TCustomSeries(sArea);
            end
            else
              if F_CHART_TYPE = 'HAREA' then
              begin
                cur_chart := TCustomSeries(sHArea);
              end
              else
                if F_CHART_TYPE = 'POINT' then
                begin
                  cur_chart := TCustomSeries(sPoint);
                end
                else
                  if F_CHART_TYPE = 'PIE' then
                  begin
                    cur_chart := TCustomSeries(sPie);
                    tcGeneralReport.View3DOptions.Rotation := 360;
                    tcGeneralReport.View3DOptions.Elevation  := 299;
                  end;

  cur_chart.Visible := True;
  tcGeneralReport.RefreshData;
  Screen.Cursor := crDefault;
end;

procedure TfrmLuong_Bangluong.acTongHopDonViUpdate(Sender: TObject);
begin
  inherited;
  acTongHopDonVi.Enabled := (dxCotLuong.Text <> '') and (F_PA_KYHIEU <>'' );
end;

procedure TfrmLuong_Bangluong.dxDangBieuDoCloseUp(Sender: TObject;
  var Value: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
    F_CHART_TYPE := value;
end;

procedure TfrmLuong_Bangluong.acTongHopThoiGianExecute(Sender: TObject);
var
  SQL_String : String;
  tu_thangnam, den_thangnam, nam, thang : integer;
  thoi_diem: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memTongHopThoiGian.Active then memTongHopThoiGian.Close;
  memTongHopThoiGian.Open;
  memTongHopThoiGian.DisableControls;

  tu_thangnam := (dxTuThang.IntValue - 1 + 12 * dxTuNam.IntValue)*10;
  den_thangnam := (F_THANG - 1 + 12 * F_NAM)*10;
  if (tu_thangnam > den_thangnam) then
  begin
    Screen.Cursor := crDefault;
    exit;
  end;

  thoi_diem := tu_thangnam;
  while thoi_diem <= den_thangnam do
  begin
    nam := Floor((thoi_diem / 10) / 12);
    thang := Floor((thoi_diem / 10)) - (12 * nam) + 1;

    if qryTongHop.Active then qryTongHop.Close;
    qryTongHop.SQL.Clear;
    SQL_String := ' SELECT SUM(' + GetLookupKeyField(dxCotLuong2) + ') TOTAL ' +
                  ' FROM WB_' + F_PA_KYHIEU +
                  ' WHERE MA_THANG = :MA_THANG ' +
                  ' AND MA_NAM = :MA_NAM ' +
                  ' AND MA_DOT between 1 and :MA_DOT ';
    qryTongHop.SQL.Text := SQL_String;
    qryTongHop.ParamByName('MA_THANG').Value := THANG;
    qryTongHop.ParamByName('MA_NAM').Value := NAM;
    IF ((THANG = F_THANG) and (NAM = F_NAM)) then
      qryTongHop.ParamByName('MA_DOT').Value := F_DOT
    ELSE
      qryTongHop.ParamByName('MA_DOT').Value := 9 ;
    qryTongHop.Open;

    memTongHopThoiGian.Append;
    memTongHopThoiGianKEY_FIELD.Value :=  thoi_diem;
    memTongHopThoiGianKEY_VALUE.Value := 'T' + IntToStr(thang) + '/' + IntToStr(nam);
    if qryTongHop.FieldByName('TOTAL').IsNull then
      memTongHopThoiGianTOTAL.Value := 0
    else
      memTongHopThoiGianTOTAL.Value := qryTongHop.FieldByName('TOTAL').Value;
    memTongHopThoiGian.Post;

    thoi_diem := thoi_diem + 10;
  end;
  memTongHopThoiGian.EnableControls;

  if Assigned(cur_chart1) then
    cur_chart1.Visible := False;

  tcGeneralReport1.View3D  := true;
  tcGeneralReport1.View3DOptions.Rotation := 332;
  tcGeneralReport1.View3DOptions.Elevation  := 319;
  tcGeneralReport1.View3DOptions.HorizOffset := -67;
  tcGeneralReport1.View3DOptions.VertOffset := 16;
  tcGeneralReport1.View3DOptions.Perspective := 0;
  tcGeneralReport1.View3DOptions.Zoom := 85;


  if F_CHART_TYPE1 = 'LINE' then
  begin
    cur_chart1 := TCustomSeries(LineSeries1);
  end
  else
    if F_CHART_TYPE1 = 'BAR' then
    begin
      cur_chart1 := TCustomSeries(BarSeries1);
    end
    else
      if F_CHART_TYPE1 = 'FLINE' then
      begin
        cur_chart1 := TCustomSeries(FastLineSeries1);
      end
      else
        if F_CHART_TYPE1 = 'HLINE' then
        begin
          cur_chart1 := TCustomSeries(HorizLineSeries1);
        end
        else
          if F_CHART_TYPE1 = 'HBAR' then
          begin
            cur_chart1 := TCustomSeries(HorizBarSeries1);
          end
          else
            if F_CHART_TYPE1 = 'AREA' then
            begin
              cur_chart1 := TCustomSeries(AreaSeries1);
            end
            else
              if F_CHART_TYPE1 = 'HAREA' then
              begin
                cur_chart1 := TCustomSeries(HorizAreaSeries1);
              end
              else
                if F_CHART_TYPE1 = 'POINT' then
                begin
                  cur_chart1 := TCustomSeries(PointSeries1);
                end
                else
                  if F_CHART_TYPE1 = 'PIE' then
                  begin
                    cur_chart1 := TCustomSeries(PieSeries1);
                    tcGeneralReport1.View3DOptions.Rotation := 360;
                    tcGeneralReport1.View3DOptions.Elevation  := 299;
                  end;

  cur_chart1.Visible := True;
  tcGeneralReport1.RefreshData;

  Screen.Cursor := crDefault;
end;

procedure TfrmLuong_Bangluong.acTongHopThoiGianUpdate(Sender: TObject);
begin
  inherited;
  acTongHopThoiGian.Enabled := (dxCotLuong2.Text <> '') and (F_PA_KYHIEU <>'' );
end;

procedure TfrmLuong_Bangluong.dxDangBieuDo2CloseUp(Sender: TObject;
  var Value: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
    F_CHART_TYPE1 := value;
end;

procedure TfrmLuong_Bangluong.acTHDVi_TGianExecute(Sender: TObject);
var
  SQL_String : String;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memTHDVi_TGian.Active then memTHDVi_TGian.Close;
  memTHDVi_TGian.Open;
  memTHDVi_TGian.DisableControls;

  if qryTongHop.Active then qryTongHop.Close;
  qryTongHop.SQL.Clear;
  SQL_String := ' SELECT MA_DONVI,DEPT_NAME, SUM(' + GetLookupKeyField(dxCotLuong3) + ') TOTAL ' +
                ' FROM WB_'  + F_PA_KYHIEU +
                ' JOIN hr_department on WB_' + F_PA_KYHIEU + '.MA_DONVI = HR_DEPARTMENT.DEPT_NO ' +
                ' WHERE ((MA_THANG - 1 + 12 * MA_NAM) * 10 + MA_DOT)  BETWEEN  ' +
                ' ((:TU_THANG - 1 + 12 * :TU_NAM) * 10 + 1) ' +
                ' AND ((:DEN_THANG - 1 + 12 * :DEN_NAM) * 10 + :MA_DOT) ' +
                ' GROUP BY MA_DONVI,DEPT_NAME ' +
                ' ORDER BY DEPT_NAME';
  qryTongHop.SQL.Text := SQL_String;
  qryTongHop.ParamByName('TU_THANG').Value := dxFromMonth.IntValue ;
  qryTongHop.ParamByName('TU_NAM').Value := dxFromYear.IntValue ;
  qryTongHop.ParamByName('DEN_THANG').Value := F_THANG;
  qryTongHop.ParamByName('DEN_NAM').Value := F_NAM;
  qryTongHop.ParamByName('MA_DOT').Value := F_DOT ;
  qryTongHop.Open;
  if not qryTongHop.IsEmpty then
  begin
    qryTongHop.First;
    while not qryTongHop.Eof do
    begin

      memTHDVi_TGian.Append;
      memTHDVi_TGianDEPT_NO.Value := qryTongHop.FieldByName('MA_DONVI').Value;
      memTHDVi_TGianDEPT_NAME.Value := qryTongHop.FieldByName('DEPT_NAME').Value;
      if qryTongHop.FieldByName('TOTAL').IsNull then
        memTHDVi_TGianTOTAL.Value := 0
      else
        memTHDVi_TGianTOTAL.Value := qryTongHop.FieldByName('TOTAL').Value;
      memTHDVi_TGian.Post;  

      qryTongHop.Next;  
    end;
  end;
  qryTongHop.Close;  
  memTHDVi_TGian.EnableControls;

  if Assigned(cur_chart2) then
    cur_chart2.Visible := False;

  tcGeneralReport2.View3D  := true;
  tcGeneralReport2.View3DOptions.Rotation := 332;
  tcGeneralReport2.View3DOptions.Elevation  := 319;
  tcGeneralReport2.View3DOptions.HorizOffset := -67;
  tcGeneralReport2.View3DOptions.VertOffset := 16;
  tcGeneralReport2.View3DOptions.Perspective := 0;
  tcGeneralReport2.View3DOptions.Zoom := 85;


  if F_CHART_TYPE2 = 'LINE' then
  begin
    cur_chart2 := TCustomSeries(LineSeries2);
  end
  else
    if F_CHART_TYPE2 = 'BAR' then
    begin
      cur_chart2 := TCustomSeries(BarSeries2);
    end
    else
      if F_CHART_TYPE2 = 'FLINE' then
      begin
        cur_chart2 := TCustomSeries(FastLineSeries2);
      end
      else
        if F_CHART_TYPE2 = 'HLINE' then
        begin
          cur_chart2 := TCustomSeries(HorizLineSeries2);
        end
        else
          if F_CHART_TYPE2 = 'HBAR' then
          begin
            cur_chart2 := TCustomSeries(HorizBarSeries2);
          end
          else
            if F_CHART_TYPE2 = 'AREA' then
            begin
              cur_chart2 := TCustomSeries(AreaSeries2);
            end
            else
              if F_CHART_TYPE2 = 'HAREA' then
              begin
                cur_chart2 := TCustomSeries(HorizAreaSeries2);
              end
              else
                if F_CHART_TYPE2 = 'POINT' then
                begin
                  cur_chart2 := TCustomSeries(PointSeries2);
                end
                else
                  if F_CHART_TYPE2 = 'PIE' then
                  begin
                    cur_chart2 := TCustomSeries(PieSeries2);
                    tcGeneralReport2.View3DOptions.Rotation := 360;
                    tcGeneralReport2.View3DOptions.Elevation  := 299;
                  end;

  cur_chart2.Visible := True;
  tcGeneralReport2.RefreshData;
  Screen.Cursor := crDefault;
end;

procedure TfrmLuong_Bangluong.dxDangBieuDo3CloseUp(Sender: TObject;
  var Value: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
    F_CHART_TYPE2 := value;
end;

procedure TfrmLuong_Bangluong.acTHDVi_TGianUpdate(Sender: TObject);
begin
  inherited;
  acTHDVi_TGian.Enabled := (dxCotLuong3.Text <> '') and (F_PA_KYHIEU <>'' );
end;

procedure TfrmLuong_Bangluong.acDuLieuNhanVienExecute(Sender: TObject);
begin
  inherited;
  frmLuong_NhanVien := TfrmLuong_NhanVien.Create(self, F_PA_MA, F_PA_KYHIEU,
    F_DOT, F_THANG, F_NAM);
  try
    frmLuong_NhanVien.ShowModal;
  finally
    frmLuong_NhanVien.Free;
    frmLuong_NhanVien := nil;
  end;
end;

end.

