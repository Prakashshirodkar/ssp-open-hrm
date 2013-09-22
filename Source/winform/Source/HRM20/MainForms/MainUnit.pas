unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TntForms, ActnList, dxBar, ImgList, StdActns, dxBarExtItems,
  Registry, DateUtils, IBODataSet, dxDBGrid, ElXPThemedControl, ElStatBar,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, ElStrUtils, ElCaption, ElBtnCtl,
  ElPopBtn, ExtCtrls, DB, GIFImage, JPEG, dxfProgressBar, ElHTMLHint,
  MainDM,
  StdCtrls, ElCLabel, ElLabel, IB_Components, IB_Profiler, IB_Monitor,
  ElBiProgr, ComCtrls, dxDBELib, ShellAPI, htmlhlp,
  dxTL, dxDBCtrl, dxDBTL,sspSendMail,ExtActns;

const
  FILTER_KEY = REGISTRY_ROOT;
  FOOTER_KEY = REGISTRY_ROOT;
  GRIDLINE_KEY = REGISTRY_ROOT;
type
  TfrmMain = class(TForm)
    ImageListMenu: TImageList;
    ImageListToolbar: TImageList;
    ActionList1: TActionList;
    acUserManager: TAction;
    acExit: TAction;
    acChangePass: TAction;
    acInterfaceOption: TAction;
    acReports: TAction;
    acSearch: TAction;
    acDataOption: TAction;
    acHelp: TAction;
    acUserManual: TAction;
    acAbout: TAction;
    acWindowClose: TWindowClose;
    acWindowCascade: TWindowCascade;
    acWindowTileHorizontal: TWindowTileHorizontal;
    acWindowTileVertical: TWindowTileVertical;
    acWindowMinimizeAll: TWindowMinimizeAll;
    acWindowArrange: TWindowArrange;
    BarManager: TdxBarManager;
    dxQuanlynguoidung: TdxBarButton;
    dxDoimatkhau: TdxBarButton;
    dxThoat: TdxBarButton;
    dxMenuSystem: TdxBarSubItem;
    dxBarToolMenu: TdxBarSubItem;
    dxTuychonGiaodien: TdxBarButton;
    dxBaocao: TdxBarButton;
    dxTimkiem: TdxBarButton;
    dxThongtinHethong: TdxBarButton;
    dxBarWindowsMenu: TdxBarSubItem;
    dxBarHelpMenu: TdxBarSubItem;
    dxBarWindowClose: TdxBarButton;
    dxBarWindowCascade: TdxBarButton;
    dxBarWindowTileHorizontal: TdxBarButton;
    dxBarWindowTileVertical: TdxBarButton;
    dxBarWindowMinizeAll: TdxBarButton;
    dxBarWindowArrange: TdxBarButton;
    dxBarHelp: TdxBarButton;
    dxBarUserManual: TdxBarButton;
    dxBarInfoOnline: TdxBarButton;
    dxBarAbout: TdxBarButton;
    dxBarLargeSearch: TdxBarLargeButton;
    dxBarLargeReports: TdxBarLargeButton;
    dxBarLargeHelp: TdxBarLargeButton;
    bbListwindows: TdxBarListItem;
    StatusBars: TElStatusBar;
    ElFormCaption1: TElFormCaption;
    AutoWPointTimer: TTimer;
    ElHTMLHint1: TElHTMLHint;
    acBackup: TAction;
    acRestore: TAction;
    dxSaoluuDulieu: TdxBarButton;
    dxPhuchoidulieu: TdxBarButton;
    dxNhatky: TdxBarButton;
    acNhatky: TAction;
    qryUserList: TIBOQuery;
    qryUserListRESULT: TIntegerField;
    acScanMain: TAction;
    dxTuychonNgonngu: TdxBarSubItem;
    dxTiengViet: TdxBarButton;
    dxTiengAnh: TdxBarButton;
    dxDinhnghiaNgonngu: TdxBarSubItem;
    dxManhinhPopup: TdxBarButton;
    acScanPopup: TAction;
    acMsgList: TAction;
    dxCauthongbao: TdxBarButton;
    acTranslateCaption: TAction;
    dxBiendichNgonngu: TdxBarButton;
    dxMacdinh: TdxBarButton;
    dxMenuList: TdxBarSubItem;
    dxManhinhChinh: TdxBarButton;
    dxMenuHRManager: TdxBarSubItem;
    dxNhanvien: TdxBarButton;
    acNhanvien: TAction;
    dxLoaiTochuc: TdxBarButton;
    acLoaiTochuc: TAction;
    acDanhsachTochuc: TAction;
    dxDanhsachTochuc: TdxBarButton;
    dxLoaiCongviec: TdxBarButton;
    acLoaiCongviec: TAction;
    acDanhsachChucdanh: TAction;
    dxDanhsachChucdanh: TdxBarButton;
    dxVitriLamviec: TdxBarButton;
    acVitriLamviec: TAction;
    dxDanhmucChoCanhan: TdxBarButton;
    dxNhansu: TdxBarLargeButton;
    acNhansu: TAction;
    acQuanlyQuyetdinh: TAction;
    dxQuanlyQuyetdinh: TdxBarButton;
    dxQuyetdinh: TdxBarLargeButton;
    acSodoTochuc: TAction;
    dxTochuc: TdxBarLargeButton;
    acQuanlyHopdong: TAction;
    dxQuanlyHopdong: TdxBarButton;
    dxHopdong: TdxBarLargeButton;
    acThongtinDanhmuc: TAction;
    dxBarSubItem3: TdxBarSubItem;
    dxLichlamviecChuan: TdxBarButton;
    acLichLamviecChuan: TAction;
    dxChamcong: TdxBarButton;
    acChamcong: TAction;
    acDocmayChamcong: TAction;
    dxDocmayChamcong: TdxBarButton;
    dxQuanlyChamcong: TdxBarLargeButton;
    dxpgBar: TdxfProgressBar;
    acQuanlyLuong: TAction;
    dxQuanlyLuong: TdxBarButton;
    dxLuong: TdxBarLargeButton;
    dxLuongCBNN: TdxBarButton;
    acLuongCBNN: TAction;
    acHesoQD_HD: TAction;
    dxHesoHD_QD: TdxBarButton;
    dxDanhgiaNV: TdxBarButton;
    acDanhgiaNV: TAction;
    acTieuchiDanhgia: TAction;
    acHethongDiemDG: TAction;
    dxTieuchiDanhgia: TdxBarButton;
    dxHethongThangdiemDG: TdxBarButton;
    dxChedoChinhsach: TdxBarSubItem;
    dxQuanlyTutuat: TdxBarButton;
    acQuanlyTuyendung: TAction;
    dxQuanlyTuyendung: TdxBarButton;
    acQuanlyDaotao: TAction;
    dxQuanlyDaotao: TdxBarButton;
    dxQuanlyBHXH: TdxBarButton;
    acQuanlyBHXH: TAction;
    dxBHXH: TdxBarLargeButton;
    acCauhinhBHXH: TAction;
    dxCauhinhBHXH: TdxBarButton;
    acQuanlyCongtac: TAction;
    dxQuanlyCongtac: TdxBarButton;
    acQuanlyTutuat: TAction;
    acPhantichThongke: TAction;
    dxPhantichThongke: TdxBarButton;
    bsiQuanLyPhepThamNien: TdxBarSubItem;
    bbCauHinhPhepThamNien: TdxBarButton;
    bbPhepThamNien: TdxBarButton;
    dxblbPhepThamNien: TdxBarLargeButton;
    acHieuchinhDulieu: TAction;
    acHienthiDulieu: TAction;
    dxHieuchinhDulieu: TdxBarButton;
    dxTuychonHIenthi: TdxBarButton;
    dxBarButton2: TdxBarButton;
    acDangKyCongViec: TAction;
    dxBarSubItem1: TdxBarSubItem;
    acQuanlyPhepThamnien: TAction;
    acCauhinhPhepThamnien: TAction;
    acAlertConfig: TAction;
    dxAlertConfig: TdxBarButton;
    acCanhbaoNguoidung: TAction;
    dxXemcanhbao: TdxBarButton;
    acTudongCanhbao: TAction;
    dxBarSubItem2: TdxBarSubItem;
    dxCauhinhTuyendung: TdxBarButton;
    acCauhinhTuyendung: TAction;
    dxBarSubItem4: TdxBarSubItem;
    dxCauhinhDaotao: TdxBarButton;
    acCauhinhDaotao: TAction;
    acBangtinh: TAction;
    dxBangtinh: TdxBarButton;
    dxCongcuLaodong: TdxBarSubItem;
    dxDinhnghiaCongcu: TdxBarButton;
    acDinhnghiaCongcu: TAction;
    acDanhmucCongcu: TAction;
    dxDanhmucCongcu: TdxBarButton;
    acQuanlyCapphatCongcu: TAction;
    dxQuanlyCaphatCongcu: TdxBarButton;
    dxSoLaodong: TdxBarButton;
    acQuanlySoLD: TAction;
    dxGHM_Search: TdxBarButton;
    dxGHM_HideColumn: TdxBarButton;
    dxGHM_Unsorted: TdxBarButton;
    dxGHM_SelectColumn: TdxBarButton;
    dxGHM_Filter: TdxBarButton;
    dxGHM_Group: TdxBarButton;
    dxGHM_View: TdxBarSubItem;
    dxGHM_DisplayFooter: TdxBarButton;
    dxGHM_RowAutoHeight: TdxBarButton;
    dxGHM_AutoWidth: TdxBarButton;
    dxGHM_ResizeColumn: TdxBarButton;
    dxGHM_ResizeAllColumn: TdxBarButton;
    dxGridHeaderMenu: TdxBarPopupMenu;
    dxGHM_Align: TdxBarSubItem;
    dxGHM_LeftAlign: TdxBarButton;
    dxGHM_RightAlign: TdxBarButton;
    dxGHM_CenterAlign: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxGHM_ImportFromExcel: TdxBarButton;
    dxGHM_ImportUtils: TdxBarButton;
    dxGHM_ExportData: TdxBarSubItem;
    dxGHM_ExportToExcel: TdxBarButton;
    dxGHM_ExportToHTML: TdxBarButton;
    dxGHM_ExportToXML: TdxBarButton;
    dxGHM_ExportToMail: TdxBarButton;
    dxGHM_OpenWithExcel: TdxBarButton;
    dxGHM_FullExpand: TdxBarButton;
    dxGHM_FullCollapse: TdxBarButton;
    dxGHM_GridOption: TdxBarSubItem;
    dxGHM_LoadAllRecord: TdxBarButton;
    dxGHM_AutoLoad: TdxBarButton;
    dxGHM_PartialLoad: TdxBarButton;
    dxGFM_Summary: TdxBarButton;
    dxGridFooterMenu: TdxBarPopupMenu;
    dxGFM_Minimum: TdxBarButton;
    dxGFM_Maximum: TdxBarButton;
    dxGFM_Count: TdxBarButton;
    dxGFM_Average: TdxBarButton;
    dxGFM_Null: TdxBarButton;
    acGHM_Find: TAction;
    acGHM_HideColumn: TAction;
    acGHM_UnsortedColumn: TAction;
    acGHM_SelectColumn: TAction;
    acGHM_Filter: TAction;
    acGHM_Group: TAction;
    acGHM_DisplayFooter: TAction;
    acGHM_RowAutoHeight: TAction;
    acGHM_AutoWidth: TAction;
    acGHM_ResizeColumn: TAction;
    acGHM_ResizeAllColumn: TAction;
    acGHM_LeftAlign: TAction;
    acGHM_RightAlign: TAction;
    acGHM_CenterAlign: TAction;
    acGHM_ImportFromExcel: TAction;
    acGHM_ImportUtils: TAction;
    acGHM_ExportToExcel: TAction;
    acGHM_ExportToHTML: TAction;
    acGHM_ExportToXML: TAction;
    acGHM_ExportToMail: TAction;
    acGHM_OpenWithExcell: TAction;
    acGHM_Fullexpand: TAction;
    acGHM_FullCollapse: TAction;
    acGHM_LoadAllRecord: TAction;
    acGHM_AutoLoad: TAction;
    acGHM_PartialLoad: TAction;
    acGFM_Summary: TAction;
    acGFM_Minimum: TAction;
    acGFM_Maximum: TAction;
    acGFM_Count: TAction;
    acGFM_Average: TAction;
    acGFM_Null: TAction;
    dxXDToChucPhapLy: TdxBarButton;
    acXDToChucPhapLy: TAction;
    dxQLLuong_NewVersion: TdxBarSubItem;
    dxPhuongAnLuong: TdxBarButton;
    dxQuanLyBangLuong: TdxBarButton;
    acPhuongAnLuong: TAction;
    acQuanLyBangLuong: TAction;
    dxKhoaDLLuong: TdxBarButton;
    acKhoaDLLuong: TAction;
    dxTinTucWeb: TdxBarButton;
    dxWeb: TdxBarSubItem;
    acTinTucWeb: TAction;
    dxCauHinhChoPhepSua: TdxBarButton;
    acCauHinhChoPhepSua: TAction;
    dxCapNhatThongTinNV: TdxBarButton;
    acCapNhatThongTinNV: TAction;
    acKhauTruThueKhac: TAction;
    dxKhauTruThueKhac: TdxBarButton;
    dxCauHinhDangKyPhep: TdxBarButton;
    acCauHinhDangKyPhep: TAction;
    dxDMBenhVien: TdxBarButton;
    acBaoHiem_BenhVien: TAction;
    dxQuanLyBaoHiem: TdxBarSubItem;
    dxBaoHiem_DinhNghia: TdxBarButton;
    dxDuLieuBaoHiem: TdxBarButton;
    acBaoHiem_DinhNghia: TAction;
    acDuLieuBaoHiem: TAction;
    dxBaoHiem_ChinhSach: TdxBarButton;
    acBaoHiem_ChinhSach: TAction;
    dxResetPass: TdxBarButton;
    acResetPass: TAction;
    dxBangTheoDoiCongTac: TdxBarButton;
    acTheoDoiCongTac: TAction;
    dxKhungLuongCTY: TdxBarButton;
    acKhungLuongCTY: TAction;
    dxTheoDoiNangLuong: TdxBarButton;
    acTheoDoiNangLuong: TAction;
    procedure bbListwindowsClick(Sender: TObject);
    procedure bbListwindowsGetData(Sender: TObject);
    procedure acHelpExecute(Sender: TObject);
    procedure acUserManualExecute(Sender: TObject);
    procedure acAboutExecute(Sender: TObject);
    procedure TntFormCreate(Sender: TObject);
    procedure acChangePassExecute(Sender: TObject);
    procedure acExitExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    function CloseConnection: Boolean;
    procedure acScanMainExecute(Sender: TObject);
    procedure dxTiengVietClick(Sender: TObject);
    procedure dxTiengAnhClick(Sender: TObject);
    procedure acMsgListExecute(Sender: TObject);
    procedure dxMacdinhClick(Sender: TObject);
    procedure acUserManagerExecute(Sender: TObject);
    procedure acScanPopupExecute(Sender: TObject);
    procedure acTranslateCaptionExecute(Sender: TObject);
    procedure acInterfaceOptionExecute(Sender: TObject);
    procedure acDataOptionExecute(Sender: TObject);
    procedure acSearchExecute(Sender: TObject);
    procedure acReportsExecute(Sender: TObject);
    procedure acBackupExecute(Sender: TObject);
    procedure acRestoreExecute(Sender: TObject);
    procedure acNhanvienExecute(Sender: TObject);
    procedure acLoaiTochucExecute(Sender: TObject);
    procedure acDanhsachTochucExecute(Sender: TObject);
    procedure acLoaiCongviecExecute(Sender: TObject);
    procedure acDanhsachChucdanhExecute(Sender: TObject);
    procedure acVitriLamviecExecute(Sender: TObject);
    procedure acNhansuExecute(Sender: TObject);
    procedure acQuanlyQuyetdinhExecute(Sender: TObject);
    procedure acSodoTochucExecute(Sender: TObject);
    procedure acQuanlyHopdongExecute(Sender: TObject);
    procedure acThongtinDanhmucExecute(Sender: TObject);
    procedure acLichLamviecChuanExecute(Sender: TObject);
    procedure acChamcongExecute(Sender: TObject);
    procedure acDocmayChamcongExecute(Sender: TObject);
    procedure acQuanlyLuongExecute(Sender: TObject);
    procedure acLuongCBNNExecute(Sender: TObject);
    procedure acHesoQD_HDExecute(Sender: TObject);
    procedure acDanhgiaNVExecute(Sender: TObject);
    procedure acTieuchiDanhgiaExecute(Sender: TObject);
    procedure acHethongDiemDGExecute(Sender: TObject);
    procedure acQuanlyTuyendungExecute(Sender: TObject);
    procedure acQuanlyDaotaoExecute(Sender: TObject);
    procedure acQuanlyBHXHExecute(Sender: TObject);
    procedure acCauhinhBHXHExecute(Sender: TObject);
    procedure acQuanlyCongtacExecute(Sender: TObject);
    procedure acHieuchinhDulieuExecute(Sender: TObject);
    procedure acHienthiDulieuExecute(Sender: TObject);
    procedure acDangKyCongViecExecute(Sender: TObject);
    procedure acNhatkyExecute(Sender: TObject);
    procedure acQuanlyPhepThamnienExecute(Sender: TObject);
    procedure acCauhinhPhepThamnienExecute(Sender: TObject);
    procedure acAlertConfigExecute(Sender: TObject);
    procedure acCanhbaoNguoidungExecute(Sender: TObject);
    procedure acTudongCanhbaoExecute(Sender: TObject);
    procedure acCauhinhTuyendungExecute(Sender: TObject);
    procedure acCauhinhDaotaoExecute(Sender: TObject);
    procedure acBangtinhExecute(Sender: TObject);
    procedure acDinhnghiaCongcuExecute(Sender: TObject);
    procedure acDanhmucCongcuExecute(Sender: TObject);
    procedure acQuanlyCapphatCongcuExecute(Sender: TObject);
    procedure acQuanlySoLDExecute(Sender: TObject);
    function ShowGridMenus(grid: TdxDBGrid): Boolean;
    procedure acGHM_FindExecute(Sender: TObject);
    procedure acGHM_HideColumnExecute(Sender: TObject);
    procedure acGHM_UnsortedColumnExecute(Sender: TObject);
    procedure acGHM_SelectColumnExecute(Sender: TObject);
    procedure acGHM_HideColumnUpdate(Sender: TObject);
    procedure acGHM_FilterExecute(Sender: TObject);
    procedure acGHM_GroupExecute(Sender: TObject);
    procedure acGHM_DisplayFooterExecute(Sender: TObject);
    procedure acGHM_GroupUpdate(Sender: TObject);
    procedure acGHM_RowAutoHeightExecute(Sender: TObject);
    procedure acGHM_AutoWidthExecute(Sender: TObject);
    procedure acGHM_ResizeColumnExecute(Sender: TObject);
    procedure acGHM_ResizeAllColumnExecute(Sender: TObject);
    procedure acGHM_LeftAlignExecute(Sender: TObject);
    procedure acGHM_RightAlignExecute(Sender: TObject);
    procedure acGHM_CenterAlignExecute(Sender: TObject);
    procedure acGHM_ExportToExcelExecute(Sender: TObject);
    procedure acGHM_ExportToHTMLExecute(Sender: TObject);
    procedure acGHM_ExportToXMLExecute(Sender: TObject);
    procedure acGHM_ExportToMailExecute(Sender: TObject);
    procedure acGHM_OpenWithExcellExecute(Sender: TObject);
    procedure acGHM_FullexpandExecute(Sender: TObject);
    procedure acGHM_FullCollapseExecute(Sender: TObject);
    procedure acGHM_LoadAllRecordExecute(Sender: TObject);
    procedure acGHM_AutoLoadExecute(Sender: TObject);
    procedure acGHM_PartialLoadExecute(Sender: TObject);
    procedure acGHM_PartialLoadUpdate(Sender: TObject);
    procedure acGFM_SummaryExecute(Sender: TObject);
    procedure DoFooterSummary(ASummaryType:TdxSummaryType);
    procedure DoRowFooterSummary(ASummaryType:TdxSummaryType);
    procedure BeforeGridMenuPopup;
    procedure acGHM_ImportFromExcelUpdate(Sender: TObject);
    procedure acGFM_SummaryUpdate(Sender: TObject);
    procedure acGFM_MinimumUpdate(Sender: TObject);
    procedure acGFM_MaximumUpdate(Sender: TObject);
    procedure acGFM_AverageUpdate(Sender: TObject);
    procedure acGFM_MinimumExecute(Sender: TObject);
    procedure acGFM_MaximumExecute(Sender: TObject);
    procedure acGFM_CountExecute(Sender: TObject);
    procedure acGFM_AverageExecute(Sender: TObject);
    procedure acGFM_NullExecute(Sender: TObject);
    procedure acGHM_ImportFromExcelExecute(Sender: TObject);
    procedure acGHM_ImportUtilsExecute(Sender: TObject);
    procedure acXDToChucPhapLyExecute(Sender: TObject);
    procedure acPhuongAnLuongExecute(Sender: TObject);
    procedure acQuanLyBangLuongExecute(Sender: TObject);
    procedure acKhoaDLLuongExecute(Sender: TObject);
    procedure acTinTucWebExecute(Sender: TObject);
    procedure acCauHinhChoPhepSuaExecute(Sender: TObject);
    procedure acCapNhatThongTinNVExecute(Sender: TObject);
    procedure acKhauTruThueKhacExecute(Sender: TObject);
    procedure acCauHinhDangKyPhepExecute(Sender: TObject);
    procedure acBaoHiem_BenhVienExecute(Sender: TObject);
    procedure acBaoHiem_DinhNghiaExecute(Sender: TObject);
    procedure acDuLieuBaoHiemExecute(Sender: TObject);
    procedure acBaoHiem_ChinhSachExecute(Sender: TObject);
    procedure acResetPassExecute(Sender: TObject);
    procedure acTheoDoiCongTacExecute(Sender: TObject);
    procedure acKhungLuongCTYExecute(Sender: TObject);
    procedure acTheoDoiNangLuongExecute(Sender: TObject);

  private
    FGrid: TCustomdxDBTreeListControl;
    FGridColumn: TdxDBGridColumn;
    FState: string;
    FSummaryGroup: TdxDBGridSummaryGroup;
    FSummaryItem: TdxDBGridSummaryItem;
  public
    { Public declarations }
    procedure ShowHint(Sender: TObject);
    procedure SetStatusBarMsg(msg: WideString);
    procedure SetStatusBarPrgDisplay(Min, Max: integer);
    procedure BarPrgStepIt;
  end;

