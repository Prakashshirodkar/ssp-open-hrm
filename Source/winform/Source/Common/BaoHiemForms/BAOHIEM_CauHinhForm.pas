//******************************************************************//
//************** Create form by THUYPTP - 01/09/2009 ***************//
//******************************************************************//
unit BAOHIEM_CauHinhForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, DB, IBODataset, dxDBTLCl, dxGrClms, ComCtrls, ElPgCtl,
  ImgList, ElBtnCtl, ElCheckCtl, dxEditor, dxEdLib, dxDBELib, ActnList,
  ElPopBtn;

type
  TfrmBAOHIEM_CauHinh = class(TfrmEditBase)
    gridCauHinh: TdxDBGrid;
    qryCauHinh: TIBOQuery;
    dsCauHinh: TDataSource;
    qryCauHinhKEY_ID: TIntegerField;
    qryCauHinhNGAY_APDUNG: TDateField;
    qryCauHinhXETTHEO_KHUNGLUONG: TSmallintField;
    qryCauHinhMASO_MUCLUONG: TWideStringField;
    qryCauHinhMASO_PHUCAP: TWideStringField;
    qryCauHinhMASO_PCTN_VUOTKHUNG: TWideStringField;
    qryCauHinhMASO_PCTN_NGHE: TWideStringField;
    qryCauHinhMASO_PCKV: TWideStringField;
    qryCauHinhTILE_NLD_NOP: TIBOFloatField;
    qryCauHinhTILE_DN_NOP: TIBOFloatField;
    qryCauHinhTILE_NOP: TIBOFloatField;
    qryCauHinhTILE_TRICHQUY_KCB: TIBOFloatField;
    qryCauHinhMOCNGAY_LD_TANG: TSmallintField;
    qryCauHinhMOCNGAY_LD_GIAM: TSmallintField;
    qryCauHinhMOCNGAY_LD_THAYDOILUONG: TSmallintField;
    qryCauHinhMOCNGAY_TRATHE: TSmallintField;
    qryCauHinhTHOIHAN_THE_BHYT: TSmallintField;
    qryCauHinhSOTHANG_LIENKE: TSmallintField;
    qryCauHinhGIOIHAN_SOBHXH: TSmallintField;
    gridCauHinhNGAY_APDUNG: TdxDBGridDateColumn;
    pageCauHinh: TElPageControl;
    dxlcMainItem3: TdxLayoutItem;
    tabThongSoChung: TElTabSheet;
    tabThongSoKhac: TElTabSheet;
    imgCauHinh: TImageList;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxTheoLuongCBNN: TElRadioButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxTheoLuongCongTy: TElRadioButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxTheoHeSoQDHD: TElRadioButton;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxDBPopupEdit5: TdxDBPopupEdit;
    dxDBPopupEdit6: TdxDBPopupEdit;
    dxDBPopupEdit4: TdxDBPopupEdit;
    dxDBPopupEdit7: TdxDBPopupEdit;
    dxDBPopupEdit8: TdxDBPopupEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxDBSpinEdit2: TdxDBSpinEdit;
    dxDBSpinEdit3: TdxDBSpinEdit;
    dxDBSpinEdit6: TdxDBSpinEdit;
    dxDBSpinEdit7: TdxDBSpinEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxDBSpinEdit5: TdxDBSpinEdit;
    dxLayoutControl1Group7: TdxLayoutGroup;
    qryCauHinhTEN_MUCLUONG: TWideStringField;
    qryCauHinhTEN_PHUCAP: TWideStringField;
    qryCauHinhTEN_PCTN_VUOTKHUNG: TWideStringField;
    qryCauHinhTEN_PCTN_NGHE: TWideStringField;
    qryCauHinhTEN_PCKV: TWideStringField;
    gridChiTiet: TdxDBGrid;
    dxLayoutControl1Item15: TdxLayoutItem;
    qryChiTiet: TIBOQuery;
    dsChiTiet: TDataSource;
    qryChiTietBAOHIEM_KEY_ID: TIntegerField;
    qryChiTietTEN_KHOANNOP: TWideStringField;
    qryChiTietMA_KHOANNOP: TWideStringField;
    qryChiTietMUCLUONG_TOIDA: TIBOFloatField;
    qryChiTietMUCLUONG_TOITHIEU: TIBOFloatField;
    qryChiTietTILE_NLD_NOP: TIBOFloatField;
    qryChiTietTILE_DN_NOP: TIBOFloatField;
    qryChiTietTILE_NOP: TIBOFloatField;
    gridChiTietMA_KHOANNOP: TdxDBGridColumn;
    gridChiTietTEN_KHOANNOP: TdxDBGridColumn;
    gridChiTietTILE_NLD_NOP: TdxDBGridCalcColumn;
    gridChiTietTILE_DN_NOP: TdxDBGridCalcColumn;
    gridChiTietTILE_NOP: TdxDBGridCalcColumn;
    gridChiTietMUCLUONG_TOIDA: TdxDBGridCalcColumn;
    gridChiTietMUCLUONG_TOITHIEU: TdxDBGridCalcColumn;
    ActionList1: TActionList;
    acXemDS: TAction;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Group1: TdxLayoutGroup;
    gridTyGia: TdxDBGrid;
    dxLayoutControl2Item1: TdxLayoutItem;
    qryTyGia: TIBOQuery;
    dsTyGia: TDataSource;
    qryTyGiaNGAY_APDUNG: TDateField;
    qryTyGiaTY_GIA: TIBOFloatField;
    gridTyGiaNGAY_APDUNG: TdxDBGridDateColumn;
    gridTyGiaTY_GIA: TdxDBGridCalcColumn;
    dxLayoutControl2Group2: TdxLayoutGroup;
    gridWorkHour: TdxDBGrid;
    dxLayoutControl2Item2: TdxLayoutItem;
    qryWorkHourType: TIBOQuery;
    dsWorkHourType: TDataSource;
    qryWorkHourTypeWHT_NO: TWideStringField;
    qryWorkHourTypeWHT_NAME: TWideStringField;
    gridWorkHourWHT_NO: TdxDBGridColumn;
    gridWorkHourWHT_NAME: TdxDBGridColumn;
    gridLoaiCong_NghiOm: TdxDBGrid;
    gridLoaiCong_NghiThaiSan: TdxDBGrid;
    qryLoaiCong_NghiOm: TIBOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    dsLoaiCong_NghiOm: TDataSource;
    qryLoaiCong_NghiThaiSan: TIBOQuery;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    dsLoaiCong_NghiThaiSan: TDataSource;
    qryLoaiCong_NghiKhongLuong: TIBOQuery;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    dsLoaiCong_NghiKhongLuong: TDataSource;
    gridLoaiCong_NghiOmWHT_NO: TdxDBGridColumn;
    gridLoaiCong_NghiOmWHT_NAME: TdxDBGridColumn;
    gridLoaiCong_NghiThaiSanWHT_NO: TdxDBGridColumn;
    gridLoaiCong_NghiThaiSanWHT_NAME: TdxDBGridColumn;
    gridLoaiCong_NghiKhongLuong: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    ElPopupButton12: TElPopupButton;
    ElPopupButton11: TElPopupButton;
    ElPopupButton10: TElPopupButton;
    ElPopupButton9: TElPopupButton;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    ElPopupButton3: TElPopupButton;
    ElPopupButton4: TElPopupButton;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    ElPopupButton5: TElPopupButton;
    ElPopupButton6: TElPopupButton;
    ElPopupButton7: TElPopupButton;
    ElPopupButton8: TElPopupButton;
    acOm_Add: TAction;
    acOm_AddAll: TAction;
    acKHH_Add: TAction;
    acKHH_AddAll: TAction;
    acKhongLuong_Add: TAction;
    acKhongLuong_AddAll: TAction;
    acOm_Move: TAction;
    acOm_MoveAll: TAction;
    acKHH_Move: TAction;
    acKHH_MoveAll: TAction;
    acKhongLuong_Move: TAction;
    acKhongLuong_MoveAll: TAction;
    pageLoaiCong: TElPageControl;
    dxLayoutControl2Item18: TdxLayoutItem;
    tabLoaiCongNghi: TElTabSheet;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl3Item1: TdxLayoutItem;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxLayoutControl3Item4: TdxLayoutItem;
    dxLayoutControl3Item5: TdxLayoutItem;
    dxLayoutControl3Group3: TdxLayoutGroup;
    dxLayoutControl3Group4: TdxLayoutGroup;
    dxLayoutControl3Item6: TdxLayoutItem;
    dxLayoutControl3Item7: TdxLayoutItem;
    dxLayoutControl3Item8: TdxLayoutItem;
    dxLayoutControl3Item9: TdxLayoutItem;
    dxLayoutControl3Item10: TdxLayoutItem;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Group6: TdxLayoutGroup;
    dxLayoutControl3Item11: TdxLayoutItem;
    dxLayoutControl3Item12: TdxLayoutItem;
    dxLayoutControl3Item14: TdxLayoutItem;
    dxLayoutControl3Item13: TdxLayoutItem;
    dxLayoutControl3Item15: TdxLayoutItem;
    tabCongNghiDSPHSK: TElTabSheet;
    qryLoaiCong_NDSPHSK_SauOm: TIBOQuery;
    dsLoaiCong_NDSPHSK_SauOm: TDataSource;
    qryLoaiCong_NDSPHSK_SauTS: TIBOQuery;
    dsLoaiCong_NDSPHSK_SauTS: TDataSource;
    qryLoaiCong_NDSPHSK_SauTSWHT_NO: TWideStringField;
    qryLoaiCong_NDSPHSK_SauTSWHT_NAME: TWideStringField;
    qryLoaiCong_NDSPHSK_SauOmWHT_NO: TWideStringField;
    qryLoaiCong_NDSPHSK_SauOmWHT_NAME: TWideStringField;
    ElPopupButton13: TElPopupButton;
    ElPopupButton14: TElPopupButton;
    ElPopupButton15: TElPopupButton;
    ElPopupButton16: TElPopupButton;
    grid_Nghi_DSPHSK_SauOm: TdxDBGrid;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutControl4Group1: TdxLayoutGroup;
    dxLayoutControl4Group2: TdxLayoutGroup;
    dxLayoutControl4Item1: TdxLayoutItem;
    dxLayoutControl4Item2: TdxLayoutItem;
    dxLayoutControl4Item3: TdxLayoutItem;
    dxLayoutControl4Item4: TdxLayoutItem;
    dxLayoutControl4Item5: TdxLayoutItem;
    acDSPHSK_SauOm_Add: TAction;
    acDSPHSK_SauOm_AddAll: TAction;
    acDSPHSK_SauOm_Move: TAction;
    acDSPHSK_SauOm_MoveAll: TAction;
    grid_Nghi_DSPHSK_SauTS: TdxDBGrid;
    dxDBGridColumn5: TdxDBGridColumn;
    dxDBGridColumn6: TdxDBGridColumn;
    ElPopupButton17: TElPopupButton;
    ElPopupButton18: TElPopupButton;
    ElPopupButton19: TElPopupButton;
    ElPopupButton20: TElPopupButton;
    dxLayoutControl4Group3: TdxLayoutGroup;
    dxLayoutControl4Group4: TdxLayoutGroup;
    dxLayoutControl4Item6: TdxLayoutItem;
    dxLayoutControl4Item7: TdxLayoutItem;
    dxLayoutControl4Item8: TdxLayoutItem;
    dxLayoutControl4Item9: TdxLayoutItem;
    dxLayoutControl4Item10: TdxLayoutItem;
    acDSPHSK_SauTS_Add: TAction;
    acDSPHSK_SauTS_AddAll: TAction;
    acDSPHSK_SauTS_Move: TAction;
    acDSPHSK_SauTS_MoveAll: TAction;
    qryLoaiCong_NDSPHSK_SauTNLD: TIBOQuery;
    dsLoaiCong_NDSPHSK_SauTNLD: TDataSource;
    qryLoaiCong_NDSPHSK_SauTNLDWHT_NO: TWideStringField;
    qryLoaiCong_NDSPHSK_SauTNLDWHT_NAME: TWideStringField;
    dxLayoutControl4Item11: TdxLayoutItem;
    grid_Nghi_DSPHSK_SauTNLD: TdxDBGrid;
    dxDBGridColumn7: TdxDBGridColumn;
    dxDBGridColumn8: TdxDBGridColumn;
    dxLayoutControl4Item12: TdxLayoutItem;
    ElPopupButton21: TElPopupButton;
    dxLayoutControl4Item13: TdxLayoutItem;
    ElPopupButton22: TElPopupButton;
    dxLayoutControl4Item14: TdxLayoutItem;
    ElPopupButton23: TElPopupButton;
    dxLayoutControl4Item15: TdxLayoutItem;
    ElPopupButton24: TElPopupButton;
    dxLayoutControl4Group5: TdxLayoutGroup;
    dxLayoutControl4Group6: TdxLayoutGroup;
    acDSPHSK_SauTNLD_Add: TAction;
    acDSPHSK_SauTNLD_AddAll: TAction;
    acDSPHSK_SauTNLD_Move: TAction;
    acDSPHSK_SauTNLD_MoveAll: TAction;
    procedure qryChiTietTILE_NLD_NOPChange(Sender: TField);
    procedure qryChiTietTILE_DN_NOPChange(Sender: TField);
    procedure acXemDSExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridCauHinhChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure dxTheoLuongCBNNClick(Sender: TObject);
    procedure dxTheoLuongCongTyClick(Sender: TObject);
    procedure dxTheoHeSoQDHDClick(Sender: TObject);
    procedure dxDBPopupEdit5InitPopup(Sender: TObject);
    procedure dxDBPopupEdit6InitPopup(Sender: TObject);
    procedure dxDBPopupEdit4InitPopup(Sender: TObject);
    procedure dxDBPopupEdit7InitPopup(Sender: TObject);
    procedure dxDBPopupEdit8InitPopup(Sender: TObject);
    procedure dxDBPopupEdit5CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit6CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit4CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit7CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit8CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryCauHinhTEN_MUCLUONGChange(Sender: TField);
    procedure qryCauHinhTEN_PHUCAPChange(Sender: TField);
    procedure qryCauHinhTEN_PCTN_VUOTKHUNGChange(Sender: TField);
    procedure qryCauHinhTEN_PCTN_NGHEChange(Sender: TField);
    procedure qryCauHinhTEN_PCKVChange(Sender: TField);
    procedure qryChiTietBeforePost(DataSet: TDataSet);
    procedure acOm_AddAllExecute(Sender: TObject);
    procedure acOm_AddExecute(Sender: TObject);
    procedure acOm_AddUpdate(Sender: TObject);
    procedure acOm_AddAllUpdate(Sender: TObject);
    procedure acOm_MoveExecute(Sender: TObject);
    procedure acOm_MoveUpdate(Sender: TObject);
    procedure acOm_MoveAllExecute(Sender: TObject);
    procedure acOm_MoveAllUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryLoaiCong_NghiOmBeforeDelete(DataSet: TDataSet);
    procedure acKHH_AddExecute(Sender: TObject);
    procedure acKHH_AddUpdate(Sender: TObject);
    procedure acKHH_AddAllExecute(Sender: TObject);
    procedure acKHH_AddAllUpdate(Sender: TObject);
    procedure acKHH_MoveExecute(Sender: TObject);
    procedure acKHH_MoveUpdate(Sender: TObject);
    procedure acKHH_MoveAllExecute(Sender: TObject);
    procedure acKHH_MoveAllUpdate(Sender: TObject);
    procedure acKhongLuong_AddExecute(Sender: TObject);
    procedure acKhongLuong_AddUpdate(Sender: TObject);
    procedure acKhongLuong_AddAllExecute(Sender: TObject);
    procedure acKhongLuong_AddAllUpdate(Sender: TObject);
    procedure acKhongLuong_MoveExecute(Sender: TObject);
    procedure acKhongLuong_MoveUpdate(Sender: TObject);
    procedure acKhongLuong_MoveAllExecute(Sender: TObject);
    procedure acKhongLuong_MoveAllUpdate(Sender: TObject);
    procedure qryLoaiCong_NghiThaiSanBeforeDelete(DataSet: TDataSet);
    procedure qryLoaiCong_NghiKhongLuongBeforeDelete(DataSet: TDataSet);
    procedure acDSPHSK_SauOm_AddExecute(Sender: TObject);
    procedure acDSPHSK_SauOm_AddUpdate(Sender: TObject);
    procedure acDSPHSK_SauOm_AddAllExecute(Sender: TObject);
    procedure acDSPHSK_SauOm_AddAllUpdate(Sender: TObject);
    procedure acDSPHSK_SauOm_MoveExecute(Sender: TObject);
    procedure acDSPHSK_SauOm_MoveUpdate(Sender: TObject);
    procedure acDSPHSK_SauOm_MoveAllExecute(Sender: TObject);
    procedure acDSPHSK_SauOm_MoveAllUpdate(Sender: TObject);
    procedure qryLoaiCong_NDSPHSK_SauOmBeforeDelete(DataSet: TDataSet);
    procedure acDSPHSK_SauTS_AddExecute(Sender: TObject);
    procedure acDSPHSK_SauTS_AddAllExecute(Sender: TObject);
    procedure acDSPHSK_SauTS_AddUpdate(Sender: TObject);
    procedure acDSPHSK_SauTS_AddAllUpdate(Sender: TObject);
    procedure acDSPHSK_SauTS_MoveExecute(Sender: TObject);
    procedure acDSPHSK_SauTS_MoveUpdate(Sender: TObject);
    procedure acDSPHSK_SauTS_MoveAllExecute(Sender: TObject);
    procedure acDSPHSK_SauTS_MoveAllUpdate(Sender: TObject);
    procedure qryLoaiCong_NDSPHSK_SauTSBeforeDelete(DataSet: TDataSet);
    procedure acDSPHSK_SauTNLD_AddExecute(Sender: TObject);
    procedure acDSPHSK_SauTNLD_AddUpdate(Sender: TObject);
    procedure acDSPHSK_SauTNLD_AddAllExecute(Sender: TObject);
    procedure acDSPHSK_SauTNLD_AddAllUpdate(Sender: TObject);
    procedure acDSPHSK_SauTNLD_MoveExecute(Sender: TObject);
    procedure acDSPHSK_SauTNLD_MoveUpdate(Sender: TObject);
    procedure acDSPHSK_SauTNLD_MoveAllExecute(Sender: TObject);
    procedure acDSPHSK_SauTNLD_MoveAllUpdate(Sender: TObject);
    procedure qryLoaiCong_NDSPHSK_SauTNLDBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_CauHinh: TfrmBAOHIEM_CauHinh;

