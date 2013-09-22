unit EmpInfoDataModule;

interface

uses
  SysUtils, Classes, DB, IBODataset, Controls, ImgList, ppDB, ppDBPipe,
  ppEndUsr, ppComm, ppRelatv, ppProd, ppClass, ppReport, dxmdaset, ActnList;

type
  TEmpInfoDM = class(TDataModule)
    dsEmpList: TDataSource;
    qryEmpList: TIBOQuery;
    qryEmpListEMPLOYEE_NO: TWideStringField;
    qryEmpListFIRST_NAME: TWideStringField;
    qryEmpListMIDDLE_NAME: TWideStringField;
    qryEmpListLAST_NAME: TWideStringField;
    qryEmpListFULL_NAME: TWideStringField;
    qryEmpListGENDER: TSmallintField;
    qryEmpListBIRTH_DATE: TDateField;
    qryEmpListMARRIAL_STATUS: TWideStringField;
    qryEmpListID_CARD_NO: TWideStringField;
    qryEmpListISSUED_DATE: TDateField;
    qryEmpListISSUED_PLACE: TWideStringField;
    qryEmpListRACE_NO: TWideStringField;
    qryEmpListRACE_NAME: TWideStringField;
    qryEmpListCURRENCY_NO: TWideStringField;
    qryEmpListCURRENCY_NAME: TWideStringField;
    qryEmpListNATIONAL_NO: TWideStringField;
    qryEmpListNATIONAL_NAME: TWideStringField;
    qryEmpListRELIGION_NO: TWideStringField;
    qryEmpListRELIGION_NAME: TWideStringField;
    qryEmpListCONTACT_ADDR: TWideStringField;
    qryEmpListPROVISION_ADDR: TWideStringField;
    qryEmpListRESIDENT_ADDR: TWideStringField;
    qryEmpListCONTACT_PHONE: TWideStringField;
    qryEmpListHAND_PHONE: TWideStringField;
    qryEmpListEMAIL: TWideStringField;
    qryEmpListFAX: TWideStringField;
    qryEmpListWEBSITE: TWideStringField;
    qryEmpListPORTRAIT: TBlobField;
    qryEmpListIMG_TYPE: TWideStringField;
    qryEmpListIS_CADIDATE: TSmallintField;
    qryEmpListNOTES: TWideStringField;
    imglGender: TImageList;
    qryEmpListEMPLOYEE_ID: TWideStringField;
    qryEmpListDESCENT_FROM: TWideStringField;
    qryEmpListDESCENT_NAME: TWideStringField;
    qryEmpAbility: TIBOQuery;
    dsEmpAbility: TDataSource;
    qryEmpPrivateInfo: TIBOQuery;
    dsEmpPrivateInfo: TDataSource;
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
    qryEmpAbilityEMPLOYEE_NO: TWideStringField;
    qryEmpAbilityEDU_FIELD_NO: TWideStringField;
    qryEmpAbilityEDU_FIELD_NAME: TWideStringField;
    qryEmpAbilityEDU_LEVEL_NO: TWideStringField;
    qryEmpAbilityFIELD_LEVEL_NAME: TWideStringField;
    qryEmpAbilityISSUED_DATE: TDateField;
    qryEmpAbilityISSUED_PLACE: TWideStringField;
    qryEmpAbilityEDU_ARCHIVEMENT: TWideStringField;
    qryEmpAbilityEMP_EDU_NOTE: TWideStringField;
    qryEmpPrivateInfoNGHE_NGHIEP: TWideStringField;
    qryEmpPrivateInfoTEN_NGHE_NGHIEP: TWideStringField;
    qryEmpListACCOUNT_ID: TWideStringField;
    qryEmpListACCOUNT_BANK: TWideStringField;
    qryEmpWorkChange: TIBOQuery;
    dsEmpWorkChange: TDataSource;
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
    qryEmpWorkHistory: TIBOQuery;
    dsEmpWorkHistory: TDataSource;
    qryEmpWorkHistoryEMPLOYEE_NO: TWideStringField;
    qryEmpWorkHistoryFROM_DATE: TDateField;
    qryEmpWorkHistoryTO_DATE: TDateField;
    qryEmpWorkHistoryWORK_JOB: TWideStringField;
    qryEmpWorkHistoryWORK_PLACE: TWideStringField;
    qryEmpWorkHistoryCONTACT_PERSON: TWideStringField;
    qryEmpWorkHistoryPLACE_ADDR: TWideStringField;
    qryEmpWorkHistoryPLACE_PHONE: TWideStringField;
    qryEmpWorkHistoryNOTE: TWideStringField;
    qryEmpContract: TIBOQuery;
    dsEmpContract: TDataSource;
    qryEmpDocument: TIBOQuery;
    dsEmpDocument: TDataSource;
    qryEmpContractCONTRACT_NO: TWideStringField;
    qryEmpContractCONTRACT_TYPE_NO: TWideStringField;
    qryEmpContractCONTRACT_TYPE_NAME: TWideStringField;
    qryEmpContractCONTRACT_NAME: TWideStringField;
    qryEmpContractREPRESENTATIVE: TWideStringField;
    qryEmpContractSTARTED_DATE: TDateField;
    qryEmpContractEXPIRED_DATE: TDateField;
    qryEmpContractCONTRACT_NOTE: TWideStringField;
    qryEmpDocumentEMPLOYEE_NO: TWideStringField;
    qryEmpDocumentDOC_ID: TWideStringField;
    qryEmpDocumentDOC_NAME: TWideStringField;
    qryEmpDocumentDOC_CONTENT: TBlobField;
    qryEmpDocumentDOC_FILENAME: TWideStringField;
    qryEmpDocumentDOC_NOTE: TWideStringField;
    qryEmpWageStandard: TIBOQuery;
    dsEmpWageStandard: TDataSource;
    qryEmpWageStandardWAGE_SCALE: TWideStringField;
    qryEmpWageStandardCAREER_NAME: TWideStringField;
    qryEmpWageStandardWAGE_LEVEL: TIntegerField;
    qryEmpWageStandardWAGE_COEFF: TIBOFloatField;
    qryEmpWageStandardAPPLY_MONTH: TIntegerField;
    qryEmpWageStandardAPPLY_YEAR: TIntegerField;
    qryEmpWageStandardAPPLY_PERIOD: TIntegerField;
    qryEmpWageStandardPERIOD_ID: TIntegerField;
    qryEmpReward: TIBOQuery;
    dsEmpReward: TDataSource;
    qryEmpDiscipline: TIBOQuery;
    dsEmpDiscipline: TDataSource;
    qryEmpRewardDECISION_NO: TWideStringField;
    qryEmpRewardDECISION_TITLE: TWideStringField;
    qryEmpRewardDECISION_DATE: TDateField;
    qryEmpRewardLEVEL_NAME: TWideStringField;
    qryEmpRewardREWARD_NAME: TWideStringField;
    qryEmpRewardREWARD_LIST_NAME: TWideStringField;
    qryEmpDisciplineDECISION_NO: TWideStringField;
    qryEmpDisciplineDECISION_TITLE: TWideStringField;
    qryEmpDisciplineDECISION_DATE: TDateField;
    qryEmpDisciplineLEVEL_NAME: TWideStringField;
    qryEmpDisciplineDISC_NAME: TWideStringField;
    qryEmpDisciplineDISC_LIST_NAME: TWideStringField;
    dsBiography: TDataSource;
    qryBiography: TIBOQuery;
    qryRelationship: TIBOQuery;
    dsRelationship: TDataSource;
    qryBiographyEMPLOYEE_NO: TWideStringField;
    qryBiographyKEY_INDEX: TIntegerField;
    qryBiographyFROM_TIME: TWideStringField;
    qryBiographyEMP_EVENT: TWideStringField;
    qryRelationshipEMPLOYEE_NO: TWideStringField;
    qryRelationshipKEY_INDEX: TIntegerField;
    qryRelationshipPERSON_NAME: TWideStringField;
    qryRelationshipRELATIONSHIP: TWideStringField;
    qryRelationshipRELATIONSHIP_NAME: TWideStringField;
    qryRelationshipNOTE: TWideStringField;
    qryInternalMission: TIBOQuery;
    dsInternalMission: TDataSource;
    qryExternalMission: TIBOQuery;
    dsExternalMission: TDataSource;
    qryExternalMissionMISSION_NO: TWideStringField;
    qryExternalMissionNATION_NAME: TWideStringField;
    qryExternalMissionTO_PLACE: TWideStringField;
    qryExternalMissionFROM_DATE: TDateField;
    qryExternalMissionTO_DATE: TDateField;
    qryExternalMissionMISSION_DUTY: TWideStringField;
    qryExternalMissionBUSSINESS_EXPENSE: TIBOFloatField;
    qryExternalMissionCURRENCY_NAME: TWideStringField;
    qryInternalMissionMISSION_NO: TWideStringField;
    qryInternalMissionTO_PLACE: TWideStringField;
    qryInternalMissionFROM_DATE: TDateField;
    qryInternalMissionTO_DATE: TDateField;
    qryInternalMissionMISSION_DUTY: TWideStringField;
    qryInternalMissionBUSSINESS_EXPENSE: TIBOFloatField;
    qryInternalMissionCURRENCY_NAME: TWideStringField;
    qryEstimate: TIBOQuery;
    qryEstimateSTAGE_NO: TWideStringField;
    qryEstimateSTAGE_NAME: TWideStringField;
    qryEstimateITEM_NO: TWideStringField;
    qryEstimateITEM_NAME: TWideStringField;
    qryEstimateESTIMATE_LEVEL: TWideStringField;
    qryEstimateLEVEL_NAME: TWideStringField;
    dsEstimate: TDataSource;
    qryEstimateSummary: TIBOQuery;
    dsEstimateSummary: TDataSource;
    qryEstimateSummarySTAGE_NO: TWideStringField;
    qryEstimateSummarySTAGE_NAME: TWideStringField;
    qryEstimateSummaryITEM_NO: TWideStringField;
    qryEstimateSummaryITEM_NAME: TWideStringField;
    qryEstimateSummaryESTIMATE_LEVEL: TWideStringField;
    qryEstimateSummaryLEVEL_NAME: TWideStringField;
    qryEmpOrg: TIBOQuery;
    dsEmpOrg: TDataSource;
    qryEmpOrgKEY_INDEX: TIntegerField;
    qryEmpOrgEMPLOYEE_NO: TWideStringField;
    qryEmpOrgORG_NO: TWideStringField;
    qryEmpOrgORG_NAME: TWideStringField;
    qryEmpOrgJOIN_DATE: TDateField;
    qryEmpOrgORG_DUTY: TWideStringField;
    qryEmpOrgNOTE: TWideStringField;
    qryEmpPrivateInfoNGAY_VAO_CONGTY: TDateField;
    ActionList1: TActionList;
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
    dsTraining: TDataSource;
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
    qryEmpPrivateInfoTEN_CHUCVU_DANG: TWideStringField;
    qryEmpPrivateInfoTEN_CHUCVU_DOAN: TWideStringField;
    qryEmpPrivateInfoTEN_CHUCVU_CDOAN: TWideStringField;
    qryEmpPrivateInfoTRINHDO_VANHOA: TWideStringField;
    qryEmpPrivateInfoACADEMIC_NAME: TWideStringField;
    qryEmpListREGISTERED_NAME: TWideStringField;
    qryEmpListALIAS: TWideStringField;
    qryEmpListPASSPORT: TWideStringField;
    qryEmpListPASSPORT_DATE: TDateField;
    qryEmpListPASSPORT_PLACE: TWideStringField;
    qryEmpPrivateInfoCHIEU_CAO: TIBOFloatField;
    qryEmpPrivateInfoCAN_NANG: TIBOFloatField;
    qryEmpPrivateInfoDAUVET_DACBIET: TWideStringField;
    qryEmpListMARRIAL_STATUS_NAME: TWideStringField;
    qryEstimateESTIMATE_MARK: TIBOFloatField;
    qryEstimateTOTAL_MARK: TIBOFloatField;
    qryEstimateAVERAGE_MARK: TIBOFloatField;
    qryEstimateSummaryESTIMATE_MARK: TIBOFloatField;
    qryEstimateSummaryESTIMATE_MARK_TOTAL: TIBOFloatField;
    qryEstimateSummaryESTIMATE_MARK_AVERAGE: TIBOFloatField;
    qryEmpWorkHistoryWORK_FIELD: TWideStringField;
    qryCheck: TIBOQuery;
    qryCheckCOUNT: TIntegerField;
    qryEmpWorkHistoryKEY_ID: TWideStringField;
    qryEmpListBIRTH_PLACE_ID: TWideStringField;
    qryEmpListBIRTH_PLACE_NAME: TWideStringField;
    qryEmpListNATIVE_PLACE_ID: TWideStringField;
    qryEmpListNATIVE_PLACE_NAME: TWideStringField;
    qryEmpLanguage: TIBOQuery;
    dsEmpLanguage: TDataSource;
    qryEmpSkill: TIBOQuery;
    dsEmpSkill: TDataSource;
    qryEmpLanguageEMPLOYEE_NO: TWideStringField;
    qryEmpLanguageLANGUAGE_NO: TWideStringField;
    qryEmpLanguageLANGUAGE_NAME: TWideStringField;
    qryEmpLanguageLEVEL_NO: TWideStringField;
    qryEmpLanguageLEVEL_NAME: TWideStringField;
    qryEmpLanguageISSUED_DATE: TDateField;
    qryEmpLanguageISSUED_PLACE: TWideStringField;
    qryEmpLanguageARCHIVEMENT: TWideStringField;
    qryEmpLanguageNOTE: TWideStringField;
    qryEmpSkillEMPLOYEE_NO: TWideStringField;
    qryEmpSkillSKILL_NO: TWideStringField;
    qryEmpSkillSKILL_NAME: TWideStringField;
    qryEmpSkillLEVEL_NO: TWideStringField;
    qryEmpSkillLEVEL_NAME: TWideStringField;
    qryEmpSkillISSUED_DATE: TDateField;
    qryEmpSkillISSUED_PLACE: TWideStringField;
    qryEmpSkillARCHIVEMENT: TWideStringField;
    qryEmpSkillNOTE: TWideStringField;
    qryRelationshipBIRTH_YEAR: TIntegerField;
    qryEmpListMASO_THUE_CANHAN: TWideStringField;
    qryEmpListCANHAN_KHONG_CUTRU: TSmallintField;
    qryRelationshipDUOC_GIAMTRU_GIACANH: TSmallintField;
    qryRelationshipGIAMTRU_TUTHANG: TSmallintField;
    qryRelationshipGIAMTRU_TUNAM: TIntegerField;
    qryRelationshipGIAMTRU_DENTHANG: TSmallintField;
    qryRelationshipGIAMTRU_DENNAM: TIntegerField;
    qryEmpListCOQUAN_THUE_QUANLY: TWideStringField;
    qryRelationshipMASO_THUE_CANHAN: TWideStringField;
    qryRelationshipSO_CMND: TWideStringField;
    qryRelationshipSO_HOCHIEU: TWideStringField;
    qryRelationshipBIRTH_DATE: TDateField;
    qryEmpListNGAY_KHAIBAO_CUTRU: TDateField;
    qryEmpLanguageDUYET: TSmallintField;
    qryEmpSkillDUYET: TSmallintField;
    qryEmpAbilityDUYET: TSmallintField;
    qryEmpListUSERACCID: TWideStringField;
    qryEmpListSUBSYSTEMID: TIntegerField;
    qryEmpListUSERACC_NAME: TWideStringField;
    qryEmpListMATINH_CAP_CMND: TWideStringField;
    qryEmpListTENTINH_CAP_CMND: TWideStringField;
    qryEmpListPASSPORT_EXPIRED: TDateField;
    qryEmpListVISA_NO: TWideStringField;
    qryEmpListVISA_DATE: TDateField;
    qryEmpListVISA_PLACE: TWideStringField;
    qryEmpListVISA_EXPIRED: TDateField;
    qryEmpListACCOUNT_NAME: TWideStringField;
    qryEmpListACCOUNT_ID_2: TWideStringField;
    qryEmpListACCOUNT_BANK_2: TWideStringField;
    qryEmpListACCOUNT_NAME_2: TWideStringField;
    qryQT_ThayDoiPhieuKCB: TIBOQuery;
    qryQT_ThayDoiPhieuKCBSOPHIEU_KCB: TWideStringField;
    qryQT_ThayDoiPhieuKCBTEN_BENHVIEN: TWideStringField;
    qryQT_ThayDoiPhieuKCBTEN_TINH_THANHPHO: TWideStringField;
    qryQT_ThayDoiPhieuKCBDANGKY_TUNGAY: TDateField;
    qryQT_ThayDoiPhieuKCBDANGKY_DENNGAY: TDateField;
    qryQT_ThayDoiPhieuKCBTINH_TRANG: TSmallintField;
    qryQT_ThayDoiPhieuKCBNGAY_TRATHE: TDateField;
    qryQT_ThayDoiPhieuKCBID_BAOHIEM_SODANGKY: TIntegerField;
    qryQT_ThayDoiPhieuKCBID_BAOHIEM_PHIEUKCB: TIntegerField;
    qryQT_ThayDoiPhieuKCBID_BAOHIEM_BENHVIEN: TIntegerField;
    dsQT_ThayDoiPhieuKCB: TDataSource;
    qryQT_DongHienTai: TIBOQuery;
    qryQT_DongHienTaiTU_THANG: TIntegerField;
    qryQT_DongHienTaiTU_NAM: TIntegerField;
    qryQT_DongHienTaiTIEN_LUONG: TIBOFloatField;
    qryQT_DongHienTaiPHU_CAP: TIBOFloatField;
    qryQT_DongHienTaiTILE_NLD_NOP: TIBOFloatField;
    qryQT_DongHienTaiTILE_DN_NOP: TIBOFloatField;
    qryQT_DongHienTaiTILE_NOP: TIBOFloatField;
    qryQT_DongHienTaiTIENNOP_BAOHIEM: TIBOFloatField;
    qryQT_DongHienTaiGHI_CHU: TWideStringField;
    qryQT_DongHienTaiID_BAOHIEM_SODANGKY: TIntegerField;
    qryQT_DongHienTaiID_BAOHIEM_QT_DONG_HIENTAI: TIntegerField;
    qryQT_DongHienTaiTILE_BHXH_NLD_NOP: TIBOFloatField;
    qryQT_DongHienTaiTT_BHXH_NLD_NOP: TIBOFloatField;
    qryQT_DongHienTaiTILE_BHYT_NLD_NOP: TIBOFloatField;
    qryQT_DongHienTaiTT_BHYT_NLD_NOP: TIBOFloatField;
    qryQT_DongHienTaiTILE_BHTN_NLD_NOP: TIBOFloatField;
    qryQT_DongHienTaiTT_BHTN_NLD_NOP: TIBOFloatField;
    qryQT_DongHienTaiTILE_BHXH_DN_NOP: TIBOFloatField;
    qryQT_DongHienTaiTT_BHXH_DN_NOP: TIBOFloatField;
    qryQT_DongHienTaiTILE_BHYT_DN_NOP: TIBOFloatField;
    qryQT_DongHienTaiTT_BHYT_DN_NOP: TIBOFloatField;
    qryQT_DongHienTaiTILE_BHTN_DN_NOP: TIBOFloatField;
    qryQT_DongHienTaiTT_BHTN_DN_NOP: TIBOFloatField;
    qryQT_DongTruocDay: TIBOQuery;
    qryQT_DongTruocDayID_BAOHIEM_QT_DONG_TRUOCDAY: TIntegerField;
    qryQT_DongTruocDayID_BAOHIEM_SODANGKY: TIntegerField;
    qryQT_DongTruocDayTU_THANG: TIntegerField;
    qryQT_DongTruocDayTU_NAM: TIntegerField;
    qryQT_DongTruocDayTIEN_LUONG: TIBOFloatField;
    qryQT_DongTruocDayPHU_CAP: TIBOFloatField;
    qryQT_DongTruocDayTILE_NLD_NOP: TIBOFloatField;
    qryQT_DongTruocDayTILE_DN_NOP: TIBOFloatField;
    qryQT_DongTruocDayGHI_CHU: TWideStringField;
    qryQT_DongTruocDayTILE_NOP: TIBOFloatField;
    qryQT_DongTruocDayTILE_BHXH_NLD_NOP: TIBOFloatField;
    qryQT_DongTruocDayTILE_BHYT_NLD_NOP: TIBOFloatField;
    qryQT_DongTruocDayTILE_BHXH_DN_NOP: TIBOFloatField;
    qryQT_DongTruocDayTILE_BHYT_DN_NOP: TIBOFloatField;
    qryQT_DongTruocDayTILE_BHTN_DN_NOP: TIBOFloatField;
    qryQT_DongTruocDayTILE_BHTN_NLD_NOP: TIBOFloatField;
    qryQT_DongTruocDayTT_BHXH_NLD_NOP: TIBOFloatField;
    qryQT_DongTruocDayTT_BHYT_NLD_NOP: TIBOFloatField;
    qryQT_DongTruocDayTT_BHTN_NLD_NOP: TIBOFloatField;
    qryQT_DongTruocDayTT_BHXH_DN_NOP: TIBOFloatField;
    qryQT_DongTruocDayTT_BHYT_DN_NOP: TIBOFloatField;
    qryQT_DongTruocDayTT_BHTN_DN_NOP: TIBOFloatField;
    qryQT_DongTruocDayTIENNOP_BAOHIEM: TIBOFloatField;
    dsQT_DongHienTai: TDataSource;
    dsQT_DongTruocDay: TDataSource;
    qryEmpWageStandardCHANGE_NO: TWideStringField;
    qryEmpWageCompany: TIBOQuery;
    dsEmpWageCompany: TDataSource;
    qryEmpWageCompanyWAGE_SCALE: TWideStringField;
    qryEmpWageCompanyCAREER_NAME: TWideStringField;
    qryEmpWageCompanyWAGE_LEVEL: TIntegerField;
    qryEmpWageCompanyWAGE_COEFF: TIBOFloatField;
    qryEmpWageCompanyAPPLY_MONTH: TIntegerField;
    qryEmpWageCompanyAPPLY_YEAR: TIntegerField;
    qryEmpWageCompanyAPPLY_PERIOD: TIntegerField;
    qryEmpWageCompanyPERIOD_ID: TIntegerField;
    qryEmpWageCompanyCHANGE_NO: TWideStringField;
    qryEmpListAPEC_NO: TWideStringField;
    qryEmpListAPEC_DATE: TDateField;
    qryEmpListAPEC_EXPIRED: TDateField;
    qryEmpPrivateInfoNGAY_THAMGIACM: TDateField;
    qryEmpPrivateInfoNGAY_CHUYENDANGCHINHTHUC: TDateField;
    qryEmpPrivateInfoCAPUYCAONHATDAQUA: TWideStringField;
    qryEmpPrivateInfoCAPUYHIENNAY: TWideStringField;
    qryEmpPrivateInfoDACDIEM_LICHSU: TWideStringField;
    qryEmpPrivateInfoSUCKHOE: TWideStringField;
    qryEmpPrivateInfoLYLUAN_CHINHTRI: TWideStringField;
    qryEmpPrivateInfoNGAY_NHAPNGU: TDateField;
    qryEmpPrivateInfoNGAY_XUATNGU: TDateField;
    qryEmpPrivateInfoQUANHAM: TWideStringField;
    qryEmpPrivateInfoTROCAP_XUATNGU: TIBOFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryEmpListLAST_NAMEChange(Sender: TField);
    procedure qryEmpListFIRST_NAMEChange(Sender: TField);
    procedure qryEmpListMIDDLE_NAMEChange(Sender: TField);
    procedure qryEmpListNewRecord(DataSet: TDataSet);
    procedure qryEmpAbilityNewRecord(DataSet: TDataSet);
    procedure qryEmpListRACE_NAMEChange(Sender: TField);
    procedure qryEmpListCURRENCY_NAMEChange(Sender: TField);
    procedure qryEmpListNATIONAL_NAMEChange(Sender: TField);
    procedure qryEmpListBIRTH_PLACE_NAMEChange(Sender: TField);
    procedure qryEmpListNATIVE_PLACE_NAMEChange(Sender: TField);
    procedure qryEmpListDESCENT_NAMEChange(Sender: TField);
    procedure qryEmpPrivateInfoTEN_NGHE_NGHIEPChange(Sender: TField);
    procedure qryEmpPrivateInfoTEN_TRINH_DOChange(Sender: TField);
    procedure qryEmpAbilityEDU_FIELD_NAMEChange(Sender: TField);
    procedure qryEmpAbilityFIELD_LEVEL_NAMEChange(Sender: TField);
    procedure qryRelationshipRELATIONSHIP_NAMEChange(Sender: TField);
    procedure qryBiographyNewRecord(DataSet: TDataSet);
    procedure qryRelationshipNewRecord(DataSet: TDataSet);
    procedure qryEmpOrgNewRecord(DataSet: TDataSet);
    procedure qryEmpOrgORG_NAMEChange(Sender: TField);
    procedure qryEmpListAfterPost(DataSet: TDataSet);
    procedure acRefreshMemHesoHD_QDExecute(Sender: TObject);
    procedure acTaomemHesoHD_QDExecute(Sender: TObject);
    procedure acHuymemHesoHD_QDExecute(Sender: TObject);
    procedure qryEmpListFULL_NAMEChange(Sender: TField);
    procedure qryEmpWorkHistoryBeforePost(DataSet: TDataSet);
    procedure qryEmpLanguageNewRecord(DataSet: TDataSet);
    procedure qryEmpSkillNewRecord(DataSet: TDataSet);
    procedure qryEmpLanguageLANGUAGE_NAMEChange(Sender: TField);
    procedure qryEmpLanguageLEVEL_NAMEChange(Sender: TField);
    procedure qryEmpSkillSKILL_NAMEChange(Sender: TField);
    procedure qryEmpSkillLEVEL_NAMEChange(Sender: TField);
    procedure qryEmpPrivateInfoACADEMIC_NAMEChange(Sender: TField);
    procedure qryEmpListCANHAN_KHONG_CUTRUChange(Sender: TField);
    procedure qryEmpListRELIGION_NAMEChange(Sender: TField);
    procedure qryEmpListMARRIAL_STATUS_NAMEChange(Sender: TField);
    procedure qryEmpListUSERACC_NAMEChange(Sender: TField);
  private
    { Private declarations }
    STATE: string;
  public
    { Public declarations }
    procedure OpenData;
    procedure CloseData;
  end;

