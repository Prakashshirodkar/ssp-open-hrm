unit CapNhatThongTinNVForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, dxExEdtr, DB, IBODataset, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, ElCaption, dxLayoutControl, ToolbarFrame, cxControls,
  ElXPThemedControl, ElStatBar, ExtCtrls, ElPgCtl, dxInspct, dxDBInsp,
  dxEditor, dxEdLib, dxDBELib, ImgList, ActnList, dxDBTLCl, dxGrClms;

type
  TfrmCapNhatThongTinNV = class(TfrmEditBase)
    dxlcMainItem2: TdxLayoutItem;
    gridDSNVHieuChinh: TdxDBGrid;
    gridDSNVHieuChinhEMPLOYEE_NO: TdxDBGridColumn;
    gridDSNVHieuChinhFULL_NAME: TdxDBGridColumn;
    qryDSNVHieuChinh: TIBOQuery;
    qryDSNVHieuChinhEMPLOYEE_NO: TWideStringField;
    qryDSNVHieuChinhFULL_NAME: TWideStringField;
    dsDSNVHieuChinh: TDataSource;
    dxlcMainGroup1: TdxLayoutGroup;
    pageThongTin: TElPageControl;
    dxlcMainItem4: TdxLayoutItem;
    tabThongTinChung: TElTabSheet;
    tabTrinhDo: TElTabSheet;
    qryDuLieuNhanSu: TIBOQuery;
    dsDuLieuNhanSu: TDataSource;
    qryDuLieuNhanSuEMPLOYEE_NO: TWideStringField;
    qryDuLieuNhanSuLAST_NAME: TWideStringField;
    qryDuLieuNhanSuMIDDLE_NAME: TWideStringField;
    qryDuLieuNhanSuFIRST_NAME: TWideStringField;
    qryDuLieuNhanSuGENDER: TSmallintField;
    qryDuLieuNhanSuBIRTH_DATE: TDateField;
    qryDuLieuNhanSuMARRIAL_STATUS: TWideStringField;
    qryDuLieuNhanSuSTATUS_NAME: TWideStringField;
    qryDuLieuNhanSuID_CARD_NO: TWideStringField;
    qryDuLieuNhanSuISSUED_DATE: TDateField;
    qryDuLieuNhanSuISSUED_PLACE: TWideStringField;
    qryDuLieuNhanSuRACE_NO: TWideStringField;
    qryDuLieuNhanSuRACE_NAME: TWideStringField;
    qryDuLieuNhanSuCURRENCY_NO: TWideStringField;
    qryDuLieuNhanSuCURRENCY_NAME: TWideStringField;
    qryDuLieuNhanSuNATIONAL_NO: TWideStringField;
    qryDuLieuNhanSuNATION_NAME: TWideStringField;
    qryDuLieuNhanSuRELIGION_NO: TWideStringField;
    qryDuLieuNhanSuRELIGION_NAME: TWideStringField;
    qryDuLieuNhanSuBIRTH_PLACE_ID: TWideStringField;
    qryDuLieuNhanSuNATIVE_PLACE_ID: TWideStringField;
    qryDuLieuNhanSuCONTACT_ADDR: TWideStringField;
    qryDuLieuNhanSuPROVISION_ADDR: TWideStringField;
    qryDuLieuNhanSuRESIDENT_ADDR: TWideStringField;
    qryDuLieuNhanSuCONTACT_PHONE: TWideStringField;
    qryDuLieuNhanSuHAND_PHONE: TWideStringField;
    qryDuLieuNhanSuEMAIL: TWideStringField;
    qryDuLieuNhanSuFAX: TWideStringField;
    qryDuLieuNhanSuWEBSITE: TWideStringField;
    qryDuLieuNhanSuEMPLOYEE_ID: TWideStringField;
    qryDuLieuNhanSuDESCENT_FROM: TWideStringField;
    qryDuLieuNhanSuDESCENT_NAME: TWideStringField;
    qryDuLieuNhanSuACCOUNT_ID: TWideStringField;
    qryDuLieuNhanSuACCOUNT_BANK: TWideStringField;
    qryDuLieuNhanSuREGISTERED_NAME: TWideStringField;
    qryDuLieuNhanSuALIAS: TWideStringField;
    qryDuLieuNhanSuPASSPORT: TWideStringField;
    qryDuLieuNhanSuPASSPORT_DATE: TDateField;
    qryDuLieuNhanSuPASSPORT_PLACE: TWideStringField;
    qryDuLieuNhanSuPASSPORT_EXPIRED: TDateField;
    qryDuLieuNhanSuMASO_THUE_CANHAN: TWideStringField;
    qryDuLieuNhanSuCOQUAN_THUE_QUANLY: TWideStringField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxEmployeeNo_HR: TdxDBEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLastName_HR: TdxDBEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxMiddleName_HR: TdxDBEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxFirstName_HR: TdxDBEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxRegisteredName_HR: TdxDBEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxAlias_HR: TdxDBEdit;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item7: TdxLayoutItem;
    dbimGENDER: TdxDBImageEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxBirthDate_HR: TdxDBDateEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxIDCardNo_HR: TdxDBEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxIssuedDate_HR: TdxDBDateEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxIssuedPlace_HR: TdxDBEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxPassport_HR: TdxDBEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxPassportDate_HR: TdxDBDateEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxPassportPlace_HR: TdxDBEdit;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxStatusName_HR: TdxDBEdit;
    imglGender: TImageList;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxNationName_HR: TdxDBEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxBIRTH_PLACE_ID_HR: TdxDBEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxRACE_NAME_HR: TdxDBEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxNATIVE_PLACE_ID_HR: TdxDBEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxRELIGION_NAME_HR: TdxDBEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxDESCENT_NAME_HR: TdxDBEdit;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxCONTACT_PHONE_HR: TdxDBEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    dxRESIDENT_ADDR_HR: TdxDBEdit;
    dxLayoutControl1Item24: TdxLayoutItem;
    dxHAND_PHONE_HR: TdxDBEdit;
    dxLayoutControl1Item25: TdxLayoutItem;
    dxPROVISION_ADDR_HR: TdxDBEdit;
    dxLayoutControl1Item26: TdxLayoutItem;
    dxEMAIL_HR: TdxDBHyperLinkEdit;
    dxLayoutControl1Item27: TdxLayoutItem;
    dxCONTACT_ADDR_HR: TdxDBEdit;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Group15: TdxLayoutGroup;
    dxLayoutControl1Item33: TdxLayoutItem;
    dxEmployeeNo_WEB: TdxDBEdit;
    dxLayoutControl1Group16: TdxLayoutGroup;
    dxLastName_WEB: TdxDBEdit;
    dxMiddleName_WEB: TdxDBEdit;
    dxFirstName_WEB: TdxDBEdit;
    dxLayoutControl1Item34: TdxLayoutItem;
    dxLayoutControl1Item35: TdxLayoutItem;
    dxLayoutControl1Item36: TdxLayoutItem;
    qryDuLieuWeb: TIBOQuery;
    dsDuLieuWeb: TDataSource;
    dxBirthDate_WEB: TdxDBDateEdit;
    dbimGENDER_WEB: TdxDBImageEdit;
    dxStatusName_WEB: TdxDBEdit;
    dxLayoutControl1Group17: TdxLayoutGroup;
    dxLayoutControl1Item37: TdxLayoutItem;
    dxLayoutControl1Item38: TdxLayoutItem;
    dxLayoutControl1Item39: TdxLayoutItem;
    dxIDCardNo_WEB: TdxDBEdit;
    dxIssuedDate_WEB: TdxDBDateEdit;
    dxIssuedPlace_WEB: TdxDBEdit;
    dxPassport_WEB: TdxDBEdit;
    dxPassportDate_WEB: TdxDBDateEdit;
    dxPassportPlace_WEB: TdxDBEdit;
    dxLayoutControl1Group18: TdxLayoutGroup;
    dxLayoutControl1Group19: TdxLayoutGroup;
    dxLayoutControl1Item40: TdxLayoutItem;
    dxLayoutControl1Item41: TdxLayoutItem;
    dxLayoutControl1Item42: TdxLayoutItem;
    dxLayoutControl1Item43: TdxLayoutItem;
    dxLayoutControl1Item44: TdxLayoutItem;
    dxLayoutControl1Item45: TdxLayoutItem;
    dxNationName_WEB: TdxDBEdit;
    dxBIRTH_PLACE_ID_WEB: TdxDBEdit;
    dxRACE_NAME_WEB: TdxDBEdit;
    dxNATIVE_PLACE_ID_WEB: TdxDBEdit;
    dxRELIGION_NAME_WEB: TdxDBEdit;
    dxDESCENT_NAME_WEB: TdxDBEdit;
    dxLayoutControl1Group21: TdxLayoutGroup;
    dxLayoutControl1Group22: TdxLayoutGroup;
    dxLayoutControl1Group23: TdxLayoutGroup;
    dxLayoutControl1Item49: TdxLayoutItem;
    dxLayoutControl1Item50: TdxLayoutItem;
    dxLayoutControl1Item51: TdxLayoutItem;
    dxLayoutControl1Item52: TdxLayoutItem;
    dxLayoutControl1Item53: TdxLayoutItem;
    dxLayoutControl1Item54: TdxLayoutItem;
    dxLayoutControl1Group24: TdxLayoutGroup;
    dxRegisteredName_WEB: TdxDBEdit;
    dxAlias_WEB: TdxDBEdit;
    dxLayoutControl1Item55: TdxLayoutItem;
    dxLayoutControl1Item56: TdxLayoutItem;
    dxHAND_PHONE_WEB: TdxDBEdit;
    dxPROVISION_ADDR_WEB: TdxDBEdit;
    dxEMAIL_WEB: TdxDBHyperLinkEdit;
    dxCONTACT_ADDR_WEB: TdxDBEdit;
    dxLayoutControl1Group25: TdxLayoutGroup;
    dxLayoutControl1Group26: TdxLayoutGroup;
    dxLayoutControl1Group27: TdxLayoutGroup;
    dxLayoutControl1Item58: TdxLayoutItem;
    dxLayoutControl1Item59: TdxLayoutItem;
    dxLayoutControl1Item57: TdxLayoutItem;
    dxLayoutControl1Item60: TdxLayoutItem;
    dxLayoutControl1Item61: TdxLayoutItem;
    dxLayoutControl1Item28: TdxLayoutItem;
    dxCOQUAN_THUE_QUANLY_HR: TdxDBEdit;
    dxLayoutControl1Item31: TdxLayoutItem;
    dxCURRENCY_NAME_HR: TdxDBEdit;
    dxLayoutControl1Item29: TdxLayoutItem;
    dxACCOUNT_ID_HR: TdxDBEdit;
    dxLayoutControl1Item30: TdxLayoutItem;
    dxACCOUNT_BANK_HR: TdxDBEdit;
    dxLayoutControl1Item32: TdxLayoutItem;
    dxMASO_THUE_CANHAN_HR: TdxDBEdit;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxLayoutControl1Group14: TdxLayoutGroup;
    dxCURRENCY_NAME_WEB: TdxDBEdit;
    dxACCOUNT_ID_WEB: TdxDBEdit;
    dxLayoutControl1Item62: TdxLayoutItem;
    dxACCOUNT_BANK_WEB: TdxDBEdit;
    dxMASO_THUE_CANHAN_WEB: TdxDBEdit;
    dxCOQUAN_THUE_QUANLY_WEB: TdxDBEdit;
    dxLayoutControl1Group28: TdxLayoutGroup;
    dxLayoutControl1Item63: TdxLayoutItem;
    dxLayoutControl1Item64: TdxLayoutItem;
    dxLayoutControl1Item65: TdxLayoutItem;
    dxDuyetLastName: TdxCheckEdit;
    dxLayoutControl1Item66: TdxLayoutItem;
    dxLayoutControl1Item67: TdxLayoutItem;
    dxDuyetMiddleName: TdxCheckEdit;
    dxLayoutControl1Item68: TdxLayoutItem;
    dxDuyetFirstName: TdxCheckEdit;
    dxLayoutControl1Item69: TdxLayoutItem;
    dxDuyetStatusName: TdxCheckEdit;
    dxLayoutControl1Item70: TdxLayoutItem;
    dxDuyetGender: TdxCheckEdit;
    dxLayoutControl1Item71: TdxLayoutItem;
    dxDuyetBirthDate: TdxCheckEdit;
    dxLayoutControl1Item72: TdxLayoutItem;
    dxDuyetAlias: TdxCheckEdit;
    dxLayoutControl1Item73: TdxLayoutItem;
    dxDuyetRegisteredName: TdxCheckEdit;
    dxLayoutControl1Item74: TdxLayoutItem;
    dxDuyetPassport: TdxCheckEdit;
    dxLayoutControl1Item75: TdxLayoutItem;
    dxDuyetIssuedPlace: TdxCheckEdit;
    dxLayoutControl1Item76: TdxLayoutItem;
    dxDuyetIssuedDate: TdxCheckEdit;
    dxLayoutControl1Item77: TdxLayoutItem;
    dxDuyetIDCardNo: TdxCheckEdit;
    dxLayoutControl1Item81: TdxLayoutItem;
    dxDuyetPassportPlace: TdxCheckEdit;
    dxLayoutControl1Item82: TdxLayoutItem;
    dxDuyetPassportDate: TdxCheckEdit;
    dxCONTACT_PHONE_WEB: TdxDBEdit;
    dxRESIDENT_ADDR_WEB: TdxDBEdit;
    dxLayoutControl1Group20: TdxLayoutGroup;
    dxLayoutControl1Item46: TdxLayoutItem;
    dxLayoutControl1Item47: TdxLayoutItem;
    qryCauHinh: TIBOQuery;
    dsCauHinh: TDataSource;
    qryCauHinhEMPLOYEE_NO: TSmallintField;
    qryCauHinhLAST_NAME: TSmallintField;
    qryCauHinhMIDDLE_NAME: TSmallintField;
    qryCauHinhFIRST_NAME: TSmallintField;
    qryCauHinhGENDER: TSmallintField;
    qryCauHinhBIRTH_DATE: TSmallintField;
    qryCauHinhMARRIAL_STATUS: TSmallintField;
    qryCauHinhID_CARD_NO: TSmallintField;
    qryCauHinhISSUED_DATE: TSmallintField;
    qryCauHinhISSUED_PLACE: TSmallintField;
    qryCauHinhRACE_NO: TSmallintField;
    qryCauHinhCURRENCY_NO: TSmallintField;
    qryCauHinhNATIONAL_NO: TSmallintField;
    qryCauHinhRELIGION_NO: TSmallintField;
    qryCauHinhBIRTH_PLACE_ID: TSmallintField;
    qryCauHinhNATIVE_PLACE_ID: TSmallintField;
    qryCauHinhCONTACT_ADDR: TSmallintField;
    qryCauHinhPROVISION_ADDR: TSmallintField;
    qryCauHinhRESIDENT_ADDR: TSmallintField;
    qryCauHinhCONTACT_PHONE: TSmallintField;
    qryCauHinhHAND_PHONE: TSmallintField;
    qryCauHinhEMAIL: TSmallintField;
    qryCauHinhFAX: TSmallintField;
    qryCauHinhWEBSITE: TSmallintField;
    qryCauHinhEMPLOYEE_ID: TSmallintField;
    qryCauHinhDESCENT_FROM: TSmallintField;
    qryCauHinhACCOUNT_ID: TSmallintField;
    qryCauHinhACCOUNT_BANK: TSmallintField;
    qryCauHinhREGISTERED_NAME: TSmallintField;
    qryCauHinhALIAS: TSmallintField;
    qryCauHinhPASSPORT: TSmallintField;
    qryCauHinhPASSPORT_DATE: TSmallintField;
    qryCauHinhPASSPORT_EXPIRED: TSmallintField;
    qryCauHinhPASSPORT_PLACE: TSmallintField;
    qryCauHinhMASO_THUE_CANHAN: TSmallintField;
    qryCauHinhCOQUAN_THUE_QUANLY: TSmallintField;
    dxLayoutControl1Item48: TdxLayoutItem;
    dxDuyetNATION_NAME: TdxCheckEdit;
    dxLayoutControl1Item78: TdxLayoutItem;
    dxDuyetBIRTH_PLACE_ID: TdxCheckEdit;
    dxLayoutControl1Item79: TdxLayoutItem;
    dxDuyetRaceName: TdxCheckEdit;
    dxLayoutControl1Item80: TdxLayoutItem;
    dxDuyetNATIVE_PLACE_ID: TdxCheckEdit;
    dxLayoutControl1Item83: TdxLayoutItem;
    dxDuyetPROVISION_ADDR: TdxCheckEdit;
    dxLayoutControl1Item84: TdxLayoutItem;
    dxDuyetHAND_PHONE: TdxCheckEdit;
    dxLayoutControl1Item85: TdxLayoutItem;
    dxDuyetRESIDENT_ADDR: TdxCheckEdit;
    dxLayoutControl1Item86: TdxLayoutItem;
    dxDuyetCONTACT_PHONE: TdxCheckEdit;
    dxLayoutControl1Item87: TdxLayoutItem;
    dxDuyetDESCENT_NAME: TdxCheckEdit;
    dxLayoutControl1Item88: TdxLayoutItem;
    dxDuyetRELIGION_NAME: TdxCheckEdit;
    dxLayoutControl1Item89: TdxLayoutItem;
    dxDuyetCOQUAN_THUE_QUANLY: TdxCheckEdit;
    dxLayoutControl1Item90: TdxLayoutItem;
    dxDuyetMASO_THUE_CANHAN: TdxCheckEdit;
    dxLayoutControl1Item91: TdxLayoutItem;
    dxDuyetACCOUNT_BANK: TdxCheckEdit;
    dxLayoutControl1Item92: TdxLayoutItem;
    dxDuyetACCOUNT_ID: TdxCheckEdit;
    dxLayoutControl1Item93: TdxLayoutItem;
    dxDuyetCURRENCY_NAME: TdxCheckEdit;
    dxLayoutControl1Item94: TdxLayoutItem;
    dxDuyetCONTACT_ADDR: TdxCheckEdit;
    dxLayoutControl1Item95: TdxLayoutItem;
    dxDuyetEMAIL: TdxCheckEdit;
    dxLayoutControl1Group29: TdxLayoutGroup;
    qryDuLieuWebEMPLOYEE_NO: TWideStringField;
    qryDuLieuWebLAST_NAME: TWideStringField;
    qryDuLieuWebMIDDLE_NAME: TWideStringField;
    qryDuLieuWebFIRST_NAME: TWideStringField;
    qryDuLieuWebGENDER: TSmallintField;
    qryDuLieuWebBIRTH_DATE: TDateField;
    qryDuLieuWebMARRIAL_STATUS: TWideStringField;
    qryDuLieuWebSTATUS_NAME: TWideStringField;
    qryDuLieuWebID_CARD_NO: TWideStringField;
    qryDuLieuWebISSUED_DATE: TDateField;
    qryDuLieuWebISSUED_PLACE: TWideStringField;
    qryDuLieuWebRACE_NO: TWideStringField;
    qryDuLieuWebRACE_NAME: TWideStringField;
    qryDuLieuWebCURRENCY_NO: TWideStringField;
    qryDuLieuWebCURRENCY_NAME: TWideStringField;
    qryDuLieuWebNATIONAL_NO: TWideStringField;
    qryDuLieuWebNATION_NAME: TWideStringField;
    qryDuLieuWebRELIGION_NO: TWideStringField;
    qryDuLieuWebRELIGION_NAME: TWideStringField;
    qryDuLieuWebBIRTH_PLACE_ID: TWideStringField;
    qryDuLieuWebNATIVE_PLACE_ID: TWideStringField;
    qryDuLieuWebCONTACT_ADDR: TWideStringField;
    qryDuLieuWebPROVISION_ADDR: TWideStringField;
    qryDuLieuWebRESIDENT_ADDR: TWideStringField;
    qryDuLieuWebCONTACT_PHONE: TWideStringField;
    qryDuLieuWebHAND_PHONE: TWideStringField;
    qryDuLieuWebEMAIL: TWideStringField;
    qryDuLieuWebFAX: TWideStringField;
    qryDuLieuWebWEBSITE: TWideStringField;
    qryDuLieuWebEMPLOYEE_ID: TWideStringField;
    qryDuLieuWebDESCENT_FROM: TWideStringField;
    qryDuLieuWebDESCENT_NAME: TWideStringField;
    qryDuLieuWebACCOUNT_ID: TWideStringField;
    qryDuLieuWebACCOUNT_BANK: TWideStringField;
    qryDuLieuWebREGISTERED_NAME: TWideStringField;
    qryDuLieuWebALIAS: TWideStringField;
    qryDuLieuWebPASSPORT: TWideStringField;
    qryDuLieuWebPASSPORT_DATE: TDateField;
    qryDuLieuWebPASSPORT_PLACE: TWideStringField;
    qryDuLieuWebPASSPORT_EXPIRED: TDateField;
    qryDuLieuWebMASO_THUE_CANHAN: TWideStringField;
    qryDuLieuWebCOQUAN_THUE_QUANLY: TWideStringField;
    ActionList1: TActionList;
    acCapNhat: TAction;
    qryThongTinThem_Nhansu: TIBOQuery;
    dsThongTinThem_Nhansu: TDataSource;
    qryThongTinThem_NhansuEMPLOYEE_NO: TWideStringField;
    qryThongTinThem_NhansuCHIEU_CAO: TIBOFloatField;
    qryThongTinThem_NhansuCAN_NANG: TIBOFloatField;
    qryThongTinThem_NhansuDAUVET_DACBIET: TWideStringField;
    qryThongTinThem_NhansuNGAY_VAO_DANG: TDateField;
    qryThongTinThem_NhansuCHUC_VU_DANG: TWideStringField;
    qryThongTinThem_NhansuTEN_CHUCVU_DANG: TWideStringField;
    qryThongTinThem_NhansuNGAY_VAO_DOAN: TDateField;
    qryThongTinThem_NhansuCHUC_VU_DOAN: TWideStringField;
    qryThongTinThem_NhansuTEN_CHUCVU_DOAN: TWideStringField;
    qryThongTinThem_NhansuNGAY_VAO_CDOAN: TDateField;
    qryThongTinThem_NhansuCHUC_VU_CDOAN: TWideStringField;
    qryThongTinThem_NhansuTEN_CHUCVU_CDOAN: TWideStringField;
    qryThongTinThem_NhansuNGAY_VAO_CONGTY: TDateField;
    qryThongTinThem_NhansuTRINH_DO: TWideStringField;
    qryThongTinThem_NhansuEDU_LEVEL_NAME: TWideStringField;
    qryThongTinThem_NhansuTRINHDO_VANHOA: TWideStringField;
    qryThongTinThem_NhansuACADEMIC_NAME: TWideStringField;
    qryThongTinThem_NhansuSOTRUONG_CTAC: TWideStringField;
    qryThongTinThem_NhansuNGHE_NGHIEP: TWideStringField;
    qryThongTinThem_NhansuCAREER_NAME: TWideStringField;
    qryThongTinThem_NhansuNAM_TOTNGHIEP: TIntegerField;
    qryThongTinThem_NhansuCONGVIEC_LAUNHAT: TWideStringField;
    qryThongTinThem_web: TIBOQuery;
    dsThongTinThem_Web: TDataSource;
    qryThongTinThem_webEMPLOYEE_NO: TWideStringField;
    qryThongTinThem_webCHIEU_CAO: TIBOFloatField;
    qryThongTinThem_webCAN_NANG: TIBOFloatField;
    qryThongTinThem_webDAUVET_DACBIET: TWideStringField;
    qryThongTinThem_webNGAY_VAO_DANG: TDateField;
    qryThongTinThem_webCHUC_VU_DANG: TWideStringField;
    qryThongTinThem_webTEN_CHUCVU_DANG: TWideStringField;
    qryThongTinThem_webNGAY_VAO_DOAN: TDateField;
    qryThongTinThem_webCHUC_VU_DOAN: TWideStringField;
    qryThongTinThem_webTEN_CHUCVU_DOAN: TWideStringField;
    qryThongTinThem_webNGAY_VAO_CDOAN: TDateField;
    qryThongTinThem_webCHUC_VU_CDOAN: TWideStringField;
    qryThongTinThem_webTEN_CHUCVU_CDOAN: TWideStringField;
    qryThongTinThem_webNGAY_VAO_CONGTY: TDateField;
    qryThongTinThem_webTRINHDO_HOCVAN: TWideStringField;
    qryThongTinThem_webEDU_LEVEL_NAME: TWideStringField;
    qryThongTinThem_webTRINHDO_VANHOA: TWideStringField;
    qryThongTinThem_webACADEMIC_NAME: TWideStringField;
    qryThongTinThem_webSOTRUONG_CTAC: TWideStringField;
    qryThongTinThem_webNGHE_NGHIEP: TWideStringField;
    qryThongTinThem_webCAREER_NAME: TWideStringField;
    qryThongTinThem_webNAM_TOTNGHIEP: TIntegerField;
    qryThongTinThem_webCONGVIEC_LAUNHAT: TWideStringField;
    dxCHIEU_CAO_HR: TdxDBCalcEdit;
    dxCAN_NANG_HR: TdxDBCalcEdit;
    dxDAUVET_DACBIET_HR: TdxDBEdit;
    dxLayoutControl1Group30: TdxLayoutGroup;
    dxLayoutControl1Item96: TdxLayoutItem;
    dxLayoutControl1Item97: TdxLayoutItem;
    dxLayoutControl1Item98: TdxLayoutItem;
    dxLayoutControl1Item99: TdxLayoutItem;
    dxNGAY_VAO_DANG_HR: TdxDBDateEdit;
    dxLayoutControl1Item101: TdxLayoutItem;
    dxNGAY_VAO_DOAN_HR: TdxDBDateEdit;
    dxLayoutControl1Item103: TdxLayoutItem;
    dxNGAY_VAO_CDOAN_HR: TdxDBDateEdit;
    dxLayoutControl1Group31: TdxLayoutGroup;
    dxLayoutControl1Group32: TdxLayoutGroup;
    dxLayoutControl1Group33: TdxLayoutGroup;
    dxLayoutControl1Item100: TdxLayoutItem;
    dxTEN_CHUCVU_DANG_HR: TdxDBEdit;
    dxLayoutControl1Item102: TdxLayoutItem;
    dxTEN_CHUCVU_DOAN_HR: TdxDBEdit;
    dxLayoutControl1Item104: TdxLayoutItem;
    dxTEN_CHUCVU_CDOAN_HR: TdxDBEdit;
    dxNGAY_VAO_CONGTY_HR: TdxDBDateEdit;
    dxACADEMIC_NAME_HR: TdxDBEdit;
    dxLayoutControl1Group34: TdxLayoutGroup;
    dxLayoutControl1Item105: TdxLayoutItem;
    dxLayoutControl1Item106: TdxLayoutItem;
    dxLayoutControl1Item108: TdxLayoutItem;
    dxEDU_LEVEL_NAME_HR: TdxDBEdit;
    dxCAREER_NAME_HR: TdxDBEdit;
    dxSOTRUONG_CTAC_HR: TdxDBEdit;
    dxLayoutControl1Group35: TdxLayoutGroup;
    dxLayoutControl1Item107: TdxLayoutItem;
    dxLayoutControl1Item109: TdxLayoutItem;
    dxNAM_TOTNGHIEP_HR: TdxDBCalcEdit;
    dxCONGVIEC_LAUNHAT_HR: TdxDBEdit;
    dxLayoutControl1Group36: TdxLayoutGroup;
    dxLayoutControl1Item110: TdxLayoutItem;
    dxLayoutControl1Item111: TdxLayoutItem;
    dxCAN_NANG_WEB: TdxDBCalcEdit;
    dxDAUVET_DACBIET_WEB: TdxDBEdit;
    dxCHIEU_CAO_WEB: TdxDBCalcEdit;
    dxLayoutControl1Group37: TdxLayoutGroup;
    dxLayoutControl1Item112: TdxLayoutItem;
    dxLayoutControl1Item113: TdxLayoutItem;
    dxLayoutControl1Item114: TdxLayoutItem;
    dxNGAY_VAO_DANG_WEB: TdxDBDateEdit;
    dxTEN_CHUCVU_DANG_WEB: TdxDBEdit;
    dxNGAY_VAO_DOAN_WEB: TdxDBDateEdit;
    dxTEN_CHUCVU_DOAN_WEB: TdxDBEdit;
    dxNGAY_VAO_CDOAN_WEB: TdxDBDateEdit;
    dxTEN_CHUCVU_CDOAN_WEB: TdxDBEdit;
    dxLayoutControl1Group38: TdxLayoutGroup;
    dxLayoutControl1Item115: TdxLayoutItem;
    dxLayoutControl1Item116: TdxLayoutItem;
    dxLayoutControl1Group39: TdxLayoutGroup;
    dxLayoutControl1Item117: TdxLayoutItem;
    dxLayoutControl1Item118: TdxLayoutItem;
    dxLayoutControl1Group40: TdxLayoutGroup;
    dxLayoutControl1Item119: TdxLayoutItem;
    dxLayoutControl1Item120: TdxLayoutItem;
    dxCAREER_NAME_WEB: TdxDBEdit;
    dxSOTRUONG_CTAC_WEB: TdxDBEdit;
    dxNAM_TOTNGHIEP_WEB: TdxDBCalcEdit;
    dxCONGVIEC_LAUNHAT_WEB: TdxDBEdit;
    dxLayoutControl1Group41: TdxLayoutGroup;
    dxLayoutControl1Group42: TdxLayoutGroup;
    dxLayoutControl1Item121: TdxLayoutItem;
    dxLayoutControl1Item122: TdxLayoutItem;
    dxLayoutControl1Item123: TdxLayoutItem;
    dxLayoutControl1Item124: TdxLayoutItem;
    dxNGAY_VAO_CONGTY_WEB: TdxDBDateEdit;
    dxACADEMIC_NAME_WEB: TdxDBEdit;
    dxEDU_LEVEL_NAME_WEB: TdxDBEdit;
    dxLayoutControl1Group43: TdxLayoutGroup;
    dxLayoutControl1Item125: TdxLayoutItem;
    dxLayoutControl1Item126: TdxLayoutItem;
    dxLayoutControl1Item127: TdxLayoutItem;
    dxLayoutControl1Item128: TdxLayoutItem;
    dxDuyetCanNang: TdxCheckEdit;
    dxLayoutControl1Item129: TdxLayoutItem;
    dxDuyetDauVetDacBiet: TdxCheckEdit;
    dxLayoutControl1Item130: TdxLayoutItem;
    dxDuyetChieuCao: TdxCheckEdit;
    dxLayoutControl1Item131: TdxLayoutItem;
    dxDuyetNgayVaoDang: TdxCheckEdit;
    dxLayoutControl1Item132: TdxLayoutItem;
    dxDuyetChucVuDang: TdxCheckEdit;
    dxLayoutControl1Item133: TdxLayoutItem;
    dxDuyetChucVuDoan: TdxCheckEdit;
    dxLayoutControl1Item134: TdxLayoutItem;
    dxDuyetNgayVaoDoan: TdxCheckEdit;
    dxLayoutControl1Item135: TdxLayoutItem;
    dxDuyetChucVuCDoan: TdxCheckEdit;
    dxLayoutControl1Item136: TdxLayoutItem;
    dxDuyetNgayVaoCDoan: TdxCheckEdit;
    dxLayoutControl1Item137: TdxLayoutItem;
    dxDuyetNgayVaoCty: TdxCheckEdit;
    dxLayoutControl1Item138: TdxLayoutItem;
    dxDuyetTDVanHoa: TdxCheckEdit;
    dxLayoutControl1Item139: TdxLayoutItem;
    dxDuyetTDHocVan: TdxCheckEdit;
    dxLayoutControl1Item140: TdxLayoutItem;
    dxDuyetNgheNghiep: TdxCheckEdit;
    dxLayoutControl1Item141: TdxLayoutItem;
    dxDuyetSoTruongCTac: TdxCheckEdit;
    dxLayoutControl1Item142: TdxLayoutItem;
    dxDuyetCVLauNhat: TdxCheckEdit;
    dxLayoutControl1Item143: TdxLayoutItem;
    dxDuyetNamTotNghiep: TdxCheckEdit;
    qryCauHinhCHIEU_CAO: TSmallintField;
    qryCauHinhCAN_NANG: TSmallintField;
    qryCauHinhDAUVET_DACBIET: TSmallintField;
    qryCauHinhNGAY_VAO_DANG: TSmallintField;
    qryCauHinhCHUC_VU_DANG: TSmallintField;
    qryCauHinhNGAY_VAO_DOAN: TSmallintField;
    qryCauHinhCHUC_VU_DOAN: TSmallintField;
    qryCauHinhNGAY_VAO_CDOAN: TSmallintField;
    qryCauHinhCHUC_VU_CDOAN: TSmallintField;
    qryCauHinhNGAY_VAO_CONGTY: TSmallintField;
    qryCauHinhTRINHDO_HOCVAN: TSmallintField;
    qryCauHinhTRINHDO_VANHOA: TSmallintField;
    qryCauHinhSOTRUONG_CTAC: TSmallintField;
    qryCauHinhNGHE_NGHIEP: TSmallintField;
    qryCauHinhNAM_TOTNGHIEP: TSmallintField;
    qryCauHinhCONGVIEC_LAUNHAT: TSmallintField;
    dxKyNang: TdxDBGrid;
    qryTrinhDoKyNang: TIBOQuery;
    dsTrinhDoKyNang: TDataSource;
    qryTrinhDoKyNangEMPLOYEE_NO: TWideStringField;
    qryTrinhDoKyNangSKILL_NO: TWideStringField;
    qryTrinhDoKyNangSKILL_NAME: TWideStringField;
    qryTrinhDoKyNangLEVEL_NO: TWideStringField;
    qryTrinhDoKyNangLEVEL_NAME: TWideStringField;
    qryTrinhDoKyNangISSUED_DATE: TDateField;
    qryTrinhDoKyNangISSUED_PLACE: TWideStringField;
    qryTrinhDoKyNangARCHIVEMENT: TWideStringField;
    qryTrinhDoKyNangNOTE: TWideStringField;
    qryTrinhDoKyNangDUYET: TSmallintField;
    dxKyNangEMPLOYEE_NO: TdxDBGridColumn;
    dxKyNangSKILL_NO: TdxDBGridColumn;
    dxKyNangSKILL_NAME: TdxDBGridColumn;
    dxKyNangLEVEL_NO: TdxDBGridColumn;
    dxKyNangLEVEL_NAME: TdxDBGridColumn;
    dxKyNangISSUED_DATE: TdxDBGridDateColumn;
    dxKyNangISSUED_PLACE: TdxDBGridColumn;
    dxKyNangARCHIVEMENT: TdxDBGridColumn;
    dxKyNangNOTE: TdxDBGridColumn;
    dxKyNangDUYET: TdxDBGridCheckColumn;
    gridNgoaiNgu: TdxDBGrid;
    gridChuyenMonKhac: TdxDBGrid;
    qryTrinhDoKyNangKEY_FIELD: TWideStringField;
    qryTrinhDoNgoaiNgu: TIBOQuery;
    dsTrinhDoNgoaiNgu: TDataSource;
    qryTrinhDoNgoaiNguEMPLOYEE_NO: TWideStringField;
    qryTrinhDoNgoaiNguLANGUAGE_NO: TWideStringField;
    qryTrinhDoNgoaiNguLANGUAGE_NAME: TWideStringField;
    qryTrinhDoNgoaiNguLEVEL_NO: TWideStringField;
    qryTrinhDoNgoaiNguLEVEL_NAME: TWideStringField;
    qryTrinhDoNgoaiNguISSUED_DATE: TDateField;
    qryTrinhDoNgoaiNguISSUED_PLACE: TWideStringField;
    qryTrinhDoNgoaiNguARCHIVEMENT: TWideStringField;
    qryTrinhDoNgoaiNguNOTE: TWideStringField;
    qryTrinhDoNgoaiNguDUYET: TSmallintField;
    qryTrinhDoNgoaiNguKEY_FIELD: TWideStringField;
    gridNgoaiNguEMPLOYEE_NO: TdxDBGridColumn;
    gridNgoaiNguLANGUAGE_NO: TdxDBGridColumn;
    gridNgoaiNguLANGUAGE_NAME: TdxDBGridColumn;
    gridNgoaiNguLEVEL_NO: TdxDBGridColumn;
    gridNgoaiNguLEVEL_NAME: TdxDBGridColumn;
    gridNgoaiNguISSUED_DATE: TdxDBGridDateColumn;
    gridNgoaiNguISSUED_PLACE: TdxDBGridColumn;
    gridNgoaiNguARCHIVEMENT: TdxDBGridColumn;
    gridNgoaiNguNOTE: TdxDBGridColumn;
    qryChuyenMonKhac: TIBOQuery;
    dsChuyenMonKhac: TDataSource;
    qryChuyenMonKhacEMPLOYEE_NO: TWideStringField;
    qryChuyenMonKhacEDU_FIELD_NO: TWideStringField;
    qryChuyenMonKhacEDU_FIELD_NAME: TWideStringField;
    qryChuyenMonKhacEDU_LEVEL_NO: TWideStringField;
    qryChuyenMonKhacFIELD_LEVEL_NAME: TWideStringField;
    qryChuyenMonKhacISSUED_DATE: TDateField;
    qryChuyenMonKhacISSUED_PLACE: TWideStringField;
    qryChuyenMonKhacEDU_ARCHIVEMENT: TWideStringField;
    qryChuyenMonKhacEMP_EDU_NOTE: TWideStringField;
    qryChuyenMonKhacDUYET: TSmallintField;
    qryChuyenMonKhacKEY_FIELD: TWideStringField;
    gridNgoaiNguDUYET: TdxDBGridCheckColumn;
    gridChuyenMonKhacEMPLOYEE_NO: TdxDBGridColumn;
    gridChuyenMonKhacEDU_FIELD_NO: TdxDBGridColumn;
    gridChuyenMonKhacEDU_FIELD_NAME: TdxDBGridColumn;
    gridChuyenMonKhacEDU_LEVEL_NO: TdxDBGridColumn;
    gridChuyenMonKhacFIELD_LEVEL_NAME: TdxDBGridColumn;
    gridChuyenMonKhacISSUED_DATE: TdxDBGridDateColumn;
    gridChuyenMonKhacISSUED_PLACE: TdxDBGridColumn;
    gridChuyenMonKhacEDU_ARCHIVEMENT: TdxDBGridColumn;
    gridChuyenMonKhacEMP_EDU_NOTE: TdxDBGridColumn;
    gridChuyenMonKhacKEY_FIELD: TdxDBGridColumn;
    gridChuyenMonKhacDUYET: TdxDBGridCheckColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CauHinhChinhSua;
    procedure gridDSNVHieuChinhChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure acCapNhatExecute(Sender: TObject);
    procedure qryDuLieuWebBeforePost(DataSet: TDataSet);
    procedure qryThongTinThem_webBeforePost(DataSet: TDataSet);
    procedure acCapNhatUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapNhatThongTinNV: TfrmCapNhatThongTinNV;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmCapNhatThongTinNV.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if qryTrinhDoKyNang.State in [dsEdit] then qryTrinhDoKyNang.Post;
  if qryTrinhDoNgoaiNgu.State in [dsEdit] then qryTrinhDoNgoaiNgu.Post;
  if qryChuyenMonKhac.State in [dsEdit] then qryChuyenMonKhac.Post;

  qryDSNVHieuChinh.Close;
  qryDuLieuNhanSu.Close;
  qryDuLieuWeb.Close;
  qryThongTinThem_Nhansu.Close;
  qryThongTinThem_web.Close;
  qryCauHinh.Close;
  qryTrinhDoKyNang.Close;
  qryTrinhDoNgoaiNgu.Close;
  qryChuyenMonKhac.Close;
  if (FormStyle = fsMDIChild) then
  begin
    Action := caFree;
    frmCapNhatThongTinNV := nil;
  end;
