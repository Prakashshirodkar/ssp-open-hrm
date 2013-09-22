//******************************************************************//
//************** Create form by THUYPTP - 06/09/2009 ***************//
//******************************************************************//
unit BAOHIEM_DSPHSK_SauTNLDForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, dxDBTLCl, dxGrClms,
  ExtCtrls, ElPanel, ElSplit, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ElPgCtl,
  DB, IBODataset, ImgList, ActnList, ElBtnCtl, ElPopBtn, dxEdLib, dxEditor,
  DateTimeFrame;

type
  TfrmBAOHIEM_DSPHSK_SauTNLD = class(TfrmEditBase)
    dxlcMainItem2: TdxLayoutItem;
    frameDateTime1: TframeDateTime;
    dxlcMainItem3: TdxLayoutItem;
    dxSelectDept: TdxPopupEdit;
    dxlcMainItem4: TdxLayoutItem;
    dxViewChild: TdxCheckEdit;
    dxlcMainItem5: TdxLayoutItem;
    dximOption: TdxImageEdit;
    dxlcMainItem6: TdxLayoutItem;
    dximPhanLoai: TdxImageEdit;
    dxlcMainItem7: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxlcMainGroup1: TdxLayoutGroup;
    dxlcMainGroup2: TdxLayoutGroup;
    ActionList1: TActionList;
    acXemDS: TAction;
    ImageList1: TImageList;
    qrySoDangKyBHXH: TIBOQuery;
    qrySoDangKyBHXHEMPLOYEE_NO: TWideStringField;
    qrySoDangKyBHXHFULL_NAME: TWideStringField;
    qrySoDangKyBHXHMASO_BHXH: TWideStringField;
    qrySoDangKyBHXHTHANG_BDTG: TSmallintField;
    qrySoDangKyBHXHNAM_BDTG: TIntegerField;
    qrySoDangKyBHXHGIOI_TINH: TSmallintField;
    qrySoDangKyBHXHNGAY_SINH: TDateField;
    qrySoDangKyBHXHTEN_DAN_TOC: TWideStringField;
    qrySoDangKyBHXHDAN_TOC: TWideStringField;
    qrySoDangKyBHXHTEN_QUOC_TICH: TWideStringField;
    qrySoDangKyBHXHQUOC_TICH: TWideStringField;
    qrySoDangKyBHXHSO_CMND: TWideStringField;
    qrySoDangKyBHXHDIACHI_THUONGTRU: TWideStringField;
    qrySoDangKyBHXHCHUCVU_NGHENGHIEP: TWideStringField;
    qrySoDangKyBHXHNOI_SINH: TWideStringField;
    qrySoDangKyBHXHNOICAP_CMND: TWideStringField;
    qrySoDangKyBHXHMATINH_CAP_CMND: TWideStringField;
    qrySoDangKyBHXHNGAYCAP_CMND: TDateField;
    qrySoDangKyBHXHID_BAOHIEM_SODANGKY: TIntegerField;
    dsSoDangKyBHXH: TDataSource;
    dsChiTiet: TDataSource;
    qryChiTiet: TIBOQuery;
    qryChiTietNGHI_TUNGAY: TDateField;
    qryChiTietNGHI_DENNGAY: TDateField;
    qryChiTietSO_NGAYNGHI: TIntegerField;
    qryChiTietSO_NGAYNGHI_TAIGIADINH: TIntegerField;
    qryChiTietSO_NGAYNGHI_TAPTRUNG: TIntegerField;
    qryChiTietWHT_NAME: TWideStringField;
    qryChiTietTEN_VANBAN_DINHKEM: TWideStringField;
    qryChiTietVANBAN_DIKEM: TBlobField;
    qryChiTietGHI_CHU: TWideStringField;
    qryChiTietID_BAOHIEM_SODANGKY: TIntegerField;
    qryChiTietKEY_ID: TIntegerField;
    qryChiTietLOAI_DOITUONG: TWideStringField;
    qryTongHop: TIBOQuery;
    qryTongHopEMPLOYEE_NO: TWideStringField;
    qryTongHopFULL_NAME: TWideStringField;
    qryTongHopMASO_BHXH: TWideStringField;
    qryTongHopNGHI_TUNGAY: TDateField;
    qryTongHopNGHI_DENNGAY: TDateField;
    qryTongHopSO_NGAYNGHI_TAIGIADINH: TIntegerField;
    qryTongHopSO_NGAYNGHI_TAPTRUNG: TIntegerField;
    qryTongHopWHT_NAME: TWideStringField;
    qryTongHopGHI_CHU: TWideStringField;
    dsTongHop: TDataSource;
    dxlcMainItem8: TdxLayoutItem;
    pageMain: TElPageControl;
    tabChiTiet: TElTabSheet;
    gridSoDangKyBHXH: TdxDBGrid;
    gridSoDangKyBHXHEMPLOYEE_NO: TdxDBGridColumn;
    gridSoDangKyBHXHFULL_NAME: TdxDBGridColumn;
    gridSoDangKyBHXHMASO_BHXH: TdxDBGridColumn;
    gridSoDangKyBHXHID_BAOHIEM_SODANGKY: TdxDBGridColumn;
    ElSplitter1: TElSplitter;
    gridChiTiet: TdxDBGrid;
    gridChiTietNGHI_TUNGAY: TdxDBGridDateColumn;
    gridChiTietNGHI_DENNGAY: TdxDBGridDateColumn;
    gridChiTietSO_NGAYNGHI: TdxDBGridCalcColumn;
    gridChiTietSO_NGAYNGHI_TAIGIADINH: TdxDBGridCalcColumn;
    gridChiTietSO_NGAYNGHI_TAPTRUNG: TdxDBGridCalcColumn;
    gridChiTietWHT_NAME: TdxDBGridMRUColumn;
    gridChiTietTEN_VANBAN_DINHKEM: TdxDBGridButtonColumn;
    gridChiTietGHI_CHU: TdxDBGridColumn;
    tabTongHop: TElTabSheet;
    gridTongHop: TdxDBGrid;
    gridTongHopEMPLOYEE_NO: TdxDBGridColumn;
    gridTongHopFULL_NAME: TdxDBGridColumn;
    gridTongHopMASO_BHXH: TdxDBGridColumn;
    gridTongHopNGHI_TUNGAY: TdxDBGridDateColumn;
    gridTongHopNGHI_DENNGAY: TdxDBGridDateColumn;
    gridTongHopSO_NGAYNGHI_TAIGIADINH: TdxDBGridColumn;
    gridTongHopSO_NGAYNGHI_TAPTRUNG: TdxDBGridColumn;
    gridTongHopWHT_NAME: TdxDBGridColumn;
    gridTongHopGHI_CHU: TdxDBGridColumn;
    acDocDLChamCong: TAction;
    qryExecute: TIBOQuery;
    qryChiTietMUCDO_SUYGIAM_KHANANG_LD: TIBOFloatField;
    gridChiTietMUCDO_SUYGIAM_KHANANG_LD: TdxDBGridCalcColumn;
    procedure FormCreate(Sender: TObject);
    procedure acXemDSExecute(Sender: TObject);
    procedure dxSelectDeptInitPopup(Sender: TObject);
    procedure dxSelectDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectDeptChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridChiTietTEN_VANBAN_DINHKEMButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qryChiTietNGHI_TUNGAYChange(Sender: TField);
    procedure qryChiTietNGHI_DENNGAYChange(Sender: TField);
    procedure qryChiTietBeforePost(DataSet: TDataSet);
    procedure acDocDLChamCongExecute(Sender: TObject);
    procedure acDocDLChamCongUpdate(Sender: TObject);
  private
    { Private declarations }
    F_DEPT_NO : widestring;
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_DSPHSK_SauTNLD: TfrmBAOHIEM_DSPHSK_SauTNLD;

