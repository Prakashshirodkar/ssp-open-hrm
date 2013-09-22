unit ListManageForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, dxExEdtr, dxTL, dxCntner, ElCaption, ElXPThemedControl,
  ElStatBar, ElPgCtl, ExtCtrls, ElPanel, ElSplit, ImgList, DB, dxDBCtrl,
  dxDBTL, IBODataset, ActnList, ElHTMLPanel, ElAdvPanel,
  ElExpBar, ElScrollBox, StdCtrls, ElCLabel, ElLabel, ElImgFrm, ElURLLabel,
  dxfBackGround, dxfLabel, ElBtnCtl, ElPopBtn, dxfShapedForm,
  dxLayoutControl, cxControls;

type
  TfrmListManager = class(TfrmBase)
    dxtlMenuList: TdxDBTreeList;
    dsMenuList: TDataSource;
    qryMenuList: TIBOQuery;
    qryMenuListMENU_ID: TWideStringField;
    qryMenuListMENU_TITLE: TWideStringField;
    qryMenuListMENU_ICON_INDEX: TIntegerField;
    qryMenuListP_MENU_ID: TWideStringField;
    ElSplitter1: TElSplitter;
    ActionList1: TActionList;
    acViewDetail: TAction;
    dxtlMenuListMENU_TITLE: TdxDBTreeListColumn;
    dxtlMenuListMENU_ICON_INDEX: TdxDBTreeListMaskColumn;
    pageControl: TElPageControl;
    tabPersonalInfo: TElTabSheet;
    panelLeft: TPanel;
    tabOperationInfo: TElTabSheet;
    acGetMenuList: TAction;
    panelBackground: TElPanel;
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    mainPanel: TElPanel;
    imgIcon: TImageList;
    qryMenuListMENU_TITLE_ENG: TWideStringField;
    dxtlMenuListMENU_TITLE_ENG: TdxDBTreeListColumn;
    procedure ShowDetail(form_class: TFormClass);
    procedure acViewDetailExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DefOnLabelMouseEnter(Sender: TObject);
    procedure DefOnLabelMouseLeave(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acGetMenuListExecute(Sender: TObject);
    procedure dxtlMenuListCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
    CustomForm: TfrmBase;
  protected

  end;

var
  frmListManager: TfrmListManager;

implementation

uses EduLevelListForm, EduFieldListForm, NationListForm, LocationListForm,
  CareerListForm, RaceListForm, ReligionListForm, OrganizationListForm,
  CurrencyListForm, MainDM, DescentListForm, DecisionTypeListForm,
  DecisionLevelForm, DisciplineForm, DisciplineListForm, RewardForm,
  RewardListForm, DocTemplateListForm, ReportTemplateListForm,
  ContractTypeForm, WorkDateTimeTypeForm, HolidayRegisterForm,
  CalendarForm, WageElementTypeForm, TrainingForm, TrainingSourceForm,
  TrainingTypeForm, TaxForm, TrainingSupplyForm, BAOHIEM_TNLD_NguyenNhanForm,
  BHXH_TTSuckhoeForm;
{$R *.dfm}

procedure TfrmListManager.ShowDetail(form_class: TFormClass);
begin
  if Assigned(CustomForm) then
  begin
    if (CustomForm is form_class) then
      Exit
    else
    begin
      CustomForm.Close;
      CustomForm.Free;
    end;
  end;
  Application.CreateForm(form_class, CustomForm);
  with CustomForm do
  try
    BorderStyle := bsNone;
    Parent := mainPanel;
    Align := alClient;
    Visible := true;
  finally
  end;
  if Assigned(CustomForm) then
    lblListCaption.Caption := WideUpperCase(CustomForm.fcMain.Texts[0].Caption);
end;
//=======================================================================

procedure TfrmListManager.acViewDetailExecute(Sender: TObject);
begin
  inherited;
  if qryMenuListMENU_ID.Value = 'TRINHDO_HOCVAN' then
    ShowDetail(TfrmEduLevelList)
  else
    if qryMenuListMENU_ID.Value = 'LINHVUC_CHUYENMON' then
    ShowDetail(TfrmEduFieldList)
  else
    if qryMenuListMENU_ID.Value = 'QUOC_GIA' then
    ShowDetail(TfrmNationList)
  else
    if qryMenuListMENU_ID.Value = 'TINH_THANH' then
    ShowDetail(TfrmLocationList)
  else
    if qryMenuListMENU_ID.Value = 'NGANH_NGHE' then
    ShowDetail(TfrmCareerList)
  else
    if qryMenuListMENU_ID.Value = 'DAN_TOC' then
    ShowDetail(TfrmRaceList)
  else
    if qryMenuListMENU_ID.Value = 'TON_GIAO' then
    ShowDetail(TfrmReligionList)
  else
    if qryMenuListMENU_ID.Value = 'DOAN_THE' then
    ShowDetail(TfrmOrganizationList)
  else
    if qryMenuListMENU_ID.Value = 'TIEN_TE' then
    ShowDetail(TfrmCurrencyList)
  else
    if qryMenuListMENU_ID.Value = 'XUAT_THAN' then
    ShowDetail(TfrmDescentList)
  else
    if qryMenuListMENU_ID.Value = 'LOAI_QD' then
    ShowDetail(TfrmDecisionType)
  else
    if qryMenuListMENU_ID.Value = 'KHENTHUONG' then
    ShowDetail(TfrmRewardList)
  else
    if qryMenuListMENU_ID.Value = 'KHENTHUONG_HT' then
    ShowDetail(TfrmRewardForm)
  else
    if qryMenuListMENU_ID.Value = 'KYLUAT' then
    ShowDetail(TfrmDisciplineList)
  else
    if qryMenuListMENU_ID.Value = 'KYLUAT_HT' then
    ShowDetail(TfrmDisciplineForm)
  else
    if qryMenuListMENU_ID.Value = 'CAP_QD' then
    ShowDetail(TfrmDecisionLevel)
  else
    if qryMenuListMENU_ID.Value = 'MAU_SVB' then
    ShowDetail(TfrmDocTemplateList)
  else
    if qryMenuListMENU_ID.Value = 'MAU_IVB' then
    ShowDetail(TfrmReportTemplateList)
  else
    if qryMenuListMENU_ID.Value = 'LOAI_HD' then
    ShowDetail(TfrmContractType)
  else
    if qryMenuListMENU_ID.Value = 'NGAY_GIO_CONG' then
    ShowDetail(TfrmWorkDateHourType)
  else
    if qryMenuListMENU_ID.Value = 'NGAY_LE' then
    ShowDetail(TfrmHolidayRegister)
  else
    if qryMenuListMENU_ID.Value = 'DM_LOAIYEUTO' then
    ShowDetail(TfrmWageElementType)
  else
    if qryMenuListMENU_ID.Value = 'LOAIHINH_DAOTAO' then
    ShowDetail(TfrmTrainingType)
  else
    if qryMenuListMENU_ID.Value = 'HINHTHUC_DAOTAO' then
    ShowDetail(TfrmTrainingForm)
  else
    if qryMenuListMENU_ID.Value = 'NGUON_KINHPHI' then
    ShowDetail(TfrmTrainingSource)
  else
    if qryMenuListMENU_ID.Value = 'NGUYENNHAN_TAINAN' then
    ShowDetail(TfrmBAOHIEM_TNLD_NguyenNhan)
  else
    if qryMenuListMENU_ID.Value = 'TINHTRANG_TAINAN' then
    ShowDetail(TfrmBHXH_TTSuckhoe)
  else
    if qryMenuListMENU_ID.Value = 'THUE_THUNHAP' then
    ShowDetail(TfrmTax)
  else
    if qryMenuListMENU_ID.Value = 'NGUON_DAOTAO' then
    ShowDetail(TfrmTrainingSupply)
end;

procedure TfrmListManager.FormCreate(Sender: TObject);
begin
  inherited;
  dxtlMenuListMENU_TITLE.Visible := (sysConfig.Language <> 2);
  dxtlMenuListMENU_TITLE_ENG.Visible := (sysConfig.Language = 2);
  acGetMenuList.Execute;
end;

procedure TfrmListManager.DefOnLabelMouseEnter(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHandPoint;
  TElLabel(Sender).Font.Style := TElLabel(Sender).Font.Style + [fsUnderline];
end;

procedure TfrmListManager.DefOnLabelMouseLeave(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crDefault;
  TElLabel(Sender).Font.Style := TElLabel(Sender).Font.Style - [fsUnderline];
end;

procedure TfrmListManager.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryMenuList.Close;
end;

procedure TfrmListManager.acGetMenuListExecute(Sender: TObject);
begin
  inherited;
  with qryMenuList do
  begin
    DisableControls;
    if Active then Close;
    case pageControl.ActivePageIndex of
      0:
        ParamByname('GROUP_ID').Value := 'TT_CANHAN';
      1:
        ParamByname('GROUP_ID').Value := 'TT_NGHIEPVU';
    end;
    Open;
    EnableControls;
  end;
  dxtlMenuList.FullCollapse;
end;

procedure TfrmListManager.dxtlMenuListCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    if not Assigned(ANode.Parent) then
    begin
      AFont.Style := AFont.Style + [fsBold];
      AFont.Color := clBlue;
    end
    else
    begin
      AFont.Style := AFont.Style - [fsBold];
      AFont.Color := clBlack;
    end;
  except
  end
end;

procedure TfrmListManager.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F10 then
  begin
    if Assigned(CustomForm) then
      dmMain.ScanForm(CustomForm)
    else
      dmMain.ScanForm(self);
  end
  else
    if Key = VK_F11 then
    dmMain.ScanForm(self)
  else
    if Key = VK_F12 then
    AuthorityConfig(CustomForm)
  else
    if (Key = VK_F1) and (Shift = [ssCtrl]) then
    ShowHelpContext(CustomForm.HelpFile)
  else
    if (Key = VK_F9) and (Shift = [ssCtrl]) then
    LogConfig(CustomForm)
  else

end;

end.

