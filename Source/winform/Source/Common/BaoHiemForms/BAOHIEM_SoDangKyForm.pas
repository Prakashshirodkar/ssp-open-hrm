//******************************************************************//
//************** Create form by THUYPTP - 01/09/2009 ***************//
//******************************************************************//
unit BAOHIEM_SoDangKyForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, StdCtrls, ElCLabel, ElLabel,
  ExtCtrls, ElPanel, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxTL, dxDBCtrl,
  dxDBGrid, ActnList, ElBtnCtl, ElPopBtn, ElSplit, DB, IBODataset, ElPgCtl,
  dxDBELib, dxGrClEx, dxDBTLCl, dxGrClms, ppDB, ppDBPipe, ppEndUsr, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppTypes;

type
  TfrmBAOHIEM_SoDangKy = class(TfrmEditBase)
    dxlcMainItem2: TdxLayoutItem;
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    dxlcMainGroup1: TdxLayoutGroup;
    dxlcMainItem3: TdxLayoutItem;
    dxSelectDept: TdxPopupEdit;
    dxlcMainItem4: TdxLayoutItem;
    dxViewChild: TdxCheckEdit;
    dxlcMainItem5: TdxLayoutItem;
    dximOption: TdxImageEdit;
    panelMain: TPanel;
    dxlcMainItem6: TdxLayoutItem;
    panelLeft: TPanel;
    gridSoDangKyBHXH: TdxDBGrid;
    dxlcMainItem7: TdxLayoutItem;
    dximPhanLoai: TdxImageEdit;
    ElPopupButton1: TElPopupButton;
    dxlcMainItem8: TdxLayoutItem;
    ActionList1: TActionList;
    acXemDS: TAction;
    ElSplitter1: TElSplitter;
    panelRight: TElPanel;
    qrySoDangKyBHXH: TIBOQuery;
    dsSoDangKyBHXH: TDataSource;
    qrySoDangKyBHXHEMPLOYEE_NO: TWideStringField;
    qrySoDangKyBHXHFULL_NAME: TWideStringField;
    qrySoDangKyBHXHMASO_BHXH: TWideStringField;
    qrySoDangKyBHXHNGAY_SINH: TDateField;
    qrySoDangKyBHXHNOI_SINH: TWideStringField;
    qrySoDangKyBHXHSO_CMND: TWideStringField;
    qrySoDangKyBHXHNGAYCAP_CMND: TDateField;
    qrySoDangKyBHXHMATINH_CAP_CMND: TWideStringField;
    qrySoDangKyBHXHNOICAP_CMND: TWideStringField;
    qrySoDangKyBHXHDIACHI_THUONGTRU: TWideStringField;
    qrySoDangKyBHXHGIOI_TINH: TSmallintField;
    qrySoDangKyBHXHDAN_TOC: TWideStringField;
    qrySoDangKyBHXHQUOC_TICH: TWideStringField;
    qrySoDangKyBHXHCHUCVU_NGHENGHIEP: TWideStringField;
    qrySoDangKyBHXHTHANG_BDTG: TSmallintField;
    qrySoDangKyBHXHNAM_BDTG: TIntegerField;
    qrySoDangKyBHXHID_BAOHIEM_SODANGKY: TIntegerField;
    gridSoDangKyBHXHEMPLOYEE_NO: TdxDBGridColumn;
    gridSoDangKyBHXHFULL_NAME: TdxDBGridColumn;
    gridSoDangKyBHXHMASO_BHXH: TdxDBGridColumn;
    panelTop: TElPanel;
    ElSplitter2: TElSplitter;
    pageChiTiet: TElPageControl;
    tabQT_PhieuKCB: TElTabSheet;
    tabQT_DongHienTai: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxDBSpinEdit2: TdxDBSpinEdit;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxDBDateEdit1: TdxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dbimGENDER: TdxDBImageEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxDBEdit4: TdxDBEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxDBPopupEdit2: TdxDBPopupEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxDBMaskEdit1: TdxDBMaskEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxDBEdit6: TdxDBEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxDBEdit5: TdxDBEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxDBPopupEdit3: TdxDBPopupEdit;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxDBPopupEdit1: TdxDBPopupEdit;
    dxLayoutControl1Group5: TdxLayoutGroup;
    qrySoDangKyBHXHTEN_DAN_TOC: TWideStringField;
    qrySoDangKyBHXHTEN_QUOC_TICH: TWideStringField;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item14: TdxLayoutItem;
    acUpdateEmpInfo: TAction;
    qryUpdateEmpInfo: TIBOQuery;
    qryQT_ThayDoiPhieuKCB: TIBOQuery;
    dsQT_ThayDoiPhieuKCB: TDataSource;
    qryQT_ThayDoiPhieuKCBID_BAOHIEM_PHIEUKCB: TIntegerField;
    qryQT_ThayDoiPhieuKCBID_BAOHIEM_SODANGKY: TIntegerField;
    qryQT_ThayDoiPhieuKCBSOPHIEU_KCB: TWideStringField;
    qryQT_ThayDoiPhieuKCBID_BAOHIEM_BENHVIEN: TIntegerField;
    qryQT_ThayDoiPhieuKCBDANGKY_TUNGAY: TDateField;
    qryQT_ThayDoiPhieuKCBDANGKY_DENNGAY: TDateField;
    qryQT_ThayDoiPhieuKCBTEN_BENHVIEN: TWideStringField;
    qryQT_ThayDoiPhieuKCBTEN_TINH_THANHPHO: TWideStringField;
    qryQT_ThayDoiPhieuKCBTINH_TRANG: TSmallintField;
    acNhapNhanh_PhieuKCB: TAction;
    gridSoDangKyBHXHID_BAOHIEM_SODANGKY: TdxDBGridColumn;
    qrySoDangKyBHXHTHAMGIA_BHTN: TSmallintField;
    qrySoDangKyBHXHTHAMGIA_BHTN_TUTHANG: TSmallintField;
    qrySoDangKyBHXHTHAMGIA_BHTN_TUNAM: TIntegerField;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxDBSpinEdit3: TdxDBSpinEdit;
    dxDBSpinEdit4: TdxDBSpinEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxSelectTemplate: TdxPopupEdit;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    rpToKhaiBHXH: TppReport;
    dsnToKhaiBHXH: TppDesigner;
    ppSoBHXH: TppDBPipeline;
    acXem: TAction;
    acThietKe: TAction;
    acIn: TAction;
    qryToKhaiBHXH: TIBOQuery;
    dsToKhaiBHXH: TDataSource;
    qryToKhaiBHXHMA_NHANVIEN: TWideStringField;
    qryToKhaiBHXHHO_TEN: TWideStringField;
    qryToKhaiBHXHGIOI_TINH: TSmallintField;
    qryToKhaiBHXHNGAY_SINH: TDateField;
    qryToKhaiBHXHDAN_TOC: TWideStringField;
    qryToKhaiBHXHQUOC_TICH: TWideStringField;
    qryToKhaiBHXHNGUYEN_QUAN: TWideStringField;
    qryToKhaiBHXHDIACHI_THUONGTRU: TWideStringField;
    qryToKhaiBHXHDIACHI_TAMTRU: TWideStringField;
    qryToKhaiBHXHSO_CMND: TWideStringField;
    qryToKhaiBHXHNGAYCAP_CMND: TDateField;
    qryToKhaiBHXHNOICAP_CMND: TWideStringField;
    qryToKhaiBHXHSO_HDLD: TWideStringField;
    qryToKhaiBHXHNGAYKY_HDLD: TDateField;
    qryToKhaiBHXHLOAI_HDLD: TWideStringField;
    qryToKhaiBHXHCHUC_VU: TWideStringField;
    qryToKhaiBHXHID_BAOHIEM_SODANGKY: TIntegerField;
    qryToKhaiBHXHMASO_BHXH: TWideStringField;
    qryToKhaiBHXHTIEN_LUONG: TIBOFloatField;
    qryToKhaiBHXHPC_CHUCVU: TIBOFloatField;
    qryToKhaiBHXHPC_TRACHNHIEM_VK: TIBOFloatField;
    qryToKhaiBHXHPC_TN_NGHE: TIBOFloatField;
    qryToKhaiBHXHPC_KHAC: TIBOFloatField;
    qryToKhaiBHXHMA_BENHVIEN: TWideStringField;
    qryToKhaiBHXHTEN_BENHVIEN: TWideStringField;
    qryToKhaiBHXHMA_TINH_THANHPHO: TWideStringField;
    qryToKhaiBHXHTEN_TINH_THANHPHO: TWideStringField;
    qryToKhaiBHXHKT01: TWideStringField;
    qryToKhaiBHXHKT02: TWideStringField;
    qryToKhaiBHXHKT03: TWideStringField;
    qryToKhaiBHXHKT04: TWideStringField;
    qryToKhaiBHXHKT05: TWideStringField;
    qryToKhaiBHXHKT06: TWideStringField;
    qryToKhaiBHXHKT07: TWideStringField;
    qryToKhaiBHXHKT08: TWideStringField;
    qryToKhaiBHXHKT09: TWideStringField;
    qryToKhaiBHXHKT10: TWideStringField;
    qryToKhaiBHXHTU_THANGNAM: TWideStringField;
    qryToKhaiBHXHDEN_THANGNAM: TWideStringField;
    qryQT_ThayDoiPhieuKCBNGAY_TRATHE: TDateField;
    tabQT_DongTruocDay: TElTabSheet;
    gridQT_ThayDoiPhieuKCB: TdxDBGrid;
    gridQT_ThayDoiPhieuKCBSOPHIEU_KCB: TdxDBGridColumn;
    gridQT_ThayDoiPhieuKCBTEN_BENHVIEN: TdxDBGridPopupColumn;
    gridQT_ThayDoiPhieuKCBTEN_TINH_THANHPHO: TdxDBGridColumn;
    gridQT_ThayDoiPhieuKCBDANGKY_TUNGAY: TdxDBGridDateColumn;
    gridQT_ThayDoiPhieuKCBDANGKY_DENNGAY: TdxDBGridDateColumn;
    gridQT_ThayDoiPhieuKCBTINH_TRANG: TdxDBGridImageColumn;
    gridQT_ThayDoiPhieuKCBNGAY_TRATHE: TdxDBGridDateColumn;
    qryQT_DongHienTai: TIBOQuery;
    dsQT_DongHienTai: TDataSource;
    qryQT_DongHienTaiID_BAOHIEM_QT_DONG_HIENTAI: TIntegerField;
    qryQT_DongHienTaiID_BAOHIEM_SODANGKY: TIntegerField;
    qryQT_DongHienTaiTU_THANG: TIntegerField;
    qryQT_DongHienTaiTU_NAM: TIntegerField;
    qryQT_DongHienTaiTIEN_LUONG: TIBOFloatField;
    qryQT_DongHienTaiTILE_NLD_NOP: TIBOFloatField;
    qryQT_DongHienTaiTILE_DN_NOP: TIBOFloatField;
    qryQT_DongHienTaiGHI_CHU: TWideStringField;
    gridQT_DongHienTai: TdxDBGrid;
    gridQT_DongHienTaiTU_THANG: TdxDBGridSpinColumn;
    gridQT_DongHienTaiTU_NAM: TdxDBGridSpinColumn;
    gridQT_DongHienTaiTIEN_LUONG: TdxDBGridCalcColumn;
    gridQT_DongHienTaiGHI_CHU: TdxDBGridColumn;
    qryQT_DongHienTaiTILE_NOP: TIBOFloatField;
    qryQT_DongTruocDay: TIBOQuery;
    dsQT_DongTruocDay: TDataSource;
    qryQT_DongTruocDayID_BAOHIEM_QT_DONG_TRUOCDAY: TIntegerField;
    qryQT_DongTruocDayID_BAOHIEM_SODANGKY: TIntegerField;
    qryQT_DongTruocDayTU_THANG: TIntegerField;
    qryQT_DongTruocDayTU_NAM: TIntegerField;
    qryQT_DongTruocDayTIEN_LUONG: TIBOFloatField;
    qryQT_DongTruocDayTILE_NLD_NOP: TIBOFloatField;
    qryQT_DongTruocDayTILE_DN_NOP: TIBOFloatField;
    qryQT_DongTruocDayGHI_CHU: TWideStringField;
    qryQT_DongTruocDayTILE_NOP: TIBOFloatField;
    qryQT_DongHienTaiPHU_CAP: TIBOFloatField;
    qryQT_DongHienTaiTIENNOP_BAOHIEM: TIBOFloatField;
    gridQT_DongHienTaiPHU_CAP: TdxDBGridCalcColumn;
    qryQT_DongTruocDayPHU_CAP: TIBOFloatField;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxDBDateEdit2: TdxDBDateEdit;
    dxLayoutControl1Group8: TdxLayoutGroup;
    panelBottom: TElPanel;
    qryQT_DongHienTaiTILE_BHXH_NLD_NOP: TIBOFloatField;
    qryQT_DongHienTaiTT_BHXH_NLD_NOP: TIBOFloatField;
    qryQT_DongHienTaiTILE_BHYT_NLD_NOP: TIBOFloatField;
    qryQT_DongHienTaiTT_BHYT_NLD_NOP: TIBOFloatField;
    qryQT_DongHienTaiTILE_BHTN_NLD_NOP: TIBOFloatField;
    qryQT_DongHienTaiTT_BHTN_NLD_NOP: TIBOFloatField;
    qryQT_DongHienTaiTILE_BHXH_DN_NOP: TIBOFloatField;
    qryQT_DongHienTaiTT_BHXH_DN_NOP: TIBOFloatField;
    qryQT_DongHienTaiTILE_BHYT_DN_NOP: TIBOFloatField;
    qryQT_DongHienTaiTT_BHYT_DN_NOP: TIBOFloatField;
    qryQT_DongHienTaiTILE_BHTN_DN_NOP: TIBOFloatField;
    qryQT_DongHienTaiTT_BHTN_DN_NOP: TIBOFloatField;
    gridQT_DongHienTaiTILE_BHXH_NLD_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTT_BHXH_NLD_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTILE_BHYT_NLD_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTT_BHYT_NLD_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTILE_BHTN_NLD_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTT_BHTN_NLD_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTILE_NLD_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTILE_BHXH_DN_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTT_BHXH_DN_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTILE_BHYT_DN_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTT_BHYT_DN_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTILE_BHTN_DN_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTT_BHTN_DN_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTILE_DN_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTILE_NOP: TdxDBGridCalcColumn;
    gridQT_DongHienTaiTIENNOP_BAOHIEM: TdxDBGridCalcColumn;
    qryQT_DongTruocDayTILE_BHXH_NLD_NOP: TIBOFloatField;
    qryQT_DongTruocDayTILE_BHYT_NLD_NOP: TIBOFloatField;
    qryQT_DongTruocDayTILE_BHXH_DN_NOP: TIBOFloatField;
    qryQT_DongTruocDayTILE_BHYT_DN_NOP: TIBOFloatField;
    qryQT_DongTruocDayTILE_BHTN_DN_NOP: TIBOFloatField;
    qryQT_DongTruocDayTILE_BHTN_NLD_NOP: TIBOFloatField;
    qryQT_DongTruocDayTT_BHXH_NLD_NOP: TIBOFloatField;
    qryQT_DongTruocDayTT_BHYT_NLD_NOP: TIBOFloatField;
    qryQT_DongTruocDayTT_BHTN_NLD_NOP: TIBOFloatField;
    qryQT_DongTruocDayTT_BHXH_DN_NOP: TIBOFloatField;
    qryQT_DongTruocDayTT_BHYT_DN_NOP: TIBOFloatField;
    qryQT_DongTruocDayTT_BHTN_DN_NOP: TIBOFloatField;
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
    qryQT_DongTruocDayTIENNOP_BAOHIEM: TIBOFloatField;
    qryExecute: TIBOQuery;
    qryToKhaiBHXHSOPHIEU_KCB: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxSelectDeptInitPopup(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxSelectDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectDeptChange(Sender: TObject);
    procedure acXemDSExecute(Sender: TObject);
    procedure dxDBPopupEdit2InitPopup(Sender: TObject);
    procedure dxDBPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit3InitPopup(Sender: TObject);
    procedure dxDBPopupEdit3CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit1InitPopup(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure acUpdateEmpInfoExecute(Sender: TObject);
    procedure acUpdateEmpInfoUpdate(Sender: TObject);
    procedure qrySoDangKyBHXHAfterDelete(DataSet: TDataSet);
    procedure gridQT_ThayDoiPhieuKCBTEN_BENHVIENInitPopup(Sender: TObject);
    procedure gridQT_ThayDoiPhieuKCBTEN_BENHVIENCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure acNhapNhanh_PhieuKCBExecute(Sender: TObject);
    procedure acNhapNhanh_PhieuKCBUpdate(Sender: TObject);
    procedure dxSelectTemplateInitPopup(Sender: TObject);
    procedure dxSelectTemplateCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxSelectTemplateChange(Sender: TObject);
    function PrepareReport: boolean;
    procedure acXemExecute(Sender: TObject);
    procedure acThietKeExecute(Sender: TObject);
    procedure acInExecute(Sender: TObject);
    procedure acXemUpdate(Sender: TObject);
    procedure acThietKeUpdate(Sender: TObject);
    procedure acInUpdate(Sender: TObject);
  private
    { Private declarations }
    F_DEPT_NO, F_TEMPLATE_PATH : widestring;
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_SoDangKy: TfrmBAOHIEM_SoDangKy;

implementation

uses PopupMainForm, MainDM, SSP_Library, PopupBaoHiemForm, BAOHIEM_NhapPhieu_KCBForm;

{$R *.dfm}

procedure TfrmBAOHIEM_SoDangKy.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qrySoDangKyBHXH.Close;
  qryQT_ThayDoiPhieuKCB.Close;
  qryQT_DongHienTai.Close;
  qryQT_DongTruocDay.Close;  
  Action := caFree;
  frmBAOHIEM_SoDangKy := nil;
end;

procedure TfrmBAOHIEM_SoDangKy.dxSelectDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmBAOHIEM_SoDangKy.FormCreate(Sender: TObject);
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

  dbimGENDER.Descriptions.Add(Utf8Decode('Nữ'));
  dbimGENDER.Descriptions.Add(Utf8Decode('Nam'));
  dbimGENDER.Values.Add('0');
  dbimGENDER.Values.Add('1');
  dbimGENDER.ImageIndexes.Add('0');
  dbimGENDER.ImageIndexes.Add('1');
  inherited;
  acXemDS.Execute;
  pageChiTiet.ActivePage := tabQT_PhieuKCB; 
end;

procedure TfrmBAOHIEM_SoDangKy.dxSelectDeptCloseUp(Sender: TObject;
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

procedure TfrmBAOHIEM_SoDangKy.dxSelectDeptChange(Sender: TObject);
begin
  inherited;
  if Length(dxSelectDept.Text) = 0 then
    F_DEPT_NO := '';
end;

procedure TfrmBAOHIEM_SoDangKy.acXemDSExecute(Sender: TObject);
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

  qryQT_ThayDoiPhieuKCB.Open;
  qryQT_DongHienTai.open;
  qryQT_DongTruocDay.open;
end;

procedure TfrmBAOHIEM_SoDangKy.dxDBPopupEdit2InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryRaceList.Open;
  InitPopupControl('dxlcRaceList',frmPopupMain,sender,2);
end;

procedure TfrmBAOHIEM_SoDangKy.dxDBPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupMain.qryRaceList,qrySoDangKyBHXH,
               'RACE_NO;RACE_NAME','DAN_TOC;TEN_DAN_TOC',
               'RACE_NAME',Text);
    frmPopupMain.qryRaceList.Close;
end;

procedure TfrmBAOHIEM_SoDangKy.dxDBPopupEdit3InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryNationList.Open;
  InitPopupControl('dxlcNationList',frmPopupMain,sender,2);
end;

procedure TfrmBAOHIEM_SoDangKy.dxDBPopupEdit3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryNationList,qrySoDangKyBHXH,
               'NATION_NO;NATION_NAME','QUOC_TICH;TEN_QUOC_TICH',
               'NATION_NAME',Text);
  frmPopupMain.qryNationList.Close;
end;

procedure TfrmBAOHIEM_SoDangKy.dxDBPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryBaoHiem_TinhThanhPho.Open;
  InitPopupControl('dxlcBaoHiem_TinhThanhPho',frmPopupMain, sender, 2);
end;

procedure TfrmBAOHIEM_SoDangKy.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryBaoHiem_TinhThanhPho, qrySoDangKyBHXH,
    'MA_TINH_THANHPHO;TEN_TINH_THANHPHO', 'MATINH_CAP_CMND;NOICAP_CMND',
    'MA_TINH_THANHPHO', Text);
  frmPopupMain.qryBaoHiem_TinhThanhPho.Close;
