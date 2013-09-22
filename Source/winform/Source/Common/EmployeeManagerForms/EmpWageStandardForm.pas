unit EmpWageStandardForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ElPgCtl,
  ImgList, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, ElPanel,
  ElSplit, dxDBTLCl, dxGrClms, ActnList, dxGrClEx;

type
  TfrmEmpWageStandard = class(TfrmBase)
    pageMain: TElPageControl;
    ImageList1: TImageList;
    tabMain: TElTabSheet;
    gridWageStandard: TdxDBGrid;
    gridWageStandardCAREER_NAME: TdxDBGridColumn;
    gridWageStandardWAGE_LEVEL: TdxDBGridColumn;
    gridWageStandardWAGE_COEFF: TdxDBGridColumn;
    gridWageStandardAPPLY_MONTH: TdxDBGridColumn;
    gridWageStandardAPPLY_YEAR: TdxDBGridColumn;
    gridWageStandardAPPLY_PERIOD: TdxDBGridColumn;
    ElSplitter1: TElSplitter;
    tabThaydoiLuongHDQD: TElTabSheet;
    gridHesoQD_HD: TdxDBGrid;
    gridHesoQD_HDNGAY_APDUNG: TdxDBGridDateColumn;
    gridHesoQD_HDLOAI_CONGVAN: TdxDBGridImageColumn;
    gridHesoQD_HDTEN_CONGVAN: TdxDBGridColumn;
    gridHesoQD_HDMA_CONGVAN: TdxDBGridColumn;
    ActionList1: TActionList;
    acTaoGrid: TAction;
    acHuyGrid: TAction;
    acDetail: TAction;
    acDetailBHXH: TAction;
    pageBottom: TElPageControl;
    tabQT_PhieuKCB: TElTabSheet;
    gridQT_ThayDoiPhieuKCB: TdxDBGrid;
    gridQT_ThayDoiPhieuKCBSOPHIEU_KCB: TdxDBGridColumn;
    gridQT_ThayDoiPhieuKCBTEN_BENHVIEN: TdxDBGridPopupColumn;
    gridQT_ThayDoiPhieuKCBTEN_TINH_THANHPHO: TdxDBGridColumn;
    gridQT_ThayDoiPhieuKCBDANGKY_TUNGAY: TdxDBGridDateColumn;
    gridQT_ThayDoiPhieuKCBDANGKY_DENNGAY: TdxDBGridDateColumn;
    gridQT_ThayDoiPhieuKCBTINH_TRANG: TdxDBGridImageColumn;
    gridQT_ThayDoiPhieuKCBNGAY_TRATHE: TdxDBGridDateColumn;
    tabQT_DongHienTai: TElTabSheet;
    gridQT_DongHienTai: TdxDBGrid;
    gridQT_DongHienTaiTU_THANG: TdxDBGridSpinColumn;
    gridQT_DongHienTaiTU_NAM: TdxDBGridSpinColumn;
    gridQT_DongHienTaiTIEN_LUONG: TdxDBGridCalcColumn;
    gridQT_DongHienTaiPHU_CAP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTILE_BHXH_NLD_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTT_BHXH_NLD_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTILE_BHYT_NLD_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTT_BHYT_NLD_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTILE_BHTN_NLD_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTT_BHTN_NLD_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTILE_BHXH_DN_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTILE_NLD_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTT_BHXH_DN_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTILE_BHYT_DN_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTT_BHYT_DN_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTILE_BHTN_DN_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTT_BHTN_DN_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTILE_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTILE_DN_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTIENNOP_BAOHIEM: TdxDBGridCalcColumn;
    gridQT_DongHienTaiGHI_CHU: TdxDBGridColumn;
    tabQT_DongTruocDay: TElTabSheet;
    gridQT_DongTruocDay: TdxDBGrid;
    dxDBGridSpinColumn1: TdxDBGridSpinColumn;
    dxDBGridSpinColumn2: TdxDBGridSpinColumn;
    dxDBGridCalcColumn1: TdxDBGridCalcColumn;
    dxDBGridCalcColumn2: TdxDBGridCalcColumn;
    dxDBGridCalcColumn3: TdxDBGridCalcColumn;
    dxDBGridCalcColumn4: TdxDBGridCalcColumn;
    dxDBGridCalcColumn5: TdxDBGridCalcColumn;
    dxDBGridCalcColumn6: TdxDBGridCalcColumn;
    dxDBGridCalcColumn7: TdxDBGridCalcColumn;
    dxDBGridCalcColumn8: TdxDBGridCalcColumn;
    dxDBGridCalcColumn9: TdxDBGridCalcColumn;
    dxDBGridCalcColumn10: TdxDBGridCalcColumn;
    dxDBGridCalcColumn11: TdxDBGridCalcColumn;
    dxDBGridCalcColumn12: TdxDBGridCalcColumn;
    dxDBGridCalcColumn13: TdxDBGridCalcColumn;
    dxDBGridCalcColumn14: TdxDBGridCalcColumn;
    dxDBGridCalcColumn15: TdxDBGridCalcColumn;
    dxDBGridCalcColumn16: TdxDBGridCalcColumn;
    dxDBGridCalcColumn17: TdxDBGridCalcColumn;
    dxDBGridCalcColumn18: TdxDBGridCalcColumn;
    dxDBGridColumn1: TdxDBGridColumn;
    gridWageStandardCHANGE_NO: TdxDBGridColumn;
    tabThayDoiLuognChucDanh: TElTabSheet;
    gridWageCompany: TdxDBGrid;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    dxDBGridColumn5: TdxDBGridColumn;
    dxDBGridColumn6: TdxDBGridColumn;
    dxDBGridColumn7: TdxDBGridColumn;
    dxDBGridColumn8: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acTaoGridExecute(Sender: TObject);
    procedure acHuyGridExecute(Sender: TObject);
    procedure acDetailUpdate(Sender: TObject);
    procedure acDetailExecute(Sender: TObject);
    procedure acDetailBHXHUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpWageStandard: TfrmEmpWageStandard;

