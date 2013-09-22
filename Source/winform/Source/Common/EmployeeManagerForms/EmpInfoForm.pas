unit EmpInfoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, StdCtrls, ElCLabel, ElLabel,
  dxExEdtr, dxEdLib, dxDBELib, dxCntner, dxEditor, ExtCtrls, dxDBEdtr,
  ActnList;

type
  TfrmEmpInfo = class(TfrmEditBase)
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    dxDBEdit1: TdxDBEdit;
    dxlcMainItem3: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxlcMainItem4: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    dxlcMainItem5: TdxLayoutItem;
    dxlcMainGroup2: TdxLayoutGroup;
    dxDBEdit5: TdxDBEdit;
    dxlcMainItem7: TdxLayoutItem;
    dxDBEdit6: TdxDBEdit;
    dxlcMainItem8: TdxLayoutItem;
    dbimGENDER: TdxDBImageEdit;
    dxlcMainItem9: TdxLayoutItem;
    dxDBDateEdit1: TdxDBDateEdit;
    dxlcMainItem10: TdxLayoutItem;
    dxDBEdit7: TdxDBEdit;
    dxlcMainItem11: TdxLayoutItem;
    dxDBEdit8: TdxDBEdit;
    dxlcMainItem12: TdxLayoutItem;
    dxDBDateEdit2: TdxDBDateEdit;
    dxlcMainItem13: TdxLayoutItem;
    dxDBPopupEdit1: TdxDBPopupEdit;
    dxlcMainItem15: TdxLayoutItem;
    dxDBPopupEdit2: TdxDBPopupEdit;
    dxlcMainItem16: TdxLayoutItem;
    dxDBPopupEdit3: TdxDBPopupEdit;
    dxlcMainItem17: TdxLayoutItem;
    dxDBPopupEdit4: TdxDBPopupEdit;
    dxlcMainItem18: TdxLayoutItem;
    dxDBPopupEdit5: TdxDBPopupEdit;
    dxlcMainItem19: TdxLayoutItem;
    dxDBPopupEdit6: TdxDBPopupEdit;
    dxlcMainItem20: TdxLayoutItem;
    dxDBEdit9: TdxDBEdit;
    dxlcMainItem21: TdxLayoutItem;
    dxDBEdit10: TdxDBEdit;
    dxlcMainItem22: TdxLayoutItem;
    dxDBEdit11: TdxDBEdit;
    dxlcMainItem23: TdxLayoutItem;
    dxlcMainGroup12: TdxLayoutGroup;
    dxDBEdit14: TdxDBEdit;
    dxlcMainItem26: TdxLayoutItem;
    dxlcMainGroup16: TdxLayoutGroup;
    dxDBEdit15: TdxDBEdit;
    dxlcMainItem27: TdxLayoutItem;
    dxDBHyperLinkEdit1: TdxDBHyperLinkEdit;
    dxlcMainItem24: TdxLayoutItem;
    dxlcMainGroup14: TdxLayoutGroup;
    Panel1: TPanel;
    dxlcMainItem28: TdxLayoutItem;
    dxlcMainGroup4: TdxLayoutGroup;
    dxDBEdit12: TdxDBEdit;
    dxlcMainItem2: TdxLayoutItem;
    dxDBEdit13: TdxDBEdit;
    dxlcMainItem30: TdxLayoutItem;
    dxlcMainGroup17: TdxLayoutGroup;
    dxDBMemo1: TdxDBMemo;
    dxDBEdit4: TdxDBEdit;
    dxlcMainItem6: TdxLayoutItem;
    dxDBEdit16: TdxDBEdit;
    dxlcMainItem31: TdxLayoutItem;
    dxlcMainGroup21: TdxLayoutGroup;
    dxlcMainGroup15: TdxLayoutGroup;
    dxlcMainGroup8: TdxLayoutGroup;
    dxlcMainGroup3: TdxLayoutGroup;
    dxlcMainGroup6: TdxLayoutGroup;
    dxDBEdit17: TdxDBEdit;
    dxDBDateEdit3: TdxDBDateEdit;
    dxlcMainItem32: TdxLayoutItem;
    dxlcMainItem33: TdxLayoutItem;
    dxlcMainGroup5: TdxLayoutGroup;
    dxlcMainGroup7: TdxLayoutGroup;
    dxlcMainGroup19: TdxLayoutGroup;
    dxlcMainGroup22: TdxLayoutGroup;
    dxDBEdit18: TdxDBEdit;
    dxlcMainItem34: TdxLayoutItem;
    dxlcMainGroup25: TdxLayoutGroup;
    dxlcMainGroup20: TdxLayoutGroup;
    dxDBPopupEdit7: TdxDBPopupEdit;
    dxlcMainItem35: TdxLayoutItem;
    dxlcMainGroup9: TdxLayoutGroup;
    ActionList1: TActionList;
    acXuliTen: TAction;
    dxlcMainItem14: TdxLayoutItem;
    dxDBEdit19: TdxDBEdit;
    dxlcMainGroup24: TdxLayoutGroup;
    dxlcMainGroup26: TdxLayoutGroup;
    dxlcMainItem36: TdxLayoutItem;
    dxDBEdit20: TdxDBEdit;
    dxlcMainItem37: TdxLayoutItem;
    dxDBDateEdit4: TdxDBDateEdit;
    dxlcMainGroup27: TdxLayoutGroup;
    dxlcMainItem38: TdxLayoutItem;
    dxDBPopupEdit9: TdxDBPopupEdit;
    dxlcMainItem39: TdxLayoutItem;
    dxDBPopupEdit10: TdxDBPopupEdit;
    dxlcMainItem40: TdxLayoutItem;
    dxDBDateEdit5: TdxDBDateEdit;
    dxlcMainGroup1: TdxLayoutGroup;
    dxDBEdit21: TdxDBEdit;
    dxDBDateEdit6: TdxDBDateEdit;
    dxDBDateEdit7: TdxDBDateEdit;
    dxDBEdit22: TdxDBEdit;
    dxlcMainItem41: TdxLayoutItem;
    dxlcMainItem42: TdxLayoutItem;
    dxlcMainItem43: TdxLayoutItem;
    dxlcMainItem44: TdxLayoutItem;
    dxlcMainGroup18: TdxLayoutGroup;
    dxlcMainGroup23: TdxLayoutGroup;
    dxlcMainGroup28: TdxLayoutGroup;
    dxlcMainItem29: TdxLayoutItem;
    dxDBEdit23: TdxDBEdit;
    dxlcMainGroup10: TdxLayoutGroup;
    dxlcMainItem25: TdxLayoutItem;
    dxDBEdit24: TdxDBEdit;
    dxlcMainItem45: TdxLayoutItem;
    dxDBEdit25: TdxDBEdit;
    dxlcMainItem46: TdxLayoutItem;
    dxDBEdit26: TdxDBEdit;
    dxlcMainGroup11: TdxLayoutGroup;
    dxlcMainItem47: TdxLayoutItem;
    dxDBEdit27: TdxDBEdit;
    dxlcMainItem49: TdxLayoutItem;
    dxDBDateEdit8: TdxDBDateEdit;
    dxlcMainItem48: TdxLayoutItem;
    dxDBDateEdit9: TdxDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure dxDBGraphicEdit1AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit1GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure dxDBPopupEdit1InitPopup(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit3InitPopup(Sender: TObject);
    procedure dxDBPopupEdit3CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit5CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit5InitPopup(Sender: TObject);
    procedure dxDBPopupEdit2InitPopup(Sender: TObject);
    procedure dxDBPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit4CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit4InitPopup(Sender: TObject);
    procedure dxDBPopupEdit6InitPopup(Sender: TObject);
    procedure dxDBPopupEdit6CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit8InitPopup(Sender: TObject);
    procedure dxDBPopupEdit8CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit7InitPopup(Sender: TObject);
    procedure dxDBPopupEdit7CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure acXuliTenExecute(Sender: TObject);
    procedure dxDBPopupEdit9InitPopup(Sender: TObject);
    procedure dxDBPopupEdit9CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit10InitPopup(Sender: TObject);
    procedure dxDBPopupEdit10CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpInfo: TfrmEmpInfo;

implementation

uses MainDM, EmpInfoDataModule, NationListForm, PopupMainForm, SSP_Library,
  RaceListForm, ReligionListForm, LocationListForm, IBODataset,DB;

{$R *.dfm}

procedure TfrmEmpInfo.FormCreate(Sender: TObject);
begin
  dbimGENDER.Descriptions.Add(Utf8Decode('Nữ'));
  dbimGENDER.Descriptions.Add(Utf8Decode('Nam'));
  dbimGENDER.Values.Add('0');
  dbimGENDER.Values.Add('1');
  dbimGENDER.Images := EmpInfoDM.imglGender;
  dbimGENDER.ImageIndexes.Add('0');
  dbimGENDER.ImageIndexes.Add('1');
  inherited;

  frameToolbar1.dxLayoutControl1Item8.Visible:=sysConfig.AdminRight;

  //=============================================
end;

procedure TfrmEmpInfo.dxDBGraphicEdit1AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
  inherited;
  dmMain.DefOnAssignPicture(Sender, Picture);
end;

procedure TfrmEmpInfo.dxDBGraphicEdit1GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
begin
  inherited;
  dmMain.DefOnGetGraphicClass(Sender, GraphicClass);
end;

procedure TfrmEmpInfo.dxDBPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryNationList.Open;
  InitPopupControl('dxlcNationList', frmPopupMain, sender, 2);
end;

procedure TfrmEmpInfo.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryNationList, EmpInfoDM.qryEmpList,
    'NATION_NO;NATION_NAME', 'NATIONAL_NO;NATIONAL_NAME',
    'NATION_NAME', Text);
  frmPopupMain.qryNationList.Close;
