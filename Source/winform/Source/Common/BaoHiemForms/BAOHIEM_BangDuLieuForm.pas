//******************************************************************//
//************** Create form by THUYPTP - 06/09/2009 ***************//
//******************************************************************//
unit BAOHIEM_BangDuLieuForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  ElPanel, ElSplit, dxLayoutControl, dxTL, dxDBCtrl, dxCntner, dxDBTL,
  cxControls, ElPgCtl, ExtCtrls, DB, dxmdaset, IBODataset, ImgList, dxBar,
  ActnList, SSP_Script, ToolbarFrame, dxEdLib, ElBtnCtl, ElPopBtn,
  dxDBGrid, dxEditor, StdCtrls, ElCLabel, ElLabel, dxGrClms, dxBarExtItems,
  Registry, IB_Components, IB_Process, IB_Script, ppDB, ppDBPipe, ppEndUsr,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls, ppTypes, dxDBTLCl;

const
  s_select =
    ' SELECT DISTINCT BAOHIEM_KEY_ID ' +
    ' , MA_NHANVIEN ' +
    ' , LAST_NAME||'' ''||MIDDLE_NAME||'' ''||FIRST_NAME FULL_NAME ' +
    ' , MA_DONVI ' +
    ' , DEPT_NAME ' +
    ' , MA_CHUCVU ' +
    ' , TITLE_NAME ' +
    ' , MA_THANG ' +
    ' , MA_NAM ' +
    ' , MA_DOT ' +
    ' , PHAN_NHOM ' +
    ' , SO_DANGKY_BHXH ' +
    ' , BAOHIEM_CAUHINH_ID ' +
    ' , SOPHIEU_KCB ' +
    ' , NGAY_APDUNG ';
  s_leftjoin =
    ' left join HR_EMPLOYEE on MA_NHANVIEN=HR_EMPLOYEE.EMPLOYEE_NO ' +
    ' left join HR_DEPARTMENT ON MA_DONVI=HR_DEPARTMENT.DEPT_NO ' +
    ' left join HR_TITLE on MA_CHUCVU=HR_TITLE.TITLE_NO ' +
    ' left join HR_BAOHIEM_CAUHINH ON HR_BAOHIEM_CAUHINH.KEY_ID = BAOHIEM_CAUHINH_ID ';
  s_where =
    ' where (MA_THANG=:THANG) and (MA_NAM=:NAM) and (MA_DOT=:DOT) AND ' +
    ' ((:VIEW_ALL=0 and MA_DONVI=:DEPT_NO) or ' +
    '  (:VIEW_ALL=1 and (DEPT_LEFT_INDEX>=:LEFT_INDEX) and (DEPT_RIGHT_INDEX<=:RIGHT_INDEX))' +
    ' ) order by PHAN_NHOM, SO_DANGKY_BHXH ';

