unit TheodoiPhepForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, StdCtrls,
  ElCLabel, ElLabel, ExtCtrls, ElPanel, dxExEdtr, dxLayoutControl, dxTL,
  dxDBCtrl, dxCntner, dxDBTL, cxControls, DB, IBODataset, ElBtnCtl,
  ElPopBtn, dxEditor, dxEdLib, dxDBGrid, dxDBTLCl, dxGrClEx, ActnList,
  dxGrClms, dxBar, ElSplit, ElColorMap, dxDBELib, DBActns, ElPgCtl;

type
  TfrmTheodoiPhep = class(TfrmBase)
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    dxlcLeftSide: TdxLayoutControl;
    tlOrgMap: TdxDBTreeList;
    tlOrgMapDEPT_NAME: TdxDBTreeListColumn;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    qryOrgMap: TIBOQuery;
    qryOrgMapDEPT_NO: TWideStringField;
    qryOrgMapDEPT_NAME: TWideStringField;
    qryOrgMapP_DEPT_NO: TWideStringField;
    dsOrgMap: TDataSource;
    dxlcRightSide: TdxLayoutControl;
    dxInYear: TdxSpinEdit;
    ElPopupButton1: TElPopupButton;
    ElPopupButton3: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    dxLayoutGroup8: TdxLayoutGroup;
    dxlcRightSideGroup2: TdxLayoutGroup;
    dxlcRightSideItem3: TdxLayoutItem;
    dxlcRightSideItem4: TdxLayoutItem;
    dxlcRightSideItem7: TdxLayoutItem;
    dxlcRightSideItem6: TdxLayoutItem;
    gridTheodoi: TdxDBGrid;
    dxlcRightSideItem1: TdxLayoutItem;
    dsTheodoiThongtin: TDataSource;
    qryTheodoiThongtin: TIBOQuery;
    gridTheodoiMASO_NHANVIEN: TdxDBGridColumn;
    gridTheodoiHO_TEN: TdxDBGridColumn;
    gridTheodoiTEN_DONVI: TdxDBGridColumn;
    gridTheodoiTEN_CHUCVU: TdxDBGridColumn;
    gridTheodoiTEN_LOAI_CV: TdxDBGridColumn;
    gridTheodoiSOPHEP_DAUKY: TdxDBGridColumn;
    gridTheodoiSOPHEP_TRONGKY: TdxDBGridColumn;
    gridTheodoiSOPHEP_DANGHI: TdxDBGridColumn;
    gridTheodoiSOPHEP_CUOIKY: TdxDBGridColumn;
    gridTheodoiTHANG_1: TdxDBGridColumn;
    gridTheodoiTHANG_2: TdxDBGridColumn;
    gridTheodoiTHANG_3: TdxDBGridColumn;
    gridTheodoiTHANG_4: TdxDBGridColumn;
    gridTheodoiTHANG_5: TdxDBGridColumn;
    gridTheodoiTHANG_6: TdxDBGridColumn;
    gridTheodoiTHANG_7: TdxDBGridColumn;
    gridTheodoiTHANG_8: TdxDBGridColumn;
    gridTheodoiTHANG_9: TdxDBGridColumn;
    gridTheodoiTHANG_10: TdxDBGridColumn;
    gridTheodoiTHANG_11: TdxDBGridColumn;
    gridTheodoiTHANG_12: TdxDBGridColumn;
    gridTheodoiTHANG_1_DANGHI: TdxDBGridPopupColumn;
    gridTheodoiTHANG_2_DANGHI: TdxDBGridPopupColumn;
    gridTheodoiTHANG_3_DANGHI: TdxDBGridPopupColumn;
    gridTheodoiTHANG_4_DANGHI: TdxDBGridPopupColumn;
    gridTheodoiTHANG_5_DANGHI: TdxDBGridPopupColumn;
    gridTheodoiTHANG_6_DANGHI: TdxDBGridPopupColumn;
    gridTheodoiTHANG_7_DANGHI: TdxDBGridPopupColumn;
    gridTheodoiTHANG_8_DANGHI: TdxDBGridPopupColumn;
    gridTheodoiTHANG_9_DANGHI: TdxDBGridPopupColumn;
    gridTheodoiTHANG_10_DANGHI: TdxDBGridPopupColumn;
    gridTheodoiTHANG_11_DANGHI: TdxDBGridPopupColumn;
    gridTheodoiTHANG_12_DANGHI: TdxDBGridPopupColumn;
    ActionList1: TActionList;
    acThongkePhep: TAction;
    acThongkeThangtruoc: TAction;
    acThongkeThangsau: TAction;
    dxlcViewDetail: TdxLayoutControl;
    gridViewDetail: TdxDBGrid;
    dxLayoutGroup2: TdxLayoutGroup;
    qryViewDetail: TIBOQuery;
    dsViewDetail: TDataSource;
    gridTheodoiPHEPTON_1: TdxDBGridColumn;
    gridTheodoiPHEPTON_2: TdxDBGridColumn;
    gridTheodoiPHEPTON_3: TdxDBGridColumn;
    gridTheodoiPHEPTON_4: TdxDBGridColumn;
    gridTheodoiPHEPTON_5: TdxDBGridColumn;
    gridTheodoiPHEPTON_6: TdxDBGridColumn;
    gridTheodoiPHEPTON_7: TdxDBGridColumn;
    gridTheodoiPHEPTON_8: TdxDBGridColumn;
    gridTheodoiPHEPTON_9: TdxDBGridColumn;
    gridTheodoiPHEPTON_10: TdxDBGridColumn;
    gridTheodoiPHEPTON_11: TdxDBGridColumn;
    gridTheodoiPHEPTON_12: TdxDBGridColumn;
    acPhatsinhTieuchuanPhep: TAction;
    acXuliDulieuPhep: TAction;
    leftPanel: TPanel;
    rightPanel: TPanel;
    ElSplitter1: TElSplitter;
    ElPopupButton4: TElPopupButton;
    dxlcRightSideItem2: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxlcRightSideItem5: TdxLayoutItem;
    ElPopupButton6: TElPopupButton;
    dxlcRightSideItem8: TdxLayoutItem;
    ElPopupButton7: TElPopupButton;
    dxlcRightSideItem9: TdxLayoutItem;
    dxlcRightSideGroup1: TdxLayoutGroup;
    acCapnhatPhepnam: TAction;
    acDangkyPhep: TAction;
    acKetchuyenPhep: TAction;
    qryExecute: TIBOQuery;
    ElPopupButton8: TElPopupButton;
    dxlcRightSideItem10: TdxLayoutItem;
    acMauhienthi: TAction;
    dxlcViewDetailGroup1: TdxLayoutGroup;
    dxDBEdit1: TdxDBEdit;
    dxlcViewDetailItem1: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxlcViewDetailItem2: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    dxlcViewDetailItem3: TdxLayoutItem;
    dxlcViewDetailItem4: TdxLayoutItem;
    dxDBEdit4: TdxDBEdit;
    dxlcViewDetailItem5: TdxLayoutItem;
    dxDBEdit5: TdxDBEdit;
    dxlcViewDetailItem6: TdxLayoutItem;
    dxDBEdit6: TdxDBEdit;
    dxlcViewDetailItem7: TdxLayoutItem;
    dxDBEdit7: TdxDBEdit;
    dxlcViewDetailItem8: TdxLayoutItem;
    dxDBEdit8: TdxDBEdit;
    dxlcViewDetailGroup3: TdxLayoutGroup;
    dxlcViewDetailGroup4: TdxLayoutGroup;
    dxlcViewDetailGroup5: TdxLayoutGroup;
    qryReport: TIBOQuery;
    dsReport: TDataSource;
    dxDBEdit9: TdxDBEdit;
    dxlcViewDetailItem9: TdxLayoutItem;
    dxDBEdit10: TdxDBEdit;
    dxlcViewDetailItem10: TdxLayoutItem;
    acCapnhatPopup: TAction;
    DataSetPost1: TDataSetPost;
    DataSetEdit1: TDataSetEdit;
    ElPopupButton10: TElPopupButton;
    dxlcRightSideItem12: TdxLayoutItem;
    qryReportTHANG_APDUNG: TIntegerField;
    qryReportNAM_APDUNG: TIntegerField;
    qryReportSOPHEP_TRONGKY: TIBOFloatField;
    qryReportSOPHEP_DANGHI: TIBOFloatField;
    qryReportSOPHEP_CONLAI: TIBOFloatField;
    qryReportSOPHEP_TRONGKY_LUYTIEN: TIBOFloatField;
    qryReportSOPHEP_DANGHI_LUYTIEN: TIBOFloatField;
    qryReportSOPHEP_CONLAI_LUYTIEN: TIBOFloatField;
    qryReportSOPHEP_KETCHUYEN: TIBOFloatField;
    qryReportSOPHEP_KETCHUYEN_LUYTIEN: TIBOFloatField;
    qryReportMASO: TWideStringField;
    qryTheodoiThongtinMASO_NHANVIEN: TWideStringField;
    qryTheodoiThongtinHO_TEN: TWideStringField;
    qryTheodoiThongtinMA_DONVI: TWideStringField;
    qryTheodoiThongtinTEN_DONVI: TWideStringField;
    qryTheodoiThongtinMA_CHUCVU: TWideStringField;
    qryTheodoiThongtinTEN_CHUCVU: TWideStringField;
    qryTheodoiThongtinNGAY_BATDAU: TDateField;
    qryTheodoiThongtinMA_LOAI_CV: TWideStringField;
    qryTheodoiThongtinTEN_LOAI_CV: TWideStringField;
    qryTheodoiThongtinSOPHEP_DAUKY: TIBOFloatField;
    qryTheodoiThongtinSOPHEP_TRONGKY: TIBOFloatField;
    qryTheodoiThongtinSOPHEP_DANGHI: TIBOFloatField;
    qryTheodoiThongtinSOPHEP_CUOIKY: TIBOFloatField;
    qryTheodoiThongtinTHANG_1: TIBOFloatField;
    qryTheodoiThongtinTHANG_1_DANGHI: TIBOFloatField;
    qryTheodoiThongtinPHEPTON_1: TIBOFloatField;
    qryTheodoiThongtinTHANG_2: TIBOFloatField;
    qryTheodoiThongtinTHANG_2_DANGHI: TIBOFloatField;
    qryTheodoiThongtinPHEPTON_2: TIBOFloatField;
    qryTheodoiThongtinTHANG_3: TIBOFloatField;
    qryTheodoiThongtinTHANG_3_DANGHI: TIBOFloatField;
    qryTheodoiThongtinPHEPTON_3: TIBOFloatField;
    qryTheodoiThongtinTHANG_4: TIBOFloatField;
    qryTheodoiThongtinTHANG_4_DANGHI: TIBOFloatField;
    qryTheodoiThongtinPHEPTON_4: TIBOFloatField;
    qryTheodoiThongtinTHANG_5: TIBOFloatField;
    qryTheodoiThongtinTHANG_5_DANGHI: TIBOFloatField;
    qryTheodoiThongtinPHEPTON_5: TIBOFloatField;
    qryTheodoiThongtinTHANG_6: TIBOFloatField;
    qryTheodoiThongtinTHANG_6_DANGHI: TIBOFloatField;
    qryTheodoiThongtinPHEPTON_6: TIBOFloatField;
    qryTheodoiThongtinTHANG_7: TIBOFloatField;
    qryTheodoiThongtinTHANG_7_DANGHI: TIBOFloatField;
    qryTheodoiThongtinPHEPTON_7: TIBOFloatField;
    qryTheodoiThongtinTHANG_8: TIBOFloatField;
    qryTheodoiThongtinTHANG_8_DANGHI: TIBOFloatField;
    qryTheodoiThongtinPHEPTON_8: TIBOFloatField;
    qryTheodoiThongtinTHANG_9: TIBOFloatField;
    qryTheodoiThongtinTHANG_9_DANGHI: TIBOFloatField;
    qryTheodoiThongtinPHEPTON_9: TIBOFloatField;
    qryTheodoiThongtinTHANG_10: TIBOFloatField;
    qryTheodoiThongtinTHANG_10_DANGHI: TIBOFloatField;
    qryTheodoiThongtinPHEPTON_10: TIBOFloatField;
    qryTheodoiThongtinTHANG_11: TIBOFloatField;
    qryTheodoiThongtinTHANG_11_DANGHI: TIBOFloatField;
    qryTheodoiThongtinPHEPTON_11: TIBOFloatField;
    qryTheodoiThongtinTHANG_12: TIBOFloatField;
    qryTheodoiThongtinTHANG_12_DANGHI: TIBOFloatField;
    qryTheodoiThongtinPHEPTON_12: TIBOFloatField;
    gridViewDetailWORK_DATE: TdxDBGridDateColumn;
    gridViewDetailWHT_NO: TdxDBGridMaskColumn;
    gridViewDetailWHT_NAME: TdxDBGridMaskColumn;
    gridViewDetailPHEP: TdxDBGridMaskColumn;
    gridViewDetailWHT_COLOR: TdxDBGridMaskColumn;
    ElPage_NghiPhep: TElPageControl;
    dxlcViewDetailItem11: TdxLayoutItem;
    ElTab_NghiPhepNgay: TElTabSheet;
    ElTab_NghiPhepTongGio: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    gridViewDetail_Ngay: TdxDBGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    qryViewDetail_ngay: TIBOQuery;
    dsViewDetail_ngay: TDataSource;
    gridViewDetail_NgayWORK_DATE: TdxDBGridDateColumn;
    gridViewDetail_NgayWHT_NO: TdxDBGridMaskColumn;
    gridViewDetail_NgayWHT_NAME: TdxDBGridMaskColumn;
    gridViewDetail_NgayWHT_COLOR: TdxDBGridMaskColumn;
    qryCheck_LoaiChamCong: TIBOQuery;
    qryCheck_LoaiChamCongLOAI_CHAMCONG: TWideStringField;
    qryTheodoiThongtinTHANG_1_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_2_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_3_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_4_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_5_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_6_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_7_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_8_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_9_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_10_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_11_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_12_LUYTIEN: TIBOFloatField;
    gridTheodoiTHANG_1_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_2_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_3_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_4_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_5_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_6_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_7_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_8_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_9_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_10_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_11_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_12_LUYTIEN: TdxDBGridColumn;
    qryTheodoiThongtinTHANG_1_DANGHI_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_2_DANGHI_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_3_DANGHI_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_4_DANGHI_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_5_DANGHI_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_6_DANGHI_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_7_DANGHI_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_8_DANGHI_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_9_DANGHI_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_10_DANGHI_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_11_DANGHI_LUYTIEN: TIBOFloatField;
    qryTheodoiThongtinTHANG_12_DANGHI_LUYTIEN: TIBOFloatField;
    gridTheodoiTHANG_1_DANGHI_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_2_DANGHI_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_3_DANGHI_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_4_DANGHI_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_5_DANGHI_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_6_DANGHI_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_7_DANGHI_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_8_DANGHI_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_9_DANGHI_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_10_DANGHI_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_11_DANGHI_LUYTIEN: TdxDBGridColumn;
    gridTheodoiTHANG_12_DANGHI_LUYTIEN: TdxDBGridColumn;
    qryTheodoiThongtinCONLAI_1: TIBOFloatField;
    qryTheodoiThongtinCONLAI_2: TIBOFloatField;
    qryTheodoiThongtinCONLAI_3: TIBOFloatField;
    qryTheodoiThongtinCONLAI_4: TIBOFloatField;
    qryTheodoiThongtinCONLAI_5: TIBOFloatField;
    qryTheodoiThongtinCONLAI_6: TIBOFloatField;
    qryTheodoiThongtinCONLAI_7: TIBOFloatField;
    qryTheodoiThongtinCONLAI_8: TIBOFloatField;
    qryTheodoiThongtinCONLAI_9: TIBOFloatField;
    qryTheodoiThongtinCONLAI_10: TIBOFloatField;
    qryTheodoiThongtinCONLAI_11: TIBOFloatField;
    qryTheodoiThongtinCONLAI_12: TIBOFloatField;
    qryTheodoiThongtinCONLAI_LUYTIEN_1: TIBOFloatField;
    qryTheodoiThongtinCONLAI_LUYTIEN_2: TIBOFloatField;
    qryTheodoiThongtinCONLAI_LUYTIEN_3: TIBOFloatField;
    qryTheodoiThongtinCONLAI_LUYTIEN_4: TIBOFloatField;
    qryTheodoiThongtinCONLAI_LUYTIEN_5: TIBOFloatField;
    qryTheodoiThongtinCONLAI_LUYTIEN_6: TIBOFloatField;
    qryTheodoiThongtinCONLAI_LUYTIEN_7: TIBOFloatField;
    qryTheodoiThongtinCONLAI_LUYTIEN_8: TIBOFloatField;
    qryTheodoiThongtinCONLAI_LUYTIEN_9: TIBOFloatField;
    qryTheodoiThongtinCONLAI_LUYTIEN_10: TIBOFloatField;
    qryTheodoiThongtinCONLAI_LUYTIEN_11: TIBOFloatField;
    qryTheodoiThongtinCONLAI_LUYTIEN_12: TIBOFloatField;
    gridTheodoiCONLAI_1: TdxDBGridColumn;
    gridTheodoiCONLAI_2: TdxDBGridColumn;
    gridTheodoiCONLAI_3: TdxDBGridColumn;
    gridTheodoiCONLAI_4: TdxDBGridColumn;
    gridTheodoiCONLAI_5: TdxDBGridColumn;
    gridTheodoiCONLAI_6: TdxDBGridColumn;
    gridTheodoiCONLAI_7: TdxDBGridColumn;
    gridTheodoiCONLAI_8: TdxDBGridColumn;
    gridTheodoiCONLAI_9: TdxDBGridColumn;
    gridTheodoiCONLAI_10: TdxDBGridColumn;
    gridTheodoiCONLAI_11: TdxDBGridColumn;
    gridTheodoiCONLAI_12: TdxDBGridColumn;
    gridTheodoiCONLAI_LUYTIEN_1: TdxDBGridColumn;
    gridTheodoiCONLAI_LUYTIEN_2: TdxDBGridColumn;
    gridTheodoiCONLAI_LUYTIEN_3: TdxDBGridColumn;
    gridTheodoiCONLAI_LUYTIEN_4: TdxDBGridColumn;
    gridTheodoiCONLAI_LUYTIEN_5: TdxDBGridColumn;
    gridTheodoiCONLAI_LUYTIEN_6: TdxDBGridColumn;
    gridTheodoiCONLAI_LUYTIEN_7: TdxDBGridColumn;
    gridTheodoiCONLAI_LUYTIEN_8: TdxDBGridColumn;
    gridTheodoiCONLAI_LUYTIEN_9: TdxDBGridColumn;
    gridTheodoiCONLAI_LUYTIEN_10: TdxDBGridColumn;
    gridTheodoiCONLAI_LUYTIEN_11: TdxDBGridColumn;
    gridTheodoiCONLAI_LUYTIEN_12: TdxDBGridColumn;
    qryViewDetail_ngayWORK_DATE: TDateField;
    qryViewDetail_ngayWHT_NO: TWideStringField;
    qryViewDetail_ngayWHT_NAME: TWideStringField;
    qryViewDetail_ngayWHT_COLOR: TIntegerField;
    qryViewDetailWORK_DATE: TDateField;
    qryViewDetailWHT_NO: TWideStringField;
    qryViewDetailWHT_NAME: TWideStringField;
    qryViewDetailPHEP: TIBOFloatField;
    qryViewDetailWHT_COLOR: TIntegerField;
    qryViewDetail_thang: TIBOQuery;
    dsViewDetail_thang: TDataSource;
    ElTab_nghiphepthang: TElTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    gridViewDetail_thang: TdxDBGrid;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    gridViewDetail_thangWHT_NO: TdxDBGridMaskColumn;
    gridViewDetail_thangWHT_NAME: TdxDBGridMaskColumn;
    gridViewDetail_thangWHT_COLOR: TdxDBGridMaskColumn;
    gridViewDetail_thangTOTAL_DAY: TdxDBGridMaskColumn;
    gridViewDetail_thangTOTAL_TIME: TdxDBGridMaskColumn;
    qryViewDetail_thangWHT_NO: TWideStringField;
    qryViewDetail_thangWHT_NAME: TWideStringField;
    qryViewDetail_thangWHT_NAME_1: TWideStringField;
    qryViewDetail_thangTOTAL_DAY: TIntegerField;
    qryViewDetail_thangTOTAL_TIME: TIBOFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acThongkePhepExecute(Sender: TObject);
    procedure acThongkeThangtruocExecute(Sender: TObject);
    procedure acThongkeThangsauExecute(Sender: TObject);
    procedure gridTheodoiViewDetaillInitPopup(Sender: TObject);
    procedure gridTheodoiViewDetaillCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridTheodoiTEN_CHUCVUCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure gridTheodoiTEN_DONVICustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure gridViewDetailMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acPhatsinhTieuchuanPhepExecute(Sender: TObject);
    procedure acCapnhatPhepnamExecute(Sender: TObject);
    procedure gridTheodoiSOPHEP_DAUKYCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure gridTheodoiTHANG_1CustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure acDangkyPhepExecute(Sender: TObject);
    procedure acKetchuyenPhepExecute(Sender: TObject);
    procedure qryReportAfterOpen(DataSet: TDataSet);
    procedure acCapnhatPopupExecute(Sender: TObject);
    procedure ElPopupButton10Click(Sender: TObject);
    procedure gridViewDetailWHT_NAMECustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTheodoiPhep: TfrmTheodoiPhep;

