unit EmpDocPrintForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, dxExEdtr, dxEdLib, dxDBELib, dxCntner, dxEditor,
  ElBtnCtl, ElPopBtn, ExtCtrls, ppViewr, cxControls, ActnList, ImgList,
  ElPgCtl, ppDB, DB, dxmdaset, ppDBPipe, ppEndUsr, ppComm, ppRelatv,
  ppProd, ppClass, ppReport, IBODataset, StdCtrls, ElCLabel, ElLabel,
  ppBands, myChkBox, ppMemo, ppStrtch, ppSubRpt, ppCtrls, ppPrnabl, ppCache;

type
  TfrmEmpDocPrint = class(TfrmBase)
    dxLayoutControl2: TdxLayoutControl;
    viewEmp: TppViewer;
    ElPopupButton49: TElPopupButton;
    ElPopupButton50: TElPopupButton;
    ElPopupButton51: TElPopupButton;
    dxImageEdit1: TdxImageEdit;
    ElPopupButton5: TElPopupButton;
    ElPopupButton6: TElPopupButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    ActionList1: TActionList;
    acZoomOut: TAction;
    acZoomIn: TAction;
    acViewReport: TAction;
    acView: TAction;
    acDesign: TAction;
    acPrint: TAction;
    dxSelectTemplate: TdxPopupEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    pageMain: TElPageControl;
    dxLayoutControl2Item2: TdxLayoutItem;
    tabTuychon: TElTabSheet;
    tabBanIn: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    chkNanglucChuyenmon: TdxCheckEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    chkQuatrinhCongtacTochuc: TdxCheckEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    chkQuatrinhCongtacTruocday: TdxCheckEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    chkQuatrinhKyketHDLD: TdxCheckEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    chkVanbanTailieuLienquan: TdxCheckEdit;
    dxlc: TdxLayoutItem;
    chkQuatrinhThaydoiLuongHDQD: TdxCheckEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    chkDanhsachKhenthuong: TdxCheckEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    chkTongketThidua: TdxCheckEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    chkDanhsachKyluat: TdxCheckEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    chkQuatrinhDanhgiaThidua: TdxCheckEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    chkDanhsachCongtacTrongnuoc: TdxCheckEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    chkQuatrinhThamgiaBHXH: TdxCheckEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    chkQuatrinhThaydoiluongCBNN: TdxCheckEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    chkDanhsachCongtacNuocngoai: TdxCheckEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    chkThongtinChung: TdxCheckEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Item1: TdxLayoutItem;
    chkTieusuCanhan: TdxCheckEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    chkQuatrinhDaotaoHuanluyen: TdxCheckEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    chkQuanheThannhan: TdxCheckEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    chkThamgiaHoatdongDoanthe: TdxCheckEdit;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    chkChonTATCA: TdxCheckEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    acCheckDefaulSetting: TAction;
    acSaveDefaultSetting: TAction;
    imglIcon: TImageList;
    qryEmpAbility: TIBOQuery;
    qryEmpAbilityEMPLOYEE_NO: TWideStringField;
    qryEmpAbilityEDU_FIELD_NO: TWideStringField;
    qryEmpAbilityEDU_FIELD_NAME: TWideStringField;
    qryEmpAbilityEDU_LEVEL_NO: TWideStringField;
    qryEmpAbilityFIELD_LEVEL_NAME: TWideStringField;
    qryEmpAbilityISSUED_DATE: TDateField;
    qryEmpAbilityISSUED_PLACE: TWideStringField;
    qryEmpAbilityEDU_ARCHIVEMENT: TWideStringField;
    qryEmpAbilityEMP_EDU_NOTE: TWideStringField;
    dsEmpAbility: TDataSource;
    dsEmpPrivateInfo: TDataSource;
    qryEmpWorkChange: TIBOQuery;
    qryEmpWorkChangeDOC_NO: TWideStringField;
    qryEmpWorkChangeDOC_NAME: TWideStringField;
    qryEmpWorkChangeDOC_TYPE: TIntegerField;
    qryEmpWorkChangePOSITION_NO: TWideStringField;
    qryEmpWorkChangeDEPT_NAME: TWideStringField;
    qryEmpWorkChangeTITLE_NAME: TWideStringField;
    qryEmpWorkChangeASSIGNED_DATE: TDateField;
    qryEmpWorkChangeIS_MAIN_POSITION: TIntegerField;
    qryEmpWorkChangeIS_DISMISSED: TIntegerField;
    qryEmpWorkChangeDISMISSED_DATE: TDateField;
    dsEmpWorkChange: TDataSource;
    qryEmpWorkHistory: TIBOQuery;
    qryEmpWorkHistoryEMPLOYEE_NO: TWideStringField;
    qryEmpWorkHistoryFROM_DATE: TDateField;
    qryEmpWorkHistoryTO_DATE: TDateField;
    qryEmpWorkHistoryWORK_JOB: TWideStringField;
    qryEmpWorkHistoryWORK_PLACE: TWideStringField;
    qryEmpWorkHistoryCONTACT_PERSON: TWideStringField;
    qryEmpWorkHistoryPLACE_ADDR: TWideStringField;
    qryEmpWorkHistoryPLACE_PHONE: TWideStringField;
    qryEmpWorkHistoryNOTE: TWideStringField;
    dsEmpWorkHistory: TDataSource;
    qryEmpContract: TIBOQuery;
    qryEmpContractCONTRACT_NO: TWideStringField;
    qryEmpContractCONTRACT_TYPE_NO: TWideStringField;
    qryEmpContractCONTRACT_TYPE_NAME: TWideStringField;
    qryEmpContractCONTRACT_NAME: TWideStringField;
    qryEmpContractREPRESENTATIVE: TWideStringField;
    qryEmpContractSTARTED_DATE: TDateField;
    qryEmpContractEXPIRED_DATE: TDateField;
    qryEmpContractCONTRACT_NOTE: TWideStringField;
    dsEmpContract: TDataSource;
    qryEmpDocument: TIBOQuery;
    qryEmpDocumentEMPLOYEE_NO: TWideStringField;
    qryEmpDocumentDOC_ID: TWideStringField;
    qryEmpDocumentDOC_NAME: TWideStringField;
    qryEmpDocumentDOC_CONTENT: TBlobField;
    qryEmpDocumentDOC_FILENAME: TWideStringField;
    qryEmpDocumentDOC_NOTE: TWideStringField;
    dsEmpDocument: TDataSource;
    qryEmpWageStandard: TIBOQuery;
    qryEmpWageStandardWAGE_SCALE: TWideStringField;
    qryEmpWageStandardCAREER_NAME: TWideStringField;
    qryEmpWageStandardWAGE_LEVEL: TIntegerField;
    qryEmpWageStandardWAGE_COEFF: TIBOFloatField;
    qryEmpWageStandardAPPLY_MONTH: TIntegerField;
    qryEmpWageStandardAPPLY_YEAR: TIntegerField;
    qryEmpWageStandardAPPLY_PERIOD: TIntegerField;
    qryEmpWageStandardPERIOD_ID: TIntegerField;
    dsEmpWageStandard: TDataSource;
    qryEmpReward: TIBOQuery;
    qryEmpRewardDECISION_NO: TWideStringField;
    qryEmpRewardDECISION_TITLE: TWideStringField;
    qryEmpRewardDECISION_DATE: TDateField;
    qryEmpRewardLEVEL_NAME: TWideStringField;
    qryEmpRewardREWARD_NAME: TWideStringField;
    qryEmpRewardREWARD_LIST_NAME: TWideStringField;
    dsEmpReward: TDataSource;
    qryEmpDiscipline: TIBOQuery;
    qryEmpDisciplineDECISION_NO: TWideStringField;
    qryEmpDisciplineDECISION_TITLE: TWideStringField;
    qryEmpDisciplineDECISION_DATE: TDateField;
    qryEmpDisciplineLEVEL_NAME: TWideStringField;
    qryEmpDisciplineDISC_NAME: TWideStringField;
    qryEmpDisciplineDISC_LIST_NAME: TWideStringField;
    dsEmpDiscipline: TDataSource;
    dsBiography: TDataSource;
    qryBiography: TIBOQuery;
    qryBiographyEMPLOYEE_NO: TWideStringField;
    qryBiographyKEY_INDEX: TIntegerField;
    qryBiographyFROM_TIME: TWideStringField;
    qryBiographyEMP_EVENT: TWideStringField;
    qryRelationship: TIBOQuery;
    qryRelationshipEMPLOYEE_NO: TWideStringField;
    qryRelationshipKEY_INDEX: TIntegerField;
    qryRelationshipPERSON_NAME: TWideStringField;
    qryRelationshipRELATIONSHIP: TWideStringField;
    qryRelationshipRELATIONSHIP_NAME: TWideStringField;
    qryRelationshipNOTE: TWideStringField;
    dsRelationship: TDataSource;
    dsLuongBHXH: TDataSource;
    qryInternalMission: TIBOQuery;
    qryInternalMissionMISSION_NO: TWideStringField;
    qryInternalMissionTO_PLACE: TWideStringField;
    qryInternalMissionFROM_DATE: TDateField;
    qryInternalMissionTO_DATE: TDateField;
    qryInternalMissionMISSION_DUTY: TWideStringField;
    qryInternalMissionBUSSINESS_EXPENSE: TIBOFloatField;
    qryInternalMissionCURRENCY_NAME: TWideStringField;
    dsInternalMission: TDataSource;
    qryExternalMission: TIBOQuery;
    qryExternalMissionMISSION_NO: TWideStringField;
    qryExternalMissionNATION_NAME: TWideStringField;
    qryExternalMissionTO_PLACE: TWideStringField;
    qryExternalMissionFROM_DATE: TDateField;
    qryExternalMissionTO_DATE: TDateField;
    qryExternalMissionMISSION_DUTY: TWideStringField;
    qryExternalMissionBUSSINESS_EXPENSE: TIBOFloatField;
    qryExternalMissionCURRENCY_NAME: TWideStringField;
    dsExternalMission: TDataSource;
    dsEstimate: TDataSource;
    dsEstimateSummary: TDataSource;
    qryEmpOrg: TIBOQuery;
    qryEmpOrgKEY_INDEX: TIntegerField;
    qryEmpOrgEMPLOYEE_NO: TWideStringField;
    qryEmpOrgORG_NO: TWideStringField;
    qryEmpOrgORG_NAME: TWideStringField;
    qryEmpOrgJOIN_DATE: TDateField;
    qryEmpOrgORG_DUTY: TWideStringField;
    qryEmpOrgNOTE: TWideStringField;
    dsEmpOrg: TDataSource;
    mainReport: TppReport;
    mainDesign: TppDesigner;
    ppThongtinNV: TppDBPipeline;
    ppThongtinRieng: TppDBPipeline;
    ppTrinhdoNanglucKhac: TppDBPipeline;
    ppQuatrinhCongtac: TppDBPipeline;
    ppQuatrinhCongtacTruocday: TppDBPipeline;
    ppThamgiaTochucDoanthe: TppDBPipeline;
    ppKyluat: TppDBPipeline;
    ppTongketDanhgia: TppDBPipeline;
    ppDanhgiaThidua: TppDBPipeline;
    ppHopdongLD: TppDBPipeline;
    ppGiaytoLienquan: TppDBPipeline;
    ppQuatrinhLuongCBNN: TppDBPipeline;
    ppKhenthuong: TppDBPipeline;
    ppTieusuCanhan: TppDBPipeline;
    ppQuanheXahoi: TppDBPipeline;
    ppLuongBHXH: TppDBPipeline;
    ppCongtacTrongnuoc: TppDBPipeline;
    ppCongtacNuocngoai: TppDBPipeline;
    ActionList2: TActionList;
    acTaomemHesoHD_QD: TAction;
    acHuymemHesoHD_QD: TAction;
    acRefreshMemHesoHD_QD: TAction;
    memHesoQD_HD: TdxMemData;
    memHesoQD_HDNGAY_APDUNG: TDateField;
    memHesoQD_HDTEN_CONGVAN: TWideStringField;
    memHesoQD_HDMA_CONGVAN: TWideStringField;
    memHesoQD_HDLOAI_CONGVAN: TWideStringField;
    dsHesoQD_HD: TDataSource;
    qryDSHesoHD_QD: TIBOQuery;
    qryDSHesoHD_QDPARAM_NO: TWideStringField;
    qryDSHesoHD_QDPARAM_NAME: TWideStringField;
    qryHesoQD_HD: TIBOQuery;
    qryHesoQD_HDNGAY_APDUNG: TDateField;
    qryHesoQD_HDLOAI_CONGVAN: TWideStringField;
    qryHesoQD_HDMASO_CONGVAN: TWideStringField;
    qryHesoQD_HDTIEUDE_CONGVAN: TWideStringField;
    qryHesoQD_HDMASO_THAMSO: TWideStringField;
    qryHesoQD_HDGIATRI_THAMSO: TIBOFloatField;
    qryTraining: TIBOQuery;
    qryTrainingCLASS_NO: TWideStringField;
    qryTrainingPLAN_NAME: TWideStringField;
    qryTrainingEDU_FIELD_NAME: TWideStringField;
    qryTrainingFIELD_LEVEL_NAME: TWideStringField;
    qryTrainingSTART_DATE: TDateField;
    qryTrainingEND_DATE: TDateField;
    qryTrainingALLOWANCE: TIBOFloatField;
    qryTrainingCURRENCY_NAME: TWideStringField;
    qryTrainingNOTE: TWideStringField;
    qryTrainingRESULT_NAME: TWideStringField;
    dsTraining: TDataSource;
    dsResume: TDataSource;
    qryResume: TIBOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    SmallintField1: TSmallintField;
    DateField1: TDateField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    DateField2: TDateField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    WideStringField19: TWideStringField;
    WideStringField20: TWideStringField;
    WideStringField21: TWideStringField;
    WideStringField22: TWideStringField;
    WideStringField23: TWideStringField;
    WideStringField24: TWideStringField;
    WideStringField25: TWideStringField;
    WideStringField26: TWideStringField;
    WideStringField27: TWideStringField;
    WideStringField28: TWideStringField;
    BlobField1: TBlobField;
    WideStringField29: TWideStringField;
    SmallintField2: TSmallintField;
    WideStringField30: TWideStringField;
    WideStringField31: TWideStringField;
    WideStringField32: TWideStringField;
    WideStringField33: TWideStringField;
    WideStringField34: TWideStringField;
    WideStringField35: TWideStringField;
    qryLuongBHXH: TIBOQuery;
    ppDaotaoHuanluyen: TppDBPipeline;
    ppDBPipeline1: TppDBPipeline;
    dsEmpty: TDataSource;
    qryEmpPrivateInfo: TIBOQuery;
    qryEmpPrivateInfoEMPLOYEE_NO: TWideStringField;
    qryEmpPrivateInfoNGAY_VAO_DANG: TDateField;
    qryEmpPrivateInfoNGAY_VAO_DOAN: TDateField;
    qryEmpPrivateInfoCHUC_VU_DANG: TWideStringField;
    qryEmpPrivateInfoCHUC_VU_DOAN: TWideStringField;
    qryEmpPrivateInfoTRINH_DO: TWideStringField;
    qryEmpPrivateInfoCONGVIEC_LAUNHAT: TWideStringField;
    qryEmpPrivateInfoSOTRUONG_CTAC: TWideStringField;
    qryEmpPrivateInfoNAM_TOTNGHIEP: TIntegerField;
    qryEmpPrivateInfoTOTNGHIEP_TAI: TWideStringField;
    qryEmpPrivateInfoTEN_TRINH_DO: TWideStringField;
    qryEmpPrivateInfoNGAY_VAO_CDOAN: TDateField;
    qryEmpPrivateInfoCHUC_VU_CDOAN: TWideStringField;
    qryEmpPrivateInfoNGHE_NGHIEP: TWideStringField;
    qryEmpPrivateInfoTEN_NGHE_NGHIEP: TWideStringField;
    qryEmpPrivateInfoNGAY_VAO_CONGTY: TDateField;
    qryEmpPrivateInfoTEN_CHUCVU_DANG: TWideStringField;
    qryEmpPrivateInfoTEN_CHUCVU_DOAN: TWideStringField;
    qryEmpPrivateInfoTEN_CHUCVU_CDOAN: TWideStringField;
    qryEmpPrivateInfoTRINHDO_VANHOA: TWideStringField;
    qryEmpPrivateInfoACADEMIC_NAME: TWideStringField;
    qryEmpPrivateInfoCHIEU_CAO: TIBOFloatField;
    qryEmpPrivateInfoCAN_NANG: TIBOFloatField;
    qryEmpPrivateInfoDAUVET_DACBIET: TWideStringField;
    ppHosoCongty: TppDBPipeline;
    qryResumeREGISTERED_NAME: TWideStringField;
    qryResumeALIAS: TWideStringField;
    qryResumePASSPORT: TWideStringField;
    qryResumePASSPORT_DATE: TDateField;
    qryResumePASSPORT_PLACE: TWideStringField;
    qryResumeMARRIAL_STATUS_NAME: TWideStringField;
    dxLayoutControl2Item3: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl2Item4: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl2Item5: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl2Item6: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl2Group3: TdxLayoutGroup;
    dxLayoutControl2Group5: TdxLayoutGroup;
    dxLayoutControl2Group1: TdxLayoutGroup;
    acFirstPage: TAction;
    acNextPage: TAction;
    acPriorPage: TAction;
    acLastPage: TAction;
    dxLayoutControl1Item7: TdxLayoutItem;
    ElLabel1: TElLabel;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item22: TdxLayoutItem;
    ElLabel2: TElLabel;
    dxLayoutControl1Item23: TdxLayoutItem;
    ElLabel3: TElLabel;
    qryEstimateSummary: TIBOQuery;
    qryEstimateSummarySTAGE_NO: TWideStringField;
    qryEstimateSummarySTAGE_NAME: TWideStringField;
    qryEstimateSummaryITEM_NO: TWideStringField;
    qryEstimateSummaryITEM_NAME: TWideStringField;
    qryEstimateSummaryESTIMATE_LEVEL: TWideStringField;
    qryEstimateSummaryLEVEL_NAME: TWideStringField;
    qryEstimate: TIBOQuery;
    qryEstimateSTAGE_NO: TWideStringField;
    qryEstimateSTAGE_NAME: TWideStringField;
    qryEstimateITEM_NO: TWideStringField;
    qryEstimateITEM_NAME: TWideStringField;
    qryEstimateESTIMATE_LEVEL: TWideStringField;
    qryEstimateLEVEL_NAME: TWideStringField;
    qryEstimateESTIMATE_MARK: TIBOFloatField;
    qryEstimateTOTAL_MARK: TIBOFloatField;
    qryEstimateAVERAGE_MARK: TIBOFloatField;
    qryEstimateSummaryESTIMATE_MARK: TIBOFloatField;
    qryEstimateSummaryESTIMATE_MARK_TOTAL: TIBOFloatField;
    qryEstimateSummaryESTIMATE_MARK_AVERAGE: TIBOFloatField;
    qryEmpWorkHistoryWORK_FIELD: TWideStringField;
    ppTitleBand7: TppTitleBand;
    ppShape20: TppShape;
    ppLabel6: TppLabel;
    ppLine15: TppLine;
    ppShape16: TppShape;
    ppLabel153: TppLabel;
    ppDBImage1: TppDBImage;
    ppDBImage2: TppDBImage;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    ppLabel2: TppLabel;
    ppDBText124: TppDBText;
    ppLabel4: TppLabel;
    ppDBText125: TppDBText;
    ppLabel5: TppLabel;
    ppDBText126: TppDBText;
    ppLine188: TppLine;
    ppLabel28: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand7: TppDetailBand;
    ppShape24: TppShape;
    ppShape22: TppShape;
    ppShape18: TppShape;
    ppShape17: TppShape;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppShape26: TppShape;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLine16: TppLine;
    ppShape25: TppShape;
    ppLabel36: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine19: TppLine;
    ppDBText29: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppShape1: TppShape;
    ppLine198: TppLine;
    ppLine199: TppLine;
    ppLine200: TppLine;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLine201: TppLine;
    ppShape21: TppShape;
    ppLabel43: TppLabel;
    ppLabel42: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine14: TppLine;
    ppLine22: TppLine;
    ppDBText37: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine7: TppLine;
    ppLine13: TppLine;
    ppLine18: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppShape27: TppShape;
    ppLabel49: TppLabel;
    ppShape28: TppShape;
    ppLabel50: TppLabel;
    ppLine17: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine23: TppLine;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLine164: TppLine;
    ppLabel145: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppLine34: TppLine;
    ppLine28: TppLine;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppDBMemo2: TppDBMemo;
    ppLine166: TppLine;
    ppDBMemo26: TppDBMemo;
    ppDBMemo27: TppDBMemo;
    ppSummaryBand4: TppSummaryBand;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppShape2: TppShape;
    ppLabel55: TppLabel;
    ppShape29: TppShape;
    ppLabel56: TppLabel;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine202: TppLine;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppLine39: TppLine;
    ppLine44: TppLine;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppLine35: TppLine;
    ppLine204: TppLine;
    ppLine205: TppLine;
    ppLine206: TppLine;
    ppLine207: TppLine;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText139: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppSubReport5: TppSubReport;
    ppChildReport5: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppShape3: TppShape;
    ppLabel61: TppLabel;
    ppShape30: TppShape;
    ppLabel62: TppLabel;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel66: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine45: TppLine;
    ppDBText140: TppDBText;
    ppDBText141: TppDBText;
    ppDBText142: TppDBText;
    ppLine48: TppLine;
    ppDBMemo3: TppDBMemo;
    ppSummaryBand6: TppSummaryBand;
    ppSubReport6: TppSubReport;
    ppChildReport6: TppChildReport;
    ppTitleBand6: TppTitleBand;
    ppLabel79: TppLabel;
    ppShape4: TppShape;
    ppLabel65: TppLabel;
    ppShape31: TppShape;
    ppLabel67: TppLabel;
    ppLine46: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLine208: TppLine;
    ppLabel71: TppLabel;
    ppLine61: TppLine;
    ppLabel72: TppLabel;
    ppLine51: TppLine;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppDBText54: TppDBText;
    ppLine203: TppLine;
    ppDBMemo5: TppDBMemo;
    ppDBText47: TppDBText;
    ppLine62: TppLine;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppLabel73: TppLabel;
    ppLine47: TppLine;
    ppDBText58: TppDBText;
    ppSummaryBand7: TppSummaryBand;
    ppLabel39: TppLabel;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel7: TppLabel;
    ppDBText3: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel154: TppLabel;
    ppDBText127: TppDBText;
    ppLabel155: TppLabel;
    ppDBText128: TppDBText;
    ppLabel156: TppLabel;
    ppLabel3: TppLabel;
    ppDBText129: TppDBText;
    ppLabel157: TppLabel;
    ppDBText130: TppDBText;
    ppLabel158: TppLabel;
    ppDBText5: TppDBText;
    ppLabel159: TppLabel;
    ppDBText131: TppDBText;
    ppLabel160: TppLabel;
    ppDBText132: TppDBText;
    ppLabel10: TppLabel;
    ppDBText7: TppDBText;
    ppLabel161: TppLabel;
    ppDBText133: TppDBText;
    ppLabel162: TppLabel;
    ppDBText134: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel163: TppLabel;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText135: TppDBText;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppDBText136: TppDBText;
    ppDBText137: TppDBText;
    ppDBText138: TppDBText;
    ppLabel13: TppLabel;
    ppDBText9: TppDBText;
    ppShape19: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText10: TppDBText;
    ppLabel16: TppLabel;
    ppDBText11: TppDBText;
    ppLabel17: TppLabel;
    ppDBText12: TppDBText;
    ppLine189: TppLine;
    ppLine190: TppLine;
    ppLine191: TppLine;
    ppLine192: TppLine;
    ppLabel18: TppLabel;
    ppDBText13: TppDBText;
    ppLabel19: TppLabel;
    ppDBText14: TppDBText;
    ppLabel20: TppLabel;
    ppDBText15: TppDBText;
    ppLabel21: TppLabel;
    ppDBText16: TppDBText;
    ppLabel22: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLine193: TppLine;
    ppLabel23: TppLabel;
    ppDBText17: TppDBText;
    ppLabel24: TppLabel;
    ppDBText18: TppDBText;
    ppLabel31: TppLabel;
    ppDBText19: TppDBText;
    ppLabel25: TppLabel;
    ppDBText20: TppDBText;
    ppLabel26: TppLabel;
    ppDBText21: TppDBText;
    ppLabel27: TppLabel;
    ppDBText22: TppDBText;
    ppLine194: TppLine;
    ppShape23: TppShape;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDBText23: TppDBText;
    ppLabel167: TppLabel;
    ppDBText24: TppDBText;
    ppLabel168: TppLabel;
    ppDBText25: TppDBText;
    ppLabel169: TppLabel;
    ppDBText26: TppDBText;
    ppLabel170: TppLabel;
    ppLabel34: TppLabel;
    ppDBText4: TppDBText;
    ppLabel35: TppLabel;
    ppDBText28: TppDBText;
    ppLine195: TppLine;
    ppLine196: TppLine;
    ppLine197: TppLine;
    ppSubReport7: TppSubReport;
    ppChildReport7: TppChildReport;
    ppTitleBand8: TppTitleBand;
    ppShape6: TppShape;
    ppLabel84: TppLabel;
    ppShape7: TppShape;
    ppLabel85: TppLabel;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLine72: TppLine;
    ppLabel88: TppLabel;
    ppLine73: TppLine;
    ppLabel89: TppLabel;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppDBMemo6: TppDBMemo;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    myDBCheckBox5: TmyDBCheckBox;
    myDBCheckBox6: TmyDBCheckBox;
    ppLine85: TppLine;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBMemo25: TppDBMemo;
    ppSummaryBand8: TppSummaryBand;
    ppSubReport8: TppSubReport;
    ppChildReport8: TppChildReport;
    ppTitleBand9: TppTitleBand;
    ppShape5: TppShape;
    ppLabel78: TppLabel;
    ppShape8: TppShape;
    ppLabel80: TppLabel;
    ppLine58: TppLine;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLine63: TppLine;
    ppLabel94: TppLabel;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLabel96: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLine86: TppLine;
    ppDBText59: TppDBText;
    ppLine88: TppLine;
    ppDBMemo4: TppDBMemo;
    ppLine89: TppLine;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppDBText61: TppDBText;
    ppDBText71: TppDBText;
    ppLabel77: TppLabel;
    ppDBText60: TppDBText;
    ppDBMemo7: TppDBMemo;
    ppSummaryBand1: TppSummaryBand;
    ppSubReport9: TppSubReport;
    ppChildReport9: TppChildReport;
    ppTitleBand10: TppTitleBand;
    ppShape9: TppShape;
    ppLabel83: TppLabel;
    ppShape10: TppShape;
    ppLabel93: TppLabel;
    ppLine57: TppLine;
    ppLabel95: TppLabel;
    ppLabel97: TppLabel;
    ppLine59: TppLine;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLine218: TppLine;
    ppLabel100: TppLabel;
    ppLine220: TppLine;
    ppLine222: TppLine;
    ppDetailBand10: TppDetailBand;
    ppLine87: TppLine;
    ppLine90: TppLine;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppDBText64: TppDBText;
    ppLine219: TppLine;
    ppDBText65: TppDBText;
    ppLine221: TppLine;
    ppDBText73: TppDBText;
    ppDBText110: TppDBText;
    ppLine223: TppLine;
    ppDBMemo8: TppDBMemo;
    ppDBMemo9: TppDBMemo;
    ppSummaryBand9: TppSummaryBand;
    ppSubReport10: TppSubReport;
    ppChildReport10: TppChildReport;
    ppTitleBand11: TppTitleBand;
    ppShape11: TppShape;
    ppLabel101: TppLabel;
    ppShape12: TppShape;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLine68: TppLine;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLine96: TppLine;
    ppLabel107: TppLabel;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine60: TppLine;
    ppLine107: TppLine;
    ppLabel182: TppLabel;
    ppDetailBand11: TppDetailBand;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppDBText72: TppDBText;
    ppLine104: TppLine;
    ppDBText74: TppDBText;
    ppLine105: TppLine;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppLine106: TppLine;
    ppDBMemo10: TppDBMemo;
    ppDBMemo11: TppDBMemo;
    ppLine101: TppLine;
    ppLine108: TppLine;
    ppDBMemo28: TppDBMemo;
    ppSummaryBand10: TppSummaryBand;
    ppSubReport11: TppSubReport;
    ppChildReport11: TppChildReport;
    ppTitleBand12: TppTitleBand;
    ppShape13: TppShape;
    ppLabel108: TppLabel;
    ppShape14: TppShape;
    ppLabel109: TppLabel;
    ppLine109: TppLine;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLine110: TppLine;
    ppLabel112: TppLabel;
    ppLine111: TppLine;
    ppLine112: TppLine;
    ppLabel113: TppLabel;
    ppLine225: TppLine;
    ppLabel114: TppLabel;
    ppDetailBand12: TppDetailBand;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine115: TppLine;
    ppLine116: TppLine;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppLine119: TppLine;
    ppDBMemo12: TppDBMemo;
    ppDBText77: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppLine224: TppLine;
    ppDBText81: TppDBText;
    ppDBMemo15: TppDBMemo;
    ppSummaryBand11: TppSummaryBand;
    ppSubReport12: TppSubReport;
    ppChildReport12: TppChildReport;
    ppTitleBand13: TppTitleBand;
    ppShape15: TppShape;
    ppLabel115: TppLabel;
    ppShape32: TppShape;
    ppLabel116: TppLabel;
    ppLine120: TppLine;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLine121: TppLine;
    ppLabel119: TppLabel;
    ppLine122: TppLine;
    ppLine123: TppLine;
    ppLabel120: TppLabel;
    ppLine124: TppLine;
    ppLabel121: TppLabel;
    ppDetailBand13: TppDetailBand;
    ppLine125: TppLine;
    ppLine126: TppLine;
    ppLine127: TppLine;
    ppLine128: TppLine;
    ppLine129: TppLine;
    ppLine130: TppLine;
    ppLine226: TppLine;
    ppDBMemo13: TppDBMemo;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppLine227: TppLine;
    ppDBText111: TppDBText;
    ppDBMemo14: TppDBMemo;
    ppSummaryBand12: TppSummaryBand;
    ppSubReport13: TppSubReport;
    ppChildReport13: TppChildReport;
    ppTitleBand14: TppTitleBand;
    ppShape33: TppShape;
    ppLabel122: TppLabel;
    ppShape34: TppShape;
    ppLabel123: TppLabel;
    ppLine131: TppLine;
    ppLabel125: TppLabel;
    ppLine132: TppLine;
    ppLine134: TppLine;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppDetailBand14: TppDetailBand;
    ppLine135: TppLine;
    ppLine136: TppLine;
    ppLine137: TppLine;
    ppLine138: TppLine;
    ppLine139: TppLine;
    ppLine141: TppLine;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText113: TppDBText;
    ppSummaryBand13: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape45: TppShape;
    ppLine133: TppLine;
    ppLine228: TppLine;
    ppLine229: TppLine;
    ppDBText78: TppDBText;
    ppLabel126: TppLabel;
    ppDBText82: TppDBText;
    ppLine140: TppLine;
    ppLabel124: TppLabel;
    ppLabel183: TppLabel;
    ppDBText89: TppDBText;
    ppDBText112: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSubReport14: TppSubReport;
    ppChildReport14: TppChildReport;
    ppTitleBand15: TppTitleBand;
    ppShape35: TppShape;
    ppLabel129: TppLabel;
    ppShape36: TppShape;
    ppLabel130: TppLabel;
    ppLine142: TppLine;
    ppLabel131: TppLabel;
    ppLine143: TppLine;
    ppLine144: TppLine;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppDetailBand15: TppDetailBand;
    ppLine148: TppLine;
    ppDBText114: TppDBText;
    ppDBText115: TppDBText;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppLine151: TppLine;
    ppLine152: TppLine;
    ppLine230: TppLine;
    ppSummaryBand14: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppShape46: TppShape;
    ppLine147: TppLine;
    ppDBText90: TppDBText;
    ppLabel134: TppLabel;
    ppLine145: TppLine;
    ppDBText91: TppDBText;
    ppLine146: TppLine;
    ppLabel135: TppLabel;
    ppDBText92: TppDBText;
    ppLabel184: TppLabel;
    ppDBText93: TppDBText;
    ppLine231: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppSubReport15: TppSubReport;
    ppChildReport15: TppChildReport;
    ppTitleBand16: TppTitleBand;
    ppShape37: TppShape;
    ppLabel136: TppLabel;
    ppShape38: TppShape;
    ppLabel137: TppLabel;
    ppLine153: TppLine;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLine154: TppLine;
    ppLabel140: TppLabel;
    ppLine155: TppLine;
    ppLine156: TppLine;
    ppLabel141: TppLabel;
    ppLine232: TppLine;
    ppLabel185: TppLabel;
    ppDetailBand16: TppDetailBand;
    ppLine157: TppLine;
    ppLine158: TppLine;
    ppLine159: TppLine;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppLine162: TppLine;
    ppLine163: TppLine;
    ppDBText27: TppDBText;
    ppDBText94: TppDBText;
    ppLabel142: TppLabel;
    ppDBMemo17: TppDBMemo;
    ppDBMemo18: TppDBMemo;
    ppDBMemo19: TppDBMemo;
    ppLine233: TppLine;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppSummaryBand15: TppSummaryBand;
    ppSubReport16: TppSubReport;
    ppChildReport16: TppChildReport;
    ppTitleBand17: TppTitleBand;
    ppShape39: TppShape;
    ppLabel143: TppLabel;
    ppShape40: TppShape;
    ppLabel144: TppLabel;
    ppLine165: TppLine;
    ppLabel147: TppLabel;
    ppDetailBand17: TppDetailBand;
    ppLine168: TppLine;
    ppLine169: TppLine;
    ppLine171: TppLine;
    ppLine172: TppLine;
    ppDBText98: TppDBText;
    ppDBMemo20: TppDBMemo;
    ppSummaryBand16: TppSummaryBand;
    ppSubReport17: TppSubReport;
    ppChildReport17: TppChildReport;
    ppTitleBand18: TppTitleBand;
    ppShape41: TppShape;
    ppLabel150: TppLabel;
    ppShape42: TppShape;
    ppLabel151: TppLabel;
    ppLine175: TppLine;
    ppLabel152: TppLabel;
    ppLabel171: TppLabel;
    ppLine176: TppLine;
    ppLabel172: TppLabel;
    ppLine177: TppLine;
    ppDetailBand18: TppDetailBand;
    ppLine179: TppLine;
    ppLine180: TppLine;
    ppLine181: TppLine;
    ppLine182: TppLine;
    ppLine183: TppLine;
    ppLine184: TppLine;
    ppDBText99: TppDBText;
    ppDBMemo21: TppDBMemo;
    ppDBMemo22: TppDBMemo;
    ppDBMemo23: TppDBMemo;
    ppSummaryBand17: TppSummaryBand;
    ppSubReport18: TppSubReport;
    ppChildReport18: TppChildReport;
    ppTitleBand19: TppTitleBand;
    ppShape43: TppShape;
    ppLabel175: TppLabel;
    ppShape44: TppShape;
    ppLabel176: TppLabel;
    ppLabel178: TppLabel;
    ppLine187: TppLine;
    ppLabel179: TppLabel;
    ppLine210: TppLine;
    ppDetailBand19: TppDetailBand;
    ppLine211: TppLine;
    ppLine212: TppLine;
    ppLine214: TppLine;
    ppLine215: TppLine;
    ppLine217: TppLine;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBMemo24: TppDBMemo;
    ppSummaryBand18: TppSummaryBand;
    ppDBMemo16: TppDBMemo;
    ppFooterBand3: TppFooterBand;
    qryEmpLanguage: TIBOQuery;
    qryEmpLanguageEMPLOYEE_NO: TWideStringField;
    qryEmpLanguageLANGUAGE_NO: TWideStringField;
    qryEmpLanguageLANGUAGE_NAME: TWideStringField;
    qryEmpLanguageLEVEL_NO: TWideStringField;
    qryEmpLanguageLEVEL_NAME: TWideStringField;
    qryEmpLanguageISSUED_DATE: TDateField;
    qryEmpLanguageISSUED_PLACE: TWideStringField;
    qryEmpLanguageARCHIVEMENT: TWideStringField;
    qryEmpLanguageNOTE: TWideStringField;
    dsEmpLanguage: TDataSource;
    dsEmpSkill: TDataSource;
    qryEmpSkill: TIBOQuery;
    qryEmpSkillEMPLOYEE_NO: TWideStringField;
    qryEmpSkillSKILL_NO: TWideStringField;
    qryEmpSkillSKILL_NAME: TWideStringField;
    qryEmpSkillLEVEL_NO: TWideStringField;
    qryEmpSkillLEVEL_NAME: TWideStringField;
    qryEmpSkillISSUED_DATE: TDateField;
    qryEmpSkillISSUED_PLACE: TWideStringField;
    qryEmpSkillARCHIVEMENT: TWideStringField;
    qryEmpSkillNOTE: TWideStringField;
    ppTrinhdoNgoaingu: TppDBPipeline;
    ppTrinhdoKynang: TppDBPipeline;
    chkTrinhdoKynang: TdxCheckEdit;
    dxLayoutControl1Item24: TdxLayoutItem;
    chkTrinhdoNgoaingu: TdxCheckEdit;
    dxLayoutControl1Item25: TdxLayoutItem;
    qryLuongBHXHID_BAOHIEM_QT_DONG_HIENTAI: TIntegerField;
    qryLuongBHXHID_BAOHIEM_SODANGKY: TIntegerField;
    qryLuongBHXHTU_THANG: TIntegerField;
    qryLuongBHXHTU_NAM: TIntegerField;
    qryLuongBHXHTIEN_LUONG: TIBOFloatField;
    qryLuongBHXHTILE_NLD_NOP: TIBOFloatField;
    qryLuongBHXHTILE_DN_NOP: TIBOFloatField;
    qryLuongBHXHGHI_CHU: TWideStringField;
    qryLuongBHXHTILE_NOP: TIBOFloatField;
    qryLuongBHXHPHU_CAP: TIBOFloatField;
    qryLuongBHXHTIENNOP_BAOHIEM: TIBOFloatField;
    qryLuongBHXHTILE_BHXH_NLD_NOP: TIBOFloatField;
    qryLuongBHXHTT_BHXH_NLD_NOP: TIBOFloatField;
    qryLuongBHXHTILE_BHYT_NLD_NOP: TIBOFloatField;
    qryLuongBHXHTT_BHYT_NLD_NOP: TIBOFloatField;
    qryLuongBHXHTILE_BHTN_NLD_NOP: TIBOFloatField;
    qryLuongBHXHTT_BHTN_NLD_NOP: TIBOFloatField;
    qryLuongBHXHTILE_BHXH_DN_NOP: TIBOFloatField;
    qryLuongBHXHTT_BHXH_DN_NOP: TIBOFloatField;
    qryLuongBHXHTILE_BHYT_DN_NOP: TIBOFloatField;
    qryLuongBHXHTT_BHYT_DN_NOP: TIBOFloatField;
    qryLuongBHXHTILE_BHTN_DN_NOP: TIBOFloatField;
    qryLuongBHXHTT_BHTN_DN_NOP: TIBOFloatField;
    qryResumeAPEC_NO: TWideStringField;
    qryResumeAPEC_DATE: TDateField;
    qryResumeAPEC_EXPIRED: TDateField;
    ppThongtinNVppField47: TppField;
    ppThongtinNVppField48: TppField;
    ppThongtinNVppField49: TppField;
    qryEmpPrivateInfoNGAY_THAMGIACM: TDateField;
    qryEmpPrivateInfoCAPUYCAONHATDAQUA: TWideStringField;
    qryEmpPrivateInfoNGAY_CHUYENDANGCHINHTHUC: TDateField;
    qryEmpPrivateInfoCAPUYCAONHATDAQUA_1: TWideStringField;
    qryEmpPrivateInfoCAPUYHIENNAY: TWideStringField;
    qryEmpPrivateInfoDACDIEM_LICHSU: TWideStringField;
    qryEmpPrivateInfoSUCKHOE: TWideStringField;
    qryEmpPrivateInfoLYLUAN_CHINHTRI: TWideStringField;
    qryEmpPrivateInfoNGAY_NHAPNGU: TDateField;
    qryEmpPrivateInfoNGAY_XUATNGU: TDateField;
    qryEmpPrivateInfoQUANHAM: TWideStringField;
    qryEmpPrivateInfoTROCAP_XUATNGU: TIBOFloatField;
    qryResumePASSPORT_EXPIRED: TDateField;
    procedure FormCreate(Sender: TObject);
    procedure dxImageEdit1Change(Sender: TObject);
    procedure acZoomOutExecute(Sender: TObject);
    procedure acZoomInExecute(Sender: TObject);
    function PrepareReport(type_prepare: integer = 0): boolean;
    procedure dxSelectTemplateInitPopup(Sender: TObject);
    procedure dxSelectTemplateCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectTemplateChange(Sender: TObject);
    procedure acViewReportExecute(Sender: TObject);
    procedure acViewExecute(Sender: TObject);
    procedure acDesignExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure chkNanglucChuyenmonChange(Sender: TObject);
    procedure chkQuatrinhCongtacTochucChange(Sender: TObject);
    procedure chkQuatrinhCongtacTruocdayChange(Sender: TObject);
    procedure chkQuatrinhKyketHDLDChange(Sender: TObject);
    procedure chkVanbanTailieuLienquanChange(Sender: TObject);
    procedure chkQuatrinhThaydoiLuongHDQDChange(Sender: TObject);
    procedure chkQuatrinhThaydoiluongCBNNChange(Sender: TObject);
    procedure chkQuatrinhThamgiaBHXHChange(Sender: TObject);
    procedure chkDanhsachCongtacTrongnuocChange(Sender: TObject);
    procedure chkDanhsachCongtacNuocngoaiChange(Sender: TObject);
    procedure chkDanhsachKhenthuongChange(Sender: TObject);
    procedure chkDanhsachKyluatChange(Sender: TObject);
    procedure chkQuatrinhDanhgiaThiduaChange(Sender: TObject);
    procedure chkTongketThiduaChange(Sender: TObject);
    procedure chkQuatrinhDaotaoHuanluyenChange(Sender: TObject);
    procedure chkTieusuCanhanChange(Sender: TObject);
    procedure chkThamgiaHoatdongDoantheChange(Sender: TObject);
    procedure chkQuanheThannhanChange(Sender: TObject);
    procedure chkChonTATCAChange(Sender: TObject);
    procedure acCheckDefaulSettingExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acSaveDefaultSettingExecute(Sender: TObject);
    procedure pageMainChange(Sender: TObject);
    procedure acTaomemHesoHD_QDExecute(Sender: TObject);
    procedure acHuymemHesoHD_QDExecute(Sender: TObject);
    procedure acRefreshMemHesoHD_QDExecute(Sender: TObject);
    procedure acFirstPageExecute(Sender: TObject);
    procedure acNextPageExecute(Sender: TObject);
    procedure acPriorPageExecute(Sender: TObject);
    procedure acLastPageExecute(Sender: TObject);
    procedure acFirstPageUpdate(Sender: TObject);
    procedure acLastPageUpdate(Sender: TObject);
    procedure chkTrinhdoNgoainguChange(Sender: TObject);
    procedure chkTrinhdoKynangChange(Sender: TObject);
  private
    { Private declarations }
    report_file_name: string;
  public
    { Public declarations }
  end;

