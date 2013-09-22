unit DecisionDataModule;

interface

uses
  SysUtils, Classes, ppComm, ppRelatv, ppProd, ppClass, ppReport, DB,
  IBODataset, ppEndUsr, Controls, ppDB, ppDBPipe, dxmdaset, ActnList;

type
  TDecisionDM = class(TDataModule)
    dsgDecision: TppDesigner;
    dsDecisions: TDataSource;
    dsDecision_Emp: TDataSource;
    qryDecisions: TIBOQuery;
    qryDecision_Emp: TIBOQuery;
    dsChitietBonhiem: TDataSource;
    qryChitietBonhiem: TIBOQuery;
    qryGetMainPositionList: TIBOQuery;
    qryGetMainPositionListPOSITION_NO: TWideStringField;
    qryGetMainPositionListTITLE_NAME: TWideStringField;
    qryGetMainPositionListDEPT_NAME: TWideStringField;
    qryGetMainPositionListASSIGNED_DATE: TDateField;
    qryGetMainPositionListDECISION_NO: TWideStringField;
    dsChitietThoiCV: TDataSource;
    qryChitietThoiCV: TIBOQuery;
    qryOffWork: TIBOQuery;
    dsOffWork: TDataSource;
    qryAddDeparment: TIBOQuery;
    dsAddDepartment: TDataSource;
    qryAddDeparmentDECISION_NO: TWideStringField;
    qryAddDeparmentDEPT_NO: TWideStringField;
    qryAddDeparmentCHANGE_TYPE: TWideStringField;
    qryAddDeparmentCHANGE_NOTE: TWideStringField;
    qryAddDeparmentDEPT_NAME: TWideStringField;
    qryAddDeparmentFOUNDED_DATE: TDateField;
    qryAddDeparmentENDED_DATE: TDateField;
    qryFromDept: TIBOQuery;
    dsFromDept: TDataSource;
    qryToDept: TIBOQuery;
    dsToDept: TDataSource;
    qryToDeptDECISION_NO: TWideStringField;
    qryToDeptDEPT_NO: TWideStringField;
    qryToDeptCHANGE_TYPE: TWideStringField;
    qryToDeptCHANGE_NOTE: TWideStringField;
    qryToDeptDEPT_NAME: TWideStringField;
    qryToDeptFOUNDED_DATE: TDateField;
    qryToDeptENDED_DATE: TDateField;
    dsDeleteDept: TDataSource;
    qryDeleteDept: TIBOQuery;
    qryDeleteDeptDECISION_NO: TWideStringField;
    qryDeleteDeptDEPT_NO: TWideStringField;
    qryDeleteDeptCHANGE_TYPE: TWideStringField;
    qryDeleteDeptCHANGE_NOTE: TWideStringField;
    qryDeleteDeptDEPT_NAME: TWideStringField;
    qryDeleteDeptFOUNDED_DATE: TDateField;
    qryDeleteDeptCHANGE_DATE: TDateField;
    qryRewardDecision: TIBOQuery;
    dsRewardDecision: TDataSource;
    qryRewardDecisionDECISION_NO: TWideStringField;
    qryRewardDecisionEMP_NO: TWideStringField;
    qryRewardDecisionFULL_NAME: TWideStringField;
    qryRewardDecisionREWARD_LIST_NO: TWideStringField;
    qryRewardDecisionREWARD_LIST_NAME: TWideStringField;
    qryRewardDecisionDECISION_LEVEL: TWideStringField;
    qryRewardDecisionLEVEL_NAME: TWideStringField;
    qryRewardDecisionREWARD_FORM_NO: TWideStringField;
    qryRewardDecisionREWARD_NAME: TWideStringField;
    qryRewardDecisionDSC_REWARD_NOTE: TWideStringField;
    qryDisciplineDecision: TIBOQuery;
    dsDisciplineDecision: TDataSource;
    qryDisciplineDecisionDECISION_NO: TWideStringField;
    qryDisciplineDecisionEMP_NO: TWideStringField;
    qryDisciplineDecisionFULL_NAME: TWideStringField;
    qryDisciplineDecisionDISC_LIST_NO: TWideStringField;
    qryDisciplineDecisionDISC_LIST_NAME: TWideStringField;
    qryDisciplineDecisionDECISION_LEVEL: TWideStringField;
    qryDisciplineDecisionLEVEL_NAME: TWideStringField;
    qryDisciplineDecisionDISC_FORM_NO: TWideStringField;
    qryDisciplineDecisionDISC_NAME: TWideStringField;
    qryDisciplineDecisionDSC_DISC_NOTE: TWideStringField;
    ppCanhan_ChiuTN: TppDBPipeline;
    ppChitiet_QD_Bonhiem: TppDBPipeline;
    ppChitiet_QD_ThoiCV: TppDBPipeline;
    ppChitiet_QD_Nghiviec: TppDBPipeline;
    ppChitiet_QD_ChuyenCT: TppDBPipeline;
    ppChitiet_QD_Thanhlap_Phongban: TppDBPipeline;
    ppThongtinQD: TppDBPipeline;
    ppChitiet_QD_ChuyendoiPB_TuPB: TppDBPipeline;
    ppChitiet_QD_ChuyendoiPB_DenBP: TppDBPipeline;
    ppChitiet_QD_XoaPB: TppDBPipeline;
    ppChitiet_QD_Khenthuong: TppDBPipeline;
    ppChitiet_QD_Kyluat: TppDBPipeline;
    qryFromDeptDECISION_NO: TWideStringField;
    qryFromDeptDEPT_NO: TWideStringField;
    qryFromDeptCHANGE_TYPE: TWideStringField;
    qryFromDeptCHANGE_NOTE: TWideStringField;
    qryFromDeptDEPT_NAME: TWideStringField;
    qryFromDeptFOUNDED_DATE: TDateField;
    qryFromDeptCHANGE_DATE: TDateField;
    rpDecision: TppReport;
    dsThongtinTochuc: TDataSource;
    ppThongtinTochuc: TppDBPipeline;
    qryFormalParam: TIBOQuery;
    qryFormalParamPARAM_NO: TWideStringField;
    qryFormalParamEMPLOYEE_NO: TWideStringField;
    qryFormalParamFULL_NAME: TWideStringField;
    qryFormalParamPARAM_VALUE: TIBOFloatField;
    qryFormalParamList: TIBOQuery;
    qryFormalParamListPARAM_NO: TWideStringField;
    qryFormalParamListPARAM_NAME: TWideStringField;
    qryDecisionsDECISION_NO: TWideStringField;
    qryDecisionsDECISION_DATE: TDateField;
    qryDecisionsDECISION_TITLE: TWideStringField;
    qryDecisionsDEPT_NO: TWideStringField;
    qryDecisionsDEPT_NAME: TWideStringField;
    qryDecisionsDECISION_TYPE_NO: TWideStringField;
    qryDecisionsDCS_TYPE_NAME: TWideStringField;
    qryDecisionsDECISION_SIGNER: TWideStringField;
    qryDecisionsTEMPLATE_FILE: TWideStringField;
    qryDecisionsFILE_NAME: TWideStringField;
    qryDecisionsFILE_CONTENT: TBlobField;
    qryDecisionsDECISION_NOTE: TWideStringField;
    qryDecisionsDECISION_CONTENT: TBlobField;
    qryChitietBonhiemEMPLOYEE_NO: TWideStringField;
    qryChitietBonhiemFULL_NAME: TWideStringField;
    qryChitietBonhiemPOSITION_NO: TWideStringField;
    qryChitietBonhiemPOSITION_TITLE: TWideStringField;
    qryChitietBonhiemASSIGNED_DATE: TDateField;
    qryChitietBonhiemENDED_DATE: TDateField;
    qryChitietBonhiemIS_MAIN_POSITION: TSmallintField;
    qryChitietBonhiemDECISION_NO: TWideStringField;
    qryChitietBonhiemDEPT_NO: TWideStringField;
    qryChitietBonhiemTITLE_NO: TWideStringField;
    qryChitietBonhiemDEPT_NAME: TWideStringField;
    qryChitietBonhiemTITLE_NAME: TWideStringField;
    qryChitietThoiCVDECISION_NO: TWideStringField;
    qryChitietThoiCVEMPLOYEE_NO: TWideStringField;
    qryChitietThoiCVFULL_NAME: TWideStringField;
    qryChitietThoiCVPOSITION_NO: TWideStringField;
    qryChitietThoiCVPOSITION_TITLE: TWideStringField;
    qryChitietThoiCVASSIGNED_DATE: TDateField;
    qryChitietThoiCVDISMISS_DATE: TDateField;
    qryChitietThoiCVDISMISS_NOTES: TWideStringField;
    qryChitietThoiCVDEPT_NO: TWideStringField;
    qryChitietThoiCVTITLE_NO: TWideStringField;
    qryChitietThoiCVDEPT_NAME: TWideStringField;
    qryChitietThoiCVTITLE_NAME: TWideStringField;
    qryWageStandardChange: TIBOQuery;
    dsWageStandardChange: TDataSource;
    qryWageStandardChangeCHANGE_NO: TWideStringField;
    qryWageStandardChangeCHANGE_NAME: TWideStringField;
    qryWageStandardChangeDEFAULT_MONTH: TIntegerField;
    qryWageStandardChangeDEFAULT_YEAR: TIntegerField;
    qryWageStandardChangeDEFAULT_PERIOD: TIntegerField;
    qryWageStandardChangeFROM_DECISION: TWideStringField;
    qryWageStandardChangeFROM_CONTRACT: TWideStringField;
    qryEmpStandardWage: TIBOQuery;
    dsEmpStandardWage: TDataSource;
    qryEmpStandardWageCHANGE_NO: TWideStringField;
    qryEmpStandardWageEMPLOYEE_NO: TWideStringField;
    qryEmpStandardWageWAGE_SCALE: TWideStringField;
    qryEmpStandardWageCAREER_NAME: TWideStringField;
    qryEmpStandardWageWAGE_LEVEL: TIntegerField;
    qryEmpStandardWageWAGE_COEFF: TIBOFloatField;
    qryEmpStandardWageAPPLY_MONTH: TIntegerField;
    qryEmpStandardWageAPPLY_YEAR: TIntegerField;
    qryEmpStandardWageAPPLY_PERIOD: TIntegerField;
    qryEmpStandardWagePERIOD_ID: TIntegerField;
    qryEmpStandardWageFULL_NAME: TWideStringField;
    qryDecisionsISSUE_DATE: TDateField;
    qryOffWorkResume: TIBOQuery;
    dsOffWorkResume: TDataSource;
    ppLilichNHANVIEN: TppDBPipeline;
    qryOffWorkResumeEMPLOYEE_NO: TWideStringField;
    qryOffWorkResumeFULL_NAME: TWideStringField;
    qryOffWorkResumeDEPT_NAME: TWideStringField;
    qryOffWorkResumeTITLE_NAME: TWideStringField;
    qryDecisionsQD_THAT: TSmallintField;
    qryChangePosition: TIBOQuery;
    dsChangePosition: TDataSource;
    qryExecute: TIBOQuery;
    qryOffWorkDECISION_NO: TWideStringField;
    qryOffWorkEMPLOYEE_NO: TWideStringField;
    qryOffWorkFULL_NAME: TWideStringField;
    qryOffWorkOFF_DATE: TDateField;
    qryOffWorkOFF_NOTE: TWideStringField;
    qryOffWorkBIRTH_DATE: TDateField;
    qryOffWorkGENDER: TSmallintField;
    qryOffWorkGENDER_TEXT: TWideStringField;
    qryOffWorkOFF_REASON: TWideStringField;
    qryOffWorkREASON_NAME: TWideStringField;
    qryDecision_EmpDECISION_NO: TWideStringField;
    qryDecision_EmpEMPLOYEE_NO: TWideStringField;
    qryDecision_EmpFULL_NAME: TWideStringField;
    qryDecision_EmpBIRTH_DATE: TDateField;
    qryDecision_EmpGENDER: TSmallintField;
    qryDecision_EmpGENDER_TEXT: TWideStringField;
    qryDecision_EmpGENDER_TEXT_ENG: TWideStringField;
    qryDecision_EmpEDU_LEVEL_NAME: TWideStringField;
    qryDecision_EmpCAREER_NAME: TWideStringField;
    qryDecision_EmpEMAIL: TWideStringField;
    qryDecision_EmpDEPT_NAME: TWideStringField;
    qryDecision_EmpTITLE_NAME: TWideStringField;
    qryDecision_EmpPOSITION_NAME: TWideStringField;
    qryDecision_EmpPRE_DECISION_NO: TWideStringField;
    qryDecision_EmpPRE_DECISION_DATE: TDateField;
    qryChitietBonhiemGENDER_TEXT: TWideStringField;
    qryChitietBonhiemGENDER_TEXT_ENG: TWideStringField;
    qryChitietThoiCVGENDER_TEXT: TWideStringField;
    qryChitietThoiCVGENDER_TEXT_ENG: TWideStringField;
    qryOffWorkGENDER_TEXT_ENG: TWideStringField;
    qryOffWorkDEPT_NAME: TWideStringField;
    qryOffWorkTITLE_NAME: TWideStringField;
    qryOffWorkPOSITION_NAME: TWideStringField;
    qryOffWorkCONTRACT_NO: TWideStringField;
    qryOffWorkNGAY_HETHAN_HDLD: TDateField;
    qryOffWorkNGAY_KY_HDLD: TDateField;
    qryOffWorkCONTRACT_TYPE_NAME: TWideStringField;
    qryChangePositionASS_KEY_ID: TIntegerField;
    qryChangePositionEMPLOYEE_NO: TWideStringField;
    qryChangePositionFULL_NAME: TWideStringField;
    qryChangePositionGENDER_TEXT: TWideStringField;
    qryChangePositionGENDER_TEXT_ENG: TWideStringField;
    qryChangePositionFROM_ASS_KEY_ID: TIntegerField;
    qryChangePositionPOSITION_NO: TWideStringField;
    qryChangePositionDEPT_NO: TWideStringField;
    qryChangePositionDEPT_NAME: TWideStringField;
    qryChangePositionTITLE_NO: TWideStringField;
    qryChangePositionTITLE_NAME: TWideStringField;
    qryChangePositionPOSITION_NAME: TWideStringField;
    qryChangePositionASSIGNED_DATE: TDateField;
    qryChangePositionIS_MAIN_POSITION: TSmallintField;
    qryChangePositionDECISION_NO: TWideStringField;
    qryChangePositionENDED_DATE: TDateField;
    qryChangePositionFROM_POSITION_NO: TWideStringField;
    qryChangePositionFROM_DEPT_NO: TWideStringField;
    qryChangePositionFROM_DEPT_NAME: TWideStringField;
    qryChangePositionFROM_TITLE_NO: TWideStringField;
    qryChangePositionFROM_TITLE_NAME: TWideStringField;
    qryChangePositionFROM_POSITION_NAME: TWideStringField;
    qryChangePositionFROM_ASSIGNED_DATE: TDateField;
    qryChangePositionFROM_IS_MAIN_POSITION: TSmallintField;
    qryChangePositionFROM_DISMISS_DATE: TDateField;
    qryRewardDecisionGENDER_TEXT: TWideStringField;
    qryRewardDecisionGENDER_TEXT_ENG: TWideStringField;
    qryRewardDecisionDEPT_NAME: TWideStringField;
    qryRewardDecisionTITLE_NAME: TWideStringField;
    qryRewardDecisionPOSITION_NAME: TWideStringField;
    qryDisciplineDecisionGENDER_TEXT: TWideStringField;
    qryDisciplineDecisionGENDER_TEXT_ENG: TWideStringField;
    qryDisciplineDecisionDEPT_NAME: TWideStringField;
    qryDisciplineDecisionTITLE_NAME: TWideStringField;
    qryDisciplineDecisionPOSITION_NAME: TWideStringField;
    qryEmpStandardWageGENDER_TEXT: TWideStringField;
    qryEmpStandardWageMAX_LEVEL: TIntegerField;
    qryEmpStandardWageOLD_WAGE_LEVEL: TIntegerField;
    qryEmpStandardWageOLD_WAGE_COEFF: TIBOFloatField;
    qryEmpStandardWageOLD_WAGE_SCALE: TWideStringField;
    qryEmpStandardWageOLD_CAREER_NAME: TWideStringField;
    qryEmpStandardWageOLD_MAX_LEVEL: TIntegerField;
    qryEmpStandardWageGENDER_TEXT_ENG: TWideStringField;
    qryDSHeso: TIBOQuery;
    qryDSHesoPARAM_NO: TWideStringField;
    qryDSHesoPARAM_NAME: TWideStringField;
    memHesoDikem: TdxMemData;
    dsHeso_Dikem: TDataSource;
    ppHeSoDiKemQD: TppDBPipeline;
    qryHesoDikem: TIBOQuery;
    qryHesoDikemPARAM_NO: TWideStringField;
    qryHesoDikemPARAM_NAME: TWideStringField;
    qryHesoDikemEMPLOYEE_NO: TWideStringField;
    qryHesoDikemDOC_NO: TWideStringField;
    qryHesoDikemDOC_TYPE: TWideStringField;
    qryHesoDikemPARAM_VALUE: TIBOFloatField;
    qryHesoDikemNOTE: TWideStringField;
    dsHesoDikem: TDataSource;
    qryHeSoDiKem_Cu: TIBOQuery;
    qryHeSoDiKem_CuPARAM_NO: TWideStringField;
    qryHeSoDiKem_CuPARAM_NAME: TWideStringField;
    qryHeSoDiKem_CuPARAM_VALUE: TIBOFloatField;
    DecisionActions: TActionList;
    acCreateMem: TAction;
    acRefreshMem: TAction;
    acFreeMem: TAction;
    qryEmpCompanyWage: TIBOQuery;
    qryEmpCompanyWageCHANGE_NO: TWideStringField;
    qryEmpCompanyWageFULL_NAME: TWideStringField;
    qryEmpCompanyWageEMPLOYEE_NO: TWideStringField;
    qryEmpCompanyWageWAGE_SCALE_NAME: TWideStringField;
    qryEmpCompanyWageWAGE_SCALE: TWideStringField;
    qryEmpCompanyWageWAGE_LEVEL: TIntegerField;
    qryEmpCompanyWageWAGE_COEFF: TIBOFloatField;
    qryEmpCompanyWageAPPLY_MONTH: TIntegerField;
    qryEmpCompanyWageAPPLY_YEAR: TIntegerField;
    qryEmpCompanyWageAPPLY_PERIOD: TIntegerField;
    qryEmpCompanyWagePERIOD_ID: TIntegerField;
    qryEmpCompanyWageNEXT_WAGE_SCALE: TWideStringField;
    qryEmpCompanyWageNEXT_WAGE_SCALE_NAME: TWideStringField;
    qryEmpCompanyWageNEXT_WAGE_LEVEL: TIntegerField;
    qryEmpCompanyWageNEXT_MONTH: TIntegerField;
    qryEmpCompanyWageNEXT_YEAR: TIntegerField;
    dsEmpCompanyWage: TDataSource;
    ppEmpCompanyWage: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    qryEmpStandardWageNEXT_WAGE_SCALE: TWideStringField;
    qryEmpStandardWageNEXT_CAREER_NAME: TWideStringField;
    qryEmpStandardWageNEXT_WAGE_LEVEL: TIntegerField;
    qryEmpStandardWageNEXT_MONTH: TIntegerField;
    qryEmpStandardWageNEXT_YEAR: TIntegerField;
    qryEmpCompanyWageOLD_WAGE_LEVEL: TIntegerField;
    qryEmpCompanyWageOLD_WAGE_COEFF: TIBOFloatField;
    qryEmpCompanyWageOLD_WAGE_SCALE: TWideStringField;
    qryEmpCompanyWageOLD_CAREER_NAME: TWideStringField;
    qryEmpCompanyWageOLD_MAX_LEVEL: TIntegerField;
    qryChitietBonhiemTG_GIU_CHUCVU: TIBOFloatField;
    qryOffWorkBIRTH_PLACE_ID: TWideStringField;
    qryOffWorkRESIDENT_ADDR: TWideStringField;
    qryOffWorkCONTACT_ADDR: TWideStringField;
    qryOffWorkMASO_BHXH: TWideStringField;
    qryChitietThoiCVTHOIGIAN_CHOVIEC: TIBOFloatField;
    qryChitietThoiCVNGAY_HETHAN_CHOVIEC: TDateField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryDecisionsDCS_TYPE_NAMEChange(Sender: TField);
    procedure qryDecisionsDEPT_NAMEChange(Sender: TField);
    procedure qryDecision_EmpNewRecord(DataSet: TDataSet);
    procedure qryDecisionsBeforeDelete(DataSet: TDataSet);
    procedure qryChitietBonhiemNewRecord(DataSet: TDataSet);
    procedure qryChitietBonhiemBeforePost(DataSet: TDataSet);
    procedure qryDecision_EmpFULL_NAMEChange(Sender: TField);
    procedure qryChitietBonhiemFULL_NAMEChange(Sender: TField);
    procedure qryChitietBonhiemPOSITION_TITLEChange(Sender: TField);
    procedure qryChitietThoiCVFULL_NAMEChange(Sender: TField);
    procedure qryChitietThoiCVPOSITION_TITLEChange(Sender: TField);
    procedure qryChitietThoiCVNewRecord(DataSet: TDataSet);
    procedure qryOffWorkNewRecord(DataSet: TDataSet);
    procedure qryAddDeparmentNewRecord(DataSet: TDataSet);
    procedure qryFromDeptNewRecord(DataSet: TDataSet);
    procedure qryToDeptNewRecord(DataSet: TDataSet);
    procedure qryDeleteDeptNewRecord(DataSet: TDataSet);
    procedure qryOffWorkFULL_NAMEChange(Sender: TField);
    procedure qryFromPositionsFULL_NAMEChange(Sender: TField);
    procedure qryFromPositionsPOSITION_TITLEChange(Sender: TField);
    procedure qryToPositionsFULL_NAMEChange(Sender: TField);
    procedure qryToPositionsPOSITION_TITLEChange(Sender: TField);
    procedure qryAddDeparmentDEPT_NAMEChange(Sender: TField);
    procedure qryFromDeptDEPT_NAMEChange(Sender: TField);
    procedure qryToDeptDEPT_NAMEChange(Sender: TField);
    procedure qryDeleteDeptDEPT_NAMEChange(Sender: TField);
    procedure qryRewardDecisionFULL_NAMEChange(Sender: TField);
    procedure qryRewardDecisionREWARD_LIST_NAMEChange(Sender: TField);
    procedure qryRewardDecisionLEVEL_NAMEChange(Sender: TField);
    procedure qryRewardDecisionREWARD_NAMEChange(Sender: TField);
    procedure qryDisciplineDecisionFULL_NAMEChange(Sender: TField);
    procedure qryDisciplineDecisionDISC_LIST_NAMEChange(Sender: TField);
    procedure qryDisciplineDecisionLEVEL_NAMEChange(Sender: TField);
    procedure qryDisciplineDecisionDISC_NAMEChange(Sender: TField);
    procedure OpenDecisionData;
    procedure CloseDecisionData;
    procedure qryChitietBonhiemAfterPost(DataSet: TDataSet);
    procedure qryDecisionsNewRecord(DataSet: TDataSet);
    procedure qryDecisionsAfterPost(DataSet: TDataSet);
    procedure ViewDecision(DECISION_NO: Variant);
    procedure qryEmpStandardWageNewRecord(DataSet: TDataSet);
    procedure qryWageStandardChangeNewRecord(DataSet: TDataSet);
    procedure qryEmpStandardWageFULL_NAMEChange(Sender: TField);
    procedure qryEmpStandardWageCAREER_NAMEChange(Sender: TField);
    procedure qryFromDeptBeforePost(DataSet: TDataSet);
    procedure qryDeleteDeptBeforePost(DataSet: TDataSet);
    procedure qryChangePositionNewRecord(DataSet: TDataSet);
    procedure qryChangePositionBeforePost(DataSet: TDataSet);
    procedure qryChangePositionAfterPost(DataSet: TDataSet);
    procedure acCreateMemExecute(Sender: TObject);
    procedure acRefreshMemExecute(Sender: TObject);
    procedure acFreeMemExecute(Sender: TObject);
    procedure qryDecision_EmpAfterScroll(DataSet: TDataSet);
    procedure qryEmpCompanyWageNewRecord(DataSet: TDataSet);
    procedure qryEmpCompanyWageAfterPost(DataSet: TDataSet);
    procedure qryEmpStandardWageAfterPost(DataSet: TDataSet);
    procedure qryChitietThoiCVTHOIGIAN_CHOVIECChange(Sender: TField);
    procedure qryChitietThoiCVDISMISS_DATEChange(Sender: TField);
  private
    { Private declarations }
    something_change: boolean;
    bookmark: TBookmark;
    STATE: string;
  public
    { Public declarations }
  end;

