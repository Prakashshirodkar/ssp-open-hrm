unit EmpAbility;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DocBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxEdLib, dxDBELib, dxCntner,
  dxEditor, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  dxGrClEx, ElPgCtl;

type
  TfrmEmpAbility = class(TfrmDocBase)
    dxDBDateEdit1: TdxDBDateEdit;
    dxlcMainItem2: TdxLayoutItem;
    dxlcMainGroup1: TdxLayoutGroup;
    dxDBDateEdit2: TdxDBDateEdit;
    dxlcMainItem4: TdxLayoutItem;
    dxDBDateEdit3: TdxDBDateEdit;
    dxlcMainItem6: TdxLayoutItem;
    dxDBPopupEdit1: TdxDBPopupEdit;
    dxlcMainItem8: TdxLayoutItem;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxlcMainItem9: TdxLayoutItem;
    dxlcMainGroup4: TdxLayoutGroup;
    dxDBEdit4: TdxDBEdit;
    dxlcMainItem10: TdxLayoutItem;
    dxlcMainGroup5: TdxLayoutGroup;
    gridChuyenmon: TdxDBGrid;
    dxlcMainGroup7: TdxLayoutGroup;
    dxDBPopupEdit2: TdxDBPopupEdit;
    dxlcMainItem14: TdxLayoutItem;
    dxDBEdit5: TdxDBEdit;
    dxlcMainItem12: TdxLayoutItem;
    dxDBEdit6: TdxDBEdit;
    dxlcMainItem13: TdxLayoutItem;
    gridChuyenmonEDU_FIELD_NAME: TdxDBGridPopupColumn;
    gridChuyenmonFIELD_LEVEL_NAME: TdxDBGridPopupColumn;
    gridChuyenmonISSUED_DATE: TdxDBGridDateColumn;
    gridChuyenmonISSUED_PLACE: TdxDBGridColumn;
    gridChuyenmonEDU_ARCHIVEMENT: TdxDBGridColumn;
    dxDBDateEdit4: TdxDBDateEdit;
    dxlcMainItem15: TdxLayoutItem;
    dxDBPopupEdit3: TdxDBPopupEdit;
    dxlcMainItem16: TdxLayoutItem;
    dxDBPopupEdit4: TdxDBPopupEdit;
    dxlcMainItem17: TdxLayoutItem;
    dxDBPopupEdit5: TdxDBPopupEdit;
    dxlcMainItem18: TdxLayoutItem;
    dxDBPopupEdit6: TdxDBPopupEdit;
    dxlcMainItem19: TdxLayoutItem;
    dxlcMainGroup6: TdxLayoutGroup;
    dxlcMainGroup8: TdxLayoutGroup;
    dxlcMainGroup9: TdxLayoutGroup;
    dxlcMainGroup3: TdxLayoutGroup;
    dxDBCalcEdit1: TdxDBCalcEdit;
    dxlcMainItem3: TdxLayoutItem;
    dxDBCalcEdit2: TdxDBCalcEdit;
    dxlcMainItem5: TdxLayoutItem;
    dxDBEdit1: TdxDBEdit;
    dxlcMainItem7: TdxLayoutItem;
    pageLevel: TElPageControl;
    dxlcMainItem20: TdxLayoutItem;
    tabLanguage: TElTabSheet;
    tabSkill: TElTabSheet;
    tabOther: TElTabSheet;
    gridKynang: TdxDBGrid;
    gridNgoaingu: TdxDBGrid;
    gridNgoainguEDU_FIELD_NAME: TdxDBGridPopupColumn;
    gridNgoainguFIELD_LEVEL_NAME: TdxDBGridPopupColumn;
    gridNgoainguISSUED_DATE: TdxDBGridDateColumn;
    gridNgoainguISSUED_PLACE: TdxDBGridColumn;
    gridNgoainguEDU_ARCHIVEMENT: TdxDBGridColumn;
    gridKynangEMPLOYEE_NO: TdxDBGridMaskColumn;
    gridKynangSKILL_NO: TdxDBGridMaskColumn;
    gridKynangLEVEL_NO: TdxDBGridMaskColumn;
    gridKynangISSUED_DATE: TdxDBGridDateColumn;
    gridKynangISSUED_PLACE: TdxDBGridMaskColumn;
    gridKynangARCHIVEMENT: TdxDBGridMaskColumn;
    gridKynangNOTE: TdxDBGridMaskColumn;
    gridKynangSKILL_NAME: TdxDBGridPopupColumn;
    gridKynangLEVEL_NAME: TdxDBGridPopupColumn;
    dxlcMainItem11: TdxLayoutItem;
    dxDBDateEdit5: TdxDBDateEdit;
    dxlcMainItem21: TdxLayoutItem;
    dxDBDateEdit6: TdxDBDateEdit;
    dxlcMainItem22: TdxLayoutItem;
    dxlcMainItem23: TdxLayoutItem;
    dxlcMainItem24: TdxLayoutItem;
    dxlcMainItem25: TdxLayoutItem;
    dxlcMainItem26: TdxLayoutItem;
    dxlcMainItem29: TdxLayoutItem;
    dxlcMainItem30: TdxLayoutItem;
    dxDBCalcEdit3: TdxDBCalcEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxlcMainGroup14: TdxLayoutGroup;
    dxlcMainGroup18: TdxLayoutGroup;
    dxlcMainGroup12: TdxLayoutGroup;
    dxlcMainGroup11: TdxLayoutGroup;
    dxlcMainGroup13: TdxLayoutGroup;
    dxlcMainGroup2: TdxLayoutGroup;
    dxlcMainItem27: TdxLayoutItem;
    dxDBDateEdit7: TdxDBDateEdit;
    dxlcMainItem28: TdxLayoutItem;
    dxDBDateEdit8: TdxDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBPopupEdit1InitPopup(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit2InitPopup(Sender: TObject);
    procedure dxDBPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure gridChuyenmonEDU_FIELD_NAMEInitPopup(Sender: TObject);
    procedure gridChuyenmonEDU_FIELD_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridChuyenmonFIELD_LEVEL_NAMEInitPopup(Sender: TObject);
    procedure gridChuyenmonFIELD_LEVEL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBPopupEdit3InitPopup(Sender: TObject);
    procedure dxDBPopupEdit3CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit5InitPopup(Sender: TObject);
    procedure dxDBPopupEdit5CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit4InitPopup(Sender: TObject);
    procedure dxDBPopupEdit4CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit6InitPopup(Sender: TObject);
    procedure dxDBPopupEdit6CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure gridNgoainguEDU_FIELD_NAMEInitPopup(Sender: TObject);
    procedure gridNgoainguEDU_FIELD_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridKynangEDU_FIELD_NAMEInitPopup(Sender: TObject);
    procedure gridKynangEDU_FIELD_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridNgoainguFIELD_LEVEL_NAMEInitPopup(Sender: TObject);
    procedure gridNgoainguFIELD_LEVEL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridKynangFIELD_LEVEL_NAMEInitPopup(Sender: TObject);
    procedure gridKynangFIELD_LEVEL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridKynangSKILL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridKynangSKILL_NAMEInitPopup(Sender: TObject);
    procedure gridKynangLEVEL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridKynangLEVEL_NAMEInitPopup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpAbility: TfrmEmpAbility;

implementation

uses MainDM, EmpInfoDataModule, EditBaseFrm, PopupMainForm, SSP_Library,
  DB;


{$R *.dfm}

procedure TfrmEmpAbility.FormCreate(Sender: TObject);
begin
  inherited;
  if not EmpInfoDM.qryEmpPrivateInfo.Active then
    EmpInfoDM.qryEmpPrivateInfo.Open;
  if not EmpInfoDM.qryEmpAbility.ACtive then
    EmpInfoDM.qryEmpAbility.Open;
  if not EmpInfoDM.qryEmpLanguage.ACtive then
    EmpInfoDM.qryEmpLanguage.Open;
  if not EmpInfoDM.qryEmpSkill.ACtive then
    EmpInfoDM.qryEmpSkill.Open;

  pageLevel.ActivePageIndex:=0;
  frameToolbar1.SetDataSource(EmpInfoDM.dsEmpPrivateInfo);
  frameToolbar1.SetActiveControl(dxDBDateEdit1);
end;

procedure TfrmEmpAbility.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  EmpInfoDM.qryEmpPrivateInfo.Close;
  EmpInfoDM.qryEmpAbility.Close;
end;

procedure TfrmEmpAbility.dxDBPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryEduLevelList.Open;
    InitPopupControl('dxlcEduLevelList',frmPopupMain,sender,2);
    
end;

procedure TfrmEmpAbility.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryEduLevelList,EmpInfoDM.qryEmpPrivateInfo,
             'EDU_LEVEL_NO;EDU_LEVEL_NAME','TRINH_DO;TEN_TRINH_DO',
             'EDU_LEVEL_NAME',Text);
    frmPopupMain.qryEduLevelList.Close;