var
  frmEmpDocPrint: TfrmEmpDocPrint;

implementation

uses EmpInfoDataModule, ppTypes, MainDM, PopupMainForm, SSP_Library, registry,
  ppDevice;

{$R *.dfm}

procedure TfrmEmpDocPrint.FormCreate(Sender: TObject);
begin
  inherited;
  viewEmp.Report := mainReport;
  acTaomemHesoHD_QD.Execute;
  qryResume.Open;
  qryEmpPrivateInfo.Open;
  acCheckDefaulSetting.Execute;
  pageMain.ActivePage:=tabTuychon;

end;

procedure TfrmEmpDocPrint.dxImageEdit1Change(Sender: TObject);
begin
  inherited;

  case StrToIntDef(string(dxImageEdit1.Text), 3) of
    0: viewEmp.ZoomSetting := zs100Percent;
    1: viewEmp.ZoomSetting := zsPageWidth;
    2: viewEmp.ZoomSetting := zsPercentage;
    3: viewEmp.ZoomSetting := zsWholePage;
  end;

end;

procedure TfrmEmpDocPrint.acZoomOutExecute(Sender: TObject);
begin
  inherited;
  viewEmp.ZoomPercentage := viewEmp.ZoomPercentage + 5;
end;

procedure TfrmEmpDocPrint.acZoomInExecute(Sender: TObject);
begin
  inherited;
  if viewEmp.ZoomPercentage > 5 then
    viewEmp.ZoomPercentage := viewEmp.ZoomPercentage - 5;
