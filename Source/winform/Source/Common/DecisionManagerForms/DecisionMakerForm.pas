unit DecisionMakerForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxPageControl,
  ElBtnCtl, ElPopBtn, dxLayoutControl, cxControls, ExtCtrls, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib, ActnList, ToolbarFrame, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxGrClEx, SHellAPI, Grids, DBGrids,
  DB, dxmdaset, IBODataset, StdCtrls, ElCLabel, ElLabel, ElPanel, ElSplit,
  dxBar, ElCheckCtl, ElPgCtl;

type
  TfrmDecisionMaker = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    pageMain: TdxPageControl;
    btnBack: TElPopupButton;
    dxctrlBack: TdxLayoutItem;
    btnNext: TElPopupButton;
    dxctrlNext: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    btnSubmit: TElPopupButton;
    dxctrlMakeDecision: TdxLayoutItem;
    btnCancel: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    tabThongtinQD: TdxTabSheet;
    tabCanhanChiuTN: TdxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBPopupEdit1: TdxDBPopupEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl3Group3: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxLayoutControl3Item4: TdxLayoutItem;
    dxLayoutControl3Item5: TdxLayoutItem;
    dxLayoutControl3Item7: TdxLayoutItem;
    ActionList1: TActionList;
    acCancelDecision: TAction;
    acTrolai: TAction;
    acKetiep: TAction;
    acQuyetdinh: TAction;
    acNhapThongtinChung: TAction;
    acCanhanThihanh: TAction;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    frameCanhanCTN: TframeToolbar;
    gridDecisionEmp: TdxDBGrid;
    dxLayoutControl2Item2: TdxLayoutItem;
    gridDecisionEmpFULL_NAME: TdxDBGridPopupColumn;
    gridDecisionEmpBIRTH_DATE: TdxDBGridDateColumn;
    gridDecisionEmpEDU_LEVEL_NAME: TdxDBGridMaskColumn;
    gridDecisionEmpCAREER_NAME: TdxDBGridMaskColumn;
    gridDecisionEmpGENDER: TdxDBGridImageColumn;
    acChonNhanhNV: TAction;
    mainPanel: TPanel;
    dxLayoutControl1Item2: TdxLayoutItem;
    acXemtaptin: TAction;
    OpenDialog1: TOpenDialog;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxLayoutControl3Item6: TdxLayoutItem;
    dxDBPopupEdit2: TdxDBPopupEdit;
    dxLayoutControl3Item8: TdxLayoutItem;
    tabChitietQD: TdxTabSheet;
    pageChitietQD: TdxPageControl;
    tabChitietQDBonhiem: TdxTabSheet;
    tabChitietQDThoiCV: TdxTabSheet;
    dxLayoutControl4: TdxLayoutControl;
    frameChitietQD: TframeToolbar;
    gridQDBonhiem: TdxDBGrid;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    gridQDBonhiemFULL_NAME: TdxDBGridPopupColumn;
    gridQDBonhiemPOSITION_TITLE: TdxDBGridPopupColumn;
    gridQDBonhiemASSIGNED_DATE: TdxDBGridDateColumn;
    gridQDBonhiemENDED_DATE: TdxDBGridDateColumn;
    gridQDBonhiemIS_MAIN_POSITION: TdxDBGridCheckColumn;
    gridQDBonhiemEMPLOYEE_NO: TdxDBGridColumn;
    acLuuThaydoi: TAction;
    dxlcCanhanCTN: TdxLayoutControl;
    dxDBGrid17: TdxDBGrid;
    dxDBGrid17EMPLOYEE_NO: TdxDBGridMaskColumn;
    dxDBGrid17FULL_NAME: TdxDBGridMaskColumn;
    dxDBGrid17GENDER: TdxDBGridImageColumn;
    dxDBGrid17BIRTH_DATE: TdxDBGridDateColumn;
    dxDBGrid17EDU_LEVEL_NAME: TdxDBGridMaskColumn;
    dxDBGrid17CAREER_NAME: TdxDBGridMaskColumn;
    ElPopupButton57: TElPopupButton;
    ElPopupButton58: TElPopupButton;
    dxLayoutGroup36: TdxLayoutGroup;
    dxLayoutItem72: TdxLayoutItem;
    dxLayoutGroup37: TdxLayoutGroup;
    dxLayoutItem74: TdxLayoutItem;
    dxLayoutItem75: TdxLayoutItem;
    dxLayoutControl3Item9: TdxLayoutItem;
    dximgLogo: TImage;
    dxLayoutControl5: TdxLayoutControl;
    gridQDThoiCV: TdxDBGrid;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    gridQDThoiCVFULL_NAME: TdxDBGridPopupColumn;
    gridQDThoiCVPOSITION_TITLE: TdxDBGridPopupColumn;
    gridQDThoiCVASSIGNED_DATE: TdxDBGridDateColumn;
    gridQDThoiCVDISMISS_DATE: TdxDBGridDateColumn;
    gridQDThoiCVDISMISS_NOTES: TdxDBGridColumn;
    gridQDThoiCVEMPLOYEE_NO: TdxDBGridColumn;
    tabChitietQDChuyenCT: TdxTabSheet;
    gridChangePosition: TdxDBGrid;
    tabChitietQDNghiviec: TdxTabSheet;
    dxLayoutControl6: TdxLayoutControl;
    gridNghiviec: TdxDBGrid;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    gridNghiviecEMPLOYEE_NO: TdxDBGridColumn;
    gridNghiviecFULL_NAME: TdxDBGridPopupColumn;
    gridNghiviecOFF_DATE: TdxDBGridDateColumn;
    gridNghiviecOFF_NOTE: TdxDBGridColumn;
    gridNghiviecBIRTH_DATE: TdxDBGridDateColumn;
    gridNghiviecGENDER: TdxDBGridImageColumn;
    acKichbanQDBonhiem: TAction;
    acKichbanQDThoiCV: TAction;
    acKichbanQDChuyenCT: TAction;
    acKichbanQDNghiviec: TAction;
    acChitietQDBonhiem: TAction;
    acChitietQDThoiCV: TAction;
    acChitietQDChuyenCT: TAction;
    acChitietQDNghiviec: TAction;
    tabChitietQDThemPB: TdxTabSheet;
    dxLayoutControl7: TdxLayoutControl;
    gridAddDept: TdxDBGrid;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    gridAddDeptDEPT_NO: TdxDBGridColumn;
    gridAddDeptCHANGE_NOTE: TdxDBGridMaskColumn;
    gridAddDeptDEPT_NAME: TdxDBGridPopupColumn;
    gridAddDeptFOUNDED_DATE: TdxDBGridDateColumn;
    acChitietQDThemPB: TAction;
    acKichbanQDThemPB: TAction;
    acKichbanQUYETDINH: TAction;
    tabChitietQDThaydoiPB: TdxTabSheet;
    gridFromDept: TdxDBGrid;
    gridToDept: TdxDBGrid;
    gridDecisionEmpEMPLOYEE_NO: TdxDBGridColumn;
    gridFromDeptCHANGE_NOTE: TdxDBGridMaskColumn;
    gridFromDeptFOUNDED_DATE: TdxDBGridDateColumn;
    gridFromDeptCHANGE_DATE: TdxDBGridDateColumn;
    gridFromDeptDEPT_NAME: TdxDBGridPopupColumn;
    gridToDeptCHANGE_NOTE: TdxDBGridColumn;
    gridToDeptDEPT_NAME: TdxDBGridPopupColumn;
    gridToDeptFOUNDED_DATE: TdxDBGridDateColumn;
    gridToDeptENDED_DATE: TdxDBGridDateColumn;
    acKichbanQDThaydoiPB: TAction;
    acChitietQDThaydoiPB: TAction;
    tabChitietQDXoaPB: TdxTabSheet;
    acChitietQDXoaBP: TAction;
    acKichbanQDXoaPB: TAction;
    gridDeleteDept: TdxDBGrid;
    gridDeleteDeptCHANGE_NOTE: TdxDBGridColumn;
    gridDeleteDeptDEPT_NAME: TdxDBGridPopupColumn;
    gridDeleteDeptFOUNDED_DATE: TdxDBGridDateColumn;
    gridDeleteDeptCHANGE_DATE: TdxDBGridDateColumn;
    tabChitietQDKhenthuong: TdxTabSheet;
    dxLayoutControl8: TdxLayoutControl;
    gridRewardDecision: TdxDBGrid;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    gridRewardDecisionEMP_NO: TdxDBGridColumn;
    gridRewardDecisionFULL_NAME: TdxDBGridPopupColumn;
    gridRewardDecisionREWARD_LIST_NAME: TdxDBGridPopupColumn;
    gridRewardDecisionLEVEL_NAME: TdxDBGridPopupColumn;
    gridRewardDecisionREWARD_NAME: TdxDBGridPopupColumn;
    gridRewardDecisionDSC_REWARD_NOTE: TdxDBGridColumn;
    acKichbanQDKhenthuong: TAction;
    acChitietQDKhenthuong: TAction;
    tabChitietQDKyluat: TdxTabSheet;
    dxLayoutControl9: TdxLayoutControl;
    gridDisciplineDecision: TdxDBGrid;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    gridDisciplineDecisionEMP_NO: TdxDBGridColumn;
    gridDisciplineDecisionFULL_NAME: TdxDBGridPopupColumn;
    gridDisciplineDecisionDISC_LIST_NAME: TdxDBGridPopupColumn;
    gridDisciplineDecisionLEVEL_NAME: TdxDBGridPopupColumn;
    gridDisciplineDecisionDISC_NAME: TdxDBGridPopupColumn;
    gridDisciplineDecisionDSC_DISC_NOTE: TdxDBGridColumn;
    acKichbanQDKyluat: TAction;
    acChitietQDKyluat: TAction;
    tabHesoDikem: TdxTabSheet;
    gridFormalParam: TdxDBGrid;
    gridFormalParamEMPLOYEE_NO: TdxDBGridColumn;
    gridFormalParamFULL_NAME: TdxDBGridColumn;
    acKhoitaoHeso: TAction;
    acKhoitaoMem: TAction;
    memFormalParam: TdxMemData;
    memFormalParamEMPLOYEE_NO: TWideStringField;
    memFormalParamFULL_NAME: TWideStringField;
    dsFormalParam: TDataSource;
    dxLayoutControl10Group_Root: TdxLayoutGroup;
    dxLayoutControl10: TdxLayoutControl;
    dxLayoutControl10Item1: TdxLayoutItem;
    acCapnhatHeso: TAction;
    qryExecute: TIBOQuery;
    dxLayoutControl10Item2: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl10Item3: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl10Group1: TdxLayoutGroup;
    dxLayoutControl10Item4: TdxLayoutItem;
    ElLabel1: TElLabel;
    acChitietHesoDikem: TAction;
    acChonnhanhNV_HS: TAction;
    ElSplitter2: TElSplitter;
    acKichbanQDThaydoiLuong: TAction;
    tabLuongCBNN: TdxTabSheet;
    dxLayoutControl11Group_Root: TdxLayoutGroup;
    dxLayoutControl11: TdxLayoutControl;
    dxLayoutControl11Group1: TdxLayoutGroup;
    dxLayoutControl11Group2: TdxLayoutGroup;
    dxDBEdit4: TdxDBEdit;
    dxLayoutControl11Item1: TdxLayoutItem;
    dxDBEdit5: TdxDBEdit;
    dxLayoutControl11Item2: TdxLayoutItem;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxLayoutControl11Item3: TdxLayoutItem;
    dxDBSpinEdit2: TdxDBSpinEdit;
    dxLayoutControl11Item4: TdxLayoutItem;
    dxDBSpinEdit3: TdxDBSpinEdit;
    dxLayoutControl11Item5: TdxLayoutItem;
    dxLayoutControl11Item7: TdxLayoutItem;
    frameLuongCBNN: TframeToolbar;
    acLuongCBNN: TAction;
    dxDBDateEdit2: TdxDBDateEdit;
    dxLayoutControl3Item1: TdxLayoutItem;
    dxLayoutControl3Group4: TdxLayoutGroup;
    dxLayoutControl3Group2: TdxLayoutGroup;
    gridNghiviecREASON_NAME: TdxDBGridPopupColumn;
    acBonhiemNhanhTuDSCanhan: TAction;
    acBonhiemNhanTuDSBonhiem: TAction;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    menuOption: TdxBarPopupMenu;
    acBonhiemNhanh: TAction;
    acDieuDongNhanh: TAction;
    acNhapNhanhCBNN: TAction;
    dxLayoutControl10Item5: TdxLayoutItem;
    dxFormalParam: TdxPopupEdit;
    dxLayoutControl10Item6: TdxLayoutItem;
    chkLuongCoDinh: TElRadioButton;
    dxLayoutControl10Item7: TdxLayoutItem;
    chkTangCoDinh: TElRadioButton;
    dxLayoutControl10Item8: TdxLayoutItem;
    chkTangPhanTram: TElRadioButton;
    dxLayoutControl10Item9: TdxLayoutItem;
    dxGiaTri: TdxCalcEdit;
    dxLayoutControl10Item10: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl10Group2: TdxLayoutGroup;
    qryLuongHienHanh: TIBOQuery;
    qryLuongHienHanhRESULT_VALUE: TIBOFloatField;
    qryCapNhatLuong: TIBOQuery;
    acThucThi: TAction;
    gridChangePositionEMPLOYEE_NO: TdxDBGridColumn;
    gridChangePositionFROM_ASSIGNED_DATE: TdxDBGridDateColumn;
    gridChangePositionFROM_DISMISS_DATE: TdxDBGridDateColumn;
    gridChangePositionASSIGNED_DATE: TdxDBGridDateColumn;
    gridChangePositionFROM_IS_MAIN_POSITION: TdxDBGridCheckColumn;
    gridChangePositionIS_MAIN_POSITION: TdxDBGridCheckColumn;
    gridChangePositionFULL_NAME: TdxDBGridPopupColumn;
    gridChangePositionFROM_POSITION_NAME: TdxDBGridPopupColumn;
    gridChangePositionPOSITION_NAME: TdxDBGridPopupColumn;
    pageThayDoiLuong: TElPageControl;
    tabLCBNN: TElTabSheet;
    gridEmpChange: TdxDBGrid;
    gridEmpChangeEMPLOYEE_NO: TdxDBGridColumn;
    gridEmpChangeFULL_NAME: TdxDBGridPopupColumn;
    gridEmpChangeCAREER_NAME: TdxDBGridPopupColumn;
    gridEmpChangeWAGE_LEVEL: TdxDBGridSpinColumn;
    gridEmpChangeWAGE_COEFF: TdxDBGridCalcColumn;
    gridEmpChangeAPPLY_MONTH: TdxDBGridSpinColumn;
    gridEmpChangeAPPLY_YEAR: TdxDBGridSpinColumn;
    gridEmpChangeAPPLY_PERIOD: TdxDBGridSpinColumn;
    gridEmpChangeNEXT_CAREER_NAME: TdxDBGridPopupColumn;
    gridEmpChangeNEXT_WAGE_LEVEL: TdxDBGridSpinColumn;
    gridEmpChangeNEXT_MONTH: TdxDBGridSpinColumn;
    gridEmpChangeNEXT_YEAR: TdxDBGridSpinColumn;
    tabHeSoSXKD: TElTabSheet;
    gridHeSoChucDanh: TdxDBGrid;
    gridHeSoChucDanhEMPLOYEE_NO: TdxDBGridColumn;
    gridHeSoChucDanhFULL_NAME: TdxDBGridPopupColumn;
    gridHeSoChucDanhWAGE_SCALE_NAME: TdxDBGridPopupColumn;
    gridHeSoChucDanhWAGE_LEVEL: TdxDBGridSpinColumn;
    gridHeSoChucDanhWAGE_COEFF: TdxDBGridCalcColumn;
    gridHeSoChucDanhAPPLY_MONTH: TdxDBGridSpinColumn;
    gridHeSoChucDanhAPPLY_YEAR: TdxDBGridSpinColumn;
    gridHeSoChucDanhAPPLY_PERIOD: TdxDBGridSpinColumn;
    gridHeSoChucDanhNEXT_WAGE_SCALE_NAME: TdxDBGridPopupColumn;
    gridHeSoChucDanhNEXT_WAGE_LEVEL: TdxDBGridSpinColumn;
    gridHeSoChucDanhNEXT_MONTH: TdxDBGridSpinColumn;
    gridHeSoChucDanhNEXT_YEAR: TdxDBGridSpinColumn;
    dxLayoutControl11Item6: TdxLayoutItem;
    acNhapNhanhLuongChucDanh: TAction;
    gridQDBonhiemTG_GIU_CHUCVU: TdxDBGridCalcColumn;
    gridQDThoiCVNGAY_HETHAN_CHOVIEC: TdxDBGridDateColumn;
    gridQDThoiCVTHOIGIAN_CHOVIEC: TdxDBGridCalcColumn;
    procedure FormCreate(Sender: TObject);
    procedure dxDBPopupEdit1InitPopup(Sender: TObject);
    procedure acTrolaiUpdate(Sender: TObject);
    procedure acTrolaiExecute(Sender: TObject);
    procedure acKetiepExecute(Sender: TObject);
    procedure acNhapThongtinChungExecute(Sender: TObject);
    procedure acCanhanThihanhExecute(Sender: TObject);
    procedure acQuyetdinhExecute(Sender: TObject);
    procedure acCancelDecisionUpdate(Sender: TObject);
    procedure acCancelDecisionExecute(Sender: TObject);
    procedure acChonNhanhNVExecute(Sender: TObject);
    procedure gridDecisionEmpFULL_NAMEInitPopup(Sender: TObject);
    procedure gridDecisionEmpFULL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure acXemtaptinExecute(Sender: TObject);
    procedure acXemtaptinUpdate(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure acLuuThaydoiUpdate(Sender: TObject);
    procedure gridQDBonhiemFULL_NAMEInitPopup(Sender: TObject);
    procedure gridQDBonhiemFULL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBGrid17DblClick(Sender: TObject);
    procedure gridQDBonhiemPOSITION_TITLEInitPopup(Sender: TObject);
    procedure gridQDBonhiemPOSITION_TITLECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure pageMainChanging(Sender: TObject; NewPage: TdxTabSheet;
      var AllowChange: Boolean);
    procedure gridQDThoiCVFULL_NAMEInitPopup(Sender: TObject);
    procedure gridQDThoiCVFULL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridQDThoiCVPOSITION_TITLEInitPopup(Sender: TObject);
    procedure gridQDThoiCVPOSITION_TITLECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure pageChitietQDChanging(Sender: TObject; NewPage: TdxTabSheet;
      var AllowChange: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridChangePositionFULL_NAMEInitPopup(Sender: TObject);
    procedure gridChangePositionFULL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridChangePositionPOSITION_TITLECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridNghiviecFULL_NAMEInitPopup(Sender: TObject);
    procedure gridNghiviecFULL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure acKichbanQDBonhiemExecute(Sender: TObject);
    procedure acKichbanQDThoiCVExecute(Sender: TObject);
    procedure acKichbanQDChuyenCTExecute(Sender: TObject);
    procedure acKichbanQDNghiviecExecute(Sender: TObject);
    procedure acChitietQDBonhiemExecute(Sender: TObject);
    procedure acChitietQDThoiCVExecute(Sender: TObject);
    procedure acChitietQDChuyenCTExecute(Sender: TObject);
    procedure acChitietQDNghiviecExecute(Sender: TObject);
    procedure gridAddDeptDEPT_NAMEInitPopup(Sender: TObject);
    procedure gridAddDeptDEPT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure acChitietQDThemPBExecute(Sender: TObject);
    procedure acKichbanQDThemPBExecute(Sender: TObject);
    procedure acKetiepUpdate(Sender: TObject);
    procedure acQuyetdinhUpdate(Sender: TObject);
    procedure acKichbanQUYETDINHExecute(Sender: TObject);
    procedure gridFromDeptDEPT_NAMEInitPopup(Sender: TObject);
    procedure gridFromDeptDEPT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridToDeptDEPT_NAMEInitPopup(Sender: TObject);
    procedure gridToDeptDEPT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure acKichbanQDThaydoiPBExecute(Sender: TObject);
    procedure acChitietQDThaydoiPBExecute(Sender: TObject);
    procedure gridFromDeptEnter(Sender: TObject);
    procedure gridToDeptEnter(Sender: TObject);
    procedure acKichbanQDXoaPBExecute(Sender: TObject);
    procedure gridDeleteDeptDEPT_NAMEInitPopup(Sender: TObject);
    procedure gridDeleteDeptDEPT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure acChitietQDXoaBPExecute(Sender: TObject);
    procedure gridRewardDecisionFULL_NAMEInitPopup(Sender: TObject);
    procedure gridRewardDecisionFULL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridRewardDecisionREWARD_LIST_NAMEInitPopup(Sender: TObject);
    procedure gridRewardDecisionREWARD_LIST_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridRewardDecisionLEVEL_NAMEInitPopup(Sender: TObject);
    procedure gridRewardDecisionLEVEL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridRewardDecisionREWARD_NAMEInitPopup(Sender: TObject);
    procedure gridRewardDecisionREWARD_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure acKichbanQDKhenthuongExecute(Sender: TObject);
    procedure acChitietQDKhenthuongExecute(Sender: TObject);
    procedure gridDisciplineDecisionFULL_NAMEInitPopup(Sender: TObject);
    procedure gridDisciplineDecisionFULL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridDisciplineDecisionDISC_LIST_NAMEInitPopup(
      Sender: TObject);
    procedure gridDisciplineDecisionDISC_LIST_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridDisciplineDecisionLEVEL_NAMEInitPopup(Sender: TObject);
    procedure gridDisciplineDecisionLEVEL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridDisciplineDecisionDISC_NAMEInitPopup(Sender: TObject);
    procedure gridDisciplineDecisionDISC_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure acKichbanQDKyluatExecute(Sender: TObject);
    procedure acChitietQDKyluatExecute(Sender: TObject);
    procedure dxDBPopupEdit2InitPopup(Sender: TObject);
    procedure dxDBPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure acKhoitaoHesoExecute(Sender: TObject);
    procedure acKhoitaoMemExecute(Sender: TObject);
    procedure acCapnhatHesoExecute(Sender: TObject);
    procedure acChitietHesoDikemExecute(Sender: TObject);
    procedure memFormalParamAfterEdit(DataSet: TDataSet);
    procedure acCapnhatHesoUpdate(Sender: TObject);
    procedure acChonnhanhNV_HSExecute(Sender: TObject);
    procedure acKichbanQDThaydoiLuongExecute(Sender: TObject);
    procedure gridEmpChangeFULL_NAMEInitPopup(Sender: TObject);
    procedure gridEmpChangeFULL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridEmpChangeCAREER_NAMEInitPopup(Sender: TObject);
    procedure gridEmpChangeCAREER_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure DefOnWageStandardEnter(Sender: TObject);
    procedure acLuongCBNNExecute(Sender: TObject);
    procedure gridNghiviecREASON_NAMEInitPopup(Sender: TObject);
    procedure gridNghiviecREASON_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure acBonhiemNhanhExecute(Sender: TObject);
    procedure acBonhiemNhanhUpdate(Sender: TObject);
    procedure acDieuDongNhanhExecute(Sender: TObject);
    procedure acNhapNhanhCBNNExecute(Sender: TObject);
    procedure dxFormalParamInitPopup(Sender: TObject);
    procedure dxFormalParamCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure acThucThiExecute(Sender: TObject);
    procedure acDieuDongNhanhUpdate(Sender: TObject);
    procedure gridChangePositionPOSITION_NAMEInitPopup(Sender: TObject);
    procedure gridChangePositionPOSITION_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridChangePositionFROM_POSITION_NAMEInitPopup(
      Sender: TObject);
    procedure gridChangePositionFROM_POSITION_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure acNhapNhanhLuongChucDanhExecute(Sender: TObject);
    procedure gridHeSoChucDanhFULL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridHeSoChucDanhFULL_NAMEInitPopup(Sender: TObject);
    procedure gridHeSoChucDanhWAGE_SCALE_NAMEInitPopup(Sender: TObject);
    procedure gridHeSoChucDanhWAGE_SCALE_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridHeSoChucDanhNEXT_WAGE_SCALE_NAMEInitPopup(Sender: TObject);
    procedure gridHeSoChucDanhNEXT_WAGE_SCALE_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridEmpChangeNEXT_CAREER_NAMEInitPopup(Sender: TObject);
    procedure gridEmpChangeNEXT_CAREER_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure DefOnWageCompanyEnter(Sender: TObject);
  private
    { Private declarations }
    State, ActionState: string;
    IS_END, Formal_param_change: boolean;
    PARAM_NO :Widestring;
  public
    { Public declarations }
  end;

var
  frmDecisionMaker: TfrmDecisionMaker;

implementation

uses MainDM, DecisionDataModule, PopupMainForm, SSP_Library,
  EmpForSelectForm, EmpInfoDataModule, MainUnit,TypInfo,
  EmpPositionWizardForm, DieuDongWizardForm, NhapNhanhLuongCBNNForm,
  NhapNhanhLuongCongTyForm;

{$R *.dfm}

procedure TfrmDecisionMaker.FormCreate(Sender: TObject);
begin
  acKhoitaoMem.Execute;
  inherited;
  pageMain.HideButtons := true;
  pageChitietQD.HideButtons := true;
  frameCanhanCTN.SetDataSource(DecisionDM.dsDecision_Emp);
  IS_END := false;
  if not DecisionDM.qryDecisions.Active then
  begin
    DecisionDM.qryDecisions.Open;
  end;
  if DecisionDM.qryDecision_Emp.Active then DecisionDM.qryDecision_Emp.Close;
  DecisionDM.qryDecision_Emp.Open;
  if (DecisionDM.qryDecisions.State in [dsInsert]) then
    State := 'NEW'
  else
  begin
    if (DecisionDM.qryDecisions.State in [dsEdit]) then
      State := 'EDIT'
    else
      State := 'BROWSE';
  end;
  fcMain.Texts[1].Caption :=
    WideUpperCase(DecisionDM.qryDecisionsDCS_TYPE_NAME.Value);

  acNhapThongtinChung.Execute;
end;

procedure TfrmDecisionMaker.dxDBPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.SQLWhere.Text := 'where ORDER_RIGHT=1';
  frmPopupMain.dxlcDeptListItem1.Visible := false;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmDecisionMaker.acTrolaiUpdate(Sender: TObject);
begin
  inherited;
  acTrolai.Enabled := (pageMain.ActivePage <> tabThongtinQD);
end;

procedure TfrmDecisionMaker.acTrolaiExecute(Sender: TObject);
begin
  inherited;
  ActionState := 'BACK';
  acKichbanQUYETDINH.Execute;
  //=======================================================
end;

procedure TfrmDecisionMaker.acKetiepExecute(Sender: TObject);
begin
  inherited;
  ActionState := 'NEXT';
  acKichbanQUYETDINH.Execute;
end;

procedure TfrmDecisionMaker.acNhapThongtinChungExecute(Sender: TObject);
begin
  inherited;
  if pageMain.ActivePage <> tabThongtinQD then
    pageMain.ActivePage := tabThongtinQD;
end;

procedure TfrmDecisionMaker.acCanhanThihanhExecute(Sender: TObject);
begin
  inherited;
  //==================================================================
  if pageMain.ActivePage <> tabCanhanChiuTN then
    pageMain.ActivePage := tabCanhanChiuTN;
end;

procedure TfrmDecisionMaker.acQuyetdinhExecute(Sender: TObject);
begin
  inherited;
  if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'BONHIEM' then
    dmmain.MsgChangeDataSource(DecisionDM.dsChitietBonhiem)
  else
    if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'CHUYEN_CT' then
  begin
    dmmain.MsgChangeDataSource(DecisionDM.dsChangePosition);
  end
  else
    if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'THOI_CV' then
    dmmain.MsgChangeDataSource(DecisionDM.dsChitietThoiCV)
  else
    if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'THOI_VIEC' then
    dmmain.MsgChangeDataSource(DecisionDM.dsOffWork)
  else
    if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'TL_PHONG' then
    dmmain.MsgChangeDataSource(DecisionDM.dsAddDepartment)
  else
    if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'CD_PHONG' then
  begin
    dmmain.MsgChangeDataSource(DecisionDM.dsFromDept);
    dmmain.MsgChangeDataSource(DecisionDM.dsToDept);
  end
  else
    if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'XOA_PHONG' then
    dmmain.MsgChangeDataSource(DecisionDM.dsDeleteDept)
  else
    if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'KHEN_THUONG' then
    dmmain.MsgChangeDataSource(DecisionDM.dsRewardDecision)
  else
    if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'KY_LUAT' then
    dmmain.MsgChangeDataSource(DecisionDM.dsDisciplineDecision);

//*************** tyntb 25/03/2009 ******************************************//
  dmmain.MsgChangeDataSource(DecisionDM.dsEmpStandardWage);

//****************************************************************//

  ModalResult := mrOK;
end;

procedure TfrmDecisionMaker.acCancelDecisionUpdate(Sender: TObject);
begin
  inherited;
  // dinh nghia diem ket thuc cua chuoi HD
  dxctrlNext.Visible := not IS_END;
  dxctrlMakeDecision.Visible := IS_END;
  //=======================================================
end;

procedure TfrmDecisionMaker.acCancelDecisionExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TfrmDecisionMaker.acChonNhanhNVExecute(Sender: TObject);
begin
  inherited;
  with TfrmEmpForSelect.Create(self) do
  try
    if ShowModal = mrOk then
    begin
      Screen.Cursor := crSQLWait;
      if DecisionDM.qryDecision_Emp.State in [dsInsert,dsEdit] then
        DecisionDM.qryDecision_Emp.Cancel;
      DecisionDM.qryDecision_Emp.DisableControls;
      if (memList.IsEmpty = false) then
      begin
        qryExecute.SQL.Text := 'INSERT INTO HR_DECISION_EMP(DECISION_NO,EMPLOYEE_NO) ' +
          ' VALUES (:DECISION_NO,:EMPLOYEE_NO)';
        frmMain.SetStatusBarPrgDisplay(0, memList.RecordCount);
        memList.First;
        while not memList.Eof do
        begin
          if memListSELECTED.Value = 1 then
            if not DecisionDM.qryDecision_Emp.Locate('EMPLOYEE_NO',
              memListEMPLOYEE_NO.Value, []) then
            begin
              qryExecute.ParamByName('DECISION_NO').Value := DecisionDM.qryDecisionsDECISION_NO.Value;
              qryExecute.ParamByName('EMPLOYEE_NO').Value := memListEMPLOYEE_NO.Value;
              try
                dmMain.ExecuteSQL(qryExecute);
              except
              end;
            end;
          memList.Next;
          frmMain.BarPrgStepIt;
        end;
        dmMain.CommitTransaction;
        DecisionDM.qryDecision_Emp.Close;
        DecisionDM.qryDecision_Emp.Open;
      end;
      DecisionDM.qryDecision_Emp.EnableControls;
      if State <> 'NEW' then State := 'EDIT';
      Screen.Cursor := crDefault;
    end;
  finally
    Free;
  end;
end;

procedure TfrmDecisionMaker.gridDecisionEmpFULL_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  //------------------ tyntb 27/03/2009 -----------------------------------//
  if frmPopupMain.qryEmpForSelect.active then frmPopupMain.qryEmpForSelect.close;
  //---------------------------------------------------------------------//

  //Edited by THUYPTP - 28/4/2009
  //frmPopupMain.qryEmpForSelect.Open;
  frmPopupMain.dximOptionChange(sender);
  //Het
  InitPopupControl('dxlcEmpForSelect', frmPopupMain, sender, 2.5,
    gridDecisionEmp);
end;

procedure TfrmDecisionMaker.gridDecisionEmpFULL_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryEmpForSelect,
    DecisionDM.qryDecision_Emp,
    'EMPLOYEE_NO;FULL_NAME;GENDER;BIRTH_DATE;EDU_LEVEL_NAME;CAREER_NAME',
    'EMPLOYEE_NO;FULL_NAME;GENDER;BIRTH_DATE;EDU_LEVEL_NAME;CAREER_NAME',
    'FULL_NAME', Text);
  frmPopupMain.qryEmpForSelect.Close;
end;

procedure TfrmDecisionMaker.acXemtaptinExecute(Sender: TObject);
begin
  inherited;
  if Length(DecisionDM.qryDecisionsFILE_NAME.Value) = 0 then exit;
  DecisionDM.qryDecisionsFILE_CONTENT.SaveToFile(ExtractFilePath(Application.ExeName)
    + DecisionDM.qryDecisions.FieldByName('FILE_NAME').AsString);
  ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)
    + DecisionDM.qryDecisions.FieldByName('FILE_NAME').AsString), nil, nil,
    SW_SHOWNORMAL);