var
  DecisionDM: TDecisionDM;

implementation

uses MainDM, DateUtils, CanhbaoVitriCTForm, Forms, DecisionMakerForm;

{$R *.dfm}

procedure TDecisionDM.ViewDecision(DECISION_NO: Variant);
var
  is_open: boolean;
  SQL_Where: string;
begin
  inherited;
  if Length(DECISION_NO) > 0 then
  begin
    if qryDecisions.Active then
    begin
      is_open := true;
      SQL_Where := qryDecisions.SQLWhere.Text;
      CloseDecisionData;
    end
    else

      is_open := false;
    qryDecisions.SQLWhere.Text := 'where HR_DECISION.DECISION_NO=:DECISION_NO';
    qryDecisions.Prepare;
    qryDecisions.ParamByName('DECISION_NO').Value := DECISION_NO;
    OpenDecisionData;
  end;

  if qryDecisions.IsEmpty then
    ShowMessageUnicode(43)
  else
  begin
    with TfrmDecisionMaker.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
  end;

  if (Length(DECISION_NO) > 0) then
  begin
    CloseDecisionData;
    qryDecisions.SQLWhere.Clear;
    if is_open = true then
    begin
      qryDecisions.SQLWhere.Text := SQL_Where;
      OpenDecisionData;
    end;
  end;
