unit Luong_ChitietBangForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, dxExEdtr, dxfProgressBar, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, dxLayoutControl, dxEdLib, dxDBELib, ElBtnCtl, ElPopBtn,
  dxEditor, ExtCtrls, StdCtrls, ElCLabel, ElLabel, cxControls, ElPgCtl,
  ElCaption, ElXPThemedControl, ElStatBar, DB, IBODataset, ActnList,
  DBActns;

type
  TfrmLuong_ChitietBang = class(TfrmBase)
    dxLayoutControl1: TdxLayoutControl;
    dximgLogo: TImage;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    qryBangluong: TIBOQuery;
    dsBangluong: TDataSource;
    dxPhuonganLuong: TdxDBPopupEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    qryBangluongL_ID: TIntegerField;
    qryBangluongTHANG: TIntegerField;
    qryBangluongNAM: TIntegerField;
    qryBangluongTHANG_NAM: TIntegerField;
    qryBangluongPA_MA: TIntegerField;
    qryBangluongPA_KYHIEU: TWideStringField;
    qryBangluongPA_TEN: TWideStringField;
    qryBangluongTIEU_DE: TWideStringField;
    qryBangluongNGUOI_TAO: TWideStringField;
    qryBangluongDISPLAYNAME: TWideStringField;
    qryBangluongNGAY_TAO: TDateField;
    dxNam: TdxDBSpinEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxThang: TdxDBSpinEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxDBDateEdit1: TdxDBDateEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    qryBangluongGHI_CHU: TWideStringField;
    dxDBMemo1: TdxDBMemo;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    ActionList1: TActionList;
    acDongy: TDataSetPost;
    acDong: TAction;
    dxlcPhuonganGroup_Root: TdxLayoutGroup;
    dxlcPhuongan: TdxLayoutControl;
    gridPhuongan: TdxDBGrid;
    dxlcPhuonganItem1: TdxLayoutItem;
    qryPhuongan: TIBOQuery;
    dsPhuongan: TDataSource;
    qryPhuonganKEY_ID: TIntegerField;
    qryPhuonganPA_KYHIEU: TWideStringField;
    qryPhuonganPA_TEN: TWideStringField;
    gridPhuonganPA_KYHIEU: TdxDBGridColumn;
    gridPhuonganPA_TEN: TdxDBGridColumn;
    qryBangluongDOT: TIntegerField;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxDBSpinEdit1: TdxDBSpinEdit;
    procedure acDongyUpdate(Sender: TObject);
    procedure acDongyExecute(Sender: TObject);
    procedure acDongExecute(Sender: TObject);
    procedure qryBangluongNewRecord(DataSet: TDataSet);
    procedure gridPhuonganDblClick(Sender: TObject);
    procedure dxPhuonganLuongInitPopup(Sender: TObject);
    procedure dxPhuonganLuongCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryBangluongPA_TENChange(Sender: TField);
    procedure qryBangluongBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner:TComponent;L_ID:integer=-1);
  end;

var
  frmLuong_ChitietBang: TfrmLuong_ChitietBang;

implementation

uses MainDM,DateUtils, PopupMainForm, SSP_Library;

{$R *.dfm}
constructor TfrmLuong_ChitietBang.Create(AOwner:TComponent;L_ID:integer);
begin
    inherited Create(AOWner);
  qryBangluong.ParamByName('L_ID').Value := L_ID;
  qryBangluong.Open;
  if not qryBangluong.IsEmpty then
  begin
    dxPhuonganLuong.Enabled := false;
    dxThang.Enabled:=false;
    dxNam.Enabled:=false;
  end
end;
procedure TfrmLuong_ChitietBang.acDongyUpdate(Sender: TObject);
begin
  inherited;
  acDongy.Enabled := (qryBangluong.State in [dsEdit, dsInsert]);
end;

procedure TfrmLuong_ChitietBang.acDongyExecute(Sender: TObject);
begin
  inherited;
  try
    qryBangluong.Post;
    if not( qryBangluong.State in [dsInsert,dsEdit]) then
      ModalResult:=mrOk;
  except
  end;
end;

procedure TfrmLuong_ChitietBang.acDongExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;

procedure TfrmLuong_ChitietBang.qryBangluongNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryBangluongDOT.Value:= 1; 
  qryBangluongTHANG.Value:=MonthOf(Now);
  qryBangluongNAM.Value:=YearOf(Now);
  qryBangluongNGUOI_TAO.Value:=sysConfig.User;
  qryBangluongDISPLAYNAME.Value:=sysConfig.Username;
  dxPhuonganLuong.SetFocus;
end;

procedure TfrmLuong_ChitietBang.gridPhuonganDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self, true, sender);
end;

procedure TfrmLuong_ChitietBang.dxPhuonganLuongInitPopup(Sender: TObject);
begin
  inherited;
  qryPhuongan.Open;
  InitPopupControl('dxlcPhuongan',self,sender,2);

end;

procedure TfrmLuong_ChitietBang.dxPhuonganLuongCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,qryPhuongan,qryBangluong,
                 'KEY_ID;PA_KYHIEU;PA_TEN',
                 'PA_MA;PA_KYHIEU;PA_TEN',
                 'PA_TEN',Text);
  qryPhuongan.Close;
end;

procedure TfrmLuong_ChitietBang.qryBangluongPA_TENChange(Sender: TField);
begin
  inherited;
  if qryBangluongTIEU_DE.IsNull THEN
    QRYBangluongTIEU_DE.Value:=qryBangluongPA_TEN.Value;
end;

procedure TfrmLuong_ChitietBang.qryBangluongBeforePost(DataSet: TDataSet);
begin
  inherited;
  //Added by THUYPTP - 17/04/2009
  if qryBangluongPA_MA.IsNull then
  begin
    ShowMessageUnicode(108); 
    abort;
  end;
  //Het
  qryBangluongTHANG_NAM.Value:=(qryBangluongTHANG.Value-1 +12*qryBangluongNAM.Value) * 10 + qryBangluongDOT.Value;
  dmMain.DefOnBeforePost(Dataset);
end;

end.