type
  TTimeSpend = record
    begin_time, end_time: TTime;
    total_time: Double;
  end;
  TfrmBAOHIEM_BangDuLieu = class(TfrmBase)
    imgMenuList: TImageList;
    qryDuLieuBH: TIBOQuery;
    memDuLieuBH: TdxMemData;
    memDuLieuBHKEY_ID: TStringField;
    memDuLieuBHP_ID: TStringField;
    memDuLieuBHTHANG_ID: TIntegerField;
    memDuLieuBHTIEU_DE: TWideStringField;
    memDuLieuBHIMG_INDEX: TIntegerField;
    memDuLieuBHMAU_KYHIEU: TWideStringField;
    memDuLieuBHTHANG: TIntegerField;
    memDuLieuBHNAM: TIntegerField;
    memDuLieuBHMAU_ID: TIntegerField;
    dsDuLieuBH: TDataSource;
    panelLeft: TPanel;
    pageControl: TElPageControl;
    ElTabSheet1: TElTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    tlBangDuLieu: TdxDBTreeList;
    tlBangDuLieuTIEU_DE: TdxDBTreeListColumn;
    tlBangDuLieuIMG_INDEX: TdxDBTreeListColumn;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    ElSplitter1: TElSplitter;
    qryDuLieuBHTHANG_ID: TIntegerField;
    qryDuLieuBHDOT: TIntegerField;
    qryDuLieuBHTHANG: TIntegerField;
    qryDuLieuBHNAM: TIntegerField;
    qryDuLieuBHTHANG_NAM: TIntegerField;
    qryDuLieuBHMAU_ID: TIntegerField;
    qryDuLieuBHMAU_KYHIEU: TWideStringField;
    qryDuLieuBHTIEU_DE: TWideStringField;
    memDuLieuBHDOT: TIntegerField;
    ActionList1: TActionList;
    acRefreshBangDuLieu: TAction;
    dxBarManager1: TdxBarManager;
    imlIcon: TImageList;
    dxBarSubItem1: TdxBarSubItem;
    dxDangKyMoiBangDL: TdxBarButton;
    dxHieuChinhBangDL: TdxBarButton;
    dxXoaBangDuLieu: TdxBarButton;
    acDangKyMoiBangDL: TAction;
    acHieuChinhBangDL: TAction;
    acXoaBangDL: TAction;
    menuPop: TdxBarPopupMenu;
    mainPanel: TElPanel;
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    pageContent: TElPageControl;
    tabIntroduce: TElTabSheet;
    dxlcDeptList: TdxLayoutControl;
    tlDeptList: TdxDBTreeList;
    tlDeptListDEPT_NAME: TdxDBTreeListColumn;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxMauin: TdxPopupEdit;
    dxlcMauin: TdxLayoutControl;
    gridMauin: TdxDBGrid;
    gridMauinTIEUDE_MAUIN: TdxDBGridColumn;
    gridMauinFILE_NAME: TdxDBGridColumn;
    ElPopupButton1: TElPopupButton;
    ElPopupButton3: TElPopupButton;
    ElPopupButton4: TElPopupButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxlcMauinItem2: TdxLayoutItem;
    dxlcMauinItem3: TdxLayoutItem;
    dxlcMauinItem4: TdxLayoutItem;
    tabVIewDetail: TElTabSheet;
    panelView: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    dxBarDockControl2: TdxBarDockControl;
    dxChonDonvi: TdxPopupEdit;
    dxCapduoi: TdxCheckEdit;
    ElPopupButton2: TElPopupButton;
    gridData: TdxDBGrid;
    gridDataMA_NHANVIEN: TdxDBGridColumn;
    gridDataFULL_NAME: TdxDBGridColumn;
    gridDataDEPT_NAME: TdxDBGridColumn;
    gridDataTITLE_NAME: TdxDBGridColumn;
    gridDataMA_THANG: TdxDBGridColumn;
    gridDataMA_NAM: TdxDBGridColumn;
    gridDataBAOHIEM_KEY_ID: TdxDBGridColumn;
    frameToolbar1: TframeToolbar;
    dxChophepHieuchinh: TdxCheckEdit;
    dxShowError: TdxCheckEdit;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutControl2Group4: TdxLayoutGroup;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxLayoutControl2Item7: TdxLayoutItem;
    dxLayoutControl2Item8: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Item9: TdxLayoutItem;
    dxKhoiTaoDuLieu: TdxBarButton;
    acKhoiTaoDuLieu: TAction;
    dxNhapLieuNhanh: TdxBarButton;
    acNhapLieuNhanh: TAction;
    dxTinhKetQua: TdxBarButton;
    acTinhKetQua: TAction;
    qryData: TIBOQuery;
    qryDataBAOHIEM_KEY_ID: TIntegerField;
    qryDataMA_NHANVIEN: TWideStringField;
    qryDataFULL_NAME: TWideStringField;
    qryDataMA_DONVI: TWideStringField;
    qryDataDEPT_NAME: TWideStringField;
    qryDataMA_CHUCVU: TWideStringField;
    qryDataTITLE_NAME: TWideStringField;
    qryDataMA_THANG: TIntegerField;
    qryDataMA_NAM: TIntegerField;
    dsData: TDataSource;
    gridDataSO_DANGKY_BHXH: TdxDBGridColumn;
    acChiTietBangDuLieu: TAction;
    qryCongthuc: TIBOQuery;
    qrySession: TIBOQuery;
    acXemData: TAction;
    qryDeptList: TIBOQuery;
    qryDeptListDEPT_NO: TWideStringField;
    qryDeptListDEPT_NAME: TWideStringField;
    qryDeptListP_DEPT_NO: TWideStringField;
    qryDeptListLEFT_INDEX: TIntegerField;
    qryDeptListRIGHT_INDEX: TIntegerField;
    dsDeptList: TDataSource;
    dxChonMauIn: TdxBarControlContainerItem;
    dxXemMauIn: TdxBarButton;
    acXemMauIn: TAction;
    acThietKe: TAction;
    acIn: TAction;
    dxThietke: TdxBarButton;
    dxIn: TdxBarButton;
    qryCongthucMAU_ID: TIntegerField;
    qryCongthucCT_MA: TIntegerField;
    qryCongthucCT_KYHIEU: TWideStringField;
    qryCongthucCT_TIEUDE: TWideStringField;
    qryCongthucCT_KIEUDULIEU: TWideStringField;
    qryCongthucCT_BIEUTHUC: TWideStringField;
    qryCongthucCT_HINHTHUC_NHAPLIEU: TWideStringField;
    qryCongthucCT_THUTU_TINH: TIntegerField;
    qryCongthucCT_THUTU_HIENTHI: TIntegerField;
    qryCongthucCT_SESSION: TIntegerField;
    qryCongthucCT_WIDTH: TIntegerField;
    qryCongthucS_BEFORE_SCRIPT: TWideStringField;
    qryCongthucS_AFTER_SCRIPT: TWideStringField;
    qryCongthucS_REFRESH: TIntegerField;
    qryCongthucS_EXEC_BEFORE: TIntegerField;
    qryCongthucS_EXEC_AFTER: TIntegerField;
    qrySessionMAU_ID: TIntegerField;
    qrySessionS_MA: TIntegerField;
    qrySessionS_TIEUDE: TWideStringField;
    qrySessionS_BEFORE_SCRIPT: TWideStringField;
    qrySessionS_AFTER_SCRIPT: TWideStringField;
    qrySessionS_REFRESH: TIntegerField;
    qrySessionS_EXEC_BEFORE: TIntegerField;
    qrySessionS_EXEC_AFTER: TIntegerField;
    qryDataMA_DOT: TIntegerField;
    qryDataPHAN_NHOM: TWideStringField;
    qryDataSO_DANGKY_BHXH: TWideStringField;
    qryMauin: TIBOQuery;
    qryMauinKEY_ID: TIntegerField;
    qryMauinTIEUDE_MAUIN: TWideStringField;
    qryMauinFILE_NAME: TWideStringField;
    qryMauinFILE_CONTENT: TBlobField;
    dsMauin: TDataSource;
    acGetSelectedEmployee: TAction;
    qryDataBAOHIEM_CAUHINH_ID: TIntegerField;
    scriptExecute: TIB_Script;
    qrySessionDetail: TIBOQuery;
    dsSession: TDataSource;
    qrySessionDetailMAU_ID: TIntegerField;
    qrySessionDetailCT_MA: TIntegerField;
    qrySessionDetailCT_KYHIEU: TWideStringField;
    qrySessionDetailCT_TIEUDE: TWideStringField;
    qrySessionDetailCT_KIEUDULIEU: TWideStringField;
    qrySessionDetailCT_BIEUTHUC: TWideStringField;
    qrySessionDetailCT_HINHTHUC_NHAPLIEU: TWideStringField;
    qrySessionDetailCT_THUTU_TINH: TIntegerField;
    qrySessionDetailCT_THUTU_HIENTHI: TIntegerField;
    qrySessionDetailCT_SESSION: TIntegerField;
    qrySessionDetailCT_WIDTH: TIntegerField;
    rpData: TppReport;
    dsnData: TppDesigner;
    ppData: TppDBPipeline;
    qryDataSOPHIEU_KCB: TWideStringField;
    gridDataSOPHIEU_KCB: TdxDBGridColumn;
    acKhoiTaoDanhSach: TAction;
    dxChonNV: TdxBarButton;
    acChonNV: TAction;
    gridDataPHAN_NHOM: TdxDBGridMRUColumn;
    qryDataNGAY_APDUNG: TDateField;
    gridDataNGAY_APDUNG: TdxDBGridMRUColumn;
    dxNhapSoBHXHMoi: TdxBarButton;
    acNhapSoBHXHMoi: TAction;
    procedure acRefreshBangDuLieuExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tlBangDuLieuMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acDangKyMoiBangDLExecute(Sender: TObject);
    procedure acHieuChinhBangDLExecute(Sender: TObject);
    procedure acHieuChinhBangDLUpdate(Sender: TObject);
    procedure acXoaBangDLExecute(Sender: TObject);
    procedure acXoaBangDLUpdate(Sender: TObject);
    procedure acChiTietBangDuLieuExecute(Sender: TObject);
    function Cotluong: Variant;
    procedure acXemDataExecute(Sender: TObject);
    procedure dxChonDonviInitPopup(Sender: TObject);
    procedure dxChonDonviCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure acXemDataUpdate(Sender: TObject);
    procedure ApplyGridView;
    procedure SaveGridView;
    procedure tlDeptListDblClick(Sender: TObject);
    procedure dxMauinInitPopup(Sender: TObject);
    procedure dxMauinCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure gridMauinDblClick(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure acKhoiTaoDuLieuExecute(Sender: TObject);
    procedure gridDataDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure gridDataCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: WideString; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure acGetSelectedEmployeeExecute(Sender: TObject);
    procedure acTinhKetQuaExecute(Sender: TObject);
    procedure TinhKetQua;
    procedure dxChophepHieuchinhChange(Sender: TObject);
    procedure dxShowErrorChange(Sender: TObject);
    procedure acXemMauInExecute(Sender: TObject);
    function PrepareReport: boolean;
    procedure DefOnBeforePrint(isprinted: boolean; qryReport: TIBOQuery);
    procedure acThietKeExecute(Sender: TObject);
    procedure acInExecute(Sender: TObject);
    procedure acNhapLieuNhanhExecute(Sender: TObject);
    procedure acKhoiTaoDanhSachExecute(Sender: TObject);
    procedure acChonNVExecute(Sender: TObject);
    procedure acNhapSoBHXHMoiUpdate(Sender: TObject);
    procedure acNhapSoBHXHMoiExecute(Sender: TObject);
  private
    { Private declarations }
    F_Script: TSSP_Script;
    F_FieldList: TStrings;
    F_DEPT_NO, F_DEPT_NAME: WideString;
    F_DEPT_LEFT_INDEX, F_DEPT_RIGHT_INDEX: integer;
    F_THANG, F_NAM, F_DOT, F_MAU_BH_MA: Integer;
    F_MAU_BH_KYHIEU: string;
    F_TIEUDE: WideString;
    F_FILE_NAME:string;
    F_FILE_TIEUDE:widestring;
  public
    { Public declarations }
    F_ErrorList: TStrings;
    property MAU_ID:integer read F_MAU_BH_MA;
    property P_MAU_KYHIEU: string read F_MAU_BH_KYHIEU;
  end;
function GetTotalTime(var t: TTimeSpend): double;
var
  frmBAOHIEM_BangDuLieu: TfrmBAOHIEM_BangDuLieu;

implementation

uses BAOHIEM_TaoBangDuLieuForm, BAOHIEM_GetDataForm, MainDM,
     BAOHIEM_DataModule, SSP_Library, BAOHIEM_MauInForm, DateUtils,
     BAOHIEM_TienIchNhapLieuForm, BAOHIEM_ChonNVForm,
     BAOHIEM_TienIchNhapSoForm;

{$R *.dfm}
function GetTotalTime(var t: TTimeSpend): double;
begin
  t.total_time := (t.end_time - t.begin_time) * 86400;
  result := t.total_time;
end;
//==================================================

procedure TfrmBAOHIEM_BangDuLieu.acRefreshBangDuLieuExecute(
  Sender: TObject);
var
  THANG, NAM, DOT: integer;
begin
  inherited;
  if qryDuLieuBH.Active then
    qryDuLieuBH.Close;
  qryDuLieuBH.Open;
  if memDuLieuBH.Active then
    memDuLieuBH.Close;
  memDuLieuBH.Open;
  if not qryDuLieuBH.IsEmpty then
  begin
    qryDuLieuBH.First;
    while not qryDuLieuBH.Eof do
    begin
      if (NAM <> qryDuLieuBHNAM.Value) then
      begin
        memDuLieuBH.Append;
        memDuLieuBHKEY_ID.Value := 'NAM_' + IntToStr(qryDuLieuBHNAM.Value);
        memDuLieuBHP_ID.Clear;
        memDuLieuBHTIEU_DE.Value := UTF8Decode('NĂM ' +
          IntToStr(qryDuLieuBHNAM.Value));
        memDuLieuBHIMG_INDEX.Value := 0;
        memDuLieuBH.Post;
        NAM := qryDuLieuBHNAM.Value;
        THANG := -1;
      end;

      if (THANG <> qryDuLieuBHTHANG.Value) then
      begin
        memDuLieuBH.Append;
        memDuLieuBHKEY_ID.Value := 'NAM_' + IntToStr(qryDuLieuBHNAM.Value) +
          '_THANG_' + IntToStr(qryDuLieuBHTHANG.Value);
        memDuLieuBHP_ID.Value := 'NAM_' + IntToStr(qryDuLieuBHNAM.Value);
        memDuLieuBHTIEU_DE.Value := UTF8Decode('Tháng ' +
          IntToStr(qryDuLieuBHTHANG.Value) + '/' +
          IntToStr(qryDuLieuBHNAM.Value));
        memDuLieuBHIMG_INDEX.Value := 1;
        memDuLieuBH.Post;
        THANG := qryDuLieuBHTHANG.Value;
        DOT := -1;
      end;

      if (DOT <> qryDuLieuBHDOT.Value) then
      begin
        memDuLieuBH.Append;
        memDuLieuBHKEY_ID.Value := 'NAM_' + IntToStr(qryDuLieuBHNAM.Value) +
          '_THANG_' + IntToStr(qryDuLieuBHTHANG.Value) +
          '_DOT_' + IntToStr(qryDuLieuBHDOT.Value);
        memDuLieuBHP_ID.Value := 'NAM_' + IntToStr(qryDuLieuBHNAM.Value) +
          '_THANG_' + IntToStr(qryDuLieuBHTHANG.Value);
        memDuLieuBHTIEU_DE.Value := UTF8Decode('Đợt ' +
          IntToStr(qryDuLieuBHDOT.Value));
        memDuLieuBHIMG_INDEX.Value := 2;
        DOT := qryDuLieuBHDOT.Value;
        memDuLieuBH.Post;
      end;


      memDuLieuBH.Append;
      memDuLieuBHKEY_ID.Value := qryDuLieuBHTHANG_ID.AsString;
      memDuLieuBHP_ID.Value := 'NAM_' + IntToStr(qryDuLieuBHNAM.Value) +
        '_THANG_' + IntToStr(qryDuLieuBHTHANG.Value) +
        '_DOT_' + IntToStr(qryDuLieuBHDOT.Value);
      memDuLieuBHTIEU_DE.Value := qryDuLieuBHTIEU_DE.Value;
      memDuLieuBHIMG_INDEX.Value := 3;
      memDuLieuBHTHANG_ID.Value := qryDuLieuBHTHANG_ID.Value;
      memDuLieuBHMAU_ID.Value := qryDuLieuBHMAU_ID.Value;
      memDuLieuBHMAU_KYHIEU.Value := qryDuLieuBHMAU_KYHIEU.Value;
      memDuLieuBHTHANG.Value := qryDuLieuBHTHANG.Value;
      memDuLieuBHNAM.Value := qryDuLieuBHNAM.Value;
      memDuLieuBHDOT.Value := qryDuLieuBHDOT.Value;
      memDuLieuBH.Post;
      qryDuLieuBH.Next;
    end;
  end;
  tlBangDuLieu.Repaint;
end;
procedure TfrmBAOHIEM_BangDuLieu.FormCreate(Sender: TObject);
begin
  inherited;
  pageContent.ShowTabs := false;
  acRefreshBangDuLieu.Execute;
  pageContent.ActivePage := tabIntroduce;
  pageContent.ShowTabs := false;
  F_Script := TSSP_Script.Create(self);
  F_FieldList := TStringList.Create;
  F_ErrorList := TStringList.Create;

  RegisterLookupControl(gridDataPHAN_NHOM,'PHAN_NHOM','TEN_PHANNHOM',
    'SELECT TEN_PHANNHOM, TEN_PHANNHOM FROM HR_BAOHIEM_PHANNHOM');
  RegisterLookupControl(gridDataNGAY_APDUNG,'BAOHIEM_CAUHINH_ID','KEY_ID',
    'SELECT KEY_ID, NGAY_APDUNG FROM HR_BAOHIEM_CAUHINH ORDER BY NGAY_APDUNG');
end;


procedure TfrmBAOHIEM_BangDuLieu.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: integer;
begin
  inherited;
  if Assigned(frmBAOHIEM_ChonNV) then
    frmBAOHIEM_ChonNV.Close;
  if Assigned(frmBAOHIEM_GetData) then
    frmBAOHIEM_GetData.Close;
    
  Action := caFree;
  if F_FieldList.Count > 0 then
  begin
    for i := F_FieldList.Count - 1 downto 0 do
    begin
      TField(F_FieldList.Objects[i]).Free;
    end;
  end;
  F_FieldList.Clear;
  F_Script.Free;
  F_ErrorList.Free;
  frmBAOHIEM_BangDuLieu := nil;
end;

procedure TfrmBAOHIEM_BangDuLieu.tlBangDuLieuMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Button = mbRight then
    menuPop.PopupFromCursorPos;
end;

procedure TfrmBAOHIEM_BangDuLieu.acDangKyMoiBangDLExecute(Sender: TObject);
begin
  inherited;
  frmBAOHIEM_TaoBangDuLieu := TfrmBAOHIEM_TaoBangDuLieu.Create(self);
  try
    if frmBAOHIEM_TaoBangDuLieu.ShowModal = mrOk then
      acRefreshBangDuLieu.Execute;
  finally
    frmBAOHIEM_TaoBangDuLieu.Free;
    frmBAOHIEM_TaoBangDuLieu := nil;
  end;
end;

procedure TfrmBAOHIEM_BangDuLieu.acHieuChinhBangDLExecute(Sender: TObject);
begin
  inherited;
  SaveGridView;
  frmBAOHIEM_TaoBangDuLieu := TfrmBAOHIEM_TaoBangDuLieu.Create(self,
    memDuLieuBHTHANG_ID.Value);
  try
    if frmBAOHIEM_TaoBangDuLieu.ShowModal = mrOk then
      acRefreshBangDuLieu.Execute;
  finally
    frmBAOHIEM_TaoBangDuLieu.Free;
    frmBAOHIEM_TaoBangDuLieu := nil;
  end;
end;

procedure TfrmBAOHIEM_BangDuLieu.acHieuChinhBangDLUpdate(Sender: TObject);
begin
  inherited;
  acHieuChinhBangDL.Enabled := (memDuLieuBHTHANG_ID.Value > 0); // and (qryKhoaDuLieu.RecordCount =0 );
end;

procedure TfrmBAOHIEM_BangDuLieu.acXoaBangDLExecute(Sender: TObject);
begin
  inherited;
  if ShowMessageUnicode(127) = mrYes then
  begin
    try
      scriptExecute.SQL.Clear;
      scriptExecute.SQL.Add('delete from HR_BAOHIEM_' + memDuLieuBHMAU_KYHIEU.AsString +
        ' where MA_THANG=' + memDuLieuBHTHANG.AsString + ' and MA_NAM=' +
        memDuLieuBHNAM.AsString + ' and MA_DOT=' + memDuLieuBHDOT.AsString + ';');
      scriptExecute.SQL.Add('delete from HR_BAOHIEM_THANG where THANG_ID = ' +
        memDuLieuBHTHANG_ID.AsString + ';');
      scriptExecute.SQL.Add('COMMIT WORK;');
      scriptExecute.Execute;
      ShowMessageUnicode(128);
      acRefreshBangDuLieu.Execute;
      if memDuLieuBH.RecordCount > 0 then
      begin
          acChiTietBangDuLieu.Execute;
          //CheckWagePlanLock();
      end
    except
      ShowMessageUnicode(129);
    end;
  end;
end;

procedure TfrmBAOHIEM_BangDuLieu.acXoaBangDLUpdate(Sender: TObject);
begin
  inherited;
  acXoaBangDL.Enabled := (memDuLieuBHTHANG_ID.Value > 0); //and (qryKhoaDuLieu.RecordCount =0 );
end;

function TfrmBAOHIEM_BangDuLieu.Cotluong: Variant;
var
  cur_function: string;
begin
  try
    cur_function := Trim(F_Script.GetCurFunction);
    if cur_function = '' then
      result := ''
    else
    begin
      if Assigned(qryData.FindField(cur_function)) then
      begin
        if qryData.FieldByName(cur_function).IsNull then
        begin
          if (qryData.FieldByName(cur_function) is TFloatField) then
            result := 0
          else
            result := '';
        end
        else
          result := qryData.FieldByName(cur_function).Value;
      end
    end;
  except
    result := 'Error';
  end;
end;

procedure TfrmBAOHIEM_BangDuLieu.acChiTietBangDuLieuExecute(
  Sender: TObject);
var
  i: integer;
  col: TdxDBTreeListColumn;
  band: TdxTreeListBand;
  insert_s1, insert_s2, update_s1, delete_s1: string;
  f: TField;
begin
  inherited;
  if Assigned(frmBAOHIEM_GetData) then
    frmBAOHIEM_GetData.Free;
  frmBAOHIEM_GetData := nil;

  if memDuLieuBHIMG_INDEX.Value <> 3 then
    exit;
  Screen.Cursor := crSQLWait;
  if F_MAU_BH_KYHIEU<>'' then
    SaveGridView;
  F_THANG := memDuLieuBHTHANG.Value;
  F_NAM := memDuLieuBHNAM.Value;
  F_DOT := memDuLieuBHDOT.Value;
  F_MAU_BH_KYHIEU := memDuLieuBHMAU_KYHIEU.Value;
  F_TIEUDE := memDuLieuBHTIEU_DE.Value;
  F_MAU_BH_MA := memDuLieuBHMAU_ID.Value;
  lblListCaption.Caption := WideUpperCase(F_TIEUDE);
  ppData.DataSource := nil; 

  //Buoc 1: xoa trang VIEW bang luong
  qryData.DisableControls;

  gridData.BeginUpdate;
  if qryData.Active then
    qryData.Close;
  if gridData.ColumnCount > 0 then
  begin
    for i := gridData.ColumnCount - 1 downto 0 do
    begin
      if gridData.Columns[i].Tag <> -1 then
        gridData.Columns[i].Free;
    end;
  end;
  if gridData.Bands.Count > 1 then
  begin
    for i := gridData.Bands.Count - 1 downto 0 do
    begin
      if gridData.Bands[i].DisableCustomizing = false then
        gridData.Bands[i].Free;
    end;
  end;

  F_Script.ClearIdentifiers;
  dmBAOHIEM.InitIdentifier(F_Script, false);
  // Buoc 2: khoi tao Banner-Session

  if qrySession.Active then
    qrySession.Close;
  qrySession.ParamByName('MAU_ID').Value := F_MAU_BH_MA;
  qrySession.Open;
  if qrySession.IsEmpty = false then
  begin

    qrySession.First;
    while not qrySession.Eof do
    begin
      band := gridData.Bands.Add;
      band.Caption := qrySessionS_TIEUDE.Value;
      qrySession.Next;
    end;
  end;
  //Buoc 3: khoi tao GRID
  // - Khoi tao phan THONG TIN NHAN VIEN

  if qryCongthuc.Active then
    qryCongthuc.Close;
  qryCongthuc.ParamByName('MAU_ID').Value := F_MAU_BH_MA;
  qryCongthuc.Open;

  if qryData.Active then
    qryData.Close;
  qryData.SQL.Clear;
  qryData.SQL.Text := s_select;

  qryData.DeleteSQL.Clear;
  qryData.DeleteSQL.Text := 'delete from HR_BAOHIEM_' + F_MAU_BH_KYHIEU +
    ' where BAOHIEM_KEY_ID=:OLD_BAOHIEM_KEY_ID';
  qryData.KeyLinks.Clear;
  qryData.KeyLinks.Add('BAOHIEM_KEY_ID');
  qryData.GeneratorLinks.Clear;
  qryData.GeneratorLinks.Add('BAOHIEM_KEY_ID=GEN_HR_BAOHIEM_' + F_MAU_BH_KYHIEU + '_ID');

  qryData.InsertSQL.Clear;
  qryData.InsertSQL.Text := 'insert into HR_BAOHIEM_' + F_MAU_BH_KYHIEU;
  qryData.EditSQL.Clear;
  qryData.EditSQL.Text := 'update HR_BAOHIEM_' + F_MAU_BH_KYHIEU + ' set ';

  insert_s1 :=
    'BAOHIEM_KEY_ID , MA_NHANVIEN , MA_DONVI , MA_CHUCVU, ' +
    'MA_THANG , MA_NAM, MA_DOT, PHAN_NHOM, SO_DANGKY_BHXH, ' +
    'BAOHIEM_CAUHINH_ID, SOPHIEU_KCB';
  insert_s2 :=
    ':BAOHIEM_KEY_ID , :MA_NHANVIEN , :MA_DONVI , :MA_CHUCVU, ' +
    ':MA_THANG , :MA_NAM, :MA_DOT, :PHAN_NHOM, :SO_DANGKY_BHXH, ' +
    ':BAOHIEM_CAUHINH_ID, :SOPHIEU_KCB';

  update_s1 := ' BAOHIEM_KEY_ID=:BAOHIEM_KEY_ID , ' +
    ' MA_NHANVIEN=:MA_NHANVIEN , ' +
    ' MA_DONVI=:MA_DONVI ,' +
    ' MA_CHUCVU=:MA_CHUCVU,' +
    ' MA_THANG=:MA_THANG ,' +
    ' MA_NAM=:MA_NAM ,' +
    ' MA_DOT = :MA_DOT ,' +
    ' PHAN_NHOM = :PHAN_NHOM ,' +
    ' SO_DANGKY_BHXH = :SO_DANGKY_BHXH, ' +
    ' BAOHIEM_CAUHINH_ID = :BAOHIEM_CAUHINH_ID, ' +
    ' SOPHIEU_KCB = :SOPHIEU_KCB ';

  if qryCongthuc.IsEmpty = false then
  begin
    if F_FieldList.Count > 0 then
    begin
      for i := F_FieldList.Count - 1 downto 0 do
      begin
        TField(F_FieldList.Objects[i]).Free;
      end;
    end;
    F_FieldList.Clear;
    qryCongthuc.First;
    while not qryCongthuc.Eof do
    begin
      F_Script.AddMethod0Param(qryCongthucCT_KYHIEU.AsString, Cotluong);
      // cau SELECT
      qryData.SQL.Text := qryData.SQL.Text + ' , ' +
        qryCongthucCT_KYHIEU.AsString;
      if qryCongthucCT_KIEUDULIEU.Value = 'DOUBLE' then
      begin
        f := TFloatField.Create(qryData);
        f.SetFieldType(ftFloat);
        TFloatField(f).DisplayFormat := sysConfig.FloatFormat;
        col := gridData.CreateColumn(TdxDBGridCalcColumn)
      end
      else if qryCongthucCT_KIEUDULIEU.Value = 'VARCHAR' then
      begin
        f := TWideStringField.Create(qryData);
        f.SetFieldType(ftWideString);
        col := gridData.CreateColumn(TdxDBGridColumn);
      end
      else if qryCongthucCT_KIEUDULIEU.Value = 'DATE' then
      begin
        f := TDateField.Create(qryData);
        f.SetFieldType(ftDate);
        col := gridData.CreateColumn(TdxDBGridDateColumn);
      end
      else if qryCongthucCT_KIEUDULIEU.Value = 'NOTATION' then
      begin
        f := TWideStringField.Create(qryData);
        f.SetFieldType(ftWideString);
        f.Size := 120;
        col := gridData.CreateColumn(TdxDBGridColumn);
      end;

      // cau INSERT SQL
      insert_s1 := insert_s1 + ' , ' + qryCongthucCT_KYHIEU.AsString;
      insert_s2 := insert_s2 + ' , :' + qryCongthucCT_KYHIEU.AsString;
      update_s1 := update_s1 + ' , ' + qryCongthucCT_KYHIEU.AsString + '=:' +
        qryCongthucCT_KYHIEU.AsString;

      f.Name := qryData.Name + qryCongthucCT_KYHIEU.AsString;
      f.FieldName := qryCongthucCT_KYHIEU.AsString;
      f.FieldKind := fkData;
      f.DataSet := qryData;
      F_FieldList.AddObject(qryCOngthucCT_KYHIEU.AsString, f);

      col.Name := gridData.Name + qryCongthucCT_KYHIEU.AsString;
      col.FieldName := qryCongthucCT_KYHIEU.AsString;
      col.Width := qryCongthucCT_WIDTH.Value;
      col.HeaderAlignment := taCenter;
      col.DisableCustomizing := true;
      col.Caption := qryCongthucCT_TIEUDE.Value;

      if qryCongthucCT_HINHTHUC_NHAPLIEU.Value = 'TUDONG_CAPNHAT' then
      begin
        col.DisableEditor := true;
        col.ReadOnly := true;
        col.Tag := 1
      end
      else if qryCongthucCT_HINHTHUC_NHAPLIEU.Value <> 'TINHTOAN' then
      begin
        col.DisableEditor := false;
        col.ReadOnly := false;
        col.Tag := 0;
      end
      else
      begin
        col.DisableEditor := true;
        col.ReadOnly := true;
        col.Color := sysUIConfig.Read_Only_Color;
        col.Tag := 2
      end;
      col.BandIndex := qryCongthucCT_SESSION.Value;

      qryCongthuc.Next
    end;
  end;
  qryData.SQL.Text := qryData.SQL.Text +
    ' FROM HR_BAOHIEM_' + F_MAU_BH_KYHIEU + ' ' +
    s_leftjoin + ' ' + s_where;
  qryData.InsertSQL.Text := qryData.InsertSQL.Text + '(' + insert_s1 +
    ') values (' + insert_s2 + ')';
  qryData.EditSQL.Text := qryData.EditSQL.Text + update_s1 +
    ' where BAOHIEM_KEY_ID=:OLD_BAOHIEM_KEY_ID';
  qryData.Prepare;
  acXemData.Execute;
  frameToolbar1.SetDataSource(dsData);
  frameToolbar1.SetListSource(dsData);
  Apply_Grid(gridData);
  gridData.EndUpdate;
  qryData.EnableControls;
  pageContent.ActivePage := tabVIewDetail;
  ppData.DataSource := dsData ;
  ApplyGridView;

  //if Assigned(frmLuong_Tuychon) then
  //  frmLuong_Tuychon.ReloadGridView;
  Screen.Cursor := crDefault;
end;

procedure TfrmBAOHIEM_BangDuLieu.acXemDataExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if qryData.Active then
    qryData.Close;
  qryData.ParamByName('DEPT_NO').Value := F_DEPT_NO;
  qryData.ParamByName('THANG').Value := F_THANG;
  qryData.ParamByName('NAM').Value := F_NAM;
  qryData.ParamByName('DOT').Value := F_DOT;
  if dxCapduoi.Checked then
    qryData.ParamByName('VIEW_ALL').Value := 1
  else
    qryData.ParamByName('VIEW_ALL').Value := 0;
  qryData.ParamByName('LEFT_INDEX').Value := F_DEPT_LEFT_INDEX;
  qryData.ParamByName('RIGHT_INDEX').Value := F_DEPT_RIGHT_INDEX;
  qryData.Open;
  gridData.FullExpand;

  //if memDisplayReport.Active then memDisplayReport.Close;
  //memDisplayReport.CreateFieldsFromDataSet(qryData);

  //LoadDisplayData;

  Screen.Cursor := crDefault;
end;

procedure TfrmBAOHIEM_BangDuLieu.dxChonDonviInitPopup(Sender: TObject);
begin
  inherited;
  if qryDeptList.Active then qryDeptList.Close;  
  qryDeptList.Open;
  InitPopupControl('dxlcDeptList', self, sender, 2);
  tlDeptList.FullExpand;
end;

procedure TfrmBAOHIEM_BangDuLieu.dxChonDonviCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := qryDeptListDEPT_NAME.Value;
    F_DEPT_NO := qryDeptListDEPT_NO.Value;
    F_DEPT_NAME := qryDeptListDEPT_NAME.Value;
    F_DEPT_LEFT_INDEX := qryDeptListLEFT_INDEX.Value;
    F_DEPT_RIGHT_INDEX := qryDeptListRIGHT_INDEX.Value;
  end;
end;

procedure TfrmBAOHIEM_BangDuLieu.acXemDataUpdate(Sender: TObject);
begin
  inherited;
  acXemData.Enabled := qryData.Prepared;
end;

procedure TfrmBAOHIEM_BangDuLieu.ApplyGridView;
var reg :TRegistry;
    i:integer;
    bool_value:boolean;
    text_value:string;
begin
  reg:=TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey(REGISTRY_ROOT + '\'+sysConfig.User+'\BAOHIEM\'+F_MAU_BH_KYHIEU, true);
  for i:=1 to gridData.Bands.Count-1 do
  begin
    try
      bool_value:= reg.ReadBool('Band'+IntToStr(i));
      gridData.Bands[i].Visible:=bool_value;
    except
    end
  end;
  for i:=0 to gridData.ColumnCount-1 do
  begin
    if gridData.Columns[i].BandIndex=0 then Continue;
    try
      bool_value:= reg.ReadBool(gridData.Columns[i].Name);
      gridData.Columns[i].Visible:=bool_value;
    except
    end
  end;
  try
    text_value:=reg.ReadString('TemplateFileName');
    F_FILE_NAME:=text_value;
    text_value:=reg.ReadString('TemplateFileTitle');
    dxMauin.Text:=UTF8Decode(text_value);
    F_FILE_TIEUDE:=UTF8Decode(text_value);
  except
    F_FILE_NAME:='';
    F_FILE_TIEUDE:='';
    dxMauin.Text:='';

  end;
  reg.CloseKey;
  reg.Free;
end;
procedure TfrmBAOHIEM_BangDuLieu.SaveGridView;
var reg :TRegistry;
    i:integer;
begin
  reg:=TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey(REGISTRY_ROOT + '\'+sysConfig.User+'\BAOHIEM\'+F_MAU_BH_KYHIEU, true);
  for i:=1 to gridData.Bands.Count-1 do
  begin
    try
      reg.WriteBool('Band'+IntToStr(i),gridData.Bands[i].Visible);
    except
    end
  end;
  for i:=0 to gridData.ColumnCount-1 do
  begin
    if gridData.Columns[i].BandIndex=0 then Continue;
    try
      reg.WriteBool(gridData.Columns[i].Name,gridData.Columns[i].Visible);
    except
    end
  end;
  reg.WriteString('TemplateFileName',F_FILE_NAME);
  reg.WriteString('TemplateFileTitle',UTF8Encode(F_FILE_TIEUDE));
  reg.CloseKey;
  reg.Free;
end;

procedure TfrmBAOHIEM_BangDuLieu.tlDeptListDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self, true, sender);
end;

procedure TfrmBAOHIEM_BangDuLieu.dxMauinInitPopup(Sender: TObject);
begin
  inherited;
  if not qryMauin.Active then
    qryMauin.Open;
  InitPopupControl('dxlcMauin',self,sender,2);
end;

procedure TfrmBAOHIEM_BangDuLieu.dxMauinCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text:=qryMauinTIEUDE_MAUIN.Value;
    F_FILE_NAME:=qryMauinFILE_NAME.Value;
    F_FILE_TIEUDE:=qryMauinTIEUDE_MAUIN.Value;
  end;
end;

procedure TfrmBAOHIEM_BangDuLieu.gridMauinDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self,true,sender);
end;

procedure TfrmBAOHIEM_BangDuLieu.ElPopupButton1Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmBAOHIEM_MauIn,frmBAOHIEM_MauIn);
  qryMauin.Refresh;