end;

procedure TfrmBAOHIEM_SoDangKy.acUpdateEmpInfoExecute(Sender: TObject);
begin
  inherited;
  qryUpdateEmpInfo.ParamByName('ID_BAOHIEM_SODANGKY').Value := qrySoDangKyBHXHID_BAOHIEM_SODANGKY.Value;
  qryUpdateEmpInfo.ParamByName('EMPLOYEE_NO').Value := qrySoDangKyBHXHEMPLOYEE_NO.Value;
  dmmain.ExecuteSQL(qryUpdateEmpInfo);
  qrySoDangKyBHXH.Refresh;
end;

procedure TfrmBAOHIEM_SoDangKy.acUpdateEmpInfoUpdate(Sender: TObject);
begin
  inherited;
  acUpdateEmpInfo.Enabled := not (qrySoDangKyBHXH.IsEmpty);
end;

procedure TfrmBAOHIEM_SoDangKy.qrySoDangKyBHXHAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  qrySoDangKyBHXH.Refresh;  
end;

procedure TfrmBAOHIEM_SoDangKy.gridQT_ThayDoiPhieuKCBTEN_BENHVIENInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupBaoHiem.qryBaoHiem_BenhVien.Open;
  InitPopupControl('dxlcBaoHiem_BenhVien',frmPopupBaoHiem, sender, 2,gridQT_ThayDoiPhieuKCB);