var
  frmMain: TfrmMain;
  IsOK: Boolean;
  Access_History_id: integer;
  LANGUAGE_ID: integer;
implementation

uses Login, SSP_Library, ChangePass,
  SecurityForm, PopupMainForm, TranslateCaptionForm,
  SysInfoForm, SearchInfoForm, ReportsFrmMain, BackupFrm,
  DeptTypeForm, DeptListForm, WorkTypeForm, TitleListForm,
  PositionListForm, ListManageForm, EmployeeListForm,
  EmpInfoDataModule, EmpInfoForm, EditorForm, DecisionManageForm,
  OrganizationMapForm, ContractManageForm, CalendarForm,
  WorkTimeManagerForm, WorkTimeMachineForm, WageManagerForm,
  WageStandardForm, FormalParamForm, EstimateManagerForm, EstimateItemForm,
  EstimateSysLevelForm,
  RecruitmentManagerForm,
  TrainingManagerForm, MissionManager,
  UIConfigForm, SQLToolForm,
  DataDisplayOptionForm, WorkTimeMachineManagerForm,
  LogConfigForm, LogDataForm, TieuchuanPhepForm,
  TheodoiPhepForm, AlertConfigForm, AlertBoardForm, RecruitmentConfigForm,
  TrainingConfigForm, SSP_Excel_Form, WorkShiftRegForm, LoaiCongcu_Form,
  DanhmucCongcu_Form, CapphatCongcu_Form, NhapSoSoLDForm, Math,
  ImportDataForm, XDTochucPhapLyForm, Luong_DinhnghiaForm, Luong_Bangluong,
  Luong_KhoaLuongForm, DMTinTucForm, CauHinhSuaThongTinNhanVienForm,
  CapNhatThongTinNVForm,
  //AboutFrm,
  KhauTruThueKhacForm, GioiThieuForm,
  CauHinh_DangKy_PhepForm, BAOHIEM_DinhNghiaForm,
  BAOHIEM_CauHinhForm, BAOHIEM_BenhVienForm,
  BAOHIEM_SoDangKyForm, BAOHIEM_BangDuLieuForm, BAOHIEM_ChinhSachForm,
  BAOHIEM_CauHinhDuLieuForm, BAOHIEM_GetDataForm, UserWebForm,
  BangTheoDoiCongTacForm, WageCompanyForm, Theodoinangluongfrm;