end;

procedure TfrmDecisionMaker.acXemtaptinUpdate(Sender: TObject);
begin
  inherited;
  acXemtaptin.Enabled := not (DecisionDM.qryDecisionsFILE_CONTENT.IsNull or
    DecisionDM.qryDecisions.FieldByName('FILE_NAME').IsNull);
end;

procedure TfrmDecisionMaker.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  dmMain.DatasetLoadFile(sender, AbsoluteIndex);
end;

procedure TfrmDecisionMaker.acLuuThaydoiUpdate(Sender: TObject);
begin
  inherited;
  acLuuThaydoi.Enabled := (State = 'EDIT');
end;

procedure TfrmDecisionMaker.gridQDBonhiemFULL_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  InitPopupControl('dxlcCanhanCTN', self, sender, 2.5, gridQDBonhiem);
end;

procedure TfrmDecisionMaker.gridQDBonhiemFULL_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, DecisionDM.qryDecision_Emp,
    DecisionDM.qryChitietBonhiem,
    'DECISION_NO;EMPLOYEE_NO;FULL_NAME', 'DECISION_NO;EMPLOYEE_NO;FULL_NAME',
    'FULL_NAME', Text);
end;

procedure TfrmDecisionMaker.dxDBGrid17DblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self, true, sender);
end;