var
  EmpInfoDM: TEmpInfoDM;

implementation

uses MainDM, MainUnit, EmpInfoForm, EmployeeListForm;

{$R *.dfm}

procedure TEmpInfoDM.DataModuleCreate(Sender: TObject);
begin
  ApplyOption(TControl(self));
end;

procedure TEmpInfoDM.qryEmpListLAST_NAMEChange(Sender: TField);
begin
  qryEmpListFULL_NAME.Value := Trim(qryEmpListLAST_NAME.Value) + ' ' +
    Trim(qryEmpListMIDDLE_NAME.Value) + ' ' +
    Trim(qryEmpListFIRST_NAME.Value);
end;

procedure TEmpInfoDM.qryEmpListFIRST_NAMEChange(Sender: TField);
begin
  qryEmpListFULL_NAME.Value := Trim(qryEmpListLAST_NAME.Value) + ' ' +
    Trim(qryEmpListMIDDLE_NAME.Value) + ' ' +
    Trim(qryEmpListFIRST_NAME.Value);

end;

procedure TEmpInfoDM.qryEmpListMIDDLE_NAMEChange(Sender: TField);
begin
  if qryEmpListMIDDLE_NAME.IsNull then
    qryEmpListMIDDLE_NAME.Value := '';
  qryEmpListFULL_NAME.Value := Trim(qryEmpListLAST_NAME.Value) + ' ' +
    Trim(qryEmpListMIDDLE_NAME.Value) + ' ' +
    Trim(qryEmpListFIRST_NAME.Value);