end;

procedure TfrmBAOHIEM_BangDuLieu.acKhoiTaoDuLieuExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frmBAOHIEM_GetData) then
  begin
    frmBAOHIEM_GetData := TfrmBAOHIEM_GetData.Create(self, F_THANG, F_NAM,F_MAU_BH_MA);
    frmBAOHIEM_GetData.Show;
  end
  else
  begin
    //frmBAOHIEM_GetData.BringToFront;
    frmBAOHIEM_GetData.Close;
    frmBAOHIEM_GetData := TfrmBAOHIEM_GetData.Create(self, F_THANG, F_NAM,F_MAU_BH_MA);
    frmBAOHIEM_GetData.Show;
  end
end;

procedure TfrmBAOHIEM_BangDuLieu.gridDataDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  if Assigned(frmBAOHIEM_GetData) then
    frmBAOHIEM_GetData.SetFocusForm(self);
  if Assigned(frmBAOHIEM_ChonNV) then
    frmBAOHIEM_ChonNV.SetFocusForm(self)
end;

procedure TfrmBAOHIEM_BangDuLieu.gridDataCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: WideString; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
begin
  inherited;
  if AColumn.BandIndex = 0 then
    exit;
  if AColumn.Tag = 1 then // TUDONG_CAPNHAT
    AColor := $00C1FFC1
  else if AColumn.Tag = 2 then // TINH TOAN
    AColor := $00A8D3FF
  else
    AColor := clWhite;
   if dxShowError.Checked then
  begin
    if F_ErrorList.IndexOf(AColumn.FieldName)>=0 then
    begin
      AColor:=clRed;
      AFont.Color:=clWhite;
    end;  
  end;