procedure TfrmDecisionMaker.gridQDBonhiemPOSITION_TITLEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryPosition.Open;
  InitPopupControl('dxlcPosition', frmPopupMain, sender, 2.5, gridQDBonhiem);
end;

procedure TfrmDecisionMaker.gridQDBonhiemPOSITION_TITLECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryPosition, DecisionDM.qryChitietBonhiem,
    'POSITION_NO;POSITION_TITLE', 'POSITION_NO;POSITION_TITLE',
    'POSITION_TITLE', Text);
  frmPopupMain.qryPosition.Close;
end;

procedure TfrmDecisionMaker.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryDeptList, DecisionDM.qryDecisions,
    'DEPT_NO;DEPT_NAME', 'DEPT_NO;DEPT_NAME',
    'DEPT_NAME', Text);
  frmPopupMain.qryDeptList.Close;
  frmPopupMain.qryDeptList.SQLWhere.Clear;
  frmPopupMain.dxlcDeptListItem1.Visible := true;
end;

procedure TfrmDecisionMaker.pageMainChanging(Sender: TObject;
  NewPage: TdxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if pageMain.ActivePage = tabThongtinQD then
  begin
    AllowChange := dmMain.MsgChangeDataSource(DecisionDM.dsDecisions, false);
    if AllowChange then
      STATE := 'EDIT';
  end
  else
    if pageMain.ActivePage = tabCanhanChiuTN then
    AllowChange := dmMain.MsgChangeDataSource(DecisionDM.dsDecision_Emp, false)
  else
//------------ tyntb 25/03/2009 -----------------------------------------------//
  // QD bo nhiem
    if (pageMain.ActivePage = tabChitietQD) and (pageChitietQD.ActivePage = tabChitietQDBonhiem) then
    AllowChange := dmMain.MsgChangeDataSource(DecisionDM.dsChitietBonhiem, true)
 // QD thoi chuc vu
    else if (pageMain.ActivePage = tabChitietQD) and (pageChitietQD.ActivePage = tabChitietQDThoiCV) then
      AllowChange := dmMain.MsgChangeDataSource(DecisionDM.dsChitietThoiCV, true)
 // QD chuyen cong tac
    {else if (pageMain.ActivePage = tabChitietQD) and (pageChitietQD.ActivePage = tabChitietQDChuyenCT) then
    begin
      if (DecisionDM.qryChangePosition.State in [dsInsert,dsEdit]) then
        AllowChange := dmMain.MsgChangeDataSource(DecisionDM.dsChangePosition, true);
    end}
  // QD khen thuong
    else if (pageMain.ActivePage = tabChitietQD) and (pageChitietQD.ActivePage = tabChitietQDKhenthuong) then
      AllowChange := dmMain.MsgChangeDataSource(DecisionDM.dsRewardDecision, true)
  // QD ky luat
    else if (pageMain.ActivePage = tabChitietQD) and (pageChitietQD.ActivePage = tabChitietQDKyluat) then
      AllowChange := dmMain.MsgChangeDataSource(DecisionDM.dsDisciplineDecision, true)
  // QD them phong ban
    else if (pageMain.ActivePage = tabChitietQD) and (pageChitietQD.ActivePage = tabChitietQDThemPB) then
      AllowChange := dmMain.MsgChangeDataSource(DecisionDM.dsAddDepartment, true)
   // QD xoa phong ban
    else if (pageMain.ActivePage = tabChitietQD) and (pageChitietQD.ActivePage = tabChitietQDXoaPB) then
      AllowChange := dmMain.MsgChangeDataSource(DecisionDM.dsDeleteDept, true)
  // QD thay doi phong ban
    else if (pageMain.ActivePage = tabChitietQD) and (pageChitietQD.ActivePage = tabChitietQDThaydoiPB) then
    begin
      if (DecisionDM.qryFromDept.State in [dsInsert,dsEdit]) then
        AllowChange := dmMain.MsgChangeDataSource(DecisionDM.dsFromDept, true);
      if (DecisionDM.qryToDept.State in [dsInsert,dsEdit]) then
        AllowChange := dmMain.MsgChangeDataSource(DecisionDM.dsToDept, true);
    end
  else
    if (pageMain.ActivePage = tabHesoDikem) and (Formal_param_change =true) then
    begin
      if ShowMessageUnicode(6) = mrYes then
        acCapnhatHeso.Execute
    end
//--------------------------------------------------------------------------------------------------------------//
end;

procedure TfrmDecisionMaker.gridQDThoiCVFULL_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  InitPopupControl('dxlcCanhanCTN', self, sender, 2.5, gridQDThoiCV);
end;

procedure TfrmDecisionMaker.gridQDThoiCVFULL_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, DecisionDM.qryDecision_Emp,
    DecisionDM.qryChitietThoiCV,
    'DECISION_NO;EMPLOYEE_NO;FULL_NAME', 'DECISION_NO;EMPLOYEE_NO;FULL_NAME',
    'FULL_NAME', Text);