end;

procedure TEmpInfoDM.qryEmpListNewRecord(DataSet: TDataSet);
begin
  qryEmpListMIDDLE_NAME.Value := '';
  qryEmpListMIDDLE_NAME.Value := '';
  qryEmpListIS_CADIDATE.Value := 0;
  qryEmpListEMPLOYEE_NO.Value := dmMain.GenerateKeyData(200);
  STATE := 'insert';
end;

procedure TEmpInfoDM.qryEmpAbilityNewRecord(DataSet: TDataSet);
begin
  qryEmpAbilityEMPLOYEE_NO.Value := qryEmpListEMPLOYEE_NO.Value;
  qryEmpAbilityDUYET.Value := 1;
end;

procedure TEmpInfoDM.qryEmpListRACE_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'RACE_NO');
end;

procedure TEmpInfoDM.qryEmpListCURRENCY_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'CURRENCY_NO');
end;

procedure TEmpInfoDM.qryEmpListNATIONAL_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'NATIONAL_NO');
end;

procedure TEmpInfoDM.qryEmpListBIRTH_PLACE_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'BIRTH_PLACE_ID');
end;

procedure TEmpInfoDM.qryEmpListNATIVE_PLACE_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'NATIVE_PLACE_NO');
end;

procedure TEmpInfoDM.qryEmpListDESCENT_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'DESCENT_FROM');
end;

