unit PopupMainForm;

interface                           

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  dxTL, dxDBCtrl, dxDBGrid, DB, IBODataset, ElBtnCtl, ElPopBtn,
  dxLayoutControl, dxCntner, cxControls, dxDBTL, dxDBTLCl, dxGrClms,
  dxEditor, dxEdLib;

type
  TfrmPopupMain = class(TfrmBase)
    dxLayoutMauGroup_Root: TdxLayoutGroup;
    dxLayoutMau: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    dxLayoutMauItem1: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutMauItem2: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutMauItem3: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutMauItem4: TdxLayoutItem;
    dxLayoutMauGroup1: TdxLayoutGroup;
    dxlcDeptTypeList: TdxLayoutControl;
    dxDBGrid2: TdxDBGrid;
    ElPopupButton4: TElPopupButton;
    ElPopupButton5: TElPopupButton;
    ElPopupButton6: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    qryDeptList: TIBOQuery;
    dsDeptList: TDataSource;
    dxlcMau2: TdxLayoutControl;
    ElPopupButton7: TElPopupButton;
    ElPopupButton8: TElPopupButton;
    ElPopupButton9: TElPopupButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxDBTreeList1: TdxDBTreeList;
    dxlcMau2Item1: TdxLayoutItem;
    dxlcMau2Group1: TdxLayoutGroup;
    qryDeptTypeList: TIBOQuery;
    qryDeptTypeListDEPT_TYPE_NO: TWideStringField;
    qryDeptTypeListDEPT_TYPE_NAME: TWideStringField;
    qryDeptTypeListDEPT_TYPE_NOTE: TWideStringField;
    dsDeptTypeList: TDataSource;
    dxDBGrid2DEPT_TYPE_NO: TdxDBGridColumn;
    dxDBGrid2DEPT_TYPE_NAME: TdxDBGridColumn;
    dxlcDeptList: TdxLayoutControl;
    btnShowDeptList: TElPopupButton;
    ElPopupButton11: TElPopupButton;
    ElPopupButton12: TElPopupButton;
    dxtlDeptList: TdxDBTreeList;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    qryDeptListDEPT_NO: TWideStringField;
    qryDeptListDEPT_TYPE_NO: TWideStringField;
    qryDeptListDEPT_TYPE_NAME: TWideStringField;
    qryDeptListDEPT_NAME: TWideStringField;
    qryDeptListP_DEPT_NO: TWideStringField;
    qryDeptListP_DEPT_NAME: TWideStringField;
    qryDeptListFOUNDED_DATE: TDateField;
    qryDeptListENDED_DATE: TDateField;
    qryDeptListDEPT_ADDRESS: TWideStringField;
    qryDeptListDEPT_PHONE: TWideStringField;
    qryDeptListDEPT_EMAIL: TWideStringField;
    qryDeptListDEPT_WEBSITE: TWideStringField;
    qryDeptListDEPT_FAX: TWideStringField;
    qryDeptListDEPT_NOTE: TWideStringField;
    dxtlDeptListDEPT_NAME: TdxDBTreeListColumn;
    qryTitleList: TIBOQuery;
    qryTitleListTITLE_NO: TWideStringField;
    qryTitleListTITLE_NAME: TWideStringField;
    qryTitleListTITLE_NOTE: TWideStringField;
    dsTitleList: TDataSource;
    dxlcTitleList: TdxLayoutControl;
    dxDBGrid3: TdxDBGrid;
    ElPopupButton10: TElPopupButton;
    ElPopupButton13: TElPopupButton;
    ElPopupButton14: TElPopupButton;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxDBGrid3TITLE_NO: TdxDBGridColumn;
    dxDBGrid3TITLE_NAME: TdxDBGridColumn;
    dxlcWorkType: TdxLayoutControl;
    dxDBGrid4: TdxDBGrid;
    ElPopupButton15: TElPopupButton;
    ElPopupButton16: TElPopupButton;
    ElPopupButton17: TElPopupButton;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    qryWorkTypeList: TIBOQuery;
    qryWorkTypeListWORK_TYPE_NO: TWideStringField;
    qryWorkTypeListWORK_TYPE_NAME: TWideStringField;
    qryWorkTypeListWORK_TYPE_NOTES: TWideStringField;
    dsWorkTypeList: TDataSource;
    dxDBGrid4WORK_TYPE_NO: TdxDBGridColumn;
    dxDBGrid4WORK_TYPE_NAME: TdxDBGridColumn;
    dsLocationType: TDataSource;
    qryLocationType: TIBOQuery;
    qryLocationTypeLOCATION_TYPE_NO: TWideStringField;
    qryLocationTypeLOCATION_TYPE_NAME: TWideStringField;
    qryLocationTypeLOCATION_TYPE_NOTE: TWideStringField;
    dxlcLocationTypeList: TdxLayoutControl;
    dxDBGrid5: TdxDBGrid;
    ElPopupButton18: TElPopupButton;
    ElPopupButton19: TElPopupButton;
    ElPopupButton20: TElPopupButton;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxDBGrid5LOCATION_TYPE_NO: TdxDBGridMaskColumn;
    dxDBGrid5LOCATION_TYPE_NAME: TdxDBGridMaskColumn;
    qryNationList: TIBOQuery;
    qryNationListNATION_NO: TWideStringField;
    qryNationListNATION_NAME: TWideStringField;
    qryNationListNATION_NOTE: TWideStringField;
    dsNationList: TDataSource;
    dxlcNationList: TdxLayoutControl;
    dxDBGrid6: TdxDBGrid;
    ElPopupButton21: TElPopupButton;
    ElPopupButton22: TElPopupButton;
    ElPopupButton23: TElPopupButton;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxDBGrid6NATION_NO: TdxDBGridMaskColumn;
    dxDBGrid6NATION_NAME: TdxDBGridMaskColumn;
    dsCareerTypeList: TDataSource;
    qryCareerTypeList: TIBOQuery;
    qryCareerTypeListCAREER_TYPE_NO: TWideStringField;
    qryCareerTypeListCAREER_TYPE_NAME: TWideStringField;
    qryCareerTypeListCARRER_TYPE_NOTE: TWideStringField;
    dxlcCareerTypeList: TdxLayoutControl;
    dxDBGrid7: TdxDBGrid;
    ElPopupButton24: TElPopupButton;
    ElPopupButton25: TElPopupButton;
    ElPopupButton26: TElPopupButton;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    dxDBGrid7CAREER_TYPE_NO: TdxDBGridMaskColumn;
    dxDBGrid7CAREER_TYPE_NAME: TdxDBGridMaskColumn;
    dsCurrencyList: TDataSource;
    qryCurrencyList: TIBOQuery;
    qryCurrencyListCURRENCY_NO: TWideStringField;
    qryCurrencyListCURRENCY_NAME: TWideStringField;
    qryCurrencyListCURRENCY_NOTE: TWideStringField;
    dxlcCurrencyList: TdxLayoutControl;
    dxDBGrid8: TdxDBGrid;
    btnCurrencyList: TElPopupButton;
    ElPopupButton28: TElPopupButton;
    ElPopupButton29: TElPopupButton;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    dxDBGrid8CURRENCY_NO: TdxDBGridMaskColumn;
    dxDBGrid8CURRENCY_NAME: TdxDBGridMaskColumn;
    dxlcRaceList: TdxLayoutControl;
    dxDBGrid9: TdxDBGrid;
    ElPopupButton27: TElPopupButton;
    ElPopupButton30: TElPopupButton;
    ElPopupButton31: TElPopupButton;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutItem39: TdxLayoutItem;
    dsRaceList: TDataSource;
    qryRaceList: TIBOQuery;
    qryRaceListRACE_NO: TWideStringField;
    qryRaceListRACE_NAME: TWideStringField;
    qryRaceListRACE_NOTE: TWideStringField;
    dxDBGrid9RACE_NO: TdxDBGridMaskColumn;
    dxDBGrid9RACE_NAME: TdxDBGridMaskColumn;
    dxlcReligionList: TdxLayoutControl;
    dxDBGrid10: TdxDBGrid;
    ElPopupButton32: TElPopupButton;
    ElPopupButton33: TElPopupButton;
    ElPopupButton34: TElPopupButton;
    dxLayoutGroup20: TdxLayoutGroup;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutGroup21: TdxLayoutGroup;
    dxLayoutItem41: TdxLayoutItem;
    dxLayoutItem42: TdxLayoutItem;
    dxLayoutItem43: TdxLayoutItem;
    dsReligionList: TDataSource;
    qryReligionList: TIBOQuery;
    qryReligionListRELIGION_NO: TWideStringField;
    qryReligionListRELIGION_NAME: TWideStringField;
    qryReligionListRELIGION_NOTE: TWideStringField;
    dxDBGrid10RELIGION_NO: TdxDBGridMaskColumn;
    dxDBGrid10RELIGION_NAME: TdxDBGridMaskColumn;
    dxlcLocationList: TdxLayoutControl;
    ElPopupButton35: TElPopupButton;
    ElPopupButton36: TElPopupButton;
    ElPopupButton37: TElPopupButton;
    dxDBTreeList2: TdxDBTreeList;
    dxLayoutGroup22: TdxLayoutGroup;
    dxLayoutItem44: TdxLayoutItem;
    dxLayoutGroup23: TdxLayoutGroup;
    dxLayoutItem45: TdxLayoutItem;
    dxLayoutItem46: TdxLayoutItem;
    dxLayoutItem47: TdxLayoutItem;
    dsLocationList: TDataSource;
    qryLocationList: TIBOQuery;
    qryLocationListITEM_ID: TWideStringField;
    qryLocationListP_ITEM_ID: TWideStringField;
    qryLocationListNATION_NAME: TWideStringField;
    qryLocationListLOCATION_NO: TWideStringField;
    qryLocationListLOCATION_NAME: TWideStringField;
    qryLocationListLOCATION_FULL_NAME: TWideStringField;
    dxDBTreeList2NATION_NAME: TdxDBTreeListMaskColumn;
    dxDBTreeList2LOCATION_NO: TdxDBTreeListMaskColumn;
    dxDBTreeList2LOCATION_NAME: TdxDBTreeListMaskColumn;
    dxlcDescentList: TdxLayoutControl;
    dxDBGrid11: TdxDBGrid;
    ElPopupButton38: TElPopupButton;
    ElPopupButton39: TElPopupButton;
    ElPopupButton40: TElPopupButton;
    dxLayoutGroup24: TdxLayoutGroup;
    dxLayoutItem48: TdxLayoutItem;
    dxLayoutGroup25: TdxLayoutGroup;
    dxLayoutItem49: TdxLayoutItem;
    dxLayoutItem50: TdxLayoutItem;
    dxLayoutItem51: TdxLayoutItem;
    dsDescentList: TDataSource;
    qryDescentList: TIBOQuery;
    qryDescentListDESCENT_NO: TWideStringField;
    qryDescentListDESCENT_NAME: TWideStringField;
    dxDBGrid11DESCENT_NO: TdxDBGridColumn;
    dxDBGrid11DESCENT_NAME: TdxDBGridColumn;
    dxlcEduLevelList: TdxLayoutControl;
    dxDBGrid12: TdxDBGrid;
    ElPopupButton41: TElPopupButton;
    ElPopupButton42: TElPopupButton;
    ElPopupButton43: TElPopupButton;
    dxLayoutGroup26: TdxLayoutGroup;
    dxLayoutItem52: TdxLayoutItem;
    dxLayoutGroup27: TdxLayoutGroup;
    dxLayoutItem53: TdxLayoutItem;
    dxLayoutItem54: TdxLayoutItem;
    dxLayoutItem55: TdxLayoutItem;
    dsEduLevelList: TDataSource;
    qryEduLevelList: TIBOQuery;
    qryEduLevelListEDU_LEVEL_NO: TWideStringField;
    qryEduLevelListEDU_LEVEL_NAME: TWideStringField;
    qryEduLevelListEDU_LEVEL_GRADE: TIntegerField;
    qryEduLevelListEDU_LEVEL_NOTE: TWideStringField;
    dxDBGrid12EDU_LEVEL_NO: TdxDBGridMaskColumn;
    dxDBGrid12EDU_LEVEL_NAME: TdxDBGridMaskColumn;
    dxlcCareerList: TdxLayoutControl;
    dxDBGrid13: TdxDBGrid;
    ElPopupButton44: TElPopupButton;
    ElPopupButton45: TElPopupButton;
    ElPopupButton46: TElPopupButton;
    dxLayoutGroup28: TdxLayoutGroup;
    dxLayoutItem56: TdxLayoutItem;
    dxLayoutGroup29: TdxLayoutGroup;
    dxLayoutItem57: TdxLayoutItem;
    dxLayoutItem58: TdxLayoutItem;
    dxLayoutItem59: TdxLayoutItem;
    dsCareerList: TDataSource;
    qryCareerList: TIBOQuery;
    qryCareerListCAREER_NO: TWideStringField;
    qryCareerListCAREER_NAME: TWideStringField;
    qryCareerListCARRER_NOTE: TWideStringField;
    qryCareerListCAREER_TYPE: TWideStringField;
    qryCareerListCAREER_TYPE_NAME: TWideStringField;
    dxDBGrid13CAREER_NO: TdxDBGridMaskColumn;
    dxDBGrid13CAREER_NAME: TdxDBGridMaskColumn;
    dxlcEduFieldList: TdxLayoutControl;
    dxDBGrid14: TdxDBGrid;
    ElPopupButton47: TElPopupButton;
    ElPopupButton48: TElPopupButton;
    ElPopupButton49: TElPopupButton;
    dxLayoutGroup30: TdxLayoutGroup;
    dxLayoutItem60: TdxLayoutItem;
    dxLayoutGroup31: TdxLayoutGroup;
    dxLayoutItem61: TdxLayoutItem;
    dxLayoutItem62: TdxLayoutItem;
    dxLayoutItem63: TdxLayoutItem;
    dsEduFieldList: TDataSource;
    qryEduFieldList: TIBOQuery;
    qryEduFieldListEDU_FIELD_NO: TWideStringField;
    qryEduFieldListEDU_FIELD_NAME: TWideStringField;
    qryEduFieldListEDU_FIELD_NOTE: TWideStringField;
    dsFieldLevelList: TDataSource;
    qryFieldLevelList: TIBOQuery;
    qryFieldLevelListEDU_FIELD_NO: TWideStringField;
    qryFieldLevelListFIELD_LEVEL_NO: TWideStringField;
    qryFieldLevelListFIELD_LEVEL_NAME: TWideStringField;
    qryFieldLevelListFIELD_LEVEL_GRADE: TIntegerField;
    qryFieldLevelListFIELD_LEVEL_NOTE: TWideStringField;
    dxDBGrid14EDU_FIELD_NO: TdxDBGridMaskColumn;
    dxDBGrid14EDU_FIELD_NAME: TdxDBGridMaskColumn;
    dxlcFieldLevelList: TdxLayoutControl;
    dxDBGrid15: TdxDBGrid;
    ElPopupButton50: TElPopupButton;
    ElPopupButton51: TElPopupButton;
    ElPopupButton52: TElPopupButton;
    dxLayoutGroup32: TdxLayoutGroup;
    dxLayoutItem64: TdxLayoutItem;
    dxLayoutGroup33: TdxLayoutGroup;
    dxLayoutItem65: TdxLayoutItem;
    dxLayoutItem66: TdxLayoutItem;
    dxLayoutItem67: TdxLayoutItem;
    dxDBGrid15FIELD_LEVEL_NO: TdxDBGridMaskColumn;
    dxDBGrid15FIELD_LEVEL_NAME: TdxDBGridMaskColumn;
    dxlcDecisionType: TdxLayoutControl;
    dxDBGrid16: TdxDBGrid;
    ElPopupButton53: TElPopupButton;
    ElPopupButton54: TElPopupButton;
    ElPopupButton55: TElPopupButton;
    dxLayoutGroup34: TdxLayoutGroup;
    dxLayoutItem68: TdxLayoutItem;
    dxLayoutGroup35: TdxLayoutGroup;
    dxLayoutItem69: TdxLayoutItem;
    dxLayoutItem70: TdxLayoutItem;
    dxLayoutItem71: TdxLayoutItem;
    dsDecisionType: TDataSource;
    qryDecisionType: TIBOQuery;
    dxDBGrid16DCS_TYPE_NAME: TdxDBGridColumn;
    qryDecisionTypeDCS_TYPE_NO: TWideStringField;
    qryDecisionTypeDCS_TYPE_NAME: TWideStringField;
    qryDecisionTypeREPORT_TEMPLATE_DEFAULT: TWideStringField;
    qryDecisionTypeDOC_TEMPLATE_DEFAULT: TWideStringField;
    qryDecisionTypeSTT: TIntegerField;
    dxDBGrid16STT: TdxDBGridColumn;
    qryEmpForSelect: TIBOQuery;
    qryEmpForSelectEMPLOYEE_NO: TWideStringField;
    qryEmpForSelectFULL_NAME: TWideStringField;
    qryEmpForSelectGENDER: TSmallintField;
    qryEmpForSelectBIRTH_DATE: TDateField;
    qryEmpForSelectEDU_LEVEL_NAME: TWideStringField;
    qryEmpForSelectCAREER_NAME: TWideStringField;
    dsEmpForSelect: TDataSource;
    dxlcEmpForSelect: TdxLayoutControl;
    dxDBGrid17: TdxDBGrid;
    ElPopupButton57: TElPopupButton;
    ElPopupButton58: TElPopupButton;
    dxLayoutGroup36: TdxLayoutGroup;
    dxLayoutItem72: TdxLayoutItem;
    dxLayoutGroup37: TdxLayoutGroup;
    dxLayoutItem74: TdxLayoutItem;
    dxLayoutItem75: TdxLayoutItem;
    dxDBGrid17EMPLOYEE_NO: TdxDBGridMaskColumn;
    dxDBGrid17FULL_NAME: TdxDBGridMaskColumn;
    dxDBGrid17GENDER: TdxDBGridImageColumn;
    dxDBGrid17BIRTH_DATE: TdxDBGridDateColumn;
    dxDBGrid17EDU_LEVEL_NAME: TdxDBGridMaskColumn;
    dxDBGrid17CAREER_NAME: TdxDBGridMaskColumn;
    qryPosition: TIBOQuery;
    qryPositionDEPT_NO: TWideStringField;
    qryPositionDEPT_NAME: TWideStringField;
    qryPositionTITLE_NO: TWideStringField;
    qryPositionTITLE_NAME: TWideStringField;
    qryPositionWORK_TYPE_NO: TWideStringField;
    qryPositionPOS_NOTE: TWideStringField;
    qryPositionPOS_ALLOWANCE: TIBOFloatField;
    qryPositionWORK_TYPE_NAME: TWideStringField;
    qryPositionPOSITION_NO: TWideStringField;
    qryPositionP_POSITION_NO: TWideStringField;
    dsPosition: TDataSource;
    dxlcPosition: TdxLayoutControl;
    ElPopupButton56: TElPopupButton;
    ElPopupButton59: TElPopupButton;
    ElPopupButton60: TElPopupButton;
    tlPosition: TdxDBTreeList;
    dxLayoutGroup38: TdxLayoutGroup;
    dxLayoutItem73: TdxLayoutItem;
    dxLayoutGroup39: TdxLayoutGroup;
    dxLayoutItem76: TdxLayoutItem;
    dxLayoutItem77: TdxLayoutItem;
    dxLayoutItem78: TdxLayoutItem;
    tlPositionDEPT_NAME: TdxDBTreeListMaskColumn;
    tlPositionTITLE_NAME: TdxDBTreeListMaskColumn;
    tlPositionWORK_TYPE_NAME: TdxDBTreeListMaskColumn;
    qryPositionPOSITION_TITLE: TWideStringField;
    qryEmp_Position: TIBOQuery;
    dsEmp_Position: TDataSource;
    dxlcEmp_Position: TdxLayoutControl;
    dxDBGrid18: TdxDBGrid;
    ElPopupButton62: TElPopupButton;
    ElPopupButton63: TElPopupButton;
    dxLayoutGroup40: TdxLayoutGroup;
    dxLayoutItem79: TdxLayoutItem;
    dxLayoutGroup41: TdxLayoutGroup;
    dxLayoutItem81: TdxLayoutItem;
    dxLayoutItem82: TdxLayoutItem;
    dxDBGrid18EMPLOYEE_NO: TdxDBGridColumn;
    dxDBGrid18FULL_NAME: TdxDBGridColumn;
    dxDBGrid18POSITION_TITLE: TdxDBGridColumn;
    dxDBGrid18ASSIGNED_DATE: TdxDBGridColumn;
    qryDeptTypeListPRESENT_COLOR: TIntegerField;
    dxlcRewardList: TdxLayoutControl;
    dxDBGrid19: TdxDBGrid;
    ElPopupButton61: TElPopupButton;
    ElPopupButton64: TElPopupButton;
    ElPopupButton65: TElPopupButton;
    dxLayoutGroup42: TdxLayoutGroup;
    dxLayoutItem80: TdxLayoutItem;
    dxLayoutGroup43: TdxLayoutGroup;
    dxLayoutItem83: TdxLayoutItem;
    dxLayoutItem84: TdxLayoutItem;
    dxLayoutItem85: TdxLayoutItem;
    dsRewardList: TDataSource;
    qryRewardList: TIBOQuery;
    qryRewardListREWARD_LIST_NO: TWideStringField;
    qryRewardListREWARD_LIST_NAME: TWideStringField;
    qryRewardListREWARD_NOTE: TWideStringField;
    dxDBGrid19REWARD_LIST_NO: TdxDBGridColumn;
    dxDBGrid19REWARD_LIST_NAME: TdxDBGridColumn;
    dxlcRewardForm: TdxLayoutControl;
    dxDBGrid20: TdxDBGrid;
    ElPopupButton66: TElPopupButton;
    ElPopupButton67: TElPopupButton;
    ElPopupButton68: TElPopupButton;
    dxLayoutGroup44: TdxLayoutGroup;
    dxLayoutItem86: TdxLayoutItem;
    dxLayoutGroup45: TdxLayoutGroup;
    dxLayoutItem87: TdxLayoutItem;
    dxLayoutItem88: TdxLayoutItem;
    dxLayoutItem89: TdxLayoutItem;
    dsRewardForm: TDataSource;
    qryRewardForm: TIBOQuery;
    qryRewardFormREWARD_NO: TWideStringField;
    qryRewardFormREWARD_NAME: TWideStringField;
    qryRewardFormREWARD_LEVEL: TIntegerField;
    qryRewardFormREWARD_NOTE: TWideStringField;
    dxDBGrid20REWARD_NO: TdxDBGridColumn;
    dxDBGrid20REWARD_NAME: TdxDBGridColumn;
    dxlcDisciplineList: TdxLayoutControl;
    dxDBGrid21: TdxDBGrid;
    ElPopupButton69: TElPopupButton;
    ElPopupButton70: TElPopupButton;
    ElPopupButton71: TElPopupButton;
    dxLayoutGroup46: TdxLayoutGroup;
    dxLayoutItem90: TdxLayoutItem;
    dxLayoutGroup47: TdxLayoutGroup;
    dxLayoutItem91: TdxLayoutItem;
    dxLayoutItem92: TdxLayoutItem;
    dxLayoutItem93: TdxLayoutItem;
    dsDisciplineList: TDataSource;
    qryDisciplineList: TIBOQuery;
    qryDisciplineListDISC_LIST_NO: TWideStringField;
    qryDisciplineListDISC_LIST_NAME: TWideStringField;
    qryDisciplineListDISC_LIST_NOTE: TWideStringField;
    dxDBGrid21DISC_LIST_NO: TdxDBGridColumn;
    dxDBGrid21DISC_LIST_NAME: TdxDBGridColumn;
    dxlcDisciplineForm: TdxLayoutControl;
    dxDBGrid22: TdxDBGrid;
    ElPopupButton72: TElPopupButton;
    ElPopupButton73: TElPopupButton;
    ElPopupButton74: TElPopupButton;
    dxLayoutGroup48: TdxLayoutGroup;
    dxLayoutItem94: TdxLayoutItem;
    dxLayoutGroup49: TdxLayoutGroup;
    dxLayoutItem95: TdxLayoutItem;
    dxLayoutItem96: TdxLayoutItem;
    dxLayoutItem97: TdxLayoutItem;
    dsDisciplineForm: TDataSource;
    qryDisciplineForm: TIBOQuery;
    qryDisciplineFormDISC_NO: TWideStringField;
    qryDisciplineFormDISC_NAME: TWideStringField;
    qryDisciplineFormDISC_LEVEL: TIntegerField;
    qryDisciplineFormDISC_NOTE: TWideStringField;
    dxDBGrid22DISC_NO: TdxDBGridColumn;
    dxDBGrid22DISC_NAME: TdxDBGridColumn;
    dxlcDecisionLevel: TdxLayoutControl;
    dxDBGrid23: TdxDBGrid;
    ElPopupButton75: TElPopupButton;
    ElPopupButton76: TElPopupButton;
    ElPopupButton77: TElPopupButton;
    dxLayoutGroup50: TdxLayoutGroup;
    dxLayoutItem98: TdxLayoutItem;
    dxLayoutGroup51: TdxLayoutGroup;
    dxLayoutItem99: TdxLayoutItem;
    dxLayoutItem100: TdxLayoutItem;
    dxLayoutItem101: TdxLayoutItem;
    dsDecisionLevel: TDataSource;
    qryDecisionLevel: TIBOQuery;
    qryDecisionLevelLEVEL_NO: TWideStringField;
    qryDecisionLevelLEVEL_NAME: TWideStringField;
    qryDecisionLevelLEVEL_INDEX: TIntegerField;
    qryDecisionLevelLEVEL_NOTE: TWideStringField;
    dxDBGrid23LEVEL_NO: TdxDBGridColumn;
    dxDBGrid23LEVEL_NAME: TdxDBGridColumn;
    dsReportTemplateList: TDataSource;
    qryReportTemplateList: TIBOQuery;
    qryReportTemplateListTEMPLATE_NO: TWideStringField;
    qryReportTemplateListTEMPLATE_NAME: TWideStringField;
    qryReportTemplateListTEMPLATE_FILE: TWideStringField;
    qryReportTemplateListTEMPLATE_NOTE: TWideStringField;
    dxlcReportTemplateList: TdxLayoutControl;
    dxDBGrid24: TdxDBGrid;
    ElPopupButton78: TElPopupButton;
    ElPopupButton79: TElPopupButton;
    ElPopupButton80: TElPopupButton;
    dxLayoutGroup52: TdxLayoutGroup;
    dxLayoutItem102: TdxLayoutItem;
    dxLayoutGroup53: TdxLayoutGroup;
    dxLayoutItem103: TdxLayoutItem;
    dxLayoutItem104: TdxLayoutItem;
    dxLayoutItem105: TdxLayoutItem;
    dxDBGrid24TEMPLATE_NO: TdxDBGridColumn;
    dxDBGrid24TEMPLATE_NAME: TdxDBGridColumn;
    dxDBGrid24TEMPLATE_FILE: TdxDBGridColumn;
    dxlcDocTemplateList: TdxLayoutControl;
    dxDBGrid25: TdxDBGrid;
    ElPopupButton81: TElPopupButton;
    ElPopupButton82: TElPopupButton;
    ElPopupButton83: TElPopupButton;
    dxLayoutGroup54: TdxLayoutGroup;
    dxLayoutItem106: TdxLayoutItem;
    dxLayoutGroup55: TdxLayoutGroup;
    dxLayoutItem107: TdxLayoutItem;
    dxLayoutItem108: TdxLayoutItem;
    dxLayoutItem109: TdxLayoutItem;
    qryDocTemplate: TIBOQuery;
    qryDocTemplateTEMPLATE_NO: TWideStringField;
    qryDocTemplateTEMPLATE_NAME: TWideStringField;
    qryDocTemplateTEMPLATE_CONTENT: TBlobField;
    dsDocTemplate: TDataSource;
    dxDBGrid25TEMPLATE_NO: TdxDBGridMaskColumn;
    dxDBGrid25TEMPLATE_NAME: TdxDBGridMaskColumn;
    qryDecisionTypeDOC_TEMPLATE_CONTENT: TBlobField;
    dsContractType: TDataSource;
    qryContractType: TIBOQuery;
    dxlcContractType: TdxLayoutControl;
    dxDBGrid26: TdxDBGrid;
    ElPopupButton84: TElPopupButton;
    ElPopupButton85: TElPopupButton;
    ElPopupButton86: TElPopupButton;
    dxLayoutGroup56: TdxLayoutGroup;
    dxLayoutItem110: TdxLayoutItem;
    dxLayoutGroup57: TdxLayoutGroup;
    dxLayoutItem111: TdxLayoutItem;
    dxLayoutItem112: TdxLayoutItem;
    dxLayoutItem113: TdxLayoutItem;
    dxDBGrid26CONTRACT_TYPE_NO: TdxDBGridMaskColumn;
    dxDBGrid26CONTRACT_TYPE_NAME: TdxDBGridMaskColumn;
    qryContractTypeCONTRACT_TYPE_NO: TWideStringField;
    qryContractTypeCONTRACT_TYPE_NAME: TWideStringField;
    qryContractTypeREPORT_DEFAULT: TWideStringField;
    qryContractTypeDOC_DEFAULT: TWideStringField;
    qryContractTypeDOC_DEFAULT_NAME: TWideStringField;
    qryContractTypeTEMPLATE_CONTENT: TBlobField;
    dxlcContractList: TdxLayoutControl;
    dxDBGrid27: TdxDBGrid;
    ElPopupButton88: TElPopupButton;
    ElPopupButton89: TElPopupButton;
    dxLayoutGroup58: TdxLayoutGroup;
    dxLayoutItem114: TdxLayoutItem;
    dxLayoutGroup59: TdxLayoutGroup;
    dxLayoutItem116: TdxLayoutItem;
    dxLayoutItem117: TdxLayoutItem;
    qryContractList: TIBOQuery;
    dsContractList: TDataSource;
    qryContractListCONTRACT_NO: TWideStringField;
    qryContractListCONTRACT_NAME: TWideStringField;
    qryContractListSTARTED_DATE: TDateField;
    dxDBGrid27CONTRACT_NO: TdxDBGridMaskColumn;
    dxDBGrid27CONTRACT_NAME: TdxDBGridMaskColumn;
    dxDBGrid27STARTED_DATE: TdxDBGridDateColumn;
    qryContractTypeTIME_LIMIT: TIntegerField;
    qryContractTypeTIME_UNIT: TIntegerField;
    qryWorkDateType: TIBOQuery;
    qryWorkDateTypeWDT_NO: TWideStringField;
    qryWorkDateTypeWDT_NAME: TWideStringField;
    qryWorkDateTypeWDT_RATE: TIBOFloatField;
    qryWorkDateTypeWDT_COLOR: TIntegerField;
    qryWorkDateTypeWDT_NOTE: TWideStringField;
    dsWorkDateType: TDataSource;
    qryWorkHourType: TIBOQuery;
    qryWorkHourTypeWHT_NO: TWideStringField;
    qryWorkHourTypeWHT_NAME: TWideStringField;
    qryWorkHourTypeWHT_RATE: TIBOFloatField;
    qryWorkHourTypeWHT_COLOR: TIntegerField;
    qryWorkHourTypeWHT_NOTE: TWideStringField;
    dsWorkHourType: TDataSource;
    dxlcWorkDateType: TdxLayoutControl;
    gridWDT: TdxDBGrid;
    ElPopupButton87: TElPopupButton;
    ElPopupButton90: TElPopupButton;
    ElPopupButton91: TElPopupButton;
    dxLayoutGroup60: TdxLayoutGroup;
    dxLayoutItem118: TdxLayoutItem;
    dxLayoutGroup61: TdxLayoutGroup;
    dxLayoutItem119: TdxLayoutItem;
    dxLayoutItem120: TdxLayoutItem;
    dxLayoutItem121: TdxLayoutItem;
    gridWDTWDT_NO: TdxDBGridMaskColumn;
    gridWDTWDT_NAME: TdxDBGridMaskColumn;
    gridWDTWDT_COLOR: TdxDBGridMaskColumn;
    gridWDTCOLOR: TdxDBGridColumn;
    dxlcWorkHourType: TdxLayoutControl;
    gridWHT: TdxDBGrid;
    ElPopupButton92: TElPopupButton;
    ElPopupButton93: TElPopupButton;
    ElPopupButton94: TElPopupButton;
    dxLayoutGroup62: TdxLayoutGroup;
    dxLayoutItem122: TdxLayoutItem;
    dxLayoutGroup63: TdxLayoutGroup;
    dxLayoutItem123: TdxLayoutItem;
    dxLayoutItem124: TdxLayoutItem;
    dxLayoutItem125: TdxLayoutItem;
    gridWHTWHT_NO: TdxDBGridMaskColumn;
    gridWHTWHT_NAME: TdxDBGridMaskColumn;
    gridWHTWHT_COLOR: TdxDBGridMaskColumn;
    gridWHTColumn4: TdxDBGridColumn;
    dxlcCalendar: TdxLayoutControl;
    dxDBGrid28: TdxDBGrid;
    btnCalendar: TElPopupButton;
    ElPopupButton96: TElPopupButton;
    ElPopupButton97: TElPopupButton;
    dxLayoutGroup64: TdxLayoutGroup;
    dxLayoutItem126: TdxLayoutItem;
    dxLayoutGroup65: TdxLayoutGroup;
    dxLayoutItem127: TdxLayoutItem;
    dxLayoutItem128: TdxLayoutItem;
    dxLayoutItem129: TdxLayoutItem;
    qryCalendar: TIBOQuery;
    qryCalendarCALENDAR_NO: TWideStringField;
    qryCalendarCALENDAR_NAME: TWideStringField;
    qryCalendarCALENDAR_DEFAULT: TIntegerField;
    qryCalendarCALENDAR_NOTE: TWideStringField;
    dsCalendar: TDataSource;
    dxDBGrid28CALENDAR_NO: TdxDBGridMaskColumn;
    dxDBGrid28CALENDAR_NAME: TdxDBGridMaskColumn;
    qryWageElementType: TIBOQuery;
    qryWageElementTypeELEMENT_TYPE_NO: TWideStringField;
    qryWageElementTypeELEMENT_TYPE_NAME: TWideStringField;
    qryWageElementTypeELEMENT_TYPE_NOTE: TWideStringField;
    qryWageElementTypeORDER_INDEX: TSmallintField;
    qryWageElementTypeCOLOR: TIntegerField;
    dsWageElementType: TDataSource;
    dxlcWageElementType: TdxLayoutControl;
    gridWageElementType: TdxDBGrid;
    ElPopupButton95: TElPopupButton;
    ElPopupButton98: TElPopupButton;
    ElPopupButton99: TElPopupButton;
    dxLayoutGroup66: TdxLayoutGroup;
    dxLayoutItem130: TdxLayoutItem;
    dxLayoutGroup67: TdxLayoutGroup;
    dxLayoutItem131: TdxLayoutItem;
    dxLayoutItem132: TdxLayoutItem;
    dxLayoutItem133: TdxLayoutItem;
    gridWageElementTypeELEMENT_TYPE_NO: TdxDBGridColumn;
    gridWageElementTypeELEMENT_TYPE_NAME: TdxDBGridColumn;
    gridWageElementTypeCOLOR: TdxDBGridColumn;
    gridWageElementTypeColumn4: TdxDBGridColumn;
    dxlcWageElement: TdxLayoutControl;
    dxDBGrid29: TdxDBGrid;
    ElPopupButton101: TElPopupButton;
    ElPopupButton102: TElPopupButton;
    dxLayoutGroup68: TdxLayoutGroup;
    dxLayoutItem134: TdxLayoutItem;
    dxLayoutGroup69: TdxLayoutGroup;
    dxLayoutItem136: TdxLayoutItem;
    dxLayoutItem137: TdxLayoutItem;
    qryWageElement: TIBOQuery;
    dsWageElement: TDataSource;
    qryWageElementELEMENT_NO: TWideStringField;
    qryWageElementELEMENT_NAME: TWideStringField;
    dxDBGrid29ELEMENT_NO: TdxDBGridColumn;
    dxDBGrid29ELEMENT_NAME: TdxDBGridColumn;
    dxlcWageStandard: TdxLayoutControl;
    dxDBGrid30: TdxDBGrid;
    ElPopupButton103: TElPopupButton;
    ElPopupButton104: TElPopupButton;
    dxLayoutGroup70: TdxLayoutGroup;
    dxLayoutItem135: TdxLayoutItem;
    dxLayoutGroup71: TdxLayoutGroup;
    dxLayoutItem139: TdxLayoutItem;
    dxLayoutItem140: TdxLayoutItem;
    qryWageStandard: TIBOQuery;
    dsWageStandard: TDataSource;
    qryWageStandardWAGE_SCALE: TWideStringField;
    qryWageStandardCAREER_NAME: TWideStringField;
    qryWageStandardWAGE_LEVEL: TIntegerField;
    qryWageStandardWAGE_COEFF: TIBOFloatField;
    qryWageStandardPROMOTION: TIntegerField;
    dxDBGrid30CAREER_NAME: TdxDBGridColumn;
    dxDBGrid30WAGE_LEVEL: TdxDBGridColumn;
    dxDBGrid30WAGE_COEFF: TdxDBGridColumn;
    dxDBGrid30PROMOTION: TdxDBGridColumn;
    dxlcRelationship: TdxLayoutControl;
    dxDBGrid31: TdxDBGrid;
    ElPopupButton100: TElPopupButton;
    ElPopupButton105: TElPopupButton;
    ElPopupButton106: TElPopupButton;
    dxLayoutGroup72: TdxLayoutGroup;
    dxLayoutItem138: TdxLayoutItem;
    dxLayoutGroup73: TdxLayoutGroup;
    dxLayoutItem141: TdxLayoutItem;
    dxLayoutItem142: TdxLayoutItem;
    dxLayoutItem143: TdxLayoutItem;
    qryRelationship: TIBOQuery;
    dsRelationship: TDataSource;
    qryRelationshipRELATIONSHIP_NO: TWideStringField;
    qryRelationshipRELATIONSHIP_NAME: TWideStringField;
    qryRelationshipRELATIONSHIP_TYPE: TSmallintField;
    dxDBGrid31RELATIONSHIP_NAME: TdxDBGridColumn;
    dxDBGrid31RELATIONSHIP_TYPE: TdxDBGridImageColumn;
    dxlcEstimateSys: TdxLayoutControl;
    dxDBGrid32: TdxDBGrid;
    ElPopupButton107: TElPopupButton;
    ElPopupButton108: TElPopupButton;
    ElPopupButton109: TElPopupButton;
    dxLayoutGroup74: TdxLayoutGroup;
    dxLayoutItem144: TdxLayoutItem;
    dxLayoutGroup75: TdxLayoutGroup;
    dxLayoutItem145: TdxLayoutItem;
    dxLayoutItem146: TdxLayoutItem;
    dxLayoutItem147: TdxLayoutItem;
    qryEstimateSystem: TIBOQuery;
    qryEstimateSystemSYS_NO: TWideStringField;
    qryEstimateSystemSYS_NAME: TWideStringField;
    dsEstimateSystem: TDataSource;
    dxDBGrid32SYS_NO: TdxDBGridColumn;
    dxDBGrid32SYS_NAME: TdxDBGridColumn;
    dxlcAccidentType: TdxLayoutControl;
    dxDBGrid33: TdxDBGrid;
    ElPopupButton110: TElPopupButton;
    ElPopupButton111: TElPopupButton;
    ElPopupButton112: TElPopupButton;
    dxLayoutGroup76: TdxLayoutGroup;
    dxLayoutItem148: TdxLayoutItem;
    dxLayoutGroup77: TdxLayoutGroup;
    dxLayoutItem149: TdxLayoutItem;
    dxLayoutItem150: TdxLayoutItem;
    dxLayoutItem151: TdxLayoutItem;
    qryAccidentType: TIBOQuery;
    dsAccidentType: TDataSource;
    qryAccidentTypeACCIDENT_TYPE_NO: TWideStringField;
    qryAccidentTypeACCIDENT_TYPE_NAME: TWideStringField;
    dxDBGrid33ACCIDENT_TYPE_NO: TdxDBGridColumn;
    dxDBGrid33ACCIDENT_TYPE_NAME: TdxDBGridColumn;
    dxlcAccidentReason: TdxLayoutControl;
    dxDBGrid34: TdxDBGrid;
    ElPopupButton113: TElPopupButton;
    ElPopupButton114: TElPopupButton;
    ElPopupButton115: TElPopupButton;
    dxLayoutGroup78: TdxLayoutGroup;
    dxLayoutItem152: TdxLayoutItem;
    dxLayoutGroup79: TdxLayoutGroup;
    dxLayoutItem153: TdxLayoutItem;
    dxLayoutItem154: TdxLayoutItem;
    dxLayoutItem155: TdxLayoutItem;
    dsAccidentReason: TDataSource;
    qryAccidentReason: TIBOQuery;
    qryAccidentReasonACCIDENT_REASON_NO: TWideStringField;
    qryAccidentReasonACCIDENT_REASON_NAME: TWideStringField;
    dxDBGrid34ACCIDENT_REASON_NO: TdxDBGridColumn;
    dxDBGrid34ACCIDENT_REASON_NAME: TdxDBGridColumn;
    dxlcConsequence: TdxLayoutControl;
    dxDBGrid35: TdxDBGrid;
    ElPopupButton116: TElPopupButton;
    ElPopupButton117: TElPopupButton;
    ElPopupButton118: TElPopupButton;
    dxLayoutGroup80: TdxLayoutGroup;
    dxLayoutItem156: TdxLayoutItem;
    dxLayoutGroup81: TdxLayoutGroup;
    dxLayoutItem157: TdxLayoutItem;
    dxLayoutItem158: TdxLayoutItem;
    dxLayoutItem159: TdxLayoutItem;
    dsConsequence: TDataSource;
    qryConsequence: TIBOQuery;
    qryConsequenceCONSEQUENCE_NO: TWideStringField;
    qryConsequenceCONSEQUENCE_NAME: TWideStringField;
    dxDBGrid35CONSEQUENCE_NO: TdxDBGridColumn;
    dxDBGrid35CONSEQUENCE_NAME: TdxDBGridColumn;
    dxlcFurloughReason: TdxLayoutControl;
    dxDBGrid36: TdxDBGrid;
    ElPopupButton119: TElPopupButton;
    ElPopupButton120: TElPopupButton;
    ElPopupButton121: TElPopupButton;
    dxLayoutGroup82: TdxLayoutGroup;
    dxLayoutItem160: TdxLayoutItem;
    dxLayoutGroup83: TdxLayoutGroup;
    dxLayoutItem161: TdxLayoutItem;
    dxLayoutItem162: TdxLayoutItem;
    dxLayoutItem163: TdxLayoutItem;
    dsFurloughReason: TDataSource;
    qryFurloughReason: TIBOQuery;
    qryFurloughReasonFURLOUGH_REASON_NO: TWideStringField;
    qryFurloughReasonFURLOUGH_REASON_NAME: TWideStringField;
    qryFurloughReasonHE_SO: TIBOFloatField;
    dxDBGrid36FURLOUGH_REASON_NO: TdxDBGridColumn;
    dxDBGrid36FURLOUGH_REASON_NAME: TdxDBGridColumn;
    dxlcEstimateStage: TdxLayoutControl;
    dxDBGrid37: TdxDBGrid;
    ElPopupButton123: TElPopupButton;
    ElPopupButton124: TElPopupButton;
    dxLayoutGroup84: TdxLayoutGroup;
    dxLayoutItem164: TdxLayoutItem;
    dxLayoutGroup85: TdxLayoutGroup;
    dxLayoutItem166: TdxLayoutItem;
    dxLayoutItem167: TdxLayoutItem;
    qryEstimateStage: TIBOQuery;
    dsEstimateStage: TDataSource;
    qryEstimateStageSTAGE_NO: TWideStringField;
    qryEstimateStageSTAGE_NAME: TWideStringField;
    dxDBGrid37STAGE_NO: TdxDBGridColumn;
    dxDBGrid37STAGE_NAME: TdxDBGridColumn;
    dxlcTrainingType: TdxLayoutControl;
    dxDBGrid38: TdxDBGrid;
    ElPopupButton122: TElPopupButton;
    ElPopupButton125: TElPopupButton;
    ElPopupButton126: TElPopupButton;
    dxLayoutGroup86: TdxLayoutGroup;
    dxLayoutItem165: TdxLayoutItem;
    dxLayoutGroup87: TdxLayoutGroup;
    dxLayoutItem168: TdxLayoutItem;
    dxLayoutItem169: TdxLayoutItem;
    dxLayoutItem170: TdxLayoutItem;
    qryTrainingType: TIBOQuery;
    dsTrainingType: TDataSource;
    qryTrainingForm: TIBOQuery;
    dsTrainingForm: TDataSource;
    dxlcTrainingForm: TdxLayoutControl;
    dxDBGrid39: TdxDBGrid;
    ElPopupButton127: TElPopupButton;
    ElPopupButton128: TElPopupButton;
    ElPopupButton129: TElPopupButton;
    dxLayoutGroup88: TdxLayoutGroup;
    dxLayoutItem171: TdxLayoutItem;
    dxLayoutGroup89: TdxLayoutGroup;
    dxLayoutItem172: TdxLayoutItem;
    dxLayoutItem173: TdxLayoutItem;
    dxLayoutItem174: TdxLayoutItem;
    qryTrainingSource: TIBOQuery;
    dsTrainingSource: TDataSource;
    dxlcTrainingSource: TdxLayoutControl;
    dxDBGrid40: TdxDBGrid;
    ElPopupButton130: TElPopupButton;
    ElPopupButton131: TElPopupButton;
    ElPopupButton132: TElPopupButton;
    dxLayoutGroup90: TdxLayoutGroup;
    dxLayoutItem175: TdxLayoutItem;
    dxLayoutGroup91: TdxLayoutGroup;
    dxLayoutItem176: TdxLayoutItem;
    dxLayoutItem177: TdxLayoutItem;
    dxLayoutItem178: TdxLayoutItem;
    qryTrainingTypeTYPE_NO: TWideStringField;
    qryTrainingTypeTYPE_NAME: TWideStringField;
    qryTrainingSourceSOURCE_NO: TWideStringField;
    qryTrainingSourceSOURCE_NAME: TWideStringField;
    qryTrainingSourceNOTE: TWideStringField;
    qryTrainingFormFORM_NO: TWideStringField;
    qryTrainingFormFORM_NAME: TWideStringField;
    qryTrainingFormNOTE: TWideStringField;
    dxDBGrid40SOURCE_NO: TdxDBGridColumn;
    dxDBGrid40SOURCE_NAME: TdxDBGridColumn;
    dxDBGrid39FORM_NO: TdxDBGridColumn;
    dxDBGrid39FORM_NAME: TdxDBGridColumn;
    dxDBGrid38TYPE_NO: TdxDBGridColumn;
    dxDBGrid38TYPE_NAME: TdxDBGridColumn;
    dxlcLoaiThaisan: TdxLayoutControl;
    dxDBGrid41: TdxDBGrid;
    ElPopupButton133: TElPopupButton;
    ElPopupButton134: TElPopupButton;
    ElPopupButton135: TElPopupButton;
    dxLayoutGroup92: TdxLayoutGroup;
    dxLayoutItem179: TdxLayoutItem;
    dxLayoutGroup93: TdxLayoutGroup;
    dxLayoutItem180: TdxLayoutItem;
    dxLayoutItem181: TdxLayoutItem;
    dxLayoutItem182: TdxLayoutItem;
    dxDBGrid41MA_LOAI: TdxDBGridColumn;
    dxDBGrid41TEN_LOAI: TdxDBGridColumn;
    dxDBGrid41HE_SO: TdxDBGridColumn;
    qryTrainingSupply: TIBOQuery;
    qryTrainingSupplySUPPLY_NO: TWideStringField;
    qryTrainingSupplySUPPLY_NAME: TWideStringField;
    qryTrainingSupplySUPPLY_NOTE: TWideStringField;
    dsTrainingSupply: TDataSource;
    dxlcTrainingSupply: TdxLayoutControl;
    dxDBGrid42: TdxDBGrid;
    ElPopupButton136: TElPopupButton;
    ElPopupButton137: TElPopupButton;
    ElPopupButton138: TElPopupButton;
    dxLayoutGroup94: TdxLayoutGroup;
    dxLayoutItem183: TdxLayoutItem;
    dxLayoutGroup95: TdxLayoutGroup;
    dxLayoutItem184: TdxLayoutItem;
    dxLayoutItem185: TdxLayoutItem;
    dxLayoutItem186: TdxLayoutItem;
    dxDBGrid42SUPPLY_NO: TdxDBGridColumn;
    dxDBGrid42SUPPLY_NAME: TdxDBGridColumn;
    qryOrgList: TIBOQuery;
    qryOrgListORG_NO: TWideStringField;
    qryOrgListORG_NAME: TWideStringField;
    qryOrgListORG_NOTE: TWideStringField;
    dsOrgList: TDataSource;
    dxlcOrgList: TdxLayoutControl;
    dxDBGrid43: TdxDBGrid;
    ElPopupButton139: TElPopupButton;
    ElPopupButton140: TElPopupButton;
    ElPopupButton141: TElPopupButton;
    dxLayoutGroup96: TdxLayoutGroup;
    dxLayoutItem187: TdxLayoutItem;
    dxLayoutGroup97: TdxLayoutGroup;
    dxLayoutItem188: TdxLayoutItem;
    dxLayoutItem189: TdxLayoutItem;
    dxLayoutItem190: TdxLayoutItem;
    dxDBGrid43ORG_NO: TdxDBGridColumn;
    dxDBGrid43ORG_NAME: TdxDBGridColumn;
    qryTrainingTypeNOTE: TWideStringField;
    dxlcDotKCB: TdxLayoutControl;
    dxDBGrid44: TdxDBGrid;
    dxDBGrid41MA_SO_DOT: TdxDBGridMaskColumn;
    dxDBGrid41TEN_DOT: TdxDBGridMaskColumn;
    ElPopupButton142: TElPopupButton;
    ElPopupButton143: TElPopupButton;
    dxLayoutGroup98: TdxLayoutGroup;
    dxLayoutItem191: TdxLayoutItem;
    dxLayoutGroup99: TdxLayoutGroup;
    dxLayoutItem192: TdxLayoutItem;
    dxLayoutItem193: TdxLayoutItem;
    qryDotKCB: TIBOQuery;
    qryDotKCBMA_SO_DOT: TWideStringField;
    qryDotKCBTEN_DOT: TWideStringField;
    dsDotKCB: TDataSource;
    dxlcLoaiSuckhoe: TdxLayoutControl;
    dxDBGrid45: TdxDBGrid;
    ElPopupButton144: TElPopupButton;
    ElPopupButton145: TElPopupButton;
    ElPopupButton146: TElPopupButton;
    dxLayoutGroup100: TdxLayoutGroup;
    dxLayoutItem194: TdxLayoutItem;
    dxLayoutGroup101: TdxLayoutGroup;
    dxLayoutItem195: TdxLayoutItem;
    dxLayoutItem196: TdxLayoutItem;
    dxLayoutItem197: TdxLayoutItem;
    dxDBGrid45MA_LOAI: TdxDBGridColumn;
    dxDBGrid45TEN_LOAI: TdxDBGridColumn;
    dxDBGrid45CAP_DO: TdxDBGridColumn;
    dxlcRecruitmentSource: TdxLayoutControl;
    dxDBGrid46: TdxDBGrid;
    ElPopupButton147: TElPopupButton;
    ElPopupButton148: TElPopupButton;
    ElPopupButton149: TElPopupButton;
    dxLayoutGroup102: TdxLayoutGroup;
    dxLayoutItem198: TdxLayoutItem;
    dxLayoutGroup103: TdxLayoutGroup;
    dxLayoutItem199: TdxLayoutItem;
    dxLayoutItem200: TdxLayoutItem;
    dxLayoutItem201: TdxLayoutItem;
    qryRecruitmentSource: TIBOQuery;
    dsRecruitmentSource: TDataSource;
    qryRecruitmentSourceSOURCE_NO: TWideStringField;
    qryRecruitmentSourceSOURCE_NAME: TWideStringField;
    qryRecruitmentSourceNOTE: TWideStringField;
    dxDBGrid46SOURCE_NO: TdxDBGridColumn;
    dxDBGrid46SOURCE_NAME: TdxDBGridColumn;
    dxlcWageFormular: TdxLayoutControl;
    dxDBGrid47: TdxDBGrid;
    ElPopupButton151: TElPopupButton;
    ElPopupButton152: TElPopupButton;
    dxLayoutGroup104: TdxLayoutGroup;
    dxLayoutItem202: TdxLayoutItem;
    dxLayoutGroup105: TdxLayoutGroup;
    dxLayoutItem204: TdxLayoutItem;
    dxLayoutItem205: TdxLayoutItem;
    qryWageFormular: TIBOQuery;
    dsWageFormular: TDataSource;
    qryWageFormularFORMULAR_NO: TWideStringField;
    qryWageFormularFORMULAR_NAME: TWideStringField;
    dxDBGrid47FORMULAR_NAME: TdxDBGridColumn;
    qryTrainingResult: TIBOQuery;
    qryTrainingResultRESULT_NO: TWideStringField;
    qryTrainingResultRESULT_NAME: TWideStringField;
    qryTrainingResultRESULT_GRADE: TIntegerField;
    qryTrainingResultNOTES: TWideStringField;
    dsTrainingResult: TDataSource;
    dxlcTrainingResult: TdxLayoutControl;
    dxDBGrid48: TdxDBGrid;
    ElPopupButton150: TElPopupButton;
    ElPopupButton153: TElPopupButton;
    ElPopupButton154: TElPopupButton;
    dxLayoutGroup106: TdxLayoutGroup;
    dxLayoutItem115: TdxLayoutItem;
    dxLayoutGroup107: TdxLayoutGroup;
    dxLayoutItem203: TdxLayoutItem;
    dxLayoutItem206: TdxLayoutItem;
    dxLayoutItem207: TdxLayoutItem;
    dxDBGrid48RESULT_NO: TdxDBGridColumn;
    dxDBGrid48RESULT_NAME: TdxDBGridColumn;
    dxDBGrid48RESULT_GRADE: TdxDBGridColumn;
    qryEmpForSelectEMAIL: TWideStringField;
    dxlcChucvuDang: TdxLayoutControl;
    dxDBGrid50: TdxDBGrid;
    dxDBGrid50MA_CHUCVU: TdxDBGridColumn;
    dxDBGrid50TEN_CHUCVU: TdxDBGridColumn;
    ElPopupButton158: TElPopupButton;
    ElPopupButton159: TElPopupButton;
    ElPopupButton160: TElPopupButton;
    dxLayoutGroup110: TdxLayoutGroup;
    dxLayoutItem212: TdxLayoutItem;
    dxLayoutGroup111: TdxLayoutGroup;
    dxLayoutItem213: TdxLayoutItem;
    dxLayoutItem214: TdxLayoutItem;
    dxLayoutItem215: TdxLayoutItem;
    dxlcChucvuDoan: TdxLayoutControl;
    dxDBGrid51: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    ElPopupButton161: TElPopupButton;
    ElPopupButton162: TElPopupButton;
    ElPopupButton163: TElPopupButton;
    dxLayoutGroup112: TdxLayoutGroup;
    dxLayoutItem216: TdxLayoutItem;
    dxLayoutGroup113: TdxLayoutGroup;
    dxLayoutItem217: TdxLayoutItem;
    dxLayoutItem218: TdxLayoutItem;
    dxLayoutItem219: TdxLayoutItem;
    dxlcChucvuCDoan: TdxLayoutControl;
    dxDBGrid52: TdxDBGrid;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    ElPopupButton164: TElPopupButton;
    ElPopupButton165: TElPopupButton;
    ElPopupButton166: TElPopupButton;
    dxLayoutGroup114: TdxLayoutGroup;
    dxLayoutItem220: TdxLayoutItem;
    dxLayoutGroup115: TdxLayoutGroup;
    dxLayoutItem221: TdxLayoutItem;
    dxLayoutItem222: TdxLayoutItem;
    dxLayoutItem223: TdxLayoutItem;
    qryChucvuDang: TIBOQuery;
    qryChucvuDangMA_CHUCVU: TWideStringField;
    qryChucvuDangTEN_CHUCVU: TWideStringField;
    qryChucvuDangGHI_CHU: TWideStringField;
    dsChucvuDang: TDataSource;
    dsChucvuDoan: TDataSource;
    qryChucvuDoan: TIBOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    dsChucvuCDoan: TDataSource;
    qryChucvuCDoan: TIBOQuery;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    qryAcademicList: TIBOQuery;
    qryAcademicListACADEMIC_NO: TWideStringField;
    qryAcademicListACADEMIC_NAME: TWideStringField;
    qryAcademicListACADEMIC_LEVEL: TIntegerField;
    qryAcademicListACADEMIC_NOTE: TWideStringField;
    dsAcademicList: TDataSource;
    dxlcAcademicList: TdxLayoutControl;
    dxDBGrid49: TdxDBGrid;
    dxDBGrid49ACADEMIC_NO: TdxDBGridColumn;
    dxDBGrid49ACADEMIC_NAME: TdxDBGridColumn;
    ElPopupButton155: TElPopupButton;
    ElPopupButton156: TElPopupButton;
    ElPopupButton157: TElPopupButton;
    dxLayoutGroup108: TdxLayoutGroup;
    dxLayoutItem208: TdxLayoutItem;
    dxLayoutGroup109: TdxLayoutGroup;
    dxLayoutItem209: TdxLayoutItem;
    dxLayoutItem210: TdxLayoutItem;
    dxLayoutItem211: TdxLayoutItem;
    dsMarrialStatus: TDataSource;
    qryMarrialStatus: TIBOQuery;
    qryMarrialStatusSTATUS_ID: TWideStringField;
    qryMarrialStatusSTATUS_NAME: TWideStringField;
    qryMarrialStatusNOTE: TWideStringField;
    dxlcMarrialStatus: TdxLayoutControl;
    dxDBGrid53: TdxDBGrid;
    ElPopupButton167: TElPopupButton;
    ElPopupButton168: TElPopupButton;
    ElPopupButton169: TElPopupButton;
    dxLayoutGroup116: TdxLayoutGroup;
    dxLayoutItem224: TdxLayoutItem;
    dxLayoutGroup117: TdxLayoutGroup;
    dxLayoutItem225: TdxLayoutItem;
    dxLayoutItem226: TdxLayoutItem;
    dxLayoutItem227: TdxLayoutItem;
    dxDBGrid53STATUS_ID: TdxDBGridColumn;
    dxDBGrid53STATUS_NAME: TdxDBGridColumn;
    dxlcEstimateGroup: TdxLayoutControl;
    dxDBGrid54: TdxDBGrid;
    ElPopupButton170: TElPopupButton;
    ElPopupButton171: TElPopupButton;
    ElPopupButton172: TElPopupButton;
    dxLayoutGroup118: TdxLayoutGroup;
    dxLayoutItem228: TdxLayoutItem;
    dxLayoutGroup119: TdxLayoutGroup;
    dxLayoutItem229: TdxLayoutItem;
    dxLayoutItem230: TdxLayoutItem;
    dxLayoutItem231: TdxLayoutItem;
    qryEstimateGroup: TIBOQuery;
    dsEstimateGroup: TDataSource;
    qryEstimateGroupGROUP_NO: TWideStringField;
    qryEstimateGroupGROUP_NAME: TWideStringField;
    qryEstimateGroupGROUP_INDEX: TIntegerField;
    qryEstimateGroupGROUP_NOTE: TWideStringField;
    dxDBGrid54GROUP_NO: TdxDBGridColumn;
    dxDBGrid54GROUP_NAME: TdxDBGridColumn;
    qryTrainingContent: TIBOQuery;
    qryTrainingContentCONTENT_NO: TWideStringField;
    qryTrainingContentCONTENT_NAME: TWideStringField;
    qryTrainingContentCONTENT_NOTE: TWideStringField;
    dsTrainingContent: TDataSource;
    dxlcTrainingContent: TdxLayoutControl;
    dxDBGrid55: TdxDBGrid;
    ElPopupButton173: TElPopupButton;
    ElPopupButton174: TElPopupButton;
    ElPopupButton175: TElPopupButton;
    dxLayoutGroup120: TdxLayoutGroup;
    dxLayoutItem232: TdxLayoutItem;
    dxLayoutGroup121: TdxLayoutGroup;
    dxLayoutItem233: TdxLayoutItem;
    dxLayoutItem234: TdxLayoutItem;
    dxLayoutItem235: TdxLayoutItem;
    dxDBGrid55CONTENT_NO: TdxDBGridColumn;
    dxDBGrid55CONTENT_NAME: TdxDBGridColumn;
    dxlcWorkShift: TdxLayoutControl;
    dxDBGrid56: TdxDBGrid;
    ElPopupButton176: TElPopupButton;
    ElPopupButton177: TElPopupButton;
    ElPopupButton178: TElPopupButton;
    dxLayoutGroup122: TdxLayoutGroup;
    dxLayoutItem236: TdxLayoutItem;
    dxLayoutGroup123: TdxLayoutGroup;
    dxLayoutItem237: TdxLayoutItem;
    dxLayoutItem238: TdxLayoutItem;
    dxLayoutItem239: TdxLayoutItem;
    dsWorkShift: TDataSource;
    qryWorkShift: TIBOQuery;
    qryWorkShiftSHIFT_NO: TWideStringField;
    qryWorkShiftSHIFT_NAME: TWideStringField;
    dxDBGrid56SHIFT_NO: TdxDBGridColumn;
    dxDBGrid56SHIFT_NAME: TdxDBGridColumn;
    qryOffWorkReason: TIBOQuery;
    dsOffWorkReason: TDataSource;
    qryOffWorkReasonREASON_NO: TWideStringField;
    qryOffWorkReasonREASON_NAME: TWideStringField;
    qryOffWorkReasonNOTES: TWideStringField;
    dxlcOffWorkReason: TdxLayoutControl;
    dxDBGrid57: TdxDBGrid;
    ElPopupButton179: TElPopupButton;
    ElPopupButton180: TElPopupButton;
    ElPopupButton181: TElPopupButton;
    dxLayoutGroup124: TdxLayoutGroup;
    dxLayoutItem240: TdxLayoutItem;
    dxLayoutGroup125: TdxLayoutGroup;
    dxLayoutItem241: TdxLayoutItem;
    dxLayoutItem242: TdxLayoutItem;
    dxLayoutItem243: TdxLayoutItem;
    dxDBGrid57REASON_NO: TdxDBGridColumn;
    dxDBGrid57REASON_NAME: TdxDBGridColumn;
    qryCongcuTrangthai: TIBOQuery;
    dsCongcuTrangthai: TDataSource;
    dxlcCongcuTrangthai: TdxLayoutControl;
    dxDBGrid58: TdxDBGrid;
    ElPopupButton182: TElPopupButton;
    ElPopupButton183: TElPopupButton;
    ElPopupButton184: TElPopupButton;
    dxLayoutGroup126: TdxLayoutGroup;
    dxLayoutItem244: TdxLayoutItem;
    dxLayoutGroup127: TdxLayoutGroup;
    dxLayoutItem245: TdxLayoutItem;
    dxLayoutItem246: TdxLayoutItem;
    dxLayoutItem247: TdxLayoutItem;
    dxDBGrid58MA_TRANGTHAI: TdxDBGridColumn;
    qryCongcuTrangthaiMA_TRANGTHAI: TWideStringField;
    qryCongcuTrangthaiTEN_TRANGTHAI: TWideStringField;
    dxDBGrid58TEN_TRANGTHAI: TdxDBGridColumn;
    dxlcCongcu: TdxLayoutControl;
    dxDBGrid59: TdxDBGrid;
    ElPopupButton185: TElPopupButton;
    ElPopupButton186: TElPopupButton;
    ElPopupButton187: TElPopupButton;
    dxLayoutGroup128: TdxLayoutGroup;
    dxLayoutItem248: TdxLayoutItem;
    dxLayoutGroup129: TdxLayoutGroup;
    dxLayoutItem249: TdxLayoutItem;
    dxLayoutItem250: TdxLayoutItem;
    dxLayoutItem251: TdxLayoutItem;
    qryCongcu: TIBOQuery;
    dsCongcu: TDataSource;
    qryCongcuMA_CONGCU: TIntegerField;
    qryCongcuMA_LOAI: TWideStringField;
    qryCongcuTEN_CONGCU: TWideStringField;
    qryCongcuGHI_CHU: TWideStringField;
    dxDBGrid59MA_CONGCU: TdxDBGridColumn;
    dxDBGrid59TEN_CONGCU: TdxDBGridColumn;
    qryDeptListORDER_RIGHT: TSmallintField;
    qryDeptListLEGAL_RIGHT: TSmallintField;
    qryDeptListDEPT_LOGO: TBlobField;
    qryDeptListIMG_TYPE: TWideStringField;
    qryDeptListDEPT_LEFT_INDEX: TIntegerField;
    qryDeptListDEPT_RIGHT_INDEX: TIntegerField;
    dsLanguage: TDataSource;
    qryLanguage: TIBOQuery;
    dsSkillList: TDataSource;
    qrySkillList: TIBOQuery;
    qryLanguageLANGUAGE_NO: TWideStringField;
    qryLanguageLANGUAGE_NAME: TWideStringField;
    qryLanguageNOTE: TWideStringField;
    qrySkillListSKILL_NO: TWideStringField;
    qrySkillListSKILL_NAME: TWideStringField;
    qrySkillListNOTE: TWideStringField;
    dxlcLanguage: TdxLayoutControl;
    dxDBGrid60: TdxDBGrid;
    ElPopupButton188: TElPopupButton;
    ElPopupButton189: TElPopupButton;
    ElPopupButton190: TElPopupButton;
    dxLayoutGroup130: TdxLayoutGroup;
    dxLayoutItem252: TdxLayoutItem;
    dxLayoutGroup131: TdxLayoutGroup;
    dxLayoutItem253: TdxLayoutItem;
    dxLayoutItem254: TdxLayoutItem;
    dxLayoutItem255: TdxLayoutItem;
    dxDBGrid60LANGUAGE_NO: TdxDBGridColumn;
    dxDBGrid60LANGUAGE_NAME: TdxDBGridColumn;
    dxlcSkill: TdxLayoutControl;
    dxDBGrid61: TdxDBGrid;
    ElPopupButton191: TElPopupButton;
    ElPopupButton192: TElPopupButton;
    ElPopupButton193: TElPopupButton;
    dxLayoutGroup132: TdxLayoutGroup;
    dxLayoutItem256: TdxLayoutItem;
    dxLayoutGroup133: TdxLayoutGroup;
    dxLayoutItem257: TdxLayoutItem;
    dxLayoutItem258: TdxLayoutItem;
    dxLayoutItem259: TdxLayoutItem;
    dxDBGrid61SKILL_NO: TdxDBGridColumn;
    dxDBGrid61SKILL_NAME: TdxDBGridColumn;
    dsLanguageLevel: TDataSource;
    qryLanguageLevel: TIBOQuery;
    dsSkillLevel: TDataSource;
    qrySkillLevel: TIBOQuery;
    qryLanguageLevelLEVEL_NO: TWideStringField;
    qryLanguageLevelLEVEL_NAME: TWideStringField;
    qryLanguageLevelLEVEL_ORDER: TIntegerField;
    qrySkillLevelLEVEL_NO: TWideStringField;
    qrySkillLevelLEVEL_NAME: TWideStringField;
    qrySkillLevelLEVEL_ORDER: TIntegerField;
    dxlcLanguageLevel: TdxLayoutControl;
    dxDBGrid63: TdxDBGrid;
    ElPopupButton197: TElPopupButton;
    ElPopupButton198: TElPopupButton;
    ElPopupButton199: TElPopupButton;
    dxLayoutGroup136: TdxLayoutGroup;
    dxLayoutItem264: TdxLayoutItem;
    dxLayoutGroup137: TdxLayoutGroup;
    dxLayoutItem265: TdxLayoutItem;
    dxLayoutItem266: TdxLayoutItem;
    dxLayoutItem267: TdxLayoutItem;
    dxDBGrid63LEVEL_NO: TdxDBGridColumn;
    dxDBGrid63LEVEL_NAME: TdxDBGridColumn;
    dxDBGrid63LEVEL_ORDER: TdxDBGridColumn;
    dxlcSkillLevel: TdxLayoutControl;
    dxDBGrid62: TdxDBGrid;
    dxDBGridColumn5: TdxDBGridColumn;
    dxDBGridColumn6: TdxDBGridColumn;
    dxDBGridColumn7: TdxDBGridColumn;
    ElPopupButton194: TElPopupButton;
    ElPopupButton195: TElPopupButton;
    ElPopupButton196: TElPopupButton;
    dxLayoutGroup134: TdxLayoutGroup;
    dxLayoutItem260: TdxLayoutItem;
    dxLayoutGroup135: TdxLayoutGroup;
    dxLayoutItem261: TdxLayoutItem;
    dxLayoutItem262: TdxLayoutItem;
    dxLayoutItem263: TdxLayoutItem;
    dxlcClass: TdxLayoutControl;
    dxDBGrid64: TdxDBGrid;
    ElPopupButton201: TElPopupButton;
    ElPopupButton202: TElPopupButton;
    dxLayoutGroup138: TdxLayoutGroup;
    dxLayoutItem268: TdxLayoutItem;
    dxLayoutGroup139: TdxLayoutGroup;
    dxLayoutItem270: TdxLayoutItem;
    dxLayoutItem271: TdxLayoutItem;
    qryClass: TIBOQuery;
    dsClass: TDataSource;
    qryClassCLASS_CODE: TWideStringField;
    qryClassCLASS_NAME: TWideStringField;
    dxDBGrid64CLASS_CODE: TdxDBGridColumn;
    dxDBGrid64CLASS_NAME: TdxDBGridColumn;
    qryEmp_PositionEMPLOYEE_NO: TWideStringField;
    qryEmp_PositionFULL_NAME: TWideStringField;
    qryEmp_PositionPOSITION_NO: TWideStringField;
    qryEmp_PositionPOSITION_TITLE: TWideStringField;
    qryEmp_PositionASSIGNED_DATE: TDateField;
    qryEmp_PositionIS_MAIN_POSITION: TSmallintField;
    qryEmp_PositionDEPT_NAME: TWideStringField;
    qryEmp_PositionTITLE_NAME: TWideStringField;
    qryEmpForSelectID_CARD_NO: TWideStringField;
    dxlcRecruitmentPlan: TdxLayoutControl;
    dxDBGrid65: TdxDBGrid;
    dxDBGrid56PLAN_NO: TdxDBGridColumn;
    dxDBGrid56PLAN_NAME: TdxDBGridColumn;
    ElPopupButton200: TElPopupButton;
    ElPopupButton203: TElPopupButton;
    ElPopupButton204: TElPopupButton;
    dxLayoutGroup140: TdxLayoutGroup;
    dxLayoutItem269: TdxLayoutItem;
    dxLayoutGroup141: TdxLayoutGroup;
    dxLayoutItem272: TdxLayoutItem;
    dxLayoutItem273: TdxLayoutItem;
    dxLayoutItem274: TdxLayoutItem;
    qryRecruitmentPlan: TIBOQuery;
    qryRecruitmentPlanPLAN_NO: TWideStringField;
    qryRecruitmentPlanPLAN_NAME: TWideStringField;
    dsRecruitmentPlan: TDataSource;
    dxlcFormalParam: TdxLayoutControl;
    dxDBGrid66: TdxDBGrid;
    ElPopupButton205: TElPopupButton;
    ElPopupButton206: TElPopupButton;
    ElPopupButton207: TElPopupButton;
    dxLayoutGroup142: TdxLayoutGroup;
    dxLayoutItem275: TdxLayoutItem;
    dxLayoutGroup143: TdxLayoutGroup;
    dxLayoutItem276: TdxLayoutItem;
    dxLayoutItem277: TdxLayoutItem;
    dxLayoutItem278: TdxLayoutItem;
    qryFormalParam: TIBOQuery;
    dsFormalParam: TDataSource;
    qryFormalParamPARAM_NO: TWideStringField;
    qryFormalParamPARAM_NAME: TWideStringField;
    dxDBGrid66PARAM_NO: TdxDBGridColumn;
    dxDBGrid66PARAM_NAME: TdxDBGridColumn;
    chkViewInvalidDept: TdxCheckEdit;
    dxlcDeptListItem1: TdxLayoutItem;
    dxtlDeptListENDED_DATE: TdxDBTreeListDateColumn;
    dxlcEmpForSelectItem1: TdxLayoutItem;
    dximOption: TdxImageEdit;
    qryEmp_PositionKEY_FIELD: TWideStringField;
    qryEmpForSelectPASSPORT: TWideStringField;
    qryEmpForSelectMASO_THUE_CANHAN: TWideStringField;
    qryEmp_PositionASS_KEY_ID: TIntegerField;
    dxlcUserAccount: TdxLayoutControl;
    dxDBGrid67: TdxDBGrid;
    ElPopupButton208: TElPopupButton;
    ElPopupButton209: TElPopupButton;
    dxLayoutGroup144: TdxLayoutGroup;
    dxLayoutItem279: TdxLayoutItem;
    dxLayoutGroup145: TdxLayoutGroup;
    dxLayoutItem280: TdxLayoutItem;
    dxLayoutItem281: TdxLayoutItem;
    qryUserAccount: TIBOQuery;
    dsUserAccount: TDataSource;
    qryUserAccountUSERACCID: TWideStringField;
    qryUserAccountDISPLAYNAME: TWideStringField;
    qryUserAccountSUBSYSTEMID: TIntegerField;
    dxDBGrid67USERACCID: TdxDBGridColumn;
    dxDBGrid67DISPLAYNAME: TdxDBGridColumn;
    dxlcBaoHiem_TinhThanhPho: TdxLayoutControl;
    dxDBGrid68: TdxDBGrid;
    ElPopupButton210: TElPopupButton;
    ElPopupButton211: TElPopupButton;
    ElPopupButton212: TElPopupButton;
    dxLayoutGroup146: TdxLayoutGroup;
    dxLayoutItem282: TdxLayoutItem;
    dxLayoutGroup147: TdxLayoutGroup;
    dxLayoutItem283: TdxLayoutItem;
    dxLayoutItem284: TdxLayoutItem;
    dxLayoutItem285: TdxLayoutItem;
    qryBaoHiem_TinhThanhPho: TIBOQuery;
    dsBaoHiem_TinhThanhPho: TDataSource;
    qryBaoHiem_TinhThanhPhoMA_TINH_THANHPHO: TWideStringField;
    qryBaoHiem_TinhThanhPhoTEN_TINH_THANHPHO: TWideStringField;
    dxDBGrid68MA_TINH_THANHPHO: TdxDBGridColumn;
    dxDBGrid68TEN_TINH_THANHPHO: TdxDBGridColumn;
    qryWageCompany: TIBOQuery;
    qryWageCompanyWAGE_SCALE: TWideStringField;
    qryWageCompanyWAGE_SCALE_NAME: TWideStringField;
    qryWageCompanyWAGE_LEVEL: TIntegerField;
    qryWageCompanyWAGE_COEFF: TIBOFloatField;
    qryWageCompanyPROMOTION: TIntegerField;
    dsWageCompany: TDataSource;
    dxlcWageCompany: TdxLayoutControl;
    dxDBGrid69: TdxDBGrid;
    dxDBGridColumn8: TdxDBGridColumn;
    dxDBGridColumn9: TdxDBGridColumn;
    dxDBGridColumn10: TdxDBGridColumn;
    dxDBGridColumn11: TdxDBGridColumn;
    ElPopupButton213: TElPopupButton;
    ElPopupButton214: TElPopupButton;
    ElPopupButton215: TElPopupButton;
    dxLayoutGroup148: TdxLayoutGroup;
    dxLayoutItem286: TdxLayoutItem;
    dxLayoutGroup149: TdxLayoutGroup;
    dxLayoutItem287: TdxLayoutItem;
    dxLayoutItem288: TdxLayoutItem;
    dxLayoutItem289: TdxLayoutItem;
    qryEmpForSelectTITLE_NAME: TWideStringField;
    procedure DefOnDblClick(Sender: TObject);
    procedure DefOnTreeDblClick(Sender: TObject);
    procedure DefOnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure FormCreate(Sender: TObject);
    procedure ElPopupButton4Click(Sender: TObject);
    procedure btnShowDeptListClick(Sender: TObject);
    procedure ElPopupButton10Click(Sender: TObject);
    procedure ElPopupButton15Click(Sender: TObject);
    procedure ElPopupButton18Click(Sender: TObject);
    procedure ElPopupButton21Click(Sender: TObject);
    procedure ElPopupButton24Click(Sender: TObject);
    procedure ElPopupButton27Click(Sender: TObject);
    procedure ElPopupButton32Click(Sender: TObject);
    procedure ElPopupButton35Click(Sender: TObject);
    procedure ElPopupButton38Click(Sender: TObject);
    procedure ElPopupButton41Click(Sender: TObject);
    procedure ElPopupButton44Click(Sender: TObject);
    procedure ElPopupButton47Click(Sender: TObject);
    procedure ElPopupButton50Click(Sender: TObject);
    procedure ElPopupButton53Click(Sender: TObject);
    procedure ElPopupButton56Click(Sender: TObject);
    procedure ElPopupButton61Click(Sender: TObject);
    procedure ElPopupButton66Click(Sender: TObject);
    procedure ElPopupButton69Click(Sender: TObject);
    procedure ElPopupButton72Click(Sender: TObject);
    procedure ElPopupButton75Click(Sender: TObject);
    procedure ElPopupButton78Click(Sender: TObject);
    procedure ElPopupButton84Click(Sender: TObject);
    procedure gridWDTCOLORCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure ElPopupButton87Click(Sender: TObject);
    procedure ElPopupButton92Click(Sender: TObject);
    procedure gridWHTColumn4CustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure RefreshDataset(dataset: TIBOQuery);
    procedure btnCalendarClick(Sender: TObject);
    procedure btnCurrencyListClick(Sender: TObject);
    procedure ElPopupButton81Click(Sender: TObject);
    procedure gridWageElementTypeColumn4CustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure ElPopupButton95Click(Sender: TObject);
    procedure ElPopupButton100Click(Sender: TObject);
    procedure ElPopupButton107Click(Sender: TObject);
    procedure ElPopupButton130Click(Sender: TObject);
    procedure ElPopupButton127Click(Sender: TObject);
    procedure ElPopupButton122Click(Sender: TObject);
    procedure ElPopupButton136Click(Sender: TObject);
    procedure ElPopupButton139Click(Sender: TObject);
    procedure ElPopupButton147Click(Sender: TObject);
    procedure ElPopupButton150Click(Sender: TObject);
    procedure DefOnGridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ElPopupButton158Click(Sender: TObject);
    procedure ElPopupButton161Click(Sender: TObject);
    procedure ElPopupButton164Click(Sender: TObject);
    procedure ElPopupButton155Click(Sender: TObject);
    procedure ElPopupButton167Click(Sender: TObject);
    procedure ElPopupButton170Click(Sender: TObject);
    procedure ElPopupButton173Click(Sender: TObject);
    procedure ElPopupButton176Click(Sender: TObject);
    procedure ElPopupButton179Click(Sender: TObject);
    procedure ElPopupButton182Click(Sender: TObject);
    procedure qryEmp_PositionBeforeOpen(DataSet: TDataSet);
    procedure ElPopupButton185Click(Sender: TObject);
    procedure ElPopupButton188Click(Sender: TObject);
    procedure ElPopupButton191Click(Sender: TObject);
    procedure ElPopupButton197Click(Sender: TObject);
    procedure ElPopupButton194Click(Sender: TObject);
    procedure chkViewInvalidDeptChange(Sender: TObject);
    procedure dxtlDeptListCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dximOptionChange(Sender: TObject);
    procedure ElPopupButton210Click(Sender: TObject);
  private
    { Private declarations }
    FListKeyField: Variant;
  public
    { Public declarations }
    property ListKeyField: Variant write FListKeyField;
  end;
