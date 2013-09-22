unit CustumizeIntefaceForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Buttons, StdCtrls, dxExEdtr, dxEdLib, dxEditor, dxCntner, dxLayoutControl,
  cxControls,dxLayoutLookAndFeels, Registry, ImgList, dxDBEdtr, dxDBELib,
  DB, IBCustomDataSet, IBQuery,Variants, IBODataset,
  ElXPThemedControl, ElBtnCtl, ElPopBtn, ElCLabel, ElLabel, ElCaption,
  TntExtCtrls, ElPanel, TntButtons;

type
  TFormCustumizeInteface = class(TForm)
    pnTop: TPanel;
    pnSeparator: TPanel;
    Bevel1: TBevel;
    Panel1: TPanel;
    Panel2: TPanel;
    BSample: TElPopupButton;
    BWeb: TElPopupButton;
    BRealBlank: TElPopupButton;
    BFlat: TElPopupButton;
    BStandard: TElPopupButton;
    Bevel2: TBevel;
    pnCustomize: TPanel;
    ImageList: TImageList;
    Panel7: TElPanel;
    Label1: TElLabel;
    Label114: TElLabel;
    edBorderColor: TdxButtonEdit;
    Label115: TElLabel;
    edBorderStyle: TdxPickEdit;
    edButtonTransparence: TElLabel;
    edButtonViewStyle: TdxPickEdit;
    Label117: TElLabel;
    ButtonTransparence: TdxPickEdit;
    cbLeft: TdxCheckEdit;
    cbRight: TdxCheckEdit;
    cbTop: TdxCheckEdit;
    cbBottom: TdxCheckEdit;
    cbHotTrack: TdxCheckEdit;
    cbShadow: TdxCheckEdit;
    Label2: TElLabel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label3: TElLabel;
    Label4: TElLabel;
    Bevel6: TBevel;
    Label5: TElLabel;
    Bevel7: TBevel;
    ColorDialog: TColorDialog;
    Bevel8: TBevel;
    dxLayoutControlGroup_Root: TdxLayoutGroup;
    dxLayoutControl: TdxLayoutControl;
    dxLayoutControlGroup1: TdxLayoutGroup;
    edName: TdxEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    edGender: TdxImageEdit;
    dxLayoutControlItem5: TdxLayoutItem;
    dxPickEdit1: TdxPickEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    dxLayoutControlItem2: TdxLayoutItem;
    dxImageEdit2: TdxImageEdit;
    dxDateEdit1: TdxDateEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    dxLayoutControlItem6: TdxLayoutItem;
    dxImageEdit3: TdxImageEdit;
    dxLayoutControlItem7: TdxLayoutItem;
    dxPickEdit2: TdxPickEdit;
    dxCurrencyEdit1: TdxCurrencyEdit;
    dxLayoutControlItem9: TdxLayoutItem;
    dxLayoutControlGroup4: TdxLayoutGroup;
    dxLayoutControlItem8: TdxLayoutItem;
    dxEdit2: TdxEdit;
    dxLayoutControlGroup5: TdxLayoutGroup;
    dxMemo1: TdxMemo;
    dxLayoutControlItem10: TdxLayoutItem;
    dxEdit3: TdxEdit;
    dxLayoutControlItem11: TdxLayoutItem;
    dxEdit5: TdxEdit;
    dxLayoutControlItem13: TdxLayoutItem;
    dxLayoutControlGroup6: TdxLayoutGroup;
    dxHyperLinkEdit1: TdxHyperLinkEdit;
    dxLayoutControlItem15: TdxLayoutItem;
    dxLayoutControlGroup8: TdxLayoutGroup;
    dxLayoutControlGroup2: TdxLayoutGroup;
    dxLayoutControlGroup3: TdxLayoutGroup;
    ActiveStyleController: TdxCheckEditStyleController;
    btnLoaibo: TElPopupButton;
    dxLayoutControlItem12: TdxLayoutItem;
    btnOK: TElPopupButton;
    dxLayoutControlItem16: TdxLayoutItem;
    dxLayoutControlGroup9: TdxLayoutGroup;
    dxLayoutControlGroup10: TdxLayoutGroup;
    BCustomize: TElPopupButton;
    Bevel3: TBevel;
    Panel3: TElPanel;
    Label6: TElLabel;
    Bevel9: TBevel;
    leLocale: TdxLookupEdit;
    ElFormCaption1: TElFormCaption;
    cbGridLookAndFeel: TdxCheckEdit;
    procedure FormShow(Sender: TObject);
    procedure edBorderColorButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure edBorderStyleChange(Sender: TObject);
    procedure edButtonViewStyleChange(Sender: TObject);
    procedure ButtonTransparenceChange(Sender: TObject);
    procedure cbLeftClick(Sender: TObject);
    procedure cbTopChange(Sender: TObject);
    procedure cbRightChange(Sender: TObject);
    procedure cbBottomChange(Sender: TObject);
    procedure cbHotTrackClick(Sender: TObject);
    procedure cbShadowClick(Sender: TObject);
    procedure edBorderColorDblClick(Sender: TObject);
    procedure BSampleClick(Sender: TObject);
    procedure BWebClick(Sender: TObject);
    procedure BStandardClick(Sender: TObject);
    procedure BFlatClick(Sender: TObject);
    procedure BRealBlankClick(Sender: TObject);
    procedure WriteRegistry;
    procedure ApplyInterface(ApplyInterface:boolean;ApplyLanguage:boolean);
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BCustomizeClick(Sender: TObject);
  private
    PosActiveStyle: Integer; // gia tri nay xac dinh style nao dang hoat dong trong chuong trinh
  protected
    procedure InitCustomize;
  public
  end;