procedure TEmpInfoDM.qryEmpPrivateInfoTEN_NGHE_NGHIEPChange(
  Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'NGHE_NGHIEP');
end;

procedure TEmpInfoDM.qryEmpPrivateInfoTEN_TRINH_DOChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'TRINH_DO');
end;

procedure TEmpInfoDM.qryEmpAbilityEDU_FIELD_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'EDU_FIELD_NO');
end;

procedure TEmpInfoDM.qryEmpAbilityFIELD_LEVEL_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'FIELD_LEVEL_NO');
end;

procedure TEmpInfoDM.qryRelationshipRELATIONSHIP_NAMEChange(
  Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'RELATIONSHIP');
end;

procedure TEmpInfoDM.qryBiographyNewRecord(DataSet: TDataSet);
begin
  qryBiographyKEY_INDEX.Value := qryBiography.RecordCount;
end;

procedure TEmpInfoDM.qryRelationshipNewRecord(DataSet: TDataSet);
begin
  qryRelationshipKEY_INDEX.Value := qryRelationship.RecordCount;
end;

procedure TEmpInfoDM.qryEmpOrgNewRecord(DataSet: TDataSet);
begin
  qryEmpOrgEMPLOYEE_NO.Value := qryEmpListEMPLOYEE_NO.Value;
  qryEmpOrgKEY_INDEX.Value := qryEmpOrg.RecordCount;