end;

procedure TfrmEmpAbility.dxDBPopupEdit2InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryCareerList.Open;
    InitPopupControl('dxlcCareerList',frmPopupMain,sender,2);
    
end;

procedure TfrmEmpAbility.dxDBPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryCareerList,EmpInfoDM.qryEmpPrivateInfo,
             'CAREER_NO;CAREER_NAME','NGHE_NGHIEP;TEN_NGHE_NGHIEP',
             'CAREER_NAME',Text);
    frmPopupMain.qryCareerList.Close;
end;

procedure TfrmEmpAbility.gridChuyenmonEDU_FIELD_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryEduFieldList.Open;
  InitPopupControl('dxlcEduFieldList',frmPopupMain,sender,2,gridChuyenmon);
end;

procedure TfrmEmpAbility.gridChuyenmonEDU_FIELD_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryEduFieldList,EmpInfoDM.qryEmpAbility,
             'EDU_FIELD_NO;EDU_FIELD_NAME','EDU_FIELD_NO;EDU_FIELD_NAME',
             'EDU_FIELD_NAME',Text);
    frmPopupMain.qryEduFieldList.Close;
end;

procedure TfrmEmpAbility.gridChuyenmonFIELD_LEVEL_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryFieldLevelList.ParamByName('EDU_FIELD_NO').Value:=
    EmpInfoDM.qryEmpAbilityEDU_FIELD_NO.Value;
  frmPopupMain.qryFieldLevelList.Open;
    InitPopupControl('dxlcFieldLevelList',frmPopupMain,sender,2,gridChuyenmon);
