unit CandidatorForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, ExtCtrls, dxExEdtr, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, ElPgCtl, ElPanel, ElSplit, DB, IBODataset,
  ImgList, dxEdLib, dxDBELib, dxEditor, dxDBTLCl, dxGrClms, dxGrClEx;

type
  TfrmCandidator = class(TfrmEditBase)
    panelMain: TPanel;
    dxlcMainItem2: TdxLayoutItem;
    gridCandidator: TdxDBGrid;
    qryCandidator: TIBOQuery;
    dsCandidator: TDataSource;
    ElSplitter1: TElSplitter;
    pageMain: TElPageControl;
    tabThongtin: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    panelPortrait: TPanel;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dbimGENDER: TdxDBImageEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxDBEdit4: TdxDBEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxDBDateEdit1: TdxDBDateEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxDBEdit5: TdxDBEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxDBEdit7: TdxDBEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxDBEdit8: TdxDBEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxDBEdit9: TdxDBEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxDBEdit10: TdxDBEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxDBEdit11: TdxDBEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    gridCandidatorEMPLOYEE_NO: TdxDBGridColumn;
    gridCandidatorFULL_NAME: TdxDBGridColumn;
    qryAbility: TIBOQuery;
    qryAbilityEMPLOYEE_NO: TWideStringField;
    qryAbilityEDU_FIELD_NO: TWideStringField;
    qryAbilityEDU_FIELD_NAME: TWideStringField;
    qryAbilityEDU_LEVEL_NO: TWideStringField;
    qryAbilityFIELD_LEVEL_NAME: TWideStringField;
    qryAbilityISSUED_DATE: TDateField;
    qryAbilityISSUED_PLACE: TWideStringField;
    qryAbilityEDU_ARCHIVEMENT: TWideStringField;
    qryAbilityEMP_EDU_NOTE: TWideStringField;
    dsAbility: TDataSource;
    gridChuyenmon: TdxDBGrid;
    gridChuyenmonEDU_FIELD_NAME: TdxDBGridPopupColumn;
    gridChuyenmonFIELD_LEVEL_NAME: TdxDBGridPopupColumn;
    gridChuyenmonISSUED_DATE: TdxDBGridDateColumn;
    gridChuyenmonISSUED_PLACE: TdxDBGridColumn;
    gridChuyenmonEDU_ARCHIVEMENT: TdxDBGridColumn;
    imglGender: TImageList;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    qryCandidatorEMPLOYEE_NO: TWideStringField;
    qryCandidatorLAST_NAME: TWideStringField;
    qryCandidatorMIDDLE_NAME: TWideStringField;
    qryCandidatorFIRST_NAME: TWideStringField;
    qryCandidatorFULL_NAME: TWideStringField;
    qryCandidatorGENDER: TSmallintField;
    qryCandidatorBIRTH_DATE: TDateField;
    qryCandidatorID_CARD_NO: TWideStringField;
    qryCandidatorISSUED_DATE: TDateField;
    qryCandidatorISSUED_PLACE: TWideStringField;
    qryCandidatorRESIDENT_ADDR: TWideStringField;
    qryCandidatorCONTACT_ADDR: TWideStringField;
    qryCandidatorCONTACT_PHONE: TWideStringField;
    qryCandidatorHAND_PHONE: TWideStringField;
    qryCandidatorEMAIL: TWideStringField;
    qryCandidatorPORTRAIT: TBlobField;
    qryCandidatorIMG_TYPE: TWideStringField;
    qryCandidatorIS_CADIDATE: TSmallintField;
    dxLayoutControl1Group9: TdxLayoutGroup;
    gridPositionApply: TdxDBGrid;
    dxLayoutControl1Item16: TdxLayoutItem;
    qryPositionApply: TIBOQuery;
    dsPositionApply: TDataSource;
    qryPositionApplyEMPLOYEE_NO: TWideStringField;
    qryPositionApplyPOSITION_NO: TWideStringField;
    qryPositionApplyDEPT_NAME: TWideStringField;
    qryPositionApplyTITLE_NAME: TWideStringField;
    qryPositionApplyAPPLY_DATE: TDateField;
    qryPositionApplyNOTE: TWideStringField;
    gridPositionApplyDEPT_NAME: TdxDBGridPopupColumn;
    gridPositionApplyTITLE_NAME: TdxDBGridColumn;
    gridPositionApplyAPPLY_DATE: TdxDBGridDateColumn;
    gridPositionApplyNOTE: TdxDBGridColumn;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxDBPopupEdit1: TdxDBPopupEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxDBCalcEdit1: TdxDBCalcEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxDBCalcEdit2: TdxDBCalcEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxDBPopupEdit2: TdxDBPopupEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxDBPopupEdit3: TdxDBPopupEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxDBPopupEdit4: TdxDBPopupEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxDBEdit6: TdxDBEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    dxDBCalcEdit3: TdxDBCalcEdit;
    dxLayoutControl1Item24: TdxLayoutItem;
    qryCandidatorCHIEU_CAO: TIBOFloatField;
    qryCandidatorCAN_NANG: TIBOFloatField;
    qryCandidatorNGHE_NGHIEP: TWideStringField;
    qryCandidatorTEN_NGHE_NGHIEP: TWideStringField;
    qryCandidatorTRINH_DO: TWideStringField;
    qryCandidatorTEN_TRINH_DO: TWideStringField;
    qryCandidatorNAM_TOTNGHIEP: TIntegerField;
    qryCandidatorTOTNGHIEP_TAI: TWideStringField;
    qryCandidatorDIEM_TOTNGHIEP: TIBOFloatField;
    qryCandidatorTRINHDO_VANHOA: TWideStringField;
    qryCandidatorACADEMIC_NAME: TWideStringField;
    qryCandidatorBIRTH_PLACE_ID: TWideStringField;
    qryCandidatorBIRTH_PLACE_NAME: TWideStringField;
    qryCandidatorMARRIAL_STATUS: TWideStringField;
    qryCandidatorMARRIAL_STATUS_NAME: TWideStringField;
    dxLayoutControl1Item25: TdxLayoutItem;
    dxDBPopupEdit5: TdxDBPopupEdit;
    qryPositionApplySONAM_KINHNGHIEM: TIBOFloatField;
    qryPositionApplyLUONG_MONGDOI: TIBOFloatField;
    gridPositionApplySONAM_KINHNGHIEM: TdxDBGridCalcColumn;
    gridPositionApplyLUONG_MONGDOI: TdxDBGridCalcColumn;
    qryAbilitySONAM_DAOTAO: TIBOFloatField;
    gridChuyenmonSONAM_DAOTAO: TdxDBGridCalcColumn;
    tabThongTinKhac: TElTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    gridWorkHistory: TdxDBGrid;
    gridWorkHistoryFROM_DATE: TdxDBGridDateColumn;
    gridWorkHistoryTO_DATE: TdxDBGridDateColumn;
    gridWorkHistoryWORK_JOB: TdxDBGridMaskColumn;
    gridWorkHistoryWORK_PLACE: TdxDBGridMaskColumn;
    gridWorkHistoryPLACE_ADDR: TdxDBGridMaskColumn;
    gridWorkHistoryWORK_FIELD: TdxDBGridColumn;
    gridWorkHistoryCONTACT_PERSON: TdxDBGridMaskColumn;
    gridWorkHistoryPLACE_PHONE: TdxDBGridMaskColumn;
    gridWorkHistoryNOTE: TdxDBGridMaskColumn;
    dxLayoutControl2Group2: TdxLayoutGroup;
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
    qryEmpWorkHistoryWORK_FIELD: TWideStringField;
    dsEmpWorkHistory: TDataSource;
    qryPositionApplyTIEN_TE: TWideStringField;
    qryPositionApplyPLAN_NO: TWideStringField;
    qryPositionApplyPLAN_NAME: TWideStringField;
    gridPositionApplyTIEN_TE: TdxDBGridColumn;
    gridPositionApplyPLAN_NO: TdxDBGridColumn;
    gridPositionApplyPLAN_NAME: TdxDBGridPopupColumn;
    qryAbilityISSUED_YEAR: TIntegerField;
    gridChuyenmonISSUED_YEAR: TdxDBGridSpinColumn;
    qryCandidatorTINH_LIENHE: TWideStringField;
    qryCandidatorSOTRUONG_CTAC: TWideStringField;
    qryCandidatorNANG_KHIEU: TWideStringField;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxDBPopupEdit6: TdxDBPopupEdit;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Item26: TdxLayoutItem;
    dxDBEdit12: TdxDBEdit;
    dxLayoutControl1Item27: TdxLayoutItem;
    dxDBEdit13: TdxDBEdit;
    dxLayoutControl1Group17: TdxLayoutGroup;
    dxLayoutControl1Group16: TdxLayoutGroup;
    dxLayoutControl1Group14: TdxLayoutGroup;
    dxLayoutControl1Item28: TdxLayoutItem;
    dxDBPopupEdit7: TdxDBPopupEdit;
    dxLayoutControl1Group15: TdxLayoutGroup;
    qryCandidatorNATIVE_PLACE_ID: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure gridChuyenmonEDU_FIELD_NAMEInitPopup(Sender: TObject);
    procedure gridChuyenmonEDU_FIELD_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridChuyenmonFIELD_LEVEL_NAMEInitPopup(Sender: TObject);
    procedure gridChuyenmonFIELD_LEVEL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryCandidatorLAST_NAMEChange(Sender: TField);
    procedure qryCandidatorFIRST_NAMEChange(Sender: TField);
    procedure qryCandidatorNewRecord(DataSet: TDataSet);
    procedure gridPositionApplyDEPT_NAMEInitPopup(Sender: TObject);
    procedure gridPositionApplyDEPT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryPositionApplyNewRecord(DataSet: TDataSet);
    procedure qryCandidatorMIDDLE_NAMEChange(Sender: TField);
    procedure dxDBPopupEdit1InitPopup(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit2InitPopup(Sender: TObject);
    procedure dxDBPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit4InitPopup(Sender: TObject);
    procedure dxDBPopupEdit4CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit3InitPopup(Sender: TObject);
    procedure dxDBPopupEdit3CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit5InitPopup(Sender: TObject);
    procedure dxDBPopupEdit5CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure gridPositionApplyPLAN_NAMEInitPopup(Sender: TObject);
    procedure gridPositionApplyPLAN_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBPopupEdit6InitPopup(Sender: TObject);
    procedure dxDBPopupEdit6CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit7InitPopup(Sender: TObject);
    procedure dxDBPopupEdit7CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmCandidator: TfrmCandidator;

implementation

uses MainDM, PopupMainForm, SSP_Library, DateUtils;

{$R *.dfm}

procedure TfrmCandidator.FormCreate(Sender: TObject);
begin
  dbimGENDER.Descriptions.Add(Utf8Decode('Nữ'));
  dbimGENDER.Descriptions.Add(Utf8Decode('Nam'));
  dbimGENDER.Values.Add('0');
  dbimGENDER.Values.Add('1');
  dbimGENDER.Images:=imglGender;
  dbimGENDER.ImageIndexes.Add('0');
  dbimGENDER.ImageIndexes.Add('1');
  inherited;
  qryCandidator.Open;
  qryAbility.Open;
  qryPositionApply.Open;
  qryEmpWorkHistory.Open;  
  frameToolbar1.SetDataSource(dsCandidator);
end;

procedure TfrmCandidator.gridChuyenmonEDU_FIELD_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
   frmPopupMain.qryEduFieldList.Open;
  InitPopupControl('dxlcEduFieldList',frmPopupMain,sender,2,gridChuyenmon);
end;

procedure TfrmCandidator.gridChuyenmonEDU_FIELD_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupMain.qryEduFieldList,qryAbility,
             'EDU_FIELD_NO;EDU_FIELD_NAME','EDU_FIELD_NO;EDU_FIELD_NAME',
             'EDU_FIELD_NAME',Text);
    frmPopupMain.qryEduFieldList.Close;