implementation

uses PopupBaoHiemForm, MainDM, SSP_Library;

{$R *.dfm}

procedure TfrmBAOHIEM_CauHinh.qryChiTietTILE_NLD_NOPChange(Sender: TField);
begin
  inherited;
  if not (qryChiTietTILE_NLD_NOP.IsNull or qryChiTietTILE_DN_NOP.IsNull) then
    qryChiTietTILE_NOP.Value := qryChiTietTILE_NLD_NOP.Value + qryChiTietTILE_DN_NOP.Value;
end;

procedure TfrmBAOHIEM_CauHinh.qryChiTietTILE_DN_NOPChange(Sender: TField);
begin
  inherited;
  if not (qryChiTietTILE_NLD_NOP.IsNull or qryChiTietTILE_DN_NOP.IsNull) then
    qryChiTietTILE_NOP.Value := qryChiTietTILE_NLD_NOP.Value + qryChiTietTILE_DN_NOP.Value;
end;

procedure TfrmBAOHIEM_CauHinh.acXemDSExecute(Sender: TObject);
begin
  inherited;
  if qryChiTiet.Active then qryChiTiet.Close;

end;

procedure TfrmBAOHIEM_CauHinh.FormCreate(Sender: TObject);
begin
  inherited;
  qryCauHinh.Open;
  qryChiTiet.Open;
  qryTyGia.Open;
  qryWorkHourType.Open;
  qryLoaiCong_NghiOm.Open;
  qryLoaiCong_NghiThaiSan.Open;
  qryLoaiCong_NghiKhongLuong.Open;
  qryLoaiCong_NDSPHSK_SauOm.Open;
  qryLoaiCong_NDSPHSK_SauTS.Open;
  qryLoaiCong_NDSPHSK_SauTNLD.Open;
  pageCauHinh.ActivePage := tabThongSoChung;  