end;

procedure TfrmCapNhatThongTinNV.FormCreate(Sender: TObject);
begin
  dbimGENDER.Descriptions.Add(Utf8Decode('Nữ'));
  dbimGENDER.Descriptions.Add(Utf8Decode('Nam'));
  dbimGENDER.Values.Add('0');
  dbimGENDER.Values.Add('1');
  dbimGENDER.ImageIndexes.Add('0');
  dbimGENDER.ImageIndexes.Add('1');

  dbimGENDER_WEB.Descriptions.Add(Utf8Decode('Nữ'));
  dbimGENDER_WEB.Descriptions.Add(Utf8Decode('Nam'));
  dbimGENDER_WEB.Values.Add('0');
  dbimGENDER_WEB.Values.Add('1');
  dbimGENDER_WEB.ImageIndexes.Add('0');
  dbimGENDER_WEB.ImageIndexes.Add('1');
  inherited;
  qryDSNVHieuChinh.Open;
  qryDuLieuNhanSu.Open;
  qryDuLieuWeb.Open;
  qryThongTinThem_Nhansu.Open;
  qryThongTinThem_web.Open;
  qryCauHinh.open;
  qryTrinhDoKyNang.Open;
  qryTrinhDoNgoaiNgu.Open;
  qryChuyenMonKhac.Open;

  CauHinhChinhSua;