end;

procedure TfrmEmpAbility.gridChuyenmonFIELD_LEVEL_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryFieldLevelList,EmpInfoDM.qryEmpAbility,
             'FIELD_LEVEL_NO;FIELD_LEVEL_NAME','EDU_LEVEL_NO;FIELD_LEVEL_NAME',
             'FIELD_LEVEL_NAME',Text);
    frmPopupMain.qryFieldLevelList.Close;
end;

procedure TfrmEmpAbility.dxDBPopupEdit3InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryAcademicList.Open;
  InitPopupControl('dxlcAcademicList',frmPopupMain,sender,2);
end;

procedure TfrmEmpAbility.dxDBPopupEdit3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupMain.qryAcademicList,EmpInfoDM.qryEmpPrivateInfo,
               'ACADEMIC_NO;ACADEMIC_NAME','TRINHDO_VANHOA;ACADEMIC_NAME',
               'ACADEMIC_NAME',Text);
    frmPopupMain.qryAcademicList.Close;
end;

procedure TfrmEmpAbility.dxDBPopupEdit5InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryChucvuDang.Open;
  InitPopupControl('dxlcChucvuDang',frmPopupMain,sender,2);
end;

procedure TfrmEmpAbility.dxDBPopupEdit5CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupMain.qryChucvuDang,EmpInfoDM.qryEmpPrivateInfo,
               'MA_CHUCVU;TEN_CHUCVU','CHUC_VU_DANG;TEN_CHUCVU_DANG',
               'TEN_CHUCVU',Text);
    frmPopupMain.qryChucvuDang.Close;
end;

procedure TfrmEmpAbility.dxDBPopupEdit4InitPopup(Sender: TObject);
begin
  inherited;
   frmPopupMain.qryChucvuDoan.Open;
  InitPopupControl('dxlcChucvuDoan',frmPopupMain,sender,2);
end;

procedure TfrmEmpAbility.dxDBPopupEdit4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryChucvuDoan,EmpInfoDM.qryEmpPrivateInfo,
               'MA_CHUCVU;TEN_CHUCVU','CHUC_VU_DOAN;TEN_CHUCVU_DOAN',
               'TEN_CHUCVU',Text);
    frmPopupMain.qryChucvuDoan.Close;
end;

procedure TfrmEmpAbility.dxDBPopupEdit6InitPopup(Sender: TObject);
begin
  inherited;
   frmPopupMain.qryChucvuCDoan.Open;
  InitPopupControl('dxlcChucvuCDoan',frmPopupMain,sender,2);
end;