end;

procedure TfrmBAOHIEM_CauHinh.gridCauHinhChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  if qryCauHinhXETTHEO_KHUNGLUONG.Value =1 then
    dxTheoLuongCBNN.Checked := true
  else if qryCauHinhXETTHEO_KHUNGLUONG.Value = 2 then
    dxTheoLuongCongTy.Checked := true
  else
    dxTheoHeSoQDHD.Checked := true;
end;

procedure TfrmBAOHIEM_CauHinh.dxTheoLuongCBNNClick(Sender: TObject);
begin
  inherited;
  if dxTheoLuongCBNN.Checked then
  begin
    if not (qryCauHinh.State in [dsEdit,dsInsert]) then
      qryCauHinh.Edit;
    qryCauHinhXETTHEO_KHUNGLUONG.Value := 1;
  end;
end;

procedure TfrmBAOHIEM_CauHinh.dxTheoLuongCongTyClick(Sender: TObject);
begin
  inherited;
  if dxTheoLuongCongTy.Checked then
  begin
    if not (qryCauHinh.State in [dsEdit,dsInsert]) then
      qryCauHinh.Edit;
    qryCauHinhXETTHEO_KHUNGLUONG.Value := 2;
  end;
end;

procedure TfrmBAOHIEM_CauHinh.dxTheoHeSoQDHDClick(Sender: TObject);
begin
  inherited;
  if dxTheoHeSoQDHD.Checked then
  begin
    if not (qryCauHinh.State in [dsEdit,dsInsert]) then
      qryCauHinh.Edit;
    qryCauHinhXETTHEO_KHUNGLUONG.Value := 3;
  end;
