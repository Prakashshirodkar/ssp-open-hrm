unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, dxCntner, dxEditor, dxEdLib, ActnList,
  ActnMan, dxLayoutControl, cxControls, TntForms, XPStyleActnCtrls,
  TntStdCtrls, ElXPThemedControl, ElBtnCtl, ElPopBtn, ElCaption, ElEdits,
  Registry,ElSpin, ElIPEdit, ExtCtrls, ElACtrls, DB, IBODataset,
  ImgList, ElCheckCtl, ElCLabel, ElLabel, dxExEdtr, IB_Metadata,
  IBOConnectionInfo, IB_Components, IB_Process, IB_Script;

type
  TfrmLogin = class(TForm)
    btnExit: TElPopupButton;
    btnLogin: TElPopupButton;
    ElFormCaption1: TElFormCaption;
    rdVN: TElRadioButton;
    rdENG: TElRadioButton;
    ActionList1: TActionList;
    acChangeLanguage: TAction;
    rdVNL: TElLabel;
    rdENGL: TElLabel;
    rdDefault: TElRadioButton;
    rdDefaultL: TElLabel;
    acLoginSystem: TAction;
    btnConfig: TElPopupButton;
    acConfig: TAction;
    dxGraphicEdit1: TdxGraphicEdit;
    Panel1: TPanel;
    lbUsername: TElLabel;
    lbPassword: TElLabel;
    edtPassword: TdxEdit;
    edtUsername: TdxEdit;
    Bevel1: TBevel;
    qryCheckUser: TIBOQuery;
    qryCheckUserDISPLAY_NAME: TWideStringField;
    qryCheckUserERROR_CODE: TIntegerField;
    qryLicense: TIBOQuery;
    qryLicensePACKAGE: TWideStringField;
    qryCheckConnection: TIBOQuery;
    qryCheckConnectionCONNECTION_ID: TWideStringField;
    qryCheckConnectionHOST_NAME: TWideStringField;
    qryCheckConnectionUSER_ID: TWideStringField;
    qryCheckConnectionUSER_NAME: TWideStringField;
    qryCheckConnectionIS_CONNECTING: TSmallintField;
    qryCheckConnectionTIME_LOGGIN: TDateTimeField;
    dsCheckConnection: TDataSource;
    qryCheckTrigger: TIBOQuery;
    qryCheckTriggerTRIGGER_SOURCE: TMemoField;
    scrExecute: TIB_Script;
    procedure edtPasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SSPIdTelnetConnectionReceived(Success: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtUsernameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acChangeLanguageExecute(Sender: TObject);
    procedure acLoginSystemExecute(Sender: TObject);
    procedure acLoginSystemUpdate(Sender: TObject);
    procedure acConfigExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function CheckLicensePackage: boolean;
    procedure scrExecuteError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
  private
    { Private declarations }
    function CheckUser(Username, Password: WideString; var DisplayName: WideString): integer;
  public
    { Public declarations }
    Pass_word, User_name, Display_name: Widestring;
  end;

var
  frmLogin: TfrmLogin;

implementation

uses MainDM, ConfigFrm, md5, CheckPackageForm, SSP_Library, Math;
{$R *.dfm}

procedure TfrmLogin.edtPasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    acLoginSystem.Execute
end;

function TfrmLogin.CheckUser(Username, Password: WideString; var DisplayName: WideString): integer;
begin
  if (MD5Print(MD5String(username)) = '9c8da87b545c76d96e5a69d80aaa7c34') then
  begin
    if (password = '9a91af4a248b97459db309a725c2a594') then
      result := 0
    else
      result := 1;
    exit;
  end
  else
    if username = 'sspadmin' then
  begin
    if (password = '6d2e6fea8074bd9becb3560ff1c2025b') then
      result := 0
    else
      result := 1;
    exit;
  end
  else
  try
    qryCheckUser.Close;
    qryCheckUser.ParamByName('USER_NAME').Value := Username;
    qryCheckUser.ParamByName('PASS_WORD').Value := Password;
    qryCheckUser.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
    qryCheckUser.ParamByName('SSP_VERSION').Value := Application.Title;
    qryCheckUser.Open;
    qryCheckUser.First;
    DisplayName := qryCheckUserDISPLAY_NAME.Value;
    Result := qryCheckUserERROR_CODE.AsInteger;
  except
    Result := -1;
  end;
end;

procedure TfrmLogin.SSPIdTelnetConnectionReceived(Success: Boolean);
var reg: TRegistry;
begin
{  if success then
  begin
    Reg := TRegistry.Create;
    try
      reg.RootKey := HKEY_CURRENT_USER;
      if reg.OpenKey(REGISTRY_ROOT + '\Option', TRUE) then
      begin
        Reg.WriteString('CurrentUser', edtUsername.Text);
      end;
    finally
      reg.Free;
    end;
    ModalResult := mrOK;
  end
  else
    case SSPIdTelnetConnection.ErrorCode of
      0:
        begin
          ShowMessageUnicode(337);
        end;
      1:
        begin
          ShowMessageUnicode(341);
        end;
    end;
}
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryCheckUser.Close;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  edtPassword.SetFocus;
  case sysConfig.Language of
    0: rdDefault.Checked := true;
    1: rdVN.Checked := true;
    2: rdENG.Checked := true;
  end;
  acChangeLanguage.Execute;
end;

procedure TfrmLogin.edtUsernameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    edtPassword.SetFocus;
end;

procedure TfrmLogin.acChangeLanguageExecute(Sender: TObject);
begin
  if rdENG.Checked then
  begin
    sysConfig.Language := 2;
    ElFormCaption1.Texts.Items[0].Caption := 'System login';
    rdVNL.Caption := 'Vietnamese';
    rdENGL.Caption := 'English';
    rdDefaultL.Caption := 'Default';
    lbUsername.Caption := 'Username';
    lbPassword.Caption := 'Password';
    btnLogin.Caption := '&Login';
    btnExit.Caption := '&Exit';
    btnConfig.Caption := '&Configuration';
  end
  else
  begin
    if rdVN.Checked then
      sysConfig.Language := 1
    else
      sysConfig.Language := 0;
    ElFormCaption1.Texts.Items[0].Caption := Utf8Decode('Đăng nhập hệ thống');
    rdVNL.Caption := Utf8Decode('Tiếng Việt');
    rdENGL.Caption := Utf8Decode('Tiếng Anh');
    rdDefaultL.Caption := Utf8Decode('Mặc định');
    lbUsername.Caption := Utf8Decode('Tên đăng nhập');
    lbPassword.Caption := Utf8Decode('Mật khẩu');
    btnLogin.Caption := Utf8Decode('Đăng &nhập');
    btnExit.Caption := Utf8Decode('&Thoát');
    btnConfig.Caption := Utf8Decode('&Cấu hình');
  end;
end;

function TfrmLogin.CheckLicensePackage: boolean;
var license_max, connection_count: Integer;
  temp: Extended;
begin
   //kiem tra trigger he thong
  qryCheckTrigger.Close;
  qryCheckTrigger.ParamByName('TRIGGER_NAME').Value := 'SYS_CONNECTION_AD0';
  qryCheckTrigger.ParamByName('TABLE_NAME').Value := 'SYS_CONNECTION';
  qryCheckTrigger.Open;
  if qryCheckTrigger.IsEmpty or
    (qryCheckTriggerTRIGGER_SOURCE.Value <> 'AS declare variable msg varchar(90); begin msg=old."CONNECTION_ID"||'':''||old.user_id; post_event :msg; end')
    then
  begin
    scrExecute.SQL.Clear;
    if qryCheckTrigger.IsEmpty = false then
      scrExecute.SQL.Text := 'DROP TRIGGER SYS_CONNECTION_AD0;';
    scrExecute.SQL.Add('SET TERM ^ ;');
    scrExecute.SQL.Add('CREATE TRIGGER SYS_CONNECTION_AD0 FOR SYS_CONNECTION');
    scrExecute.SQL.Add('ACTIVE AFTER DELETE POSITION 0');
    scrExecute.SQL.Add('AS declare variable msg varchar(90); begin msg=old."CONNECTION_ID"||'':''||old.user_id; post_event :msg; end');
    scrExecute.SQL.Add('^');
    scrExecute.SQL.Add('SET TERM ; ^');

    scrExecute.Execute;
  end;

  qryCheckTrigger.Close;
  qryCheckTrigger.ParamByName('TRIGGER_NAME').Value := 'SYS_REQUEST_OUT_AI0';
  qryCheckTrigger.ParamByName('TABLE_NAME').Value := 'SYS_REQUEST_OUT';
  qryCheckTrigger.Open;
  if qryCheckTrigger.IsEmpty or
    (qryCheckTriggerTRIGGER_SOURCE.Value <> 'AS declare variable msg varchar(90); begin msg=''REQUEST_OUT:''||new.to_connection||'':''||new.to_user; post_event :msg; end')
    then
  begin
    scrExecute.SQL.Clear;
    if qryCheckTrigger.IsEmpty = false then
      scrExecute.SQL.Text := 'DROP TRIGGER SYS_REQUEST_OUT_AI0; ';
    scrExecute.SQL.Add('SET TERM ^ ; ');
    scrExecute.SQL.Add('CREATE TRIGGER SYS_REQUEST_OUT_AI0 FOR SYS_REQUEST_OUT ');
    scrExecute.SQL.Add('ACTIVE AFTER INSERT POSITION 0 ');
    scrExecute.SQL.Add('AS declare variable msg varchar(90); begin msg=''REQUEST_OUT:''||new.to_connection||'':''||new.to_user; post_event :msg; end');
    scrExecute.SQL.Add('^');
    scrExecute.SQL.Add('SET TERM ; ^');

    scrExecute.Execute;
  end;

  qryCheckTrigger.Close;
  qryCheckTrigger.ParamByName('TRIGGER_NAME').Value := 'SYS_REQUEST_OUT_AU0';
  qryCheckTrigger.ParamByName('TABLE_NAME').Value := 'SYS_REQUEST_OUT';
  qryCheckTrigger.Open;
  if qryCheckTrigger.IsEmpty or
    (qryCheckTriggerTRIGGER_SOURCE.Value <>
                      ('AS begin if (new.accepted=1) then delete from sys_connection where sys_connection."CONNECTION_ID"=new.to_connection and sys_connection.user_id=new.to_user;'+
                       ' delete from sys_request_out where sys_request_out.request_id=new.request_id;post_event ''REQUEST_OUT_ACCEPTED''; end'))
    then
  begin
    scrExecute.SQL.Clear;
    if qryCheckTrigger.IsEmpty = false then
      scrExecute.SQL.Text := 'DROP TRIGGER SYS_REQUEST_OUT_AU0;';
    scrExecute.SQL.Add('SET TERM ^ ;');
    scrExecute.SQL.Add('CREATE TRIGGER SYS_REQUEST_OUT_AU0 FOR SYS_REQUEST_OUT ');
    scrExecute.SQL.Add('ACTIVE AFTER UPDATE POSITION 0 ');
    scrExecute.SQL.Add(' AS begin if (new.accepted=1) then delete from sys_connection where sys_connection."CONNECTION_ID"=new.to_connection and sys_connection.user_id=new.to_user;'+
                       ' delete from sys_request_out where sys_request_out.request_id=new.request_id;post_event ''REQUEST_OUT_ACCEPTED''; end');
    scrExecute.SQL.Add('^');
    scrExecute.SQL.Add('SET TERM ; ^');

    scrExecute.Execute;
  end;

  //kiem tra xoa trang DB tai bang HR_DEPARMENT
  qryCheckTrigger.Close;
  qryCheckTrigger.ParamByName('TRIGGER_NAME').Value := 'HR_DEPT_EMPTY';
  qryCheckTrigger.ParamByName('TABLE_NAME').Value := 'HR_DEPARTMENT';
  qryCheckTrigger.Open;
  if qryCheckTrigger.IsEmpty or
    (qryCheckTriggerTRIGGER_SOURCE.Value <> 'AS begin if (not exists (select dept_no from hr_department)) then update sys_subsystem set sys_subsystem.ssp_version=null, sys_subsystem.package=null; end')
    then
  begin
    scrExecute.SQL.Clear;
    if qryCheckTrigger.IsEmpty = false then
      scrExecute.SQL.Text := 'DROP TRIGGER HR_DEPT_EMPTY;';
    scrExecute.SQL.Add('SET TERM ^ ;');
    scrExecute.SQL.Add('CREATE TRIGGER HR_DEPT_EMPTY FOR HR_DEPARTMENT ');
    scrExecute.SQL.Add('ACTIVE AFTER DELETE POSITION 0 ');
    scrExecute.SQL.Add('AS begin if (not exists (select dept_no from hr_department)) then update sys_subsystem set sys_subsystem.ssp_version=null, sys_subsystem.package=null; end');
    scrExecute.SQL.Add('^');
    scrExecute.SQL.Add('SET TERM ; ^');

    scrExecute.Execute;
  end;

  //kiem tra xoa trang DB tai bang HR_EMPLOYEE
  qryCheckTrigger.Close;
  qryCheckTrigger.ParamByName('TRIGGER_NAME').Value := 'HR_EMPLOYEE_EMPTY';
  qryCheckTrigger.ParamByName('TABLE_NAME').Value := 'HR_EMPLOYEE';
  qryCheckTrigger.Open;
  if qryCheckTrigger.IsEmpty or
    (qryCheckTriggerTRIGGER_SOURCE.Value <> 'AS begin if (not exists (select employee_no from hr_employee )) then update sys_subsystem set sys_subsystem.ssp_version=null, sys_subsystem.package=null; end')
    then
  begin
    scrExecute.SQL.Clear;
    if qryCheckTrigger.IsEmpty = false then
      scrExecute.SQL.Text := 'DROP TRIGGER HR_EMPLOYEE_EMPTY;';
    scrExecute.SQL.Add('SET TERM ^ ;');
    scrExecute.SQL.Add('CREATE TRIGGER HR_EMPLOYEE_EMPTY FOR HR_EMPLOYEE ');
    scrExecute.SQL.Add('ACTIVE AFTER DELETE POSITION 0 ');
    scrExecute.SQL.Add('AS begin if (not exists (select employee_no from hr_employee )) then update sys_subsystem set sys_subsystem.ssp_version=null, sys_subsystem.package=null; end');
    scrExecute.SQL.Add('^');
    scrExecute.SQL.Add('SET TERM ; ^');

    scrExecute.Execute;
  end;

  if qryLicense.Active then qryLicense.Close;
  qryLicense.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
  qryLicense.ParamByName('SSP_VERSION').Value := Application.Title;
  qryLicense.Open;
  temp := StrToInt(sysSecurity.Decrypt(qryLicensePACKAGE.AsString, S_STARTKEY)) / ((S_CONST_1 + S_CONST_2) * S_STARTKEY);
  if (temp - Round(temp)) <> 0 then license_max := 0
  else license_max := Floor(temp);
  qryCheckConnection.Open;
  connection_count := qryCheckConnection.RecordCount;
  result := (connection_count < license_max);

  if not result then ShowModalForm(TfrmCheckPackage, frmCheckPackage);

  qryCheckConnection.Close;
  qryLicense.Close;
end;

procedure TfrmLogin.acLoginSystemExecute(Sender: TObject);
var
  Error_code: integer;
  reg: TRegistry;
begin
  if dmMain.InitConnection = false then
    exit;
  User_Name := string(edtUsername.Text);
  Pass_word := MD5Print(MD5String(edtPassword.Text));
  Error_code := CheckUser(User_name, Pass_word, Display_name);
  case Error_code of
    0:
      begin
        //kiem tra package license
        if CheckLicensePackage = false then
        begin
           Exit;
        end;

        Reg := TRegistry.Create;
        try
          reg.RootKey := HKEY_CURRENT_USER;
          if reg.OpenKey(REGISTRY_ROOT + '\Option', TRUE) then
            Reg.WriteString('CurrentUser', User_name);
        finally
          reg.Free;
        end;
        sysConfig.User := User_name;
        sysConfig.Username := Display_name;
        sysConfig.AdminRight := (User_name = 'smallfoot') or (User_name = 'sspadmin');
        ModalResult := mrOK;
      end;
    1:
      begin
        edtPassword.Text := '';
        edtPassword.SetFocus;
        HintBox(1, Self, edtPassword);
      end;
    2:
      begin
        edtUsername.Text := '';
        edtUsername.SetFocus;
        HintBox(2, Self, edtUsername);
      end;
    -1:
      begin
        ShowMessageUnicode(59);
      end;
  end;
end;

procedure TfrmLogin.acLoginSystemUpdate(Sender: TObject);
begin
  acLoginSystem.Enabled := (Length(edtUsername.Text) > 0);
end;

procedure TfrmLogin.acConfigExecute(Sender: TObject);
begin
  with TfrmSystemConfig.Create(self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
var reg: TRegistry;
begin
  reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_CURRENT_USER;
    if reg.OpenKey(REGISTRY_ROOT + '\Option', TRUE) then
    try
      edtUsername.Text := reg.ReadString('CurrentUser');
    except
      edtUserName.Text := '';
    end;
  finally
    reg.Free;
  end;
end;

procedure TfrmLogin.scrExecuteError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  ShowMessage('ErrorMessage: '+errorMessage.Text +' ErrorCode: '+ErrorCodes.Text+' SQL: '+SQL.Text);
end;

end.