end;

procedure TfrmEmpInfo.dxDBPopupEdit3InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryRaceList.Open;
  InitPopupControl('dxlcRaceList', frmPopupMain, sender, 2);
end;

procedure TfrmEmpInfo.dxDBPopupEdit3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryRaceList, EmpInfoDM.qryEmpList,
    'RACE_NO;RACE_NAME', 'RACE_NO;RACE_NAME',
    'RACE_NAME', Text);
  frmPopupMain.qryRaceList.Close;
end;

procedure TfrmEmpInfo.dxDBPopupEdit5CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryReligionList, EmpInfoDM.qryEmpList,
    'RELIGION_NO;RELIGION_NAME', 'RELIGION_NO;RELIGION_NAME',
    'RELIGION_NAME', Text);
  frmPopupMain.qryReligionList.Close;
end;

procedure TfrmEmpInfo.dxDBPopupEdit5InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryReligionList.Open;
  InitPopupControl('dxlcReligionList', frmPopupMain, sender, 2);
end;

procedure TfrmEmpInfo.dxDBPopupEdit2InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryLocationList.Open;
  InitPopupControl('dxlcLocationList', frmPopupMain, sender, 2.5);
end;

procedure TfrmEmpInfo.dxDBPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryLocationList, EmpInfoDM.qryEmpList,
    'LOCATION_FULL_NAME;LOCATION_FULL_NAME', 'BIRTH_PLACE_ID;BIRTH_PLACE_NAME',
    'LOCATION_FULL_NAME', Text);
  frmPopupMain.qryLocationList.Close;