end;

procedure TfrmBAOHIEM_CauHinh.dxDBPopupEdit5InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupBaoHiem.qryHesoQDHD.Open;
  InitPopupControl('dxlcHesoQDHD',frmPopupBaoHiem,sender,2);
end;

procedure TfrmBAOHIEM_CauHinh.dxDBPopupEdit6InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupBaoHiem.qryHesoQDHD.Open;
  InitPopupControl('dxlcHesoQDHD',frmPopupBaoHiem,sender,2);
end;

procedure TfrmBAOHIEM_CauHinh.dxDBPopupEdit4InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupBaoHiem.qryHesoQDHD.Open;
  InitPopupControl('dxlcHesoQDHD',frmPopupBaoHiem,sender,2);
end;

procedure TfrmBAOHIEM_CauHinh.dxDBPopupEdit7InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupBaoHiem.qryHesoQDHD.Open;
  InitPopupControl('dxlcHesoQDHD',frmPopupBaoHiem,sender,2);
end;

procedure TfrmBAOHIEM_CauHinh.dxDBPopupEdit8InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupBaoHiem.qryHesoQDHD.Open;
  InitPopupControl('dxlcHesoQDHD',frmPopupBaoHiem,sender,2);
end;

procedure TfrmBAOHIEM_CauHinh.dxDBPopupEdit5CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupBaoHiem.qryHesoQDHD,qryCauhinh,
               'PARAM_NO;PARAM_NAME','MASO_MUCLUONG;TEN_MUCLUONG',
               'PARAM_NAME',Text);
   frmPopupBaoHiem.qryHesoQDHD.Close;