end;

procedure TEmpInfoDM.qryEmpOrgORG_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'ORG_NO');
end;

procedure TEmpInfoDM.OpenData;
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TIBOQuery) then
      if not (Components[i] as TIBOQuery).Active then
        (Components[i] as TIBOQuery).Open;
  end;
end;

procedure TEmpInfoDM.CloseData;
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    try
      if (Components[i] is TIBOQuery) then
        if (Components[i] as TIBOQuery).Active then
          (Components[i] as TIBOQuery).Close;
    except
    end
  end;
end;

procedure TEmpInfoDM.qryEmpListAfterPost(DataSet: TDataSet);
begin
  if STATE = 'insert' then
  begin
    dmMain.IncreaseKeyData(200);
  end;
  STATE := '';
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TEmpInfoDM.acRefreshMemHesoHD_QDExecute(Sender: TObject);
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

procedure TEmpInfoDM.acTaomemHesoHD_QDExecute(Sender: TObject);
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

procedure TEmpInfoDM.acHuymemHesoHD_QDExecute(Sender: TObject);
var
  i: integer;
begin
  if qryDSHesoHD_QD.Active then qryDSHesoHD_QD.Close;
  for i := memHesoQD_HD.FieldCount - 1 downto 5 do
    memHesoQD_HD.Fields[i].Free;
