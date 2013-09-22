//******************************************************************//
//************** Create form by THUYPTP - 06/09/2009 ***************//
//******************************************************************//
unit BAOHIEM_NghiOmForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, DateTimeFrame, ElBtnCtl,
  ElPopBtn, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBTLCl, dxGrClms,
  ExtCtrls, ElPanel, ElSplit, dxTL, dxDBCtrl, dxDBGrid, ElPgCtl, DB,
  IBODataset, ImgList, ActnList;

type
  TfrmBAOHIEM_NghiOm = class(TfrmEditBase)
    dxlcMainItem2: TdxLayoutItem;
    dxSelectDept: TdxPopupEdit;
    dxlcMainItem3: TdxLayoutItem;
    dxViewChild: TdxCheckEdit;
    dxlcMainItem4: TdxLayoutItem;
    dximOption: TdxImageEdit;
    dxlcMainItem5: TdxLayoutItem;
    dximPhanLoai: TdxImageEdit;
    dxlcMainItem6: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxlcMainGroup1: TdxLayoutGroup;
    dxlcMainItem7: TdxLayoutItem;
    frameDateTime1: TframeDateTime;
    dxlcMainGroup3: TdxLayoutGroup;
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
    gridChiTietTEN_VANBAN_DIKEM: TdxDBGridButtonColumn;
    gridChiTietGHI_CHU: TdxDBGridColumn;
    tabTongHop: TElTabSheet;
    gridTongHop: TdxDBGrid;
    gridTongHopEMPLOYEE_NO: TdxDBGridColumn;
    gridTongHopFULL_NAME: TdxDBGridColumn;
    gridTongHopMASO_BHXH: TdxDBGridColumn;
    gridTongHopNGHI_TUNGAY: TdxDBGridDateColumn;
    gridTongHopNGHI_DENNGAY: TdxDBGridDateColumn;
    gridTongHopGHI_CHU: TdxDBGridColumn;
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
    qryChiTiet: TIBOQuery;
    dsChiTiet: TDataSource;
    qryTongHop: TIBOQuery;
    qryTongHopEMPLOYEE_NO: TWideStringField;
    qryTongHopFULL_NAME: TWideStringField;
    qryTongHopMASO_BHXH: TWideStringField;
    qryTongHopNGHI_TUNGAY: TDateField;
    qryTongHopNGHI_DENNGAY: TDateField;
    qryTongHopGHI_CHU: TWideStringField;
    dsTongHop: TDataSource;
    qryChiTietKEY_ID: TIntegerField;
    qryChiTietID_BAOHIEM_SODANGKY: TIntegerField;
    qryChiTietNGHI_TUNGAY: TDateField;
    qryChiTietNGHI_DENNGAY: TDateField;
    qryChiTietTINHTRANG_SUCKHOE: TWideStringField;
    qryChiTietTEN_TINHTRANG: TWideStringField;
    qryChiTietDIACHI_DIEUTRI: TWideStringField;
    qryChiTietYTE_XACNHAN: TSmallintField;
    qryChiTietCHI_PHI: TIBOFloatField;
    qryChiTietTEN_VANBAN_DIKEM: TWideStringField;
    qryChiTietVANBAN_DIKEM: TBlobField;
    qryChiTietGHI_CHU: TWideStringField;
    gridChiTietDIACHI_DIEUTRI: TdxDBGridColumn;
    gridChiTietYTE_XACNHAN: TdxDBGridCheckColumn;
    qryChiTietLOAI_DOITUONG: TWideStringField;
    qryChiTietWHT_NAME: TWideStringField;
    qryChiTietCHE_DO: TIBOFloatField;
    gridChiTietWHT_NAME: TdxDBGridMRUColumn;
    gridChiTietTEN_TINHTRANG: TdxDBGridMRUColumn;
    gridChiTietCHI_PHI: TdxDBGridCalcColumn;
    qryTongHopTEN_TINHTRANG: TWideStringField;
    qryTongHopDIACHI_DIEUTRI: TWideStringField;
    qryTongHopYTE_XACNHAN: TSmallintField;
    qryTongHopCHI_PHI: TIBOFloatField;
    qryTongHopWHT_NAME: TWideStringField;
    qryTongHopCHE_DO: TIBOFloatField;
    gridTongHopWHT_NAME: TdxDBGridColumn;
    gridTongHopTEN_TINHTRANG: TdxDBGridColumn;
    gridTongHopDIACHI_DIEUTRI: TdxDBGridColumn;
    gridTongHopCHI_PHI: TdxDBGridColumn;
    gridTongHopYTE_XACNHAN: TdxDBGridCheckColumn;
    acDocDLChamCong: TAction;
    qryExecute: TIBOQuery;
    gridChiTietCHE_DO: TdxDBGridCalcColumn;
    gridTongHopCHE_DO: TdxDBGridCalcColumn;
    procedure FormCreate(Sender: TObject);
    procedure acXemDSExecute(Sender: TObject);
    procedure dxSelectDeptInitPopup(Sender: TObject);
    procedure dxSelectDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectDeptChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridChiTietTEN_VANBAN_DIKEMButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
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
  frmBAOHIEM_NghiOm: TfrmBAOHIEM_NghiOm;

implementation

uses PopupMainForm, SSP_Library, MainDM, BaseFrm, BHXH_TTSuckhoeForm;

{$R *.dfm}

procedure TfrmBAOHIEM_NghiOm.FormCreate(Sender: TObject);
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
    'select wht_no, wht_name from hr_work_hour_type where la_loaicong_om =1;');
  RegisterLookupControl(gridChiTietTEN_TINHTRANG,'TINHTRANG_SUCKHOE','ten_tinhtrang',
    'select ma_tinhtrang, ten_tinhtrang from hr_bhxh_tt_suckhoe;', TfrmBHXH_TTSuckhoe);
  frameDateTime1.SetPeriod('NAM_NAY');
  acXemDS.Execute;
end;

procedure TfrmBAOHIEM_NghiOm.acXemDSExecute(Sender: TObject);
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

procedure TfrmBAOHIEM_NghiOm.dxSelectDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmBAOHIEM_NghiOm.dxSelectDeptCloseUp(Sender: TObject;
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

procedure TfrmBAOHIEM_NghiOm.dxSelectDeptChange(Sender: TObject);
begin
  inherited;
 if Length(dxSelectDept.Text) = 0 then
    F_DEPT_NO := '';
end;

procedure TfrmBAOHIEM_NghiOm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qrySoDangKyBHXH.Close;
  qryChiTiet.close;
  qryTongHop.close;
end;

procedure TfrmBAOHIEM_NghiOm.gridChiTietTEN_VANBAN_DIKEMButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  dmMain.DatasetLoadFile(sender,AbsoluteIndex,'TEN_VANBAN_DIKEM','VANBAN_DIKEM');
end;

procedure TfrmBAOHIEM_NghiOm.qryChiTietBeforePost(DataSet: TDataSet);
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

procedure TfrmBAOHIEM_NghiOm.acDocDLChamCongExecute(Sender: TObject);
begin
  inherited;
  try
    qryExecute.SQL.Clear;
    qryExecute.SQL.Text := 'EXECUTE PROCEDURE HR_BAOHIEM_CAPNHAT_NGHIOM(:XEM_THEO_DONVI,:XEM_CAPDUOI,:XEM_TUNGAY,:XEM_DENNGAY,:USER_NAME);';
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

procedure TfrmBAOHIEM_NghiOm.acDocDLChamCongUpdate(Sender: TObject);
begin
  inherited;
  acDocDLChamCong.Enabled := (F_DEPT_NO <>'');  
end;

end.
