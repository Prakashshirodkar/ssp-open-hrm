unit GioiThieuForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn, ElURLLabel,
  StdCtrls, ElCLabel, ElLabel, ExtCtrls;

type
  TfrmGioiThieu = class(TForm)
    Image1: TImage;
    Label3: TElLabel;
    Label4: TElLabel;
    Label8: TElLabel;
    Label1: TElLabel;
    Label5: TElURLLabel;
    ElLabel2: TElLabel;
    lblCustomer: TElLabel;
    lblAddress: TElLabel;
    lblPhone: TElLabel;
    ElLabel1: TElLabel;
    ElLabel3: TElLabel;
    ElPopupButton1: TElPopupButton;
    ElFormCaption1: TElFormCaption;
    procedure Label5MouseEnter(Sender: TObject);
    procedure Label5MouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGioiThieu: TfrmGioiThieu;
  OldCursor: TCursor;

implementation

{$R *.dfm}

uses MainDM;

procedure TfrmGioiThieu.Label5MouseEnter(Sender: TObject);
begin
  OldCursor := Screen.Cursor;
  Screen.Cursor := crHandPoint;
end;

procedure TfrmGioiThieu.Label5MouseLeave(Sender: TObject);
begin
  Screen.Cursor := OldCursor;
end;

procedure TfrmGioiThieu.FormCreate(Sender: TObject);
begin
  lblCustomer.Caption := dmMain.qryThongTinDoanhNghiepORG_NAME.Value;
  lblAddress.Caption := dmMain.qryThongTinDoanhNghiepORG_ADDRESS.Value;
  lblPhone.Caption := dmMain.qryThongTinDoanhNghiepORG_PHONE.Value;
end;

end.