end;

function TfrmEmpDocPrint.PrepareReport(type_prepare: integer): boolean;
var
  pathName, pathDirectory: string;
begin
  try
    pathDirectory := ExtractFilePath(Application.ExeName) +
      'Reports\ResumeReport';
    case sysConfig.Language of
      0, 1:
        pathName := pathDirectory + '\Vn\' + report_file_name;
      2:
        pathName := pathDirectory + '\Eng\' + report_file_name;
    end;
    if (FileExists(pathName)) then
    begin
      mainReport.Template.FileName := pathName;
      mainReport.Template.Load;
    end
    else
    begin
      if type_prepare = 0 then
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

procedure TfrmEmpDocPrint.dxSelectTemplateInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryReportTemplateList.ParamByname('TEMPLATE_TYPE').Value := 3;
  //quyet dinh
  frmPopupMain.qryReportTemplateList.Open;
  InitPopupControl('dxlcReportTemplateList', frmPopupMain, sender, 2.5);
end;

procedure TfrmEmpDocPrint.dxSelectTemplateCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryReportTemplateListTEMPLATE_NAME.Value;
    report_file_name :=
      frmPopupMain.qryReportTemplateListTEMPLATE_FILE.AsString;
    acViewReport.Execute;
  end;
  frmPopupMain.qryReportTemplateList.Close;