end;

procedure TfrmCandidator.gridChuyenmonFIELD_LEVEL_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
   frmPopupMain.qryFieldLevelList.ParamByName('EDU_FIELD_NO').Value:=
    qryAbilityEDU_FIELD_NO.Value;
  frmPopupMain.qryFieldLevelList.Open;
    InitPopupControl('dxlcFieldLevelList',frmPopupMain,sender,2,gridChuyenmon);
end;

procedure TfrmCandidator.gridChuyenmonFIELD_LEVEL_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryFieldLevelList,qryAbility,
             'FIELD_LEVEL_NO;FIELD_LEVEL_NAME','EDU_LEVEL_NO;FIELD_LEVEL_NAME',
             'FIELD_LEVEL_NAME',Text);
    frmPopupMain.qryFieldLevelList.Close;
end;

procedure TfrmCandidator.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryPositionApply.Close;
  qryAbility.Close;
  qryCandidator.Close;
  qryEmpWorkHistory.Close;
end;

procedure TfrmCandidator.qryCandidatorLAST_NAMEChange(Sender: TField);
begin
  inherited;
   qryCandidatorFULL_NAME.Value := Trim(qryCandidatorLAST_NAME.Value) + ' ' +
    Trim(qryCandidatorMIDDLE_NAME.Value) + ' ' +
    Trim(qryCandidatorFIRST_NAME.Value);