implementation

uses PopupMainForm, SSP_Library, MainDM;

{$R *.dfm}

procedure TfrmBAOHIEM_DSPHSK_SauTNLD.FormCreate(Sender: TObject);
begin
  dximOption.Tag := 1;
  dximOption.Descriptions.Add(Utf8Decode('Đang làm việc'));
  dximOption.Descriptions.Add(Utf8Decode('Đã thôi việc'));
  dximOption.Descriptions.Add(Utf8Decode('Tất cả'));
  dximOption.Values.Add('WORK');
  dximOption.Values.Add('OUT');
  dximOption.Values.Add('ALL');

  dximOption.Text := 'ALL';
  dximOption.Tag := 0;

  dximPhanLoai.Tag := 1;
  dximPhanLoai.Descriptions.Add(Utf8Decode('Đã có sổ BHXH'));
  dximPhanLoai.Descriptions.Add(Utf8Decode('chưa có sổ BHXH'));
  dximPhanLoai.Descriptions.Add(Utf8Decode('Tất cả'));
  dximPhanLoai.Values.Add('DA_COSO');
  dximPhanLoai.Values.Add('CHUA_COSO');
  dximPhanLoai.Values.Add('ALL');

  dximPhanLoai.Text := 'ALL';
  dximPhanLoai.Tag := 0;

  frameDateTime1.InitViewData;
  inherited;
  RegisterLookupControl(gridChiTietWHT_NAME, 'LOAI_DOITUONG','wht_name',
    'select wht_no, wht_name from hr_work_hour_type where la_ndsphsk_sau_tnld =1;');
  frameDateTime1.SetPeriod('NAM_NAY');
  acXemDS.Execute;