end;

procedure TfrmEmpDocPrint.dxSelectTemplateChange(Sender: TObject);
begin
  inherited;
  if dxSelectTemplate.Text = '' then
    report_file_name := '';
end;

procedure TfrmEmpDocPrint.acViewReportExecute(Sender: TObject);
begin
  inherited;
  if report_file_name = '' then exit;
  if PrepareReport(1) = false then exit;
  dmMain.DefOnBeforePrint(true, EmpInfoDM.qryEmpList, self);
  mainReport.PrintToDevices;
end;

procedure TfrmEmpDocPrint.acViewExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  dmMain.DefOnBeforePrint(true, EmpInfoDM.qryEmpList, EmpInfoDM);
  mainReport.AllowPrintToFile := True;
  mainReport.DeviceType := dtScreen;
  mainReport.Print;
end;

procedure TfrmEmpDocPrint.acDesignExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  dmMain.DefOnBeforePrint(false, EmpInfoDM.qryEmpList, EmpInfoDM);
  mainDesign.ShowModal;
  mainReport.PrintToDevices;
end;

procedure TfrmEmpDocPrint.acPrintExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  dmMain.DefOnBeforePrint(true, EmpInfoDM.qryEmpList, EmpInfoDM);
  mainReport.AllowPrintToFile := True;
  mainReport.DeviceType := dtPrinter;
  mainReport.Print;