end;

procedure TfrmCandidator.qryCandidatorFIRST_NAMEChange(Sender: TField);
begin
  inherited;
  qryCandidatorFULL_NAME.Value := Trim(qryCandidatorLAST_NAME.Value) + ' ' +
    Trim(qryCandidatorMIDDLE_NAME.Value) + ' ' +
    Trim(qryCandidatorFIRST_NAME.Value);
end;

procedure TfrmCandidator.qryCandidatorNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryCandidatorIS_CADIDATE.Value:=1;
end;

procedure TfrmCandidator.gridPositionApplyDEPT_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryPosition.Open;
  InitPopupControl('dxlcPosition',frmPopupMain,sender,2,gridPositionApply);
  CustomExpand(frmPopupMain.tlPosition);
end;

procedure TfrmCandidator.gridPositionApplyDEPT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupMain.qryPosition,qryPositionApply,
               'POSITION_NO;DEPT_NAME;TITLE_NAME','POSITION_NO;DEPT_NAME;TITLE_NAME',
               'DEPT_NAME',Text);
    frmPopupMain.qryPosition.Close;
end;

procedure TfrmCandidator.qryPositionApplyNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryPositionApplyAPPLY_DATE.Value:=Today;
end;

procedure TfrmCandidator.qryCandidatorMIDDLE_NAMEChange(Sender: TField);
begin
  inherited;
  qryCandidatorFULL_NAME.Value := Trim(qryCandidatorLAST_NAME.Value) + ' ' +
    Trim(qryCandidatorMIDDLE_NAME.Value) + ' ' +
    Trim(qryCandidatorFIRST_NAME.Value);