var
  frmPopupMain: TfrmPopupMain;
implementation

uses MainDM, SSP_Library, DeptListForm, TitleListForm,
  WorkTypeForm, LocationTypeList, NationListForm, CareerTypeListForm,
  RaceListForm, ReligionListForm, LocationListForm, DescentListForm,
  EduLevelListForm, CareerListForm, EduFieldListForm, DecisionTypeListForm,
  EmpInfoDataModule, PositionListForm, DecisionLevelForm, DisciplineForm,
  DisciplineListForm, RewardForm, RewardListForm, ReportTemplateListForm,
  ContractTypeForm, ContractMakerForm, WorkDateTimeTypeForm, CalendarForm,
  CurrencyListForm, DocTemplateListForm, WageElementTypeForm,
  RelationshipForm, EstimateSysLevelForm, TrainingForm,
  TrainingSourceForm, TrainingTypeForm, DeptTypeForm, TrainingSupplyForm,
  OrganizationListForm, RecruitmentSourceForm,
  TrainingResultForm, AcademicListForm,
  ChucvuCDoanForm, ChucvuDangForm, ChucvuDoanForm, MarrialStatusListForm,
  EstimateGroupForm, TrainingContentForm,WorkShiftListForm,
  OffWorkReasonForm, TrangthaiCongcu, DanhmucCongcu_Form, LanguageListForm,
  SkillListForm, BAOHIEM_TinhThanhPhoForm;
                                    