end;

procedure TfrmBAOHIEM_SoDangKy.gridQT_ThayDoiPhieuKCBTEN_BENHVIENCloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupBaoHiem.qryBaoHiem_BenhVien, qryQT_ThayDoiPhieuKCB,
    'ID_BAOHIEM_BENHVIEN;TEN_BENHVIEN;TEN_TINH_THANHPHO', 'ID_BAOHIEM_BENHVIEN;TEN_BENHVIEN;TEN_TINH_THANHPHO',
    'TEN_BENHVIEN', Text);
  frmPopupBaoHiem.qryBaoHiem_BenhVien.Close;
end;

procedure TfrmBAOHIEM_SoDangKy.acNhapNhanh_PhieuKCBExecute(
  Sender: TObject);
begin
  inherited;
  if Assigned(frmBAOHIEM_NhapPhieu_KCB) then
     frmBAOHIEM_NhapPhieu_KCB.BringToFront
  else
  begin
    frmBAOHIEM_NhapPhieu_KCB:=TfrmBAOHIEM_NhapPhieu_KCB.Create(self);
    frmBAOHIEM_NhapPhieu_KCB.Show;
  end;
end;

procedure TfrmBAOHIEM_SoDangKy.acNhapNhanh_PhieuKCBUpdate(Sender: TObject);
begin
  inherited;
  acNhapNhanh_PhieuKCB.Enabled := not (qrySoDangKyBHXH.IsEmpty); 