end;

procedure TfrmCandidator.dxDBPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryLocationList.Open;
  InitPopupControl('dxlcLocationList', frmPopupMain, sender, 2.5);
end;

procedure TfrmCandidator.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryLocationList, qryCandidator,
    'LOCATION_FULL_NAME;LOCATION_FULL_NAME', 'BIRTH_PLACE_ID;BIRTH_PLACE_NAME',
    'LOCATION_FULL_NAME', Text);
  frmPopupMain.qryLocationList.Close;
end;

procedure TfrmCandidator.dxDBPopupEdit2InitPopup(Sender: TObject);
begin
  inherited;
frmPopupMain.qryAcademicList.Open;
  InitPopupControl('dxlcAcademicList',frmPopupMain,sender,2);
end;

procedure TfrmCandidator.dxDBPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
OnPopupCloseUp(Accept,frmPopupMain.qryAcademicList,qryCandidator,
               'ACADEMIC_NO;ACADEMIC_NAME','TRINHDO_VANHOA;ACADEMIC_NAME',
               'ACADEMIC_NAME',Text);
    frmPopupMain.qryAcademicList.Close;
end;

procedure TfrmCandidator.dxDBPopupEdit4InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryEduLevelList.Open;
    InitPopupControl('dxlcEduLevelList',frmPopupMain,sender,2);