{$R *.dfm}

procedure TfrmPopupMain.DefOnDblClick(Sender: TObject);    
begin
  inherited;
  PopupProcess(self, true, sender);
end;

procedure TfrmPopupMain.DefOnTreeDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self, true, sender);
end;

procedure TfrmPopupMain.DefOnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
    PopupProcess(self, true, sender);
end;

procedure TfrmPopupMain.FormCreate(Sender: TObject);
var
  i: integer;
begin
  dximOption.Tag := 1;
  dximOption.Descriptions.Add(Utf8Decode('Đang làm việc'));
  dximOption.Descriptions.Add(Utf8Decode('Đã thôi việc'));
  dximOption.Descriptions.Add(Utf8Decode('Tất cả'));
  dximOption.Values.Add('WORK');
  dximOption.Values.Add('OUT');
  dximOption.Values.Add('ALL');

  dximOption.Text := 'ALL';
  dximOption.Tag := 0;

  inherited;
  for i := 0 to ComponentCount - 1 do
    if (Components[i] is TdxDBGrid) then
    begin
      (Components[i] as TdxDBGrid).OptionsBehavior :=
        (Components[i] as TdxDBGrid).OptionsBehavior - [edgoEditing] +
        [edgoDblClick];
      (Components[i] as TdxDBGrid).OnDblClick := DefOnDblClick;
      (Components[i] as TdxDBGrid).OnKeyDown := DefOnKeyDown;
      (Components[i] as TdxDBGrid).OnMouseUp := DefOnGridMouseUp;

    end
    else
      if (Components[i] is TdxDBTreeList) then
    begin
      (Components[i] as TdxDBTreeList).OptionsBehavior :=
        (Components[i] as TdxDBTreeList).OptionsBehavior - [etoEditing] +
        [etoDblClick];

      (Components[i] as TdxDBTreeList).OnDblClick := DefOnTreeDblClick;
      (Components[i] as TdxDBTreeList).OnKeyDown := DefOnKeyDown;
      (Components[i] as TdxDBTreeList).OnMouseUp := DefOnGridMouseUp;
    end
    else
      if (Components[i] is TdxLayoutControl) then
    begin
      (Components[i] as TdxLayoutControl).ParentFont := false;
    end
