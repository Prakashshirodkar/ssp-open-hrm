unit KhauTruThueKhacForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, ElBtnCtl, ElPopBtn, dxEditor, dxEdLib, ActnList, DB,
  IBODataset, dxDBTLCl, dxGrClms, dxGrClEx;

type
  TfrmKhauTruThueKhac = class(TfrmEditBase)
    dxlcMainGroup1: TdxLayoutGroup;
    dxThang: TdxSpinEdit;
    dxNam: TdxSpinEdit;
    ElPopupButton1: TElPopupButton;
    gridChiTiet: TdxDBGrid;
    dxlcMainItem2: TdxLayoutItem;
    dxlcMainItem3: TdxLayoutItem;
    dxlcMainItem4: TdxLayoutItem;
    dxlcMainItem5: TdxLayoutItem;
    ActionList1: TActionList;
    acLayDS: TAction;
    qryChiTiet: TIBOQuery;
    dsChiTiet: TDataSource;
    qryChiTietHO_TEN: TWideStringField;
    qryChiTietSO_CMND: TWideStringField;
    qryChiTietSO_HOCHIEU: TWideStringField;
    qryChiTietMASO_THUE: TWideStringField;
    qryChiTietTHUNHAP_CHIUTHUE: TIBOFloatField;
    qryChiTietPHANTRAM_KHAUTRU: TSmallintField;
    qryChiTietTHUE_PHAINOP: TIBOFloatField;
    qryChiTietGHI_CHU: TWideStringField;
    qryChiTietAT_MONTH: TSmallintField;
    qryChiTietAT_YEAR: TIntegerField;
    qryChiTietMA_NHANVIEN: TWideStringField;
    gridChiTietSO_CMND: TdxDBGridColumn;
    gridChiTietSO_HOCHIEU: TdxDBGridColumn;
    gridChiTietMASO_THUE: TdxDBGridColumn;
    gridChiTietGHI_CHU: TdxDBGridColumn;
    gridChiTietTHUNHAP_CHIUTHUE: TdxDBGridCalcColumn;
    gridChiTietTHUE_PHAINOP: TdxDBGridCalcColumn;
    gridChiTietPHANTRAM_KHAUTRU: TdxDBGridImageColumn;
    gridChiTietHO_TEN: TdxDBGridPopupColumn;
    qryChiTietSTT: TIntegerField;
    qryChiTietPERIOD_ID: TIntegerField;
    qrySTT: TIBOQuery;
    qrySTTSTT: TIntegerField;
    gridChiTietMA_NHANVIEN: TdxDBGridColumn;
    gridChiTietSTT: TdxDBGridColumn;
    qryChiTietMA_DONVI: TWideStringField;
    qryChiTietDEPT_NAME: TWideStringField;
    gridChiTietDEPT_NAME: TdxDBGridPopupColumn;
    procedure acLayDSExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryChiTietBeforePost(DataSet: TDataSet);
    procedure qryChiTietTHUNHAP_CHIUTHUEChange(Sender: TField);
    procedure qryChiTietPHANTRAM_KHAUTRUChange(Sender: TField);
    procedure gridChiTietHO_TENInitPopup(Sender: TObject);
    procedure gridChiTietHO_TENCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridChiTietDEPT_NAMEInitPopup(Sender: TObject);
    procedure gridChiTietDEPT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKhauTruThueKhac: TfrmKhauTruThueKhac;

implementation

uses DateUtils, MainDM, PopupMainForm, SSP_Library;

{$R *.dfm}

procedure TfrmKhauTruThueKhac.acLayDSExecute(Sender: TObject);
begin
  inherited;
  if qryChiTiet.Active then qryChiTiet.Close;
  qryChiTiet.ParamByName('AT_MONTH').Value := dxThang.IntValue;
  qryChiTiet.ParamByName('AT_YEAR').Value := dxNam.IntValue;
  qryChiTiet.Open;  
end;

procedure TfrmKhauTruThueKhac.FormCreate(Sender: TObject);
begin
  inherited;
  dxThang.IntValue :=  MonthOf(Today);
  dxNam.IntValue :=  YearOf(Today);
  acLayDS.Execute;  
end;

procedure TfrmKhauTruThueKhac.qryChiTietBeforePost(DataSet: TDataSet);
var
  period_id : integer;
  STT : integer;
begin
  inherited;

  qryChiTietAT_MONTH.Value := dxThang.IntValue;
  qryChiTietAT_YEAR.Value := dxNam.IntValue;

  period_id := (dxThang.IntValue -1 + dxNam.IntValue*12)*10;
  qryChiTietPERIOD_ID.Value := period_id;

  if qrySTT.Active then qrySTT.Close;
  qrySTT.ParamByName('period_id').Value := period_id;
  qrySTT.Open;
  if qrySTT.RecordCount =0 then
    qryChiTietSTT.Value := 1
  else
    qryChiTietSTT.Value := qrySTTSTT.Value + 1; 
  dmMain.DefOnBeforePost(DataSet);
end;

procedure TfrmKhauTruThueKhac.qryChiTietTHUNHAP_CHIUTHUEChange(
  Sender: TField);
begin
  inherited;
  qryChiTietTHUE_PHAINOP.Value := qryChiTietTHUNHAP_CHIUTHUE.Value * qryChiTietPHANTRAM_KHAUTRU.Value /100;
end;

procedure TfrmKhauTruThueKhac.qryChiTietPHANTRAM_KHAUTRUChange(
  Sender: TField);
begin
  inherited;
  qryChiTietTHUE_PHAINOP.Value := qryChiTietTHUNHAP_CHIUTHUE.Value * qryChiTietPHANTRAM_KHAUTRU.Value /100;
end;

procedure TfrmKhauTruThueKhac.gridChiTietHO_TENInitPopup(Sender: TObject);
begin
  inherited;
  //Edited by THUYPTP - 28/4/2009
  //frmPopupMain.qryEmpForSelect.Open;
  frmPopupMain.dximOptionChange(sender);
  //Het
  InitPopupControl('dxlcEmpForSelect',frmPopupMain,sender,2,gridChiTiet);
end;

procedure TfrmKhauTruThueKhac.gridChiTietHO_TENCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryEmpForSelect,qryChiTiet,
               'FULL_NAME;ID_CARD_NO;PASSPORT;MASO_THUE_CANHAN;EMPLOYEE_NO',
               'HO_TEN;SO_CMND;SO_HOCHIEU;MASO_THUE;MA_NHANVIEN',
               'FULL_NAME',Text);
  frmPopupMain.qryEmpForSelect.Close;
end;

procedure TfrmKhauTruThueKhac.gridChiTietDEPT_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList',frmPopupMain,sender,2,gridChiTiet);
end;

procedure TfrmKhauTruThueKhac.gridChiTietDEPT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryDeptList,qryChiTiet,
               'DEPT_NO;DEPT_NAME',
               'MA_DONVI;DEPT_NAME',
               'DEPT_NAME',Text);
  frmPopupMain.qryDeptList.Close;
end;

end.