procedure TfrmEmpAbility.dxDBPopupEdit6CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryChucvuCDoan,EmpInfoDM.qryEmpPrivateInfo,
               'MA_CHUCVU;TEN_CHUCVU','CHUC_VU_CDOAN;TEN_CHUCVU_CDOAN',
               'TEN_CHUCVU',Text);
    frmPopupMain.qryChucvuCDoan.Close;
end;

procedure TfrmEmpAbility.gridNgoainguEDU_FIELD_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
   frmPopupMain.qryLanguage.Open;
  InitPopupControl('dxlcLanguage',frmPopupMain,sender,2,gridNgoaingu);
end;

procedure TfrmEmpAbility.gridNgoainguEDU_FIELD_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
 OnPopupCloseUp(Accept,frmPopupMain.qryLanguage,EmpInfoDM.qryEmpLanguage,
               'LANGUAGE_NO;LANGUAGE_NAME','LANGUAGE_NO;LANGUAGE_NAME',
               'LANGUAGE_NAME',Text);
    frmPopupMain.qryLanguage.Close;
end;

procedure TfrmEmpAbility.gridKynangEDU_FIELD_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
{  frmPopupMain.qrySkillList.Open;
  InitPopupControl('dxlcSkill',frmPopupMain,sender,2,gridKynang);}
end;

procedure TfrmEmpAbility.gridKynangEDU_FIELD_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
{  OnPopupCloseUp(Accept,frmPopupMain.qrySkillList,EmpInfoDM.qryEmpSkill,
               'SKILL_NO;SKILL_NAME','SKILL_NO;SKILL_NAME',
               'SKILL_NAME',Text);
  frmPopupMain.qrySkillList.Close;}
end;

procedure TfrmEmpAbility.gridNgoainguFIELD_LEVEL_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryLanguageLevel.ParamByName('LANGUAGE_NO').Value:=
    EmpInfoDM.qryEmpLanguageLANGUAGE_NO.Value;
  frmPopupMain.qryLanguageLevel.Open;
  InitPopupControl('dxlcLanguageLevel',frmPopupMain,sender,2,gridNgoaingu);

end;

procedure TfrmEmpAbility.gridNgoainguFIELD_LEVEL_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryLanguageLevel,EmpInfoDM.qryEmpLanguage,
               'LEVEL_NO;LEVEL_NAME','LEVEL_NO;LEVEL_NAME',
               'LEVEL_NAME',Text);
  frmPopupMain.qryLanguageLevel.Close;
end;

procedure TfrmEmpAbility.gridKynangFIELD_LEVEL_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
{  frmPopupMain.qrySkillLevel.ParamByName('SKILL_NO').Value:=
    EmpInfoDM.qryEmpSkillSKILL_NO.Value;
  frmPopupMain.qrySkillLevel.Open;
  InitPopupControl('dxlcSkillLevel',frmPopupMain,sender,2,gridKynang);}

end;

procedure TfrmEmpAbility.gridKynangFIELD_LEVEL_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
 { OnPopupCloseUp(Accept,frmPopupMain.qrySkillLevel,EmpInfoDM.qryEmpSkill,
               'LEVEL_NO;LEVEL_NAME','LEVEL_NO;LEVEL_NAME',
               'LEVEL_NAME',Text);
  frmPopupMain.qrySkillLevel.Close;}
end;

procedure TfrmEmpAbility.gridKynangSKILL_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qrySkillList,EmpInfoDM.qryEmpSkill,
               'SKILL_NO;SKILL_NAME','SKILL_NO;SKILL_NAME',
               'SKILL_NAME',Text);
  frmPopupMain.qrySkillList.Close;
end;

procedure TfrmEmpAbility.gridKynangSKILL_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qrySkillList.Open;
  InitPopupControl('dxlcSkill',frmPopupMain,sender,2,gridKynang);
end;

procedure TfrmEmpAbility.gridKynangLEVEL_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qrySkillLevel,EmpInfoDM.qryEmpSkill,
               'LEVEL_NO;LEVEL_NAME','LEVEL_NO;LEVEL_NAME',
               'LEVEL_NAME',Text);
  frmPopupMain.qrySkillLevel.Close;
end;

procedure TfrmEmpAbility.gridKynangLEVEL_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qrySkillLevel.ParamByName('SKILL_NO').Value:=
    EmpInfoDM.qryEmpSkillSKILL_NO.Value;
  frmPopupMain.qrySkillLevel.Open;
    InitPopupControl('dxlcSkillLevel',frmPopupMain,sender,2,gridKynang);
end;

end.