var
  FormCustumizeInteface: TFormCustumizeInteface;

implementation

uses GlobalInterface, MainDM;


{$R *.dfm}

procedure TFormCustumizeInteface.InitCustomize;
begin
  edBorderColor.Color := ActiveStyleController.BorderColor;
  edBorderStyle.ItemIndex := Integer(ActiveStyleController.BorderStyle);
  edButtonViewStyle.ItemIndex := Integer(ActiveStyleController.ButtonStyle);
  ButtonTransparence.ItemIndex := Integer(ActiveStyleController.ButtonTransparence);
  cbHotTrack.Checked := ActiveStyleController.HotTrack;
  cbShadow.Checked := ActiveStyleController.Shadow;
  cbLeft.Checked := edgLeft in ActiveStyleController.Edges;
  cbRight.Checked := edgRight in ActiveStyleController.Edges;
  cbTop.Checked := edgTop in ActiveStyleController.Edges;
  cbBottom.Checked := edgBottom in ActiveStyleController.Edges;
end;

procedure TFormCustumizeInteface.FormShow(Sender: TObject);
begin
 // BSampleClick(nil);
end;

procedure TFormCustumizeInteface.edBorderColorButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  ColorDialog.Color := edBorderColor.Color;
  if ColorDialog.Execute then
  begin
    edBorderColor.Color := ColorDialog.Color;
    edBorderColor.Font.Color := ColorToRGB(edBorderColor.Color) xor $FFFFFF;
    ActiveStyleController.BorderColor := edBorderColor.Color;
  end;
end;

procedure TFormCustumizeInteface.edBorderColorDblClick(Sender: TObject);
begin
  edBorderColorButtonClick(nil, 0);
end;

procedure TFormCustumizeInteface.edBorderStyleChange(Sender: TObject);
begin
  ActiveStyleController.BorderStyle := TdxEditBorderStyle(edBorderStyle.ItemIndex);
end;

procedure TFormCustumizeInteface.edButtonViewStyleChange(Sender: TObject);
begin
  ActiveStyleController.ButtonStyle := TdxEditButtonViewStyle(edButtonViewStyle.ItemIndex);
end;

procedure TFormCustumizeInteface.ButtonTransparenceChange(Sender: TObject);
begin
  ActiveStyleController.ButtonTransparence := TdxEditButtonTransparence(ButtonTransparence.ItemIndex);
end;

procedure TFormCustumizeInteface.cbLeftClick(Sender: TObject);
begin
  with ActiveStyleController do
  begin
    if cbLeft.Checked then
      Edges := Edges + [edgLeft]
    else
      Edges := Edges - [edgLeft];
  end;
end;

procedure TFormCustumizeInteface.cbTopChange(Sender: TObject);
begin
  with ActiveStyleController do
  begin
    if cbTop.Checked then
      Edges := Edges + [edgTop]
    else
      Edges := Edges - [edgTop];
  end;