implementation

uses MainDM, DateUtils, SSP_Library, PhatsinhTieuchuanPhepForm,
  CapnhatPhepForm, IB_Components, DangkyPhepForm, Math, PhepNhapNhanhForm;

{$R *.dfm}

procedure TfrmTheodoiPhep.FormCreate(Sender: TObject);
begin
  inherited;
  ElPage_NghiPhep.ShowTabs := false;
  
  qryOrgMap.Open;
  CustomExpand(tlOrgMap);
  dxInYear.IntValue := YearOf(Now);
  acThongkePhep.Execute;

  //
  gridTheodoiTHANG_1_DANGHI.OnInitPopup := gridTheodoiViewDetaillInitPopup;
  gridTheodoiTHANG_1_DANGHI.OnCloseUp := gridTheodoiViewDetaillCloseUp;
  gridTheodoiTHANG_2_DANGHI.OnInitPopup := gridTheodoiViewDetaillInitPopup;
  gridTheodoiTHANG_2_DANGHI.OnCloseUp := gridTheodoiViewDetaillCloseUp;
  gridTheodoiTHANG_3_DANGHI.OnInitPopup := gridTheodoiViewDetaillInitPopup;
  gridTheodoiTHANG_3_DANGHI.OnCloseUp := gridTheodoiViewDetaillCloseUp;
  gridTheodoiTHANG_4_DANGHI.OnInitPopup := gridTheodoiViewDetaillInitPopup;
  gridTheodoiTHANG_4_DANGHI.OnCloseUp := gridTheodoiViewDetaillCloseUp;
  gridTheodoiTHANG_5_DANGHI.OnInitPopup := gridTheodoiViewDetaillInitPopup;
  gridTheodoiTHANG_5_DANGHI.OnCloseUp := gridTheodoiViewDetaillCloseUp;
  gridTheodoiTHANG_6_DANGHI.OnInitPopup := gridTheodoiViewDetaillInitPopup;
  gridTheodoiTHANG_6_DANGHI.OnCloseUp := gridTheodoiViewDetaillCloseUp;
  gridTheodoiTHANG_7_DANGHI.OnInitPopup := gridTheodoiViewDetaillInitPopup;
  gridTheodoiTHANG_7_DANGHI.OnCloseUp := gridTheodoiViewDetaillCloseUp;
  gridTheodoiTHANG_8_DANGHI.OnInitPopup := gridTheodoiViewDetaillInitPopup;
  gridTheodoiTHANG_8_DANGHI.OnCloseUp := gridTheodoiViewDetaillCloseUp;
  gridTheodoiTHANG_9_DANGHI.OnInitPopup := gridTheodoiViewDetaillInitPopup;
  gridTheodoiTHANG_9_DANGHI.OnCloseUp := gridTheodoiViewDetaillCloseUp;
  gridTheodoiTHANG_10_DANGHI.OnInitPopup := gridTheodoiViewDetaillInitPopup;
  gridTheodoiTHANG_10_DANGHI.OnCloseUp := gridTheodoiViewDetaillCloseUp;
  gridTheodoiTHANG_11_DANGHI.OnInitPopup := gridTheodoiViewDetaillInitPopup;
  gridTheodoiTHANG_11_DANGHI.OnCloseUp := gridTheodoiViewDetaillCloseUp;
  gridTheodoiTHANG_12_DANGHI.OnInitPopup := gridTheodoiViewDetaillInitPopup;
  gridTheodoiTHANG_12_DANGHI.OnCloseUp := gridTheodoiViewDetaillCloseUp;
  //
