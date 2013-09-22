unit InserUserForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ElBtnCtl,
  ElPopBtn, dxEdLib, dxEditor, dxDBELib, dxLayoutControl, dxCntner,
  cxControls, ActnList,DB, ExtCtrls;

type
  TfrmInsertUser = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    edtPasswordConfirm: TdxMaskEdit;
    dxlcConfirmPassword: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ActionList1: TActionList;
    acDongy: TAction;
    acBoqua: TAction;
    edtPassword: TdxMaskEdit;
    dxlcPassword: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure acBoquaExecute(Sender: TObject);
    procedure acDongyExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInsertUser: TfrmInsertUser;

implementation

uses MainDM, SecurityForm, md5;

{$R *.dfm}

procedure TfrmInsertUser.FormShow(Sender: TObject);
begin
  inherited;
  if self.Height<dxLayoutControl1.ViewInfo.ItemsViewInfo.CalculateHeight then
  self.Height:=dxLayoutControl1.ViewInfo.ItemsViewInfo.CalculateHeight;
end;

procedure TfrmInsertUser.acBoquaExecute(Sender: TObject);
begin
  inherited;
  if (frmSecurity.qryUserList.State in [dsInsert,dsEdit])
  then frmSecurity.qryUserList.Cancel;
  ModalResult:=mrCancel;
end;

procedure TfrmInsertUser.acDongyExecute(Sender: TObject);
var newpass:WideString;
    isInsert:boolean;
begin
  inherited;
  if (frmSecurity.qryUserList.State in [dsInsert,dsEdit]) then
  begin
    isInsert:=(frmSecurity.qryUserList.State in [dsInsert]);
    if edtPassword.Text<>edtPasswordConfirm.Text then
    begin
      ShowMessageUnicode(5);
      Exit;
    end
    else
    begin
      newpass:=MD5Print(MD5String(edtPassword.Text));
      if (newpass<>frmSecurity.qryUserListUSERACCPASS.Value) then
      begin
        if (isInsert=False)and
          (ShowMessageUnicode(8)=mrYes) then
          frmSecurity.qryUserListUSERACCPASS.Value:=newpass
        else
          frmSecurity.qryUserListUSERACCPASS.Value:=newpass;
      end
    end;
    try
      frmSecurity.qryUserList.Post;
      frmSecurity.acUpdateUserData.Execute;
      ModalResult:=mrOK;
    except
    end;
  end;
end;

procedure TfrmInsertUser.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if dmMain.MsgChangeDataSource(frmSecurity.dsUserList)=false then
    Abort;
end;

end.