end;

procedure TfrmCapNhatThongTinNV.CauHinhChinhSua;
begin
  //Chi duyet cac field duoc cau hinh cho chinh sua va co gia tri ben Web khac null
  //Thong tin chung
  dxDuyetLastName.ReadOnly := not (qryCauHinhLAST_NAME.Value=1);
  dxDuyetLastName.Checked := (qryCauHinhLAST_NAME.Value=1) and (not qryDuLieuWebLAST_NAME.IsNull) and (qryDuLieuWebLAST_NAME.Value <> qryDuLieuNhanSuLAST_NAME.Value);
  dxLastName_WEB.ReadOnly := not (qryCauHinhLAST_NAME.Value=1);

  dxDuyetMiddleName.ReadOnly := not (qryCauHinhMIDDLE_NAME.Value=1);
  dxDuyetMiddleName.Checked := (qryCauHinhMIDDLE_NAME.Value=1) and (not qryDuLieuWebMIDDLE_NAME.IsNull) and (qryDuLieuWebMIDDLE_NAME.Value <> qryDuLieuNhanSuMIDDLE_NAME.Value);
  dxMiddleName_WEB.ReadOnly := not (qryCauHinhMIDDLE_NAME.Value=1);

  dxDuyetFirstName.ReadOnly := not (qryCauHinhFIRST_NAME.Value=1);
  dxDuyetFirstName.Checked := (qryCauHinhFIRST_NAME.Value=1) and (not qryDuLieuWebFIRST_NAME.IsNull) and (qryDuLieuWebFIRST_NAME.Value <> qryDuLieuNhanSuFIRST_NAME.Value);
  dxFirstName_WEB.ReadOnly := not (qryCauHinhFIRST_NAME.Value=1);

  dxDuyetRegisteredName.ReadOnly := not (qryCauHinhREGISTERED_NAME.Value=1);
  dxDuyetRegisteredName.Checked := (qryCauHinhREGISTERED_NAME.Value=1) and (not qryDuLieuWebREGISTERED_NAME.IsNull) and (qryDuLieuWebREGISTERED_NAME.Value <> qryDuLieuNhanSuREGISTERED_NAME.Value);
  dxRegisteredName_WEB.ReadOnly := not (qryCauHinhREGISTERED_NAME.Value=1);

  dxDuyetAlias.ReadOnly := not (qryCauHinhALIAS.Value=1);
  dxDuyetAlias.Checked := (qryCauHinhALIAS.Value=1) and (not qryDuLieuWebALIAS.IsNull) and (qryDuLieuWebALIAS.Value <> qryDuLieuNhanSuALIAS.Value);
  dxAlias_WEB.ReadOnly := not (qryCauHinhALIAS.Value=1);

  dxDuyetBirthDate.ReadOnly := not (qryCauHinhBIRTH_DATE.Value=1);
  dxDuyetBirthDate.Checked := (qryCauHinhBIRTH_DATE.Value=1) and (not qryDuLieuWebBIRTH_DATE.IsNull) and (qryDuLieuWebBIRTH_DATE.Value <> qryDuLieuNhanSuBIRTH_DATE.Value);
  dxBirthDate_WEB.ReadOnly := not (qryCauHinhBIRTH_DATE.Value=1);

  dxDuyetGender.ReadOnly := not (qryCauHinhGENDER.Value=1);
  dxDuyetGender.Checked := (qryCauHinhGENDER.Value=1) and (not qryDuLieuWebGENDER.IsNull) and (qryDuLieuWebGENDER.Value <> qryDuLieuNhanSuGENDER.Value);
  dbimGENDER_WEB.ReadOnly := not (qryCauHinhGENDER.Value=1);

  dxDuyetStatusName.ReadOnly := not (qryCauHinhMARRIAL_STATUS.Value=1);
  dxDuyetStatusName.Checked := (qryCauHinhMARRIAL_STATUS.Value=1) and (not qryDuLieuWebSTATUS_NAME.IsNull) and (qryDuLieuWebSTATUS_NAME.Value <> qryDuLieuNhanSuSTATUS_NAME.Value);
  dxStatusName_WEB.ReadOnly := not (qryCauHinhMARRIAL_STATUS.Value=1);

  dxDuyetIDCardNo.ReadOnly := not (qryCauHinhID_CARD_NO.Value=1);
  dxDuyetIDCardNo.Checked := (qryCauHinhID_CARD_NO.Value=1) and (not qryDuLieuWebID_CARD_NO.IsNull) and (qryDuLieuWebID_CARD_NO.Value <> qryDuLieuNhanSuID_CARD_NO.Value);
  dxIDCardNo_WEB.ReadOnly := not (qryCauHinhID_CARD_NO.Value=1);

  dxDuyetIssuedDate.ReadOnly := not (qryCauHinhISSUED_DATE.Value=1);
  dxDuyetIssuedDate.Checked := (qryCauHinhISSUED_DATE.Value=1) and (not qryDuLieuWebISSUED_DATE.IsNull) and (qryDuLieuWebISSUED_DATE.Value <> qryDuLieuNhanSuISSUED_DATE.Value);
  dxIssuedDate_WEB.ReadOnly := not (qryCauHinhISSUED_DATE.Value=1);

  dxDuyetIssuedPlace.ReadOnly := not (qryCauHinhISSUED_PLACE.Value=1);
  dxDuyetIssuedPlace.Checked := (qryCauHinhISSUED_PLACE.Value=1) and (not qryDuLieuWebISSUED_PLACE.IsNull) and (qryDuLieuWebISSUED_PLACE.Value <> qryDuLieuNhanSuISSUED_PLACE.Value);
  dxIssuedPlace_WEB.ReadOnly := not (qryCauHinhISSUED_PLACE.Value=1);

  dxDuyetPassport.ReadOnly := not (qryCauHinhPASSPORT.Value=1);
  dxDuyetPassport.Checked := (qryCauHinhPASSPORT.Value=1) and (not qryDuLieuWebPASSPORT.IsNull) and (qryDuLieuWebPASSPORT.Value <> qryDuLieuNhanSuPASSPORT.Value);
  dxPassport_WEB.ReadOnly := not (qryCauHinhPASSPORT.Value=1);

  dxDuyetPassportDate.ReadOnly := not (qryCauHinhPASSPORT_DATE.Value=1);
  dxDuyetPassportDate.Checked := (qryCauHinhPASSPORT_PLACE.Value=1) and (not qryDuLieuWebPASSPORT_DATE.IsNull) and (qryDuLieuWebPASSPORT_DATE.Value <> qryDuLieuNhanSuPASSPORT_DATE.Value);
  dxPassportDate_WEB.ReadOnly := not (qryCauHinhPASSPORT_DATE.Value=1);

  dxDuyetPassportPlace.ReadOnly := not (qryCauHinhPASSPORT_PLACE.Value=1);
  dxDuyetPassportPlace.Checked := (qryCauHinhPASSPORT_PLACE.Value=1) and (not qryDuLieuWebPASSPORT_PLACE.IsNull) and (qryDuLieuWebPASSPORT_PLACE.Value <> qryDuLieuNhanSuPASSPORT_PLACE.Value);
  dxPassportPlace_WEB.ReadOnly := not (qryCauHinhPASSPORT_PLACE.Value=1);

  dxDuyetNATION_NAME.ReadOnly := not (qryCauHinhNATIONAL_NO.Value=1);
  dxDuyetNATION_NAME.Checked := (qryCauHinhNATIONAL_NO.Value=1) and (not qryDuLieuWebNATION_NAME.IsNull) and (qryDuLieuWebNATION_NAME.Value <> qryDuLieuNhanSuNATION_NAME.Value);
  dxNationName_WEB.ReadOnly := not (qryCauHinhNATIONAL_NO.Value=1);

  dxDuyetBIRTH_PLACE_ID.ReadOnly := not (qryCauHinhBIRTH_PLACE_ID.Value=1);
  dxDuyetBIRTH_PLACE_ID.Checked := (qryCauHinhBIRTH_PLACE_ID.Value=1) and (not qryDuLieuWebBIRTH_PLACE_ID.IsNull) and (qryDuLieuWebBIRTH_PLACE_ID.Value <> qryDuLieuNhanSuBIRTH_PLACE_ID.Value);
  dxBIRTH_PLACE_ID_WEB.ReadOnly := not (qryCauHinhBIRTH_PLACE_ID.Value=1);

  dxDuyetRaceName.ReadOnly := not (qryCauHinhRACE_NO.Value=1);
  dxDuyetRaceName.Checked := (qryCauHinhRACE_NO.Value=1) and (not qryDuLieuWebRACE_NAME.IsNull) and (qryDuLieuWebRACE_NAME.Value <> qryDuLieuNhanSuRACE_NAME.Value);
  dxRACE_NAME_WEB.ReadOnly := not (qryCauHinhRACE_NO.Value=1);

  dxDuyetNATIVE_PLACE_ID.ReadOnly := not (qryCauHinhNATIVE_PLACE_ID.Value=1);
  dxDuyetNATIVE_PLACE_ID.Checked := (qryCauHinhNATIVE_PLACE_ID.Value=1) and (not qryDuLieuWebNATIVE_PLACE_ID.IsNull) and (qryDuLieuWebNATIVE_PLACE_ID.Value <> qryDuLieuNhanSuNATIVE_PLACE_ID.Value);
  dxNATIVE_PLACE_ID_WEB.ReadOnly := not (qryCauHinhNATIVE_PLACE_ID.Value=1);

  dxDuyetRELIGION_NAME.ReadOnly := not (qryCauHinhRELIGION_NO.Value=1);
  dxDuyetRELIGION_NAME.Checked := (qryCauHinhRELIGION_NO.Value=1) and (not qryDuLieuWebRELIGION_NAME.IsNull) and (qryDuLieuWebRELIGION_NAME.Value <> qryDuLieuNhanSuRELIGION_NAME.Value);
  dxRELIGION_NAME_WEB.ReadOnly := not (qryCauHinhRELIGION_NO.Value=1);

  dxDuyetDESCENT_NAME.ReadOnly := not (qryCauHinhDESCENT_FROM.Value=1);
  dxDuyetDESCENT_NAME.Checked := (qryCauHinhDESCENT_FROM.Value=1) and (not qryDuLieuWebDESCENT_NAME.IsNull) and (qryDuLieuWebDESCENT_NAME.Value <> qryDuLieuNhanSuDESCENT_NAME.Value);
  dxDESCENT_NAME_WEB.ReadOnly := not (qryCauHinhDESCENT_FROM.Value=1);

  dxDuyetCONTACT_PHONE.ReadOnly := not (qryCauHinhCONTACT_PHONE.Value=1);
  dxDuyetCONTACT_PHONE.Checked := (qryCauHinhCONTACT_PHONE.Value=1) and (not qryDuLieuWebCONTACT_PHONE.IsNull) and (qryDuLieuWebCONTACT_PHONE.Value <> qryDuLieuNhanSuCONTACT_PHONE.Value);
  dxCONTACT_PHONE_WEB.ReadOnly := not (qryCauHinhCONTACT_PHONE.Value=1);

  dxDuyetRESIDENT_ADDR.ReadOnly := not (qryCauHinhRESIDENT_ADDR.Value=1);
  dxDuyetRESIDENT_ADDR.Checked := (qryCauHinhRESIDENT_ADDR.Value=1 ) and (not qryDuLieuWebRESIDENT_ADDR.IsNull) and (qryDuLieuWebRESIDENT_ADDR.Value <> qryDuLieuNhanSuRESIDENT_ADDR.Value);
  dxRESIDENT_ADDR_WEB.ReadOnly := not (qryCauHinhRESIDENT_ADDR.Value=1);

  dxDuyetHAND_PHONE.ReadOnly := not (qryCauHinhHAND_PHONE.Value=1);
  dxDuyetHAND_PHONE.Checked := (qryCauHinhHAND_PHONE.Value=1) and (not qryDuLieuWebHAND_PHONE.IsNull) and (qryDuLieuWebHAND_PHONE.Value <> qryDuLieuNhanSuHAND_PHONE.Value);
  dxHAND_PHONE_WEB.ReadOnly := not (qryCauHinhHAND_PHONE.Value=1);

  dxDuyetPROVISION_ADDR.ReadOnly := not (qryCauHinhPROVISION_ADDR.Value=1);
  dxDuyetPROVISION_ADDR.Checked := (qryCauHinhPROVISION_ADDR.Value=1) and (not qryDuLieuWebPROVISION_ADDR.IsNull) and (qryDuLieuWebPROVISION_ADDR.Value <> qryDuLieuNhanSuPROVISION_ADDR.Value);
  dxPROVISION_ADDR_WEB.ReadOnly := not (qryCauHinhPROVISION_ADDR.Value=1);

  dxDuyetEMAIL.ReadOnly := not (qryCauHinhEMAIL.Value=1);
  dxDuyetEMAIL.Checked := (qryCauHinhEMAIL.Value=1) and (not qryDuLieuWebEMAIL.IsNull) and (qryDuLieuWebEMAIL.Value <> qryDuLieuNhanSuEMAIL.Value);
  dxEMAIL_WEB.ReadOnly := not (qryCauHinhEMAIL.Value=1);

  dxDuyetCONTACT_ADDR.ReadOnly := not (qryCauHinhCONTACT_ADDR.Value=1);
  dxDuyetCONTACT_ADDR.Checked := (qryCauHinhCONTACT_ADDR.Value=1) and (not qryDuLieuWebCONTACT_ADDR.IsNull) and (qryDuLieuWebCONTACT_ADDR.Value <> qryDuLieuNhanSuCONTACT_ADDR.Value);
  dxCONTACT_ADDR_WEB.ReadOnly := not (qryCauHinhCONTACT_ADDR.Value=1);

  dxDuyetCURRENCY_NAME.ReadOnly := not (qryCauHinhCURRENCY_NO.Value=1);
  dxDuyetCURRENCY_NAME.Checked := (qryCauHinhCURRENCY_NO.Value=1) and (not qryDuLieuWebCURRENCY_NAME.IsNull) and (qryDuLieuWebCURRENCY_NAME.Value <> qryDuLieuNhanSuCURRENCY_NAME.Value);
  dxCURRENCY_NAME_WEB.ReadOnly := not (qryCauHinhCURRENCY_NO.Value=1);

  dxDuyetACCOUNT_ID.ReadOnly := not (qryCauHinhACCOUNT_ID.Value=1);
  dxDuyetACCOUNT_ID.Checked := (qryCauHinhACCOUNT_ID.Value=1) and (not qryDuLieuWebACCOUNT_ID.IsNull) and (qryDuLieuWebACCOUNT_ID.Value <> qryDuLieuNhanSuACCOUNT_ID.Value);
  dxACCOUNT_ID_WEB.ReadOnly := not (qryCauHinhACCOUNT_ID.Value=1);

  dxDuyetACCOUNT_BANK.ReadOnly := not (qryCauHinhACCOUNT_BANK.Value=1);
  dxDuyetACCOUNT_BANK.Checked := (qryCauHinhACCOUNT_BANK.Value=1) and (not qryDuLieuWebACCOUNT_BANK.IsNull) and (qryDuLieuWebACCOUNT_BANK.Value <> qryDuLieuNhanSuACCOUNT_BANK.Value);
  dxACCOUNT_BANK_WEB.ReadOnly := not (qryCauHinhACCOUNT_BANK.Value=1);

  dxDuyetMASO_THUE_CANHAN.ReadOnly := not (qryCauHinhMASO_THUE_CANHAN.Value=1);
  dxDuyetMASO_THUE_CANHAN.Checked := (qryCauHinhMASO_THUE_CANHAN.Value=1) and (not qryDuLieuWebMASO_THUE_CANHAN.IsNull) and (qryDuLieuWebMASO_THUE_CANHAN.Value <> qryDuLieuNhanSuMASO_THUE_CANHAN.Value);
  dxMASO_THUE_CANHAN_WEB.ReadOnly := not (qryCauHinhMASO_THUE_CANHAN.Value=1);

  dxDuyetCOQUAN_THUE_QUANLY.ReadOnly := not (qryCauHinhCOQUAN_THUE_QUANLY.Value=1);
  dxDuyetCOQUAN_THUE_QUANLY.Checked := (qryCauHinhCOQUAN_THUE_QUANLY.Value=1) and (not qryDuLieuWebCOQUAN_THUE_QUANLY.IsNull) and (qryDuLieuWebCOQUAN_THUE_QUANLY.Value <> qryDuLieuNhanSuCOQUAN_THUE_QUANLY.Value);
  dxCOQUAN_THUE_QUANLY_HR.ReadOnly := not (qryCauHinhCOQUAN_THUE_QUANLY.Value=1);


  //Trinh do nang luc
  dxDuyetCanNang.ReadOnly := not (qryCauHinhCAN_NANG.Value=1);
  dxDuyetCanNang.Checked := (qryCauHinhCAN_NANG.Value=1) and (not qryThongTinThem_webCAN_NANG.IsNull) and (qryThongTinThem_webCAN_NANG.Value <> qryThongTinThem_NhansuCAN_NANG.Value);
  dxCAN_NANG_WEB.ReadOnly := not (qryCauHinhCAN_NANG.Value=1);

  dxDuyetChieuCao.ReadOnly := not (qryCauHinhCHIEU_CAO.Value=1);
  dxDuyetChieuCao.Checked := (qryCauHinhCHIEU_CAO.Value=1) and (not qryThongTinThem_webCHIEU_CAO.IsNull) and (qryThongTinThem_webCHIEU_CAO.Value <> qryThongTinThem_NhansuCHIEU_CAO.Value);
  dxCHIEU_CAO_WEB.ReadOnly := not (qryCauHinhCHIEU_CAO.Value=1);

  dxDuyetDauVetDacBiet.ReadOnly := not (qryCauHinhDAUVET_DACBIET.Value=1);
  dxDuyetDauVetDacBiet.Checked := (qryCauHinhDAUVET_DACBIET.Value=1) and (not qryThongTinThem_webDAUVET_DACBIET.IsNull) and (qryThongTinThem_webDAUVET_DACBIET.Value <> qryThongTinThem_NhansuDAUVET_DACBIET.Value);
  dxDAUVET_DACBIET_WEB.ReadOnly := not (qryCauHinhDAUVET_DACBIET.Value=1);

  dxDuyetNgayVaoDang.ReadOnly := not (qryCauHinhNGAY_VAO_DANG.Value=1);
  dxDuyetNgayVaoDang.Checked := (qryCauHinhNGAY_VAO_DANG.Value=1) and (not qryThongTinThem_webNGAY_VAO_DANG.IsNull) and (qryThongTinThem_webNGAY_VAO_DANG.Value <> qryThongTinThem_NhansuNGAY_VAO_DANG.Value);
  dxNGAY_VAO_DANG_WEB.ReadOnly := not (qryCauHinhNGAY_VAO_DANG.Value=1);

  dxDuyetChucVuDang.ReadOnly := not (qryCauHinhCHUC_VU_DANG.Value=1);
  dxDuyetChucVuDang.Checked := (qryCauHinhCHUC_VU_DANG.Value=1) and (not qryThongTinThem_webTEN_CHUCVU_DANG.IsNull) and (qryThongTinThem_webTEN_CHUCVU_DANG.Value <> qryThongTinThem_NhansuTEN_CHUCVU_DANG.Value);
  dxTEN_CHUCVU_DANG_WEB.ReadOnly := not (qryCauHinhCHUC_VU_DANG.Value=1);

  dxDuyetNgayVaoDoan.ReadOnly := not (qryCauHinhNGAY_VAO_DANG.Value=1);
  dxDuyetNgayVaoDoan.Checked := (qryCauHinhNGAY_VAO_DOAN.Value=1) and (not qryThongTinThem_webNGAY_VAO_DOAN.IsNull) and (qryThongTinThem_webNGAY_VAO_DOAN.Value <> qryThongTinThem_NhansuNGAY_VAO_DOAN.Value);
  dxNGAY_VAO_DOAN_WEB.ReadOnly := not (qryCauHinhNGAY_VAO_DOAN.Value=1);

  dxDuyetChucVuDoan.ReadOnly := not (qryCauHinhCHUC_VU_DOAN.Value=1);
  dxDuyetChucVuDoan.Checked := (qryCauHinhCHUC_VU_DOAN.Value=1) and (not qryThongTinThem_webTEN_CHUCVU_DOAN.IsNull) and (qryThongTinThem_webTEN_CHUCVU_DOAN.Value <> qryThongTinThem_NhansuTEN_CHUCVU_DOAN.Value);
  dxTEN_CHUCVU_DOAN_WEB.ReadOnly := not (qryCauHinhCHUC_VU_DOAN.Value=1);

  dxDuyetNgayVaoCDoan.ReadOnly := not (qryCauHinhNGAY_VAO_CDOAN.Value=1);
  dxDuyetNgayVaoCDoan.Checked := (qryCauHinhNGAY_VAO_CDOAN.Value=1) and (not qryThongTinThem_webNGAY_VAO_CDOAN.IsNull) and (qryThongTinThem_webNGAY_VAO_CDOAN.Value <> qryThongTinThem_NhansuNGAY_VAO_CDOAN.Value);
  dxNGAY_VAO_CDOAN_WEB.ReadOnly := not (qryCauHinhNGAY_VAO_CDOAN.Value=1);

  dxDuyetChucVuCDoan.ReadOnly := not (qryCauHinhCHUC_VU_CDOAN.Value=1);
  dxDuyetChucVuCDoan.Checked := (qryCauHinhCHUC_VU_CDOAN.Value=1) and (not qryThongTinThem_webTEN_CHUCVU_CDOAN.IsNull) and (qryThongTinThem_webTEN_CHUCVU_CDOAN.Value <> qryThongTinThem_NhansuTEN_CHUCVU_CDOAN.Value);
  dxTEN_CHUCVU_CDOAN_WEB.ReadOnly := not (qryCauHinhCHUC_VU_CDOAN.Value=1);

  dxDuyetNgayVaoCty.ReadOnly := not (qryCauHinhNGAY_VAO_CONGTY.Value=1);
  dxDuyetNgayVaoCty.Checked := (qryCauHinhNGAY_VAO_CONGTY.Value=1) and (not qryThongTinThem_webNGAY_VAO_CONGTY.IsNull) and (qryThongTinThem_webNGAY_VAO_CONGTY.Value <> qryThongTinThem_NhansuNGAY_VAO_CONGTY.Value);
  dxNGAY_VAO_CONGTY_WEB.ReadOnly := not (qryCauHinhNGAY_VAO_CONGTY.Value=1);

  dxDuyetTDVanHoa.ReadOnly := not (qryCauHinhTRINHDO_VANHOA.Value=1);
  dxDuyetTDVanHoa.Checked := (qryCauHinhTRINHDO_VANHOA.Value=1) and (not qryThongTinThem_webACADEMIC_NAME.IsNull) and (qryThongTinThem_webACADEMIC_NAME.Value <> qryThongTinThem_NhansuACADEMIC_NAME.Value);
  dxACADEMIC_NAME_WEB.ReadOnly := not (qryCauHinhTRINHDO_VANHOA.Value=1);

  dxDuyetTDHocVan.ReadOnly := not (qryCauHinhTRINHDO_HOCVAN.Value=1);
  dxDuyetTDHocVan.Checked := (qryCauHinhTRINHDO_HOCVAN.Value=1) and (not qryThongTinThem_webEDU_LEVEL_NAME.IsNull) and (qryThongTinThem_webEDU_LEVEL_NAME.Value <> qryThongTinThem_NhansuEDU_LEVEL_NAME.Value);
  dxEDU_LEVEL_NAME_WEB.ReadOnly := not (qryCauHinhTRINHDO_HOCVAN.Value=1);

  dxDuyetNgheNghiep.ReadOnly := not (qryCauHinhNGHE_NGHIEP.Value=1);
  dxDuyetNgheNghiep.Checked := (qryCauHinhNGHE_NGHIEP.Value=1) and (not qryThongTinThem_webCAREER_NAME.IsNull) and (qryThongTinThem_webCAREER_NAME.Value <> qryThongTinThem_NhansuCAREER_NAME.Value);
  dxCAREER_NAME_WEB.ReadOnly := not (qryCauHinhNGHE_NGHIEP.Value=1);

  dxDuyetSoTruongCTac.ReadOnly := not (qryCauHinhSOTRUONG_CTAC.Value=1);
  dxDuyetSoTruongCTac.Checked := (qryCauHinhSOTRUONG_CTAC.Value=1) and (not qryThongTinThem_webSOTRUONG_CTAC.IsNull) and (qryThongTinThem_webSOTRUONG_CTAC.Value <> qryThongTinThem_NhansuSOTRUONG_CTAC.Value);
  dxSOTRUONG_CTAC_WEB.ReadOnly := not (qryCauHinhSOTRUONG_CTAC.Value=1);

  dxDuyetNamTotNghiep.ReadOnly := not (qryCauHinhNAM_TOTNGHIEP.Value=1);
  dxDuyetNamTotNghiep.Checked := (qryCauHinhNAM_TOTNGHIEP.Value=1) and (not qryThongTinThem_webNAM_TOTNGHIEP.IsNull) and (qryThongTinThem_webNAM_TOTNGHIEP.Value <> qryThongTinThem_NhansuNAM_TOTNGHIEP.Value);
  dxNAM_TOTNGHIEP_WEB.ReadOnly := not (qryCauHinhNAM_TOTNGHIEP.Value=1);

  dxDuyetCVLauNhat.ReadOnly := not (qryCauHinhCONGVIEC_LAUNHAT.Value=1);
  dxDuyetCVLauNhat.Checked := (qryCauHinhCONGVIEC_LAUNHAT.Value=1) and (not qryThongTinThem_webCONGVIEC_LAUNHAT.IsNull) and (qryThongTinThem_webCONGVIEC_LAUNHAT.Value <> qryThongTinThem_NhansuCONGVIEC_LAUNHAT.Value);
  dxCONGVIEC_LAUNHAT_WEB.ReadOnly := not (qryCauHinhCONGVIEC_LAUNHAT.Value=1);