end;

procedure TEmpInfoDM.qryEmpListFULL_NAMEChange(Sender: TField);
begin
  if not (qryEmpListLAST_NAME.IsNull or qryEmpListFIRST_NAME.IsNull) then
    if qryEmpListREGISTERED_NAME.IsNull then
      qryEmpListREGISTERED_NAME.Value := qryEmpListFULL_NAME.Value;
  qryCheck.ParamByName('LAST_NAME').Value:=qryEmpListLAST_NAME.Value;
  qryCheck.ParamByName('MIDDLE_NAME').Value:=qryEmpListMIDDLE_NAME.Value;
  qryCheck.ParamByName('FIRST_NAME').Value:=qryEmpListFIRST_NAME.Value;
  qryCheck.Open;
  if qryCheckCOUNT.Value>0 then
    HintBox(62,TfrmEmpInfo(frmEmployees.CustomForm) ,TfrmEmpInfo(frmEmployees.CustomForm).dxDBMemo1);
  qryCheck.Close;
end;

procedure TEmpInfoDM.qryEmpWorkHistoryBeforePost(DataSet: TDataSet);
begin
  qryEmpWorkHistoryKEY_ID.Value:=qryEmpWorkHistoryFROM_DATE.AsString+qryEmpWorkHistoryTO_DATE.AsString;
  dmMain.DefOnBeforePost(Dataset);