{$R *.dfm}

function TfrmMain.CloseConnection: Boolean;
var
  i: integer;
begin
  result := true;
  try
    if self.MDIChildCount > 0 then
      for i := 0 to self.MDIChildCount - 1 do
        self.MDIChildren[i].Close;
    dmMain.connMain.Disconnect;
  except
    result := false;
  end;
end;

procedure TfrmMain.SetStatusBarMsg(msg: WideString);
begin
  frmMain.StatusBars.Panels[1].Text := msg;
end;

procedure TfrmMain.BarPrgStepIt;
begin
  if dxpgBar.ShowText = false then exit;
  dxpgBar.StepIt;
  if dxpgBar.Position >= dxpgBar.Max then
  begin
    dxpgBar.Position := dxpgBar.Min;
    dxpgBar.ShowText := false;
  end;
  self.Repaint;
end;

procedure TfrmMain.SetStatusBarPrgDisplay(Min, Max: integer);
begin
  dxpgBar.Min := Min;
  dxpgBar.Max := Max;
  dxpgBar.Step := 1;
  dxpgBar.Position := Min;
  dxpgBar.ShowText := true;
end;

procedure TfrmMain.ShowHint(Sender: TObject);
var
  HintTmp: string;
begin
  HintTmp := Application.Hint;
  StatusBars.Panels[0].Text := Utf8Decode(HintTmp);
