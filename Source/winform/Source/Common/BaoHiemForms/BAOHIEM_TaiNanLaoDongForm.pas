//******************************************************************//
//************** Create form by THUYPTP - 06/09/2009 ***************//
//******************************************************************//
unit BAOHIEM_TaiNanLaoDongForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, ElBtnCtl, ElPopBtn, ImgList,
  ActnList, dxExEdtr, dxEdLib, dxCntner, dxEditor, DateTimeFrame, ExtCtrls,
  ElPanel, ElSplit, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, DB,
  IBODataset, ElPgCtl, dxDBELib, dxGrClEx;

type
  TfrmBAOHIEM_TaiNanLaoDong = class(TfrmEditBase)
    dxlcMainItem2: TdxLayoutItem;
    frameDateTime1: TframeDateTime;
    dxlcMainItem3: TdxLayoutItem;
    dxSelectDept: TdxPopupEdit;
    dxlcMainItem4: TdxLayoutItem;
    dxViewChild: TdxCheckEdit;
    dxlcMainGroup1: TdxLayoutGroup;
    dxlcMainGroup2: TdxLayoutGroup;
    ActionList1: TActionList;
    acXemDS: TAction;
    ImageList1: TImageList;
    dxlcMainItem7: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    pageMain: TElPageControl;
    dxlcMainItem8: TdxLayoutItem;
    tabChiTiet: TElTabSheet;
    ElTabSheet2: TElTabSheet;
    gridDS_TNLD: TdxDBGrid;
    qryDS_TNLD: TIBOQuery;
    dsDS_TNLD: TDataSource;
    qryDS_TNLDID_TAINAN_LAODONG: TIntegerField;
    qryDS_TNLDMAVU_TAINAN: TWideStringField;
    qryDS_TNLDNGAY_XAYRA: TDateField;
    qryDS_TNLDTAI_DONVI: TWideStringField;
    qryDS_TNLDID_TNLD_NGUYENNHAN: TIntegerField;
    qryDS_TNLDTONG_THIETHAI: TIBOFloatField;
    qryDS_TNLDVANBAN_KEMTHEO: TBlobField;
    qryDS_TNLDTEN_VANBAN_KEMTHEO: TWideStringField;
    qryDS_TNLDDEPT_NAME: TWideStringField;
    gridDS_TNLDMAVU_TAINAN: TdxDBGridColumn;
    gridDS_TNLDNGAY_XAYRA: TdxDBGridDateColumn;
    gridDS_TNLDDEPT_NAME: TdxDBGridColumn;
    ElSplitter1: TElSplitter;
    panelMain: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBDateEdit1: TdxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxNguyenNhanTNLD: TdxDBMRUEdit;
    dxDBCalcEdit1: TdxDBCalcEdit;
    dxVanBanKemTheo: TdxDBButtonEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item7: TdxLayoutItem;
    gridChiTiet: TdxDBGrid;
    dxDeptName: TdxDBPopupEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    qryDS_TNLDTEN_NGUYENNHAN: TWideStringField;
    dsChiTiet: TDataSource;
    gridChiTietMASO_BHXH: TdxDBGridColumn;
    gridChiTietEMPLOYEE_NO: TdxDBGridColumn;
    gridChiTietNGHI_TUNGAY: TdxDBGridDateColumn;
    gridChiTietNGHI_DENNGAY: TdxDBGridDateColumn;
    gridChiTietCHIPHI_DO_YTE_TRA: TdxDBGridCalcColumn;
    gridChiTietCHIPHI_TRALUONG: TdxDBGridCalcColumn;
    gridChiTietCHIPHI_TROCAP: TdxDBGridCalcColumn;
    gridChiTietSONGAY_NGHI: TdxDBGridColumn;
    gridChiTietTEN_YEUTO_CHANTHUONG: TdxDBGridMRUColumn;
    gridChiTietTEN_MUCDO: TdxDBGridMRUColumn;
    gridChiTietTEN_MUCDO_SUYGIAM: TdxDBGridMRUColumn;
    qryChiTiet: TIBOQuery;
    qryChiTietID_TNLD_CHITIET: TIntegerField;
    qryChiTietID_TAINAN_LAODONG: TIntegerField;
    qryChiTietID_BAOHIEM_SODANGKY: TIntegerField;
    qryChiTietEMPLOYEE_NO: TWideStringField;
    qryChiTietMASO_BHXH: TWideStringField;
    qryChiTietFULL_NAME: TWideStringField;
    qryChiTietID_YEUTO_CHANTHUONG: TIntegerField;
    qryChiTietTEN_YEUTO_CHANTHUONG: TWideStringField;
    qryChiTietNGHI_TUNGAY: TDateField;
    qryChiTietNGHI_DENNGAY: TDateField;
    qryChiTietID_TNLD_MUCDO: TIntegerField;
    qryChiTietTEN_MUCDO: TWideStringField;
    qryChiTietID_MUCDO_SUYGIAM: TIntegerField;
    qryChiTietTEN_MUCDO_SUYGIAM: TWideStringField;
    qryChiTietCHIPHI_DO_YTE_TRA: TIBOFloatField;
    qryChiTietCHIPHI_TRALUONG: TIBOFloatField;
    qryChiTietCHIPHI_TROCAP: TIBOFloatField;
    qryChiTietSONGAY_NGHI: TIntegerField;
    gridChiTietFULL_NAME: TdxDBGridPopupColumn;
    qrySoBHXH: TIBOQuery;
    qrySoBHXHMASO_BHXH: TWideStringField;
    qrySoBHXHID_BAOHIEM_SODANGKY: TIntegerField;
    procedure dxVanBanKemTheoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qryDS_TNLDNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dxDeptNameInitPopup(Sender: TObject);
    procedure dxDeptNameCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure acXemDSExecute(Sender: TObject);
    procedure dxSelectDeptInitPopup(Sender: TObject);
    procedure dxSelectDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectDeptChange(Sender: TObject);
    procedure gridChiTietFULL_NAMEInitPopup(Sender: TObject);
    procedure gridChiTietFULL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryChiTietEMPLOYEE_NOChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryChiTietNGHI_TUNGAYChange(Sender: TField);
    procedure qryChiTietNGHI_DENNGAYChange(Sender: TField);
    procedure qryChiTietBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    F_DEPT_NO : widestring;
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_TaiNanLaoDong: TfrmBAOHIEM_TaiNanLaoDong;