end;

procedure TfrmBAOHIEM_DSPHSK_SauTNLD.acXemDSExecute(Sender: TObject);
begin
  inherited;
  if qrySoDangKyBHXH.Active then qrySoDangKyBHXH.Close;
  qrySoDangKyBHXH.ParamByName('XEM_THEO_DONVI').Value := F_DEPT_NO;
  if dxViewChild.Checked then
    qrySoDangKyBHXH.ParamByName('XEM_CAPDUOI').Value := 1
  else
    qrySoDangKyBHXH.ParamByName('XEM_CAPDUOI').Value := 0;
  qrySoDangKyBHXH.ParamByName('XEM_TUYCHON_NGHIVIEC').Value := dximOption.Text;
  qrySoDangKyBHXH.ParamByName('XEM_PHANLOAI_COSO').Value := dximPhanLoai.Text;
  qrySoDangKyBHXH.Open;

  if qryChiTiet.Active then qryChiTiet.Close;
  qryChiTiet.ParamByName('TU_NGAY').Value := frameDateTime1.dxFromDate.Date;
  qryChiTiet.ParamByName('DEN_NGAY').Value := frameDateTime1.dxToDate.Date;
  qryChiTiet.Open;

  if qryTongHop.Active then qryTongHop.Close;
  qryTongHop.ParamByName('XEM_THEO_DONVI').Value := F_DEPT_NO;
  if dxViewChild.Checked then
    qryTongHop.ParamByName('XEM_CAPDUOI').Value := 1
  else
    qryTongHop.ParamByName('XEM_CAPDUOI').Value := 0;
  qryTongHop.ParamByName('XEM_TUYCHON_NGHIVIEC').Value := dximOption.Text;
  qryTongHop.ParamByName('XEM_PHANLOAI_COSO').Value := dximPhanLoai.Text;
  qryTongHop.ParamByName('TU_NGAY').Value := frameDateTime1.dxFromDate.Date;
  qryTongHop.ParamByName('DEN_NGAY').Value := frameDateTime1.dxToDate.Date;
  qryTongHop.Open;
end;