end;

procedure TDecisionDM.OpenDecisionData;
var
  i: integer;
begin
  for i := 0 to DecisionDM.ComponentCount - 1 do
  begin
    if (Components[i] is TIBOQuery) then
      if (not (Components[i] as TIBOQuery).Active) and (Components[i].Name <> 'qryExecute') then
        (Components[i] as TIBOQuery).Open;
  end;
end;

procedure TDecisionDM.CloseDecisionData;
var
  i: integer;
begin
  for i := 0 to DecisionDM.ComponentCount - 1 do
  begin
    try
      if Assigned(Components[i]) then
        if (Components[i] is TIBOQuery) then
          if (Components[i] as TIBOQuery).Active then
            (Components[i] as TIBOQuery).Close;
    except
      exit;
    end
  end;
end;

procedure TDecisionDM.DataModuleCreate(Sender: TObject);
begin
  ApplyOption(TControl(self));
end;

procedure TDecisionDM.qryDecisionsDCS_TYPE_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'DECISION_TYPE_NO');
end;

procedure TDecisionDM.qryDecisionsDEPT_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'DEPT_NO');
end;

procedure TDecisionDM.qryDecision_EmpNewRecord(DataSet: TDataSet);
begin
  qryDecision_EmpDECISION_NO.Value := qryDecisionsDECISION_NO.Value;