end;

procedure TfrmMain.bbListwindowsClick(Sender: TObject);
begin
  with bbListwindows do
  begin
    TCustomForm(Items.Objects[ItemIndex]).Show;
    if TCustomForm(Items.Objects[ItemIndex]).WindowState = wsMinimized then
      TCustomForm(Items.Objects[ItemIndex]).WindowState := wsMaximized;
  end;
end;

procedure TfrmMain.bbListwindowsGetData(Sender: TObject);
begin
  with bbListwindows do
    ItemIndex := Items.IndexOfObject(ActiveMDIChild);
end;

procedure TfrmMain.acHelpExecute(Sender: TObject);
begin
  if HtmlHelp(Self.handle, PAnsiChar( ExtractFilePath(Application.ExeName) + 'HDSD SSP-HRM.chm'), HH_DISPLAY_TOPIC, 0) = 0 then
    ShowMessageUnicode(18);
end;

procedure TfrmMain.acUserManualExecute(Sender: TObject);
begin
  if HtmlHelp(Self.handle, PAnsiChar( ExtractFilePath(Application.ExeName) + 'HDSD SSP-HRM.chm'), HH_DISPLAY_TOPIC, 0) = 0 then  if HtmlHelp(Self.handle, 'HDSD SSP-HRM.chm', HH_DISPLAY_TOPIC, 0) = 0 then
    ShowMessageUnicode(18);
end;

procedure TfrmMain.acAboutExecute(Sender: TObject);
begin
  //dmMain.sspLicense1.ShowAbout;
  ShowModalForm(TfrmGioiThieu, frmGioiThieu);
end;

procedure TfrmMain.TntFormCreate(Sender: TObject);
begin
  //Set Permision for menu Items - tool Items

  //======================================================
  ApplyOption(TControl(Sender));
  IsOK := true;

  sdxPanelText := UTF8Decode('Kéo tiêu đề vào đây để nhóm cột');

  StatusBars.Panels[3].Text := sysConfig.Username;
  StatusBars.Panels[5].Text := sysConfig.DatabasePath;

end;

procedure TfrmMain.acChangePassExecute(Sender: TObject);
begin
  ShowModalForm(TfrmChangePass, frmChangePass);
end;

procedure TfrmMain.acExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dmMain.connection_state='ERROR' then
  begin
   // Action:=caFree;
  end
  else
  if dmMain.connMain.Connected then
  begin
    if ShowMessageUnicode(4) <> mrYes then
    begin
      Abort;
      Exit;
    end;
    if IsOK = True then
    begin
       dmMain.qryExecute.SQL.Text:='delete from sys_connection where user_id=:user_id';
       dmMain.qryExecute.Prepare;
       dmMain.qryExecute.ParamByName('USER_ID').Value:=sysConfig.User;
       dmMain.ExecuteSQL(dmMain.qryExecute);
    end;
  end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  if sysConfig.Language = 1 then
  begin
    dxTiengViet.Down := true;
    dxTiengAnh.Down := false;
    dxMacdinh.Down := False;
  end
  else
    if sysConfig.Language = 2 then
    begin
      dxTiengAnh.Down := true;
      dxTiengViet.Down := false;
      dxMacdinh.Down := False;
    end
    else
    begin
      dxTiengAnh.Down := false;
      dxTiengViet.Down := false;
      dxMacdinh.Down := true;
    end;
  CheckPermissionForm(TForm(Sender));
  acSodoTochuc.Execute;
  acTudongCanhbao.Execute;
end;

procedure TfrmMain.acScanMainExecute(Sender: TObject);
begin
  dmMain.ScanForm(frmMain);
end;

procedure TfrmMain.dxTiengVietClick(Sender: TObject);
var
  i: integer;
begin
  Screen.Cursor := crSQLWait;
  if sysConfig.Language <> 1 then
  begin
    sysConfig.Language := 1;
    dxTiengViet.Down := true;
    dmMain.SetCaption(Self, 1);
    for i := 0 to Screen.FormCount - 1 do
      dmMain.SetCaption(Screen.Forms[i], 1);
  end;
  dxTiengAnh.Down := false;
  dxMacdinh.Down := False;
  Screen.Cursor := crDefault;
end;

procedure TfrmMain.dxTiengAnhClick(Sender: TObject);
var
  i: integer;
begin
  Screen.Cursor := crSQLWait;
  if sysConfig.Language <> 2 then
  begin
    sysConfig.Language := 2;
    dxTiengAnh.Down := true;
    dmMain.SetCaption(Self, 1);
    for i := 0 to Screen.FormCount - 1 do
      dmMain.SetCaption(Screen.Forms[i], 1);
  end;
  dxTiengViet.Down := false;
  dxMacdinh.Down := False;
  Screen.Cursor := crDefault;
end;

procedure TfrmMain.acMsgListExecute(Sender: TObject);
begin
  dmMain.DefineMessage;
end;

procedure TfrmMain.dxMacdinhClick(Sender: TObject);
var
  i: integer;
begin
  Screen.Cursor := crSQLWait;
  if sysConfig.Language <> 0 then
  begin
    sysConfig.Language := 0;
    dxMacdinh.Down := true;
    dmMain.SetCaption(Self, 1);
    for i := 0 to Screen.FormCount - 1 do
      dmMain.SetCaption(Screen.Forms[i], 1);
  end;
  dxTiengViet.Down := false;
  dxTiengAnh.Down := False;
  Screen.Cursor := crDefault;
end;