end;

procedure TfrmDecisionMaker.gridQDThoiCVPOSITION_TITLEInitPopup(
  Sender: TObject);
begin
  inherited;
  if frmPopupMain.qryEmp_Position.Active then
    frmPopupMain.qryEmp_Position.Close;
  frmPopupMain.qryEmp_Position.SQLWhere.Text :=
    'where (hr_assignment.employee_no=:employee_no) and ' +
    '   (hr_assignment.dismiss_date is null) and '+
    '   ((:IS_MAIN_POSITION=2)or(IS_MAIN_POSITION=:IS_MAIN_POSITION))';
  frmPopupMain.qryEmp_Position.ParamByName('EMPLOYEE_NO').Value :=
    DecisionDM.qryChitietThoiCVEMPLOYEE_NO.Value;
  frmPopupMain.qryEmp_Position.Open;
  InitPopupControl('dxlcEmp_Position', frmPopupMain, sender, 2.5, gridQDThoiCV);
end;

procedure TfrmDecisionMaker.gridQDThoiCVPOSITION_TITLECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryEmp_Position,
    DecisionDM.qryChitietThoiCV,
    'POSITION_NO;POSITION_TITLE;ASSIGNED_DATE',
    'POSITION_NO;POSITION_TITLE;ASSIGNED_DATE',
    'POSITION_TITLE', Text);
  frmPopupMain.qryEmp_Position.Close;
    frmPopupMain.qryEmp_Position.SQLWhere.Text :=
    'where (DISMISS_DATE is null) ' +
    'and ((:IS_MAIN_POSITION=2)or(IS_MAIN_POSITION=:IS_MAIN_POSITION))';
end;

procedure TfrmDecisionMaker.pageChitietQDChanging(Sender: TObject;
  NewPage: TdxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if pageChitietQD.ActivePage = tabChitietQDBonhiem then
    AllowChange := dmMain.MsgChangeDataSource(DecisionDM.dsChitietBonhiem)
  else
    if pageChitietQD.ActivePage = tabChitietQDThoiCV then
    AllowChange := dmMain.MsgChangeDataSource(DecisionDM.dsChitietThoiCV)
  else
    if pageChitietQD.ActivePage = tabChitietQDChuyenCT then
  begin
    AllowChange := dmMain.MsgChangeDataSource(DecisionDM.dsChangePosition);
  end
  else
    if pageChitietQD.ActivePage = tabChitietQDNghiviec then
    AllowChange := dmMain.MsgChangeDataSource(DecisionDM.dsOffWork)
end;

procedure TfrmDecisionMaker.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (ModalResult = mrCancel) then
  begin
    if (State = 'NEW') then
    begin
      if (DecisionDM.qryDecisions.State in [dsEdit, dsInsert]) then
        if ShowMessageUnicode(36) <> mrYes then
          DecisionDM.qryDecisions.Cancel
        else
        begin
          try
            DecisionDM.qryDecisions.Post;
          except
            Abort;
            Exit;
          end;
        end
    end
  end
  else
  begin
    if (DecisionDM.qryDecisions.State in [dsEdit, dsInsert]) then
      DecisionDM.qryDecisions.Cancel;
  end;
  CancelAllDetailDataset(DecisionDM.dsDecisions,DecisionDM);
end;

procedure TfrmDecisionMaker.gridChangePositionFULL_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  InitPopupControl('dxlcCanhanCTN', self, sender, 2.5, gridChangePosition);
end;

procedure TfrmDecisionMaker.gridChangePositionFULL_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, DecisionDM.qryDecision_Emp,
    DecisionDM.qryChangePosition,
    'DECISION_NO;EMPLOYEE_NO;FULL_NAME', 'DECISION_NO;EMPLOYEE_NO;FULL_NAME',
    'FULL_NAME', Text);
end;

procedure TfrmDecisionMaker.gridChangePositionPOSITION_TITLECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryEmp_Position,
    DecisionDM.qryChangePosition,
    'POSITION_NO;POSITION_TITLE;ASSIGNED_DATE;IS_MAIN_POSITION',
    'POSITION_NO;POSITION_NAME;ASSIGNED_DATE;IS_MAIN_POSITION',
    'POSITION_NAME', Text);
  frmPopupMain.qryEmp_Position.Close;
  frmPopupMain.qryEmp_Position.SQLWhere.Text :=
    'where (DISMISS_DATE is null) ' +
    'and ((:IS_MAIN_POSITION=2)or(IS_MAIN_POSITION=:IS_MAIN_POSITION))';
end;

procedure TfrmDecisionMaker.gridNghiviecFULL_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  //Edited by THUYPTP - 28/4/2009
  //frmPopupMain.qryEmpForSelect.Open;
  frmPopupMain.dximOptionChange(sender);
  //Het
  InitPopupControl('dxlcEmpForSelect', frmPopupMain, sender, 2.5, gridNghiviec);
end;

procedure TfrmDecisionMaker.gridNghiviecFULL_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryEmpForSelect, DecisionDM.qryOffWork,
    'EMPLOYEE_NO;FULL_NAME;GENDER;BIRTH_DATE',
    'EMPLOYEE_NO;FULL_NAME;GENDER;BIRTH_DATE',
    'FULL_NAME', Text);
  frmPopupMain.qryEmpForSelect.Close;
end;

procedure TfrmDecisionMaker.acKichbanQDBonhiemExecute(Sender: TObject);
begin
  inherited;
  IS_END := false;
  if ActionState = 'NEXT' then
  begin
    if pageMain.ActivePage = tabThongtinQD then
      acCanhanThihanh.Execute
    else
      if pageMain.ActivePage = tabCanhanChiuTN then
    begin
      acChitietQDBonhiem.Execute;
    end
    else
      if (pageMain.ActivePage = tabChitietQD) and
      (pageChitietQD.ActivePage = tabChitietQDBonhiem) then
    begin
      acChitietHesoDikem.Execute;
    end
    else
    if (pageMain.ActivePage = tabHesoDikem) then
    begin
      IS_END := true;
      acLuongCBNN.Execute;
    end
  end
  else
    if ActionState = 'BACK' then
  begin
    if (pageMain.ActivePage = tabCanhanChiuTN) then
      acNhapThongtinChung.Execute
    else
      if (pageMain.ActivePage = tabChitietQD) then
      acCanhanThihanh.Execute
    else
    if (pageMain.ActivePage = tabHesoDikem) then
      acChitietQDBonhiem.Execute
    else
    if (pageMain.ActivePage = tabLuongCBNN) then
      acChitietHesoDikem.Execute
  end
end;

procedure TfrmDecisionMaker.acKichbanQDThoiCVExecute(Sender: TObject);
begin
  inherited;
  IS_END := false;
  if ActionState = 'NEXT' then
  begin
    if pageMain.ActivePage = tabThongtinQD then
      acCanhanThihanh.Execute
    else
      if pageMain.ActivePage = tabCanhanChiuTN then
    begin
      acChitietQDThoiCV.Execute;
    end
    else
      if (pageMain.ActivePage = tabChitietQD) and
      (pageChitietQD.ActivePage = tabChitietQDThoiCV) then
    begin
       acChitietHesoDikem.Execute;
    end
    else
    if (pageMain.ActivePage = tabHesoDikem) then
    begin
      IS_END := true;
      acLuongCBNN.Execute;
    end
  end
  else
    if ActionState = 'BACK' then
  begin
    if (pageMain.ActivePage = tabCanhanChiuTN) then
      acNhapThongtinChung.Execute
    else
      if (pageMain.ActivePage = tabChitietQD) then
      acCanhanThihanh.Execute
    else
      if (pageMain.ActivePage = tabHesoDikem) then
      acChitietQDThoiCV.Execute
    else
    if pageMain.ActivePage=tabLuongCBNN then
      acChitietHesoDikem.Execute;
  end
end;

procedure TfrmDecisionMaker.acKichbanQDChuyenCTExecute(Sender: TObject);
begin
  inherited;
  IS_END := false;
  if ActionState = 'NEXT' then
  begin
    if pageMain.ActivePage = tabThongtinQD then
      acCanhanThihanh.Execute
    else
      if pageMain.ActivePage = tabCanhanChiuTN then
    begin
      acChitietQDChuyenCT.Execute;
    end
    else
      if (pageMain.ActivePage = tabChitietQD) and
      (pageChitietQD.ActivePage = tabChitietQDChuyenCT) then
    begin
      acChitietHesoDikem.Execute;
    end
    else
    if (pageMain.ActivePage = tabHesoDikem) then
    begin
      IS_END := true;
      acLuongCBNN.Execute;
    end
  end
  else
    if ActionState = 'BACK' then
  begin
    if (pageMain.ActivePage = tabCanhanChiuTN) then
      acNhapThongtinChung.Execute
    else
      if (pageMain.ActivePage = tabChitietQD) then
      acCanhanThihanh.Execute
    else
      if (pageMain.ActivePage = tabHesoDikem) then
      acChitietQDChuyenCT.Execute
     else
    if pageMain.ActivePage=tabLuongCBNN then
      acChitietHesoDikem.Execute;
  end
end;

procedure TfrmDecisionMaker.acKichbanQDNghiviecExecute(Sender: TObject);
begin
  inherited;
  IS_END := false;
  if ActionState = 'NEXT' then
  begin
    if (pageMain.ActivePage = tabThongtinQD)
      or (pageMain.ActivePage = tabCanhanChiuTN) then
    begin
      if (DecisionDM.qryDecisions.State in [dsInsert, dsEdit]) then
        DecisionDM.qryDecisions.Post; 


      if not (DecisionDM.qryDecisions.State in [dsInsert, dsEdit]) then
      begin
        IS_END := true;
        acChitietQDNghiviec.Execute;
      end
      else
      begin
        IS_END := false;
      end;

    end
  end
  else
    if ActionState = 'BACK' then
  begin
    if (pageMain.ActivePage = tabCanhanChiuTN) then
      acNhapThongtinChung.Execute
    else
      if (pageMain.ActivePage = tabChitietQD) then
      acNhapThongtinChung.Execute
  end