end;

procedure TfrmTheodoiPhep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryTheodoiThongtin.Close;
  qryOrgMap.Close;
  Action := caFree;
  frmTheodoiPhep := nil;
end;

procedure TfrmTheodoiPhep.acThongkePhepExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  qryTheodoiThongtin.DisableControls;
  if qryTheodoiThongtin.Active then
    qryTheodoiThongtin.Close;
  qryTheodoiThongtin.ParamByName('AT_YEAR').Value := dxInYear.IntValue;
  qryTheodoiThongtin.Open;
  qryTheodoiThongtin.EnableControls;
  Screen.Cursor := crDefault;
end;

procedure TfrmTheodoiPhep.acThongkeThangtruocExecute(Sender: TObject);
begin
  inherited;
  dxInYear.IntValue := dxInYear.IntValue - 1;
  acThongkePhep.Execute;
end;

procedure TfrmTheodoiPhep.acThongkeThangsauExecute(Sender: TObject);
begin
  inherited;
  dxInYear.IntValue := dxInYear.IntValue + 1;
  acThongkePhep.Execute;
end;

procedure TfrmTheodoiPhep.gridTheodoiViewDetaillInitPopup(
  Sender: TObject);
var
  field_name: widestring;
begin
  inherited;
  if qryCheck_LoaiChamCong.Active then
    qryCheck_LoaiChamCong.Close;
  qryCheck_LoaiChamCong.open;

  if qryCheck_LoaiChamCongLOAI_CHAMCONG.Value = 'CHAMCONG_GIO' then
  begin
    ElPage_NghiPhep.ActivePage := ElTab_NghiPhepTongGio;
    qryViewDetail.ParamByName('EMPLOYEE_NO').Value :=
      qryTheodoiThongtinMASO_NHANVIEN.Value;
    qryViewDetail.ParamByName('IN_YEAR').Value :=
      qryTheodoiThongtin.ParamByName('AT_YEAR').Value;
    qryViewDetail.ParamByName('IN_MONTH').Value := (sender as
    TdxDBGridPopupColumn).Tag;
    qryViewDetail.Open;
  end
  else
  if qryCheck_LoaiChamCongLOAI_CHAMCONG.Value = 'CHAMCONG_NGAY' then
  begin
    ElPage_NghiPhep.ActivePage := ElTab_NghiPhepNgay;
    qryViewDetail_ngay.ParamByName('EMPLOYEE_NO').Value :=
      qryTheodoiThongtinMASO_NHANVIEN.Value;
    qryViewDetail_ngay.ParamByName('IN_YEAR').Value :=
      qryTheodoiThongtin.ParamByName('AT_YEAR').Value;
    qryViewDetail_ngay.ParamByName('IN_MONTH').Value := (sender as
    TdxDBGridPopupColumn).Tag;
    qryViewDetail_ngay.Open;
  end
  else
  if qryCheck_LoaiChamCongLOAI_CHAMCONG.Value = 'CHAMCONG_THANG' then
  begin
    ElPage_NghiPhep.ActivePage := ElTab_nghiphepthang;
    qryViewDetail_thang.ParamByName('EMPLOYEE_NO').Value :=
      qryTheodoiThongtinMASO_NHANVIEN.Value;
    qryViewDetail_thang.ParamByName('IN_YEAR').Value :=
      qryTheodoiThongtin.ParamByName('AT_YEAR').Value;
    qryViewDetail_thang.ParamByName('IN_MONTH').Value := (sender as
    TdxDBGridPopupColumn).Tag;
    qryViewDetail_thang.Open;
  end;



  qryReport.ParamByName('MASO').Value := qryTheodoiThongtinMASO_NHANVIEN.Value +
    qryTheodoiThongtin.ParamByName('AT_YEAR').AsString;
  qryReport.ParamByName('NAM_APDUNG').Value :=
    qryTheodoiThongtin.ParamByName('AT_YEAR').Value;
  qryReport.ParamByName('THANG_APDUNG').Value := (sender as
    TdxDBGridPopupColumn).Tag;

  qryReport.Open;

  InitPopupControl('dxlcViewDetail', self, sender, 2, gridTheodoi);
