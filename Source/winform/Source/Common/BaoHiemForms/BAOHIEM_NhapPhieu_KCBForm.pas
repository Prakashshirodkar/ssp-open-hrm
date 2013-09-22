//******************************************************************//
//************** Create form by THUYPTP - 03/09/2009 ***************//
//******************************************************************//
unit BAOHIEM_NhapPhieu_KCBForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxExEdtr, dxEdLib, dxCntner, dxEditor,
  ElBtnCtl, ElPopBtn, ActnList, dxDBGrid, DB, IBODataset;

type
  TfrmBAOHIEM_NhapPhieu_KCB = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxTinhTrang: TdxImageEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDenNgay: TdxDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxTuNgay: TdxDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxUpdateAll: TdxCheckEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxUpdateSelected: TdxCheckEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    ActionList1: TActionList;
    acCapnhat: TAction;
    acDong: TAction;
    lcChk_GiuNguyen: TdxLayoutItem;
    dxChk_GiuNguyen: TdxCheckEdit;
    dxNoiDangKyKCB: TdxMRUEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxTinh_TP: TdxMRUEdit;
    qryExecute: TIBOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxUpdateAllChange(Sender: TObject);
    procedure dxUpdateSelectedChange(Sender: TObject);
    procedure acDongExecute(Sender: TObject);
    procedure dxBenhVienInitPopup(Sender: TObject);
    procedure dxBenhVienCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure dxTinhTrangCloseUp(Sender: TObject; var Value: WideString;
      var Accept: Boolean);
    procedure dxTinh_TPExit(Sender: TObject);
    procedure acCapnhatExecute(Sender: TObject);
  private
    { Private declarations }
    F_ID_BAOHIEM_BENHVIEN : integer;
     ma_tinh_thanhpho : Tobject;
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_NhapPhieu_KCB: TfrmBAOHIEM_NhapPhieu_KCB;

implementation

uses BAOHIEM_SoDangKyForm, PopupBaoHiemForm, MainDM, SSP_Library,
  BAOHIEM_TinhThanhPhoForm, BAOHIEM_BenhVienForm;

{$R *.dfm}

procedure TfrmBAOHIEM_NhapPhieu_KCB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  action := caFree;
  frmBAOHIEM_NhapPhieu_KCB := nil;
end;

procedure TfrmBAOHIEM_NhapPhieu_KCB.dxUpdateAllChange(Sender: TObject);
begin
  inherited;
  if dxUpdateAll.Checked then
  begin
    dxUpdateSelected.Checked := false;
  end
end;

procedure TfrmBAOHIEM_NhapPhieu_KCB.dxUpdateSelectedChange(
  Sender: TObject);
begin
  inherited;
  if dxUpdateSelected.Checked then
  begin
    dxUpdateAll.Checked := false;
    frmBAOHIEM_SoDangKy.gridSoDangKyBHXH.OptionsBehavior :=
      frmBAOHIEM_SoDangKy.gridSoDangKyBHXH.OptionsBehavior + [edgoMultiSelect];
  end;
end;