end;

procedure TfrmPopupMain.ElPopupButton4Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmDeptType, frmDeptType);
  RefreshDataset(qryDeptTypeList);
end;

procedure TfrmPopupMain.btnShowDeptListClick(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmDeptList, frmDeptList);
  RefreshDataset(qryDeptList);
end;

procedure TfrmPopupMain.ElPopupButton10Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmTitleList, frmTitleList);
  RefreshDataset(qryTitleList);
end;

procedure TfrmPopupMain.ElPopupButton15Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmWorkType, frmWorkType);
  RefreshDataset(qryWorkTypeList);
end;

procedure TfrmPopupMain.ElPopupButton18Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmLocationTypeList, frmLocationTypeList);
  RefreshDataset(qryLocationType);
end;

procedure TfrmPopupMain.ElPopupButton21Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmNationList, frmNationList);
  RefreshDataset(qryNationList);
end;

procedure TfrmPopupMain.ElPopupButton24Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmCareerTypeList, frmCareerTypeList);
  RefreshDataset(qryCareerTypeList);
end;

procedure TfrmPopupMain.ElPopupButton27Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmRaceList, frmRaceList);
  RefreshDataset(qryRaceList);
end;

procedure TfrmPopupMain.ElPopupButton32Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmReligionList, frmReligionList);
  RefreshDataset(qryReligionList);