end;

procedure TDecisionDM.qryDecisionsBeforeDelete(DataSet: TDataSet);
begin
  // de trong - tranh gan' ham mac dinh ONBEFOREDELETE
end;

procedure TDecisionDM.qryChitietBonhiemNewRecord(DataSet: TDataSet);
begin
//---------- tyntb -----------------------------------------------//
// mac dinh Ngay bo nhiem = Ngay ra QD --------------------------
//  qryChitietBonhiemASSIGNED_DATE.Value := Today;
  qryChitietBonhiemASSIGNED_DATE.Value := qryDecisionsDECISION_DATE.Value;
  qryChitietBonhiemIS_MAIN_POSITION.Value := 1;
  qryChitietBonhiemDECISION_NO.Value := qryDecisionsDECISION_NO.Value;
end;

procedure TDecisionDM.qryChitietBonhiemBeforePost(DataSet: TDataSet);
begin
  something_change := false;
  if not CheckRequiredFields(DataSet) then
    Abort
  else
    if (qryChitietBonhiemENDED_DATE.IsNull = false) and
    (qryChitietBonhiemENDED_DATE.Value < qryChitietBonhiemASSIGNED_DATE.Value)
      then
  begin
    ShowHintBoxInComponent(GetFormUseDataset(qryChitietBonhiem),
      qryChitietBonhiem, 'ENDED_DATE', 44);
    Abort;
  end
  else
    if (qryChitietBonhiemIS_MAIN_POSITION.Value = 1) then
    // kiem tra xem da co chuc vu chinh thuc nao chua?
  begin
    if qryGetMainPositionList.Active then
      qryGetMainPositionList.Close;
    qryGetMainPositionList.ParamByName('EMPLOYEE_NO').Value :=
      qryChitietBonhiemEMPLOYEE_NO.Value;
    qryGetMainPositionList.Open;
    if qryGetMainPositionList.RecordCount > 0 then
    begin
      if (qryGetMainPositionList.RecordCount = 1) and
        (qryGetMainPositionListPOSITION_NO.Value =
        qryChitietBonhiemPOSITION_NO.Value) then
      begin
        // ok : khong co van de gi
      end
      else
        with TfrmCanhbaoVitriCT.Create(self) do
        try
          labelFULL_NAME.Caption := qryChitietBonhiemFULL_NAME.Value;
          labelTITLE_NAME.Caption := qryGetMainPositionListTITLE_NAME.Value;
          labelDEPT_NAME.Caption := qryGetMainPositionListDEPT_NAME.Value;
          labelASSIGNED_DATE.Caption :=
            qryGetMainPositionListASSIGNED_DATE.AsString;
          if ShowModal <> mrOK then
          begin
            qryChitietBonhiemIS_MAIN_POSITION.Value := 0;
          end
          else
          begin
            something_change := true;
            bookmark := qryChitietBonhiem.GetBookmark;
          end;
        finally
          Free;
        end;
    end;
  end;