end;

procedure TfrmBAOHIEM_CauHinh.dxDBPopupEdit6CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupBaoHiem.qryHesoQDHD,qryCauhinh,
               'PARAM_NO;PARAM_NAME','MASO_PHUCAP;TEN_PHUCAP',
               'PARAM_NAME',Text);
   frmPopupBaoHiem.qryHesoQDHD.Close;
end;

procedure TfrmBAOHIEM_CauHinh.dxDBPopupEdit4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupBaoHiem.qryHesoQDHD,qryCauhinh,
               'PARAM_NO;PARAM_NAME','MASO_PCTN_VUOTKHUNG;TEN_PCTN_VUOTKHUNG',
               'PARAM_NAME',Text);
   frmPopupBaoHiem.qryHesoQDHD.Close;
end;

procedure TfrmBAOHIEM_CauHinh.dxDBPopupEdit7CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupBaoHiem.qryHesoQDHD,qryCauhinh,
               'PARAM_NO;PARAM_NAME','MASO_PCTN_NGHE;TEN_PCTN_NGHE',
               'PARAM_NAME',Text);
   frmPopupBaoHiem.qryHesoQDHD.Close;
end;

procedure TfrmBAOHIEM_CauHinh.dxDBPopupEdit8CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupBaoHiem.qryHesoQDHD,qryCauhinh,
               'PARAM_NO;PARAM_NAME','MASO_PCKV;TEN_PCKV',
               'PARAM_NAME',Text);
   frmPopupBaoHiem.qryHesoQDHD.Close;
end;

procedure TfrmBAOHIEM_CauHinh.qryCauHinhTEN_MUCLUONGChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet, Sender.FieldName,'MASO_MUCLUONG');
end;

procedure TfrmBAOHIEM_CauHinh.qryCauHinhTEN_PHUCAPChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet, Sender.FieldName,'MASO_PHUCAP');
end;

procedure TfrmBAOHIEM_CauHinh.qryCauHinhTEN_PCTN_VUOTKHUNGChange(
  Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet, Sender.FieldName,'MASO_PCTN_VUOTKHUNG');
end;

procedure TfrmBAOHIEM_CauHinh.qryCauHinhTEN_PCTN_NGHEChange(
  Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet, Sender.FieldName,'MASO_PCTN_NGHE');
end;

procedure TfrmBAOHIEM_CauHinh.qryCauHinhTEN_PCKVChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet, Sender.FieldName,'MASO_PCKV');
end;

procedure TfrmBAOHIEM_CauHinh.qryChiTietBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryChiTietBAOHIEM_KEY_ID.Value := qryCauHinhKEY_ID.Value;
  dmMain.DefOnBeforePost(qryChiTiet);
