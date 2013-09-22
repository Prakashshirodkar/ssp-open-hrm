unit AboutFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ShellAPI, Buttons,
  ElURLLabel, ElCLabel, ElLabel, ElCaption, ElXPThemedControl, ElBtnCtl,
  ElPopBtn, jpeg;

type
  TfrmAbout = class(TForm)
    Image1: TImage;
    ElFormCaption1: TElFormCaption;
    Label3: TElLabel;
    Label4: TElLabel;
    Label8: TElLabel;
    Label1: TElLabel;
    Label5: TElURLLabel;
    ElPopupButton1: TElPopupButton;
    ElLabel2: TElLabel;
    lblCustomer: TElLabel;
    lblAddress: TElLabel;
    lblPhone: TElLabel;
    ElLabel1: TElLabel;
    ElLabel3: TElLabel;
    procedure Label5MouseEnter(Sender: TObject);
    procedure Label5MouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbout: TfrmAbout;
  OldCursor: TCursor;

implementation

{$R *.dfm}

uses MainDM;

procedure TfrmAbout.Label5MouseEnter(Sender: TObject);
begin
  OldCursor := Screen.Cursor;
  Screen.Cursor := crHandPoint;
end;

procedure TfrmAbout.Label5MouseLeave(Sender: TObject);
begin
  Screen.Cursor := OldCursor;
end;

procedure TfrmAbout.FormCreate(Sender: TObject);
begin
  lblCustomer.Caption := dmMain.qryThongTinDoanhNghiepORG_NAME.Value;
  lblAddress.Caption := dmMain.qryThongTinDoanhNghiepORG_ADDRESS.Value;
  lblPhone.Caption := dmMain.qryThongTinDoanhNghiepORG_PHONE.Value;
end;

end.