end;

procedure TfrmCapNhatThongTinNV.gridDSNVHieuChinhChangeNode(
  Sender: TObject; OldNode, Node: TdxTreeListNode);
begin
  inherited;
  CauHinhChinhSua; 
end;

procedure TfrmCapNhatThongTinNV.acCapNhatExecute(Sender: TObject);
begin
  inherited;
  if not (qryDuLieuNhanSu.State in [dsEdit]) then
    qryDuLieuNhanSu.Edit;
  if dxDuyetLastName.Checked then
    qryDuLieuNhanSuLAST_NAME.Value := qryDuLieuWebLAST_NAME.Value;
  if dxDuyetMiddleName.Checked then
    qryDuLieuNhanSuMIDDLE_NAME.Value := qryDuLieuWebMIDDLE_NAME.Value;
  if dxDuyetFirstName.Checked then
    qryDuLieuNhanSuFIRST_NAME.Value := qryDuLieuWebFIRST_NAME.Value;
  if dxDuyetRegisteredName.Checked then
    qryDuLieuNhanSuREGISTERED_NAME.Value := qryDuLieuWebREGISTERED_NAME.Value;
  if dxDuyetAlias.Checked then
    qryDuLieuNhanSuALIAS.Value := qryDuLieuWebALIAS.Value;
  if dxDuyetBirthDate.Checked then
    qryDuLieuNhanSuBIRTH_DATE.Value := qryDuLieuWebBIRTH_DATE.Value;
  if dxDuyetGender.Checked then
    qryDuLieuNhanSuGENDER.Value := qryDuLieuWebGENDER.Value;
  if dxDuyetStatusName.Checked then
    qryDuLieuNhanSuMARRIAL_STATUS.Value := qryDuLieuWebMARRIAL_STATUS.Value;
  if dxDuyetIDCardNo.Checked then
    qryDuLieuNhanSuID_CARD_NO.Value := qryDuLieuWebID_CARD_NO.Value;
  if dxDuyetIssuedDate.Checked then
    qryDuLieuNhanSuISSUED_DATE.Value := qryDuLieuWebISSUED_DATE.Value;
  if dxDuyetIssuedPlace.Checked then
    qryDuLieuNhanSuISSUED_PLACE.Value := qryDuLieuWebISSUED_PLACE.Value;
  if dxDuyetPassport.Checked then
    qryDuLieuNhanSuPASSPORT.Value := qryDuLieuWebPASSPORT.Value;
  if dxDuyetPassportDate.Checked then
    qryDuLieuNhanSuPASSPORT_DATE.Value := qryDuLieuWebPASSPORT_DATE.Value;
  if dxDuyetPassportPlace.Checked then
    qryDuLieuNhanSuPASSPORT_PLACE.Value := qryDuLieuWebPASSPORT_PLACE.Value;
  if dxDuyetNATION_NAME.Checked then
    qryDuLieuNhanSuNATIONAL_NO.Value := qryDuLieuWebNATIONAL_NO.Value;
  if dxDuyetBIRTH_PLACE_ID.Checked then
    qryDuLieuNhanSuBIRTH_PLACE_ID.Value := qryDuLieuWebBIRTH_PLACE_ID.Value;
  if dxDuyetRaceName.Checked then
    qryDuLieuNhanSuRACE_NO.Value := qryDuLieuWebRACE_NO.Value;
  if dxDuyetNATIVE_PLACE_ID.Checked then
    qryDuLieuNhanSuNATIVE_PLACE_ID.Value := qryDuLieuWebNATIVE_PLACE_ID.Value;
  if dxDuyetRELIGION_NAME.Checked then
    qryDuLieuNhanSuRELIGION_NO.Value := qryDuLieuWebRELIGION_NO.Value;
  if dxDuyetDESCENT_NAME.Checked then
    qryDuLieuNhanSuDESCENT_FROM.Value := qryDuLieuWebDESCENT_FROM.Value;
  if dxDuyetCONTACT_PHONE.Checked then
    qryDuLieuNhanSuCONTACT_PHONE.Value := qryDuLieuWebCONTACT_PHONE.Value;
  if dxDuyetRESIDENT_ADDR.Checked then
    qryDuLieuNhanSuRESIDENT_ADDR.Value := qryDuLieuWebRESIDENT_ADDR.Value;
  if dxDuyetHAND_PHONE.Checked then
    qryDuLieuNhanSuHAND_PHONE.Value := qryDuLieuWebHAND_PHONE.Value;
  if dxDuyetPROVISION_ADDR.Checked then
    qryDuLieuNhanSuPROVISION_ADDR.Value := qryDuLieuWebPROVISION_ADDR.Value;
  if dxDuyetEMAIL.Checked then
    qryDuLieuNhanSuEMAIL.Value := qryDuLieuWebEMAIL.Value;
  if dxDuyetCONTACT_ADDR.Checked then
    qryDuLieuNhanSuCONTACT_ADDR.Value := qryDuLieuWebCONTACT_ADDR.Value;
  if dxDuyetCURRENCY_NAME.Checked then
    qryDuLieuNhanSuCURRENCY_NO.Value := qryDuLieuWebCURRENCY_NO.Value;
  if dxDuyetACCOUNT_ID.Checked then
    qryDuLieuNhanSuACCOUNT_ID.Value := qryDuLieuWebACCOUNT_ID.Value;
  if dxDuyetACCOUNT_BANK.Checked then
    qryDuLieuNhanSuACCOUNT_BANK.Value := qryDuLieuWebACCOUNT_BANK.Value;
  if dxDuyetMASO_THUE_CANHAN.Checked then
    qryDuLieuNhanSuMASO_THUE_CANHAN.Value := qryDuLieuWebMASO_THUE_CANHAN.Value;
  if dxDuyetCOQUAN_THUE_QUANLY.Checked then
    qryDuLieuNhanSuCOQUAN_THUE_QUANLY.Value := qryDuLieuWebCOQUAN_THUE_QUANLY.Value;

  if not (qryThongTinThem_Nhansu.State in [dsEdit]) then
    qryThongTinThem_Nhansu.Edit;
  if dxDuyetCanNang.Checked then
    qryThongTinThem_NhansuCAN_NANG.Value := qryThongTinThem_webCAN_NANG.Value;
  if dxDuyetChieuCao.Checked then
    qryThongTinThem_NhansuCHIEU_CAO.Value := qryThongTinThem_webCHIEU_CAO.Value;
  if dxDuyetDauVetDacBiet.Checked then
    qryThongTinThem_NhansuDAUVET_DACBIET.Value := qryThongTinThem_webDAUVET_DACBIET.Value;
  if dxDuyetNgayVaoDang.Checked then
    qryThongTinThem_NhansuNGAY_VAO_DANG.Value := qryThongTinThem_webNGAY_VAO_DANG.Value;
  if dxDuyetChucVuDang.Checked then
    qryThongTinThem_NhansuCHUC_VU_DANG.Value := qryThongTinThem_webCHUC_VU_DANG.Value;
  if dxDuyetNgayVaoDoan.Checked then
    qryThongTinThem_NhansuNGAY_VAO_DOAN.Value := qryThongTinThem_webNGAY_VAO_DOAN.Value;
  if dxDuyetChucVuDoan.Checked then
    qryThongTinThem_NhansuCHUC_VU_DOAN.Value := qryThongTinThem_webCHUC_VU_DOAN.Value;
  if dxDuyetNgayVaoCDoan.Checked then
    qryThongTinThem_NhansuNGAY_VAO_CDOAN.Value := qryThongTinThem_webNGAY_VAO_CDOAN.Value;
  if dxDuyetChucVuCDoan.Checked then
    qryThongTinThem_NhansuCHUC_VU_CDOAN.Value := qryThongTinThem_webCHUC_VU_DOAN.Value;
  if dxDuyetNgayVaoCty.Checked then
    qryThongTinThem_NhansuNGAY_VAO_CONGTY.Value := qryThongTinThem_webNGAY_VAO_CONGTY.Value;
  if dxDuyetTDVanHoa.Checked then
    qryThongTinThem_NhansuTRINHDO_VANHOA.Value := qryThongTinThem_webTRINHDO_VANHOA.Value;
  if dxDuyetTDHocVan.Checked then
    qryThongTinThem_NhansuTRINH_DO.Value := qryThongTinThem_webTRINHDO_HOCVAN.Value;
  if dxDuyetNgheNghiep.Checked then
    qryThongTinThem_NhansuNGHE_NGHIEP.Value := qryThongTinThem_webNGHE_NGHIEP.Value;
  if dxDuyetSoTruongCTac.Checked then
    qryThongTinThem_NhansuSOTRUONG_CTAC.Value := qryThongTinThem_webSOTRUONG_CTAC.Value;
  if dxDuyetNamTotNghiep.Checked then
    qryThongTinThem_NhansuNAM_TOTNGHIEP.Value := qryThongTinThem_webNAM_TOTNGHIEP.Value;
  if dxDuyetCVLauNhat.Checked then
    qryThongTinThem_NhansuCONGVIEC_LAUNHAT.Value := qryThongTinThem_webCONGVIEC_LAUNHAT.Value;
  try
  begin
    qryDuLieuNhanSu.Post;
    qryThongTinThem_Nhansu.Post;
    ShowMessageUnicode(105);
    qryDuLieuNhanSu.RefreshRows;
    qryThongTinThem_Nhansu.RefreshRows;
    CauHinhChinhSua;
  end
  except
  begin
    qryDuLieuNhanSu.Cancel;
    qryThongTinThem_Nhansu.Cancel;  
    ShowMessageUnicode(106);
  end
  end;