end;

procedure TEmpInfoDM.qryEmpLanguageNewRecord(DataSet: TDataSet);
begin
  qryEmpLanguageEMPLOYEE_NO.Value := qryEmpListEMPLOYEE_NO.Value;
  qryEmpLanguageDUYET.Value :=1;  
end;

procedure TEmpInfoDM.qryEmpSkillNewRecord(DataSet: TDataSet);
begin
  qryEmpSkillEMPLOYEE_NO.Value := qryEmpListEMPLOYEE_NO.Value;
  qryEmpSkillDUYET.Value := 1;  
end;

procedure TEmpInfoDM.qryEmpLanguageLANGUAGE_NAMEChange(Sender: TField);
begin
SetNullLink(Sender.DataSet, Sender.FieldName, 'LANGUAGE_NO');
end;

procedure TEmpInfoDM.qryEmpLanguageLEVEL_NAMEChange(Sender: TField);
begin
SetNullLink(Sender.DataSet, Sender.FieldName, 'LEVEL_NO');
end;

procedure TEmpInfoDM.qryEmpSkillSKILL_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'SKILL_NO');
end;

procedure TEmpInfoDM.qryEmpSkillLEVEL_NAMEChange(Sender: TField);
begin
SetNullLink(Sender.DataSet, Sender.FieldName, 'LEVEL_NO');
end;

procedure TEmpInfoDM.qryEmpPrivateInfoACADEMIC_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName,'TRINHDO_VANHOA');
end;

procedure TEmpInfoDM.qryEmpListCANHAN_KHONG_CUTRUChange(Sender: TField);
begin
  if qryEmpListCANHAN_KHONG_CUTRU.Value = 1 then
    qryEmpListNGAY_KHAIBAO_CUTRU.Clear;
end;

procedure TEmpInfoDM.qryEmpListRELIGION_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName,'RELIGION_NO');
end;

procedure TEmpInfoDM.qryEmpListMARRIAL_STATUS_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName,'MARRIAL_STATUS');
end;

procedure TEmpInfoDM.qryEmpListUSERACC_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'USERACCID');
end;

end.