procedure TfrmMain.acUserManagerExecute(Sender: TObject);
begin
  ShowModalForm(TfrmSecurity, frmSecurity);
end;

procedure TfrmMain.acScanPopupExecute(Sender: TObject);
begin
  dmMain.ScanForm(frmPopupMain);
end;

procedure TfrmMain.acTranslateCaptionExecute(Sender: TObject);
begin
  SHowModalForm(TfrmTranslateCaption, frmTranslateCaption);
end;

procedure TfrmMain.acInterfaceOptionExecute(Sender: TObject);
begin
  ShowModalForm(TfrmUIConfig, frmUIConfig);
end;

procedure TfrmMain.acDataOptionExecute(Sender: TObject);
begin
  ShowModalForm(TfrmSysInfo, frmSysInfo);
end;

procedure TfrmMain.acSearchExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmSearhUtils, frmSearhUtils, 0);
end;

procedure TfrmMain.acReportsExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmReportsMain, frmReportsMain, 0);
end;

procedure TfrmMain.acBackupExecute(Sender: TObject);
begin
  with TfrmBackup.Create(self, 0) do
    try
      ShowModal;
    finally
      Free;
    end;

end;

procedure TfrmMain.acRestoreExecute(Sender: TObject);
begin
  with TfrmBackup.Create(self, 1) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TfrmMain.acNhanvienExecute(Sender: TObject);
begin
  ShowModalForm(TfrmEditor, frmEditor);
end;

procedure TfrmMain.acLoaiTochucExecute(Sender: TObject);
begin
  ShowModalForm(TfrmDeptType, frmDeptType);
end;

procedure TfrmMain.acDanhsachTochucExecute(Sender: TObject);
begin
  ShowModalForm(TfrmDeptList, frmDeptList);
end;

procedure TfrmMain.acLoaiCongviecExecute(Sender: TObject);
begin
  ShowModalForm(TfrmWorkType, frmWorkType);
end;

procedure TfrmMain.acDanhsachChucdanhExecute(Sender: TObject);
begin
  ShowModalForm(TfrmTitleList, frmTitleList);
end;

procedure TfrmMain.acVitriLamviecExecute(Sender: TObject);
begin
  ShowModalForm(TfrmPositionList, frmPositionList);
end;

procedure TfrmMain.acNhansuExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmEmployees, frmEmployees);
end;

procedure TfrmMain.acQuanlyQuyetdinhExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmDecisionManager, frmDecisionManager);
end;

procedure TfrmMain.acSodoTochucExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmOrganizationMap, frmOrganizationMap);
end;

procedure TfrmMain.acQuanlyHopdongExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmContractManager, frmContractManager, 0);
end;

procedure TfrmMain.acThongtinDanhmucExecute(Sender: TObject);
begin
  ShowModalForm(TfrmListManager, frmListManager);
end;

procedure TfrmMain.acLichLamviecChuanExecute(Sender: TObject);
begin
  ShowModalForm(TfrmCalendar, frmCalendar);
end;

procedure TfrmMain.acChamcongExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmWorkTimeManager, frmWorkTimeManager);
end;

procedure TfrmMain.acDocmayChamcongExecute(Sender: TObject);
begin
  //ShowModalForm(TfrmWorkTimeMachine,frmWorkTimeMachine);
  with TfrmWorkTimeMachine.Create(frmWorkTimeMachine) do
    try
      if ShowModal = mrOK then
      begin
        ShowMDIForm(TfrmWorkTimeMachineManager, frmWorkTimeMachineManager);
        ///Cap nhat tham so
        frmWorkTimeMachineManager.varFileType := dxLoaiDulieu.Text;
        frmWorkTimeMachineManager.varFileName := dxExcelFileName.Text;
        frmWorkTimeMachineManager.varMachineModel :=
          qryLoaiMayMACHINE_MODEL.Value;
        ///Xu ly du lieu
        frmWorkTimeMachineManager.ProcessData();
      end;
    finally
      Free;
    end;
end;

procedure TfrmMain.acQuanlyLuongExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmWageManager, frmWageManager);
end;

procedure TfrmMain.acLuongCBNNExecute(Sender: TObject);
begin
  ShowModalForm(TfrmWageStandard, frmWageStandard);
end;

procedure TfrmMain.acHesoQD_HDExecute(Sender: TObject);
begin
  ShowModalForm(TfrmFormalParam, frmFormalParam);
end;

procedure TfrmMain.acDanhgiaNVExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmEstimateManager, frmEstimateManager);
end;

procedure TfrmMain.acTieuchiDanhgiaExecute(Sender: TObject);
begin
  ShowModalForm(TfrmEstimateItem, frmEstimateItem);
end;

procedure TfrmMain.acHethongDiemDGExecute(Sender: TObject);
begin
  ShowModalForm(TfrmEstimateSysLevel, frmEstimateSysLevel);
end;

procedure TfrmMain.acQuanlyTuyendungExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmRecruitmentManager, frmRecruitmentManager);
end;

procedure TfrmMain.acQuanlyDaotaoExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmTrainingManager, frmTrainingManager);
end;

procedure TfrmMain.acQuanlyBHXHExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmBAOHIEM_SoDangKy,frmBAOHIEM_SoDangKy);
end;

procedure TfrmMain.acCauhinhBHXHExecute(Sender: TObject);
begin
  ShowModalForm(TfrmBAOHIEM_CauHinh, frmBAOHIEM_CauHinh);
end;

procedure TfrmMain.acQuanlyCongtacExecute(Sender: TObject);
begin
  ShowModalForm(TfrmMissionManager, frmMissionManager);
end;

procedure TfrmMain.acHieuchinhDulieuExecute(Sender: TObject);
begin
  ShowModalForm(TfrmSQLTool, frmSQLTool);
end;

procedure TfrmMain.acHienthiDulieuExecute(Sender: TObject);
begin
  ShowMOdalForm(TfrmDataDisplayOption, frmDataDisplayOption);
end;

procedure TfrmMain.acDangKyCongViecExecute(Sender: TObject);
begin
  ShowModalForm(TfrmWorkShiftReg, frmWorkShiftReg);
end;

procedure TfrmMain.acNhatkyExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmLogData, frmLogData);
end;

procedure TfrmMain.acQuanlyPhepThamnienExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmTheodoiPhep, frmTheodoiPhep);
end;

procedure TfrmMain.acCauhinhPhepThamnienExecute(Sender: TObject);
begin
  ShowModalForm(TfrmTieuchuanPhep, frmTieuchuanPhep);
end;

procedure TfrmMain.acAlertConfigExecute(Sender: TObject);
begin
  ShowModalForm(TfrmAlertConfig, frmAlertConfig)
end;

procedure TfrmMain.acCanhbaoNguoidungExecute(Sender: TObject);
begin
  frmAlertBoard := TfrmAlertBoard.Create(self, true);
  with frmAlertBoard do
    try
      if Assigned(frmAlertBoard) and
        (frmAlertBoard.alert_count > 0)
        then
        frmAlertBoard.Show;
    finally
    end;
end;

procedure TfrmMain.acTudongCanhbaoExecute(Sender: TObject);
begin
  frmAlertBoard := TfrmAlertBoard.Create(self, false);
  with frmAlertBoard do
    try
      if Assigned(frmAlertBoard) and
        (frmAlertBoard.alert_count > 0) then
        frmAlertBoard.Show;
    finally
    end;
end;

procedure TfrmMain.acCauhinhTuyendungExecute(Sender: TObject);
begin
  ShowModalForm(TfrmRecruitmentConfig, frmRecruitmentConfig);
end;

procedure TfrmMain.acCauhinhDaotaoExecute(Sender: TObject);
begin
  ShowModalForm(TfrmTrainingConfig, frmTrainingConfig);
end;

procedure TfrmMain.acBangtinhExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmSSP_Excel, frmSSP_Excel);
end;

procedure TfrmMain.acDinhnghiaCongcuExecute(Sender: TObject);
begin
  ShowModalForm(TfrmCongcu_Loai, frmCongcu_Loai);