end;

procedure TDecisionDM.qryDecision_EmpFULL_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'EMPLOYEE_NO');
end;

procedure TDecisionDM.qryChitietBonhiemFULL_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'EMPLOYEE_NO');
end;

procedure TDecisionDM.qryChitietBonhiemPOSITION_TITLEChange(
  Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'POSITION_NO');
end;

procedure TDecisionDM.qryChitietThoiCVFULL_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'EMPLOYEE_NO');
end;

procedure TDecisionDM.qryChitietThoiCVPOSITION_TITLEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'POSITION_NO');
end;

procedure TDecisionDM.qryChitietThoiCVNewRecord(DataSet: TDataSet);
begin
//---------- tyntb: mac dinh Ngay Thoi Viec = Ngay ra QD ----------------------//
//  qryChitietThoiCVDISMISS_DATE.Value := Today;
  qryChitietThoiCVDISMISS_DATE.Value := qryDecisionsDECISION_DATE.Value;

end;

procedure TDecisionDM.qryOffWorkNewRecord(DataSet: TDataSet);
begin
//---------------- tyntb: mac dinh Ngay Thoi Viec = Ngay ra QD ------------------
//  qryOffWorkOFF_DATE.Value := Today;
  qryOffWorkOFF_DATE.Value := qryDecisionsDECISION_DATE.Value;
  qryOffWorkDECISION_NO.Value := qryDecisionsDECISION_NO.Value;
