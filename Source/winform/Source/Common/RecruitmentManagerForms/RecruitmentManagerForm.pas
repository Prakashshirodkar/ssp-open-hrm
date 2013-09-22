unit RecruitmentManagerForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, Menus,
  ImgList, ExtCtrls, dxsbar, StdCtrls, ElCLabel, ElLabel, ElPanel;

type
  TfrmRecruitmentManager = class(TfrmBase)
    dxsidebarMenu: TdxSideBar;
    imgLargeIcon: TImageList;
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    panelMain: TElPanel;
    panelShow: TElPanel;
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
  frmRecruitmentManager: TfrmRecruitmentManager;

implementation

uses ToolbarFrame, MainDM, RecruitmentPlanForm, CandidatorForm,
  CandidatorCheckForm, RecruitmentTestForm, InterviewForm, ProbationForm;

{$R *.dfm}

procedure TfrmRecruitmentManager.ShowDetail(form_class: TFormClass);
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
    lblListCaption.Caption:=WideUpperCase(CustomForm.fcMain.Texts[0].Caption);
end;

procedure TfrmRecruitmentManager.dxsidebarMenuItemClick(Sender: TObject;
  Item: TdxSideBarItem);
begin
  inherited;
  if item.CustomData = 'KEHOACH' then
    ShowDetail(TfrmRecruitmentPlan)
  else
  if item.CustomData = 'HOSO_UNGVIEN' then
    ShowDetail(TfrmCandidator)
  else
  if item.CustomData = 'XETDUYET_HOSO' then
    ShowDetail(TfrmCandidatorCheck)
  else
  if item.CustomData = 'KIEMTRA_THITUYEN' then
    ShowDetail(TfrmRecruitmentTest)
  else
  if item.CustomData = 'PHONGVAN_TUYENDUNG' then
    ShowDetail(TfrmInterview)
  else
   if item.CustomData = 'QUANLY_THUVIEC' then
    ShowDetail(TfrmProbation)
  else
end;

procedure TfrmRecruitmentManager.FormCreate(Sender: TObject);
begin
  inherited;
  ShowDetail(TfrmRecruitmentPlan);
end;

procedure TfrmRecruitmentManager.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  frmRecruitmentManager:=nil;
end;

procedure TfrmRecruitmentManager.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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
  if Key=VK_F11 then
    dmMain.ScanForm(self)
   else
    if (Key = VK_F12) and (Shift=[ssCtrl,ssShift]) then
      AuthorityConfig(self)
    else
  if (Key = VK_F12) and (Shift=[ssCtrl]) then
    AuthorityConfig(CustomForm)
    else
  if (Key = VK_F1) and (Shift=[ssCtrl]) then
    ShowHelpContext(CustomForm.HelpFile)else
  if (Key = VK_F9) and (Shift=[ssCtrl]) then
    LogConfig(CustomForm)
  else
end;

end.