end;

procedure TfrmEmpDocPrint.chkNanglucChuyenmonChange(Sender: TObject);
begin
  inherited;
  if chkNanglucChuyenmon.Checked then
    qryEmpAbility.DataSource := EmpInfoDM.dsEmpList
  else
  begin
    qryEmpAbility.DataSource := dsEmpty;
    qryEmpAbility.ParamByName('EMPLOYEE_NO').Clear;
  end;
  qryEmpAbility.Close;
  qryEmpAbility.Open;

end;

procedure TfrmEmpDocPrint.chkQuatrinhCongtacTochucChange(Sender: TObject);
begin
  inherited;
  if chkQuatrinhCongtacTochuc.Checked then
    qryEmpWorkChange.DataSource := EmpInfoDM.dsEmpList
  else
  begin
    qryEmpWorkChange.DataSource := dsEmpty;
    qryEmpWorkChange.ParamByName('EMPLOYEE_NO').Clear;
  end;
  qryEmpWorkChange.Close;
  qryEmpWorkChange.Open;
end;

procedure TfrmEmpDocPrint.chkQuatrinhCongtacTruocdayChange(
  Sender: TObject);
begin
  inherited;
  if chkQuatrinhCongtacTruocday.Checked then
    qryEmpWorkHistory.DataSource := EmpInfoDM.dsEmpList
  else
  begin
    qryEmpWorkHistory.DataSource := dsEmpty;
    qryEmpWorkHistory.ParamByName('EMPLOYEE_NO').Clear;
  end;
  qryEmpWorkHistory.Close;
  qryEmpWorkHistory.Open;