end;

procedure TfrmTheodoiPhep.gridTheodoiViewDetaillCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  qryViewDetail.Close;
  qryViewDetail_ngay.close;
  qryViewDetail_thang.close;
  qryReport.Close;
  qryTheodoiThongtin.Refresh;
end;

procedure TfrmTheodoiPhep.gridTheodoiTEN_CHUCVUCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AFont.Style := AFont.Style + [fsItalic];
  AFont.Color := clGray;
end;

procedure TfrmTheodoiPhep.gridTheodoiTEN_DONVICustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AFont.Style := AFont.Style + [fsItalic];
  AFont.Color := clGray;
end;

procedure TfrmTheodoiPhep.gridViewDetailMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  //
end;

procedure TfrmTheodoiPhep.acPhatsinhTieuchuanPhepExecute(Sender: TObject);
begin
  inherited;
  try
    frmPhatsinhTieuchuanPhep := TfrmPhatsinhTieuchuanPhep.Create(self,
      qryOrgMapDEPT_NO.Value, qryOrgMapDEPT_NAME.Value, true, dxInYear.IntValue);
    if frmPhatsinhTieuchuanPhep.ShowModal = mrOK then
      acThongkePhep.Execute;
  finally
    frmPhatsinhTieuchuanPhep.Free;
    frmPhatsinhTieuchuanPhep := nil;
  end;

