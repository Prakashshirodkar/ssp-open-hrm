unit TrainingManagerForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, Menus,
  ImgList, ExtCtrls, dxsbar, StdCtrls, ElCLabel, ElLabel, ElPanel;

type
  TfrmTrainingManager = class(TfrmBase)
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
  frmTrainingManager: TfrmTrainingManager;

implementation

uses ToolbarFrame, MainDM , TrainingPlanForm, TrainingDeploymentForm,
  TrainingCourseForm, TrainingRegulationForm, TrainingAlertForm,
  TrainingReportForm, TrainingBudgetForm, BoiHoanDaoTaoForm;

{$R *.dfm}

procedure TfrmTrainingManager.ShowDetail(form_class: TFormClass);
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

procedure TfrmTrainingManager.dxsidebarMenuItemClick(Sender: TObject;
  Item: TdxSideBarItem);
begin
  inherited;
  if item.CustomData = 'LAP_KEHOACH' then
    ShowDetail(TfrmTrainingPlan)
  else
  if item.CustomData = 'TRIENKHAI_KEHOACH' then
    ShowDetail(TfrmTrainingDeployment)
  else
  if item.CustomData = 'CT_DAOTAO' then
    ShowDetail(TfrmTrainingCourse)
  else
  if item.CustomData = 'QC_DAOTAO' then
    ShowDetail(TfrmTrainingRegulation)
  else
  if item.CustomData = 'CB_NV_DAOTAO' then
    ShowDetail(TfrmTrainingAlert)
  else
  if item.CustomData = 'TK_KETQUA_DAOTAO' then
    ShowDetail(TfrmTrainingReport)
  else
  if item.CustomData = 'TK_CP_DAOTAO' then
    ShowDetail(TfrmTrainingBudget)
  else
  if item.CustomData = 'BOI_HOAN' then
    ShowDetail(TfrmBoiHoanDaoTao)
  else
end;

procedure TfrmTrainingManager.FormCreate(Sender: TObject);
begin
  inherited;
  dxsidebarMenu.Groups[1].MakeActive;
  ShowDetail(TfrmTrainingPlan);
end;

procedure TfrmTrainingManager.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  frmTrainingManager:=nil;
end;

procedure TfrmTrainingManager.FormKeyDown(Sender: TObject; var Key: Word;
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