end;

procedure TfrmBAOHIEM_SoDangKy.dxSelectTemplateInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryReportTemplateList.ParamByname('TEMPLATE_TYPE').Value := 7;
  frmPopupMain.qryReportTemplateList.Open;
  InitPopupControl('dxlcReportTemplateList', frmPopupMain, sender, 2.5);
end;

procedure TfrmBAOHIEM_SoDangKy.dxSelectTemplateCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryReportTemplateListTEMPLATE_NAME.Value;
    F_TEMPLATE_PATH := frmPopupMain.qryReportTemplateListTEMPLATE_FILE.AsString;
  end;
  frmPopupMain.qryReportTemplateList.Close;
end;

procedure TfrmBAOHIEM_SoDangKy.dxSelectTemplateChange(Sender: TObject);
begin
  inherited;
  if Length(dxSelectTemplate.Text) = 0 then
    F_TEMPLATE_PATH := '';
end;

function TfrmBAOHIEM_SoDangKy.PrepareReport: boolean;
var
  pathName, pathDirectory: string;
  i : integer;
  dieu_kien : WideString;
begin
  dieu_kien := '';
  //Xoa bang tam ghi nhan NV xem to khai BHXH */
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text := 'DELETE FROM HR_BAOHIEM_TOKHAI_EMPLOYEE;';
  dmMain.ExecuteSQL(qryExecute);
  dmMain.CommitTransaction;

  // Them vao bang tam cac NV can xem to khai BHXH
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text := 'INSERT INTO HR_BAOHIEM_TOKHAI_EMPLOYEE (EMPLOYEE_NO) VALUES (:EMPLOYEE_NO);';
  for i:= 0 to gridSoDangKyBHXH.SelectedCount -1 do
  begin
    //dieu_kien := dieu_kien + '''' + gridSoDangKyBHXH.SelectedNodes[i].Values[gridSoDangKyBHXHEMPLOYEE_NO.Index] + ''',';
    qryExecute.ParamByName('EMPLOYEE_NO').Value := gridSoDangKyBHXH.SelectedNodes[i].Values[gridSoDangKyBHXHEMPLOYEE_NO.Index];
    dmMain.ExecuteSQL(qryExecute);  
  end;
  //dieu_kien := copy(dieu_kien,1, length(dieu_kien)-1);

  if qryToKhaiBHXH.Active then qryToKhaiBHXH.Close;
  //qryToKhaiBHXH.SQLWhere.Text := 'WHERE MA_NHANVIEN IN (' + dieu_kien + ')';  
  qryToKhaiBHXH.Open;     

  try
    pathDirectory := ExtractFilePath(Application.ExeName) +
      'Reports\BaoHiemReports';
    case sysConfig.Language of
      0, 1:
        pathName := pathDirectory + '\Vn\' + F_TEMPLATE_PATH;
      2:
        pathName := pathDirectory + '\Eng\' + F_TEMPLATE_PATH;
    end;
    if (FileExists(pathName)) then
    begin
      rpToKhaiBHXH.Template.FileName := pathName;
      rpToKhaiBHXH.Template.Load;
    end
    else
    begin
      ShowMessageUnicode(24);
      Result := false;
      exit;
    end;
  except
    result := false;
    exit;
  end;
  result := true;