end;

procedure TfrmPopupMain.ElPopupButton35Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmLocationList, frmLocationList);
  RefreshDataset(qryLocationList);
end;

procedure TfrmPopupMain.ElPopupButton38Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmDescentList, frmDescentList);
  RefreshDataset(qryDescentList);
end;

procedure TfrmPopupMain.ElPopupButton41Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmEduLevelList, frmEduLevelList);
  RefreshDataset(qryEduLevelList);
end;

procedure TfrmPopupMain.ElPopupButton44Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmCareerList, frmCareerList);
  RefreshDataset(qryCareerList);
end;

procedure TfrmPopupMain.ElPopupButton47Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmEduFieldList, frmEduFieldList);
  RefreshDataset(qryEduFieldList);
end;

procedure TfrmPopupMain.ElPopupButton50Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmEduFieldList, frmEduFieldList);
  RefreshDataset(qryFieldLevelList);
end;

procedure TfrmPopupMain.ElPopupButton53Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmDecisionType, frmDecisionType);
  RefreshDataset(qryDecisionType);
end;

procedure TfrmPopupMain.ElPopupButton56Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmPositionList, frmPositionList);
  RefreshDataset(qryPosition);
end;

procedure TfrmPopupMain.ElPopupButton61Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmRewardList, frmRewardList);
  RefreshDataset(qryRewardList);