end;

procedure TfrmEmpDocPrint.chkQuatrinhKyketHDLDChange(Sender: TObject);
begin
  inherited;
  if chkQuatrinhKyketHDLD.Checked then
    qryEmpContract.DataSource := EmpInfoDM.dsEmpList
  else
  begin
    qryEmpContract.DataSource := dsEmpty;
    qryEmpContract.ParamByName('EMPLOYEE_NO').Clear;
  end;
  qryEmpContract.Close;
  qryEmpContract.Open;
end;

procedure TfrmEmpDocPrint.chkVanbanTailieuLienquanChange(Sender: TObject);
begin
  inherited;
  if chkVanbanTailieuLienquan.Checked then
    qryEmpDocument.DataSource := EmpInfoDM.dsEmpList
  else
    begin
      qryEmpDocument.DataSource := dsEmpty;
  qryEmpDocument.ParamByName('EMPLOYEE_NO').Clear;
end;

qryEmpDocument.Close;
qryEmpDocument.Open;
end;

procedure TfrmEmpDocPrint.chkQuatrinhThaydoiLuongHDQDChange(
  Sender: TObject);
begin
  inherited;
  if chkQuatrinhThaydoiLuongHDQD.Checked then
    acRefreshMemHesoHD_QD.Execute
  else
  begin
    memHesoQD_HD.Close;
    memHesoQD_HD.Open;
  end
end;

procedure TfrmEmpDocPrint.chkQuatrinhThaydoiluongCBNNChange(
  Sender: TObject);
begin
  inherited;
  if chkQuatrinhThaydoiluongCBNN.Checked then
    qryEmpWageStandard.DataSource := EmpInfoDM.dsEmpList
  else
  begin
    qryEmpWageStandard.DataSource := dsEmpty;
    qryEmpWageStandard.ParamByName('EMPLOYEE_NO').Clear;
  end;

  qryEmpWageStandard.Close;
  qryEmpWageStandard.Open;

end;

procedure TfrmEmpDocPrint.chkQuatrinhThamgiaBHXHChange(Sender: TObject);
begin
  inherited;

  if chkQuatrinhThamgiaBHXH.Checked then
    qryLuongBHXH.DataSource := EmpInfoDM.dsEmpList
  else
  begin
    qryLuongBHXH.DataSource := dsEmpty;
    qryLuongBHXH.ParamByName('EMPLOYEE_NO').Clear;
  end;

  qryLuongBHXH.Close;
  qryLuongBHXH.Open;
end;

procedure TfrmEmpDocPrint.chkDanhsachCongtacTrongnuocChange(
  Sender: TObject);
begin
  inherited;
  if chkDanhsachCongtacTrongnuoc.Checked then
    qryInternalMission.DataSource := EmpInfoDM.dsEmpList
  else
  begin
    qryInternalMission.DataSource := dsEmpty;
    qryInternalMission.ParamByName('EMPLOYEE_NO').Clear;
  end;

  qryInternalMission.Close;
  qryInternalMission.Open;
end;

procedure TfrmEmpDocPrint.chkDanhsachCongtacNuocngoaiChange(
  Sender: TObject);
begin
  inherited;

  if chkDanhsachCongtacNuocngoai.Checked then
    qryExternalMission.DataSource := EmpInfoDM.dsEmpList
  else
  begin
    qryExternalMission.DataSource := dsEmpty;
    qryExternalMission.ParamByName('EMPLOYEE_NO').Clear;
  end;

  qryExternalMission.Close;
  qryExternalMission.Open;
end;

procedure TfrmEmpDocPrint.chkDanhsachKhenthuongChange(Sender: TObject);
begin
  inherited;

  if chkDanhsachKhenthuong.Checked then
    qryEmpReward.DataSource := EmpInfoDM.dsEmpList
  else
  begin
    qryEmpReward.DataSource := dsEmpty;
    qryEmpReward.ParamByName('EMPLOYEE_NO').Clear;
  end;

  qryEmpReward.Close;
  qryEmpReward.Open;

end;

procedure TfrmEmpDocPrint.chkDanhsachKyluatChange(Sender: TObject);
begin
  inherited;

  if chkDanhsachKyluat.Checked then
    qryEmpDiscipline.DataSource := EmpInfoDM.dsEmpList
  else
  begin
    qryEmpDiscipline.DataSource := dsEmpty;
    qryEmpDiscipline.ParamByName('EMPLOYEE_NO').Clear;
  end;

  qryEmpDiscipline.Close;
  qryEmpDiscipline.Open;

end;

procedure TfrmEmpDocPrint.chkQuatrinhDanhgiaThiduaChange(Sender: TObject);
begin
  inherited;

  if chkQuatrinhDanhgiaThidua.Checked then
    qryEstimate.DataSource := EmpInfoDM.dsEmpList
  else
  begin
    qryEstimate.DataSource := dsEmpty;
    qryEstimate.ParamByName('EMPLOYEE_NO').Clear;
  end;

  qryEstimate.Close;
  qryEstimate.Open;