end;

procedure TfrmMain.acDanhmucCongcuExecute(Sender: TObject);
begin
  ShowModalForm(TfrmCongcuDanhmuc, frmCongcuDanhmuc);
end;

procedure TfrmMain.acQuanlyCapphatCongcuExecute(Sender: TObject);
begin
  ShowModalForm(TfrmCongcuCapphat, frmCongcuCapphat);
end;

procedure TfrmMain.acQuanlySoLDExecute(Sender: TObject);
begin
  ShowModalForm(TfrmNhapSoSoLD, frmNhapSoSoLD);
end;

function TfrmMain.ShowGridMenus(grid: TdxDBGrid): Boolean;
var
  hTest: TdxTreeListHitTest;
  SummaryGroup: TdxDBGridSummaryGroup;
  p: TPoint;
begin
  FGrid := grid;
  GetCursorPos(p);
  p := Grid.ScreenToClient(p);
  hTest := Grid.GetHitTestInfoAt(p.X, p.Y);
  FGridColumn := nil;
  case hTest of
    htColumn, htColumnEdge:
      begin
        FGridColumn := TdxDBGridColumn(Grid.GetColumnAt(p.X, p.Y));
        if FGridColumn <> nil then
        begin
          BeforeGridMenuPopup;
          dxGridHeaderMenu.PopupFromCursorPos;
        end;
      end;
    htSummaryFooter:
      begin
        FGridColumn := TdxDBGridColumn(Grid.GetFooterColumnAt(p.X, p.Y));
        if FGridColumn <> nil then
        begin
          FState := 'IsSummaryFooter';
          BeforeGridMenuPopup;
          dxGridFooterMenu.PopupFromCursorPos;
        end;
      end;
    htSummaryNodeFooter:
      begin
        FSummaryItem := Grid.GetSummaryItemAt(p.X, p.Y,
          FSummaryGroup, TdxDBTreeListColumn(FGridColumn), True);
        if FGridColumn <> nil then
        begin
          BeforeGridMenuPopup;
          FState := 'IsRowFooter';
          dxGridFooterMenu.PopupFromCursorPos;
        end;
      end;
  end;
  Result := FGridColumn <> nil;
end;