end;

procedure TFormCustumizeInteface.cbRightChange(Sender: TObject);
begin
  with ActiveStyleController do
  begin
    if cbRight.Checked then
      Edges := Edges + [edgRight]
    else
      Edges := Edges - [edgRight];
  end;
end;

procedure TFormCustumizeInteface.cbBottomChange(Sender: TObject);
begin
  with ActiveStyleController do
  begin
    if cbBottom.Checked then
      Edges := Edges + [edgBottom]
    else
      Edges := Edges - [edgBottom];
  end;
end;

procedure TFormCustumizeInteface.cbHotTrackClick(Sender: TObject);
begin
  ActiveStyleController.HotTrack := cbHotTrack.Checked;
end;

procedure TFormCustumizeInteface.cbShadowClick(Sender: TObject);
begin
  ActiveStyleController.Shadow := cbShadow.Checked;
end;

procedure TFormCustumizeInteface.BSampleClick(Sender: TObject);
begin
  with ActiveStyleController do
  begin
    BorderColor := $00B4D3DE;
    BorderStyle := TdxeditBorderStyle(1);
    ButtonStyle := TdxEditButtonViewStyle(3);
    ButtonTransparence := TdxEditButtonTransparence(0);
    Shadow := true;
    HotTrack := true;
    Edges := Edges + [edgLeft] + [edgRight] + [edgTop] + [edgBottom];
  end;
  InitCustomize;
  cbGridLookAndFeel.Checked := FALSE;
  dxLayoutControl.LookAndFeel :=dmMain.StyleShadow;
  PosActiveStyle := 0;
end;

procedure TFormCustumizeInteface.BWebClick(Sender: TObject);
begin
  with ActiveStyleController do
  begin
    BorderColor := clSkyBlue;
    BorderStyle := TdxeditBorderStyle(1);
    ButtonStyle := TdxEditButtonViewStyle(1);
    ButtonTransparence := TdxEditButtonTransparence(0);
    Shadow := false;
    HotTrack := true;
    Edges := Edges + [edgLeft] + [edgRight] + [edgTop] + [edgBottom];
  end;
  InitCustomize;
  cbGridLookAndFeel.Checked := TRUE;
  dxLayoutControl.LookAndFeel := dmMain.StyleWeb;
  PosActiveStyle := 1;
end;

procedure TFormCustumizeInteface.BStandardClick(Sender: TObject);
begin
  with ActiveStyleController do
  begin
    BorderColor := clSkyBlue;
    BorderStyle := TdxeditBorderStyle(3);
    ButtonStyle := TdxEditButtonViewStyle(0);
    ButtonTransparence := TdxEditButtonTransparence(0);
    Shadow := false;
    HotTrack := false;
    Edges := Edges + [edgLeft] + [edgRight] + [edgTop] + [edgBottom];
  end;
  InitCustomize;
  cbGridLookAndFeel.Checked := FALSE;
  dxLayoutControl.LookAndFeel := dmMain.StyleStandard;
  PosActiveStyle := 4;
end;

procedure TFormCustumizeInteface.BFlatClick(Sender: TObject);
begin
  with ActiveStyleController do
  begin
    BorderColor := $00BABEA7;
    BorderStyle := TdxeditBorderStyle(3);
    ButtonStyle := TdxEditButtonViewStyle(0);
    ButtonTransparence := TdxEditButtonTransparence(0);
    Shadow := false;
    HotTrack := false;
    Edges := Edges + [edgLeft] + [edgRight] + [edgTop] + [edgBottom];
  end;
  InitCustomize;
  cbGridLookAndFeel.Checked := TRUE;
  dxLayoutControl.LookAndFeel := dmMain.StylePhang;
  PosActiveStyle := 3;
end;

procedure TFormCustumizeInteface.BRealBlankClick(Sender: TObject);
begin
  with ActiveStyleController do
  begin
    BorderColor := $00B7C0DB;
    BorderStyle := TdxeditBorderStyle(1);
    ButtonStyle := TdxEditButtonViewStyle(0);
    ButtonTransparence := TdxEditButtonTransparence(3);
    Shadow := false;
    HotTrack := true;
    Edges := Edges + [edgLeft] + [edgRight] + [edgTop] + [edgBottom];
  end;
  InitCustomize;
  cbGridLookAndFeel.Checked := TRUE;
  dxLayoutControl.LookAndFeel := dmMain.StyleDetrong;
  PosActiveStyle := 2; // style o vi tri hai trong style