end;

procedure TfrmBAOHIEM_BangDuLieu.acGetSelectedEmployeeExecute(
  Sender: TObject);
begin
  if not Assigned(frmBAOHIEM_ChonNV) then exit;
  if frmBAOHIEM_ChonNV.memData.IsEmpty then exit;
  frmBAOHIEM_ChonNV.memData.First;
  qryData.DisableControls;
  while not frmBAOHIEM_ChonNV.memData.Eof do
  begin
    if not (qryData.State in [dsInsert]) then
      qryData.Append;
    qryData.FieldByName('MA_NHANVIEN').Value:=frmBAOHIEM_ChonNV.memData.FieldByName('EMP_NO').Value;
    qryData.FieldByName('FULL_NAME').Value:=frmBAOHIEM_ChonNV.memData.FieldByName('FULL_NAME').Value;
    qryData.FieldByName('DEPT_NAME').Value:=frmBAOHIEM_ChonNV.memData.FieldByName('DEPT_NAME').Value;
    qryData.FieldByName('TITLE_NAME').Value:=frmBAOHIEM_ChonNV.memData.FieldByName('TITLE_NAME').Value;
    qryData.FieldByName('MA_CHUCVU').Value:=frmBAOHIEM_ChonNV.memData.FieldByName('TITLE_NO').Value;
    qryData.FieldByName('MA_DONVI').Value:=frmBAOHIEM_ChonNV.memData.FieldByName('DEPT_NO').Value;
    qryData.FieldByName('SO_DANGKY_BHXH').Value:=frmBAOHIEM_ChonNV.memData.FieldByName('MASO_BHXH').Value;

    qryData.FieldByName('MA_THANG').Value := F_THANG;
    qryData.FieldByName('MA_NAM').Value := F_NAM;
    qryData.FieldByName('MA_DOT').Value := F_DOT;
    TRY
      qryData.Post;
    EXCEPT
      qryData.Cancel;
    END;
    frmBAOHIEM_ChonNV.memData.Next;
  end;
  qryData.EnableControls;