procedure TfrmMain.acGHM_FindExecute(Sender: TObject);
begin
  keybd_event(vk_F8, 0, 0, 0);
  keybd_event(vk_F8, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmMain.acGHM_HideColumnExecute(Sender: TObject);
begin
  if FGrid.VisibleColumnCount > 1 then
    fGridColumn.Visible := False
  else
    ShowMessageUnicode(69);
end;

procedure TfrmMain.acGHM_UnsortedColumnExecute(Sender: TObject);
begin
  fGridColumn.Sorted := csNone;
end;

procedure TfrmMain.acGHM_SelectColumnExecute(Sender: TObject);
begin
  if fGridColumn.TreeList.IsCustomizing then
    fGridColumn.TreeList.EndColumnsCustomizing
  else
    fGridColumn.TreeList.ColumnsCustomizing;
end;

procedure TfrmMain.acGHM_HideColumnUpdate(Sender: TObject);
begin
  acGHM_HideColumn.Enabled :=
    Assigned(FGridColumn) and (FGridColumn.DisableCustomizing = false);
end;

procedure TfrmMain.acGHM_FilterExecute(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
    (fGrid as TdxDBGrid).Filter.Active := not (fGrid as
      TdxDBGrid).Filter.Active;
end;

procedure TfrmMain.acGHM_GroupExecute(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
    (fGrid as TdxDBGrid).ShowGroupPanel := not (fGrid as
      TdxDBGrid).ShowGroupPanel;
end;

procedure TfrmMain.acGHM_DisplayFooterExecute(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
  begin
    (fGrid as TdxDBGrid).ShowSummaryFooter := not (fGrid as
      TdxDBGrid).ShowSummaryFooter;
    (fGrid as TdxDBGrid).ShowRowFooter := (fGrid as
      TdxDBGrid).ShowSummaryFooter;

    //FSummaryItem.ColumnName := FGridColumn.Name;
    //FSummaryItem.SummaryField := FGridColumn.FieldName;
  end
  else
    if (fGrid is TdxDBTreeList) then
      (fGrid as TdxDBTreeList).ShowFooter := not (fGrid as
        TdxDBTreeList).ShowFooter;
end;

procedure TfrmMain.acGHM_GroupUpdate(Sender: TObject);      
begin
  acGHM_Group.Enabled := (fGrid is TdxDBGrid);
end;

procedure TfrmMain.acGHM_RowAutoHeightExecute(Sender: TObject);
begin
  //  dxGHM_RowAutoHeight.Down:=not dxGHM_RowAutoHeight.Down;
  if (fGrid is TdxDBGrid) then
  begin
    if dxGHM_RowAutoHeight.Down then
      (fGrid as TdxDBGrid).OptionsView := (fGrid as TdxDBGrid).OptionsView +
        [edgoRowAutoHeight]
    else
      (fGrid as TdxDBGrid).OptionsView := (fGrid as TdxDBGrid).OptionsView -
        [edgoRowAutoHeight];
  end
  else
    if (fGrid is TdxDBTreeList) then
    begin
      if dxGHM_RowAutoHeight.Down then
        (fGrid as TdxDBTreeList).OptionsView := (fGrid as
          TdxDBTreeList).OptionsView + [etoRowAutoHeight]
      else
        (fGrid as TdxDBTreeList).OptionsView := (fGrid as
          TdxDBTreeList).OptionsView - [etoRowAutoHeight];
    end

end;

procedure TfrmMain.acGHM_AutoWidthExecute(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
  begin
    if dxGHM_AutoWidth.Down then
      (fGrid as TdxDBGrid).OptionsView := (fGrid as TdxDBGrid).OptionsView +
        [edgoAutoWidth]
    else
      (fGrid as TdxDBGrid).OptionsView := (fGrid as TdxDBGrid).OptionsView -
        [edgoAutoWidth];
  end
  else
    if (fGrid is TdxDBTreeList) then
    begin
      if dxGHM_AutoWidth.Down then
        (fGrid as TdxDBTreeList).OptionsView := (fGrid as
          TdxDBTreeList).OptionsView + [etoAutoWidth]
      else
        (fGrid as TdxDBTreeList).OptionsView := (fGrid as
          TdxDBTreeList).OptionsView - [etoAutoWidth];
    end;
end;

procedure TfrmMain.acGHM_ResizeColumnExecute(Sender: TObject);
begin
  fGridColumn.TreeList.ApplyBestFit(fGridColumn);
end;

procedure TfrmMain.acGHM_ResizeAllColumnExecute(Sender: TObject);
begin
  fGridColumn.TreeList.ApplyBestFit(nil);
end;

procedure TfrmMain.acGHM_LeftAlignExecute(Sender: TObject);
begin
  fGridColumn.Alignment := taLeftJustify;
  dxGHM_LeftAlign.Down := true;
  dxGHM_CenterAlign.Down := false;
  dxGHM_RightAlign.Down := false;
end;

procedure TfrmMain.acGHM_RightAlignExecute(Sender: TObject);
begin
  fGridColumn.Alignment := taRightJustify;
  dxGHM_LeftAlign.Down := false;
  dxGHM_CenterAlign.Down := false;
  dxGHM_RightAlign.Down := true;
end;

procedure TfrmMain.acGHM_CenterAlignExecute(Sender: TObject);
begin
  fGridColumn.Alignment := taCenter;
  dxGHM_LeftAlign.Down := false;
  dxGHM_CenterAlign.Down := true;
  dxGHM_RightAlign.Down := false;

end;

procedure TfrmMain.acGHM_ExportToExcelExecute(Sender: TObject);
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
      ShowMessageUnicode(39);  
    end;
  except
    ShowMessageUnicode(70);
  end;
  SaveDlg.Free;
end;

procedure TfrmMain.acGHM_ExportToHTMLExecute(Sender: TObject);
var
  SaveDlg: TSaveDialog;
begin
  if not (fGrid is TdxDBGrid) then exit;

  SaveDlg := TSaveDialog.Create(nil);
  SaveDlg.Filter := 'Web Page Files|*.html';
  SaveDlg.DefaultExt := 'htm';
  try
    if SaveDlg.Execute then
    begin
      (fGrid as TdxDBGrid).SaveToHTML(SaveDlg.FileName, true);
      ShowMessageUnicode(39);
    end;
  except
    ShowMessageUnicode(71);
  end;
  SaveDlg.Free;
end;

procedure TfrmMain.acGHM_ExportToXMLExecute(Sender: TObject);
var
  SaveDlg: TSaveDialog;
begin
  if not (fGrid is TdxDBGrid) then Exit;

  SaveDlg := TSaveDialog.Create(nil);
  SaveDlg.Filter := 'XML Files|*.xml';
  SaveDlg.DefaultExt := 'xml';
  try
    if SaveDlg.Execute then
    begin
      (fGrid as TdxDBGrid).SaveToXML(SaveDlg.FileName, true);
      ShowMessageUnicode(39);
    end;
  except
    ShowMessageUnicode(71);
  end;
   SaveDlg.Free;
end;

procedure TfrmMain.acGHM_ExportToMailExecute(Sender: TObject);
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
    ShowMessageUnicode(39);
  except
    ShowMessageUnicode(70);
  end;
  SaveDlg.Free;
end;

procedure TfrmMain.acGHM_OpenWithExcellExecute(Sender: TObject);
var
  cfr: TCustomFileRun;
  dir: string;
begin
  try
    dir := ExtractFileDir(Application.ExeName) + '\temp';
    if not DirectoryExists(dir) then
      if CreateDir(dir) = false then
      begin
        ShowMessageUnicode(72);
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
    ShowMessageUnicode(70);
    Exit;
  end;

  cfr := TCustomFileRun.Create(nil);
  cfr.FileName := dir + '\data.xls';
  cfr.Execute;
  cfr.Free;
end;

procedure TfrmMain.acGHM_FullexpandExecute(Sender: TObject);
begin
 if (fGrid is TdxDBGrid) then
    (fGrid as TdxDBGrid).FullExpand
  else
    if (fGrid is TdxDBTreeList) then
    (fGrid as TdxDBTreeList).FullExpand;
end;

procedure TfrmMain.acGHM_FullCollapseExecute(Sender: TObject);
begin
 if (fGrid is TdxDBGrid) then
    (fGrid as TdxDBGrid).FullCollapse
  else
    if (fGrid is TdxDBTreeList) then
    (fGrid as TdxDBTreeList).FullCollapse;
end;

procedure TfrmMain.acGHM_LoadAllRecordExecute(Sender: TObject);
begin
if (fGrid is TdxDBGrid) then
  begin
    if dxGHM_LoadAllRecord.Down then
    begin
      (fGrid as TdxDBGrid).OptionsDB := (fGrid as TdxDBGrid).OptionsDB+
       [edgoLoadAllRecords] - [edgoSmartRefresh, edgoSmartReload, edgoPartialLoad];
    end;
  end
  else
  if (fGrid is TdxDBTreeList) then
  begin
    if dxGHM_LoadAllRecord.Down then
      (fGrid as TdxDBTreeList).OptionsDB := (fGrid as TdxDBTreeList).OptionsDB+
      [etoLoadAllRecords];
  end;
end;

procedure TfrmMain.acGHM_AutoLoadExecute(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
  begin
    if dxGHM_AutoLoad.Down then
    (fGrid as TdxDBGrid).OptionsDB := (fGrid as TdxDBGrid).OptionsDB
    - [edgoLoadAllRecords, edgoPartialLoad] + [edgoSmartRefresh, edgoSmartReload];
  end
  else
  if (fGrid is TdxDBTreeList) then
  begin
    if dxGHM_AutoLoad.Down then
    (fGrid as TdxDBTreeList).OptionsDB := (fGrid as TdxDBTreeList).OptionsDB-
    [etoLoadAllRecords];
  end;
end;

procedure TfrmMain.acGHM_PartialLoadExecute(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
  begin
    if dxGHM_PartialLoad.Down then
    (fGrid as TdxDBGrid).OptionsDB := (fGrid as TdxDBGrid).OptionsDB
    - [edgoLoadAllRecords, edgoSmartRefresh, edgoSmartReload] + [edgoPartialLoad];
  end
end;

procedure TfrmMain.acGHM_PartialLoadUpdate(Sender: TObject);
begin
  acGHM_PartialLoad.Enabled:=Assigned(FGrid) and (FGrid is TdxDBGrid);
end;

procedure TfrmMain.acGFM_SummaryExecute(Sender: TObject);
begin
  if FState='IsRowFooter' then
    DoRowFooterSummary(cstSum)
  else
    DoFooterSummary(cstSum);
  if fGrid is TdxDBGrid then
    TdxDBGrid(FGrid).RefreshGroupColumns
  else
    TCustomdxDBGrid(fGridColumn.TreeList).FullRefresh;
end;
procedure TfrmMain.DoFooterSummary(ASummaryType:TdxSummaryType);
  begin
    fGridColumn.SummaryFooterType := ASummaryType;
    fGridColumn.SummaryFooterField := fGridColumn.FieldName;
    if fGridColumn.Field is TIBOFloatField then
      if fGridColumn.SummaryFooterFormat = '' then
        fGridColumn.SummaryFooterFormat := sysConfig.FloatFormat;
  end;
  procedure TfrmMain.DoRowFooterSummary(ASummaryType:TdxSummaryType);
  begin
    FSummaryItem.SummaryType := ASummaryType;
    if fGridColumn.Field is TIBOFloatField then
    if FSummaryItem.SummaryFormat = '' then
      FSummaryItem.SummaryFormat := sysConfig.FloatFormat;
  end;
procedure TfrmMain.BeforeGridMenuPopup;
var
  Align: TAlignment;
  SummaryType: TdxSummaryType;
begin
  if (FGrid is TdxDBGrid) then
  begin
    dxGHM_Filter.Down := (fGrid as TdxDBGrid).Filter.Active;
    dxGHM_Group.Down := (fGrid as TdxDBGrid).ShowGroupPanel;
    dxGHM_RowAutoHeight.Down := (edgoRowAutoHeight in (fGrid as
      TdxDBGrid).OptionsView);
     dxGHM_AutoWidth.Down := (edgoAutoWidth in (fGrid as TdxDBGrid).OptionsView);
     dxGHM_DisplayFooter.Down := (fGrid as TdxDBGrid).ShowSummaryFooter;
      dxGHM_LoadAllRecord.Down := (edgoLoadAllRecords in (fGrid as
      TdxDBGrid).OptionsDB);
    dxGHM_AutoLoad.Down := (edgoSmartRefresh in (fGrid as
      TdxDBGrid).OptionsDB);
    dxGHM_PartialLoad.Down := (edgoPartialLoad in (fGrid as
      TdxDBGrid).OptionsDB);
  end
  else
  if (FGrid is TdxDBTreeList) then
  begin
    dxGHM_RowAutoHeight.Down:= (etoRowAutoHeight in (fGrid as
    TdxDBTreeList).OptionsView);
    dxGHM_AutoWidth.Down := (etoAutoWidth in (fGrid as
      TdxDBTreeList).OptionsView);
    dxGHM_DisplayFooter.Down := (fGrid as TdxDBTreeList).ShowFooter;
    dxGHM_LoadAllRecord.Down:=(etoLoadAllRecords in (fgrid as TdxDBTreeList).OptionsDB);
    dxGHM_AutoLoad.Down:=not(etoLoadAllRecords in (fgrid as TdxDBTreeList).OptionsDB);
  end;

  dxGHM_SelectColumn.Down := fGridColumn.TreeList.IsCustomizing;

  if Assigned(FGridColumn) then
  begin
    dxGHM_LeftAlign.Down := (FGridColumn.Alignment = taLeftJustify);
    dxGHM_CenterAlign.Down := (FGridColumn.Alignment = taCenter);
    dxGHM_RightAlign.Down := (FGridColumn.Alignment = taRightJustify);
  end;
  // Footer
  if FState='IsRowFooter' then
    SummaryType := FSummaryItem.SummaryType
  else
    SummaryType := FGridColumn.SummaryFooterType;

  dxGFM_Summary.Down:=(SummaryType=cstSum);
  dxGFM_Minimum.Down:=(SummaryType=cstMin);
  dxGFM_Maximum.Down:=(SummaryType=cstMax);
  dxGFM_Count.Down:=(SummaryType=cstCount);
  dxGFM_Average.Down:=(SummaryType=cstAvg);
  dxGFM_Null.Down:=(SummaryType=cstNone);
  dxGFM_Count.Enabled := true ;
end;
procedure TfrmMain.acGHM_ImportFromExcelUpdate(Sender: TObject);
begin
  acGHM_ImportFromExcel.Enabled:=(FGrid is TdxDBGrid) and (fGrid as TdxDBGrid).IsImportFromXLS;
end;

procedure TfrmMain.acGFM_SummaryUpdate(Sender: TObject);
begin
  (sender as Taction).Enabled:=Assigned(fGridColumn.Field) and
    (fGridColumn.Field.DataType in [ftSmallint,
      ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftAutoInc]);
end;

procedure TfrmMain.acGFM_MinimumUpdate(Sender: TObject);
begin
  (sender as Taction).Enabled:=Assigned(fGridColumn.Field) and
    (fGridColumn.Field.DataType in [ftSmallint,
      ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftAutoInc]);
end;

procedure TfrmMain.acGFM_MaximumUpdate(Sender: TObject);
begin
  (sender as Taction).Enabled:=Assigned(fGridColumn.Field) and
    (fGridColumn.Field.DataType in [ftSmallint,
      ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftAutoInc]);

end;

procedure TfrmMain.acGFM_AverageUpdate(Sender: TObject);
begin
  (sender as Taction).Enabled:=Assigned(fGridColumn.Field) and
    (fGridColumn.Field.DataType in [ftSmallint,
      ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftAutoInc]);
end;

procedure TfrmMain.acGFM_MinimumExecute(Sender: TObject);
begin
  if FState='IsRowFooter' then
    DoRowFooterSummary(cstMin)
  else
    DoFooterSummary(cstMin);
  if fGrid is TdxDBGrid then
    TdxDBGrid(FGrid).RefreshGroupColumns
  else
    TCustomdxDBGrid(fGridColumn.TreeList).FullRefresh;
end;

procedure TfrmMain.acGFM_MaximumExecute(Sender: TObject);
begin
  if FState='IsRowFooter' then
    DoRowFooterSummary(cstMax)
  else
    DoFooterSummary(cstMax);
  if fGrid is TdxDBGrid then
    TdxDBGrid(FGrid).RefreshGroupColumns
  else
    TCustomdxDBGrid(fGridColumn.TreeList).FullRefresh;
end;

procedure TfrmMain.acGFM_CountExecute(Sender: TObject);
begin
   if FState='IsRowFooter' then
    DoRowFooterSummary(cstCount)
  else
    DoFooterSummary(cstCount);                           
  if fGrid is TdxDBGrid then
    TdxDBGrid(FGrid).RefreshGroupColumns
  else
    TCustomdxDBGrid(fGridColumn.TreeList).FullRefresh;
end;

procedure TfrmMain.acGFM_AverageExecute(Sender: TObject);
begin
 if FState='IsRowFooter' then
    DoRowFooterSummary(cstAvg)
  else
    DoFooterSummary(cstAvg);
  if fGrid is TdxDBGrid then
    TdxDBGrid(FGrid).RefreshGroupColumns
  else
    TCustomdxDBGrid(fGridColumn.TreeList).FullRefresh;

end;

procedure TfrmMain.acGFM_NullExecute(Sender: TObject);
begin
 if FState='IsRowFooter' then
    DoRowFooterSummary(cstNone)
  else
    DoFooterSummary(cstNone);
  if fGrid is TdxDBGrid then
    TdxDBGrid(FGrid).RefreshGroupColumns
  else
    TCustomdxDBGrid(fGridColumn.TreeList).FullRefresh;

end;

procedure TfrmMain.acGHM_ImportFromExcelExecute(Sender: TObject);
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
      ShowMessageUnicode(74);
      OpenDialog1.Free;
      Exit;
    end;
  end;
  Screen.Cursor := crDefault;
  OpenDialog1.Free;
  ShowMessageUnicode(39);
end;


procedure TfrmMain.acGHM_ImportUtilsExecute(Sender: TObject);
begin
  frmImportTool:=TfrmImportTool.Create(Application,FGrid);
  try
    frmImportTool.ShowModal;

    if Assigned(FGrid) and
       Assigned(FGrid.DataSource) and
       Assigned(FGrid.DataSource.DataSet) and
       (FGrid.DataSource.Dataset is TIBOQuery) and
       FGrid.DataSource.DataSet.Active then
      FGrid.DataSource.DataSet.Refresh;
  finally
    frmImportTool.Free;
  end;
end;

procedure TfrmMain.acXDToChucPhapLyExecute(Sender: TObject);
begin
  ShowModalForm(TfrmXDTochucPhapLy, frmXDTochucPhapLy);
end;

procedure TfrmMain.acPhuongAnLuongExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmLuong_Dinhnghia,frmLuong_Dinhnghia);
end;

procedure TfrmMain.acQuanLyBangLuongExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmLuong_Bangluong,frmLuong_bangluong);
end;

procedure TfrmMain.acKhoaDLLuongExecute(Sender: TObject);
begin
  ShowModalForm(TfrmLuong_KhoaLuong, frmLuong_KhoaLuong);
end;

procedure TfrmMain.acTinTucWebExecute(Sender: TObject);
begin
  ShowModalForm(TfrmDMTinTuc, frmDMTinTuc);
end;

procedure TfrmMain.acCauHinhChoPhepSuaExecute(Sender: TObject);
begin
  ShowModalForm(TfrmCauHinhSuaThongTinNhanVien, frmCauHinhSuaThongTinNhanVien);
end;

procedure TfrmMain.acCapNhatThongTinNVExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmCapNhatThongTinNV,frmCapNhatThongTinNV);
end;

procedure TfrmMain.acKhauTruThueKhacExecute(Sender: TObject);
begin
  ShowModalForm(TfrmKhauTruThueKhac, frmKhauTruThueKhac);
end;

procedure TfrmMain.acCauHinhDangKyPhepExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmCauHinh_DangKy_Phep, frmCauHinh_DangKy_Phep);
end;

procedure TfrmMain.acBaoHiem_BenhVienExecute(Sender: TObject);
begin
  ShowModalForm(TfrmBAOHIEM_BenhVien, frmBAOHIEM_BenhVien);
end;

procedure TfrmMain.acBaoHiem_DinhNghiaExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmBAOHIEM_DinhNghia,frmBAOHIEM_DinhNghia);
end;

procedure TfrmMain.acDuLieuBaoHiemExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmBAOHIEM_BangDuLieu,frmBAOHIEM_BangDuLieu);
end;

procedure TfrmMain.acBaoHiem_ChinhSachExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmBAOHIEM_ChinhSach,frmBAOHIEM_ChinhSach);
end;

procedure TfrmMain.acResetPassExecute(Sender: TObject);
begin
  ShowModalForm(TfrmUserWeb, frmUserWeb);
end;

procedure TfrmMain.acTheoDoiCongTacExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmBangTheoDoiCongTac,frmBangTheoDoiCongTac);
end;

procedure TfrmMain.acKhungLuongCTYExecute(Sender: TObject);
begin
  ShowModalForm(TfrmWageCompany, frmWageCompany);
end;

procedure TfrmMain.acTheoDoiNangLuongExecute(Sender: TObject);
begin
  ShowMDIForm(TfrmTheodoinangluong,frmTheodoinangluong);
end;

initialization
  RegisterClasses([TIcon, TMetafile, TBitmap, TJPEGImage, TGIFImage]);
end.