procedure TfrmBAOHIEM_NhapPhieu_KCB.acDongExecute(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TfrmBAOHIEM_NhapPhieu_KCB.dxBenhVienInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupBaoHiem.qryBaoHiem_BenhVien.Open;
  InitPopupControl('dxlcBaoHiem_BenhVien', frmPopupBaoHiem, sender, 2);
end;

procedure TfrmBAOHIEM_NhapPhieu_KCB.dxBenhVienCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupBaoHiem.qryBaoHiem_BenhVienTEN_BENHVIEN.Value;
    F_ID_BAOHIEM_BENHVIEN := frmPopupBaoHiem.qryBaoHiem_BenhVienID_BAOHIEM_BENHVIEN.Value;
  end;
  frmPopupBaoHiem.qryBaoHiem_BenhVien.Close;
end;

procedure TfrmBAOHIEM_NhapPhieu_KCB.FormCreate(Sender: TObject);
begin
  dxTinhTrang.Tag := 1;
  dxTinhTrang.Descriptions.Add(Utf8Decode('Đăng ký ban đầu'));
  dxTinhTrang.Descriptions.Add(Utf8Decode('Gia hạn thẻ BHYT'));
  dxTinhTrang.Values.Add('0');
  dxTinhTrang.Values.Add('1');

  dxTinhTrang.Text := '0';
  dxTinhTrang.Tag := 0;
  inherited;

  ma_tinh_thanhpho:= RegisterLookupControl(dxTinh_TP,'ma_tinh_thanhpho','ten_tinh_thanhpho',
    'select ma_tinh_thanhpho,ten_tinh_thanhpho ' +
    'from hr_baohiem_tinh_thanhpho', TfrmBAOHIEM_TinhThanhPho);
  RegisterLookupControl(dxNoiDangKyKCB,'id_baohiem_benhvien','ten_benhvien',
    'select id_baohiem_benhvien, ten_benhvien  ' +
    'from hr_baohiem_benhvien ' +
    'where hr_baohiem_benhvien.ma_tinh_thanhpho = :ma_tinh_thanhpho ' +
    'order by hr_baohiem_benhvien.ma_tinh_thanhpho, hr_baohiem_benhvien.ma_benhvien ',
    TfrmBAOHIEM_BenhVien, ma_tinh_thanhpho );
end;

procedure TfrmBAOHIEM_NhapPhieu_KCB.dxTinhTrangCloseUp(Sender: TObject;
  var Value: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
    if value = '1' then
    begin
      lcChk_GiuNguyen.Visible := true;
      dxChk_GiuNguyen.Checked := true;
    end
    else
    begin
      lcChk_GiuNguyen.Visible := false;
      dxChk_GiuNguyen.Checked := false;
    end;
end;

procedure TfrmBAOHIEM_NhapPhieu_KCB.dxTinh_TPExit(Sender: TObject);
begin
  inherited;
  OnMRUExit(sender);
  //De refresh lai ds noi dang ky KCB theo tinh/tp thi them cau lenh Exit nay
  OnMRUExit(dxNoiDangKyKCB); 
end;

procedure TfrmBAOHIEM_NhapPhieu_KCB.acCapnhatExecute(Sender: TObject);
var
  i : integer;
begin
  inherited;
  //Neu tinh trang la Dang ky ban dau thi co the bo trong tu ngay - den ngay, bat buoc chon noi dang ky KCB
  if (dxTinhTrang.Text = '0') then
  begin
    if (dxNoiDangKyKCB.Text = '') then
    begin
      ShowMessageUnicode (116);
      exit;
    end;
  end
  //Neu tinh trang la Gia han the BHYT thi co the bo trong noi dang ky KCB neu chon giu nguyen dang ky cu
  //bat buoc phai nhap tu ngay - den ngay
  else
  begin
    if (dxTuNgay.Text = '' ) then
    begin
      ShowMessageUnicode (117);
      exit;
    end;
    if ((dxChk_GiuNguyen.Checked = false) and (dxNoiDangKyKCB.Text = '')) then
    begin
      ShowMessageUnicode (118);
      exit;
    end;
  end;

  Screen.Cursor:=crSQLWait;

  if dxUpdateAll.Checked then
    frmBAOHIEM_SoDangKy.gridSoDangKyBHXH.SelectAll;

  for i:=0 to frmBAOHIEM_SoDangKy.gridSoDangKyBHXH.SelectedCount -1 do
  begin
    qryExecute.ParamByName('ID_BAOHIEM_SODANGKY').Value := 
      frmBAOHIEM_SoDangKy.gridSoDangKyBHXH.SelectedNodes[i].Values[frmBAOHIEM_SoDangKy.gridSoDangKyBHXHID_BAOHIEM_SODANGKY.Index];

    if (dxNoiDangKyKCB.Text = '' ) then
      qryExecute.ParamByName('ID_BAOHIEM_BENHVIEN').Clear
    else
    qryExecute.ParamByName('ID_BAOHIEM_BENHVIEN').Value := GetLookupKeyField(dxNoiDangKyKCB);

    if (dxTuNgay.Text = '' ) then
      qryExecute.ParamByName('DANGKY_TUNGAY').Clear
    else
      qryExecute.ParamByName('DANGKY_TUNGAY').Value := dxTuNgay.Date;

    if (dxTuNgay.Text = '' ) then
      qryExecute.ParamByName('DANGKY_DENNGAY').Clear
    else
      qryExecute.ParamByName('DANGKY_DENNGAY').Value := dxDenNgay.Date;

    qryExecute.ParamByName('TINH_TRANG').Value := StrToInt(dxTinhTrang.Text) ;
    if dxChk_GiuNguyen.Checked then
      qryExecute.ParamByName('GIULAI_NOI_KCB').Value := 1
    else
      qryExecute.ParamByName('GIULAI_NOI_KCB').Value := 0;
      
    try
        qryExecute.ExecSQL;
    except
    end;
  end;
  ShowMessageUnicode(119);
  frmBAOHIEM_SoDangKy.acXemDS.Execute; 
  Screen.Cursor:=crDefault;           
  
end;

end.