end;

procedure TfrmBAOHIEM_BangDuLieu.TinhKetQua;
//MO TA : thuc hien tinh luong do nhan vien hien tai tren bang luong
begin
  if dmBaoHiem.MAU_KYHIEU <> F_MAU_BH_KYHIEU then
    dmBaoHiem.MAU_KYHIEU := F_MAU_BH_KYHIEU;
  dmBaoHiem.MA_NHANVIEN := qryDataMA_NHANVIEN.Value;
  dmBaoHiem.MA_DONVI := qryDataMA_CHUCVU.Value;
  dmBaoHiem.MA_CHUCVU := qryDataMA_CHUCVU.Value;
  dmBaoHiem.THANG := qryDataMA_THANG.Value;
  dmBaoHiem.NAM := qryDataMA_NAM.Value;
  dmBaoHiem.DOT := qryDataMA_DOT.Value;

  if not qrySessionDetail.Active then
    qrySessionDetail.Open
  else
    qrySessionDetail.Refresh;
  if qrySessionDetail.Eof then
  begin
    //result.end_time := Now;
    //result.total_time := result.end_time - result.begin_time;
    exit;
  end;
  try
    if not (qryData.State in [dsEdit, dsInsert]) then
      qryData.Edit;
    qrySessionDetail.First;
    while not qrySessionDetail.Eof do
    begin
      if qrySessionDetailCT_HINHTHUC_NHAPLIEU.Value = 'TINHTOAN' then
      begin
        F_Script.Script := qrySessionDetailCT_BIEUTHUC.Value;
        try
          qryData.FieldByName(qrySessionDetailCT_KYHIEU.AsString).Value :=
            F_Script.AnalyzeScript;
        except
          qryData.FieldByName(qrySessionDetailCT_KYHIEU.AsString).Clear;
          F_ErrorList.Add(qrySessionDetailCT_KYHIEU.AsString);
        end;
      end;
      qrySessionDetail.Next;
    end;
  finally
    if qryData.State in [dsEdit] then
      qryData.Post;
  end;
  //result.end_time := Now;