implementation

uses EmpInfoDataModule, DB, Math, DecisionDataModule, ContractDataModule,
  MainDM;

{$R *.dfm}

procedure TfrmEmpWageStandard.FormCreate(Sender: TObject);
begin
  inherited;
  pageMain.ActivePageIndex := 0;
  if not EmpInfoDM.qryEmpWageStandard.Active then
    EmpInfoDM.qryEmpWageStandard.Open;
  if not EmpInfoDM.qryEmpWageCompany.Active then
    EmpInfoDM.qryEmpWageCompany.Open;
  if not EmpInfoDM.qryQT_ThayDoiPhieuKCB.Active then
    EmpInfoDM.qryQT_ThayDoiPhieuKCB.Open;
  if not EmpInfoDM.qryQT_DongHienTai.Active then
    EmpInfoDM.qryQT_DongHienTai.Open;
  if not EmpInfoDM.qryQT_DongTruocDay.Active then
    EmpInfoDM.qryQT_DongTruocDay.Open;
  acTaoGrid.Execute;
end;

procedure TfrmEmpWageStandard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  acHuyGrid.Execute;
  EmpInfoDM.qryEmpWageStandard.Close;
  EmpInfoDM.qryEmpWageCompany.Close;
  EmpInfoDM.qryQT_ThayDoiPhieuKCB.Close;
  EmpInfoDM.qryQT_DongHienTai.Close;
  EmpInfoDM.qryQT_DongTruocDay.Close;
end;

procedure TfrmEmpWageStandard.acTaoGridExecute(Sender: TObject);
var
  col: TdxDBTreeListColumn;
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if EmpInfoDM.qryDSHesoHD_QD.Active=false then
  begin
    ShowMessage('qryDSHesoHD_QD is not opened');
    Screen.Cursor:=crDefault;
    Exit;
  end;

  if EmpInfoDM.qryDSHesoHD_QD.IsEmpty then
  begin
    Screen.Cursor:=crDefault;
    exit;
  end;

  EmpInfoDM.qryDSHesoHD_QD.First;
  gridHesoQD_HD.BeginUpdate;
  while not EmpInfoDM.qryDSHesoHD_QD.Eof do
  begin
      // =========tao field cho mem===========
    col := gridHesoQD_HD.CreateColumn(TdxDBGridColumn);
    col.Name := gridHesoQD_HD.Name + EmpInfoDM.qryDSHesoHD_QDPARAM_NO.AsString;
    col.FieldName := EmpInfoDM.qryDSHesoHD_QDPARAM_NO.AsString;
    col.Width := 80;
    col.HeaderAlignment := taCenter;
    col.DisableCustomizing := true;
    col.Caption := EmpInfoDM.qryDSHesoHD_QDPARAM_NAME.Value;
    col.SummaryFooterType := cstSum;

    EmpInfoDM.qryDSHesoHD_QD.Next;
  end;
  gridHesoQD_HD.EndUpdate;
  EmpInfoDM.acRefreshMemHesoHD_QD.execute;
  Screen.Cursor := crDefault;
end;

procedure TfrmEmpWageStandard.acHuyGridExecute(Sender: TObject);
var i:integer;
begin
  inherited;
  gridHesoQD_HD.BeginUpdate;
  for i := gridHesoQD_HD.ColumnCount - 1 downto 4 do
        gridHesoQD_HD.Columns[i].Free;
  gridHesoQD_HD.EndUpdate;      
end;

procedure TfrmEmpWageStandard.acDetailUpdate(Sender: TObject);
begin
  inherited;
  acDetail.Enabled:=not EmpInfoDM.memHesoQD_HD.IsEmpty;
end;

procedure TfrmEmpWageStandard.acDetailExecute(Sender: TObject);
var bookmark:TBookmark;
begin
  inherited;
  bookmark:=EmpInfoDM.memHesoQD_HD.GetBookmark;
  If EmpInfoDM.memHesoQD_HDLOAI_CONGVAN.Value='DECISION' then
    DecisionDM.ViewDecision(EmpInfoDM.memHesoQD_HDMA_CONGVAN.Value)
  else
  if EmpInfoDM.memHesoQD_HDLOAI_CONGVAN.Value='CONTRACT' then
    ContractDM.ViewContract(EmpInfoDM.memHesoQD_HDMA_CONGVAN.Value)
  else
    ShowMessageUnicode(43);
  EmpInfoDM.acRefreshMemHesoHD_QD.Execute;
  EmpInfoDM.memHesoQD_HD.GotoBookmark(bookmark);
end;

procedure TfrmEmpWageStandard.acDetailBHXHUpdate(Sender: TObject);
begin
  inherited;
//  acDetailBHXH.Enabled:=not EmpInfoDM.qryLuongBHXH.IsEmpty;
end;

end.