end;

procedure TfrmCandidator.dxDBPopupEdit4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
OnPopupCloseUp(Accept,frmPopupMain.qryEduLevelList,qryCandidator,
             'EDU_LEVEL_NO;EDU_LEVEL_NAME','TRINH_DO;TEN_TRINH_DO',
             'EDU_LEVEL_NAME',Text);
    frmPopupMain.qryEduLevelList.Close;
end;

procedure TfrmCandidator.dxDBPopupEdit3InitPopup(Sender: TObject);
begin
  inherited;
 frmPopupMain.qryCareerList.Open;
    InitPopupControl('dxlcCareerList',frmPopupMain,sender,2);
end;

procedure TfrmCandidator.dxDBPopupEdit3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryCareerList,qryCandidator,
             'CAREER_NO;CAREER_NAME','NGHE_NGHIEP;TEN_NGHE_NGHIEP',
             'CAREER_NAME',Text);
  frmPopupMain.qryCareerList.Close;
end;

procedure TfrmCandidator.dxDBPopupEdit5InitPopup(Sender: TObject);
begin
  inherited;
   frmPopupMain.qryMarrialStatus.Open;
   InitPopupControl('dxlcMarrialStatus', frmPopupMain, sender, 2.5);
end;

procedure TfrmCandidator.dxDBPopupEdit5CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryMarrialStatus, qryCandidator,
      'STATUS_ID;STATUS_NAME', 'MARRIAL_STATUS;MARRIAL_STATUS_NAME',
      'STATUS_NAME', Text);
    frmPopupMain.qryMarrialStatus.Close;
end;

procedure TfrmCandidator.gridPositionApplyPLAN_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
   frmPopupMain.qryRecruitmentPlan.Open;
   InitPopupControl('dxlcRecruitmentPlan', frmPopupMain, sender, 2,gridPositionApply);
end;

procedure TfrmCandidator.gridPositionApplyPLAN_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryRecruitmentPlan, qryPositionApply,
      'PLAN_NO;PLAN_NAME', 'PLAN_NO;PLAN_NAME',
      'PLAN_NAME', Text);
    frmPopupMain.qryRecruitmentPlan.Close;
end;

procedure TfrmCandidator.dxDBPopupEdit6InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryLocationList.Open;
  InitPopupControl('dxlcLocationList', frmPopupMain, sender, 2.5);
end;

procedure TfrmCandidator.dxDBPopupEdit6CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryLocationList, qryCandidator,
    'LOCATION_NAME', 'TINH_LIENHE',
    'LOCATION_NAME', Text);
  frmPopupMain.qryLocationList.Close;
end;

procedure TfrmCandidator.dxDBPopupEdit7InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryLocationList.Open;
  InitPopupControl('dxlcLocationList', frmPopupMain, sender, 2.5);
end;

procedure TfrmCandidator.dxDBPopupEdit7CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryLocationList, qryCandidator,
    'LOCATION_FULL_NAME', 'NATIVE_PLACE_ID',
    'LOCATION_FULL_NAME', Text);
  frmPopupMain.qryLocationList.Close;
end;

end.