end;

procedure TfrmPopupMain.ElPopupButton66Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmRewardForm, frmRewardForm);
  RefreshDataset(qryRewardForm);
end;

procedure TfrmPopupMain.ElPopupButton69Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmDisciplineList, frmDisciplineList);
  RefreshDataset(qryDisciplineList);
end;

procedure TfrmPopupMain.ElPopupButton72Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmDisciplineForm, frmDisciplineForm);
  RefreshDataset(qryDisciplineForm);
end;

procedure TfrmPopupMain.ElPopupButton75Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmDecisionLevel, frmDecisionLevel);
  RefreshDataset(qryDecisionLevel);
end;

procedure TfrmPopupMain.ElPopupButton78Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmReportTemplateList, frmReportTemplateList);
  RefreshDataset(qryReportTemplateList);
end;

procedure TfrmPopupMain.ElPopupButton84Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmContractType, frmContractType);
  RefreshDataset(qryContractType);
end;

procedure TfrmPopupMain.gridWDTCOLORCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  int_color: integer;
begin
  inherited;
  try
    int_color := StrToIntDef(VarToStr(ANode.Values[gridWDTWDT_COLOR.Index]), 0);
    AColor := int_color;
    AText := IntToHex(int_color, 6);
  except
  end
end;

procedure TfrmPopupMain.ElPopupButton87Click(Sender: TObject);
begin
  inherited;
  with TfrmWorkDateHourType.Create(self) do
  try
    pageMain.ActivePage := tabWorkDateType;
    ShowModal;
  finally
    Free;
  end;
  RefreshDataset(qryWorkDateType);