end;

procedure TfrmBAOHIEM_SoDangKy.acXemExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  dmMain.DefOnBeforePrint(true, qryToKhaiBHXH, self);
  rpToKhaiBHXH.AllowPrintToFile := True;
  rpToKhaiBHXH.DeviceType := dtScreen;
  rpToKhaiBHXH.Print;
end;

procedure TfrmBAOHIEM_SoDangKy.acThietKeExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  dmMain.DefOnBeforePrint(true, qryToKhaiBHXH, self);
  dsnToKhaiBHXH.ShowModal;
  rpToKhaiBHXH.PrintToDevices;
end;

procedure TfrmBAOHIEM_SoDangKy.acInExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  dmMain.DefOnBeforePrint(true, qryToKhaiBHXH, self);
  rpToKhaiBHXH.AllowPrintToFile := True;
  rpToKhaiBHXH.DeviceType := dtPrinter;
  rpToKhaiBHXH.Print;
end;

procedure TfrmBAOHIEM_SoDangKy.acXemUpdate(Sender: TObject);
begin
  inherited;
  acXem.Enabled := (gridSoDangKyBHXH.SelectedCount >0 );
end;

procedure TfrmBAOHIEM_SoDangKy.acThietKeUpdate(Sender: TObject);
begin
  inherited;
  acThietKe.Enabled := (gridSoDangKyBHXH.SelectedCount >0 );
end;

procedure TfrmBAOHIEM_SoDangKy.acInUpdate(Sender: TObject);
begin
  inherited;
  acIn.Enabled := (gridSoDangKyBHXH.SelectedCount >0 );
end;

end.