end;

procedure TfrmDecisionMaker.acChitietQDBonhiemExecute(Sender: TObject);
begin
  inherited;
  pageMain.ActivePage := tabChitietQD;
  pageChitietQD.ActivePage := tabChitietQDBonhiem;
  frameChitietQD.SetDataSource(DecisionDM.dsChitietBonhiem);
  if not DecisionDM.qryChitietBonhiem.Active then
    DecisionDM.qryChitietBonhiem.Open;
end;

procedure TfrmDecisionMaker.acChitietQDThoiCVExecute(Sender: TObject);
begin
  inherited;
  pageMain.ActivePage := tabChitietQD;
  pageChitietQD.ActivePage := tabChitietQDThoiCV;
  frameChitietQD.SetDataSource(DecisionDM.dsChitietThoiCV);
  if not DecisionDM.qryChitietThoiCV.Active then
    DecisionDM.qryChitietThoiCV.Open;
end;

procedure TfrmDecisionMaker.acChitietQDChuyenCTExecute(Sender: TObject);
begin
  inherited;
  pageMain.ActivePage := tabChitietQD;
  pageChitietQD.ActivePage := tabChitietQDChuyenCT;
  frameChitietQD.SetDataSource(DecisionDM.dsChangePosition);
  if not DecisionDM.qryChangePosition.Active then
    DecisionDM.qryChangePosition.Open;
end;

procedure TfrmDecisionMaker.acChitietQDNghiviecExecute(Sender: TObject);
begin
  inherited;
  pageMain.ActivePage := tabChitietQD;
  pageChitietQD.ActivePage := tabChitietQDNghiviec;
  frameChitietQD.SetDataSource(DecisionDM.dsOffWork);
  if not DecisionDM.qryOffWork.Active then
    DecisionDM.qryOffWork.Open;
end;

procedure TfrmDecisionMaker.gridAddDeptDEPT_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2, gridAddDept);
end;

procedure TfrmDecisionMaker.gridAddDeptDEPT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryDeptList, DecisionDM.qryAddDeparment,
    'DEPT_NO;DEPT_NAME;FOUNDED_DATE', 'DEPT_NO;DEPT_NAME;FOUNDED_DATE',
    'DEPT_NAME', Text);
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmDecisionMaker.acChitietQDThemPBExecute(Sender: TObject);
begin
  inherited;
  pageMain.ActivePage := tabChitietQD;
  pageChitietQD.ActivePage := tabChitietQDThemPB;
  frameChitietQD.SetDataSource(DecisionDM.dsAddDepartment);
  if not DecisionDM.qryAddDeparment.Active then
    DecisionDM.qryAddDeparment.Open;
end;

procedure TfrmDecisionMaker.acKichbanQDThemPBExecute(Sender: TObject);
begin
  inherited;
  IS_END := false;
  if ActionState = 'NEXT' then
  begin
    if pageMain.ActivePage = tabThongtinQD then
      acChitietQDThemPB.Execute
    else
    if pageMain.ActivePage = tabChitietQD then
    begin
      if pageChitietQD.ActivePage = tabChitietQDThemPB then
        acCanhanThihanh.Execute
      else
        if pageChitietQD.ActivePage = tabChitietQDBonhiem then
        acChitietQDChuyenCT.Execute
      else
        if pageChitietQD.ActivePage = tabChitietQDChuyenCT then
      begin
        acChitietHesoDikem.Execute;
      end
    end
    else
      if pageMain.ActivePage = tabCanhanChiuTN then
      acChitietQDBonhiem.Execute
    else
    if pageMain.ActivePage=tabHesoDikem then
    begin
      IS_END:=true;
      acLuongCBNN.Execute;
    end
  end
  else
    if ActionState = 'BACK' then
  begin
    if (pageMain.ActivePage = tabCanhanChiuTN) then
      acChitietQDThemPB.Execute
    else
      if (pageMain.ActivePage = tabChitietQD) then
    begin
      if pageChitietQD.ActivePage = tabChitietQDThemPB then
        acNhapThongtinChung.Execute
      else
        if pageChitietQD.ActivePage = tabChitietQDBonhiem then
        acCanhanThihanh.Execute
      else
        if pageChitietQD.ActivePage = tabChitietQDChuyenCT then
        acChitietQDBonhiem.Execute
      else
    end
    else if pageMain.ActivePage = tabHesoDikem then
      acChitietQDChuyenCT.Execute
    else
    if PageMain.ActivePage=tabLuongCBNN then
      acChitietHesoDikem.Execute;
  end
end;

procedure TfrmDecisionMaker.acKetiepUpdate(Sender: TObject);
begin
  inherited;
  acKetiep.Enabled := not IS_END;
end;

procedure TfrmDecisionMaker.acQuyetdinhUpdate(Sender: TObject);
begin
  inherited;
  acQuyetdinh.Enabled := IS_END;
end;

procedure TfrmDecisionMaker.acKichbanQUYETDINHExecute(Sender: TObject);
begin
  inherited;
  if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'BONHIEM' then
    acKichbanQDBonhiem.Execute
  else
    if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'KIEMNHIEM' then
    acKichbanQDBonhiem.Execute
  else
    if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'CHUYEN_CT' then
    acKichbanQDChuyenCT.Execute
  else
    if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'THOI_CV' then
    acKichbanQDThoiCV.Execute
  else
    if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'THOI_VIEC' then
    acKichbanQDNghiviec.Execute
  else
    if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'TL_PHONG' then
    acKichbanQDThemPB.Execute
  else
    if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'CD_PHONG' then
    acKichbanQDThaydoiPB.Execute
  else
    if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'XOA_PHONG' then
    acKichbanQDXoaPB.Execute
  else
    if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'KHEN_THUONG' then
    acKichbanQDKhenthuong.Execute
  else
    if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'KY_LUAT' then
    acKichbanQDKyluat.Execute
  else
    if DecisionDM.qryDecisionsDECISION_TYPE_NO.Value = 'THAYDOI_LUONG' then
    acKichbanQDThaydoiLuong.Execute
end;

procedure TfrmDecisionMaker.gridFromDeptDEPT_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2, gridFromDept);
end;

procedure TfrmDecisionMaker.gridFromDeptDEPT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryDeptList, DecisionDM.qryFromDept,
    'DEPT_NO;DEPT_NAME;FOUNDED_DATE', 'DEPT_NO;DEPT_NAME;FOUNDED_DATE',
    'DEPT_NAME', Text);
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmDecisionMaker.gridToDeptDEPT_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2, gridToDept);
end;

procedure TfrmDecisionMaker.gridToDeptDEPT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryDeptList, DecisionDM.qryToDept,
    'DEPT_NO;DEPT_NAME;FOUNDED_DATE;ENDED_DATE',
    'DEPT_NO;DEPT_NAME;FOUNDED_DATE;ENDED_DATE',
    'DEPT_NAME', Text);
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmDecisionMaker.acKichbanQDThaydoiPBExecute(Sender: TObject);
begin
  inherited;
  IS_END := false;
  if ActionState = 'NEXT' then
  begin
    if pageMain.ActivePage = tabThongtinQD then
      acChitietQDThaydoiPB.Execute
    else
      if pageMain.ActivePage = tabChitietQD then
    begin
      if pageChitietQD.ActivePage = tabChitietQDThaydoiPB then
        acCanhanThihanh.Execute
      else
        if pageChitietQD.ActivePage = tabChitietQDBonhiem then
      begin
        acChitietQDChuyenCT.Execute;
      end
      else
        if pageChitietQD.ActivePage = tabChitietQDChuyenCT then
      begin
        acChitietHesoDikem.Execute
      end
    end
    else
      if pageMain.ActivePage = tabCanhanChiuTN then
      acChitietQDBonhiem.Execute
    else
    if pageMain.ActivePage=tabHesoDikem then
    begin
      IS_END := true;
      acLuongCBNN.Execute;
    end;
  end
  else
    if ActionState = 'BACK' then
  begin
    if (pageMain.ActivePage = tabCanhanChiuTN) then
      acChitietQDThaydoiPB.Execute
    else
      if (pageMain.ActivePage = tabChitietQD) then
    begin
      if pageChitietQD.ActivePage = tabChitietQDThaydoiPB then
        acNhapThongtinChung.Execute
      else
        if pageChitietQD.ActivePage = tabChitietQDBonhiem then
        acCanhanThihanh.Execute
      else
        if pageChitietQD.ActivePage = tabChitietQDChuyenCT then
        acChitietQDBonhiem.Execute
      else
    end
    else if pageMain.ActivePage = tabHesoDikem then
      acChitietQDChuyenCT.Execute
    else if pageMain.ActivePage=tabLuongCBNN then
      acChitietHesoDikem.Execute;
  end
end;

procedure TfrmDecisionMaker.acChitietQDThaydoiPBExecute(Sender: TObject);
begin
  inherited;
  pageMain.ActivePage := tabChitietQD;
  pageChitietQD.ActivePage := tabChitietQDThaydoiPB;
  frameChitietQD.SetDataSource(DecisionDM.dsFromDept);
  if not DecisionDM.qryFromDept.Active then
    DecisionDM.qryFromDept.Open;
  if not DecisionDM.qryToDept.Active then
    DecisionDM.qryToDept.Open;
end;

procedure TfrmDecisionMaker.gridFromDeptEnter(Sender: TObject);
begin
  inherited;
  frameChitietQD.SetDataSource(DecisionDM.dsFromDept);
end;

procedure TfrmDecisionMaker.gridToDeptEnter(Sender: TObject);
begin
  inherited;
  frameChitietQD.SetDataSource(DecisionDM.dsToDept);
end;

procedure TfrmDecisionMaker.acKichbanQDXoaPBExecute(Sender: TObject);
begin
  inherited;
  IS_END := false;
  if ActionState = 'NEXT' then
  begin
    if pageMain.ActivePage = tabThongtinQD then
      acChitietQDXoaBP.Execute
    else
      if pageMain.ActivePage = tabChitietQD then
    begin
      if pageChitietQD.ActivePage = tabChitietQDXoaPB then
        acCanhanThihanh.Execute
      else
        if pageChitietQD.ActivePage = tabChitietQDBonhiem then
      begin
        acChitietQDChuyenCT.Execute;
      end
      else
        if pageChitietQD.ActivePage = tabChitietQDChuyenCT then
      begin
        acChitietHesoDikem.Execute;
      end
    end
    else
      if pageMain.ActivePage = tabCanhanChiuTN then
      acChitietQDBonhiem.Execute
    else
    if pageMain.ActivePage=tabHesoDikem then
    begin
      IS_END:=true;
      acLuongCBNN.Execute;
    end
  end
  else
    if ActionState = 'BACK' then
  begin
    if (pageMain.ActivePage = tabCanhanChiuTN) then
      acChitietQDXoaBP.Execute
    else
      if (pageMain.ActivePage = tabChitietQD) then
    begin
      if pageChitietQD.ActivePage = tabChitietQDXoaPB then
        acNhapThongtinChung.Execute
      else
        if pageChitietQD.ActivePage = tabChitietQDBonhiem then
        acCanhanThihanh.Execute
      else
        if pageChitietQD.ActivePage = tabChitietQDChuyenCT then
        acChitietQDBonhiem.Execute
      else
    end
    else
      if pageMain.ActivePage = tabHesoDikem then
      acChitietQDChuyenCT.Execute
    else
    if pageMain.ActivePage=tabLuongCBNN then
      acChitietHesoDikem.Execute;  
  end
end;

procedure TfrmDecisionMaker.gridDeleteDeptDEPT_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2, gridDeleteDept);
end;

procedure TfrmDecisionMaker.gridDeleteDeptDEPT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryDeptList, DecisionDM.qryDeleteDept,
    'DEPT_NO;DEPT_NAME;FOUNDED_DATE', 'DEPT_NO;DEPT_NAME;FOUNDED_DATE',
    'DEPT_NAME', Text);
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmDecisionMaker.acChitietQDXoaBPExecute(Sender: TObject);
begin
  inherited;
  pageMain.ActivePage := tabChitietQD;
  pageChitietQD.ActivePage := tabChitietQDXoaPB;
  frameChitietQD.SetDataSource(DecisionDM.dsDeleteDept);
  if not DecisionDM.qryDeleteDept.Active then
    DecisionDM.qryDeleteDept.Open;