end;

procedure TfrmTheodoiPhep.acCapnhatPhepnamExecute(Sender: TObject);
begin
  inherited;
  try
    frmCapnhatPhep := TfrmCapnhatPhep.Create(self, qryOrgMapDEPT_NO.Value,
      qryOrgMapDEPT_NAME.Value, true, dxInYear.IntValue);
    if frmCapnhatPhep.ShowModal = mrOK then
      acThongkePhep.Execute;
  finally
    frmCapnhatPhep.Free;
    frmCapnhatPhep := nil;
  end;                      
end;

procedure TfrmTheodoiPhep.gridTheodoiSOPHEP_DAUKYCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AFont.Color := clBlue;
  AFont.Style := AFont.Style + [fsBold];
end;

procedure TfrmTheodoiPhep.gridTheodoiTHANG_1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AFont.Color := clBlue;
end;

procedure TfrmTheodoiPhep.acDangkyPhepExecute(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmDangkyPhep,frmDangkyPhep)
end;

procedure TfrmTheodoiPhep.acKetchuyenPhepExecute(Sender: TObject);
begin
  inherited;
{  try
    frmKetChuyenPhep := TfrmKetChuyenPhep.Create(self,
      qryOrgMapDEPT_NO.Value, qryOrgMapDEPT_NAME.Value, true, dxInYear.IntValue);
    if frmKetChuyenPhep.ShowModal = mrOK then
      acThongkePhep.Execute;
  finally
    frmKetChuyenPhep.Free;
    frmKetChuyenPhep := nil;
  end;   }