end;

procedure TDecisionDM.qryAddDeparmentNewRecord(DataSet: TDataSet);
begin
//------------ tyntb: mac dinh Ngay thanh lap phong ban = Ngay ra QD ------------
  qryAddDeparmentFOUNDED_DATE.Value := qryDecisionsDECISION_DATE.Value;
  
  qryAddDeparmentDECISION_NO.Value := qryDecisionsDECISION_NO.Value;
  qryAddDeparmentCHANGE_TYPE.Value := 'NEW';
end;

procedure TDecisionDM.qryFromDeptNewRecord(DataSet: TDataSet);
begin
//------------ tyntb: mac dinh Ngay Ket thuc PB = Ngay ra QD -----------
//  qryFromDeptCHANGE_DATE.Value := Today;
  qryFromDeptCHANGE_DATE.Value := qryDecisionsDECISION_DATE.Value;

  qryFromDeptDECISION_NO.Value := qryDecisionsDECISION_NO.Value;
  qryFromDeptCHANGE_TYPE.Value := 'REMOVE';

end;

procedure TDecisionDM.qryToDeptNewRecord(DataSet: TDataSet);
begin
//------------ tyntb: mac dinh Ngay Thanh lap PB = Ngay ra QD -----------
  qryToDeptFOUNDED_DATE.Value := qryDecisionsDECISION_DATE.Value;
  
  qryToDeptDECISION_NO.Value := qryDecisionsDECISION_NO.Value;
  qryToDeptCHANGE_TYPE.Value := 'NEW';
end;

procedure TDecisionDM.qryDeleteDeptNewRecord(DataSet: TDataSet);
begin
//--------------- tyntb: mac dinh Ngay Cham dut PB = Ngay ra QD -----------
//  qryDeleteDeptCHANGE_DATE.Value := Today;
  qryDeleteDeptCHANGE_DATE.Value := qryDecisionsDECISION_DATE.Value;

  qryDeleteDeptDECISION_NO.Value := qryDecisionsDECISION_NO.Value;
  qryDeleteDeptCHANGE_TYPE.Value := 'REMOVE';

end;

procedure TDecisionDM.qryOffWorkFULL_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'EMPLOYEE_NO');
end;

procedure TDecisionDM.qryFromPositionsFULL_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'EMPLOYEE_NO');
end;

procedure TDecisionDM.qryFromPositionsPOSITION_TITLEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'POSITION_NO');
end;

procedure TDecisionDM.qryToPositionsFULL_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'EMPLOYEE_NO');
end;

procedure TDecisionDM.qryToPositionsPOSITION_TITLEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'POSITION_NO');
end;

procedure TDecisionDM.qryAddDeparmentDEPT_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'DEPT_NO');
end;

procedure TDecisionDM.qryFromDeptDEPT_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'DEPT_NO');
end;

procedure TDecisionDM.qryToDeptDEPT_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'DEPT_NO');
end;

procedure TDecisionDM.qryDeleteDeptDEPT_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'DEPT_NO');
end;

procedure TDecisionDM.qryRewardDecisionFULL_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'EMP_NO');
end;

procedure TDecisionDM.qryRewardDecisionREWARD_LIST_NAMEChange(
  Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'REWARD_LIST_NO');
end;

procedure TDecisionDM.qryRewardDecisionLEVEL_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'DECISION_LEVEL');
end;

procedure TDecisionDM.qryRewardDecisionREWARD_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'REWARD_FORM_NO');
end;

procedure TDecisionDM.qryDisciplineDecisionFULL_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'EMP_NO');
end;

procedure TDecisionDM.qryDisciplineDecisionDISC_LIST_NAMEChange(
  Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'DISC_LIST_NO');
