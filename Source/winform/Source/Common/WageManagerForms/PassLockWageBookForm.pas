unit PassLockWageBookForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, dxLayoutControl, dxCntner, dxEditor, dxEdLib, ElBtnCtl,
  ElPopBtn, cxControls, ElCaption, ElXPThemedControl, ElStatBar, DB,
  IBODataset,md5;

type
  TfrmPassLockWageBook = class(TfrmBase)
    dxLayoutControl1: TdxLayoutControl;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    dxPassword: TdxEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    qryPass: TIBOQuery;
    qryPassPASS_LOCK_SALARY: TWideStringField;
    qryPassSUBSYSTEMID: TSmallintField;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    procedure ElPopupButton1Click(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ElPopupButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPassLockWageBook: TfrmPassLockWageBook;

implementation
uses MainDM,ChangePassSalaryForm,SSP_Library;
{$R *.dfm}

procedure TfrmPassLockWageBook.ElPopupButton1Click(Sender: TObject);
begin
  inherited;
  if (MD5Print(MD5String(dxPassword.Text)) <> qryPassPASS_LOCK_SALARY.Text) then
  begin
    MsgUnicode('Wrong Password!','Error',1,0);
    exit;
  end ;
  ModalResult := mrOk
end;

procedure TfrmPassLockWageBook.ElPopupButton2Click(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TfrmPassLockWageBook.FormCreate(Sender: TObject);
begin
  inherited;
  qrypass.Open;
end;

procedure TfrmPassLockWageBook.ElPopupButton3Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmChangePassSalary, frmChangePassSalary);
  if qrypass.active then qrypass.Close;
  qrypass.Open;
end;

end.