end;

procedure TfrmPopupMain.ElPopupButton92Click(Sender: TObject);
begin
  inherited;
  with TfrmWorkDateHourType.Create(self) do
  try
    pageMain.ActivePage := tabWorkHourType;
    ShowModal;
  finally
    Free;
  end;
  RefreshDataset(qryWorkHourType);
end;

procedure TfrmPopupMain.gridWHTColumn4CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  int_color: integer;
begin
  inherited;
  try
    int_color := StrToIntDef(VarToStr(ANode.Values[gridWHTWHT_COLOR.Index]), 0);
    AColor := int_color;
    AText := IntToHex(int_color, 6);
  except
  end
end;

procedure TfrmPopupMain.RefreshDataset(dataset: TIBOQuery);
var
  KeyFieldString: string;
begin
  dataset.DisableControls;
  if dataset.Active then
    dataset.Refresh
  else
    dataset.Open;
  if (FListKeyField <> '') then
  begin
    KeyFieldString := DataSet.Fields[0].FieldName;
    try
      DataSet.Locate(KeyFieldString, FListKeyField, []);
    except
    end;
  end;
  dataset.EnableControls
end;

procedure TfrmPopupMain.btnCalendarClick(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmCalendar, frmCalendar);
  RefreshDataset(qryCalendar);