end;

procedure TfrmBAOHIEM_CauHinh.acOm_AddAllExecute(Sender: TObject);
begin
  inherited;
  gridWorkHour.SelectAll;
  acOm_Add.Execute;
end;

procedure TfrmBAOHIEM_CauHinh.acOm_AddExecute(Sender: TObject);
var
  i : integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  for i := 0 to gridWorkHour.SelectedCount - 1 do
  begin
    if not (qryLoaiCong_NghiOm.State in [dsInsert, dsEdit]) then
      qryLoaiCong_NghiOm.Insert;
    qryLoaiCong_NghiOm.FieldByname('WHT_NO').Value :=
      gridWorkHour.SelectedNodes[i].Values[gridWorkHourWHT_NO.Index];
    qryLoaiCong_NghiOm.FieldByname('WHT_NAME').Value :=
      gridWorkHour.SelectedNodes[i].Values[gridWorkHourWHT_NAME.Index];
    qryLoaiCong_NghiOm.Post;
  end;
  qryWorkHourType.Refresh;
  Screen.Cursor := crDefault;
end;

procedure TfrmBAOHIEM_CauHinh.acOm_AddUpdate(Sender: TObject);
begin
  inherited;
  acOm_Add.Enabled := gridWorkHour.SelectedCount > 0;
end;

procedure TfrmBAOHIEM_CauHinh.acOm_AddAllUpdate(Sender: TObject);
begin
  inherited;
  acOm_AddAll.Enabled := (qryWorkHourType.IsEmpty = false);
end;

procedure TfrmBAOHIEM_CauHinh.acOm_MoveExecute(Sender: TObject);
begin
  inherited;
  gridLoaiCong_NghiOm.DeleteSelection;
  qryWorkHourType.Refresh;
end;

procedure TfrmBAOHIEM_CauHinh.acOm_MoveUpdate(Sender: TObject);
begin
  inherited;
  acOm_Move.Enabled := gridLoaiCong_NghiOm.SelectedCount > 0;
end;

procedure TfrmBAOHIEM_CauHinh.acOm_MoveAllExecute(Sender: TObject);
begin
  inherited;
  gridLoaiCong_NghiOm.SelectAll;
  acOm_Move.Execute;
end;

procedure TfrmBAOHIEM_CauHinh.acOm_MoveAllUpdate(Sender: TObject);
begin
  inherited;
  acOm_MoveAll.Enabled := (qryLoaiCong_NghiOm.IsEmpty = false);
end;

procedure TfrmBAOHIEM_CauHinh.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryCauHinh.Close;
  qryChiTiet.Close;
  qryTyGia.Close;
  qryWorkHourType.Close;
  qryLoaiCong_NghiOm.Close;
  qryLoaiCong_NghiThaiSan.Close;
  qryLoaiCong_NghiKhongLuong.Close;
  qryLoaiCong_NDSPHSK_SauOm.Close;
  qryLoaiCong_NDSPHSK_SauTS.Close;
  qryLoaiCong_NDSPHSK_SauTNLD.Close;
end;

procedure TfrmBAOHIEM_CauHinh.qryLoaiCong_NghiOmBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
//khong xuat hien thong bao hoi
end;

procedure TfrmBAOHIEM_CauHinh.acKHH_AddExecute(Sender: TObject);
var
  i : integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  for i := 0 to gridWorkHour.SelectedCount - 1 do
  begin
    if not (qryLoaiCong_NghiThaiSan.State in [dsInsert, dsEdit]) then
      qryLoaiCong_NghiThaiSan.Insert;
    qryLoaiCong_NghiThaiSan.FieldByname('WHT_NO').Value :=
      gridWorkHour.SelectedNodes[i].Values[gridWorkHourWHT_NO.Index];
    qryLoaiCong_NghiThaiSan.FieldByname('WHT_NAME').Value :=
      gridWorkHour.SelectedNodes[i].Values[gridWorkHourWHT_NAME.Index];
    qryLoaiCong_NghiThaiSan.Post;
  end;
  qryWorkHourType.Refresh;
  Screen.Cursor := crDefault;
end;

procedure TfrmBAOHIEM_CauHinh.acKHH_AddUpdate(Sender: TObject);
begin
  inherited;
  acKHH_Add.Enabled := gridWorkHour.SelectedCount > 0;
end;

procedure TfrmBAOHIEM_CauHinh.acKHH_AddAllExecute(Sender: TObject);
begin
  inherited;
  gridWorkHour.SelectAll;
  acKHH_Add.Execute;
end;

procedure TfrmBAOHIEM_CauHinh.acKHH_AddAllUpdate(Sender: TObject);
begin
  inherited;
  acKHH_AddAll.Enabled := (qryWorkHourType.IsEmpty = false);
end;

procedure TfrmBAOHIEM_CauHinh.acKHH_MoveExecute(Sender: TObject);
begin
  inherited;
  gridLoaiCong_NghiThaiSan.DeleteSelection;
  qryWorkHourType.Refresh;
end;

procedure TfrmBAOHIEM_CauHinh.acKHH_MoveUpdate(Sender: TObject);
begin
  inherited;
  acKHH_Move.Enabled := gridLoaiCong_NghiThaiSan.SelectedCount > 0;
end;

procedure TfrmBAOHIEM_CauHinh.acKHH_MoveAllExecute(Sender: TObject);
begin
  inherited;
  gridLoaiCong_NghiThaiSan.SelectAll;
  acKHH_Move.Execute;
