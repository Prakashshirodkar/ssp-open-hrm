unit ConfigFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Registry, dxCntner, dxEditor, dxEdLib, IBDatabase, DB,
  IBCustomDataSet, IBQuery, TntForms, TntStdCtrls, ElCaption,
  ElXPThemedControl, ElBtnCtl, ElPopBtn, ElCLabel, ElLabel, ElEdits,
  ElCheckCtl, ExtCtrls, ElPanel, ElGroupBox, ElCheckItemGrp,
  dxLayoutControl, cxControls, ActnList,MainDM, dxExEdtr, IB_Components,
  IBODataset;
const
  REGISTRY_FOLDER=REGISTRY_ROOT;
  DATABASE_PATH = REGISTRY_FOLDER+'\Database\';
  DATABASETRANSLATOR_PATH = REGISTRY_FOLDER+'\DatabaseTranslate\';
type
  TfrmSystemConfig = class(TForm)
    OpenDialog1: TOpenDialog;
    btnTest: TElPopupButton;
    btnClose: TElPopupButton;
    ElFormCaption1: TElFormCaption;
    TntGroupBox1: TElGroupBox;
    RaBtnLocal: TElRadioButton;
    RaBtnRemote: TElRadioButton;
    EditServer: TElEdit;
    EditDatabase: TElEdit;
    ButtonBrowser: TElPopupButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxloDB: TdxLayoutItem;
    dxloServer: TdxLayoutItem;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    actionMain: TActionList;
    acSaveConfig: TAction;
    acCancel: TAction;
    acTestConnection: TAction;
    dxUsername: TdxEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxPassword: TdxMaskEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl2Group4: TdxLayoutGroup;
    chkDefault: TdxCheckEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    IB_Connection1: TIB_Connection;
    IB_Transaction1: TIB_Transaction;
    qrySysInfo: TIBOQuery;
    qrySysInfoSUBSYSTEMID: TSmallintField;
    qrySysInfoSUBSYSTEMNAME: TWideStringField;
    qrySysInfoSSP_VERSION: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RaBtnLocalClick(Sender: TObject);
    procedure RaBtnRemoteClick(Sender: TObject);
    procedure ButtonBrowserClick(Sender: TObject);
    procedure acSaveConfigExecute(Sender: TObject);
    procedure acTestConnectionExecute(Sender: TObject);
    procedure acSaveConfigUpdate(Sender: TObject);
    procedure acCancelUpdate(Sender: TObject);
    procedure acCancelExecute(Sender: TObject);
    procedure EditDatabaseChange(Sender: TObject);
    procedure chkDefaultChange(Sender: TObject);
    procedure dxUsernameChange(Sender: TObject);
    procedure dxPasswordChange(Sender: TObject);
    procedure EditServerChange(Sender: TObject);
  private
    { Private declarations }
    reg: TRegistry;
    ConnectionOK :boolean;
    procedure FillAllFields;
    procedure LocalOrRemote;

  public
    { Public declarations }
  end;

var
  frmSystemConfig: TfrmSystemConfig;

implementation

{$R *.dfm}

procedure TfrmSystemConfig.FillAllFields;
var
  ret: boolean;
begin
  ret := reg.KeyExists(DATABASE_PATH);
  if ret = false then
    exit;
  reg.OpenKey(DATABASE_PATH, False);
  if ret then
  begin
    if reg.ReadBool('IsLocal') = True then
    begin
      ButtonBrowser.Enabled := True;
      EditServer.Enabled := False;
      RaBtnLocal.Checked := True;
    end
    else
    begin
      RaBtnRemote.Checked := True;
      ButtonBrowser.Enabled := False;
      EditServer.Text := sysSecurity.Decrypt(reg.ReadString('ServerName'),S_STARTKEY);
    end;
    EditDatabase.Text := sysSecurity.Decrypt(reg.ReadString('Database'),S_STARTKEY);
    reg.CloseKey;
  end;
end;

procedure TfrmSystemConfig.FormCreate(Sender: TObject);
begin
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;
  FillAllFields;
  ConnectionOK:=true;
end;

procedure TfrmSystemConfig.FormDestroy(Sender: TObject);
begin
  reg.Free;
end;

procedure TfrmSystemConfig.LocalOrRemote;
begin
  if RaBtnLocal.Checked = True then
  begin
    EditServer.Enabled := False;
    EditServer.Color := clBtnFace;
    dxloServer.Enabled:=false;
    EditServer.text := '';
    ButtonBrowser.Enabled:=true;
  end
  else
  begin
    EditServer.Enabled := True;
    EditServer.Color := clWhite;
    dxloServer.Enabled:=true;
    ButtonBrowser.Enabled := False;
  end;
  ConnectionOK:=false;