end;

procedure TfrmPopupMain.btnCurrencyListClick(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmCurrencyList, frmCurrencyList);
  RefreshDataset(qryCurrencyList);
end;

procedure TfrmPopupMain.ElPopupButton81Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmDocTemplateList, frmDocTemplateList);
  RefreshDataset(qryDocTemplate);
end;

procedure TfrmPopupMain.gridWageElementTypeColumn4CustomDrawCell(Sender:
  TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  int_color: integer;
begin
  inherited;
  try
    int_color :=
      StrToIntDef(VarToStr(ANode.Values[gridWageElementTypeCOLOR.Index]), 0);
    AColor := int_color;
    AText := IntToHex(int_color, 6);
  except
  end
end;

procedure TfrmPopupMain.ElPopupButton95Click(Sender: TObject);
begin
  inherited;
  with TfrmWageElementType.Create(self) do
  try
    ShowModal;
  finally
    Free;
  end;
  RefreshDataset(qryWageElementType);
end;

procedure TfrmPopupMain.ElPopupButton100Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmRelationship, frmRelationship);
  RefreshDataset(qryRelationship);
end;

procedure TfrmPopupMain.ElPopupButton107Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmEstimateSysLevel, frmEstimateSysLevel);
  RefreshDataset(qryEstimateSystem);
end;

procedure TfrmPopupMain.ElPopupButton130Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmTrainingSource, frmTrainingSource);
  RefreshDataset(qryTrainingSource);
end;

procedure TfrmPopupMain.ElPopupButton127Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmTrainingForm, frmTrainingForm);
  RefreshDataset(qryTrainingForm);
end;

procedure TfrmPopupMain.ElPopupButton122Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmTrainingType, frmTrainingType);
  RefreshDataset(qryTrainingType);
end;

procedure TfrmPopupMain.ElPopupButton136Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmTrainingSupply, frmTrainingSupply);
  RefreshDataset(qryTrainingSupply);
end;

procedure TfrmPopupMain.ElPopupButton139Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmOrganizationList, frmOrganizationList);
  RefreshDataset(qryOrgList);
end;

procedure TfrmPopupMain.ElPopupButton147Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmRecruitmentSource, frmRecruitmentSource);
  RefreshDataset(qryRecruitmentSource);
end;

procedure TfrmPopupMain.ElPopupButton150Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmTrainingResult, frmTrainingResult);
  RefreshDataset(qryTrainingResult);
end;

procedure TfrmPopupMain.DefOnGridMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  //
end;

procedure TfrmPopupMain.ElPopupButton158Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmChucvuDang, frmChucvuDang);
  RefreshDataset(qryChucvuDang);
end;

procedure TfrmPopupMain.ElPopupButton161Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmChucvuDoan, frmChucvuDoan);
  RefreshDataset(qryChucvuDoan);
end;

procedure TfrmPopupMain.ElPopupButton164Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmChucvuCDoan, frmChucvuCDoan);
  RefreshDataset(qryChucvuCDoan);
end;

procedure TfrmPopupMain.ElPopupButton155Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmAcademicList, frmAcademicList);
  RefreshDataset(qryAcademicList);
end;

procedure TfrmPopupMain.ElPopupButton167Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmMarrialStatus, frmMarrialStatus);
  RefreshDataset(qryMarrialStatus);
end;

procedure TfrmPopupMain.ElPopupButton170Click(Sender: TObject);
begin
  inherited;
   ShowModalForm(TfrmEstimateGroup, frmEstimateGroup);
  RefreshDataset(qryEstimateGroup);
end;

procedure TfrmPopupMain.ElPopupButton173Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmTrainingContent, frmTrainingContent);
  RefreshDataset(qryTrainingContent);
end;

procedure TfrmPopupMain.ElPopupButton176Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmWorkShiftList, frmWorkShiftList);
  RefreshDataset(qryWOrkShift);
end;

procedure TfrmPopupMain.ElPopupButton179Click(Sender: TObject);
begin
  inherited;
   ShowModalForm(TfrmOffWorkReason, frmOffWorkReason);
  RefreshDataset(qryOffWorkReason);
end;

procedure TfrmPopupMain.ElPopupButton182Click(Sender: TObject);
begin
  inherited;
   ShowModalForm(TfrmCongcuTrangthai, frmCongcuTrangthai);
  RefreshDataset(qryCongcuTrangthai);
end;

procedure TfrmPopupMain.qryEmp_PositionBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  dmMain.DefOnBeforeOpen(Dataset);
  if qryEmp_Position.ParamByName('IS_MAIN_POSITION').IsNull then
    qryEmp_Position.ParamByName('IS_MAIN_POSITION').Value:=2;
end;

procedure TfrmPopupMain.ElPopupButton185Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmCongcuDanhmuc,frmCongcuDanhmuc);
  RefreshDataset(qryCongcu);
end;

procedure TfrmPopupMain.ElPopupButton188Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmLanguage,frmLanguage);
  RefreshDataset(qryLanguage);
end;

procedure TfrmPopupMain.ElPopupButton191Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmSkill,frmSkill);
  RefreshDataset(qrySkillList);
end;

procedure TfrmPopupMain.ElPopupButton197Click(Sender: TObject);
begin
  inherited;
   ShowModalForm(TfrmLanguage,frmLanguage);
  RefreshDataset(qryLanguage);
end;

procedure TfrmPopupMain.ElPopupButton194Click(Sender: TObject);
begin
  inherited;
   ShowModalForm(TfrmSkill,frmSkill);
  RefreshDataset(qrySkillList);
end;

procedure TfrmPopupMain.chkViewInvalidDeptChange(Sender: TObject);
begin
  inherited;
  with qryDeptList do
  begin
    DisableControls;
    if Active then
      Close;
    if chkViewInvalidDept.Checked then
      SQLWhere.Clear
    else
      SQLWhere.Text:='where (A.ENDED_DATE is null)';
    Prepare;  
    Open;
    EnableControls;
  end;
  CustomExpand(dxtlDeptList);
end;

procedure TfrmPopupMain.dxtlDeptListCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    if VarToStr(ANode.Values[dxtlDeptListENDED_DATE.Index]) = '' then
      AFont.Color := clBlack
    else
      AFont.Color := clRed;
  except
  end
end;

procedure TfrmPopupMain.dximOptionChange(Sender: TObject);
begin
  inherited;
  with qryEmpForSelect do
  begin
    DisableControls;
    if Active then Close;
    SQLWhere.Clear; 
    if dximOption.Text = 'ALL' then
      SQLWhere.Text := ' where (IS_CADIDATE is null) or (IS_CADIDATE=0) '
    else
      if dximOption.Text = 'WORK' then
        SQLWhere.Text := ' where ((IS_CADIDATE is null) or (IS_CADIDATE=0)) and ((STATE is null) or (STATE=''WORK''))'
      else
        if dximOption.Text = 'OUT' then
          SQLWhere.Text := ' where ((IS_CADIDATE is null) or (IS_CADIDATE=0)) and STATE=''OUT''';

    Open;
    EnableControls;
  end;
end;

procedure TfrmPopupMain.ElPopupButton210Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmBAOHIEM_TinhThanhPho,frmBAOHIEM_TinhThanhPho);
  RefreshDataset(qryBAOHIEM_TinhThanhPho);
end;

end.