end;

procedure TfrmCapNhatThongTinNV.qryDuLieuWebBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryDuLieuWebSTATUS_NAME.Value = '' then
  begin
    qryDuLieuWebMARRIAL_STATUS.Clear;
    qryDuLieuWebSTATUS_NAME.Clear;
  end;
  if qryDuLieuWebNATION_NAME.Value = '' then
  begin
    qryDuLieuWebNATIONAL_NO.Clear;
    qryDuLieuWebNATION_NAME.Clear;
  end;
  if qryDuLieuWebRACE_NAME.Value = '' then
  begin
    qryDuLieuWebRACE_NO.Clear;
    qryDuLieuWebRACE_NAME.Clear;
  end;
  if qryDuLieuWebRELIGION_NAME.Value = '' then
  begin
    qryDuLieuWebRELIGION_NO.Clear;
    qryDuLieuWebRELIGION_NAME.Clear;
  end;
  if qryDuLieuWebDESCENT_NAME.Value = '' then
  begin
    qryDuLieuWebDESCENT_FROM.Clear;
    qryDuLieuWebDESCENT_NAME.Clear;
  end;
  if qryDuLieuWebCURRENCY_NAME.Value = '' then
  begin
    qryDuLieuWebCURRENCY_NO.Clear;
    qryDuLieuWebCURRENCY_NAME.Clear;
  end;
  dmMain.DefOnBeforePost(dataset);
