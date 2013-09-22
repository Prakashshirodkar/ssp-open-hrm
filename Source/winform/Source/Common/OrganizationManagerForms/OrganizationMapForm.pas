//Added by THUYPTP
unit OrganizationMapForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxfDesigner,
  ElPgCtl, dxLayoutControl, cxControls, dxBar, dxorgchr, dxdborgc, DB,
  IBODataset, ExtCtrls, dxExEdtr, dxEdLib, dxDBELib, dxCntner, dxEditor,
  StdCtrls, ElCLabel, ElLabel, ActnList, ImgList, ElBtnCtl, ElPopBtn,
  dxBarExtItems, dxTL, dxDBCtrl, dxDBTL, ElToolbar, ElPanel, ComCtrls,
  ToolWin, dxDBGrid, dxPageControl, dxDBTLCl, dxGrClms, ElSplit,
  DateUtils, dxmdaset, ToolbarFrame;

type
  TfrmOrganizationMap = class(TfrmBase)
    pageMain: TElPageControl;
    tabSodoTochuc: TElTabSheet;
    tabCaytochuc: TElTabSheet;
    dxBarManager1: TdxBarManager;
    orgchartMain: TdxDbOrgChart;
    dsOrgMap: TDataSource;
    qryOrgMap: TIBOQuery;
    dxlcOrgMapLeftGroup_Root: TdxLayoutGroup;
    dxlcOrgMapLeft: TdxLayoutControl;
    Splitter1: TSplitter;
    qryOrgMapDEPT_NO: TWideStringField;
    qryOrgMapDEPT_NAME: TWideStringField;
    qryOrgMapP_DEPT_NO: TWideStringField;
    qryOrgMapDEPT_TYPE_NO: TWideStringField;
    qryOrgMapDEPT_TYPE_NAME: TWideStringField;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxlcOrgMapLeftItem1: TdxLayoutItem;
    dxDBSpinEdit2: TdxDBSpinEdit;
    dxlcOrgMapLeftItem2: TdxLayoutItem;
    dbimgITEM_SHAPE: TdxDBImageEdit;
    dxlcOrgMapLeftItem3: TdxLayoutItem;
    dbimgITEM_ALIGN: TdxDBImageEdit;
    dxlcOrgMapLeftItem4: TdxLayoutItem;
    dxlcOrgMapLeftGroup1: TdxLayoutGroup;
    btnITEM_COLOR: TdxButtonEdit;
    dxlcOrgMapLeftItem5: TdxLayoutItem;
    qryOrgMapITEM_HEIGHT: TIntegerField;
    qryOrgMapITEM_WIDTH: TIntegerField;
    qryOrgMapITEM_SHAPE: TIntegerField;
    qryOrgMapITEM_COLOR: TIntegerField;
    qryOrgMapITEM_ALIGN: TIntegerField;
    ColorDialog1: TColorDialog;
    chkLeft: TdxCheckEdit;
    dxlcOrgMapLeftItem6: TdxLayoutItem;
    chkRight: TdxCheckEdit;
    dxlcOrgMapLeftItem7: TdxLayoutItem;
    chkCenter: TdxCheckEdit;
    dxlcOrgMapLeftItem8: TdxLayoutItem;
    chkVertCenter: TdxCheckEdit;
    dxlcOrgMapLeftItem9: TdxLayoutItem;
    dxlcOrgMapLeftGroup2: TdxLayoutGroup;
    dxlcOrgMapLeftItem13: TdxLayoutItem;
    chkWrap: TdxCheckEdit;
    dxIndentX: TdxSpinEdit;
    dxlcOrgMapLeftItem10: TdxLayoutItem;
    dxIndentY: TdxSpinEdit;
    dxlcOrgMapLeftItem11: TdxLayoutItem;
    dxLineWidth: TdxSpinEdit;
    dxlcOrgMapLeftItem12: TdxLayoutItem;
    dxlcOrgMapLeftGroup6: TdxLayoutGroup;
    chkShowSelect: TdxCheckEdit;
    dxlcOrgMapLeftItem14: TdxLayoutItem;
    chkShowFocus: TdxCheckEdit;
    dxlcOrgMapLeftItem15: TdxLayoutItem;
    chkShowButton: TdxCheckEdit;
    dxlcOrgMapLeftItem16: TdxLayoutItem;
    chkCanDrag: TdxCheckEdit;
    dxlcOrgMapLeftItem17: TdxLayoutItem;
    btnBkColor: TdxButtonEdit;
    dxlcOrgMapLeftItem20: TdxLayoutItem;
    panelOrgMapHeader: TPanel;
    lblReportCaption: TElLabel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    paneOrgMapRight: TPanel;
    dxOrgMapPopup: TdxBarPopupMenu;
    ActionList1: TActionList;
    acFullExpand: TAction;
    acFullCollapse: TAction;
    acRotate: TAction;
    dxFullExpand: TdxBarButton;
    dxFullCollapse: TdxBarButton;
    dxShow3D: TdxBarButton;
    dxAnimated: TdxBarButton;
    dxRotate: TdxBarButton;
    imgAction: TImageList;
    dxlcOrgMapLeftGroup7: TdxLayoutGroup;
    dxlcOrgMapLeftGroup10: TdxLayoutGroup;
    dxlcOrgMapLeftGroup11: TdxLayoutGroup;
    dxlcOrgMapLeftGroup12: TdxLayoutGroup;
    dxlcOrgMapLeftGroup4: TdxLayoutGroup;
    dxlcOrgMapLeftGroup3: TdxLayoutGroup;
    dxlcOrgMapLeftGroup5: TdxLayoutGroup;
    panelOrgTreeMain: TPanel;
    tlOrgMap: TdxDBTreeList;
    tlOrgMapDEPT_NAME: TdxDBTreeListColumn;
    ActionList2: TActionList;
    acViewEmpList: TAction;
    ToolBar1: TToolBar;
    btnFullCollapse: TElPopupButton;
    imgEmpListOption: TdxImageEdit;
    btnFullExpand: TElPopupButton;
    btnNext: TElPopupButton;
    btnBack: TElPopupButton;
    ToolButton1: TToolButton;
    acBack: TAction;
    acNext: TAction;
    ToolButton2: TToolButton;
    acExpand: TAction;
    acCollapse: TAction;
    acRefresh: TAction;
    btnRefreshTree: TElPopupButton;
    gridEmpOrgInfo: TdxDBGrid;
    qryEmpOrgInfo: TIBOQuery;
    dsEmpOrgInfo: TDataSource;
    qryEmpOrgInfoITEM_ID: TWideStringField;
    qryEmpOrgInfoP_ITEM_ID: TWideStringField;
    qryEmpOrgInfoITEM_NAME: TWideStringField;
    qryEmpOrgInfoITEM_IMAGE_INDEX: TIntegerField;
    qryEmpOrgInfoITEM_BIRTHDATE: TDateField;
    qryEmpOrgInfoSTART_DATE: TDateField;
    qryEmpOrgInfoEND_DATE: TDateField;
    qryEmpOrgInfoITEM_STATE: TWideStringField;
    qryEmpOrgInfoITEM_IMAGE: TBlobField;
    qryEmpOrgInfoIMG_TYPE: TWideStringField;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    lblITEM_NAME: TElLabel;
    Image1: TImage;
    qryOrgMapDEPT_LOGO: TBlobField;
    qryOrgMapIMG_TYPE: TWideStringField;
    gridEmpOrgInfoITEM_ID: TdxDBGridColumn;
    gridEmpOrgInfoITEM_NAME: TdxDBGridColumn;
    gridEmpOrgInfoITEM_IMAGE_INDEX: TdxDBGridImageColumn;
    gridEmpOrgInfoSTART_DATE: TdxDBGridDateColumn;
    gridEmpOrgInfoEND_DATE: TdxDBGridDateColumn;
    imglItem_Type: TImageList;
    qryEmpOrgInfoITEM_DUTY: TWideStringField;
    gridEmpOrgInfoITEM_DUTY: TdxDBGridColumn;
    dxdbDeptLogo: TdxDBGraphicEdit;
    panelItemInfo: TElPanel;
    lblDEPT_NAME: TElLabel;
    qryEmpOrgInfoITEM_IS_MAIN: TIntegerField;
    gridEmpOrgInfoITEM_IS_MAIN: TdxDBGridCheckColumn;
    ElSplitter1: TElSplitter;
    dxOrgTreeMenus: TdxBarPopupMenu;
    dxChitietPhongban: TdxBarButton;
    dxChitietNhanvien: TdxBarButton;
    dxNV_QuatrinhCongtac: TdxBarButton;
    dxNV_TrinhdoNangluc: TdxBarButton;
    dxNV_HD_Hoso: TdxBarButton;
    dxNV_Luong_BHXH: TdxBarButton;
    dxNV_Congtac: TdxBarButton;
    dxNV_Khenthuong_Kyluat: TdxBarButton;
    dxNV_Thidua_Daotao: TdxBarButton;
    dxNV_Tieusu: TdxBarButton;
    dxNV_InHoso: TdxBarButton;
    dxChucvu: TdxBarButton;
    acThongtinDonvi: TAction;
    acThongtinChucvu: TAction;
    acThongtinNhanvien: TAction;
    acThongtinNangluc: TAction;
    acThongtinQuatrinhCongtac: TAction;
    acThongtinHopdong_Hoso: TAction;
    acThongtinLuong_BHXH: TAction;
    acThongtinCongtac: TAction;
    acThongtinKhen_Kyluat: TAction;
    acThongtinThidua: TAction;
    acThongtinTieusu: TAction;
    acInHoso: TAction;
    dxEmpOrgInfo: TdxBarPopupMenu;
    acThongtinChucvu_Tree: TAction;
    acThongtinDonvi_Tree: TAction;
    dxThongtinDonvi_Phongban_Tree: TdxBarButton;
    dxThongtin_Chucvu_Tree: TdxBarButton;
    acChitiet: TAction;
    pageOrgInfo: TElPageControl;
    tabListInfo: TElTabSheet;
    qryOrgMapENDED_DATE: TDateField;
    tlOrgMapENDED_DATE: TdxDBTreeListDateColumn;
    chkViewInvalidDept: TdxCheckEdit;
    tabNhapLieu: TElTabSheet;
    tlToChuc_NhanVien: TdxDBTreeList;
    qryToChuc_NhanVien: TIBOQuery;
    dsToChuc_NhanVien: TDataSource;
    qryToChuc_NhanVienITEM_NO: TWideStringField;
    qryToChuc_NhanVienITEM_NAME: TWideStringField;
    qryToChuc_NhanVienITEM_DISPLAY_INDEX: TIntegerField;
    qryToChuc_NhanVienPOSITION_NO: TWideStringField;
    qryToChuc_NhanVienDEPT_NO: TWideStringField;
    qryToChuc_NhanVienTITLE_NO: TWideStringField;
    qryToChuc_NhanVienTITLE_NAME: TWideStringField;
    qryToChuc_NhanVienASSIGNED_DATE: TDateField;
    qryToChuc_NhanVienDISMISS_DATE: TDateField;
    qryToChuc_NhanVienP_ITEM_NO: TWideStringField;
    qryToChuc_NhanVienPHAN_LOAI: TWideStringField;
    tlToChuc_NhanVienASSIGNED_DATE: TdxDBTreeListDateColumn;
    tlToChuc_NhanVienDISMISS_DATE: TdxDBTreeListDateColumn;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxDenNgay: TdxDateEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    qryToChuc_NhanVienICON_INDEX: TIntegerField;
    imglDeptTree: TImageList;
    memToChuc_NhanVien: TdxMemData;
    memToChuc_NhanVienITEM_NO: TWideStringField;
    memToChuc_NhanVienITEM_NAME: TWideStringField;
    memToChuc_NhanVienPOSITION_NO: TWideStringField;
    memToChuc_NhanVienDEPT_NO: TWideStringField;
    memToChuc_NhanVienTITLE_NO: TWideStringField;
    memToChuc_NhanVienTITLE_NAME: TWideStringField;
    memToChuc_NhanVienASSIGNED_DATE: TDateField;
    memToChuc_NhanVienDISMISS_DATE: TDateField;
    memToChuc_NhanVienP_ITEM_NO: TWideStringField;
    memToChuc_NhanVienPHAN_LOAI: TWideStringField;
    tlToChuc_NhanVienITEM_NO: TdxDBTreeListColumn;
    tlToChuc_NhanVienPOSITION_NO: TdxDBTreeListColumn;
    tlToChuc_NhanVienDEPT_NO: TdxDBTreeListColumn;
    tlToChuc_NhanVienTITLE_NO: TdxDBTreeListColumn;
    tlToChuc_NhanVienPHAN_LOAI: TdxDBTreeListColumn;
    qryInsertDepartment: TIBOQuery;
    tlToChuc_NhanVienP_ITEM_NO: TdxDBTreeListColumn;
    ActionList3: TActionList;
    acThemPhongBan: TAction;
    acThemNhanVien: TAction;
    btnInsert: TElPopupButton;
    btnEmployee: TElPopupButton;
    btnDelete: TElPopupButton;
    btnSave: TElPopupButton;
    btnCancel: TElPopupButton;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxLayoutControl2Item7: TdxLayoutItem;
    acLuu: TAction;
    acKhongLuu: TAction;
    qryUpdateDepartment: TIBOQuery;
    dxLayoutControl2Item8: TdxLayoutItem;
    btnInsertChild: TElPopupButton;
    acThemPBCapDuoi: TAction;
    memToChuc_NhanVienEMPLOYEE_NO: TWideStringField;
    qryToChuc_NhanVienEMPLOYEE_NO: TWideStringField;
    tlToChuc_NhanVienTITLE_NAME: TdxDBTreeListMRUColumn;
    tlToChuc_NhanVienITEM_NAME: TdxDBTreeListMRUColumn;
    qryKiemTraNhanVien: TIBOQuery;
    qryKiemTraNhanVienEMPLOYEE_NO: TWideStringField;
    tlToChuc_NhanVienEMPLOYEE_NO: TdxDBTreeListColumn;
    qryInsertEmployee: TIBOQuery;
    qryKiemTraChucVu: TIBOQuery;
    qryKiemTraChucVuTITLE_NO: TWideStringField;
    qryKiemTraViTri: TIBOQuery;
    qryKiemTraViTriPOSITION_NO: TWideStringField;
    qryInsertTitle: TIBOQuery;
    qryInsertPosition: TIBOQuery;
    qryInsertAssigment: TIBOQuery;
    qryUpdateAssigment: TIBOQuery;
    qryToChuc_NhanVienCURRENT_POSITION_NO: TWideStringField;
    qryToChuc_NhanVienCURRENT_ASSIGNED_DATE: TDateField;
    qryToChuc_NhanVienCURRENT_TITLE_NAME: TWideStringField;
    memToChuc_NhanVienCURRENT_POSITION_NO: TWideStringField;
    memToChuc_NhanVienCURRENT_TITLE_NAME: TWideStringField;
    memToChuc_NhanVienCURRENT_ASSIGNED_DATE: TDateField;
    tlToChuc_NhanVienCURRENT_POSITION_NO: TdxDBTreeListColumn;
    tlToChuc_NhanVienCURRENT_TITLE_NAME: TdxDBTreeListColumn;
    tlToChuc_NhanVienCURRENT_ASSIGNED_DATE: TdxDBTreeListDateColumn;
    dxLayoutControl2Item9: TdxLayoutItem;
    btnXemThongTin: TElPopupButton;
    acXemThongTin: TAction;
    acXoa: TAction;
    qryKTXoaDonVi: TIBOQuery;
    qryKTXoaDonViSO_NV: TIntegerField;
    qryDeleteDepartment: TIBOQuery;
    qryDeleteEmployee: TIBOQuery;
    qryGetAssID: TIBOQuery;
    qryGetAssIDASS_KEY_ID: TIntegerField;
    dxLayoutControl2Item10: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl2Item11: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    acBungDuLieu: TAction;
    acThuDuLieu: TAction;
    dxSelectDept: TdxPopupEdit;
    dxViewChild: TdxCheckEdit;
    dxLayoutControl2Item12: TdxLayoutItem;
    dxLayoutControl2Item13: TdxLayoutItem;
    qryExecute: TIBOQuery;
    qryToChuc_NhanVienDECISION_NO: TWideStringField;
    memToChuc_NhanVienDECISION_NO: TWideStringField;
    tlToChuc_NhanVienDECISION_NO: TdxDBTreeListColumn;
    dxLayoutControl2Item14: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    acFastOM_Tool: TAction;
    qryLogData: TIBOQuery;
    qryToChuc_NhanVienDEPT_NAME: TWideStringField;
    memToChuc_NhanVienDEPT_NAME: TWideStringField;
    qryToChuc_NhanVienIS_MAIN_POSITION: TSmallintField;
    memToChuc_NhanVienIS_MAIN_POSITION: TSmallintField;
    tlToChuc_NhanVienIS_MAIN_POSITION: TdxDBTreeListCheckColumn;
    qryGetMainPositionList: TIBOQuery;
    qryGetMainPositionListPOSITION_NO: TWideStringField;
    qryGetMainPositionListTITLE_NAME: TWideStringField;
    qryGetMainPositionListDEPT_NAME: TWideStringField;
    qryGetMainPositionListASSIGNED_DATE: TDateField;
    qryGetMainPositionListDECISION_NO: TWideStringField;
    qryKiemTraDonVi: TIBOQuery;
    qryKiemTraDonViDEPT_NO: TWideStringField;
    memToChuc_NhanVienICON_INDEX: TIntegerField;
    memToChuc_NhanVienITEM_DISPLAY_INDEX: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnITEM_COLORButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qryOrgMapAfterScroll(DataSet: TDataSet);
    procedure qryOrgMapITEM_HEIGHTChange(Sender: TField);
    procedure qryOrgMapITEM_WIDTHChange(Sender: TField);
    procedure qryOrgMapITEM_SHAPEChange(Sender: TField);
    procedure qryOrgMapITEM_COLORChange(Sender: TField);
    procedure qryOrgMapITEM_ALIGNChange(Sender: TField);
    procedure chkLeftChange(Sender: TObject);
    procedure chkRightChange(Sender: TObject);
    procedure chkCenterChange(Sender: TObject);
    procedure chkVertCenterChange(Sender: TObject);
    procedure chkWrapChange(Sender: TObject);
    procedure chkShowSelectChange(Sender: TObject);
    procedure chkShowFocusChange(Sender: TObject);
    procedure chkShowButtonChange(Sender: TObject);
    procedure chkCanDragChange(Sender: TObject);
    procedure dxIndentXChange(Sender: TObject);
    procedure dxIndentYChange(Sender: TObject);
    procedure dxLineWidthChange(Sender: TObject);
    procedure btnBkColorButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure acFullExpandExecute(Sender: TObject);
    procedure acFullCollapseExecute(Sender: TObject);
    procedure acRotateExecute(Sender: TObject);
    procedure orgchartMainMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxShow3DClick(Sender: TObject);
    procedure dxAnimatedClick(Sender: TObject);
    procedure dxOrgMapPopupPopup(Sender: TObject);
    procedure acViewEmpListExecute(Sender: TObject);
    procedure qryEmpOrgInfoAfterScroll(DataSet: TDataSet);
    procedure gridEmpOrgInfoCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: WideString; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure tlOrgMapChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure acBackUpdate(Sender: TObject);
    procedure acBackExecute(Sender: TObject);
    procedure acNextExecute(Sender: TObject);
    procedure acNextUpdate(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acExpandExecute(Sender: TObject);
    procedure acCollapseExecute(Sender: TObject);
    procedure qryEmpOrgInfoBeforeOpen(DataSet: TDataSet);
    procedure imgEmpListOptionChange(Sender: TObject);
    procedure acThongtinDonviUpdate(Sender: TObject);
    procedure acThongtinNhanvienUpdate(Sender: TObject);
    procedure acThongtinDonviExecute(Sender: TObject);
    procedure gridEmpOrgInfoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acThongtinChucvuExecute(Sender: TObject);
    procedure acThongtinNhanvienExecute(Sender: TObject);
    procedure tlOrgMapMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acThongtinChucvu_TreeExecute(Sender: TObject);
    procedure acThongtinDonvi_TreeExecute(Sender: TObject);
    procedure acThongtinDonvi_TreeUpdate(Sender: TObject);
    procedure acChitietExecute(Sender: TObject);
    procedure acChitietUpdate(Sender: TObject);
    procedure tlOrgMapCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure acThongtinChucvuUpdate(Sender: TObject);
    procedure chkViewInvalidDeptChange(Sender: TObject);
    procedure tlToChuc_NhanVienGetImageIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure tlToChuc_NhanVienGetSelectedIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure tlToChuc_NhanVienCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure memToChuc_NhanVienNewRecord(DataSet: TDataSet);
    procedure memToChuc_NhanVienBeforePost(DataSet: TDataSet);
    procedure acThemPhongBanExecute(Sender: TObject);
    procedure acKhongLuuExecute(Sender: TObject);
    procedure acKhongLuuUpdate(Sender: TObject);
    procedure acLuuUpdate(Sender: TObject);
    procedure acLuuExecute(Sender: TObject);
    procedure acThemPBCapDuoiExecute(Sender: TObject);
    procedure acThemNhanVienExecute(Sender: TObject);
    procedure tlToChuc_NhanVienITEM_NAMEValidate(Sender: TObject;
      var ErrorText: WideString; var Accept: Boolean);
    procedure memToChuc_NhanVienAfterPost(DataSet: TDataSet);
    procedure tlToChuc_NhanVienChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure memToChuc_NhanVienBeforeEdit(DataSet: TDataSet);
    procedure acXemThongTinExecute(Sender: TObject);
    procedure acXoaExecute(Sender: TObject);
    procedure tlToChuc_NhanVienEndDrag(Sender, Target: TObject; X,
      Y: Integer);
    procedure acBungDuLieuExecute(Sender: TObject);
    procedure acThuDuLieuExecute(Sender: TObject);
    procedure dxSelectDeptInitPopup(Sender: TObject);
    procedure dxSelectDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectDeptChange(Sender: TObject);
    procedure acFastOM_ToolExecute(Sender: TObject);
    procedure tlToChuc_NhanVienDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure acThemNhanVienUpdate(Sender: TObject);
    procedure acXoaUpdate(Sender: TObject);
    procedure tlToChuc_NhanVienKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure memToChuc_NhanVienBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    isShow3D, isAnimated, startHistory: boolean;
    wsHistory: TStrings;
    curPosition: integer;
    stateHistory: string;
    F_DEPT_NO : widestring;
    PHAN_LOAI, P_ITEM_NO, P_ITEM_NAME : Widestring;
    OLD_EMPLOYEE_NO, OLD_DEPT_NO, OLD_DEPT_NAME, OLD_TITLE_NAME,NEW_DEPT_NAME : Widestring;
    OLD_IS_MAIN_POSITION: integer;
    F_StrList: TStringList;
    THEM_MOI, SUA_THONGTIN, COTHEM_NV: Boolean;
    OLD_ASSIGNED_DATE : TDate; 

    procedure LoadDisplayData;

  public
    { Public declarations }
  end;

var
  frmOrganizationMap: TfrmOrganizationMap;

implementation

uses MainDM, MainUnit, DeptListForm, SSP_Menus, PositionListForm,
  EmployeeListForm,UnicodeConvert, PopupMainForm, SSP_Library,
  FastOM_ToolForm, CanhbaoVitriCTForm;

{$R *.dfm}

procedure TfrmOrganizationMap.FormCreate(Sender: TObject);
begin
  wsHistory := TStringList.Create;
  imgEmpListOption.Text := '0';
  //================================================================
  dbimgITEM_SHAPE.Descriptions.Add(Utf8Decode('Chữ nhật'));
  dbimgITEM_SHAPE.Descriptions.Add(Utf8Decode('Chữ nhật tròn'));
  dbimgITEM_SHAPE.Descriptions.Add(Utf8Decode('Hình elip'));
  dbimgITEM_SHAPE.Descriptions.Add(Utf8Decode('Hình thoi'));

  dbimgITEM_SHAPE.Values.Add('0');
  dbimgITEM_SHAPE.Values.Add('1');
  dbimgITEM_SHAPE.Values.Add('2');
  dbimgITEM_SHAPE.Values.Add('3');

  dbimgITEM_ALIGN.Descriptions.Add(Utf8Decode('Canh trái'));
  dbimgITEM_ALIGN.Descriptions.Add(Utf8Decode('Canh giữa'));
  dbimgITEM_ALIGN.Descriptions.Add(Utf8Decode('Canh phải'));

  dbimgITEM_ALIGN.Values.Add('0');
  dbimgITEM_ALIGN.Values.Add('1');
  dbimgITEM_ALIGN.Values.Add('2');
  {
    dbimgITEM_SHAPE.ImageIndexes.Add('0');
    dbimgITEM_SHAPE.ImageIndexes.Add('1');
    dbimgITEM_SHAPE.ImageIndexes.Add('2');
    dbimgITEM_SHAPE.ImageIndexes.Add('3');

    dbimgITEM_ALIGN.ImageIndexes.Add('0');
    dbimgITEM_ALIGN.ImageIndexes.Add('1');
    dbimgITEM_ALIGN.ImageIndexes.Add('2');
  }

  imgEmpListOption.Descriptions.Add(Utf8Decode('Đang làm việc'));
  imgEmpListOption.Descriptions.Add(Utf8Decode('Đã thôi làm việc'));
  imgEmpListOption.Descriptions.Add(Utf8Decode('Tất cả'));
  imgEmpListOption.Values.Add('0');
  imgEmpListOption.Values.Add('1');
  imgEmpListOption.Values.Add('2');

  inherited;
  // khoi tao organization chart
  orgchartMain.ColorFieldName := 'ITEM_COLOR';
  orgchartMain.WidthFieldName := 'ITEM_WIDTH';
  orgchartMain.HeightFieldName := 'ITEM_HEIGHT';
  orgchartMain.ShapeFieldName := 'ITEM_SHAPE';
  orgchartMain.ChAlignFieldName := 'ITEM_ALIGN';
  orgchartMain.Options := orgchartMain.Options + [ocShowDrag];

  dxIndentX.IntValue := 16;
  dxIndentY.IntValue := 16;
  dxLineWidth.IntValue := 1;
  chkLeft.Checked := false;
  chkRight.Checked := false;
  chkCenter.Checked := true;
  chkVertCenter.Checked := true;
  chkShowSelect.Checked := false;
  chkShowFocus.Checked := true;
  chkShowButton.Checked := true;
  chkCanDrag.Checked := false;
  btnBkColor.Color := orgchartMain.Color;

  //===============================================
  isShow3D := true;
  isAnimated := true;
  pageMain.ActivePage := tabCaytochuc;
  pageOrgInfo.ActivePage := tabListInfo;
  pageOrgInfo.ShowTabs := false;
  acRefresh.Execute;
  qryEmpOrgInfo.Open;
  //===============================================
  orgchartMain.FullExpand;
  tlOrgMap.FullExpand;
  panelItemInfo.Color := clWhite;
  //===============================================

  //===============================================
  // Added by THUYPTP - 18/02/2009
  // Them tab Nhap lieu To chuc - nh�n vien
  //===============================================
  dxDenNgay.Date := today;
  THEM_MOI := False;
  SUA_THONGTIN := false;
  COTHEM_NV := false; 
  LoadDisplayData;

  F_StrList := TStringList.Create;
end;

procedure TfrmOrganizationMap.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryOrgMap.Close;
  Action := caFree;
  frmOrganizationMap := nil;
  wsHistory.Free;
  F_StrList.Free;
end;

procedure TfrmOrganizationMap.btnITEM_COLORButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  ColorDialog1.Color := qryOrgMapITEM_COLOR.Value;
  if (ColorDialog1.Execute) then
  begin
    if not (qryOrgMap.State in [dsEdit, dsInsert]) then
      qryOrgMap.Edit;
    qryOrgMapITEM_COLOR.Value := ColorDialog1.Color;
    btnITEM_COLOR.Color := ColorDialog1.Color;
    orgchartMain.Selected.Color := ColorDialog1.Color;
  end;
end;

procedure TfrmOrganizationMap.qryOrgMapAfterScroll(DataSet: TDataSet);
begin
  inherited;
  btnITEM_COLOR.Color := qryOrgMapITEM_COLOR.Value;
  if pageOrgInfo.ActivePage = tabListInfo then
    lblDEPT_NAME.Caption := qryOrgMapDEPT_NAME.Value;

end;

procedure TfrmOrganizationMap.qryOrgMapITEM_HEIGHTChange(Sender: TField);
begin
  inherited;
  orgchartMain.Selected.Height := qryOrgMapITEM_HEIGHT.Value;
end;

procedure TfrmOrganizationMap.qryOrgMapITEM_WIDTHChange(Sender: TField);
begin
  inherited;
  orgchartMain.Selected.Width := qryOrgMapITEM_WIDTH.Value;
end;

procedure TfrmOrganizationMap.qryOrgMapITEM_SHAPEChange(Sender: TField);
begin
  inherited;
  orgchartMain.Selected.Shape := TdxOcShape(qryOrgMapITEM_SHAPE.Value);
end;

procedure TfrmOrganizationMap.qryOrgMapITEM_COLORChange(Sender: TField);
begin
  inherited;
  orgchartMain.Selected.Color := qryOrgMapITEM_COLOR.Value;
end;

procedure TfrmOrganizationMap.qryOrgMapITEM_ALIGNChange(Sender: TField);
begin
  inherited;
  orgchartMain.Selected.ChildAlign := TdxOcNodeAlign(qryOrgMapITEM_ALIGN.Value);
end;

procedure TfrmOrganizationMap.chkLeftChange(Sender: TObject);
begin
  inherited;
  if chkLeft.Checked then
    orgchartMain.EditMode := orgchartMain.EditMode + [emLeft]
  else
    orgchartMain.EditMode := orgchartMain.EditMode - [emLeft]
end;

procedure TfrmOrganizationMap.chkRightChange(Sender: TObject);
begin
  inherited;
  if chkRight.Checked then
    orgchartMain.EditMode := orgchartMain.EditMode + [emRight]
  else
    orgchartMain.EditMode := orgchartMain.EditMode - [emRight]
end;

procedure TfrmOrganizationMap.chkCenterChange(Sender: TObject);
begin
  inherited;
  if chkCenter.Checked then
    orgchartMain.EditMode := orgchartMain.EditMode + [emCenter]
  else
    orgchartMain.EditMode := orgchartMain.EditMode - [emCenter]
end;

procedure TfrmOrganizationMap.chkVertCenterChange(Sender: TObject);
begin
  inherited;
  if chkVertCenter.Checked then
    orgchartMain.EditMode := orgchartMain.EditMode + [emVCenter]
  else
    orgchartMain.EditMode := orgchartMain.EditMode - [emVCenter]
end;

procedure TfrmOrganizationMap.chkWrapChange(Sender: TObject);
begin
  inherited;
  if chkWrap.Checked then
    orgchartMain.EditMode := orgchartMain.EditMode + [emWrap]
  else
    orgchartMain.EditMode := orgchartMain.EditMode - [emWrap]
end;

procedure TfrmOrganizationMap.chkShowSelectChange(Sender: TObject);
begin
  inherited;
  if chkShowSelect.Checked then
    orgchartMain.Options := orgchartMain.Options + [ocSelect]
  else
    orgchartMain.Options := orgchartMain.Options - [ocSelect]
end;

procedure TfrmOrganizationMap.chkShowFocusChange(Sender: TObject);
begin
  inherited;
  if chkShowFocus.Checked then
    orgchartMain.Options := orgchartMain.Options + [ocFocus]
  else
    orgchartMain.Options := orgchartMain.Options - [ocFocus]
end;

procedure TfrmOrganizationMap.chkShowButtonChange(Sender: TObject);
begin
  inherited;
  if chkShowButton.Checked then
    orgchartMain.Options := orgchartMain.Options + [ocButtons]
  else
    orgchartMain.Options := orgchartMain.Options - [ocButtons]
end;

procedure TfrmOrganizationMap.chkCanDragChange(Sender: TObject);
begin
  inherited;
  if chkCanDrag.Checked then
    orgchartMain.Options := orgchartMain.Options + [ocCanDrag]
  else
    orgchartMain.Options := orgchartMain.Options - [ocCanDrag]
end;

procedure TfrmOrganizationMap.dxIndentXChange(Sender: TObject);
begin
  inherited;
  orgchartMain.IndentX := dxIndentX.IntValue;
end;

procedure TfrmOrganizationMap.dxIndentYChange(Sender: TObject);
begin
  inherited;
  orgchartMain.IndentY := dxIndentY.IntValue;
end;

procedure TfrmOrganizationMap.dxLineWidthChange(Sender: TObject);
begin
  inherited;
  orgchartMain.LineWidth := dxLineWidth.IntValue;
end;

procedure TfrmOrganizationMap.btnBkColorButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  ColorDialog1.Color := orgchartMain.Color;
  if ColorDialog1.Execute then
  begin
    orgchartMain.Color := ColorDialog1.Color;
    btnBkColor.Color := ColorDialog1.Color;
  end;
end;

procedure TfrmOrganizationMap.acFullExpandExecute(Sender: TObject);
begin
  inherited;
  orgchartMain.FullExpand;
end;

procedure TfrmOrganizationMap.acFullCollapseExecute(Sender: TObject);
begin
  inherited;
  orgchartMain.FullCollapse;
end;

procedure TfrmOrganizationMap.acRotateExecute(Sender: TObject);
begin
  inherited;
  orgchartMain.Rotated := not orgchartMain.Rotated;
end;

procedure TfrmOrganizationMap.orgchartMainMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (Button = mbRight) then
    dxOrgMapPopup.PopupFromCursorPos;
end;

procedure TfrmOrganizationMap.dxShow3DClick(Sender: TObject);
begin
  inherited;
  isShow3D := not isShow3D;
  if dxShow3D.Down then
    orgchartMain.Options := orgchartMain.Options + [ocRect3D]
  else
    orgchartMain.Options := orgchartMain.Options - [ocRect3D]
end;

procedure TfrmOrganizationMap.dxAnimatedClick(Sender: TObject);
begin
  inherited;
  isAnimated := not isAnimated;
  if dxAnimated.Down then
    orgchartMain.Options := orgchartMain.Options + [ocAnimate]
  else
    orgchartMain.Options := orgchartMain.Options - [ocAnimate]
end;

procedure TfrmOrganizationMap.dxOrgMapPopupPopup(Sender: TObject);
begin
  inherited;
  dxShow3D.Down := isShow3D;
  dxAnimated.Down := isAnimated;
end;

procedure TfrmOrganizationMap.acViewEmpListExecute(Sender: TObject);
begin
  inherited;
  ShowMessage('aaaaaaaaaaaaaaaaaaaaa');
end;

procedure TfrmOrganizationMap.qryEmpOrgInfoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  lblITEM_NAME.Caption := qryEmpOrgInfoITEM_NAME.Value;
end;

procedure TfrmOrganizationMap.gridEmpOrgInfoCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: WideString; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
begin
  inherited;
  try
    if ANode.Values[gridEmpOrgInfoITEM_IMAGE_INDEX.Index] = 2 then
    begin
      AFont.Style := AFont.Style + [fsBold];
      if VarToStr(ANode.Values[gridEmpOrgInfoEND_DATE.Index]) = '' then
        AFont.Color := clBlue
      else
        AFont.Color := clRed;
    end
    else
    begin
      AFont.Style := AFont.Style - [fsBold];
      if VarToStr(ANode.Values[gridEmpOrgInfoEND_DATE.Index]) = '' then
        AFont.Color := clBlack
      else
        AFont.Color := clRed;
    end
  except
  end;
end;

procedure TfrmOrganizationMap.tlOrgMapChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
var
  i: integer;
begin
  inherited;
  if not startHistory then exit;
  if stateHistory <> 'BROWSE' then exit;
  if curPosition >= wsHistory.Count - 1 then
    curPosition := wsHistory.Add(IntToStr(qryOrgMap.RecNo))
  else
    if (curPosition >= 0) and (curPosition < wsHistory.Count - 1) then
  begin
    for i := wsHistory.Count - 1 downto curPosition + 1 do
      wsHistory.Delete(i);
    curPosition := wsHistory.Add(IntToStr(qryOrgMap.RecNo));
  end
end;

procedure TfrmOrganizationMap.acBackUpdate(Sender: TObject);
begin
  inherited;
  acBack.Enabled := (curPosition > 0) and (curPosition < wsHistory.Count);
end;

procedure TfrmOrganizationMap.acBackExecute(Sender: TObject);
begin
  inherited;

  if qryOrgMap.RecordCount <= 0 then exit;
  stateHistory := 'BACK';
  qryOrgMap.DisableControls;
  qryOrgMap.First;
  Dec(curPosition);
  qryOrgMap.MoveBy(StrToInt(wsHistory.Strings[curPosition]) - 1);
  qryOrgMap.EnableControls;
  stateHistory := 'BROWSE';
end;

procedure TfrmOrganizationMap.acNextExecute(Sender: TObject);
begin
  inherited;
  if qryOrgMap.RecordCount <= 0 then exit;
  stateHistory := 'NEXT';
  qryOrgMap.DisableControls;
  qryOrgMap.First;
  Inc(curPosition);
  qryOrgMap.MoveBy(StrToInt(wsHistory.Strings[curPosition]) - 1);
  qryOrgMap.EnableControls;
  stateHistory := 'BROWSE';
end;

procedure TfrmOrganizationMap.acNextUpdate(Sender: TObject);
begin
  inherited;
  acNExt.Enabled := (curPosition >= 0) and (curPosition < wsHistory.Count - 1);
end;

procedure TfrmOrganizationMap.acRefreshExecute(Sender: TObject);
begin
  inherited;
  startHistory := false;
  curPosition := -1;
  wsHistory.Clear;
  with qryOrgMap do
  begin
    DisableControls;
    if Active then
      Close;
    if chkViewInvalidDept.Checked then
      SQLWhere.Clear
    else
      SQLWhere.Text:='where ENDED_DATE is null';
    Prepare;  
    Open;
    EnableControls;
  end;
  startHistory := true;
  wsHistory.Add(IntToStr(qryOrgMap.RecNo));
  curPosition := 0;
  stateHistory := 'BROWSE';

end;

procedure TfrmOrganizationMap.acExpandExecute(Sender: TObject);
begin
  inherited;
  tlOrgMap.FullExpand;
end;

procedure TfrmOrganizationMap.acCollapseExecute(Sender: TObject);
begin
  inherited;
//  ToolBar1.Color := clRed;
  tlOrgMap.FullCollapse;
end;

procedure TfrmOrganizationMap.qryEmpOrgInfoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if imgEmpListOption.Text = '0' then
    qryEmpOrgInfo.SQLWhere.Text := 'where ITEM_STATE=''WORK'''
  else
    if imgEmpListOption.Text = '1' then
    qryEmpOrgInfo.SQLWhere.Text := 'where ITEM_STATE=''EXPIRED'''
  else
    qryEmpOrgInfo.SQLWhere.Clear;
  dmMain.DefOnBeforeOpen(qryEmpOrgInfo);
end;

procedure TfrmOrganizationMap.imgEmpListOptionChange(Sender: TObject);
begin
  inherited;
  with qryEmpOrgInfo do
  begin
    DisableControls;
    if Active then Close;
    Open;
    EnableControls;
  end;
end;

procedure TfrmOrganizationMap.acThongtinDonviUpdate(Sender: TObject);
begin
  inherited;
  acThongtinDonvi.Enabled := (qryEmpOrgInfoITEM_IMAGE_INDEX.Value = 2);
end;

procedure TfrmOrganizationMap.acThongtinNhanvienUpdate(Sender: TObject);
begin
  inherited;
  acThongtinNhanvien.Enabled := (qryEmpOrgInfo.IsEmpty = false) and
    (qryEmpOrgInfoITEM_IMAGE_INDEX.Value < 2);
  acThongtinNangluc.Enabled := acThongtinNhanvien.Enabled;
  acThongtinQuatrinhCongtac.Enabled := acThongtinNhanvien.Enabled;
  acThongtinHopdong_Hoso.Enabled := acThongtinNhanvien.Enabled;
  acThongtinLuong_BHXH.Enabled := acThongtinNhanvien.Enabled;
  acThongtinCongtac.Enabled := acThongtinNhanvien.Enabled;
  acThongtinKhen_Kyluat.Enabled := acThongtinNhanvien.Enabled;
  acThongtinThidua.Enabled := acThongtinNhanvien.Enabled;
  acThongtinTieusu.Enabled := acThongtinNhanvien.Enabled;
  acInHoso.Enabled := acThongtinNhanvien.Enabled;

end;

procedure TfrmOrganizationMap.acThongtinDonviExecute(Sender: TObject);
var
  bookmark: TBookmark;
begin
  inherited;
  try
    bookmark := qryOrgMap.GetBookmark;
    ViewDepartment(qryEmpOrgInfoITEM_ID.Value);
    qryOrgMap.Refresh;
    qryOrgMap.GotoBookmark(bookmark);
  except
  end
end;

procedure TfrmOrganizationMap.gridEmpOrgInfoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (Button = mbRight) then
  begin
    if frmMain.ShowGridMenus(TdxDBGrid(Sender)) then exit
    else dxEmpOrgInfo.PopupFromCursorPos;
  end;
end;

procedure TfrmOrganizationMap.acThongtinChucvuExecute(Sender: TObject);
var
  bookmark: TBookmark;
begin
  inherited;
  try
    bookmark := qryEmpOrgInfo.GetBookmark;
    ViewPositionInDept(qryEmpOrgInfoITEM_ID.Value,
      qryEmpOrgInfoITEM_NAME.Value);
    qryEmpOrgInfo.Refresh;
    qryEmpOrgInfo.GotoBookmark(bookmark);
  except
  end
end;

procedure TfrmOrganizationMap.acThongtinNhanvienExecute(Sender: TObject);
begin
  inherited;
  ViewEmployeeInfo(qryEmpOrgInfoITEM_ID.Value, 'TT_CHUNG');
end;

procedure TfrmOrganizationMap.tlOrgMapMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (Button = mbRight) then
  begin
    if frmMain.ShowGridMenus(TdxDBGrid(Sender)) then exit else
      dxOrgTreeMenus.PopupFromCursorPos;
  end;
end;

procedure TfrmOrganizationMap.acThongtinChucvu_TreeExecute(
  Sender: TObject);
var
  bookmark: TBookmark;
begin
  inherited;
  try
    bookmark := qryOrgMap.GetBookmark;
    ViewPositionInDept(qryOrgMapDEPT_NO.Value, qryOrgMapDEPT_NAME.Value);
    qryOrgMap.Refresh;
    qryOrgMap.GotoBookmark(bookmark);
  except
  end
end;

procedure TfrmOrganizationMap.acThongtinDonvi_TreeExecute(Sender: TObject);
var
  bookmark: TBookmark;
begin
  inherited;
  try
    bookmark := qryOrgMap.GetBookmark;
    ViewDepartment(qryOrgMapDEPT_NO.Value);
    qryOrgMap.Refresh;
    qryOrgMap.GotoBookmark(bookmark);
  except
  end
end;

procedure TfrmOrganizationMap.acThongtinDonvi_TreeUpdate(Sender: TObject);
begin
  inherited;
  {  acThongtinDonvi_Tree.Enabled:=not qryOrgMap.IsEmpty;
    acThongtinChucvu_tree.Enabled:=acThongtinDonvi_Tree.Enabled;
   }
end;

procedure TfrmOrganizationMap.acChitietExecute(Sender: TObject);
begin
  inherited;
  if qryEmpOrgInfoITEM_IMAGE_INDEX.Value = 2 then
    acThongtinDonvi.Execute
  else
    acThongtinNhanvien.Execute;
end;

procedure TfrmOrganizationMap.acChitietUpdate(Sender: TObject);
begin
  inherited;
  acChitiet.Enabled := not qryEmpOrgInfo.IsEmpty;
end;

procedure TfrmOrganizationMap.tlOrgMapCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    if VarToStr(ANode.Values[tlOrgMapENDED_DATE.Index]) = '' then
      AFont.Color := clBlack
    else
      AFont.Color := clRed;
  except
  end
end;

procedure TfrmOrganizationMap.acThongtinChucvuUpdate(Sender: TObject);
begin
  inherited;
  acThongtinChucvu.Enabled := (qryEmpOrgInfoITEM_IMAGE_INDEX.Value = 2);
end;

procedure TfrmOrganizationMap.chkViewInvalidDeptChange(Sender: TObject);
begin
  inherited;
  acRefresh.Execute;
end;

procedure TfrmOrganizationMap.tlToChuc_NhanVienGetImageIndex(
  Sender: TObject; Node: TdxTreeListNode; var Index: Integer);
begin
  inherited;
//
end;

procedure TfrmOrganizationMap.tlToChuc_NhanVienGetSelectedIndex(
  Sender: TObject; Node: TdxTreeListNode; var Index: Integer);
begin
  inherited;
//
end;

procedure TfrmOrganizationMap.LoadDisplayData;
var
  i : Integer;
  AField : TField;

  function CanAssignTo(ASource, ADestination: TFieldType): Boolean;
  begin
    Result := ASource = ADestination;
    if not Result then
      Result := (ASource = ftAutoInc) and (ADestination = ftInteger);
  end;
begin
  inherited;
  THEM_MOI := false;
  SUA_THONGTIN := false;
  COTHEM_NV := false;
  
  if memToChuc_NhanVien.Active then memToChuc_NhanVien.Close;
  memToChuc_NhanVien.Open;
  if qryToChuc_NhanVien.Active then qryToChuc_NhanVien.Close;
  
  qryToChuc_NhanVien.ParamByName('DEN_NGAY').Value := dxDenNgay.Date;
  qryToChuc_NhanVien.ParamByName('USER_NAME').Value := sysConfig.User;
  if F_DEPT_NO = '' then
    qryToChuc_NhanVien.ParamByName('IN_DEPT_NO').Clear
  else
    qryToChuc_NhanVien.ParamByName('IN_DEPT_NO').Value := F_DEPT_NO ;
  if dxViewChild.Checked then
    qryToChuc_NhanVien.ParamByName('VIEW_CHILD').Value := 1
  else
    qryToChuc_NhanVien.ParamByName('VIEW_CHILD').Value := 0;

  qryToChuc_NhanVien.open;
  qryToChuc_NhanVien.DisableControls;
  if not qryToChuc_NhanVien.IsEmpty then
  begin
    //Locked by THUYPTP - 05/04/2009
    //Cai thien toc do load du lieu
    if (qryToChuc_NhanVien = nil) or (qryToChuc_NhanVien.FieldCount = 0) or not qryToChuc_NhanVien.Active then exit;
    qryToChuc_NhanVien.DisableControls;
    qryToChuc_NhanVien.First;
    memToChuc_NhanVien.DisableControls;
    memToChuc_NhanVien.Open;
    while not qryToChuc_NhanVien.EOF do
    begin
      memToChuc_NhanVien.Append;
      for i := 0 to qryToChuc_NhanVien.FieldCount - 1 do
      begin
        AField := memToChuc_NhanVien.FindField(qryToChuc_NhanVien.Fields[i].FieldName);
        if(AField <> nil) and CanAssignTo(qryToChuc_NhanVien.Fields[i].DataType, AField.DataType) then
        begin
            if (AField.DataType = ftLargeInt) and (qryToChuc_NhanVien.Fields[i].DataType = ftLargeInt) then
              TLargeintField(AField).AsLargeInt := TLargeintField(qryToChuc_NhanVien.Fields[i]).AsLargeInt
            else
              AField.Value := qryToChuc_NhanVien.Fields[i].Value;
        end;
        THEM_MOI := false;
        SUA_THONGTIN := false;
        COTHEM_NV := false;
      end;
      memToChuc_NhanVien.Post;
      qryToChuc_NhanVien.Next;
    end;
    qryToChuc_NhanVien.EnableControls;
    memToChuc_NhanVien.EnableControls;
  end;
  if memToChuc_NhanVien.RecordCount >0 then
    tlToChuc_NhanVien.Items[0].Expand(false);
end;

procedure TfrmOrganizationMap.tlToChuc_NhanVienCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    if VarToStr(ANode.Values[tlToChuc_NhanVienPHAN_LOAI.Index]) = 'Department' then
      AFont.Style := AFont.Style + [fsBold]
    else
      AFont.Style := AFont.Style - [fsBold];

  except
  end

end;

procedure TfrmOrganizationMap.memToChuc_NhanVienNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  THEM_MOI := true;
  memToChuc_NhanVienP_ITEM_NO.Value := P_ITEM_NO;
  memToChuc_NhanVienPHAN_LOAI.Value := PHAN_LOAI;
  if (P_ITEM_NO ='') then
    memToChuc_NhanVienICON_INDEX.Value :=0
  else if (PHAN_LOAI = 'Department') then
    memToChuc_NhanVienICON_INDEX.Value :=1
  else
    memToChuc_NhanVienICON_INDEX.Value :=4;
    
  memToChuc_NhanVienASSIGNED_DATE.Value := dxDenNgay.Date;   
end;

procedure TfrmOrganizationMap.memToChuc_NhanVienBeforePost(
  DataSet: TDataSet);
var str_temp, str_res: string;
    i, count: integer;
    log_data : Widestring;
begin
  inherited;
  // Luu thong tin don vi - phong ban
  if (PHAN_LOAI = 'Department') and ((THEM_MOI = true) or (SUA_THONGTIN = true)) then
  begin
    TRY
      //Kiem tra rang buoc nhap lieu
      if (memToChuc_NhanVienITEM_NAME.IsNull) or (memToChuc_NhanVienITEM_NAME.Value ='') then
      begin
        ShowMessageUnicode(92);
        memToChuc_NhanVienITEM_NAME.FocusControl;
        abort;
        exit;
      end;

      if (memToChuc_NhanVienASSIGNED_DATE.IsNull) then
      begin
        ShowMessageUnicode(96);
        memToChuc_NhanVienASSIGNED_DATE.FocusControl;
        abort;
        exit;
      end;

      // thu tuc nay phat sinh ma bang cach lay cac ky tu dau cua moi tu va UPPPER
      UnicodeToASCCII(VarToWideStr(memToChuc_NhanVien.FieldByName('ITEM_NAME').Value), str_temp);
      F_StrList.Clear;
      F_StrList.Delimiter := '_';
      F_StrList.DelimitedText := string(str_temp);
      str_res := '';
      for i := 0 to F_StrList.Count - 1 do
      begin
        str_temp := F_StrList.Strings[i];
        if (Length(str_temp) > 0) then
          str_res := str_res + UpCase(str_temp[1]);
      end;

      //Khi them moi
      IF (memToChuc_NhanVien.State in [dsInsert]) and (THEM_MOI = true) then
      begin
        qryInsertDepartment.ParamByName('DEPT_NO').Value := str_res;
        IF P_ITEM_NO ='' THEN
          qryInsertDepartment.ParamByName('P_DEPT_NO').Clear
        ELSE
          qryInsertDepartment.ParamByName('P_DEPT_NO').Value := P_ITEM_NO ;
        qryInsertDepartment.ParamByName('DEPT_NAME').Value := memToChuc_NhanVienITEM_NAME.Value ;
        if memToChuc_NhanVienASSIGNED_DATE.IsNull  then
          qryInsertDepartment.ParamByName('FOUNDED_DATE').Clear
        else
          qryInsertDepartment.ParamByName('FOUNDED_DATE').Value := memToChuc_NhanVienASSIGNED_DATE.Value ;
        TRY
          qryInsertDepartment.ExecSQL;
          dmMain.CommitTransaction;
        EXCEPT
          dmMain.RollbackTransaction;  
          ABORT;
        END;
        memToChuc_NhanVienITEM_NO.Value := str_res ;

        IF (sysConfig.User <> 'smallfoot') and (sysConfig.User <> 'sspadmin') then
        begin
          qryExecute.SQL.Clear;
          qryExecute.SQL.Text := 'INSERT INTO SYS_USERDEPT (USERACCID, SUBSYSTEMID, DEPT_NO, ALLOWREAD, FINAL_READ) ' +
            'VALUES (:USER_NAME, 1, :DEPT_NO, 1, 1);';
          qryExecute.ParamByName('USER_NAME').Value := sysConfig.User;
          qryExecute.ParamByName('DEPT_NO').Value := str_res;
          qryExecute.Prepare;
          TRY
            dmMain.ExecuteSQL(qryExecute);
          except
            abort;
            exit;
          end;
        end;

        //Ghi nhat ky du lieu vao SYS_LOG_DATA
        log_data := 'Thêm phòng ban mới có mã: ' + UTF8Encode(str_res) +
        #13 + #10 + 'Tên phòng ban: ' + UTF8Encode(memToChuc_NhanVienITEM_NAME.Value) +
        #13 + #10 + 'Ngày BĐ hoạt động: '  + memToChuc_NhanVienASSIGNED_DATE.AsString  ;

        qryLogData.ParamByName('CONNECTIONID').Value := sysConfig.IP_Addr;
        qryLogData.ParamByName('HOST_NAME').Value := sysConfig.Host_Name;
        qryLogData.ParamByName('TIME_ID').Value := Now ;
        if (sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') then
          qryLogData.ParamByName('USER_ID').Clear
        else
          qryLogData.ParamByName('USER_ID').Value := sysConfig.User;
        qryLogData.ParamByName('LOG_DATA').Value := UTF8Decode(log_data) ;
        qryLogData.ParamByName('ACTION_TYPE').Value := 'INSERT' ;
        try
          dmMain.ExecuteSQL(qryLogData);
        except
          ABORT;
        end;

      end
      //Het them moi

      //Sua thong tin phong ban
      else if (memToChuc_NhanVien.State in [dsEdit]) and (SUA_THONGTIN = true) then
      begin
        qryUpdateDepartment.ParamByName('OLD_DEPT_NO').Value := memToChuc_NhanVienITEM_NO.Value;
        qryUpdateDepartment.ParamByName('P_DEPT_NO').Value := memToChuc_NhanVienP_ITEM_NO.Value ;
        qryUpdateDepartment.ParamByName('DEPT_NAME').Value := memToChuc_NhanVienITEM_NAME.Value ;
        if memToChuc_NhanVienASSIGNED_DATE.IsNull  then
          qryUpdateDepartment.ParamByName('FOUNDED_DATE').Clear
        else
          qryUpdateDepartment.ParamByName('FOUNDED_DATE').Value := memToChuc_NhanVienASSIGNED_DATE.Value ;
        TRY
          qryUpdateDepartment.ExecSQL;
        EXCEPT
          ABORT;
        END;

        //Ghi nhat ky du lieu vao SYS_LOG_DATA
        log_data := 'Sửa thông tin phòng ban có mã: ' + UTF8Encode(memToChuc_NhanVienITEM_NO.Value) +
        #13 + #10 + 'Từ: ' + UTF8Encode(OLD_DEPT_NAME) + ' - Ngày BĐ hoạt động: '  + DateToStr(OLD_ASSIGNED_DATE)   +
        #13 + #10 + 'Thành: ' + UTF8Encode(memToChuc_NhanVienITEM_NAME.Value) + ' - Ngày BĐ hoạt động: '  + memToChuc_NhanVienASSIGNED_DATE.AsString  ;

        qryLogData.ParamByName('CONNECTIONID').Value := sysConfig.IP_Addr;
        qryLogData.ParamByName('HOST_NAME').Value := sysConfig.Host_Name;
        qryLogData.ParamByName('TIME_ID').Value := Now ;
        if (sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') then
          qryLogData.ParamByName('USER_ID').Clear
        else
          qryLogData.ParamByName('USER_ID').Value := sysConfig.User;
        qryLogData.ParamByName('LOG_DATA').Value := UTF8Decode(log_data) ;
        qryLogData.ParamByName('ACTION_TYPE').Value := 'EDIT' ;
        try
          dmMain.ExecuteSQL(qryLogData);
        except
          ABORT;
        end;
      end;
      //Het sua thong tin phong ban
    EXCEPT
      ABORT;
    END;
  end
  //Het luu thong tin don vi phong ban

  //Luu thong tin vi tri bo nhiem
  else if (PHAN_LOAI = 'Employee')  and ((THEM_MOI = true) or (SUA_THONGTIN = true)) then
  begin
    //Neu dong assigment nay da co ngay ket thuc thi khong cho sua thong tin
    if not memToChuc_NhanVienDISMISS_DATE.IsNull then
    begin
      ShowMessageUnicode(97);
      abort;
      exit;
    end;

    //Kiem tra rang buoc nhap lieu
    if (memToChuc_NhanVienITEM_NAME.IsNull) or (memToChuc_NhanVienITEM_NAME.Value ='') then
    begin
      ShowMessageUnicode(93);
      memToChuc_NhanVienITEM_NAME.FocusControl;
      abort;
      exit;
    end;

    if (memToChuc_NhanVienTITLE_NAME.IsNull) or (memToChuc_NhanVienTITLE_NAME.Value ='') then
    begin
      ShowMessageUnicode(94);
      memToChuc_NhanVienTITLE_NAME.FocusControl;
      abort;
      exit;
    end;

    if (memToChuc_NhanVienASSIGNED_DATE.IsNull) then
    begin
      ShowMessageUnicode(95);
      memToChuc_NhanVienASSIGNED_DATE.FocusControl;
      abort;
      exit;
    end;

    if qryKiemTraNhanVien.Active then qryKiemTraNhanVien.Close;
    qryKiemTraNhanVien.ParamByName('FULL_NAME').Value := WideUpperCase(memToChuc_NhanVienITEM_NAME.Value);
    qryKiemTraNhanVien.Open;

    //TH1: Nhan vien chua co trong co so du lieu
    if qryKiemTraNhanVien.RecordCount =0 then
    begin
      if ShowMessageUnicode('Nhân viên: ' + UTF8Encode(memToChuc_NhanVienITEM_NAME.Value) +
        ' chưa có trong CSDL.' + #13 + #10 +
        'Bạn có muốn thêm vào hồ sơ nhân viên không?',3,'Thông báo') = mrYes then
      begin
        // Khi them nhan vien thi ma nhan vien tang dan
        memToChuc_NhanVienEMPLOYEE_NO.Value := dmMain.GenerateKeyData(200);
        COTHEM_NV := true;

        //Cat ho nhan vien
        str_temp := '';
        F_StrList.Clear;
        F_StrList.Delimiter := ' ';
        F_StrList.DelimitedText := Trim(UTF8Encode(VarToWideStr(memToChuc_NhanVienITEM_NAME.Value)));
        count := F_StrList.Count;
        if count > 1 then
        begin
          str_temp := Trim(F_StrList.Strings[0]);
        end
        else
        begin
          str_temp := '';
        end;
        try
          qryInsertEmployee.ParamByName('LAST_NAME').Value := trim(UTF8Decode(str_temp));
        except
          qryInsertEmployee.ParamByName('LAST_NAME').Clear;
        end;

        //Cat ten lot nhan vien
        str_temp := '';
        F_StrList.Clear;
        F_StrList.Delimiter := ' ';
        F_StrList.DelimitedText := Trim(UTF8Encode(VarToWideStr(memToChuc_NhanVienITEM_NAME.Value)));
        count := F_StrList.Count;
        if count > 2 then
        begin
          for i := 1 to count - 2 do
            str_temp := str_temp + ' ' + Trim(F_StrList.Strings[i]);
        end
        else
        begin
          str_temp := '';
        end;
        try
          qryInsertEmployee.ParamByName('MIDDLE_NAME').Value := trim(UTF8Decode(str_temp));
        except
          qryInsertEmployee.ParamByName('MIDDLE_NAME').Clear;
        end;

        //Cat ten nhan vien
        str_temp := '';
        F_StrList.Clear;
        F_StrList.Delimiter := ' ';
        F_StrList.DelimitedText := Trim(UTF8Encode(VarToWideStr(memToChuc_NhanVienITEM_NAME.Value)));
        count := F_StrList.Count;
        if count > 1 then
        begin
          str_temp := Trim(F_StrList.Strings[count - 1]);
        end
        else
        begin
          str_temp := '';
        end;
        try
          qryInsertEmployee.ParamByName('FIRST_NAME').Value := trim(UTF8Decode(str_temp));
        except
          qryInsertEmployee.ParamByName('FIRST_NAME').Clear;
        end;

        qryInsertEmployee.ParamByName('EMPLOYEE_NO').Value := memToChuc_NhanVienEMPLOYEE_NO.Value;
        TRY
          qryInsertEmployee.ExecSQL;
          dmMain.CommitTransaction;
        EXCEPT
          dmMain.RollbackTransaction;
          ABORT;
        END;


        //Ghi nhat ky du lieu vao SYS_LOG_DATA
        log_data := '* Thêm NV mới có mã: ' + UTF8Encode(memToChuc_NhanVienEMPLOYEE_NO.Value)+
          #13 + #10 + 'Họ tên NV: ' + UTF8Encode(memToChuc_NhanVienITEM_NAME.Value);
        qryLogData.ParamByName('CONNECTIONID').Value := sysConfig.IP_Addr;
        qryLogData.ParamByName('HOST_NAME').Value := sysConfig.Host_Name;
        qryLogData.ParamByName('TIME_ID').Value := Now ;
        if (sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') then
          qryLogData.ParamByName('USER_ID').Clear
        else
          qryLogData.ParamByName('USER_ID').Value := sysConfig.User;
        qryLogData.ParamByName('LOG_DATA').Value := UTF8Decode(log_data) ;
        qryLogData.ParamByName('ACTION_TYPE').Value := 'INSERT' ;
        try
          dmMain.ExecuteSQL(qryLogData);
        except
          ABORT;
        end;
      end
      //Het xu ly them moi nhan vien chua co trong CSDL
      else
      begin
        abort;
        exit;
      end;
    end
    //Het TH1
    //TH2: Nhan vien danh ho ten vao da co trong CSDL (trung ten)
    else
    begin
      //Chi kiem tra khi dang them moi hay khi sua co thay doi nhan vien
      if ((memToChuc_NhanVienEMPLOYEE_NO.Value <> OLD_EMPLOYEE_NO) or (THEM_MOI = true)) then
      begin
      if ShowMessageUnicode('Nhân viên: ' + UTF8Encode(memToChuc_NhanVienITEM_NAME.Value) +
        ' đã có trong CSDL với mã là: ' + qryKiemTraNhanVienEMPLOYEE_NO.Value + #13 + #10 +
        'Bạn có muốn thêm NV này vào CSDL như 1 NV mới với Mã NV mới không?',3,'Thông báo') = mrYes then
      begin
        // Khi them nhan vien thi ma nhan vien tang dan
        memToChuc_NhanVienEMPLOYEE_NO.Value := dmMain.GenerateKeyData(200);
        COTHEM_NV := true;

        //Cat ho nhan vien
        str_temp := '';
        F_StrList.Clear;
        F_StrList.Delimiter := ' ';
        F_StrList.DelimitedText := Trim(UTF8Encode(VarToWideStr(memToChuc_NhanVienITEM_NAME.Value)));
        count := F_StrList.Count;
        if count > 1 then
        begin
          str_temp := Trim(F_StrList.Strings[0]);
        end
        else
        begin
          str_temp := '';
        end;
        try
          qryInsertEmployee.ParamByName('LAST_NAME').Value := trim(UTF8Decode(str_temp));
        except
          qryInsertEmployee.ParamByName('LAST_NAME').Clear;
        end;

        //Cat ten lot nhan vien
        str_temp := '';
        F_StrList.Clear;
        F_StrList.Delimiter := ' ';
        F_StrList.DelimitedText := Trim(UTF8Encode(VarToWideStr(memToChuc_NhanVienITEM_NAME.Value)));
        count := F_StrList.Count;
        if count > 2 then
        begin
          for i := 1 to count - 2 do
            str_temp := str_temp + ' ' + Trim(F_StrList.Strings[i]);
        end
        else
        begin
          str_temp := '';
        end;
        try
          qryInsertEmployee.ParamByName('MIDDLE_NAME').Value := trim(UTF8Decode(str_temp));
        except
          qryInsertEmployee.ParamByName('MIDDLE_NAME').Clear;
        end;

        //Cat ten nhan vien
        str_temp := '';
        F_StrList.Clear;
        F_StrList.Delimiter := ' ';
        F_StrList.DelimitedText := Trim(UTF8Encode(VarToWideStr(memToChuc_NhanVienITEM_NAME.Value)));
        count := F_StrList.Count;
        if count > 1 then
        begin
          str_temp := Trim(F_StrList.Strings[count - 1]);
        end
        else
        begin
          str_temp := '';
        end;
        try
          qryInsertEmployee.ParamByName('FIRST_NAME').Value := trim(UTF8Decode(str_temp));
        except
          qryInsertEmployee.ParamByName('FIRST_NAME').Clear;
        end;

        qryInsertEmployee.ParamByName('EMPLOYEE_NO').Value := memToChuc_NhanVienEMPLOYEE_NO.Value;
        TRY
          qryInsertEmployee.ExecSQL;
          dmMain.CommitTransaction;
        EXCEPT
          dmMain.RollbackTransaction;
          ABORT;
        END;

        //Ghi nhat ky du lieu vao SYS_LOG_DATA
        log_data := '* Thêm NV mới có mã: ' + UTF8Encode(memToChuc_NhanVienEMPLOYEE_NO.Value)+
          #13 + #10 + 'Họ tên NV: ' + UTF8Encode(memToChuc_NhanVienITEM_NAME.Value);
        qryLogData.ParamByName('CONNECTIONID').Value := sysConfig.IP_Addr;
        qryLogData.ParamByName('HOST_NAME').Value := sysConfig.Host_Name;
        qryLogData.ParamByName('TIME_ID').Value := Now ;
        if (sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') then
          qryLogData.ParamByName('USER_ID').Clear
        else
          qryLogData.ParamByName('USER_ID').Value := sysConfig.User;
        qryLogData.ParamByName('LOG_DATA').Value := UTF8Decode(log_data) ;
        qryLogData.ParamByName('ACTION_TYPE').Value := 'INSERT' ;
        try
          dmMain.ExecuteSQL(qryLogData);
        except
          ABORT;
        end;
      end;
      end;
      //Het xu ly them moi nhan vien trung ten
    end;
    // Het TH 2

    //TH3: kiem tra vi tri cong tac dang chon co trong danh sach hay chua?
    begin
      if qryKiemTraChucVu.Active then qryKiemTraChucVu.Close;
      qryKiemTraChucVu.ParamByName('TITLE_NAME').Value := WideUpperCase(memToChuc_NhanVienTITLE_NAME.Value);
      qryKiemTraChucVu.Open;
      //Khong co chuc vu nay trong CSDL
      if qryKiemTraChucVu.RecordCount =0 then
      begin
        // thu tuc nay phat sinh ma bang cach lay cac ky tu dau cua moi tu va UPPPER
        UnicodeToASCCII(VarToWideStr(memToChuc_NhanVien.FieldByName('TITLE_NAME').Value), str_temp);
        F_StrList.Clear;
        F_StrList.Delimiter := '_';
        F_StrList.DelimitedText := string(str_temp);
        str_res := '';
        for i := 0 to F_StrList.Count - 1 do
        begin
          str_temp := F_StrList.Strings[i];
          if (Length(str_temp) > 0) then
            str_res := str_res + UpCase(str_temp[1]);
        end;

        qryInsertTitle.ParamByName('TITLE_NO').Value := str_res;
        qryInsertTitle.ParamByName('TITLE_NAME').Value := memToChuc_NhanVienTITLE_NAME.Value;
        try
          qryInsertTitle.ExecSQL;
          dmMain.CommitTransaction;
          memToChuc_NhanVienTITLE_NO.Value := str_res;
        Except
        begin
          dmMain.RollbackTransaction;
          abort;
          exit;
        end;
        end;
      end
      else
        memToChuc_NhanVienTITLE_NO.Value := qryKiemTraChucVuTITLE_NO.Value;
      //Het them moi chuc vu vao CSDL

      if (memToChuc_NhanVienDEPT_NO.Value = '') or (memToChuc_NhanVienDEPT_NO.IsNull) then
      begin
        memToChuc_NhanVienDEPT_NO.Value := P_ITEM_NO;
        memToChuc_NhanVienDEPT_NAME.Value := P_ITEM_NAME;
      end;
      memToChuc_NhanVienPOSITION_NO.Value := memToChuc_NhanVienTITLE_NO.Value + '-' + memToChuc_NhanVienDEPT_NO.Value;
    end;
    //Het TH 3

    //TH4: Kiem tra vi tri da co trong CSLD chua?
    if qryKiemTraViTri.Active then qryKiemTraViTri.Close;
    qryKiemTraViTri.ParamByName('POSITION_NO').Value := WideUpperCase(memToChuc_NhanVienPOSITION_NO.Value);
    qryKiemTraViTri.Open;

    if qryKiemTraViTri.RecordCount =0 then
    begin
      if (memToChuc_NhanVienDEPT_NO.Value = '') or (memToChuc_NhanVienDEPT_NO.IsNull) then
        qryInsertPosition.ParamByName('DEPT_NO').Value := P_ITEM_NO
      else
        qryInsertPosition.ParamByName('DEPT_NO').Value := memToChuc_NhanVienDEPT_NO.Value;
      qryInsertPosition.ParamByName('TITLE_NO').Value := memToChuc_NhanVienTITLE_NO.Value;
      try
        qryInsertPosition.ExecSQL;
        dmMain.CommitTransaction;
      except
      begin
        dmMain.RollbackTransaction;
        abort;
        exit;
      end;
      end;
    end;
    //Het TH4

    //Them moi vi tri cong tac vao HR_ASSIGMENT
    IF (memToChuc_NhanVien.State in [dsInsert]) and (THEM_MOI = true) then
    begin
      //Truong hop khi them moi danh dau vao vi tri chinh nhung truoc do NV nay da co vi trinh roi
      if (memToChuc_NhanVienIS_MAIN_POSITION.Value = 1) then
      // kiem tra xem da co chuc vu chinh thuc nao chua?
      begin
        if qryGetMainPositionList.Active then qryGetMainPositionList.Close;
        qryGetMainPositionList.ParamByName('EMPLOYEE_NO').Value := memToChuc_NhanVienEMPLOYEE_NO.Value;
        qryGetMainPositionList.Open;
        if qryGetMainPositionList.RecordCount > 0 then
        begin
          if (qryGetMainPositionList.RecordCount = 1) and
            (qryGetMainPositionListPOSITION_NO.Value =
              memToChuc_NhanVienPOSITION_NO.Value) then
          begin
            // ok : khong co van de gi
          end
          else
            with TfrmCanhbaoVitriCT.Create(self) do
            try
              labelFULL_NAME.Caption := memToChuc_NhanVienITEM_NAME.Value;
              labelTITLE_NAME.Caption := qryGetMainPositionListTITLE_NAME.Value;
              labelDEPT_NAME.Caption := qryGetMainPositionListDEPT_NAME.Value;
              labelASSIGNED_DATE.Caption := qryGetMainPositionListASSIGNED_DATE.AsString;
              if ShowModal <> mrOK then
              begin
                memToChuc_NhanVienIS_MAIN_POSITION.Value := 0;
              end;
            finally
              Free;
            end;
        end;
      end;

      //Luu thong tin assigment
      qryInsertAssigment.ParamByName('EMPLOYEE_NO').Value := memToChuc_NhanVienEMPLOYEE_NO.Value ;
      qryInsertAssigment.ParamByName('POSITION_NO').Value := memToChuc_NhanVienPOSITION_NO.Value;
      qryInsertAssigment.ParamByName('ASSIGNED_DATE').Value := memToChuc_NhanVienASSIGNED_DATE.Value;
      qryInsertAssigment.ParamByName('IS_MAIN_POSITION').Value := memToChuc_NhanVienIS_MAIN_POSITION.Value;
      try
        qryInsertAssigment.ExecSQL;
        dmMain.CommitTransaction;
      except
        begin
          dmMain.RollbackTransaction;
          abort;
          exit;
        end;
      end;

      if qryGetAssID.Active then qryGetAssID.Close;
      qryGetAssID.ParamByName('EMPLOYEE_NO').Value := memToChuc_NhanVienEMPLOYEE_NO.Value ;
      qryGetAssID.ParamByName('POSITION_NO').Value := memToChuc_NhanVienPOSITION_NO.Value;
      qryGetAssID.ParamByName('ASSIGNED_DATE').Value := memToChuc_NhanVienASSIGNED_DATE.Value;
      qryGetAssID.Open;
      memToChuc_NhanVienITEM_NO.Value := qryGetAssIDASS_KEY_ID.AsString;

      //Ghi nhat ky du lieu vao SYS_LOG_DATA
      log_data := '* Bổ nhiệm NV: ' + UTF8Encode(memToChuc_NhanVienITEM_NAME.Value) + ' (' + UTF8Encode(memToChuc_NhanVienEMPLOYEE_NO.Value)+ ')' +
      #13 + #10 + 'Vào vị trí: ' + UTF8Encode(memToChuc_NhanVienTITLE_NAME.Value) + ' - ' + UTF8Encode(memToChuc_NhanVienDEPT_NAME.Value) +
      #13 + #10 + 'Kể từ ngày:' + memToChuc_NhanVienASSIGNED_DATE.AsString +
      #13 + #10 + 'Với vị trí chính:' + memToChuc_NhanVienIS_MAIN_POSITION.AsString ;

      qryLogData.ParamByName('CONNECTIONID').Value := sysConfig.IP_Addr;
      qryLogData.ParamByName('HOST_NAME').Value := sysConfig.Host_Name;
      qryLogData.ParamByName('TIME_ID').Value := Now ;
      if (sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') then
        qryLogData.ParamByName('USER_ID').Clear
      else
        qryLogData.ParamByName('USER_ID').Value := sysConfig.User;
      qryLogData.ParamByName('LOG_DATA').Value := UTF8Decode(log_data) ;
      qryLogData.ParamByName('ACTION_TYPE').Value := 'INSERT' ;
      try
        dmMain.ExecuteSQL(qryLogData);
      except
        ABORT;
      end;
    end
    //Het them moi

    //Sua thong tin
    else if (memToChuc_NhanVien.State in [dsEdit]) and (SUA_THONGTIN = true) then
    begin
      //Truong hop khi them moi danh dau vao vi tri chinh nhung truoc do NV nay da co vi trinh roi
      if (memToChuc_NhanVienIS_MAIN_POSITION.Value = 1) then
      // kiem tra xem da co chuc vu chinh thuc nao chua?
      begin
        if qryGetMainPositionList.Active then qryGetMainPositionList.Close;
        qryGetMainPositionList.ParamByName('EMPLOYEE_NO').Value := memToChuc_NhanVienEMPLOYEE_NO.Value;
        qryGetMainPositionList.Open;
        if qryGetMainPositionList.RecordCount > 0 then
        begin
          if (qryGetMainPositionList.RecordCount = 1) and
            (qryGetMainPositionListPOSITION_NO.Value =
              memToChuc_NhanVienPOSITION_NO.Value) then
          begin
            // ok : khong co van de gi
          end
          else
            with TfrmCanhbaoVitriCT.Create(self) do
            try
              labelFULL_NAME.Caption := memToChuc_NhanVienITEM_NAME.Value;
              labelTITLE_NAME.Caption := qryGetMainPositionListTITLE_NAME.Value;
              labelDEPT_NAME.Caption := qryGetMainPositionListDEPT_NAME.Value;
              labelASSIGNED_DATE.Caption := qryGetMainPositionListASSIGNED_DATE.AsString;
              if ShowModal <> mrOK then
              begin
                memToChuc_NhanVienIS_MAIN_POSITION.Value := 0;
              end;
            finally
              Free;
            end;
        end;
      end;


      qryUpdateAssigment.ParamByName('EMPLOYEE_NO').Value := memToChuc_NhanVienEMPLOYEE_NO.Value ;
      qryUpdateAssigment.ParamByName('POSITION_NO').Value := memToChuc_NhanVienPOSITION_NO.Value;
      qryUpdateAssigment.ParamByName('ASSIGNED_DATE').Value := memToChuc_NhanVienASSIGNED_DATE.Value;
      qryUpdateAssigment.ParamByName('IS_MAIN_POSITION').Value := memToChuc_NhanVienIS_MAIN_POSITION.Value;
      qryUpdateAssigment.ParamByName('ASS_KEY_ID').Value := memToChuc_NhanVienITEM_NO.Value;
      try
        qryUpdateAssigment.ExecSQL;
        dmMain.CommitTransaction;
      except
        begin
          dmMain.RollbackTransaction;  
          abort;
          exit;
        end;
      end;

      //Ghi nhat ky du lieu vao SYS_LOG_DATA
      //Truong hop sua truc tiep tren vi tri cong tac va ngay assigned_date
      if (NEW_DEPT_NAME = '') then
        log_data := 'Sửa vị trí công tác của NV: ' + UTF8Encode(memToChuc_NhanVienITEM_NAME.Value) + ' (' + UTF8Encode(memToChuc_NhanVienEMPLOYEE_NO.Value)+ ')' +
        #13 + #10 + '* Từ: ' + UTF8Encode(OLD_TITLE_NAME) + ' - ' + UTF8Encode(OLD_DEPT_NAME) +
        #13 + #10 + 'Ngày BĐ:' + DateToStr(OLD_ASSIGNED_DATE) +
        #13 + #10 + 'Vị trí chính: ' + IntToStr(OLD_IS_MAIN_POSITION) +
        #13 + #10 + '* Thành: ' + UTF8Encode(memToChuc_NhanVienTITLE_NAME.Value) + ' - ' + UTF8Encode(memToChuc_NhanVienDEPT_NAME.Value) +
        #13 + #10 + 'Ngày BĐ:' + memToChuc_NhanVienASSIGNED_DATE.AsString +
        #13 + #10 + 'Vị trí chính: ' + IntToStr(memToChuc_NhanVienIS_MAIN_POSITION.Value)
      else //Truong hop keo tha tu vi tri phong nay chuyen sang phong khac
        log_data := 'Sửa vị trí công tác của NV: ' + UTF8Encode(memToChuc_NhanVienITEM_NAME.Value) + ' (' + UTF8Encode(memToChuc_NhanVienEMPLOYEE_NO.Value)+ ')' +
        #13 + #10 + '* Từ: ' + UTF8Encode(memToChuc_NhanVienTITLE_NAME.Value) + ' - ' + UTF8Encode(memToChuc_NhanVienDEPT_NAME.Value) +
        #13 + #10 + 'Ngày BĐ:' + memToChuc_NhanVienASSIGNED_DATE.AsString +
        #13 + #10 + '* Thành: ' + UTF8Encode(memToChuc_NhanVienTITLE_NAME.Value) +  ' - ' + UTF8Encode(NEW_DEPT_NAME) +
        #13 + #10 + 'Ngày BĐ:' + memToChuc_NhanVienASSIGNED_DATE.AsString +
        #13 + #10 + 'Vị trí chính: ' + IntToStr(memToChuc_NhanVienIS_MAIN_POSITION.Value);

      qryLogData.ParamByName('CONNECTIONID').Value := sysConfig.IP_Addr;
      qryLogData.ParamByName('HOST_NAME').Value := sysConfig.Host_Name;
      qryLogData.ParamByName('TIME_ID').Value := Now ;
      if (sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') then
        qryLogData.ParamByName('USER_ID').Clear
      else
        qryLogData.ParamByName('USER_ID').Value := sysConfig.User;
      qryLogData.ParamByName('LOG_DATA').Value := UTF8Decode(log_data) ;
      qryLogData.ParamByName('ACTION_TYPE').Value := 'EDIT' ;
      try
        dmMain.ExecuteSQL(qryLogData);
      except
        ABORT;
      end;
      NEW_DEPT_NAME :='';
    end;
    //Het sua


  end;

                
end;

procedure TfrmOrganizationMap.acThemPhongBanExecute(Sender: TObject);
begin
  inherited;
  if (memToChuc_NhanVien.State in [dsEdit,dsInsert]) then
    memToChuc_NhanVien.Post;   
  P_ITEM_NO := memToChuc_NhanVienP_ITEM_NO.Value;
  PHAN_LOAI := 'Department';
  memToChuc_NhanVien.Append;
  tlToChuc_NhanVienITEM_NAME.Items.Clear;
  tlToChuc_NhanVienTITLE_NAME.DisableEditor := true;
  tlToChuc_NhanVienIS_MAIN_POSITION.DisableEditor := true;
  memToChuc_NhanVienIS_MAIN_POSITION.Value := 0;
  memToChuc_NhanVienITEM_NAME.FocusControl;   
end;

procedure TfrmOrganizationMap.acKhongLuuExecute(Sender: TObject);
begin
  inherited;
  memToChuc_NhanVien.Cancel;
  THEM_MOI := false;
  SUA_THONGTIN := false;
  COTHEM_NV := false; 
end;

procedure TfrmOrganizationMap.acKhongLuuUpdate(Sender: TObject);
begin
  inherited;
  acKhongLuu.Enabled := (memToChuc_NhanVien.State in [dsEdit,dsInsert]); 
end;

procedure TfrmOrganizationMap.acLuuUpdate(Sender: TObject);
begin
  inherited;
  acLuu.Enabled := (memToChuc_NhanVien.State in [dsEdit,dsInsert]);
end;

procedure TfrmOrganizationMap.acLuuExecute(Sender: TObject);
begin
  inherited;
  memToChuc_NhanVien.Post;
end;

procedure TfrmOrganizationMap.acThemPBCapDuoiExecute(Sender: TObject);
begin
  inherited;
  if (memToChuc_NhanVien.State in [dsEdit,dsInsert]) then
    memToChuc_NhanVien.Post;
    
  // Neu con tro dang dung tai nhan vien
  // Ma them PB cap con thi PB cap cha chinh la PB NV do dang cong tac
  if memToChuc_NhanVienPHAN_LOAI.Value = 'Department' then
    P_ITEM_NO := memToChuc_NhanVienITEM_NO.Value
  else
    P_ITEM_NO := memToChuc_NhanVienP_ITEM_NO.Value;
    
  PHAN_LOAI := 'Department';
  memToChuc_NhanVien.Append;
  tlToChuc_NhanVienITEM_NAME.Items.Clear;
  tlToChuc_NhanVienTITLE_NAME.DisableEditor := true;
  tlToChuc_NhanVienIS_MAIN_POSITION.DisableEditor := true;
  memToChuc_NhanVienIS_MAIN_POSITION.Value := 0;
  memToChuc_NhanVienITEM_NAME.FocusControl;
end;

procedure TfrmOrganizationMap.acThemNhanVienExecute(Sender: TObject);
begin
  inherited;
  if (memToChuc_NhanVien.State in [dsEdit,dsInsert]) then
    memToChuc_NhanVien.Post;
    
  // Neu con tro dang dung tai nhan vien
  // Ma them nhan vien thi Phong ban can them chinh la PB NV do dang cong tac
  if memToChuc_NhanVienPHAN_LOAI.Value  = 'Department' then
  begin
    P_ITEM_NO := memToChuc_NhanVienITEM_NO.Value;
    P_ITEM_NAME := memToChuc_NhanVienITEM_NAME.Value;
  end
  else
  begin
    P_ITEM_NO := memToChuc_NhanVienP_ITEM_NO.Value;
    P_ITEM_NAME := memToChuc_NhanVienDEPT_NAME.Value;
  end;

  PHAN_LOAI := 'Employee';
  memToChuc_NhanVien.Append;
  tlToChuc_NhanVienTITLE_NAME.DisableEditor := false;
  tlToChuc_NhanVienIS_MAIN_POSITION.DisableEditor := false;
  memToChuc_NhanVienIS_MAIN_POSITION.Value := 1;  
  RegisterLookupControl(tlToChuc_NhanVienITEM_NAME,'EMPLOYEE_NO','FULL_NAME',
      'SELECT EMPLOYEE_NO, LAST_NAME ||'' ''|| MIDDLE_NAME ||'' ''|| FIRST_NAME FULL_NAME' +
      ' FROM HR_EMPLOYEE WHERE (IS_CADIDATE is null) or (IS_CADIDATE = 0)' +
      ' ORDER BY LAST_NAME ||'' ''|| MIDDLE_NAME ||'' ''|| FIRST_NAME');
  RegisterLookupControl(tlToChuc_NhanVienTITLE_NAME,'POSITION_NO','TITLE_NAME',
      'select POSITION_NO,TITLE_NAME from hr_position ' +
      ' join hr_title on hr_title.title_no = hr_position.title_no ' +
      ' where hr_position.dept_no = ''' + P_ITEM_NO + '''');
  memToChuc_NhanVienITEM_NAME.FocusControl;
end;


procedure TfrmOrganizationMap.tlToChuc_NhanVienITEM_NAMEValidate(
  Sender: TObject; var ErrorText: WideString; var Accept: Boolean);
begin
  inherited;
  if PHAN_LOAI = 'Employee' then
  begin
    if Accept then
    begin
    if qryKiemTraNhanVien.Active then qryKiemTraNhanVien.Close;
    qryKiemTraNhanVien.ParamByName('FULL_NAME').Value := WideUpperCase(VarToWideStr(tlToChuc_NhanVien.FocusedNode.Values[tlToChuc_NhanVienITEM_NAME.Index]));
    qryKiemTraNhanVien.Open;
    qryKiemTraNhanVien.Close;
    end;
  end;
end;

procedure TfrmOrganizationMap.memToChuc_NhanVienAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  if (COTHEM_NV = true) and (PHAN_LOAI = 'Employee') then
    dmMain.IncreaseKeyData(200);
  THEM_MOI := false;
  SUA_THONGTIN := false;
  COTHEM_NV := false;
  dmMain.DefOnAfterPost(dataset);
  memToChuc_NhanVien.Refresh;
end;

procedure TfrmOrganizationMap.tlToChuc_NhanVienChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  tlToChuc_NhanVienITEM_NAME.Items.Clear;
  tlToChuc_NhanVienTITLE_NAME.Items.Clear;
  tlToChuc_NhanVienTITLE_NAME.DisableEditor := true;
  tlToChuc_NhanVienIS_MAIN_POSITION.DisableEditor := true;
  if memToChuc_NhanVienPHAN_LOAI.Value = 'Employee' then
  begin
    tlToChuc_NhanVienTITLE_NAME.DisableEditor := false;
    tlToChuc_NhanVienIS_MAIN_POSITION.DisableEditor := false;
    RegisterLookupControl(tlToChuc_NhanVienITEM_NAME,'EMPLOYEE_NO','FULL_NAME',
      'SELECT EMPLOYEE_NO, LAST_NAME ||'' ''|| MIDDLE_NAME ||'' ''|| FIRST_NAME FULL_NAME' +
      ' FROM HR_EMPLOYEE WHERE (IS_CADIDATE is null) or (IS_CADIDATE = 0)' +
      ' ORDER BY LAST_NAME ||'' ''|| MIDDLE_NAME ||'' ''|| FIRST_NAME');
    RegisterLookupControl(tlToChuc_NhanVienTITLE_NAME,'POSITION_NO','TITLE_NAME',
      'select POSITION_NO,TITLE_NAME from hr_position ' +
      ' join hr_title on hr_title.title_no = hr_position.title_no ' +
      ' where hr_position.dept_no = ''' + memToChuc_NhanVienP_ITEM_NO.Value + '''');
  end;
end;

procedure TfrmOrganizationMap.memToChuc_NhanVienBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  PHAN_LOAI := memToChuc_NhanVienPHAN_LOAI.Value;    
  if PHAN_LOAI = 'Employee' then
  begin
    OLD_EMPLOYEE_NO := memToChuc_NhanVienEMPLOYEE_NO.Value;
    OLD_DEPT_NAME  := memToChuc_NhanVienDEPT_NAME.Value;
    OLD_ASSIGNED_DATE := memToChuc_NhanVienASSIGNED_DATE.Value;
    OLD_TITLE_NAME := memToChuc_NhanVienTITLE_NAME.Value;
    OLD_IS_MAIN_POSITION := memToChuc_NhanVienIS_MAIN_POSITION.Value;
  end
  else if PHAN_LOAI = 'Department' then
  begin
    OLD_DEPT_NO := memToChuc_NhanVienITEM_NO.Value;
    OLD_DEPT_NAME  := memToChuc_NhanVienITEM_NAME.Value;
    OLD_ASSIGNED_DATE := memToChuc_NhanVienASSIGNED_DATE.Value;
  end;
  SUA_THONGTIN := true;
end;

procedure TfrmOrganizationMap.acXemThongTinExecute(Sender: TObject);
begin
  inherited;
  LoadDisplayData;
end;

procedure TfrmOrganizationMap.acXoaExecute(Sender: TObject);
var
  log_data : Widestring;
  bookmark : TBookmark; 
begin
  inherited;
  //Xoa don vi phong ban
  if memToChuc_NhanVienPHAN_LOAI.Value = 'Department' then
  begin
    //Kiem tra xem don vi phong ban co thong tin nhan vien trong do khong?
    //Neu co thi khong cho xoa
    if qryKTXoaDonVi.Active then qryKTXoaDonVi.Close;
    qryKTXoaDonVi.ParamByName('DEPT_NO').Value := memToChuc_NhanVienITEM_NO.Value ;
    qryKTXoaDonVi.Open;

    if qryKTXoaDonViSO_NV.Value > 0 then
    begin
      ShowMessageUnicode(98);
      abort;
      exit; 
    end;

    if ShowMessageUnicode('Bạn thật sự muốn xóa đơn vị: ' +
      UTF8Encode(memToChuc_NhanVienITEM_NAME.Value) +
      ' này phải không?',3,'Cảnh báo')=mrYes then
    begin
      qryDeleteDepartment.ParamByName('DEPT_NO').Value := memToChuc_NhanVienITEM_NO.Value;
      TRY
        qryDeleteDepartment.ExecSQL; 
      EXCEPT
        ABORT;
        exit;
      END;

      //Ghi nhat ky du lieu vao SYS_LOG_DATA
      log_data := 'Xóa phòng ban mã: ' + UTF8Encode(memToChuc_NhanVienITEM_NO.Value) +
        #13 + #10 + 'Tên: ' + UTF8Encode(memToChuc_NhanVienITEM_NAME.Value);

      qryLogData.ParamByName('CONNECTIONID').Value := sysConfig.IP_Addr;
      qryLogData.ParamByName('HOST_NAME').Value := sysConfig.Host_Name;
      qryLogData.ParamByName('TIME_ID').Value := Now ;
      if (sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') then
        qryLogData.ParamByName('USER_ID').Clear
      else
        qryLogData.ParamByName('USER_ID').Value := sysConfig.User;
      qryLogData.ParamByName('LOG_DATA').Value := UTF8Decode(log_data) ;
      qryLogData.ParamByName('ACTION_TYPE').Value := 'DELETE' ;
      try
        dmMain.ExecuteSQL(qryLogData);
      except
        ABORT;
      end;

      //LoadDisplayData;
      bookmark := memToChuc_NhanVien.GetBookmark;
      memToChuc_NhanVien.Delete;
      memToChuc_NhanVien.GotoBookmark(bookmark);
    end;
  end;
  //Het xoa don vi phong ban

  //Xoa thong tin vi tri cong tac
  if memToChuc_NhanVienPHAN_LOAI.Value = 'Employee' then
  begin
    if not memToChuc_NhanVienDISMISS_DATE.IsNull then
    begin
      ShowMessageUnicode(99);
      abort;
      exit;
    end;

    if ShowMessageUnicode('Bạn thật sự muốn xóa vị trí: ' +
      UTF8Encode(memToChuc_NhanVienTITLE_NAME.Value) + #13 + #10 +
      'của nhân viên: ' + UTF8Encode(memToChuc_NhanVienITEM_NAME.Value) + '(' +
      UTF8Encode(memToChuc_NhanVienEMPLOYEE_NO.Value) + ')' + #13 + #10 +
      'ra khỏi CSDL phải không?',3,'Cảnh báo')=mrYes then
    begin
      qryDeleteEmployee.ParamByName('ass_key_id').Value := memToChuc_NhanVienITEM_NO.Value;
      TRY
        dmMain.ExecuteSQL(qryDeleteEmployee);
      EXCEPT
        ABORT;
      END;

      //Ghi nhat ky du lieu vao SYS_LOG_DATA
      log_data := 'Xóa vị trí công tác: ' + UTF8Encode(memToChuc_NhanVienTITLE_NAME.Value) + ' - ' +  UTF8Encode(memToChuc_NhanVienDEPT_NAME.Value) +
        #13 + #10 + 'Của nhân viên: ' + UTF8Encode(memToChuc_NhanVienITEM_NAME.Value);

      qryLogData.ParamByName('CONNECTIONID').Value := sysConfig.IP_Addr;
      qryLogData.ParamByName('HOST_NAME').Value := sysConfig.Host_Name;
      qryLogData.ParamByName('TIME_ID').Value := Now ;
      if (sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') then
        qryLogData.ParamByName('USER_ID').Clear
      else
        qryLogData.ParamByName('USER_ID').Value := sysConfig.User;
      qryLogData.ParamByName('LOG_DATA').Value := UTF8Decode(log_data) ;
      qryLogData.ParamByName('ACTION_TYPE').Value := 'DELETE' ;
      try
        dmMain.ExecuteSQL(qryLogData);
      except
        ABORT;
      end;

      //LoadDisplayData;
      bookmark := memToChuc_NhanVien.GetBookmark;
      memToChuc_NhanVien.Delete;
      memToChuc_NhanVien.GotoBookmark(bookmark);
    end;
  end;
  //Het xoa thong tin vi tri cong tac
end;

procedure TfrmOrganizationMap.tlToChuc_NhanVienEndDrag(Sender,
  Target: TObject; X, Y: Integer);
begin
  inherited;
  //
  if (memToChuc_NhanVienPHAN_LOAI.Value = 'Employee') then
  begin
    if (memToChuc_NhanVienDISMISS_DATE.IsNull) then
    begin
      if qryKiemTraDonVi.Active then qryKiemTraDonVi.Close;
      qryKiemTraDonVi.ParamByName('DEPT_NO').Value := WideUpperCase(memToChuc_NhanVienP_ITEM_NO.Value);
      qryKiemTraDonVi.Open;
      if qryKiemTraDonVi.RecordCount =0 then exit;  

      if qryKiemTraViTri.Active then qryKiemTraViTri.Close;
      qryKiemTraViTri.ParamByName('POSITION_NO').Value :=
        WideUpperCase(memToChuc_NhanVienTITLE_NO.Value) + '-' + WideUpperCase(memToChuc_NhanVienP_ITEM_NO.Value);
      qryKiemTraViTri.Open;

      if qryKiemTraViTri.RecordCount =0 then
      begin
        qryInsertPosition.ParamByName('DEPT_NO').Value := memToChuc_NhanVienP_ITEM_NO.Value;
        qryInsertPosition.ParamByName('TITLE_NO').Value := memToChuc_NhanVienTITLE_NO.Value;
        try
          qryInsertPosition.ExecSQL;
        except
          begin
            abort;
            exit;
          end;
        end;
      end;


      qryUpdateAssigment.ParamByName('EMPLOYEE_NO').Value := memToChuc_NhanVienEMPLOYEE_NO.Value ;
      qryUpdateAssigment.ParamByName('POSITION_NO').Value := WideUpperCase(memToChuc_NhanVienTITLE_NO.Value)
        + '-' + WideUpperCase(memToChuc_NhanVienP_ITEM_NO.Value);
      qryUpdateAssigment.ParamByName('ASSIGNED_DATE').Value := memToChuc_NhanVienASSIGNED_DATE.Value;
      qryUpdateAssigment.ParamByName('ASS_KEY_ID').Value := memToChuc_NhanVienITEM_NO.Value;
      try
        qryUpdateAssigment.ExecSQL;
        dmMain.CommitTransaction;
      except
        begin
          dmMain.RollbackTransaction;
          abort;
          exit;
        end;
      end;
    end;
  end;
end;

procedure TfrmOrganizationMap.acBungDuLieuExecute(Sender: TObject);
begin
  inherited;
  if memToChuc_NhanVien.RecordCount >0 then
    tlToChuc_NhanVien.FullExpand;
end;

procedure TfrmOrganizationMap.acThuDuLieuExecute(Sender: TObject);
begin
  inherited;
  if memToChuc_NhanVien.RecordCount >0 then
  begin
    tlToChuc_NhanVien.FullCollapse;
    tlToChuc_NhanVien.Items[0].Expand(false);
  end;
end;

procedure TfrmOrganizationMap.dxSelectDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmOrganizationMap.dxSelectDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryDeptListDEPT_NAME.Value;
    F_DEPT_NO := frmPopupMain.qryDeptListDEPT_NO.Value;
  end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmOrganizationMap.dxSelectDeptChange(Sender: TObject);
begin
  inherited;
  if Length(dxSelectDept.Text) = 0 then
    F_DEPT_NO := '';
end;

procedure TfrmOrganizationMap.acFastOM_ToolExecute(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmFastOM_Tool, frmFastOM_Tool);
  
  LoadDisplayData;
end;

procedure TfrmOrganizationMap.tlToChuc_NhanVienDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  //Truong hop keo tha tu vi tri phong nay chuyen sang phong khac
  Accept := true;
  if tlToChuc_NhanVien.GetNodeAt(X, Y) = nil then
    Accept := false;
  if Accept = true then
  begin
    if  tlToChuc_NhanVien.getNodeAt(X,Y).Values[tlToChuc_NhanVienPHAN_LOAI.index] = 'Department' then
      NEW_DEPT_NAME  := VarToWideStr(tlToChuc_NhanVien.getNodeAt(X,Y).Values[tlToChuc_NhanVienITEM_NAME.index]);
  end;
end;

procedure TfrmOrganizationMap.acThemNhanVienUpdate(Sender: TObject);
begin
  inherited;
  acThemNhanVien.Enabled := (memToChuc_NhanVien.RecordCount >0 );
end;

procedure TfrmOrganizationMap.acXoaUpdate(Sender: TObject);
begin
  inherited;
  acXoa.Enabled := (memToChuc_NhanVien.RecordCount >0 );
end;

procedure TfrmOrganizationMap.tlToChuc_NhanVienKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F5 then
    acXemThongTin.Execute;
end;

procedure TfrmOrganizationMap.memToChuc_NhanVienBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
//
end;

end.