end;

procedure TfrmTheodoiPhep.qryReportAfterOpen(DataSet: TDataSet);
begin
  inherited;
  If qryReportSOPHEP_KETCHUYEN_LUYTIEN.IsNull or
      (qryReportSOPHEP_KETCHUYEN_LUYTIEN.Value=0) then
  begin
    dxlcViewDetailItem9.Visible := false;
    dxlcViewDetailItem10.Visible := false;
  end
  else
  begin
    dxlcViewDetailItem9.Visible := true;
    dxlcViewDetailItem10.Visible := true;
  end;  
end;

procedure TfrmTheodoiPhep.acCapnhatPopupExecute(Sender: TObject);
var
  thang , nam :integer;
begin
  inherited;
  if qryExecute.Active then
    qryExecute.close;
  qryExecute.sql.Clear;
  qryExecute.SQL.Text:='EXECUTE PROCEDURE HR_PHEP_CAPNHAT_HIENTHI'+
                      '(:maso_nv,:nam_apdung, :thang_apdung, '+
                      ':sophep_ketchuyen, :sophep_danghi)';
  qryExecute.ParamByName('maso_nv').Value:=qryTheodoiThongtinMASO_NHANVIEN.Value;
  qryExecute.ParamByName('nam_apdung').Value:=StrToInt(dxDBEdit2.Text);
  qryExecute.ParamByName('thang_apdung').Value:=StrToInt(dxDBEdit1.Text);
  qryExecute.ParamByName('sophep_ketchuyen').Value:=StrToInt(dxDBEdit9.Text);
  qryExecute.ParamByName('sophep_danghi').Value:=StrToInt(dxDBEdit5.Text);
  qryExecute.open;
  qryReport.Refresh;
end;

procedure TfrmTheodoiPhep.ElPopupButton10Click(Sender: TObject);
var
  form: TfrmPhepNhapNhanh;
begin
  inherited;
  form := TfrmPhepNhapNhanh.Create(self);
  try
    form.ShowMOdal;
  finally
    form.Free;
  end;
end;

procedure TfrmTheodoiPhep.gridViewDetailWHT_NAMECustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AColor := StrToIntDef(VarToStr(Anode.Values[gridViewDetailWHT_COLOR.Index]),
      clWhite);
end;

end.