end;

procedure TfrmCapNhatThongTinNV.qryThongTinThem_webBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if qryThongTinThem_webTEN_CHUCVU_DANG.Value = '' then
  begin
    qryThongTinThem_webCHUC_VU_DANG.Clear;
    qryThongTinThem_webTEN_CHUCVU_DANG.Clear;
  end;
  if qryThongTinThem_webTEN_CHUCVU_DOAN.Value = '' then
  begin
    qryThongTinThem_webCHUC_VU_DOAN.Clear;
    qryThongTinThem_webTEN_CHUCVU_DOAN.Clear;
  end;
  if qryThongTinThem_webTEN_CHUCVU_CDOAN.Value = '' then
  begin
    qryThongTinThem_webCHUC_VU_CDOAN.Clear;
    qryThongTinThem_webTEN_CHUCVU_CDOAN.Clear;
  end;
  if qryThongTinThem_webACADEMIC_NAME.Value = '' then
  begin
    qryThongTinThem_webACADEMIC_NAME.Clear;
    qryThongTinThem_webTRINHDO_VANHOA.Clear;
  end;
  if qryThongTinThem_webEDU_LEVEL_NAME.Value = '' then
  begin
    qryThongTinThem_webEDU_LEVEL_NAME.Clear;
    qryThongTinThem_webTRINHDO_HOCVAN.Clear;
  end;
  if qryThongTinThem_webCAREER_NAME.Value = '' then
  begin
    qryThongTinThem_webCAREER_NAME.Clear;
    qryThongTinThem_webNGHE_NGHIEP.Clear;
  end;
  dmMain.DefOnBeforePost(dataset);
end;

procedure TfrmCapNhatThongTinNV.acCapNhatUpdate(Sender: TObject);
begin
  inherited;
  acCapNhat.Enabled := (pageThongTin.ActivePage = tabThongTinChung) and
    (qryDSNVHieuChinh.RecordCount >0 );   
end;

end.