end;

procedure TfrmBAOHIEM_BangDuLieu.acTinhKetQuaExecute(Sender: TObject);
  function ExecuteScript(script: widestring): boolean;
  var
    i: integer;
  begin
    result:=true;
    scriptExecute.SQL.Clear;
    scriptExecute.SQL.Text := script;
    if scriptExecute.SQL.Count = 0 then
      exit;
    for i := 0 to scriptExecute.SQL.Count - 1 do
    begin
      scriptExecute.SQL.Strings[i]:=StringReplace(scriptExecute.SQL.Strings[i],
        ':MAU_KYHIEU ', 'HR_BAOHIEM_' + F_MAU_BH_KYHIEU + ' ',
        [rfReplaceAll]);
      scriptExecute.SQL.Strings[i]:=StringReplace(scriptExecute.SQL.Strings[i],
        ':MA_DONVI', ''''+ F_DEPT_NO+'''', [rfReplaceAll]);
      scriptExecute.SQL.Strings[i]:=StringReplace(scriptExecute.SQL.Strings[i],
        ':THANG', IntToStr(F_THANG), [rfReplaceAll]);
      scriptExecute.SQL.Strings[i]:=StringReplace(scriptExecute.SQL.Strings[i],
        ':NAM', IntToStr(F_NAM), [rfReplaceAll]);
      scriptExecute.SQL.Strings[i]:=StringReplace(scriptExecute.SQL.Strings[i],
        ':DOT', IntToStr(F_DOT), [rfReplaceAll]);
    end;
    try
      scriptExecute.Prepare;
      scriptExecute.Execute;
    except
      result:=false;
    end;
  end;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  try
    qryData.DisableControls;
    qrySession.First; 
    while not qrySession.Eof do
    begin
      // Thuc thi BEFORE_SCRIPT
      if qrySessionS_EXEC_BEFORE.Value = 1 then
      begin
        ExecuteScript(qrySessionS_BEFORE_SCRIPT.Value);
      end;
      if qrySessionS_REFRESH.Value = 1 then
      begin
        qryData.Close;
        qryData.Open;
      end;
      // Thuc thi cong thuc trong SESSION

      qryData.First;
      while not qryData.Eof do
      begin
        TinhKetQua;
        qryData.Next;
      end;
      // Thuc thi BEFORE_SCRIPT
      if qrySessionS_EXEC_AFTER.Value = 1 then
      begin
        ExecuteScript(qrySessionS_AFTER_SCRIPT.Value);
      end;
      if qrySessionS_REFRESH.Value = 1 then
      begin
        qryData.Close;
        qryData.Open;
      end;

      qrySession.Next;
    end;
    ShowMessageUnicode(39);
  Except
  end;
  Screen.Cursor := crDefault;
  qryData.EnableControls;
end;

procedure TfrmBAOHIEM_BangDuLieu.dxChophepHieuchinhChange(Sender: TObject);
begin
  inherited;
  if dxChophepHieuchinh.Checked then
    gridData.OptionsBehavior := gridData.OptionsBehavior + [edgoEditing]
  else
    gridData.OptionsBehavior := gridData.OptionsBehavior - [edgoEditing]
end;

procedure TfrmBAOHIEM_BangDuLieu.dxShowErrorChange(Sender: TObject);
begin
  inherited;
  gridData.Repaint;
end;

function TfrmBAOHIEM_BangDuLieu.PrepareReport: boolean;
var
  pathName, pathDirectory: string;
begin
  try
    pathDirectory := ExtractFilePath(Application.ExeName) + 'Reports\BaoHiemReports';
    case sysConfig.Language of
      0, 1:
        pathName := pathDirectory + '\Vn\' + F_FILE_NAME;
      2:
        pathName := pathDirectory + '\Eng\' + F_FILE_NAME;
    end;

    if (FileExists(pathName)) then
    begin
      //LoadDisplayData;
      rpData.Template.FileName := pathName;
      rpData.Template.Load;
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

procedure TfrmBAOHIEM_BangDuLieu.DefOnBeforePrint(isprinted: boolean; qryReport: TIBOQuery);
var
  i: integer;
  compReport: TComponent;
  CompCap: WideString;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    compReport := Components[i];
    if (compReport is TppDBImage) then
    begin
      if (dmMain.qryOrgInfoIMG_TYPE.AsString = 'TJPEGImage') then
        (compReport as TppDBImage).GraphicType := 'JPEG'
      else
        if (dmMain.qryOrgInfoIMG_TYPE.AsString = 'TBitmap') then
        (compReport as TppDBImage).GraphicType := 'Bitmap';
      Continue;
    end
    else
        if (compReport is TppDBText) then
        begin
          //Doc VND bang tieng viet
          if UpperCase(TppDBText(compReport).DisplayFormat) = 'VND_INWORDS_VIETNAMESE' then
            TppDBText(compReport).OnFormat := dmMain.OnppReadVNDByVietnamese
          //Doc VND bang tieng anh
          else if UpperCase(TppDBText(compReport).DisplayFormat) = 'VND_INWORDS_ENGLISH' then
            TppDBText(compReport).OnFormat := dmMain.OnppReadVNDByEnglish
          //Doc USD bang tieng anh
          else if UpperCase(TppDBText(compReport).DisplayFormat) = 'USD_INWORDS_ENGLISH' then
            TppDBText(compReport).OnFormat := dmMain.OnppReadUSDByEnglish
          //Doc USD bang tieng viet
          else if UpperCase(TppDBText(compReport).DisplayFormat) = 'USD_INWORDS_VIETNAMESE' then
            TppDBText(compReport).OnFormat := dmMain.OnppReadUSDByVietnamese;
        end;
        
    if not (compReport is TppLabel) then
      Continue;
    if (compReport as TppLabel).Height < 0.1 then
      (compReport as TppLabel).Height := 0.2;
    if isprinted = false then continue;
    CompCap := LowerCase(UTF8Encode((compReport as TppLabel).Caption));
    if (CompCap = 'lbl_param_month') then
      TppLabel(compReport).Caption := memDuLieuBHTHANG.AsString
    else
      if (CompCap = 'lbl_param_year') then
      TppLabel(compReport).Caption := memDuLieuBHNAM.AsString
    else
      if (CompCap = 'lbl_param_period') then
      TppLabel(compReport).Caption := memDuLieuBHDOT.AsString
    else
      if (CompCap = 'lbl_param_dept_name') then
      TppLabel(compReport).Caption := F_DEPT_NAME
    else
      if (CompCap = 'lbl_param_dept_no') then
      TppLabel(compReport).Caption := F_DEPT_NO
    else
      if (CompCap = 'lbl_current_date') then
      TppLabel(compReport).Caption := DateToStr(Today)
    else
      if (CompCap = 'lbl_current_day') then
      TppLabel(compReport).Caption := IntToStr(DayOf(Today))
    else
      if (CompCap = 'lbl_current_month') then
      TppLabel(compReport).Caption := IntToStr(MonthOf(Today))
    else
      if (CompCap = 'lbl_current_year') then
      TppLabel(compReport).Caption := IntToStr(DayOf(Today))
  end;
end;

procedure TfrmBAOHIEM_BangDuLieu.acXemMauInExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  DefOnBeforePrint(true, qryData);
  rpData.AllowPrintToFile := True;
  rpData.DeviceType := dtScreen;
  rpData.Print;
end;

procedure TfrmBAOHIEM_BangDuLieu.acThietKeExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  DefOnBeforePrint(false, qryData);
  dsnData.ShowModal;
  rpData.PrintToDevices;
end;

procedure TfrmBAOHIEM_BangDuLieu.acInExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  DefOnBeforePrint(true, qryData);
  rpData.AllowPrintToFile := True;
  rpData.DeviceType := dtPrinter;
  rpData.Print;
end;

procedure TfrmBAOHIEM_BangDuLieu.acNhapLieuNhanhExecute(Sender: TObject);
begin
  inherited;
  if Assigned(frmBAOHIEM_TienIchNhapLieu) then
     frmBAOHIEM_TienIchNhapLieu.BringToFront
  else
  begin
    frmBAOHIEM_TienIchNhapLieu:=TfrmBAOHIEM_TienIchNhapLieu.Create(self);
    frmBAOHIEM_TienIchNhapLieu.Show;
  end;
end;

procedure TfrmBAOHIEM_BangDuLieu.acKhoiTaoDanhSachExecute(Sender: TObject);
var
  i : integer;
begin
  inherited;
  if not Assigned(frmBAOHIEM_GetData) then
    exit;
  if frmBAOHIEM_GetData.memData.IsEmpty then
    exit;
  frmBAOHIEM_GetData.memData.First;
  qryData.DisableControls;
  while not frmBAOHIEM_GetData.memData.Eof do
  begin
    if not (qryData.State in [dsInsert]) then
      qryData.Append;
    if frmBAOHIEM_GetData.memData.FieldCount > 1 then
    begin
      for i:= 1 to frmBAOHIEM_GetData.memData.FieldCount - 1 do
        if Assigned(TIBOQuery(qryData).FindField(frmBAOHIEM_GetData.memData.Fields[i].FieldName)) then
        begin
          qryData.FieldByName(frmBAOHIEM_GetData.memData.Fields[i].FieldName).Value :=
            frmBAOHIEM_GetData.memData.FieldByName(frmBAOHIEM_GetData.memData.Fields[i].FieldName).Value;
        end;
    end;
    qryData.FieldByName('MA_THANG').Value := F_THANG;
    qryData.FieldByName('MA_NAM').Value := F_NAM;
    qryData.FieldByName('MA_DOT').Value := F_DOT;

    try
      qryData.Post;
    except
      qryData.Cancel;
    end;
    frmBAOHIEM_GetData.memData.Next;
  end;
  frmBAOHIEM_GetData.acLoadData.Execute;     
  qryData.EnableControls;
end;

procedure TfrmBAOHIEM_BangDuLieu.acChonNVExecute(Sender: TObject);
begin
  inherited;
  if not assigned(frmBAOHIEM_ChonNV) then
  begin
    frmBAOHIEM_ChonNV:=TfrmBAOHIEM_ChonNV.Create(self);
    frmBAOHIEM_ChonNV.Show;
  end
  else
    frmBAOHIEM_ChonNV.BringToFront;
end;

procedure TfrmBAOHIEM_BangDuLieu.acNhapSoBHXHMoiUpdate(Sender: TObject);
begin
  inherited;
  acNhapSoBHXHMoi.Enabled := (F_MAU_BH_MA = 6);
end;

procedure TfrmBAOHIEM_BangDuLieu.acNhapSoBHXHMoiExecute(Sender: TObject);
begin
  inherited;
  if Assigned(frmBAOHIEM_TienIchNhapSo) then
     frmBAOHIEM_TienIchNhapSo.BringToFront
  else
  begin
    frmBAOHIEM_TienIchNhapSo:=TfrmBAOHIEM_TienIchNhapSo.Create(self);
    frmBAOHIEM_TienIchNhapSo.Show;
  end;
end;

end.
