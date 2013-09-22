//******************************************************************//
//************** Create form by THUYPTP - 05/09/2009 ***************//
//******************************************************************//
unit BAOHIEM_TaoBangDuLieuForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  ActnList, DBActns, DB, IBODataset, dxEdLib, dxDBELib, dxCntner, dxEditor,
  ElBtnCtl, ElPopBtn, ExtCtrls, dxLayoutControl, dxTL, dxDBCtrl, dxDBGrid,
  cxControls, jpeg;

type
  TfrmBAOHIEM_TaoBangDuLieu = class(TfrmBase)
    dxlcMauBaoHiem: TdxLayoutControl;
    gridMauBHXH: TdxDBGrid;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1: TdxLayoutControl;
    dximgLogo: TImage;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    dxMauBaoHiem: TdxDBPopupEdit;
    dxNam: TdxDBSpinEdit;
    dxThang: TdxDBSpinEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBMemo1: TdxDBMemo;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    qryDuLieuThang: TIBOQuery;
    dsDuLieuThang: TDataSource;
    ActionList1: TActionList;
    acDongy: TDataSetPost;
    acDong: TAction;
    qryMauBHXH: TIBOQuery;
    dsMauBHXH: TDataSource;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDot: TdxDBSpinEdit;
    qryDuLieuThangTHANG_ID: TIntegerField;
    qryDuLieuThangTHANG: TIntegerField;
    qryDuLieuThangNAM: TIntegerField;
    qryDuLieuThangTHANG_NAM: TIntegerField;
    qryDuLieuThangDOT: TIntegerField;
    qryDuLieuThangMAU_ID: TIntegerField;
    qryDuLieuThangMAU_KYHIEU: TWideStringField;
    qryDuLieuThangMAU_TEN: TWideStringField;
    qryDuLieuThangTIEU_DE: TWideStringField;
    qryDuLieuThangNGUOI_TAO: TWideStringField;
    qryDuLieuThangDISPLAYNAME: TWideStringField;
    qryDuLieuThangNGAY_TAO: TDateField;
    qryDuLieuThangGHI_CHU: TWideStringField;
    qryMauBHXHKEY_ID: TIntegerField;
    qryMauBHXHMAU_KYHIEU: TWideStringField;
    qryMauBHXHMAU_TEN: TWideStringField;
    gridMauBHXHMAU_KYHIEU: TdxDBGridColumn;
    gridMauBHXHMAU_TEN: TdxDBGridColumn;
    procedure acDongyUpdate(Sender: TObject);
    procedure acDongyExecute(Sender: TObject);
    procedure acDongExecute(Sender: TObject);
    procedure qryDuLieuThangNewRecord(DataSet: TDataSet);
    procedure gridMauBHXHDblClick(Sender: TObject);
    procedure dxMauBaoHiemInitPopup(Sender: TObject);
    procedure dxMauBaoHiemCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryDuLieuThangMAU_TENChange(Sender: TField);
    procedure qryDuLieuThangBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner:TComponent;THANG_ID:integer=-1);
  end;

var
  frmBAOHIEM_TaoBangDuLieu: TfrmBAOHIEM_TaoBangDuLieu;

implementation


uses MainDM,DateUtils, PopupBaoHiemForm, SSP_Library;

{$R *.dfm}

constructor TfrmBAOHIEM_TaoBangDuLieu.Create(AOwner:TComponent;THANG_ID:integer);
begin
  inherited Create(AOWner);
  qryDuLieuThang.ParamByName('THANG_ID').Value := THANG_ID;
  qryDuLieuThang.Open;
  if not qryDuLieuThang.IsEmpty then
  begin
    dxMauBaoHiem.Enabled := false;
    dxDot.Enabled:=false;
    dxThang.Enabled:=false;
    dxNam.Enabled:=false;
  end
end;

procedure TfrmBAOHIEM_TaoBangDuLieu.acDongyUpdate(Sender: TObject);
begin
  inherited;
  acDongy.Enabled := (qryDuLieuThang.State in [dsEdit, dsInsert]);
end;

procedure TfrmBAOHIEM_TaoBangDuLieu.acDongyExecute(Sender: TObject);
begin
  inherited;
  try
    qryDuLieuThang.Post;
    if not( qryDuLieuThang.State in [dsInsert,dsEdit]) then
      ModalResult:=mrOk;
  except
  end;
end;
procedure TfrmBAOHIEM_TaoBangDuLieu.acDongExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;


procedure TfrmBAOHIEM_TaoBangDuLieu.qryDuLieuThangNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  qryDuLieuThangDOT.Value := 1;
  qryDuLieuThangTHANG.Value:=MonthOf(Now);
  qryDuLieuThangNAM.Value:=YearOf(Now);
  qryDuLieuThangNGUOI_TAO.Value:=sysConfig.User;
  qryDuLieuThangDISPLAYNAME.Value:=sysConfig.Username;
  dxMauBaoHiem.SetFocus;
end;

procedure TfrmBAOHIEM_TaoBangDuLieu.gridMauBHXHDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self, true, sender);
end;

procedure TfrmBAOHIEM_TaoBangDuLieu.dxMauBaoHiemInitPopup(Sender: TObject);
begin
  inherited;
  qryMauBHXH.Open;
  InitPopupControl('dxlcMauBaoHiem',self,sender,2);
end;

procedure TfrmBAOHIEM_TaoBangDuLieu.dxMauBaoHiemCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,qryMauBHXH,qryDuLieuThang,
                 'KEY_ID;MAU_KYHIEU;MAU_TEN',
                 'MAU_ID;MAU_KYHIEU;MAU_TEN',
                 'MAU_TEN',Text);
  qryMauBHXH.Close;
end;

procedure TfrmBAOHIEM_TaoBangDuLieu.qryDuLieuThangMAU_TENChange(
  Sender: TField);
begin
  inherited;
  if qryDuLieuThangTIEU_DE.IsNull THEN
    qryDuLieuThangTIEU_DE.Value:=qryDuLieuThangMAU_TEN.Value;
end; procedure TfrmBAOHIEM_TaoBangDuLieu.qryDuLieuThangBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if qryDuLieuThangMAU_ID.IsNull then
  begin
    ShowMessageUnicode(120); 
    abort;
  end;
  qryDuLieuThangTHANG_NAM.Value:=(qryDuLieuThangTHANG.Value-1 +12*qryDuLieuThangNAM.Value)*10 + qryDuLieuThangDOT.Value ;
  dmMain.DefOnBeforePost(Dataset);
end;



end.