end;


procedure TfrmBAOHIEM_CauHinh.acKHH_MoveAllUpdate(Sender: TObject);
begin
  inherited;
  acKHH_MoveAll.Enabled := (qryLoaiCong_NghiThaiSan.IsEmpty = false);
end;


procedure TfrmBAOHIEM_CauHinh.acKhongLuong_AddExecute(Sender: TObject);
var
  i : integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  for i := 0 to gridWorkHour.SelectedCount - 1 do
  begin
    if not (qryLoaiCong_NghiKhongLuong.State in [dsInsert, dsEdit]) then
      qryLoaiCong_NghiKhongLuong.Insert;
    qryLoaiCong_NghiKhongLuong.FieldByname('WHT_NO').Value :=
      gridWorkHour.SelectedNodes[i].Values[gridWorkHourWHT_NO.Index];
    qryLoaiCong_NghiKhongLuong.FieldByname('WHT_NAME').Value :=
      gridWorkHour.SelectedNodes[i].Values[gridWorkHourWHT_NAME.Index];
    qryLoaiCong_NghiKhongLuong.Post;
  end;
  qryWorkHourType.Refresh;
  Screen.Cursor := crDefault;

end;




procedure TfrmBAOHIEM_CauHinh.acKhongLuong_AddUpdate(Sender: TObject);
begin
  inherited;
  acKhongLuong_Add.Enabled := gridWorkHour.SelectedCount > 0;
end;

procedure TfrmBAOHIEM_CauHinh.acKhongLuong_AddAllExecute(Sender: TObject);
begin
  inherited;
  gridWorkHour.SelectAll;
  acKhongLuong_Add.Execute;
end;

procedure TfrmBAOHIEM_CauHinh.acKhongLuong_AddAllUpdate(Sender: TObject);
begin
  inherited;
  acKhongLuong_Add.Enabled := (qryWorkHourType.IsEmpty = false);
end;

procedure TfrmBAOHIEM_CauHinh.acKhongLuong_MoveExecute(Sender: TObject);
begin
  inherited;
  gridLoaiCong_NghiKhongLuong.DeleteSelection;
  qryWorkHourType.Refresh;
end;


procedure TfrmBAOHIEM_CauHinh.acKhongLuong_MoveUpdate(Sender: TObject);
begin
  inherited;
  acKhongLuong_Move.Enabled := gridLoaiCong_NghiKhongLuong.SelectedCount > 0;
end;        

procedure TfrmBAOHIEM_CauHinh.acKhongLuong_MoveAllExecute(Sender: TObject);
begin
  inherited;
  gridLoaiCong_NghiKhongLuong.SelectAll;
  acKhongLuong_Move.Execute;
end;

procedure TfrmBAOHIEM_CauHinh.acKhongLuong_MoveAllUpdate(Sender: TObject);
begin
  inherited;
  acKhongLuong_MoveAll.Enabled := (qryLoaiCong_NghiKhongLuong.IsEmpty = false);
end; procedure TfrmBAOHIEM_CauHinh.qryLoaiCong_NghiThaiSanBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TfrmBAOHIEM_CauHinh.qryLoaiCong_NghiKhongLuongBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauOm_AddExecute(Sender: TObject);
var
  i : integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  for i := 0 to gridWorkHour.SelectedCount - 1 do
  begin
    if not (qryLoaiCong_NDSPHSK_SauOm.State in [dsInsert, dsEdit]) then
      qryLoaiCong_NDSPHSK_SauOm.Insert;
    qryLoaiCong_NDSPHSK_SauOm.FieldByname('WHT_NO').Value :=
      gridWorkHour.SelectedNodes[i].Values[gridWorkHourWHT_NO.Index];
    qryLoaiCong_NDSPHSK_SauOm.FieldByname('WHT_NAME').Value :=
      gridWorkHour.SelectedNodes[i].Values[gridWorkHourWHT_NAME.Index];
    qryLoaiCong_NDSPHSK_SauOm.Post;
  end;
  qryWorkHourType.Refresh;
  Screen.Cursor := crDefault;
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauOm_AddUpdate(Sender: TObject);
begin
  inherited;
  acDSPHSK_SauOm_Add.Enabled := gridWorkHour.SelectedCount > 0;
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauOm_AddAllExecute(
  Sender: TObject);
begin
  inherited;
  gridWorkHour.SelectAll;
  acDSPHSK_SauOm_Add.Execute;
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauOm_AddAllUpdate(Sender: TObject);
begin
  inherited;
  acDSPHSK_SauOm_AddAll.Enabled := (qryWorkHourType.IsEmpty = false);
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauOm_MoveExecute(Sender: TObject);
begin
  inherited;
  grid_Nghi_DSPHSK_SauOm.DeleteSelection;
  qryWorkHourType.Refresh;
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauOm_MoveUpdate(Sender: TObject);
begin
  inherited;
  acDSPHSK_SauOm_Move.Enabled := grid_Nghi_DSPHSK_SauOm.SelectedCount > 0;
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauOm_MoveAllExecute(
  Sender: TObject);
begin
  inherited;
  grid_Nghi_DSPHSK_SauOm.SelectAll;
  acDSPHSK_SauOm_Move.Execute;
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauOm_MoveAllUpdate(
  Sender: TObject);