end;

procedure TfrmDecisionMaker.gridRewardDecisionFULL_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  InitPopupControl('dxlcCanhanCTN', self, sender, 2.5, gridRewardDecision);
end;

procedure TfrmDecisionMaker.gridRewardDecisionFULL_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, DecisionDM.qryDecision_Emp,
    DecisionDM.qryRewardDecision,
    'DECISION_NO;EMPLOYEE_NO;FULL_NAME', 'DECISION_NO;EMP_NO;FULL_NAME',
    'FULL_NAME', Text);
end;

procedure TfrmDecisionMaker.gridRewardDecisionREWARD_LIST_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryRewardList.Open;
  InitPopupControl('dxlcRewardList', frmPopupMain, sender, 2,
    gridRewardDecision);
end;

procedure TfrmDecisionMaker.gridRewardDecisionREWARD_LIST_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryRewardList,
    DecisionDM.qryRewardDecision,
    'REWARD_LIST_NO;REWARD_LIST_NAME', 'REWARD_LIST_NO;REWARD_LIST_NAME',
    'REWARD_LIST_NAME', Text);
  frmPopupMain.qryRewardList.Close;
end;

procedure TfrmDecisionMaker.gridRewardDecisionLEVEL_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDecisionLevel.Open;
  InitPopupControl('dxlcDecisionLevel', frmPopupMain, sender, 2,
    gridRewardDecision);
end;

procedure TfrmDecisionMaker.gridRewardDecisionLEVEL_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryDecisionLevel,
    DecisionDM.qryRewardDecision,
    'LEVEL_NO;LEVEL_NAME', 'DECISION_LEVEL;LEVEL_NAME',
    'LEVEL_NAME', Text);
  frmPopupMain.qryDecisionLevel.Close;
end;

procedure TfrmDecisionMaker.gridRewardDecisionREWARD_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryRewardForm.Open;
  InitPopupControl('dxlcRewardForm', frmPopupMain, sender, 2,
    gridRewardDecision);
end;

procedure TfrmDecisionMaker.gridRewardDecisionREWARD_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryRewardForm,
    DecisionDM.qryRewardDecision,
    'REWARD_NO;REWARD_NAME', 'REWARD_FORM_NO;REWARD_NAME',
    'REWARD_NAME', Text);
  frmPopupMain.qryRewardForm.Close;
end;

procedure TfrmDecisionMaker.acKichbanQDKhenthuongExecute(Sender: TObject);
begin
  inherited;
  IS_END := false;
  if ActionState = 'NEXT' then
  begin
    if pageMain.ActivePage = tabThongtinQD then
      acCanhanThihanh.Execute
    else
      if pageMain.ActivePage = tabCanhanChiuTN then
    begin

      acChitietQDKhenthuong.Execute;
    end
    else
      if (pageMain.ActivePage = tabChitietQD) and
      (pageChitietQD.ActivePage = tabChitietQDKhenthuong) then
    begin
      acChitietHesoDikem.Execute;
    end
    else
    if pageMain.ActivePage=tabHesoDikem then
    begin
      IS_END:=true;
      acLuongCBNN.Execute;
    end;
  end
  else
    if ActionState = 'BACK' then
  begin
    if (pageMain.ActivePage = tabCanhanChiuTN) then
      acNhapThongtinChung.Execute
    else
      if (pageMain.ActivePage = tabChitietQD) then
      acCanhanThihanh.Execute
    else
      if (pageMain.ActivePage = tabHesoDikem) then
      acChitietQDKhenthuong.Execute
     else
    if pageMain.ActivePage=tabLuongCBNN then
      acChitietHesoDikem.Execute
  end
end;

procedure TfrmDecisionMaker.acChitietQDKhenthuongExecute(Sender: TObject);
begin
  inherited;
  pageMain.ActivePage := tabChitietQD;
  pageChitietQD.ActivePage := tabChitietQDKhenthuong;
  frameChitietQD.SetDataSource(DecisionDM.dsRewardDecision);
  if not DecisionDM.qryRewardDecision.Active then
    DecisionDM.qryRewardDecision.Open;
end;

procedure TfrmDecisionMaker.gridDisciplineDecisionFULL_NAMEInitPopup(Sender:
  TObject);
begin
  inherited;
  InitPopupControl('dxlcCanhanCTN', self, sender, 2.5, gridDisciplineDecision);

end;

procedure TfrmDecisionMaker.gridDisciplineDecisionFULL_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, DecisionDM.qryDecision_Emp,
    DecisionDM.qryDisciplineDecision,
    'DECISION_NO;EMPLOYEE_NO;FULL_NAME', 'DECISION_NO;EMP_NO;FULL_NAME',
    'FULL_NAME', Text);
end;

procedure TfrmDecisionMaker.gridDisciplineDecisionDISC_LIST_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDisciplineList.Open;
  InitPopupControl('dxlcDisciplineList', frmPopupMain, sender, 2,
    gridDisciplineDecision);
end;

procedure TfrmDecisionMaker.gridDisciplineDecisionDISC_LIST_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryDisciplineList,
    DecisionDM.qryDisciplineDecision,
    'DISC_LIST_NO;DISC_LIST_NAME', 'DISC_LIST_NO;DISC_LIST_NAME',
    'DISC_LIST_NAME', Text);
  frmPopupMain.qryDisciplineList.Close;
end;

procedure TfrmDecisionMaker.gridDisciplineDecisionLEVEL_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDecisionLevel.Open;
  InitPopupControl('dxlcDecisionLevel', frmPopupMain, sender, 2,
    gridDisciplineDecision);

end;

procedure TfrmDecisionMaker.gridDisciplineDecisionLEVEL_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryDecisionLevel,
    DecisionDM.qryDisciplineDecision,
    'LEVEL_NO;LEVEL_NAME', 'DECISION_LEVEL;LEVEL_NAME',
    'LEVEL_NAME', Text);
  frmPopupMain.qryDecisionLevel.Close;
end;

procedure TfrmDecisionMaker.gridDisciplineDecisionDISC_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDisciplineForm.Open;
  InitPopupControl('dxlcDisciplineForm', frmPopupMain, sender, 2,
    gridDisciplineDecision);
end;

procedure TfrmDecisionMaker.gridDisciplineDecisionDISC_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryDisciplineForm,
    DecisionDM.qryDisciplineDecision,
    'DISC_NO;DISC_NAME', 'DISC_FORM_NO;DISC_NAME',
    'DISC_NAME', Text);
  frmPopupMain.qryDisciplineForm.Close;
end;

procedure TfrmDecisionMaker.acKichbanQDKyluatExecute(Sender: TObject);
begin
  inherited;
  IS_END := false;
  if ActionState = 'NEXT' then
  begin
    if pageMain.ActivePage = tabThongtinQD then
      acCanhanThihanh.Execute
    else
      if pageMain.ActivePage = tabCanhanChiuTN then
    begin

      acChitietQDKyluat.Execute;
    end
    else
      if (pageMain.ActivePage = tabChitietQD) and
      (pageChitietQD.ActivePage = tabChitietQDKyluat) then
    begin
      acChitietHesoDikem.Execute;
    end
    else
    if pageMain.ActivePage=tabHesoDikem then
    begin
      IS_END:=true;
      acLuongCBNN.Execute;
    end;
  end
  else
    if ActionState = 'BACK' then
  begin
    if (pageMain.ActivePage = tabCanhanChiuTN) then
      acNhapThongtinChung.Execute
    else
      if (pageMain.ActivePage = tabChitietQD) then
      acCanhanThihanh.Execute
    else
      if (pageMain.ActivePage = tabHesoDikem) then
      acChitietQDKyluat.Execute
    else
    if pageMain.ActivePage=tabLuongCBNN then
     acChitietHesoDikem.Execute;
  end
end;

procedure TfrmDecisionMaker.acChitietQDKyluatExecute(Sender: TObject);
begin
  inherited;
  pageMain.ActivePage := tabChitietQD;
  pageChitietQD.ActivePage := tabChitietQDKyluat;
  frameChitietQD.SetDataSource(DecisionDM.dsDisciplineDecision);
  if not DecisionDM.qryDisciplineDecision.Active then
    DecisionDM.qryDisciplineDecision.Open;
end;

procedure TfrmDecisionMaker.dxDBPopupEdit2InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryReportTemplateList.ParamByname('TEMPLATE_TYPE').Value := 0;
  frmPopupMain.qryReportTemplateList.Open;
  InitPopupControl('dxlcReportTemplateList', frmPopupMain, sender, 2.5);
end;

procedure TfrmDecisionMaker.dxDBPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryReportTemplateList,
    DecisionDM.qryDecisions,
    'TEMPLATE_FILE', 'TEMPLATE_FILE',
    'TEMPLATE_FILE', Text);
  frmPopupMain.qryReportTemplateList.Close;
end;

procedure TfrmDecisionMaker.acKhoitaoHesoExecute(Sender: TObject);
var
  EMPLOYEE_NO: WideString;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memFormalParam.Active then memFormalParam.Close;
  memFormalParam.DisableControls;

  if DecisionDM.qryFormalParam.Active then
    DecisionDM.qryFormalParam.Refresh
  else
    DecisionDM.qryFormalParam.Open;
  memFormalParam.Open;
  if DecisionDM.qryFormalParam.RecordCount > 0 then
  begin
    DecisionDM.qryFormalParam.First;
    EMPLOYEE_NO := DecisionDM.qryFormalParamEMPLOYEE_NO.Value;

    memFormalParam.Insert;
    memFormalParamEMPLOYEE_NO.Value :=
      DecisionDM.qryFormalParamEMPLOYEE_NO.Value;
    memFormalParamFULL_NAME.Value := DecisionDM.qryFormalParamFULL_NAME.Value;

    repeat
      if (EMPLOYEE_NO <> DecisionDM.qryFormalParamEMPLOYEE_NO.Value) or
        (DecisionDM.qryFormalParam.Eof) then
      begin
        if (memFormalParam.State in [dsEdit, dsInsert]) then
          memFormalParam.Post;
        if DecisionDM.qryFormalParam.Eof then
          Break
        else
          EMPLOYEE_NO := DecisionDM.qryFormalParamEMPLOYEE_NO.Value;

        memFormalParam.Insert;
        memFormalParamEMPLOYEE_NO.Value :=
          DecisionDM.qryFormalParamEMPLOYEE_NO.Value;
        memFormalParamFULL_NAME.Value :=
          DecisionDM.qryFormalParamFULL_NAME.Value;
      end;
      if not DecisionDM.qryFormalParamPARAM_NO.IsNull then
      begin
        if
          Assigned(memFormalParam.FindField(DecisionDM.qryFormalParamPARAM_NO.AsString)) then
        begin
          memFormalParam.FieldByName(DecisionDM.qryFormalParamPARAM_NO.AsString).Value
            := DecisionDM.qryFormalParamPARAM_VALUE.Value;
          memFormalParam.FieldByName(DecisionDM.qryFormalParamPARAM_NO.AsString
            +
            '_OLD').Value :=
            DecisionDM.qryFormalParamPARAM_VALUE.Value;
        end;
      end;
      DecisionDM.qryFormalParam.Next;
    until (EMPLOYEE_NO = '') and (not (memFormalParam.State in [dsInsert]));
  end;
  DecisionDM.qryFormalParam.Close;
  memFormalParam.EnableControls;
  Formal_param_change := false;
  Screen.Cursor := crDefault;
end;

procedure TfrmDecisionMaker.acKhoitaoMemExecute(Sender: TObject);
var
  f: TFloatField;
  newCol: TdxDBTreeListColumn;
  total_width: integer;