end;

procedure TfrmEmpInfo.dxDBPopupEdit4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryLocationList, EmpInfoDM.qryEmpList,
    'LOCATION_FULL_NAME;LOCATION_FULL_NAME', 'NATIVE_PLACE_ID;NATIVE_PLACE_NAME',
    'LOCATION_FULL_NAME', Text);
  frmPopupMain.qryLocationList.Close;
end;

procedure TfrmEmpInfo.dxDBPopupEdit4InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryLocationList.Open;
  InitPopupControl('dxlcLocationList', frmPopupMain, sender, 2.5);
end;

procedure TfrmEmpInfo.dxDBPopupEdit6InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDescentList.Open;
  InitPopupControl('dxlcDescentList', frmPopupMain, sender, 2);
end;

procedure TfrmEmpInfo.dxDBPopupEdit6CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryDescentList, EmpInfoDM.qryEmpList,
    'DESCENT_NO;DESCENT_NAME', 'DESCENT_FROM;DESCENT_NAME',
    'DESCENT_NAME', Text);
  frmPopupMain.qryDescentList.Close;
end;

procedure TfrmEmpInfo.dxDBPopupEdit8InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryCurrencyList.Open;
  InitPopupControl('dxlcCurrencyList', frmPopupMain, sender, 2);
