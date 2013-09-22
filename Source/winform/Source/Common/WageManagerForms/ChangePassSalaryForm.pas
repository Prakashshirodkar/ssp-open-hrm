unit ChangePassSalaryForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, dxLayoutControl, ElBtnCtl, ElPopBtn, dxCntner,
  dxEditor, dxEdLib, cxControls, ElCaption, ElXPThemedControl, ElStatBar,
  DB, IBODataset, md5;

type
  TfrmChangePassSalary = class(TfrmBase)
    dxLayoutControl1: TdxLayoutControl;
    edtOldPass: TdxEdit;
    edtNewPass: TdxEdit;
    edtNewConfirm: TdxEdit;
    btnOK: TElPopupButton;
    btnCancel: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxlcOldPass: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxlcChangPass: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    qryPass: TIBOQuery;
    qryPassPASS_LOCK_SALARY: TWideStringField;
    qryPassSUBSYSTEMID: TSmallintField;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChangePassSalary: TfrmChangePassSalary;

implementation
uses MainDm;
{$R *.dfm}

procedure TfrmChangePassSalary.btnOKClick(Sender: TObject);
Var UserPwd : WideString;
  ok:boolean;
begin

  UserPwd := qryPassPASS_LOCK_SALARY.Value;
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
    qryPass.Edit;
    qryPassPASS_LOCK_SALARY.Value := MD5Print(MD5String(edtNewPass.Text));
    qryPass.Post;
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

procedure TfrmChangePassSalary.FormCreate(Sender: TObject);
begin
  inherited;
  qryPass.open;
end;

procedure TfrmChangePassSalary.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryPass.close;
end;

end.