implementation

uses MainDM, DateUtils, BaseFrm, BAOHIEM_TNLD_NguyenNhanForm, SSP_Library,
  PopupMainForm, BAOHIEM_YeuToChanThuongForm, BAOHIEM_MucDoThuongTatForm,
  BAOHIEM_MucDoSuyGiamForm, Math;

{$R *.dfm}

procedure TfrmBAOHIEM_TaiNanLaoDong.dxVanBanKemTheoButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  dmMain.DatasetLoadFile(sender,AbsoluteIndex,'TEN_VANBAN_KEMTHEO','VANBAN_KEMTHEO');
end;

procedure TfrmBAOHIEM_TaiNanLaoDong.qryDS_TNLDNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryDS_TNLDNGAY_XAYRA.Value := Today;
end;

procedure TfrmBAOHIEM_TaiNanLaoDong.FormCreate(Sender: TObject);
begin
  frameDateTime1.InitViewData;
  inherited;
  RegisterLookupControl(dxNguyenNhanTNLD,'ID_TNLD_NGUYENNHAN','TEN_NGUYENNHAN',
     'SELECT ID_TNLD_NGUYENNHAN,TEN_NGUYENNHAN || '' ('' || MA_NGUYENNHAN || '')'' TEN_NGUYENNHAN ' +
     'FROM HR_BAOHIEM_TNLD_NGUYENNHAN', TfrmBAOHIEM_TNLD_NguyenNhan);
  RegisterLookupControl(gridChiTietTEN_YEUTO_CHANTHUONG,'ID_YEUTO_CHANTHUONG','TEN_YEUTO_CHANTHUONG',
     'SELECT ID_YEUTO_CHANTHUONG, TEN_YEUTO_CHANTHUONG || '' ('' || MA_YEUTO_CHANTHUONG || '')'' TEN_YEUTO_CHANTHUONG ' +
     ' FROM HR_BAOHIEM_TNLD_YEUTO ORDER BY TEN_YEUTO_CHANTHUONG', TfrmBAOHIEM_YeuToChanThuong);
  RegisterLookupControl(gridChiTietTEN_MUCDO,'ID_TNLD_MUCDO','TEN_MUCDO',
     'SELECT ID_TNLD_MUCDO, TEN_MUCDO ' +
     ' FROM HR_BAOHIEM_TNLD_MUCDO ORDER BY TEN_MUCDO', TfrmBAOHIEM_MucDoThuongTat);
  RegisterLookupControl(gridChiTietTEN_MUCDO_SUYGIAM,'ID_MUCDO_SUYGIAM','TEN_MUCDO_SUYGIAM',
     'SELECT ID_MUCDO_SUYGIAM, TEN_MUCDO_SUYGIAM ' +
     ' FROM HR_BAOHIEM_TNLD_MUCDOSUYGIAM ORDER BY TEN_MUCDO_SUYGIAM',
     TfrmBAOHIEM_MucDoSuyGiam);
  frameDateTime1.SetPeriod('NAM_NAY');
  acXemDS.Execute;
  qrySoBHXH.open;     
end;

