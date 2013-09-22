unit Luong_KhoaLuongForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr, DB,
  ImgList, IBODataset, ActnList, dxLayoutControl, ElBtnCtl, ElPopBtn,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, cxControls, dxDBTLCl, dxGrClms;

type
  TfrmLuong_KhoaLuong = class(TfrmBase)
    dxLayoutControl1: TdxLayoutControl;
    gridWagePlanLock: TdxDBGrid;
    pbMoKhoa: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    pbKhoa: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxlcKhoa: TdxLayoutItem;
    dxlcMoKhoa: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    ActionList1: TActionList;
    acInsert: TAction;
    acDelete: TAction;
    qryLuong_KhoaLuong: TIBOQuery;
    qryExecute: TIBOQuery;
    qryExecutePLAN_NO: TWideStringField;
    qryExecuteUSER_NAME: TWideStringField;
    qryExecuteLOCK_DATE: TDateField;
    dsLuong_KhoaLuong: TDataSource;
    qryLuong_KhoaLuongL_ID: TIntegerField;
    qryLuong_KhoaLuongTIEU_DE: TWideStringField;
    qryLuong_KhoaLuongNGAY_TAO: TDateField;
    qryLuong_KhoaLuongNGUOI_TAO: TWideStringField;
    qryLuong_KhoaLuongLOCK_DATE: TDateField;
    qryLuong_KhoaLuongUSER_NAME: TWideStringField;
    qryLuong_KhoaLuongTHANG: TIntegerField;
    qryLuong_KhoaLuongNAM: TIntegerField;
    qryLuong_KhoaLuongTHANG_NAME: TIntegerField;
    qryLuong_KhoaLuongPA_MA: TIntegerField;
    qryLuong_KhoaLuongGHI_CHU: TWideStringField;
    gridWagePlanLockL_ID: TdxDBGridColumn;
    gridWagePlanLockTIEU_DE: TdxDBGridColumn;
    gridWagePlanLockNGAY_TAO: TdxDBGridDateColumn;
    gridWagePlanLockNGUOI_TAO: TdxDBGridColumn;
    gridWagePlanLockLOCK_DATE: TdxDBGridDateColumn;
    gridWagePlanLockUSER_NAME: TdxDBGridColumn;
    gridWagePlanLockTHANG: TdxDBGridColumn;
    gridWagePlanLockNAM: TdxDBGridColumn;
    gridWagePlanLockTHANG_NAME: TdxDBGridColumn;
    gridWagePlanLockPA_MA: TdxDBGridColumn;
    gridWagePlanLockGHI_CHU: TdxDBGridColumn;
    qryLuong_KhoaLuongIS_LOCK: TSmallintField;
    gridWagePlanLockIS_LOCK: TdxDBGridImageColumn;
    procedure acInsertExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure qryLuong_KhoaLuongAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    isLockInsert,isLockDelete :Boolean;
  public
    { Public declarations }
  end;

var
  frmLuong_KhoaLuong: TfrmLuong_KhoaLuong;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmLuong_KhoaLuong.acInsertExecute(Sender: TObject);
begin
  inherited;
  if qryExecute.Active then
    qryExecute.Close;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text := 'INSERT INTO HR_LUONG_KHOALUONG (L_ID, LOCK_DATE, USER_NAME) VALUES (:L_ID, :LOCK_DATE, :USER_NAME);';
  qryExecute.Prepare;
  qryExecute.ParamByName('L_ID').Value := qryLuong_KhoaLuongL_ID.Value;
  qryExecute.ParamByName('user_name').Value := sysConfig.User;
  qryExecute.ParamByName('lock_date').Value := Now;
  dmMain.ExecuteSQL(qryExecute);
  if qryLuong_KhoaLuong.Active then
    qryLuong_KhoaLuong.Close;
  qryLuong_KhoaLuong.Open;
end; procedure TfrmLuong_KhoaLuong.acDeleteExecute(Sender: TObject);
begin
  inherited;
  if qryExecute.Active then
    qryExecute.Close;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text := 'delete from HR_LUONG_KHOALUONG where HR_LUONG_KHOALUONG.L_ID = :L_ID';
  qryExecute.Prepare;
  qryExecute.ParamByName('L_ID').Value := qryLuong_KhoaLuongL_ID.Value;
  dmMain.ExecuteSQL(qryExecute);
  if qryLuong_KhoaLuong.Active then
    qryLuong_KhoaLuong.Close;
  qryLuong_KhoaLuong.Open;
end;

 procedure TfrmLuong_KhoaLuong.qryLuong_KhoaLuongAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if qryLuong_KhoaLuongIS_LOCK.Value = 1 then
  begin
    dxlcKhoa.Enabled := false;
    if isLockDelete = true then
      dxlcMoKhoa.Enabled := true;
  end
  else
  begin
    if isLockInsert = true then
      dxlcKhoa.Enabled := true;
    dxlcMoKhoa.Enabled := false;
  end;
end;

procedure TfrmLuong_KhoaLuong.FormCreate(Sender: TObject);
begin
  inherited;
  isLockInsert := pbKhoa.Enabled;
  isLockDelete := pbMoKhoa.Enabled;
  if qryLuong_KhoaLuong.Active then
    qryLuong_KhoaLuong.Close;
  qryLuong_KhoaLuong.Open;
end;

end.