end;

procedure TDecisionDM.qryDisciplineDecisionLEVEL_NAMEChange(
  Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'DECISION_LEVEL');
end;

procedure TDecisionDM.qryDisciplineDecisionDISC_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'DISC_FORM_NO');
end;

procedure TDecisionDM.qryChitietBonhiemAfterPost(DataSet: TDataSet);
begin
  if something_change then
  begin
    qryChitietBonhiem.Refresh;
    something_change := false;
  end;
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TDecisionDM.qryDecisionsNewRecord(DataSet: TDataSet);
begin
  STATE := 'insert';
  qryDecisionsDECISION_NO.Value := dmMain.GenerateKeyData(202);
  qryDecisionsQD_THAT.Value := 1;
end;

procedure TDecisionDM.qryDecisionsAfterPost(DataSet: TDataSet);
begin
  if STATE = 'insert' then
  begin

    dmMain.IncreaseKeyData(202);
  end;
  STATE := '';
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TDecisionDM.qryEmpStandardWageNewRecord(DataSet: TDataSet);
begin
  qryEmpStandardWageCHANGE_NO.Value := qryWageStandardChangeCHANGE_NO.Value;
  qryEmpStandardWageAPPLY_MONTH.Value :=
    qryWageStandardChangeDEFAULT_MONTH.Value;
  qryEmpStandardWageAPPLY_YEAR.Value := qryWageStandardChangeDEFAULT_YEAR.Value;
  qryEmpStandardWageAPPLY_PERIOD.Value :=
    qryWageStandardChangeDEFAULT_PERIOD.Value;
end;

procedure TDecisionDM.qryWageStandardChangeNewRecord(DataSet: TDataSet);
begin
  qryWageStandardChangeCHANGE_NO.Value := qryDecisionsDECISION_NO.Value;
  qryWageStandardChangeFROM_DECISION.Value := qryDecisionsDECISION_NO.Value;
  qryWageStandardChangeCHANGE_NAME.Value := qryDecisionsDECISION_TITLE.Value;
  qryWageStandardChangeDEFAULT_MONTH.Value :=
    MonthOf(qryDecisionsDECISION_DATE.Value);
  qryWageStandardChangeDEFAULT_YEAR.Value :=
    YearOf(qryDecisionsDECISION_DATE.Value);
  qryWageStandardChangeDEFAULT_PERIOD.Value := 1;
end;

procedure TDecisionDM.qryEmpStandardWageFULL_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'EMPLOYEE_NO');
end;

procedure TDecisionDM.qryEmpStandardWageCAREER_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'WAGE_SCALE');
  SetNullLink(Sender.DataSet, Sender.FieldName, 'WAGE_LEVEL');
  SetNullLink(Sender.DataSet, Sender.FieldName, 'WAGE_COEFF');
end;

procedure TDecisionDM.qryFromDeptBeforePost(DataSet: TDataSet);
begin
  if qryFromDeptCHANGE_DATE.Value<=qryFromDeptFOUNDED_DATE.Value then
    qryFromDeptCHANGE_DATE.Clear;
  dmMain.DefOnBeforePost(DataSet);
end;

procedure TDecisionDM.qryDeleteDeptBeforePost(DataSet: TDataSet);
begin
  if qryDeleteDeptCHANGE_DATE.Value<=qryDeleteDeptFOUNDED_DATE.Value then
    qryDeleteDeptCHANGE_DATE.Clear;
  dmMain.DefOnBeforePost(DataSet);
end;

procedure TDecisionDM.qryChangePositionNewRecord(DataSet: TDataSet);
begin
  //added by THUYPTP - 24/4/2009
  //Mac dinh ngay vi tri moi la ngay ra QD
  qryChangePositionASSIGNED_DATE.Value := qryDecisionsDECISION_DATE.value;
  qryChangePositionIS_MAIN_POSITION.Value := 1;
end;

procedure TDecisionDM.qryChangePositionBeforePost(DataSet: TDataSet);
begin
  something_change := false;
  if not CheckRequiredFields(DataSet) then
    Abort
  else
  if (qryChangePositionASSIGNED_DATE.IsNull = false) and
    (qryChangePositionASSIGNED_DATE.Value < qryChangePositionFROM_ASSIGNED_DATE.Value) then
    begin
      ShowHintBoxInComponent(GetFormUseDataset(qryChangePosition), qryChangePosition,
        'ASSIGNED_DATE', 44);
      Abort;
    end
  else if (qryChangePositionASSIGNED_DATE.IsNull = false) then
    begin
      //Cap nhat ngay nghi cho vi tri cu
      qryExecute.SQL.Clear;
      qryExecute.SQL.Text := 'update hr_assignment set dismiss_date = :DIMISS_DATE where ass_key_id = :ASS_KEY_ID';
      qryExecute.ParamByName('DIMISS_DATE').Value := qryChangePositionASSIGNED_DATE.Value -1;
      qryExecute.ParamByName('ASS_KEY_ID').Value := qryChangePositionFROM_ASS_KEY_ID.Value;
      qryChangePositionFROM_DISMISS_DATE.Value :=  qryChangePositionASSIGNED_DATE.Value -1;
      try
        qryExecute.ExecSQL;
        dmMain.CommitTransaction;
      except
        dmMain.RollbackTransaction;
        abort;
      end;
    end
  else
    if (qryChangePositionIS_MAIN_POSITION.Value = 1) then
    // kiem tra xem da co chuc vu chinh thuc nao chua?
    begin
      if qryGetMainPositionList.Active then
        qryGetMainPositionList.Close;
      qryGetMainPositionList.ParamByName('EMPLOYEE_NO').Value :=
        qryChangePositionEMPLOYEE_NO.Value;
      qryGetMainPositionList.Open;
      if qryGetMainPositionList.RecordCount > 0 then
      begin
        with TfrmCanhbaoVitriCT.Create(self) do
        try
          labelFULL_NAME.Caption := qryChangePositionFULL_NAME.Value;
          labelTITLE_NAME.Caption := qryGetMainPositionListTITLE_NAME.Value;
          labelDEPT_NAME.Caption := qryGetMainPositionListDEPT_NAME.Value;
          labelASSIGNED_DATE.Caption :=
            qryGetMainPositionListASSIGNED_DATE.AsString;
          if ShowModal <> mrOK then
            qryChangePositionIS_MAIN_POSITION.Value := 0
          else
          begin
            something_change := true;
            bookmark := qryChangePosition.GetBookmark;
          end;
        finally
          Free;
        end;
      end;
  end;
