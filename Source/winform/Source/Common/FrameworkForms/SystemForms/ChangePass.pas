unit ChangePass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxCntner, dxEditor, dxEdLib, DB, IBCustomDataSet,
  IBQuery, ExtCtrls, DBActns, ActnList, Buttons, dxLayoutControl,
  cxControls, IBODataset, TntForms, TntStdCtrls, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, ElCaption;

type
  TfrmChangePass = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxlcOldPass: TdxLayoutItem;
    edtOldPass: TdxEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    edtNewPass: TdxEdit;
    edtNewConfirm: TdxEdit;
    btnOK: TElPopupButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    btnCancel: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ElFormCaption1: TElFormCaption;
    dxlcChangPass: TdxLayoutItem;
    qryUserPassword: TIBOQuery;
    qryUserPasswordUSERACCID: TWideStringField;
    qryUserPasswordDISPLAYNAME: TWideStringField;
    qryUserPasswordUSERACCPASS: TWideStringField;
    qryUserPasswordLASTACCESS: TDateTimeField;
    qryUserPasswordBEACTIVE: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChangePass: TfrmChangePass;

implementation

uses MainDM, md5, MainUnit;

{$R *.dfm}

procedure TfrmChangePass.FormCreate(Sender: TObject);
begin
  ApplyOption(TControl(Sender));
  qryUserPassword.ParamByName('USER_ID').Value:=sysConfig.User;
  qryUserPassword.Open;
end;

procedure TfrmChangePass.btnOKClick(Sender: TObject);
Var UserPwd : WideString;
  ok:boolean;
begin
  UserPwd := qryUserPasswordUSERACCPASS.Value;
  if (MD5Print(MD5String(edtOldPass.Text)) <> UserPwd) then
  begin
    ShowMessageUnicode(1);
    edtOldPass.SetFocus;
    exit;
  end;
  if edtNewPass.Text <> edtNewConfirm.Text then
  begin
    ShowMessageUnicode(5);
    edtNewConfirm.SetFocus;
    exit;
  end;
  try
    ok:=true;
    qryUserPassword.Edit;
    qryUserPasswordUSERACCPASS.Value := MD5Print(MD5String(edtNewPass.Text));
    qryUserPassword.Post;
  except
    ok:=false;
    ShowMessageUnicode(17);
  end;
  if ok then
  begin
    ShowMessageUnicode(16);
    ModalResult := mrOk;
  end;
end;

procedure TfrmChangePass.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryUserPassword.Close;
end;

end.

