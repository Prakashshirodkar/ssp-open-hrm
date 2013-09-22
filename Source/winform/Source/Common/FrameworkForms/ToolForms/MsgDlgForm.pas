unit MsgDlgForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, cxControls, StdCtrls, dxCntner,
  dxEditor, dxEdLib, ElXPThemedControl, ElEdits, ElCaption,
  ElBtnCtl, ElPopBtn, ElCLabel, ElLabel, ElStrUtils, ElVCLUtils, Math,
  ImgList, ExtCtrls, dxExEdtr, ActnList, ElACtrls;

type
  TMsgDlgFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    btnCancel: TELPopupButton;
    lbtnCancel: TdxLayoutItem;
    btnYes: TElPopupButton;
    lbtnYes: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    LblContent: TElLabel;
    bntNo: TElPopupButton;
    lbtnNo: TdxLayoutItem;
    btnClose: TElPopupButton;
    lbtnClose: TdxLayoutItem;
    Image1: TImage;
    ImageList1: TImageList;
    Image2: TImage;
    btnDetail: TElPopupButton;
    dxlcViewDetail: TdxLayoutItem;
    ImageList2: TImageList;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    Panel1: TPanel;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Item3: TdxLayoutItem;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnDetailClick(Sender: TObject);
  private
    { Private declarations }
    FMsg: WideString;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent;AMsgID:integer; AMsgText,AMsgTitle: WideString; AMsgType:
      integer=0;ADetail:WideString='');
  end;

var
  MsgDlgFrm: TMsgDlgFrm;
  OldHeight:integer;
  Detail:widestring;

implementation

uses MainDM;
//uses GlobalInterface, GlobalUnit;
{$R *.dfm}

constructor TMsgDlgFrm.Create(AOwner: TComponent;AMsgID:integer; AMsgText,AMsgTitle: WideString;
  AMsgType: integer;ADetail:WideString);
var
  l, r, r1, r2, num,w,h: integer;
  Size: TSize;
  delta: Double;
begin
  inherited Create(AOwner);
  if AMsgText='' then
  begin
    if sysConfig.Language=2 then
      FMsg:='< Message '+ IntToStr(AMsgID)+' is not defined. Please check in message list >'
    else
      FMsg:=Utf8Decode('< Thông báo mã số '+ IntToStr(AMsgID)+' chưa được định nghĩa. Vui lòng kiểm tra danh sách thông báo >');
  end
  else
    FMsg := AMsgText;
  if FMsg <> '' then
  begin
{
    l := Length(FMsg);
    GetTextExtentPoint32W(LblContent.Canvas.Handle, PWideChar(FMsg), l, size);
    num := 3 * (Height - LblContent.Height) - 2 * (Width - LblContent.Width);
    delta := Power(num, 2) + 24 * size.cx * size.cy;
    r := 1;
    if delta >= 0 then
    begin
      r1 := Floor((-num - sqrt(delta)) / (6 * Size.cy));
      r2 := Floor((-num + sqrt(delta)) / (6 * Size.cy));
      EnsureRange(r1, 1, 9);
      EnsureRange(r2, 1, 10);
      r := Max(r1, r2);
    end;
    if (Size.cx < Width) then
      Width := Width - LblContent.Width + 3*size.cx
    else
    if ((Size.cx div r) > Width) then
      Width := Width - LblContent.Width + 3*(Size.cx div r);
    if (r * Size.cy) > Image1.Height then
      Height := Height - LblContent.Height + r * Size.cy
    else
      Height := Height - LblContent.Height + Image1.Height;
}
  end;
  case AMsgType of
    2:
      begin
        // lua chon  Yes - No - Cancel
        lbtnYes.Visible := True;
        lbtnNo.Visible := True;
        lbtnClose.Visible := False;
        lbtnCancel.Visible := True;
      end;
    3:
      begin
        // lua chon Yes - No
        lbtnYes.Visible := True;
        lbtnNo.Visible := True;
        lbtnClose.Visible := False;
        lbtnCancel.Visible := False;
      end;
  else
    begin
      lbtnYes.Visible := False;
      lbtnNo.Visible := False;
      lbtnClose.Visible := True;
      lbtnCancel.Visible := False;
    end;
  end;
  if (AMsgType=0)and(Length(ADetail)>0) then
  begin
    dxlcViewDetail.Visible:=true;
    Detail:='===================================================='+#13+#10+
          ADetail+#13+#10+
          '====================================================';
  end
  else
    dxlcViewDetail.Visible:=false;
  ImageList1.GetBitmap(AMsgType, Image1.Picture.Bitmap);
  Image1.Transparent:=true;
  if (AMsgID>0) and sysConfig.AdminRight then
    ElFormCaption1.Texts[0].Caption:=ElFormCaption1.Texts[0].Caption+' - '+AMsgTitle+'('+IntToStr(AMsgID)+')'
  else
    ElFormCaption1.Texts[0].Caption:=ElFormCaption1.Texts[0].Caption+' - '+AMsgTitle;
end;

procedure TMsgDlgFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 // OnDefineCaption(Self, Key);
end;

procedure TMsgDlgFrm.FormShow(Sender: TObject);
begin
  LblContent.Caption := FMsg;
  if sysConfig.Language=2 then
  begin
    btnYes.Caption:='&Yes';
    bntNo.Caption:='&No';
    btnCancel.Caption:='&Cancel';
    btnClose.Caption:='Clo&se';
    btnDetail.Caption:='&Detail';
  end;
end;

procedure TMsgDlgFrm.btnDetailClick(Sender: TObject);
begin
  ShowMessage(Detail);
end;

end.