begin
  if DecisionDM.qryFormalParamList.Active then
    DecisionDM.qryFormalParamList.Refresh
  else
    DecisionDM.qryFormalParamList.Open;
  if DecisionDM.qryFormalParamList.RecordCount > 0 then
  begin
    if memFormalParam.Active then memFormalParam.Close;
    DecisionDM.qryFormalParamList.First;
    total_width := gridFormalParamEMPLOYEE_NO.Width +
      gridFormalParamFULL_NAME.Width;
    while not DecisionDM.qryFormalParamList.Eof do
    begin
      //tao memFormalParamField
      f := TFloatField.Create(memFormalParam);
      f.Name := memFormalParam.Name +
        DecisionDM.qryFormalParamListPARAM_NO.AsString;
      f.FieldName := DecisionDM.qryFormalParamListPARAM_NO.AsString;
      f.FieldKind := fkData;
      f.DataSet := memFormalParam;
      f.SetFieldType(ftFloat);
      f.DisplayFormat := sysConfig.FloatFormat;
      f.EditFormat := sysConfig.FloatFormat;

      //tao gridColumn
      newCol := gridFormalParam.CreateColumn(TdxDBGridCalcColumn);
      newCol.Name := gridFormalParam.Name + f.FieldName;
      newCol.FieldName := f.FieldName;
      newCol.Width := 100;
      newCol.HeaderAlignment := taCenter;
      newCol.DisableCustomizing := true;
      newCol.Caption := DecisionDM.qryFormalParamListPARAM_NAME.Value;
      newCol.BandIndex:=1;
      total_width := total_width + newCol.Width;
      //tao them field nua
      f := TFloatField.Create(memFormalParam);
      f.Name := memFormalParam.Name +
        DecisionDM.qryFormalParamListPARAM_NO.AsString + '_OLD';
      f.FieldName := DecisionDM.qryFormalParamListPARAM_NO.AsString + '_OLD';
      f.FieldKind := fkData;
      f.DataSet := memFormalParam;
      f.SetFieldType(ftFloat);

      //===============================
      DecisionDM.qryFormalParamList.Next;
    end;
    DecisionDM.qryFormalParamList.Close;
    if total_width < gridFormalParam.Width then
      gridFormalParam.OptionsView := gridFormalParam.OptionsView + [edgoAutoWidth]
    else
      gridFormalParam.OptionsView := gridFormalParam.OptionsView - [edgoAutoWidth];
  end;
end;

procedure TfrmDecisionMaker.acCapnhatHesoExecute(Sender: TObject);
var
  ok: boolean;
  bookmark: TBookmark;
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memFormalParam.RecordCount = 0 then exit;
  dmMain.RollbackTransaction;
  ok := true;
  if (memFormalParam.State in [dsEdit]) then
    memFormalParam.Post;
  bookmark := memFormalParam.GetBookmark;
  memFormalParam.DisableControls;
  frmMain.SetStatusBarPrgDisplay(0, memFormalParam.RecordCount);
  memFormalParam.First;

  while not memFormalParam.Eof do
  begin
    i := 3;
    while i <= memFormalParam.FieldCount - 1 do
    begin
      if memFormalParam.Fields[i + 1].IsNull then
      begin
        if (not memFormalParam.Fields[i].IsNull) then //insert
        begin
          qryExecute.SQL.Text :=
            ' insert into hr_formal_detail(param_no,employee_no,doc_no,doc_type,param_value) ' +
            ' values(:param_no,:employee_no,:doc_no,''DECISION'',:param_value)';
          qryExecute.ParamByName('DOC_NO').Value :=
            DecisionDM.qryDecisionsDECISION_NO.Value;
          qryExecute.ParamByName('EMPLOYEE_NO').Value :=
            memFormalParamEMPLOYEE_NO.Value;
          qryExecute.ParamByName('PARAM_NO').Value :=
            memFormalParam.Fields[i].FieldName;
          qryExecute.ParamByName('PARAM_VALUE').Value :=
            memFormalParam.Fields[i].Value;
          dmMain.ExecuteSQL(qryExecute);
        end
      end
      else
        if memFormalParam.Fields[i].IsNull then //delete
      begin
        qryExecute.SQL.Text :=
          ' delete from hr_formal_detail where ' +
          ' param_no=:param_no and employee_no=:employee_no and ' +
          ' doc_no=:doc_no and doc_type=''DECISION''';
        qryExecute.ParamByName('DOC_NO').Value :=
          DecisionDM.qryDecisionsDECISION_NO.Value;
        qryExecute.ParamByName('EMPLOYEE_NO').Value :=
          memFormalParamEMPLOYEE_NO.Value;
        qryExecute.ParamByName('PARAM_NO').Value :=
          memFormalParam.Fields[i].FieldName;
        dmMain.ExecuteSQL(qryExecute);
      end
      else
        if memFormalParam.Fields[i].Value <> memFormalParam.Fields[i +
        1].Value then
        //update
      begin
        qryExecute.SQL.Text :=
          ' update hr_formal_detail set ' +
          ' param_value=:param_value ' +
          ' where doc_no=:doc_no and employee_no=:employee_no and ' +
          ' param_no=:param_no and doc_type=''DECISION''';
        qryExecute.ParamByName('DOC_NO').Value :=
          DecisionDM.qryDecisionsDECISION_NO.Value;
        qryExecute.ParamByName('EMPLOYEE_NO').Value :=
          memFormalParamEMPLOYEE_NO.Value;
        qryExecute.ParamByName('PARAM_NO').Value :=
          memFormalParam.Fields[i].FieldName;
        qryExecute.ParamByName('PARAM_VALUE').Value :=
          memFormalParam.Fields[i].Value;
        dmMain.ExecuteSQL(qryExecute);
      end;
      if not (memFormalParam.State in [dsEdit]) then
        memFormalParam.Edit;
      if memFormalParam.Fields[i].IsNull then
        memFormalParam.Fields[i + 1].Clear
      else
        memFormalParam.Fields[i + 1].Value :=
          memFormalParam.Fields[i].Value;
      i := i + 2;
    end;
    if memFormalParam.State in [dsEdit] then
      memFormalParam.Post;
    frmMain.BarPrgStepIt;
    memFormalParam.Next;
  end;
  Formal_param_change := false;
  memFormalParam.GotoBookmark(bookmark);
  memFormalParam.EnableControls;
  if ok then
    dmmain.CommitTransaction
  else
    dmMain.RollbackTransaction;
  Screen.Cursor := crDefault;
end;

procedure TfrmDecisionMaker.acChitietHesoDikemExecute(Sender: TObject);
begin
  inherited;
  pageMain.ActivePage := tabHesoDikem;
  if memFormalParam.Active = false then
  begin
    acKhoitaoHeso.Execute;
    Formal_param_change := false;
  end;
end;

procedure TfrmDecisionMaker.memFormalParamAfterEdit(DataSet: TDataSet);
begin
  inherited;
  Formal_param_change := true;
end;

procedure TfrmDecisionMaker.acCapnhatHesoUpdate(Sender: TObject);
begin
  inherited;
  acCapnhatHeso.Enabled := Formal_param_change;
end;

procedure TfrmDecisionMaker.acChonnhanhNV_HSExecute(Sender: TObject);
begin
  inherited;
  memFormalParam.DisableControls;
  if (DecisionDM.qryDecision_Emp.RecordCount > 0) then
  begin
    DecisionDM.qryDecision_Emp.First;
    while not DecisionDM.qryDecision_Emp.Eof do
    begin
      if not memFormalParam.Locate('EMPLOYEE_NO', DecisionDM.qryDecision_EmpEMPLOYEE_NO.Value, [])
        then
      begin
        memFormalParam.Append;
        memFormalParamEMPLOYEE_NO.Value := DecisionDM.qryDecision_EmpEMPLOYEE_NO.Value;
        memFormalParamFULL_NAME.Value := DecisionDM.qryDecision_EmpFULL_NAME.Value;
        memFormalParam.Post;
      end;
      DecisionDM.qryDecision_Emp.Next;
    end;
  end;
  memFormalParam.EnableControls;
  if State <> 'NEW' then State := 'EDIT';
end;

procedure TfrmDecisionMaker.acKichbanQDThaydoiLuongExecute(
  Sender: TObject);
begin
  inherited;
  IS_END := false;
  if ActionState = 'NEXT' then
  begin
    if pageMain.ActivePage = tabThongtinQD then
      acCanhanThihanh.Execute
    else
      if pageMain.ActivePage = tabCanhanChiuTN then
    begin

      acChitietHesoDikem.Execute;
    end
    else
    if pageMain.ActivePage=tabHesoDikem
    then
    begin
      IS_END:=true;
      acLuongCBNN.Execute;
    end
  end
  else
    if ActionState = 'BACK' then
  begin
    if (pageMain.ActivePage = tabCanhanChiuTN) then
      acNhapThongtinChung.Execute
    else
      if (pageMain.ActivePage = tabHesoDikem) then
      acCanhanThihanh.Execute
    else
    if pageMain.ActivePage=tabLuongCBNN then
      acChitietHesoDikem.Execute;  
  end
end;


procedure TfrmDecisionMaker.gridEmpChangeFULL_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  InitPopupControl('dxlcCanhanCTN', self, sender, 2.5, gridEmpChange);
end;

procedure TfrmDecisionMaker.gridEmpChangeFULL_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, DecisionDM.qryDecision_Emp,
    DecisionDM.qryEmpStandardWage,
    'EMPLOYEE_NO;FULL_NAME', 'EMPLOYEE_NO;FULL_NAME',
    'FULL_NAME', Text);
end;

procedure TfrmDecisionMaker.gridEmpChangeCAREER_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
 frmPopupMain.qryWageStandard.Open;
  InitPopupControl('dxlcWageStandard',frmPopupMain,sender,2,gridEmpChange);
end;

procedure TfrmDecisionMaker.gridEmpChangeCAREER_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
 OnPopupCloseUp(Accept,frmPopupMain.qryWageStandard,DecisionDM.qryEmpStandardWage,
               'WAGE_SCALE;CAREER_NAME;WAGE_LEVEL;WAGE_COEFF','WAGE_SCALE;CAREER_NAME;WAGE_LEVEL;WAGE_COEFF',
               'CAREER_NAME',Text);
    frmPopupMain.qryWageStandard.Close;
end;

procedure TfrmDecisionMaker.DefOnWageStandardEnter(Sender: TObject);
var
  pp: PPropInfo;
  ds: TDatasource;
  f: boolean;
begin
  pp := GetPropInfo(Sender, 'DataSource', [tkClass]);
  ds := TDatasource(GetOrdProp(Sender, pp));
  if (ds <> frameLuongCBNN.acDSInsert.DataSource) then
  begin
    if frameLuongCBNN.acDSPost.Enabled then
      frameLuongCBNN.acDSPost.Execute;
    if not (frameLuongCBNN.acDSInsert.DataSource.State in [dsInsert, dsEdit])
      then
    begin
      f := frameLuongCBNN.SetDataSource(ds);
      frameLuongCBNN.dxlctrlInsert.Visible:=(ds.Name=DecisionDM.dsEmpStandardWage.Name);
      frameLuongCBNN.dxlctrlInsertCopy.Visible:=(ds.Name=DecisionDM.dsEmpStandardWage.Name);
    end
    else
      (Sender as TControl).ControlState := (Sender as TControl).ControlState -
        [csFocusing];
  end
end;

procedure TfrmDecisionMaker.acLuongCBNNExecute(Sender: TObject);
begin
  inherited;
  pageMain.ActivePage := tabLuongCBNN;
  if not DecisionDM.qryWageStandardChange.Active then
    DecisionDM.qryWageStandardChange.Open;
  if not DecisionDM.qryEmpStandardWage.Active then
    DecisionDM.qryEmpStandardWage.Open;
  frameLuongCBNN.SetDataSource(DecisionDM.dsWageStandardChange);  
end;

procedure TfrmDecisionMaker.gridNghiviecREASON_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryOffWorkReason.Open;
  InitPopupControl('dxlcOffWorkReason',frmPopupMain,sender,2,gridNghiviec);
end;

procedure TfrmDecisionMaker.gridNghiviecREASON_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryOffWorkReason,DecisionDM.qryOffWork,
        'REASON_NO;REASON_NAME','OFF_REASON;REASON_NAME','REASON_NAME',Text);
    frmPopupMain.qryOffWorkReason.Close;
end;

procedure TfrmDecisionMaker.acBonhiemNhanhExecute(Sender: TObject);
begin
  inherited;