end;

procedure TFormCustumizeInteface.WriteRegistry;
var
  reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_CURRENT_USER;
    if reg.OpenKey('SoftWare\SSP\Interface', TRUE) then
    begin
      if cbGridLookandFeel.Checked then
        GridLookandFeel :=1
      else
        GridLookandFeel :=0;
      Reg.WriteInteger('LookAndFeel', GridLookandFeel);
      Reg.WriteInteger('BorderColor', Integer(ActiveStyleController.BorderColor));
      Reg.WriteInteger('BorderStyle', Integer(ActiveStyleController.BorderStyle));
      Reg.WriteInteger('ButtonStyle', Integer(ActiveStyleController.ButtonStyle));
      Reg.WriteInteger('ButtonTransparence', Integer(ActiveStyleController.ButtonTransparence));
      reg.WriteBool('EdgesLeft', edgLeft in ActiveStyleController.Edges);
      reg.WriteBool('EdgesRight', edgRight in ActiveStyleController.Edges);
      reg.WriteBool('EdgesTop', edgTop in ActiveStyleController.Edges);
      reg.WriteBool('EdgesBottom', edgBottom in ActiveStyleController.Edges);
      reg.WriteBool('HotTrack', ActiveStyleController.HotTrack);
      reg.WriteBool('Shadow', ActiveStyleController.Shadow); // het cac thuoc tinh cua style control
      reg.WriteInteger('PosActiveStyle', PosActiveStyle); // luu lai style nao dau tien
      reg.WriteString('Language',leLocale.Text); // luu lai ngon ngu hien thi
      dmMain.StyleController.Assign(ActiveStyleController);
      ApplyInterface(true,false);
    end;
  finally
    reg.Free;
  end;
end;

procedure TFormCustumizeInteface.ApplyInterface(ApplyInterface:boolean;ApplyLanguage:boolean);
var i: Integer;
// thay doi giao dien khi nguoi dung dong y su thay doi nay.
begin
  if GlobalActiveStyle<>PosActiveStyle then
  begin
  GlobalActiveStyle := PosActiveStyle;
  for i := 0 to Screen.CustomFormCount - 1 do
    if screen.CustomForms[i] <> FormCustumizeInteface then
       ApplyUserInterface(Screen.CustomForms[i]);
  end;
end;

procedure TFormCustumizeInteface.btnOKClick(Sender: TObject);
begin
  WriteRegistry;
end;

procedure TFormCustumizeInteface.FormCreate(Sender: TObject);
begin
  ApplyOption(TControl(Sender));
  PosActiveStyle := GlobalActiveStyle;
  ActiveStyleController.Assign(dmMain.StyleController);
  InitCustomize;
  cbGridLookAndFeel.Checked := (GridLookandFeel =1);
  case PosActiveStyle of
    0: // style co' bong
      dxLayoutControl.LookAndFeel := dmMain.StyleShadow;
    1: // style kieu web
      dxLayoutControl.LookAndFeel := dmMain.StyleWeb;
    2: // style trong
      dxLayoutControl.LookAndFeel := dmMain.StyleDetrong;
    3: // style phang
      dxLayoutControl.LookAndFeel := dmMain.StylePhang;
    4: // style chuan
      dxLayoutControl.LookAndFeel := dmMain.StyleStandard;
    5: // style mac dinh
      dxLayoutControl.LookAndFeel := dmMain.StyleMacDinh;
  end;

end;

procedure TFormCustumizeInteface.BCustomizeClick(Sender: TObject);
begin
  with ActiveStyleController do
  begin
    BorderColor := $00B4D3DE;
    BorderStyle := TdxeditBorderStyle(1);
    ButtonStyle := TdxEditButtonViewStyle(3);
    ButtonTransparence := TdxEditButtonTransparence(0);
    Shadow := False;
    HotTrack := true;
    Edges := Edges + [edgLeft] + [edgRight] + [edgTop] + [edgBottom];
  end;
  InitCustomize;
  cbGridLookAndFeel.Checked := TRUE;
  dxLayoutControl.LookAndFeel := dmMain.StyleMacDinh;
  PosActiveStyle := 5;
end;

end.