end;

procedure TfrmEmpDocPrint.chkTongketThiduaChange(Sender: TObject);
begin
  inherited;
  if chkTongketThidua.Checked then
    qryEstimateSummary.DataSource := EmpInfoDM.dsEmpList
  else
  begin
    qryEstimateSummary.DataSource := dsEmpty;
    qryEstimateSummary.ParamByName('EMPLOYEE_NO').Clear;
  end;

  qryEstimateSummary.Close;
  qryEstimateSummary.Open;
end;

procedure TfrmEmpDocPrint.chkQuatrinhDaotaoHuanluyenChange(
  Sender: TObject);
begin
  inherited;

  if chkQuatrinhDaotaoHuanluyen.Checked then
    qryTraining.DataSource := EmpInfoDM.dsEmpList
  else
  begin
    qryTraining.DataSource := dsEmpty;
    qryTraining.ParamByName('EMPLOYEE_NO').Clear;
  end;

  qryTraining.Close;
  qryTraining.Open;

end;

procedure TfrmEmpDocPrint.chkTieusuCanhanChange(Sender: TObject);
begin
  inherited;

  if chkTieusuCanhan.Checked then
    qryBiography.DataSource := EmpInfoDM.dsEmpList
  else
  begin
    qryBiography.DataSource := dsEmpty;
    qryBiography.ParamByName('EMPLOYEE_NO').Clear;
  end;

  qryBiography.Close;
  qryBiography.Open;
end;

procedure TfrmEmpDocPrint.chkThamgiaHoatdongDoantheChange(Sender: TObject);
begin
  inherited;
  if chkThamgiaHoatdongDoanthe.Checked then
    qryEmpOrg.DataSource := EmpInfoDM.dsEmpList
  else
  begin
    qryEmpOrg.DataSource := dsEmpty;
    qryEmpOrg.ParamByName('EMPLOYEE_NO').Clear;
  end;

  qryEmpOrg.Close;
  qryEmpOrg.Open;
end;

procedure TfrmEmpDocPrint.chkQuanheThannhanChange(Sender: TObject);
begin
  inherited;

  if chkQuanheThannhan.Checked then
    qryRelationship.DataSource := EmpInfoDM.dsEmpList
  else
  begin
    qryRelationship.DataSource := dsEmpty;
    qryRelationship.ParamByName('EMPLOYEE_NO').Clear;
  end;

  qryRelationship.Close;
  qryRelationship.Open;

end;

procedure TfrmEmpDocPrint.chkChonTATCAChange(Sender: TObject);
begin
  inherited;
  chkTrinhdoKynang.Checked:= chkChonTATCA.Checked;
  chkTrinhdoNgoaingu.Checked:= chkChonTATCA.Checked;
  chkNanglucChuyenmon.Checked := chkChonTATCA.Checked;
  chkQuatrinhCongtacTochuc.Checked := chkChonTATCA.Checked;
  chkQuatrinhCongtacTruocday.Checked := chkChonTATCA.Checked;
  chkQuatrinhKyketHDLD.Checked := chkChonTATCA.Checked;
  chkVanbanTailieuLienquan.Checked := chkChonTATCA.Checked;
  chkQuatrinhThaydoiLuongHDQD.Checked := chkChonTATCA.Checked;
  chkQuatrinhThaydoiluongCBNN.Checked := chkChonTATCA.Checked;
  chkQuatrinhThamgiaBHXH.Checked := chkChonTATCA.Checked;
  chkDanhsachCongtacTrongnuoc.Checked := chkChonTATCA.Checked;
  chkDanhsachCongtacNuocngoai.Checked := chkChonTATCA.Checked;
  chkDanhsachKhenthuong.Checked := chkChonTATCA.Checked;
  chkDanhsachKyluat.Checked := chkChonTATCA.Checked;
  chkQuatrinhDanhgiaThidua.Checked := chkChonTATCA.Checked;
  chkTongketThidua.Checked := chkChonTATCA.Checked;
  chkQuatrinhDaotaoHuanluyen.Checked := chkChonTATCA.Checked;
  chkTieusuCanhan.Checked := chkChonTATCA.Checked;
  chkThamgiaHoatdongDoanthe.Checked := chkChonTATCA.Checked;
  chkQuanheThannhan.Checked := chkChonTATCA.Checked;
end;

procedure TfrmEmpDocPrint.acCheckDefaulSettingExecute(Sender: TObject);
var
  Reg: TRegistry;
  default_setting: integer;
begin
  inherited;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\SSP\EmpDocPrint', TRUE) then
    begin
      try
        default_setting := Reg.ReadInteger('default_setting');
      except
        default_setting := 0;
      end;
    end;
    Reg.CloseKey;
  finally
    Reg.Free;
  end;
  if (default_setting mod 2) = 1 then
    chkTrinhdoNgoaingu.Checked := true
  else
    chkTrinhdoNgoaingu.Checked := false;
  default_setting := default_setting div 2;

  if (default_setting mod 2) = 1 then
    chkTrinhdoKynang.Checked := true
  else
    chkTrinhdoKynang.Checked := false;
  default_setting := default_setting div 2;
  
  if (default_setting mod 2) = 1 then
    chkNanglucChuyenmon.Checked := true
  else
    chkNanglucChuyenmon.Checked := false;
  default_setting := default_setting div 2;

  if (default_setting mod 2) = 1 then
    chkQuatrinhCongtacTochuc.Checked := true
  else
    chkQuatrinhCongtacTochuc.Checked := false;
  default_setting := default_setting div 2;

  if (default_setting mod 2) = 1 then
    chkQuatrinhCongtacTruocday.Checked := true
  else
    chkQuatrinhCongtacTruocday.Checked := false;
  default_setting := default_setting div 2;

  if (default_setting mod 2) = 1 then
    chkQuatrinhKyketHDLD.Checked := true
  else
    chkQuatrinhKyketHDLD.Checked := false;
  default_setting := default_setting div 2;

  if (default_setting mod 2) = 1 then
    chkVanbanTailieuLienquan.Checked := true
  else
    chkVanbanTailieuLienquan.Checked := false;
  default_setting := default_setting div 2;

  if (default_setting mod 2) = 1 then
    chkQuatrinhThaydoiLuongHDQD.Checked := true
  else
    chkQuatrinhCongtacTochuc.Checked := false;
  default_setting := default_setting div 2;

  if (default_setting mod 2) = 1 then
    chkQuatrinhThaydoiluongCBNN.Checked := true
  else
    chkQuatrinhThaydoiluongCBNN.Checked := false;
  default_setting := default_setting div 2;

  if (default_setting mod 2) = 1 then
    chkQuatrinhThamgiaBHXH.Checked := true
  else
    chkQuatrinhThamgiaBHXH.Checked := false;
  default_setting := default_setting div 2;

  if (default_setting mod 2) = 1 then
    chkDanhsachCongtacTrongnuoc.Checked := true
  else
    chkDanhsachCongtacTrongnuoc.Checked := false;
  default_setting := default_setting div 2;

  if (default_setting mod 2) = 1 then
    chkDanhsachCongtacNuocngoai.Checked := true
  else
    chkDanhsachCongtacNuocngoai.Checked := false;
  default_setting := default_setting div 2;

  if (default_setting mod 2) = 1 then
    chkDanhsachKhenthuong.Checked := true
  else
    chkDanhsachKhenthuong.Checked := false;
  default_setting := default_setting div 2;

  if (default_setting mod 2) = 1 then
    chkDanhsachKyluat.Checked := true
  else
    chkDanhsachKyluat.Checked := false;
  default_setting := default_setting div 2;

  if (default_setting mod 2) = 1 then
    chkQuatrinhDanhgiaThidua.Checked := true
  else
    chkQuatrinhDanhgiaThidua.Checked := false;
  default_setting := default_setting div 2;

  if (default_setting mod 2) = 1 then
    chkTongketThidua.Checked := true
  else
    chkTongketThidua.Checked := false;
  default_setting := default_setting div 2;

  if (default_setting mod 2) = 1 then
    chkQuatrinhDaotaoHuanluyen.Checked := true
  else
    chkQuatrinhDaotaoHuanluyen.Checked := false;
  default_setting := default_setting div 2;

  if (default_setting mod 2) = 1 then
    chkTieusuCanhan.Checked := true
  else
    chkTieusuCanhan.Checked := false;
  default_setting := default_setting div 2;

  if (default_setting mod 2) = 1 then
    chkThamgiaHoatdongDoanthe.Checked := true
  else
    chkThamgiaHoatdongDoanthe.Checked := false;
  default_setting := default_setting div 2;

  if (default_setting mod 2) = 1 then
    chkQuanheThannhan.Checked := true
  else
    chkQuanheThannhan.Checked := false;
end;

procedure TfrmEmpDocPrint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryResume.Close;
  qryEmpPrivateInfo.Close;
  acSaveDefaultSetting.Execute;
  acHuymemHesoHD_QD.Execute;
  
end;

procedure TfrmEmpDocPrint.acSaveDefaultSettingExecute(Sender: TObject);
var
  Reg: TRegistry;
  default_setting, i: integer;