end;

procedure TfrmSystemConfig.RaBtnLocalClick(Sender: TObject);
begin
  LocalOrRemote;
end;

procedure TfrmSystemConfig.RaBtnRemoteClick(Sender: TObject);
begin
  LocalOrRemote;
end;

procedure TfrmSystemConfig.ButtonBrowserClick(Sender: TObject);
begin
  if True = OpenDialog1.Execute then
  begin
    EditDatabase.Text := OpenDialog1.FileName;
  end;
end;

procedure TfrmSystemConfig.acSaveConfigExecute(Sender: TObject);
var
  ret: boolean;
begin
  ret := reg.KeyExists(DATABASE_PATH);
    if ret = False then
      reg.CreateKey(DATABASE_PATH);
    reg.OpenKey(DATABASE_PATH, False);

 if RaBtnLocal.Checked = True then
    reg.WriteBool('IsLocal', True)
  else reg.WriteBool('IsLocal', False);

  reg.WriteString('ServerName',sysSecurity.Encrypt(EditServer.Text,S_STARTKEY));
  reg.WriteString('Database', sysSecurity.Encrypt(EditDatabase.Text,S_STARTKEY));
  if chkDefault.Checked then
  begin
    reg.WriteString('UserName',sysSecurity.Encrypt('SYSDBA',S_STARTKEY));
    reg.WriteString('Password', sysSecurity.Encrypt('masterkey',S_STARTKEY));
  end
  else
  begin
    reg.WriteString('UserName',sysSecurity.Encrypt(dxUsername.Text,S_STARTKEY));
    reg.WriteString('Password', sysSecurity.Encrypt(dxPassword.Text,S_STARTKEY));
  end;

  reg.CloseKey;
  ModalResult:=mrOk;
end;

procedure TfrmSystemConfig.acTestConnectionExecute(Sender: TObject);
begin
  if RaBtnLocal.Checked = True then
  begin
    IB_Connection1.DatabaseName:=EditDataBase.Text;
  end
  else
  begin
    IB_Connection1.DatabaseName:=EditServer.Text + ':' + EditDatabase.Text;
  end;
  if chkDefault.Checked then
  begin
    IB_Connection1.Username:='SYSDBA';
    IB_Connection1.Password:='masterkey';
  end
  else
  begin
    IB_Connection1.Username:=dxUsername.Text;
    IB_Connection1.Password:=dxPassword.Text;
  end;
  try
    ConnectionOK:=true;
    IB_Connection1.Open;
    qrySysInfo.ParamByName('SUBSYSTEMID').Value:=sysConfig.SubSystemID;
    qrySysInfo.Open;
    if qrySysInfoSSP_VERSION.Value<>Application.Title then
    begin
      ConnectionOK:=false;
      MsgUnicode('Cơ sở dữ liệu không tương thích với phiên bản này.'+#13+#10+' Vui lòng kiểm tra lại','Báo lỗi');
    end;
  except
   ConnectionOK:=false;
   MsgUnicode('Kết nối đến cơ sở dữ liệu không thành công.'+#13+#10+' Vui lòng kiểm tra lại','Báo lỗi');
  end;

  if ConnectionOK then
    MsgUnicode('Kết nối đến cơ sở dữ liệu thành công.','Thông báo',1,0);

  qrySysInfo.Close;
  IB_Connection1.Close;
end;

procedure TfrmSystemConfig.acSaveConfigUpdate(Sender: TObject);
begin
 acSaveConfig.Enabled:=ConnectionOK;
end;

procedure TfrmSystemConfig.acCancelUpdate(Sender: TObject);
begin
  acCancel.Enabled:=ConnectionOK;
end;

procedure TfrmSystemConfig.acCancelExecute(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TfrmSystemConfig.EditDatabaseChange(Sender: TObject);
begin
  ConnectionOK:=false;
end;

procedure TfrmSystemConfig.chkDefaultChange(Sender: TObject);
begin
  ConnectionOK:=false;
  dxUsername.Enabled:=not chkDefault.Checked;
  dxPassword.Enabled:=not chkDefault.Checked;
end;

procedure TfrmSystemConfig.dxUsernameChange(Sender: TObject);
begin
ConnectionOK:=false;
end;

procedure TfrmSystemConfig.dxPasswordChange(Sender: TObject);
begin
ConnectionOK:=false;
end;

procedure TfrmSystemConfig.EditServerChange(Sender: TObject);
begin
ConnectionOK:=false;
end;

end.