//  menuOption.Popup(frameChitietQD.btnGenerate.ClientOrigin.X,frameChitietQD.btnGenerate.ClientOrigin.Y+frameChitietQD.btnGenerate.ClientHeight);
  frmEmpPositionWizard:=TfrmEmpPositionWizard.Create(self);
  try
    if frmEmpPositionWizard.ShowModal=mrOk then
    begin
       DecisionDM.qryChitietBonhiem.Close;
       DecisionDM.qryChitietBonhiem.Open;
    end;
  finally
    frmEmpPositionWizard.Free;
    frmEmpPositionWizard:=nil;
  end;

end;

procedure TfrmDecisionMaker.acBonhiemNhanhUpdate(Sender: TObject);
begin
  inherited;
  acBonhiemNhanh.Enabled:=(pageChitietQD.ActivePage=tabChitietQDBonhiem);
end;

procedure TfrmDecisionMaker.acDieuDongNhanhExecute(Sender: TObject);
begin
  inherited;
  frmDieuDongWizard:=TfrmDieuDongWizard.Create(self);
  try
    if frmDieuDongWizard.ShowModal=mrOk then
    begin
{      DecisionDM.qryFromPositions.Close;
      DecisionDM.qryToPositions.Close;
      DecisionDM.qryToPositions.Open;
      DecisionDM.qryFromPositions.Open;}
    end;
  finally
    frmDieuDongWizard.Free;
    frmDieuDongWizard:=nil;
  end;
end;

procedure TfrmDecisionMaker.acNhapNhanhCBNNExecute(Sender: TObject);
begin
  inherited;
  frmNhapNhanhLuongCBNN:=TfrmNhapNhanhLuongCBNN.Create(self);
  try
    if frmNhapNhanhLuongCBNN.ShowModal=mrOk then
    begin
      DecisionDM.qryWageStandardChange.Close;
      DecisionDM.qryEmpStandardWage.Close;
      DecisionDM.qryWageStandardChange.Open;
      DecisionDM.qryEmpStandardWage.Open;
    end;
  finally
    frmNhapNhanhLuongCBNN.Free;
    frmNhapNhanhLuongCBNN:=nil;
  end;
end;

procedure TfrmDecisionMaker.dxFormalParamInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryFormalParam.ParamByName('FOLLOW_DECISION').Value := 1;
  frmPopupMain.qryFormalParam.ParamByName('FOLLOW_CONTRACT').Value := 0;
  frmPopupMain.qryFormalParam.Open;
  InitPopupControl('dxlcFormalParam', frmPopupMain, sender, 2);
end;

procedure TfrmDecisionMaker.dxFormalParamCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryFormalParamPARAM_NAME.Value;
    PARAM_NO := frmPopupMain.qryFormalParamPARAM_NO.Value;
  end;
  frmPopupMain.qryFormalParam.Close; 
end;

procedure TfrmDecisionMaker.acThucThiExecute(Sender: TObject);
var
  LuongHienHanh : Double;
  i :integer;
begin
  inherited;
//******* tyntb 23/03/2009 *****************************************************//
  if (PARAM_NO = '') then exit;
//******* THUYPTP 28/04/2009 *****************************************************//
  if (gridFormalParam.SelectedCount = 0) then
  begin
    ShowMessageUnicode(114);
    exit;
  end;
//******************************************************************************//
  Screen.Cursor:=crSQLWait;
  for i:=0 to gridFormalParam.SelectedCount -1 do
  begin
    if memFormalParam.Locate('EMPLOYEE_NO',VarToWideStr(gridFormalParam.SelectedNodes[i].Values[gridFormalParamEMPLOYEE_NO.Index]),[]) then
    begin
      if qryLuongHienHanh.Active then qryLuongHienHanh.close;
      qryLuongHienHanh.ParamByName('PARAM_NO').Value := PARAM_NO;
      qryLuongHienHanh.ParamByName('DATE').Value := DecisionDM.qryDecisionsDECISION_DATE.Value -1;
      qryLuongHienHanh.ParamByName('EMPLOYEE_NO').Value:=memFormalParam.FieldByName('EMPLOYEE_NO').Value;
      qryLuongHienHanh.Open;
      LuongHienHanh:=qryLuongHienHanhRESULT_VALUE.AsFloat ;

      //Tien hanh tinh toan va cap nhat muc luong moi
      if chkLuongCoDinh.Checked then
        LuongHienHanh := StrToFloatDef(dxGiaTri.Text,0)
      else if chkTangCoDinh.Checked then
        LuongHienHanh:=LuongHienHanh + StrToFloatDef(dxGiaTri.Text,0)
      else if chkTangPhanTram.Checked then
        LuongHienHanh:=LuongHienHanh + (LuongHienHanh*StrToFloatDef(dxGiaTri.Text,0))/100;

      //Cap nhat luong
      qryCapNhatLuong.ParamByName('EMPLOYEE_NO').Value:=memFormalParam.FieldByName('EMPLOYEE_NO').Value;
      qryCapNhatLuong.ParamByName('PARAM_NO').Value:= PARAM_NO;
      qryCapNhatLuong.ParamByName('DOC_NO').Value:= DecisionDM.qryDecisionsDECISION_NO.Value ;
      qryCapNhatLuong.ParamByName('PARAM_VALUE').Value:=LuongHienHanh;
      dmMain.ExecuteSQL(qryCapNhatLuong);
    end
  end;

  //Cap nhat lai luoi du lieu
  dmMain.CommitTransaction;
  acKhoitaoHeso.Execute;
  Formal_param_change := false;
  Screen.Cursor:=crDefault;
end;

procedure TfrmDecisionMaker.acDieuDongNhanhUpdate(Sender: TObject);
begin
  inherited;
  acDieuDongNhanh.Enabled:=(pageChitietQD.ActivePage=tabChitietQDChuyenCT);
end;

procedure TfrmDecisionMaker.gridChangePositionPOSITION_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryPosition.Open;
  InitPopupControl('dxlcPosition', frmPopupMain, sender, 2.5, gridChangePosition);
end;

procedure TfrmDecisionMaker.gridChangePositionPOSITION_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryPosition, DecisionDM.qryChangePosition,
    'POSITION_NO;POSITION_TITLE','POSITION_NO;POSITION_NAME',
    'POSITION_TITLE', Text);
  frmPopupMain.qryPosition.Close;
end;

procedure TfrmDecisionMaker.gridChangePositionFROM_POSITION_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  if frmPopupMain.qryEmp_Position.Active then
    frmPopupMain.qryEmp_Position.Close;
  frmPopupMain.qryEmp_Position.SQLWhere.Text :=
    'where (hr_assignment.employee_no=:employee_no) and ' +
    '   (hr_assignment.dismiss_date is null) and '+
    '   ((:IS_MAIN_POSITION=2)or(IS_MAIN_POSITION=:IS_MAIN_POSITION))';
  frmPopupMain.qryEmp_Position.ParamByName('EMPLOYEE_NO').Value :=
    DecisionDM.qryChangePositionEMPLOYEE_NO.Value;
  frmPopupMain.qryEmp_Position.Open;
  InitPopupControl('dxlcEmp_Position', frmPopupMain, sender, 2.5,
    gridChangePosition);
end;

procedure TfrmDecisionMaker.gridChangePositionFROM_POSITION_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryEmp_Position,
    DecisionDM.qryChangePosition,
    'POSITION_NO;POSITION_TITLE;ASSIGNED_DATE;IS_MAIN_POSITION;ASS_KEY_ID',
    'FROM_POSITION_NO;FROM_POSITION_NAME;FROM_ASSIGNED_DATE;FROM_IS_MAIN_POSITION;FROM_ASS_KEY_ID',
    'POSITION_TITLE', Text);
  frmPopupMain.qryEmp_Position.Close;
  frmPopupMain.qryEmp_Position.SQLWhere.Text :=
    'where (DISMISS_DATE is null) ' +
    'and ((:IS_MAIN_POSITION=2)or(IS_MAIN_POSITION=:IS_MAIN_POSITION))';
end;

procedure TfrmDecisionMaker.acNhapNhanhLuongChucDanhExecute(
  Sender: TObject);
begin
  inherited;
  frmNhapNhanhLuongCongTy:=TfrmNhapNhanhLuongCongTy.Create(self);
  try
    if frmNhapNhanhLuongCongTy.ShowModal=mrOk then
    begin
      DecisionDM.qryWageStandardChange.Close;
      DecisionDM.qryEmpCompanyWage.Close;
      DecisionDM.qryWageStandardChange.Open;
      DecisionDM.qryEmpCompanyWage.Open;
    end;
  finally
    frmNhapNhanhLuongCongTy.Free;
    frmNhapNhanhLuongCongTy:=nil;
  end;
end;

procedure TfrmDecisionMaker.gridHeSoChucDanhFULL_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, DecisionDM.qryDecision_Emp,
    DecisionDM.qryEmpCompanyWage,
    'EMPLOYEE_NO;FULL_NAME', 'EMPLOYEE_NO;FULL_NAME',
    'FULL_NAME', Text);
end;

procedure TfrmDecisionMaker.gridHeSoChucDanhFULL_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  InitPopupControl('dxlcCanhanCTN', self, sender, 2.5, gridHeSoChucDanh);
end;

procedure TfrmDecisionMaker.gridHeSoChucDanhWAGE_SCALE_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWageCompany.Open;
  InitPopupControl('dxlcWageCompany',frmPopupMain,sender,2,gridHeSoChucDanh);
end;

procedure TfrmDecisionMaker.gridHeSoChucDanhWAGE_SCALE_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryWageCompany,DecisionDM.qryEmpCompanyWage,
               'WAGE_SCALE;WAGE_SCALE_NAME;WAGE_LEVEL;WAGE_COEFF','WAGE_SCALE;WAGE_SCALE_NAME;WAGE_LEVEL;WAGE_COEFF',
               'WAGE_SCALE_NAME',Text);
  frmPopupMain.qryWageCompany.Close;
end;

procedure TfrmDecisionMaker.gridHeSoChucDanhNEXT_WAGE_SCALE_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWageCompany.Open;
  InitPopupControl('dxlcWageCompany',frmPopupMain,sender,2,gridHeSoChucDanh);
end;

procedure TfrmDecisionMaker.gridHeSoChucDanhNEXT_WAGE_SCALE_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryWageCompany,DecisionDM.qryEmpCompanyWage,
               'WAGE_SCALE;WAGE_SCALE_NAME;WAGE_LEVEL',
               'NEXT_WAGE_SCALE;NEXT_WAGE_SCALE_NAME;NEXT_WAGE_LEVEL',
               'WAGE_SCALE_NAME',Text);
  frmPopupMain.qryWageCompany.Close;
end;

procedure TfrmDecisionMaker.gridEmpChangeNEXT_CAREER_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWageStandard.Open;
  InitPopupControl('dxlcWageStandard',frmPopupMain,sender,2,gridEmpChange);
end;

procedure TfrmDecisionMaker.gridEmpChangeNEXT_CAREER_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryWageStandard,DecisionDM.qryEmpStandardWage,
               'WAGE_SCALE;CAREER_NAME;WAGE_LEVEL',
               'NEXT_WAGE_SCALE;NEXT_CAREER_NAME;NEXT_WAGE_LEVEL',
               'CAREER_NAME',Text);
  frmPopupMain.qryWageStandard.Close;
end;

procedure TfrmDecisionMaker.DefOnWageCompanyEnter(Sender: TObject);
var
  pp: PPropInfo;
  ds: TDatasource;
  f: boolean;
begin
  pp := GetPropInfo(Sender, 'DataSource', [tkClass]);
  ds := TDatasource(GetOrdProp(Sender, pp));
  if (ds <> frameLuongCBNN.acDSInsert.DataSource) then
  begin
    if frameLuongCBNN.acDSPost.Enabled then
      frameLuongCBNN.acDSPost.Execute;
    if not (frameLuongCBNN.acDSInsert.DataSource.State in [dsInsert, dsEdit])
      then
    begin
      f := frameLuongCBNN.SetDataSource(ds);
      frameLuongCBNN.dxlctrlInsert.Visible:=(ds.Name=DecisionDM.dsEmpCompanyWage.Name);
      frameLuongCBNN.dxlctrlInsertCopy.Visible:=(ds.Name=DecisionDM.dsEmpCompanyWage.Name);
    end
    else
      (Sender as TControl).ControlState := (Sender as TControl).ControlState -
        [csFocusing];
  end
end;

end.