begin
  inherited;
  default_setting := 0;
  if chkTrinhdoNgoaingu.Checked then default_setting := default_setting + 1;
  i := 2;
  if chkTrinhdoKynang.Checked then default_setting := default_setting + 1;
  i := i * 2;
  if chkNanglucChuyenmon.Checked then default_setting := default_setting + 1;
  i := i * 2;
  if chkQuatrinhCongtacTochuc.Checked then
    default_setting := default_setting + i;
  i := i * 2;
  if chkQuatrinhCongtacTruocday.Checked then
    default_setting := default_setting + i;
  i := i * 2;
  if chkQuatrinhKyketHDLD.Checked then default_setting := default_setting + i;
  i := i * 2;
  if chkVanbanTailieuLienquan.Checked then
    default_setting := default_setting + i;
  i := i * 2;
  if chkQuatrinhThaydoiLuongHDQD.Checked then
    default_setting := default_setting + i;
  i := i * 2;
  if chkQuatrinhThaydoiluongCBNN.Checked then
    default_setting := default_setting + i;
  i := i * 2;
  if chkQuatrinhThamgiaBHXH.Checked then default_setting := default_setting + i;
  i := i * 2;
  if chkDanhsachCongtacTrongnuoc.Checked then
    default_setting := default_setting + i;
  i := i * 2;
  if chkDanhsachCongtacNuocngoai.Checked then
    default_setting := default_setting + i;
  i := i * 2;
  if chkDanhsachKhenthuong.Checked then default_setting := default_setting + i;
  i := i * 2;
  if chkDanhsachKyluat.Checked then default_setting := default_setting + i;
  i := i * 2;
  if chkQuatrinhDanhgiaThidua.Checked then
    default_setting := default_setting + i;
  i := i * 2;
  if chkTongketThidua.Checked then default_setting := default_setting + i;
  i := i * 2;
  if chkQuatrinhDaotaoHuanluyen.Checked then
    default_setting := default_setting + i;
  i := i * 2;
  if chkTieusuCanhan.Checked then default_setting := default_setting + i;
  i := i * 2;
  if chkThamgiaHoatdongDoanthe.Checked then
    default_setting := default_setting + i;
  i := i * 2;
  if chkQuanheThannhan.Checked then default_setting := default_setting + i;

  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\SSP\EmpDocPrint', TRUE) then
    begin
      try
        Reg.WriteInteger('default_setting', default_setting);
      except
      end;
    end;
    Reg.CloseKey;
  finally
    Reg.Free;
  end;
end;

procedure TfrmEmpDocPrint.pageMainChange(Sender: TObject);
begin
  inherited;
  if pageMain.ActivePage = tabBanIn then
  begin
    mainReport.PrintToDevices;
  end;
end;

procedure TfrmEmpDocPrint.acTaomemHesoHD_QDExecute(Sender: TObject);
var
  f: TFloatField;
begin
  if memHesoQD_HD.Active then memHesoQD_HD.Close;
  if memHesoQD_HD.FieldCount > 5 then exit;
  qryDSHesoHD_QD.Open;
  if qryDSHesoHD_QD.IsEmpty = false then
  begin
    qryDSHesoHD_QD.First;
    while not qryDSHesoHD_QD.Eof do
    begin
      f := TFloatField.Create(memHesoQD_HD);
      f.Name := memHesoQD_HD.Name + qryDSHesoHD_QDPARAM_NO.AsString;
      f.FieldName := qryDSHesoHD_QDPARAM_NO.AsString;
      f.FieldKind := fkData;
      f.DataSet := memHesoQD_HD;
      f.SetFieldType(ftFloat);
      TFloatField(f).DisplayFormat := sysConfig.FloatFormat;

      qryDSHesoHD_QD.Next;
    end;
  end;
end;

procedure TfrmEmpDocPrint.acHuymemHesoHD_QDExecute(Sender: TObject);
var
  i: integer;
begin
  if qryDSHesoHD_QD.Active then qryDSHesoHD_QD.Close;
  for i := memHesoQD_HD.FieldCount - 1 downto 5 do
    memHesoQD_HD.Fields[i].Free;
end;

procedure TfrmEmpDocPrint.acRefreshMemHesoHD_QDExecute(Sender: TObject);
var
  DOC_NO, DOC_TYPE: WideString;
  continue: boolean;
begin
  if memHesoQD_HD.FieldCount <= 5 then exit;
  if memHesoQD_HD.Active then
    memHesoQD_HD.Close;
  memHesoQD_HD.Open;

  memHesoQD_HD.DisableControls;
  if qryHesoQD_HD.Active then
    qryHesoQD_HD.Refresh
  else
    qryHesoQD_HD.Open;

  if qryHesoQD_HD.IsEmpty = false then
  begin
    qryHesoQD_HD.First;

    DOC_NO := qryHesoQD_HDMASO_CONGVAN.Value;
    DOC_TYPE := qryHesoQD_HDLOAI_CONGVAN.Value;

    memHesoQD_HD.Append;
    memHesoQD_HDLOAI_CONGVAN.Value := DOC_TYPE;
    memHesoQD_HDMA_CONGVAN.Value := qryHesoQD_HDMASO_CONGVAN.Value;
    memHesoQD_HDTEN_CONGVAN.Value := qryHesoQD_HDTIEUDE_CONGVAN.Value;
    memHesoQD_HDNGAY_APDUNG.Value := qryHesoQD_HDNGAY_APDUNG.Value;

    continue := qryHesoQD_HD.Eof;
    while not continue do
    begin
      if (DOC_NO <> qryHesoQD_HDMASO_CONGVAN.Value) or
        (DOC_TYPE <> qryHesoQD_HDLOAI_CONGVAN.Value) or
        (continue) then
      begin
        if (memHesoQD_HD.State in [dsEdit, dsInsert]) then
          memHesoQD_HD.Post;
        if continue then
          Break
        else
        begin
          DOC_NO := qryHesoQD_HDMASO_CONGVAN.Value;
          DOC_TYPE := qryHesoQD_HDLOAI_CONGVAN.Value;
        end;
        memHesoQD_HD.Append;
        memHesoQD_HDLOAI_CONGVAN.Value := DOC_TYPE;
        memHesoQD_HDMA_CONGVAN.Value := qryHesoQD_HDMASO_CONGVAN.Value;
        memHesoQD_HDTEN_CONGVAN.Value := qryHesoQD_HDTIEUDE_CONGVAN.Value;
        memHesoQD_HDNGAY_APDUNG.Value := qryHesoQD_HDNGAY_APDUNG.Value;

      end;

      memHesoQD_HD.FieldByName(qryHesoQD_HDMASO_THAMSO.AsString).Value
        := qryHesoQD_HDGIATRI_THAMSO.Value;

      qryHesoQD_HD.Next;
      continue := qryHesoQD_HD.Eof;
    end;
  end;
  qryHesoQD_HD.Close;
  if memHesoQD_HD.State in [dsInsert, dsEdit] then
    memHesoQD_HD.Post;
  memHesoQD_HD.EnableControls;

end;

procedure TfrmEmpDocPrint.acFirstPageExecute(Sender: TObject);
begin
  inherited;
  viewEmp.FirstPage;
end;

procedure TfrmEmpDocPrint.acNextPageExecute(Sender: TObject);
begin
  inherited;
  viewEmp.NextPage;
end;

procedure TfrmEmpDocPrint.acPriorPageExecute(Sender: TObject);
begin
  inherited;
  viewEmp.PriorPage;
end;

procedure TfrmEmpDocPrint.acLastPageExecute(Sender: TObject);
begin
  inherited;
  viewEmp.LastPage;
end;

procedure TfrmEmpDocPrint.acFirstPageUpdate(Sender: TObject);
begin
  inherited;
  acFirstPage.Enabled:= (viewEmp.ScreenDevice.Page.AbsolutePageCount>0)and(not (viewEmp.ScreenDevice.Page.FirstPage));
  acPriorPage.Enabled:=acFirstPage.Enabled;
end;

procedure TfrmEmpDocPrint.acLastPageUpdate(Sender: TObject);
begin
  inherited;
  acLastPage.Enabled:= (viewEmp.ScreenDevice.Page.AbsolutePageCount>0)and(not (viewEmp.ScreenDevice.Page.LastPage));
  acNextPage.Enabled:=acLastPage.Enabled;
end;

procedure TfrmEmpDocPrint.chkTrinhdoNgoainguChange(Sender: TObject);
begin
  inherited;
  if chkTrinhdoNgoaingu.Checked then
    qryEmpLanguage.DataSource := EmpInfoDM.dsEmpList
  else
  begin
    qryEmpLanguage.DataSource := dsEmpty;
    qryEmpLanguage.ParamByName('EMPLOYEE_NO').Clear;
  end;
  qryEmpLanguage.Close;
  qryEmpLanguage.Open;
end;

procedure TfrmEmpDocPrint.chkTrinhdoKynangChange(Sender: TObject);
begin
  inherited;
  if chkTrinhdoKynang.Checked then
    qryEmpSkill.DataSource := EmpInfoDM.dsEmpList
  else
  begin
    qryEmpSkill.DataSource := dsEmpty;
    qryEmpSkill.ParamByName('EMPLOYEE_NO').Clear;
  end;
  qryEmpSkill.Close;
  qryEmpSkill.Open;
end;

end.