procedure TfrmBAOHIEM_TaiNanLaoDong.dxDeptNameInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList',frmPopupMain,Sender,2,dxDeptName);
  frmPopupMain.dxtlDeptList.FullExpand;
end;

procedure TfrmBAOHIEM_TaiNanLaoDong.dxDeptNameCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryDeptList,qryDS_TNLD,
           'DEPT_NO;DEPT_NAME','TAI_DONVI;DEPT_NAME','DEPT_NAME',Text);
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmBAOHIEM_TaiNanLaoDong.acXemDSExecute(Sender: TObject);
begin
  inherited;
  if qryDS_TNLD.Active then qryDS_TNLD.Close;
  qryDS_TNLD.ParamByName('XEM_THEO_DONVI').Value := F_DEPT_NO;
  if dxViewChild.Checked then
    qryDS_TNLD.ParamByName('XEM_CAPDUOI').Value := 1
  else
    qryDS_TNLD.ParamByName('XEM_CAPDUOI').Value := 0;
  qryDS_TNLD.ParamByName('XEM_TUNGAY').Value := frameDateTime1.dxFromDate.Date;
  qryDS_TNLD.ParamByName('XEM_DENNGAY').Value := frameDateTime1.dxToDate.Date;
  qryDS_TNLD.Open;

  if qryChiTiet.Active then qryChiTiet.Close;
  //qryChiTiet.ParamByName('XEM_TUYCHON_NGHIVIEC').Value := dximOption.Text;
  //qryChiTiet.ParamByName('XEM_PHANLOAI_COSO').Value := dximPhanLoai.Text;
  qryChiTiet.Open;
end;

procedure TfrmBAOHIEM_TaiNanLaoDong.dxSelectDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmBAOHIEM_TaiNanLaoDong.dxSelectDeptCloseUp(Sender: TObject;
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

procedure TfrmBAOHIEM_TaiNanLaoDong.dxSelectDeptChange(Sender: TObject);
begin
  inherited;
  if Length(dxSelectDept.Text) = 0 then
    F_DEPT_NO := '';
end;

procedure TfrmBAOHIEM_TaiNanLaoDong.gridChiTietFULL_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.dximOptionChange(sender);
  InitPopupControl('dxlcEmpForSelect',frmPopupMain,sender,2.5,gridChiTiet);
end;

procedure TfrmBAOHIEM_TaiNanLaoDong.gridChiTietFULL_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryEmpForSelect,qryChiTiet,
               'EMPLOYEE_NO;FULL_NAME','EMPLOYEE_NO;FULL_NAME',
               'FULL_NAME',Text);
  frmPopupMain.qryEmpForSelect.Close;
end;

procedure TfrmBAOHIEM_TaiNanLaoDong.qryChiTietEMPLOYEE_NOChange(
  Sender: TField);
begin
  inherited;
  qrySoBHXH.Refresh;
  qryChiTietMASO_BHXH.Value := qrySoBHXHMASO_BHXH.Value;
  qryChiTietID_BAOHIEM_SODANGKY.Value := qrySoBHXHID_BAOHIEM_SODANGKY.Value;     
end;

procedure TfrmBAOHIEM_TaiNanLaoDong.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qrySoBHXH.Close;
  qryDS_TNLD.Close;
  qryChiTiet.Close;    
end;

procedure TfrmBAOHIEM_TaiNanLaoDong.qryChiTietNGHI_TUNGAYChange(
  Sender: TField);
begin
  inherited;
  if (not qryChiTietNGHI_TUNGAY.IsNull ) and (not qryChiTietNGHI_DENNGAY.IsNull) then
    qryChiTietSONGAY_NGHI.Value := Floor(qryChiTietNGHI_DENNGAY.Value)
      - Floor(qryChiTietNGHI_TUNGAY.Value) + 1;
end;

procedure TfrmBAOHIEM_TaiNanLaoDong.qryChiTietNGHI_DENNGAYChange(
  Sender: TField);
begin
  inherited;
  if (not qryChiTietNGHI_TUNGAY.IsNull ) and (not qryChiTietNGHI_DENNGAY.IsNull) then
    qryChiTietSONGAY_NGHI.Value := Floor(qryChiTietNGHI_DENNGAY.Value)
      - Floor(qryChiTietNGHI_TUNGAY.Value) + 1;
end;

procedure TfrmBAOHIEM_TaiNanLaoDong.qryChiTietBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  dmmain.DefOnBeforePost(DataSet);

  // Nghi den ngay phai >= nghi tu ngay
  if (qryChiTietNGHI_DENNGAY.Value < qryChiTietNGHI_TUNGAY.Value) and
    (not qryChiTietNGHI_DENNGAY.IsNull) then
  begin
    ShowMessageUnicode(130);
    Abort;
    Exit;
  end;
end;

end.
