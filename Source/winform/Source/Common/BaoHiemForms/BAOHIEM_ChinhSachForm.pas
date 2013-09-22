unit BAOHIEM_ChinhSachForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ImgList, ElSplit, StdCtrls, ElCLabel, ElLabel, ElPanel,
  ExtCtrls, dxsbar, ElCaption, ElXPThemedControl, ElStatBar;

type
  TfrmBAOHIEM_ChinhSach = class(TfrmBase)
    dxsidebarMenu: TdxSideBar;
    panelMain: TElPanel;
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    panelShow: TElPanel;
    ElSplitter1: TElSplitter;
    imgLargeIcon: TImageList;
    procedure dxsidebarMenuItemClick(Sender: TObject;
      Item: TdxSideBarItem);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure ShowDetail(form_class: TFormClass);
  public
    { Public declarations }
    CustomForm: TfrmBase;
  end;

var
  frmBAOHIEM_ChinhSach: TfrmBAOHIEM_ChinhSach;

implementation

uses MainDM,ToolbarFrame, BAOHIEM_NghiKhongLuongForm,BAOHIEM_NghiOmForm,
  BAOHIEM_ThaiSan_KHHForm, BAOHIEM_DSPHSK_SauOmForm,
  BAOHIEM_DSPHSK_SauTSForm, BAOHIEM_DSPHSK_SauTNLDForm,
  BAOHIEM_TaiNanLaoDongForm;

{$R *.dfm}

procedure TfrmBAOHIEM_ChinhSach.ShowDetail(form_class: TFormClass);
var
  frame: TComponent;
  old_form: TfrmBase;
begin
  old_form := nil;
  if Assigned(CustomForm) then
  begin
    if (CustomForm is form_class) then
      Exit
    else
      old_form := CustomForm;
  end;

  Application.CreateForm(form_class, CustomForm);

  frame := CustomForm.FindComponent('frameToolbar1');
  if Assigned(frame) and (frame is TframeToolbar) then
    TframeToolbar(frame).dxLayoutControl1Item14.Visible := false;

  with CustomForm do
  try
    ApplyOption(TControl(CustomForm));
    BorderStyle := bsNone;
    Align := alClient;
    Parent := panelShow;
    Visible := true;
  finally
  end;
  if Assigned(old_form) then
  begin
    old_form.Close;
    old_form.Free;
  end;
  if Assigned(CustomForm) then
  begin
    lblListCaption.Caption:=WideUpperCase(CustomForm.fcMain.Texts[0].Caption);
  end
end;

procedure TfrmBAOHIEM_ChinhSach.dxsidebarMenuItemClick(Sender: TObject;
  Item: TdxSideBarItem);
begin
  inherited;
  if item.CustomData = 'DS_NGHIOM' then
    ShowDetail(TfrmBAOHIEM_NghiOm)
  else
  if item.CustomData = 'DS_TAINAN_LD' then
    ShowDetail(TfrmBAOHIEM_TaiNanLaoDong)
  else
  if item.CustomData = 'DS_NGHI_KL' then
    ShowDetail(TfrmBAOHIEM_NghiKhongLuong)
  else
  if item.CustomData = 'DS_TSKHHGD' then
    ShowDetail(TfrmBAOHIEM_ThaiSan_KHH)
  else
  if item.CustomData = 'DS_SAU_OM' then
    ShowDetail(TfrmBAOHIEM_DSPHSK_SauOm)
  else
  if item.CustomData = 'DS_SAU_TS' then
    ShowDetail(TfrmBAOHIEM_DSPHSK_SauTS)
  else
  if item.CustomData = 'DS_SAU_TNLD' then
    ShowDetail(TfrmBAOHIEM_DSPHSK_SauTNLD)
  else
end;

procedure TfrmBAOHIEM_ChinhSach.FormCreate(Sender: TObject);
begin
  inherited;
  ShowDetail(TfrmBAOHIEM_NghiOm);
end;

procedure TfrmBAOHIEM_ChinhSach.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  if Assigned(CustomForm) then
    CustomForm.Close;
  CustomForm:=nil;
  frmBAOHIEM_ChinhSach:=nil;
end;

procedure TfrmBAOHIEM_ChinhSach.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if Key = VK_F10 then
    dmMain.ScanForm(CustomForm)
  else
  if Key = VK_F11 then
    dmMain.ScanForm(self)
  else
  if (Key = VK_F12) and (Shift=[ssCtrl,ssShift]) then
    AuthorityConfig(self)
  else
  if (Key = VK_F12) and (Shift=[ssCtrl]) then
    AuthorityConfig(CustomForm)
    else
  {if (Key = VK_F12) then
    AuthorityConfig(BHXH_DM)
    else}
  if (Key = VK_F1) and (Shift=[ssCtrl]) then
    ShowHelpContext(CustomForm.HelpFile)else
  if (Key = VK_F9) and (Shift=[ssCtrl]) then
    LogConfig(CustomForm)
  else
end;

end.