end;

procedure TDecisionDM.qryChangePositionAfterPost(DataSet: TDataSet);
begin
  if something_change then
  begin
    qryChangePosition.Close;
    qryChangePosition.Open;
    something_change := false;
    qryChangePosition.GotoBookmark(bookmark);
  end;
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TDecisionDM.acCreateMemExecute(Sender: TObject);
var i:integer;
    f:TFloatField;
begin
  if memHesoDikem.Active then memHesoDikem.Close;
  if memHesoDikem.FieldCount>1 then
    for i:=memHesoDikem.FieldCount-1 downto 1 do memHesoDikem.Fields[i].Free;
  qryDSHeso.Open;
  if not qryDSHeso.IsEmpty then
  begin
    qryDSHeso.First;
    while not qryDSHeso.Eof do
    begin
      //Muc luong hien hanh
      f:=TFloatField.Create(memHesoDikem);
      f.Name:='memHesoDikem'+qryDSHesoPARAM_NO.AsString;
      f.FieldName:=qryDSHesoPARAM_NO.AsString;
      f.SetFieldType(ftFloat);
      f.DataSet:=memHesoDikem;
      f.FieldKind := fkData;
      f.DisplayFormat := sysConfig.FloatFormat;

      //Muc luong truoc do
      f:=TFloatField.Create(memHesoDikem);
      f.Name:='memHesoDikem'+qryDSHesoPARAM_NO.AsString + '_CU';
      f.FieldName:=qryDSHesoPARAM_NO.AsString + '_CU';
      f.SetFieldType(ftFloat);
      f.DataSet:=memHesoDikem;
      f.FieldKind := fkData;
      f.DisplayFormat := sysConfig.FloatFormat;

      qryDSHeso.Next;
    end;
  end;
  qryDSHeso.Close;
end;

procedure TDecisionDM.acRefreshMemExecute(Sender: TObject);
begin
  if qryHeSoDiKem_Cu.Active then qryHeSoDiKem_Cu.Close;
  qryHeSoDiKem_Cu.ParamByName('EMPLOYEE_NO').Value := qryDecision_EmpEMPLOYEE_NO.Value;
  qryHeSoDiKem_Cu.ParamByName('DECISION_NO').Value := qryDecision_EmpDECISION_NO.Value;
  qryHeSoDiKem_Cu.Open;           

  if memHesoDikem.Active then
    memHesoDikem.Close;
  memHesoDikem.Open;
  if not qryHesoDikem.IsEmpty then
  begin
    memHesoDikem.Insert;
    qryHEsoDikem.First;
    while not qryHesoDikem.Eof do
    begin
      try
        //Muc luong hien hanh
        memHesoDikem.FieldByName(qryHesoDikemPARAM_NO.AsString).Value:=
          qryHesoDikemPARAM_VALUE.Value;

        //Muc luong truoc do
        qryHeSoDiKem_Cu.Locate('PARAM_NO',qryHesoDikemPARAM_NO.AsString,[]);
        memHesoDikem.FieldByName(qryHesoDikemPARAM_NO.AsString + '_CU').Value:=
          qryHeSoDiKem_CuPARAM_VALUE.Value;
      except
      end;
      qryHesoDikem.Next;
    end;
    memHesoDikem.Post;
  end;
end;

procedure TDecisionDM.acFreeMemExecute(Sender: TObject);
var i:integer;
begin
   if memHesoDikem.Active then memHesoDikem.Close;
  if memHesoDikem.FieldCount>1 then
    for i:=memHesoDikem.FieldCount-1 downto 1 do memHesoDikem.Fields[i].Free;
end;

procedure TDecisionDM.qryDecision_EmpAfterScroll(DataSet: TDataSet);
begin
  acRefreshMem.Execute;
end;

procedure TDecisionDM.qryEmpCompanyWageNewRecord(DataSet: TDataSet);
begin
  qryEmpCompanyWageCHANGE_NO.Value := qryWageStandardChangeCHANGE_NO.Value;
  qryEmpCompanyWageAPPLY_MONTH.Value :=
    qryWageStandardChangeDEFAULT_MONTH.Value;
  qryEmpCompanyWageAPPLY_YEAR.Value := qryWageStandardChangeDEFAULT_YEAR.Value;
  qryEmpCompanyWageAPPLY_PERIOD.Value :=
    qryWageStandardChangeDEFAULT_PERIOD.Value;
end;

procedure TDecisionDM.qryEmpCompanyWageAfterPost(DataSet: TDataSet);
begin
  dmMain.DefOnAfterPost(dataset);
  qryEmpCompanyWage.Refresh;
end;

procedure TDecisionDM.qryEmpStandardWageAfterPost(DataSet: TDataSet);
begin
  dmMain.DefOnAfterPost(dataset);
  qryEmpStandardWage.Refresh;
end;

procedure TDecisionDM.qryChitietThoiCVTHOIGIAN_CHOVIECChange(
  Sender: TField);
begin
  qryChitietThoiCVNGAY_HETHAN_CHOVIEC.Value :=
    qryChitietThoiCVDISMISS_DATE.Value + qryChitietThoiCVTHOIGIAN_CHOVIEC.Value * 30;
end;

procedure TDecisionDM.qryChitietThoiCVDISMISS_DATEChange(Sender: TField);
begin
  qryChitietThoiCVNGAY_HETHAN_CHOVIEC.Value :=
    qryChitietThoiCVDISMISS_DATE.Value + qryChitietThoiCVTHOIGIAN_CHOVIEC.Value * 30;
end;

end.