procedure TfrmBAOHIEM_DSPHSK_SauTNLD.dxSelectDeptInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmBAOHIEM_DSPHSK_SauTNLD.dxSelectDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryDeptListDEPT_NAME.Value;
    F_DEPT_NO := frmPopupMain.qryDeptListDEPT_NO.Value;
  end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmBAOHIEM_DSPHSK_SauTNLD.dxSelectDeptChange(Sender: TObject);
begin
  inherited;
  if Length(dxSelectDept.Text) = 0 then
    F_DEPT_NO := '';
end;

procedure TfrmBAOHIEM_DSPHSK_SauTNLD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qrySoDangKyBHXH.Close;
  qryChiTiet.close;
  qryTongHop.close;
end;

procedure TfrmBAOHIEM_DSPHSK_SauTNLD.gridChiTietTEN_VANBAN_DINHKEMButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  dmMain.DatasetLoadFile(sender,AbsoluteIndex,'TEN_VANBAN_DINHKEM','VANBAN_DIKEM');
end;

procedure TfrmBAOHIEM_DSPHSK_SauTNLD.qryChiTietNGHI_TUNGAYChange(
  Sender: TField);
begin
  inherited;
 if ((not qryChiTietNGHI_TUNGAY.IsNull) and (not qryChiTietNGHI_DENNGAY.IsNull)) then
    qryChiTietSO_NGAYNGHI.Value := qryChiTietNGHI_DENNGAY.AsVariant - qryChiTietNGHI_TUNGAY.AsVariant + 1;

end;

procedure TfrmBAOHIEM_DSPHSK_SauTNLD.qryChiTietNGHI_DENNGAYChange(
  Sender: TField);
begin
  inherited;
 if ((not qryChiTietNGHI_TUNGAY.IsNull) and (not qryChiTietNGHI_DENNGAY.IsNull)) then
    qryChiTietSO_NGAYNGHI.Value := qryChiTietNGHI_DENNGAY.AsVariant - qryChiTietNGHI_TUNGAY.AsVariant + 1;
end;

procedure TfrmBAOHIEM_DSPHSK_SauTNLD.qryChiTietBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  dmmain.DefOnBeforePost(DataSet);

  // Nghi den ngay phai >= nghi tu ngay
  if (qryChiTietNGHI_DENNGAY.Value < qryChiTietNGHI_TUNGAY.Value) then
  begin
    ShowMessageUnicode(130);
    Abort;
    Exit;
  end;
end;

procedure TfrmBAOHIEM_DSPHSK_SauTNLD.acDocDLChamCongExecute(
  Sender: TObject);
begin
  inherited;
  try
    qryExecute.SQL.Clear;
    qryExecute.SQL.Text := 'EXECUTE PROCEDURE HR_BAOHIEM_CAPNHAT_DS_SAUTNLD(:XEM_THEO_DONVI,:XEM_CAPDUOI,:XEM_TUNGAY,:XEM_DENNGAY,:USER_NAME);';
    qryExecute.ParamByName('XEM_THEO_DONVI').Value := F_DEPT_NO;
    if dxViewChild.Checked then
      qryExecute.ParamByName('XEM_CAPDUOI').Value := 1
    else
      qryExecute.ParamByName('XEM_CAPDUOI').Value := 0;
    qryExecute.ParamByName('XEM_TUNGAY').Value := frameDateTime1.dxFromDate.Date;
    qryExecute.ParamByName('XEM_DENNGAY').Value := frameDateTime1.dxToDate.Date;
    qryExecute.ParamByName('USER_NAME').Value := sysConfig.User;
    dmMain.ExecuteSQL(qryExecute);
    dmMain.CommitTransaction;
    ShowMessageUnicode(39);
    acXemDS.Execute;
  except
    dmMain.RollbackTransaction;
    ShowMessageUnicode(71);
  end;
end;

procedure TfrmBAOHIEM_DSPHSK_SauTNLD.acDocDLChamCongUpdate(
  Sender: TObject);
begin
  inherited;
  acDocDLChamCong.Enabled := (F_DEPT_NO <>'');  
end;

end.
