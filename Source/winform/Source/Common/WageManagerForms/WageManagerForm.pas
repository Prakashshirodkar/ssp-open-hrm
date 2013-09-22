unit WageManagerForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxExEdtr, dxEdLib, dxCntner, dxEditor,
  ElPanel, ElSplit, dxorgchr, dxdborgc, ExtCtrls, dxTL, dxDBCtrl, dxDBTL,
  ActnList, ElBtnCtl, ElPopBtn, ToolbarFrame, ImgList, DB, IBODataset,
  ElPgCtl, StdCtrls, ElCLabel, ElLabel, VirtualTrees;

type
  TfrmWageManager = class(TfrmBase)
    ActionList1: TActionList;
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    panelBackground: TElPanel;
    panelLeft: TPanel;
    pageControl: TElPageControl;
    tabOperationInfo: TElTabSheet;
    dxtlMenuList: TdxDBTreeList;
    dxtlMenuListMENU_TITLE: TdxDBTreeListColumn;
    dxtlMenuListMENU_ICON_INDEX: TdxDBTreeListMaskColumn;
    ElSplitter1: TElSplitter;
    mainPanel: TElPanel;
    qryMenuList: TIBOQuery;
    qryMenuListMENU_ID: TWideStringField;
    qryMenuListMENU_TITLE: TWideStringField;
    qryMenuListMENU_ICON_INDEX: TIntegerField;
    qryMenuListP_MENU_ID: TWideStringField;
    dsMenuList: TDataSource;
    imgMenuList: TImageList;
    acViewDetail: TAction;
    qryMenuListMENU_TITLE_ENG: TWideStringField;
    dxtlMenuListMENU_TITLE_ENG: TdxDBTreeListColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxtlMenuListCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure acViewDetailExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ShowDetail(form_class: TFormClass);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxtlMenuListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    CustomForm: TfrmBase;
  end;

var
  frmWageManager: TfrmWageManager;

implementation

uses MainDM, WageDataModule, WageStructureForm, EmpWageStructureForm,
  WageElementForm, WageMethodForm, WageMethodAssignForm,
  WageMethodAssignManagementForm, WageConstantForm, WageParamForm,
  WagePlanForm, WageBookForm, MenuListForm, SSP_Library,
  DefineWageMatrixForm, RewardManagementForm, KhauTruThueKhacForm;

{$R *.dfm}

procedure TfrmWageManager.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  frmWageManager := nil;
  qryMenuList.Close;
end;

procedure TfrmWageManager.dxtlMenuListCustomDrawCell(Sender: TObject;
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

procedure TfrmWageManager.acViewDetailExecute(Sender: TObject);
begin
  inherited;
  if qryMenuListMENU_ID.Value = 'CT_LUONG' then
    ShowDetail(TfrmWageStructure)
  else
    if qryMenuListMENU_ID.Value = 'CANHAN_CT_LUONG' then
    ShowDetail(TfrmEmpWageStructure)
  else
    if qryMenuListMENU_ID.Value = 'DN_YEUTO' then
    ShowDetail(TfrmWageElement)
  else
    if qryMenuListMENU_ID.Value = 'DN_PHUONGAN' then
    ShowDetail(TfrmWageMethod)
  else
    if qryMenuListMENU_ID.Value = 'GAN_PHUONGAN' then
    ShowDetail(TfrmWageMethodAssignManager)
  else
    if qryMenuListMENU_ID.Value = 'DL_HANGSO' then
    ShowDetail(TfrmWageConstantData)
  else
    if qryMenuListMENU_ID.Value = 'DL_THAMSO' then
    ShowDetail(TfrmWageParamData)
  else
    if qryMenuListMENU_ID.Value = 'KH_LUONG' then
    ShowDetail(TfrmWagePlan)
  else
    if qryMenuListMENU_ID.Value = 'BANG_LUONG' then
    ShowDetail(TfrmWageBook)
  else
  if qryMenuListMENU_ID.Value = 'DN_BANG_HS' then
    ShowDetail(TfrmDefineWageMatrix)
  else
  if qryMenuListMENU_ID.Value = 'DL_KHENTHUONG' then
    ShowDetail(TfrmRewardManagement)
  else
  if qryMenuListMENU_ID.Value = 'DL_KHAUTRU_THUEKHAC' then
    ShowDetail(TfrmKhauTruThueKhac)
  else
end;

procedure TfrmWageManager.FormCreate(Sender: TObject);
begin
  inherited;
  dxtlMenuListMENU_TITLE.Visible := (sysConfig.Language <> 2);
  dxtlMenuListMENU_TITLE_ENG.Visible := (sysConfig.Language = 2);
  qryMenuList.Open;
  dxtlMenuList.FullExpand;
  ShowDetail(TfrmWageStructure);
end;

procedure TfrmWageManager.ShowDetail(form_class: TFormClass);
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

procedure TfrmWageManager.FormKeyDown(Sender: TObject; var Key: Word;
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
    if (Key = VK_F12) and (Shift = [ssCtrl]) then
    AuthorityConfig(CustomForm)
  else
    if (Key = VK_F1) and (Shift = [ssCtrl]) then
    ShowHelpContext(CustomForm.HelpFile)
  else
    if (Key = VK_F9) and (Shift = [ssCtrl]) then
    LogConfig(CustomForm)
  else
end;

procedure TfrmWageManager.dxtlMenuListKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if sysConfig.AdminRight then
  begin
    if (Key=Ord('D')) and (ssCtrl in Shift) then
    begin
      ShowModalForm(TfrmMenuItem,frmMenuItem);
      qryMenuList.Refresh;
      dxtlMenuList.FullExpand;
      Exit;
    end;
  end;
end;

end.