begin
  inherited;
  acDSPHSK_SauOm_MoveAll.Enabled := (qryLoaiCong_NDSPHSK_SauOm.IsEmpty = false);
end;

procedure TfrmBAOHIEM_CauHinh.qryLoaiCong_NDSPHSK_SauOmBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauTS_AddExecute(Sender: TObject);
var
  i : integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  for i := 0 to gridWorkHour.SelectedCount - 1 do
  begin
    if not (qryLoaiCong_NDSPHSK_SauTS.State in [dsInsert, dsEdit]) then
      qryLoaiCong_NDSPHSK_SauTS.Insert;
    qryLoaiCong_NDSPHSK_SauTS.FieldByname('WHT_NO').Value :=
      gridWorkHour.SelectedNodes[i].Values[gridWorkHourWHT_NO.Index];
    qryLoaiCong_NDSPHSK_SauTS.FieldByname('WHT_NAME').Value :=
      gridWorkHour.SelectedNodes[i].Values[gridWorkHourWHT_NAME.Index];
    qryLoaiCong_NDSPHSK_SauTS.Post;
  end;
  qryWorkHourType.Refresh;
  Screen.Cursor := crDefault;
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauTS_AddAllExecute(
  Sender: TObject);
begin
  inherited;
  gridWorkHour.SelectAll;
  acDSPHSK_SauTS_Add.Execute;
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauTS_AddUpdate(Sender: TObject);
begin
  inherited;
  acDSPHSK_SauTS_Add.Enabled := gridWorkHour.SelectedCount > 0;
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauTS_AddAllUpdate(Sender: TObject);
begin
  inherited;
  acDSPHSK_SauTS_AddAll.Enabled := (qryWorkHourType.IsEmpty = false);
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauTS_MoveExecute(Sender: TObject);
begin
  inherited;
  grid_Nghi_DSPHSK_SauTS.DeleteSelection;
  qryWorkHourType.Refresh;
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauTS_MoveUpdate(Sender: TObject);
begin
  inherited;
  acDSPHSK_SauTS_Move.Enabled := grid_Nghi_DSPHSK_SauTS.SelectedCount > 0;
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauTS_MoveAllExecute(
  Sender: TObject);
begin
  inherited;
  grid_Nghi_DSPHSK_SauTS.SelectAll;
  acDSPHSK_SauTS_Move.Execute;
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauTS_MoveAllUpdate(
  Sender: TObject);
begin
  inherited;
  acDSPHSK_SauTS_MoveAll.Enabled := (qryLoaiCong_NDSPHSK_SauTS.IsEmpty = false);
end;

procedure TfrmBAOHIEM_CauHinh.qryLoaiCong_NDSPHSK_SauTSBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauTNLD_AddExecute(Sender: TObject);
var
  i : integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  for i := 0 to gridWorkHour.SelectedCount - 1 do
  begin
    if not (qryLoaiCong_NDSPHSK_SauTNLD.State in [dsInsert, dsEdit]) then
      qryLoaiCong_NDSPHSK_SauTNLD.Insert;
    qryLoaiCong_NDSPHSK_SauTNLD.FieldByname('WHT_NO').Value :=
      gridWorkHour.SelectedNodes[i].Values[gridWorkHourWHT_NO.Index];
    qryLoaiCong_NDSPHSK_SauTNLD.FieldByname('WHT_NAME').Value :=
      gridWorkHour.SelectedNodes[i].Values[gridWorkHourWHT_NAME.Index];
    qryLoaiCong_NDSPHSK_SauTNLD.Post;
  end;
  qryWorkHourType.Refresh;
  Screen.Cursor := crDefault;
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauTNLD_AddUpdate(Sender: TObject);
begin
  inherited;
  acDSPHSK_SauTNLD_Add.Enabled := gridWorkHour.SelectedCount > 0;
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauTNLD_AddAllExecute(
  Sender: TObject);
begin
  inherited;
  gridWorkHour.SelectAll;
  acDSPHSK_SauTNLD_Add.Execute;
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauTNLD_AddAllUpdate(
  Sender: TObject);
begin
  inherited;
  acDSPHSK_SauTNLD_AddAll.Enabled := (qryWorkHourType.IsEmpty = false);
end;
procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauTNLD_MoveExecute(
  Sender: TObject);
begin
  inherited;
  grid_Nghi_DSPHSK_SauTNLD.DeleteSelection;
  qryWorkHourType.Refresh;
end;


procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauTNLD_MoveUpdate(Sender: TObject);
begin
  inherited;
  acDSPHSK_SauTNLD_Move.Enabled := grid_Nghi_DSPHSK_SauTNLD.SelectedCount > 0;
end;

procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauTNLD_MoveAllExecute(
  Sender: TObject);
begin
  inherited;
  grid_Nghi_DSPHSK_SauTNLD.SelectAll;
  acDSPHSK_SauTNLD_Move.Execute;
end;
procedure TfrmBAOHIEM_CauHinh.acDSPHSK_SauTNLD_MoveAllUpdate(
  Sender: TObject);
begin
  inherited;
  acDSPHSK_SauTNLD_MoveAll.Enabled := (qryLoaiCong_NDSPHSK_SauTNLD.IsEmpty = false);
end;


procedure TfrmBAOHIEM_CauHinh.qryLoaiCong_NDSPHSK_SauTNLDBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
//
end;

end.
