unit FastOM_ToolForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ImgList, ElSplit, StdCtrls, ElCLabel, ElLabel, ElPanel,
  ExtCtrls, dxsbar, ElCaption, ElXPThemedControl, ElStatBar;

type
  TfrmFastOM_Tool = class(TfrmBase)
    ElStatusBar1: TElStatusBar;
    ElFormCaption1: TElFormCaption;
    dxsidebarMenu: TdxSideBar;
    panelMain: TElPanel;
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    panelShow: TElPanel;
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
  frmFastOM_Tool: TfrmFastOM_Tool;

implementation

uses DieuDongToolForm, MainDM,ToolbarFrame,NghiViecToolForm;

{$R *.dfm}

procedure TfrmFastOM_Tool.ShowDetail(form_class: TFormClass);
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

procedure TfrmFastOM_Tool.dxsidebarMenuItemClick(Sender: TObject;
  Item: TdxSideBarItem);
begin
  inherited;
  if item.CustomData = 'DIEU_DONG' then
    ShowDetail(TfrmDieuDongTool)
  else if item.CustomData = 'THOI_VIEC' then
    ShowDetail(TfrmNghiViecTool);
end;

procedure TfrmFastOM_Tool.FormCreate(Sender: TObject);
begin
  inherited;
  ShowDetail(TfrmDieuDongTool);
end;

procedure TfrmFastOM_Tool.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  if Assigned(CustomForm) then
    CustomForm.Close;
  CustomForm:=nil;  
  frmFastOM_Tool:=nil;
end;

procedure TfrmFastOM_Tool.FormKeyDown(Sender: TObject; var Key: Word;
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
  if (Key = VK_F1) and (Shift=[ssCtrl]) then
    ShowHelpContext(CustomForm.HelpFile)else
  if (Key = VK_F9) and (Shift=[ssCtrl]) then
    LogConfig(CustomForm)
  else
end;

end.