end;

procedure TfrmEmpInfo.dxDBPopupEdit8CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryCurrencyList, EmpInfoDM.qryEmpList,
    'CURRENCY_NO;CURRENCY_NAME', 'CURRENCY_NO;CURRENCY_NAME',
    'CURRENCY_NAME', Text);
  frmPopupMain.qryCurrencyList.Close;
end;

procedure TfrmEmpInfo.dxDBPopupEdit7InitPopup(Sender: TObject);
begin
  inherited;
   frmPopupMain.qryMarrialStatus.Open;
    InitPopupControl('dxlcMarrialStatus', frmPopupMain, sender, 2.5);
end;

procedure TfrmEmpInfo.dxDBPopupEdit7CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryMarrialStatus, EmpInfoDM.qryEmpList,
      'STATUS_ID;STATUS_NAME', 'MARRIAL_STATUS;MARRIAL_STATUS_NAME',
      'STATUS_NAME', Text);
    frmPopupMain.qryMarrialStatus.Close;
end;

procedure TfrmEmpInfo.acXuliTenExecute(Sender: TObject);
var hoten:TStringList;
   ho,tenlot,ten:String;
   i,c:integer;
begin
  inherited;
  if EmpInfoDM.qryEmpList.IsEmpty then exit;
  hoten:=TStringList.Create;
  hoten.Delimiter:=' ';
  EmpInfoDM.qryEmpList.DisableControls;
  EmpInfoDM.qryEmpList.First;
  while not EmpInfoDM.qryEmpList.Eof do
  begin
    hoten.DelimitedText:=Trim(UTF8Encode(EmpInfoDM.qryEmpListFIRST_NAME.Value));
    c:=hoten.Count;
    if c>1 then
    begin
      ho:=Trim(hoten.Strings[0]);
      ten:=Trim(hoten.Strings[hoten.Count-1]);
      tenlot:='';
      if c>2 then
      begin
        for i:=1 to c-2 do
          tenlot:=tenlot+' '+hoten.Strings[i];
      end;
      tenlot:=Trim(tenlot);
      if (ho<>'')and(ten<>'') then
      begin
        if not (EmpInfoDM.qryEmpList.State in [dsInsert,dsEdit]) then
           EmpInfoDM.qryEmpList.Edit;
        EmpInfoDM.qryEmpListLAST_NAME.Value:=UTF8Decode(ho);
        EmpInfoDM.qryEmpListMIDDLE_NAME.Value:=UTF8Decode(tenlot);
        EmpInfoDM.qryEmpListFIRST_NAME.Value:=UTF8Decode(ten);
        EmpInfoDM.qryEmpList.Post;
      end;
    end;
    EmpInfoDM.qryEmpList.Next;
  end;
  EmpInfoDM.qryEmpList.EnableControls;
end;

procedure TfrmEmpInfo.dxDBPopupEdit9InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryUserAccount.Open;
  InitPopupControl('dxlcUserAccount', frmPopupMain, sender, 2);
end;

procedure TfrmEmpInfo.dxDBPopupEdit9CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryUserAccount, EmpInfoDM.qryEmpList,
    'USERACCID;DISPLAYNAME;SUBSYSTEMID', 'USERACCID;USERACC_NAME;SUBSYSTEMID',
    'DISPLAYNAME', Text);
  frmPopupMain.qryUserAccount.Close;
end;

procedure TfrmEmpInfo.dxDBPopupEdit10InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryBaoHiem_TinhThanhPho.Open;
  InitPopupControl('dxlcBaoHiem_TinhThanhPho',frmPopupMain, sender, 2);
end;

procedure TfrmEmpInfo.dxDBPopupEdit10CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryBaoHiem_TinhThanhPho, EmpInfoDM.qryEmpList,
    'MA_TINH_THANHPHO;TEN_TINH_THANHPHO', 'MATINH_CAP_CMND;ISSUED_PLACE',
    'MA_TINH_THANHPHO', Text);
  frmPopupMain.qryBaoHiem_TinhThanhPho.Close;
end;

end.

