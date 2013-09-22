unit Luong_Bangluong;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  ImgList, ElPgCtl, dxBar, dxDBCtrl, dxTL, dxCntner, dxDBTL, ExtCtrls,
  dxLayoutControl, cxControls, StdCtrls, ElCLabel, ElLabel, ElPanel,
  ElSplit, DB, IBODataset, dxmdaset, ActnList, IB_Components, IB_Process,
  IB_Script, dxEdLib, dxEditor, ElBtnCtl, ElPopBtn, dxDBGrid, dxDBTLCl,
  dxGrClms, ToolbarFrame, dxBarExtItems, SSP_Script, ppEndUsr, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe;
const
  s_select =
    ' SELECT DISTINCT WB_KEY_ID ' +
    ' , MA_NHANVIEN ' +
    ' , LAST_NAME||'' ''||MIDDLE_NAME||'' ''||FIRST_NAME FULL_NAME ' +
    ' , ACCOUNT_ID ' +
    ' , ACCOUNT_BANK ' +
    ' , EMAIL ' +
    ' , MA_DONVI ' +
    ' , DEPT_NAME ' +
    ' , MA_CHUCVU ' +
    ' , TITLE_NAME ' +
    ' , MA_THANG ' +
    ' , MA_NAM ';
  s_leftjoin =
    ' left join HR_EMPLOYEE on MA_NHANVIEN=HR_EMPLOYEE.EMPLOYEE_NO ' +
    ' left join HR_DEPARTMENT ON MA_DONVI=HR_DEPARTMENT.DEPT_NO ' +
    ' left join HR_TITLE on MA_CHUCVU=HR_TITLE.TITLE_NO ';
  s_where =
    ' where (MA_THANG=:THANG) and (MA_NAM=:NAM) and ' +
    ' ((:VIEW_ALL=0 and MA_DONVI=:DEPT_NO) or ' +
    '  (:VIEW_ALL=1 and (DEPT_LEFT_INDEX>=:LEFT_INDEX) and (DEPT_RIGHT_INDEX<=:RIGHT_INDEX))' +
    ' ) order by THUTU_DV,THUTU_NV ';

type
  TTimeSpend = record
    begin_time, end_time: TTime;
    total_time: Double;
  end;
  TfrmLuong_Bangluong = class(TfrmBase)
    panelLeft: TPanel;
    tlBangluong: TdxDBTreeList;
    pageControl: TElPageControl;
    ElTabSheet1: TElTabSheet;
    imgMenuList: TImageList;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElSplitter1: TElSplitter;
    mainPanel: TElPanel;
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    pageContent: TElPageControl;
    tabIntroduce: TElTabSheet;
    tabVIewDetail: TElTabSheet;
    panelView: TPanel;
    qryBangluong: TIBOQuery;
    qryBangluongL_ID: TIntegerField;
    qryBangluongTHANG: TIntegerField;
    qryBangluongNAM: TIntegerField;
    qryBangluongTHANG_NAM: TIntegerField;
    qryBangluongPA_MA: TIntegerField;
    qryBangluongTIEU_DE: TWideStringField;
    memBangluong: TdxMemData;
    dsBangluong: TDataSource;
    memBangluongKEY_ID: TStringField;
    memBangluongP_ID: TStringField;
    memBangluongL_ID: TIntegerField;
    memBangluongTIEU_DE: TWideStringField;
    memBangluongIMG_INDEX: TIntegerField;
    tlBangluongTIEU_DE: TdxDBTreeListColumn;
    tlBangluongIMG_INDEX: TdxDBTreeListColumn;
    ActionList1: TActionList;
    imlIcon: TImageList;
    acRefreshDSBangluong: TAction;
    acDangkyBangluongMoi: TAction;
    acHieuchinhTTBangluong: TAction;
    dxBarManager1: TdxBarManager;
    dxChucnang: TdxBarSubItem;
    dxDangkyBangluong: TdxBarButton;
    dxMobangluong: TdxBarButton;
    menuPop: TdxBarPopupMenu;
    acXoabangluong: TAction;
    dxXoabangluong: TdxBarButton;
    transaction: TIB_Transaction;
    scriptExecute: TIB_Script;
    qryBangluongPA_KYHIEU: TWideStringField;
    memBangluongPA_KYHIEU: TWideStringField;
    memBangluongTHANG: TIntegerField;
    memBangluongNAM: TIntegerField;
    acChitietBangluong: TAction;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxBarDockControl2: TdxBarDockControl;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxApdungchung: TdxBarButton;
    acChucnangIn: TAction;
    dxLayoutControl2Group4: TdxLayoutGroup;
    dxChonDonvi: TdxPopupEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxCapduoi: TdxCheckEdit;
    dxLayoutControl2Item7: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl2Item8: TdxLayoutItem;
    ActionList2: TActionList;
    acXembangluong: TAction;
    gridLuong: TdxDBGrid;
    dxLayoutControl2Item9: TdxLayoutItem;
    acDulieuChung: TAction;
    acDulieuDonvi: TAction;
    acDulieuVitri: TAction;
    acDulieuChucvu: TAction;
    dxDulieuDonvi: TdxBarButton;
    dxDulieuChucvu: TdxBarButton;
    dxDulieuVitri: TdxBarButton;
    dxTinhluong: TdxBarButton;
    acTinhluong: TAction;
    acNhatkyLuong: TAction;
    dxNhatkyLuong: TdxBarButton;
    dxTuychon: TdxBarButton;
    qryCongthuc: TIBOQuery;
    dsLuong: TDataSource;
    gridLuongMA_NHANVIEN: TdxDBGridColumn;
    gridLuongDEPT_NAME: TdxDBGridColumn;
    gridLuongTITLE_NAME: TdxDBGridColumn;
    gridLuongFULL_NAME: TdxDBGridColumn;
    gridLuongACCOUNT_ID: TdxDBGridColumn;
    gridLuongACCOUNT_BANK: TdxDBGridColumn;
    gridLuongEMAIL: TdxDBGridColumn;
    memBangluongPA_MA: TIntegerField;
    acKhoitaoBangluong: TAction;
    dxKhoitaoBangluong: TdxBarButton;
    dxLayoutControl2Item1: TdxLayoutItem;
    frameToolbar1: TframeToolbar;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    dxChophepHieuchinh: TdxCheckEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxTinhNhanh: TdxBarButton;
    acTinhluongNhanh: TAction;
    gridLuongWB_KEY_ID: TdxDBGridColumn;
    qrySession: TIBOQuery;
    qrySessionPA_MA: TIntegerField;
    qrySessionS_MA: TIntegerField;
    qrySessionS_TIEUDE: TWideStringField;
    qrySessionS_BEFORE_SCRIPT: TWideStringField;
    qrySessionS_AFTER_SCRIPT: TWideStringField;
    qrySessionS_REFRESH: TIntegerField;
    qrySessionS_EXEC_BSCRIPT: TIntegerField;
    qrySessionS_EXEC_AFTER: TIntegerField;
    qryCongthucPA_MA: TIntegerField;
    qryCongthucCT_MA: TIntegerField;
    qryCongthucCT_KYHIEU: TWideStringField;
    qryCongthucCT_TIEUDE: TWideStringField;
    qryCongthucCT_KIEUDULIEU: TWideStringField;
    qryCongthucCT_BIEUTHUC: TWideStringField;
    qryCongthucCT_NHAPTRUCTIEP: TIntegerField;
    qryCongthucCT_HINHTHUC_NHAPLIEU: TWideStringField;
    qryCongthucCT_TUDONG_CAPNHAT: TIntegerField;
    qryCongthucCT_THUTU_TINH: TIntegerField;
    qryCongthucCT_THUTU_HIENTHI: TIntegerField;
    qryCongthucCT_SESSION: TIntegerField;
    qryCongthucCT_WIDTH: TIntegerField;
    dxlcDeptListGroup_Root: TdxLayoutGroup;
    dxlcDeptList: TdxLayoutControl;
    tlDeptList: TdxDBTreeList;
    dxlcDeptListItem1: TdxLayoutItem;
    dsDeptList: TDataSource;
    qryDeptList: TIBOQuery;
    qryDeptListDEPT_NO: TWideStringField;
    qryDeptListDEPT_NAME: TWideStringField;
    qryDeptListP_DEPT_NO: TWideStringField;
    qryDeptListLEFT_INDEX: TIntegerField;
    qryDeptListRIGHT_INDEX: TIntegerField;
    tlDeptListDEPT_NAME: TdxDBTreeListColumn;
    acSaochepBangluong: TAction;
    dxSaochepLuong: TdxBarButton;
    dxKhoitaoLuong: TdxBarSubItem;
    dsSession: TDataSource;
    qrySessionDetail: TIBOQuery;
    qrySessionDetailPA_MA: TIntegerField;
    qrySessionDetailCT_MA: TIntegerField;
    qrySessionDetailCT_KYHIEU: TWideStringField;
    qrySessionDetailCT_TIEUDE: TWideStringField;
    qrySessionDetailCT_KIEUDULIEU: TWideStringField;
    qrySessionDetailCT_BIEUTHUC: TWideStringField;
    qrySessionDetailCT_NHAPTRUCTIEP: TIntegerField;
    qrySessionDetailCT_HINHTHUC_NHAPLIEU: TWideStringField;
    qrySessionDetailCT_TUDONG_CAPNHAT: TIntegerField;
    qrySessionDetailCT_THUTU_TINH: TIntegerField;
    qrySessionDetailCT_THUTU_HIENTHI: TIntegerField;
    qrySessionDetailCT_SESSION: TIntegerField;
    qrySessionDetailCT_WIDTH: TIntegerField;
    acChonthemNhanvien: TAction;
    acGetSelectedEmployee: TAction;
    dxChonthemNhanvien: TdxBarButton;
    qryLuong: TIBOQuery;
    qryLuongWB_KEY_ID: TIntegerField;
    qryLuongMA_NHANVIEN: TWideStringField;
    qryLuongFULL_NAME: TWideStringField;
    qryLuongACCOUNT_ID: TWideStringField;
    qryLuongACCOUNT_BANK: TWideStringField;
    qryLuongEMAIL: TWideStringField;
    qryLuongMA_DONVI: TWideStringField;
    qryLuongDEPT_NAME: TWideStringField;
    qryLuongMA_CHUCVU: TWideStringField;
    qryLuongTITLE_NAME: TWideStringField;
    qryLuongMA_THANG: TIntegerField;
    qryLuongMA_NAM: TIntegerField;
    dxShowError: TdxCheckEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    acTuychon: TAction;
    dxChonmauIn: TdxBarControlContainerItem;
    dxMauin: TdxPopupEdit;
    acXemMauin: TAction;
    acThietkeMauin: TAction;
    acInbangluong: TAction;
    dxXem: TdxBarButton;
    dxThietkeMauin: TdxBarButton;
    dxInBangluong: TdxBarButton;
    dxlcMauinGroup_Root: TdxLayoutGroup;
    dxlcMauin: TdxLayoutControl;
    gridMauin: TdxDBGrid;
    dxlcMauinItem1: TdxLayoutItem;
    dsMauin: TDataSource;
    qryMauin: TIBOQuery;
    qryMauinKEY_ID: TIntegerField;
    qryMauinTIEUDE_MAUIN: TWideStringField;
    qryMauinFILE_NAME: TWideStringField;
    qryMauinFILE_CONTENT: TBlobField;
    gridMauinTIEUDE_MAUIN: TdxDBGridColumn;
    gridMauinFILE_NAME: TdxDBGridColumn;
    ElPopupButton1: TElPopupButton;
    dxlcMauinItem2: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxlcMauinItem3: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxlcMauinItem4: TdxLayoutItem;
    dxlcMauinGroup1: TdxLayoutGroup;
    acDanhmucMauin: TAction;
    ppLuong: TppDBPipeline;
    rpLuong: TppReport;
    dsnLuong: TppDesigner;
    procedure acRefreshDSBangluongExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acDangkyBangluongMoiExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acHieuchinhTTBangluongExecute(Sender: TObject);
    procedure acHieuchinhTTBangluongUpdate(Sender: TObject);
    procedure tlBangluongMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acXoabangluongExecute(Sender: TObject);
    procedure acXoabangluongUpdate(Sender: TObject);
    procedure tlBangluongDblClick(Sender: TObject);
    procedure acChitietBangluongExecute(Sender: TObject);
    procedure acDulieuDonviExecute(Sender: TObject);
    procedure acDulieuVitriExecute(Sender: TObject);
    procedure acDulieuChucvuExecute(Sender: TObject);
    procedure dxChonDonviInitPopup(Sender: TObject);
    procedure dxChonDonviCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure acXembangluongUpdate(Sender: TObject);
    procedure acXembangluongExecute(Sender: TObject);
    procedure acKhoitaoBangluongExecute(Sender: TObject);
    procedure dxChophepHieuchinhChange(Sender: TObject);
    procedure acTinhluongExecute(Sender: TObject);
    function TinhLuong_Canhan: TTimeSpend;
    function TinhLuong_Session: TTimeSpend;
    function Cotluong: Variant;
    procedure acTinhluongNhanhExecute(Sender: TObject);
    procedure acTinhluongNhanhUpdate(Sender: TObject);
    procedure acTinhluongUpdate(Sender: TObject);
    procedure tlDeptListDblClick(Sender: TObject);
    procedure acSaochepBangluongExecute(Sender: TObject);
    procedure acChonthemNhanvienExecute(Sender: TObject);
    procedure acGetSelectedEmployeeExecute(Sender: TObject);
    procedure gridLuongDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure gridLuongCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: WideString; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure dxShowErrorChange(Sender: TObject);
    procedure acDulieuChungExecute(Sender: TObject);
    procedure ApplyGridView;
    procedure SaveGridView;
    procedure acTuychonUpdate(Sender: TObject);
    procedure acTuychonExecute(Sender: TObject);
    procedure acDanhmucMauinExecute(Sender: TObject);
    procedure dxMauinInitPopup(Sender: TObject);
    procedure dxMauinCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure gridMauinDblClick(Sender: TObject);
    procedure acXemMauinExecute(Sender: TObject);
    function PrepareReport: boolean;
    procedure DefOnBeforePrint(isprinted: boolean; qryReport: TIBOQuery);
    procedure acThietkeMauinExecute(Sender: TObject);
    procedure acInbangluongExecute(Sender: TObject);
  private
    { Private declarations }
    F_DEPT_NO, F_DEPT_NAME: WideString;
    F_DEPT_LEFT_INDEX, F_DEPT_RIGHT_INDEX: integer;
    F_THANG, F_NAM, F_PA_MA: Integer;
    F_PA_KYHIEU: string;
    F_TIEUDE: WideString;
    F_Script: TSSP_Script;
    F_FieldList: TStrings;
    F_FILE_NAME:string;
    F_FILE_TIEUDE:widestring;

  public
    { Public declarations }
    F_ErrorList: TStrings;
    property PA_MA:integer read F_PA_MA;
    property P_DEPT_NO: WideString read F_DEPT_NO;
    property P_THANG: integer read F_THANG;
    property P_NAM: integer read F_NAM;
    property P_LEFT_INDEX: integer read F_DEPT_LEFT_INDEX;
    property P_RIGHT_INDEX: integer read F_DEPT_RIGHT_INDEX;
    property P_PA_KYHIEU: string read F_PA_KYHIEU;
  end;
function GetTotalTime(var t: TTimeSpend): double;
var
  frmLuong_Bangluong: TfrmLuong_Bangluong;

implementation

uses MainDM, Luong_ChitietBangForm, PopupMainForm, SSP_Library,
  Luong_DonviForm, Luong_ChucvuForm, Luong_VitriForm, Luong_TinhluongForm,
  DateUtils,ppCtrls,ppTypes,
  SSP_Luong, Luong_SapchepForm, Luong_Themnhanvien, LuongDataModule,Registry,
  Luong_TienichNhaplieuForm, Luong_ToolForm, Luong_MauinForm;

{$R *.dfm}

function GetTotalTime(var t: TTimeSpend): double;
begin
  t.total_time := (t.end_time - t.begin_time) * 86400;
  result := t.total_time;
end;
//==================================================

procedure TfrmLuong_Bangluong.acRefreshDSBangluongExecute(Sender: TObject);
var
  THANG, NAM: integer;
begin
  inherited;
  if qryBangluong.Active then
    qryBangluong.Close;
  qryBangluong.Open;
  if memBangluong.Active then
    memBangluong.Close;
  memBangluong.Open;
  if not qryBangluong.IsEmpty then
  begin
    qryBangluong.First;
    while not qryBangluong.Eof do
    begin
      if (NAM <> qryBangluongNAM.Value) then
      begin
        memBangluong.Append;
        memBangluongKEY_ID.Value := 'NAM_' + IntToStr(qryBangluongNAM.Value);
        memBangluongP_ID.Clear;
        memBangluongTIEU_DE.Value := UTF8Decode('NĂM ' +
          IntToStr(qryBangluongNAM.Value));
        memBangluongIMG_INDEX.Value := 0;
        memBangluong.Post;
        NAM := qryBangluongNAM.Value;
        THANG := -1;
      end;

      if (THANG <> qryBangluongTHANG.Value) then
      begin
        memBangluong.Append;
        memBangluongKEY_ID.Value := 'NAM_' + IntToStr(qryBangluongNAM.Value) +
          '_THANG_' + IntToStr(qryBangluongTHANG.Value);
        memBangluongP_ID.Value := 'NAM_' + IntToStr(qryBangluongNAM.Value);
        memBangluongTIEU_DE.Value := UTF8Decode('Tháng ' +
          IntToStr(qryBangluongTHANG.Value) + '/' +
          IntToStr(qryBangluongNAM.Value));
        memBangluongIMG_INDEX.Value := 1;
        THANG := qryBangluongTHANG.Value;
        memBangluong.Post;
      end;
      memBangluong.Append;
      memBangluongKEY_ID.Value := qryBangluongL_ID.AsString;
      memBangluongP_ID.Value := 'NAM_' + IntToStr(qryBangluongNAM.Value) +
        '_THANG_' + IntToStr(qryBangluongTHANG.Value);
      memBangluongTIEU_DE.Value := qryBangluongTIEU_DE.Value;
      memBangluongIMG_INDEX.Value := 2;
      memBangluongL_ID.Value := qryBangluongL_ID.Value;
      memBangluongPA_MA.Value := qryBangluongPA_MA.Value;
      memBangluongPA_KYHIEU.Value := qryBangluongPA_KYHIEU.Value;
      memBangluongTHANG.Value := qryBangluongTHANG.Value;
      membangluongNAM.Value := qryBangluongNAM.Value;
      memBangluong.Post;
      qryBangluong.Next;
    end;
  end;
  tlBangluong.Repaint;
end;

procedure TfrmLuong_Bangluong.FormCreate(Sender: TObject);
begin
  inherited;
  pageContent.ShowTabs := false;
  acRefreshDSBangluong.Execute;
  pageContent.ActivePage := tabIntroduce;
  pageContent.ShowTabs := false;
  F_Script := TSSP_Script.Create(self);
  F_FieldList := TStringList.Create;
  F_ErrorList := TStringList.Create;
end;

procedure TfrmLuong_Bangluong.acDangkyBangluongMoiExecute(Sender: TObject);
begin
  inherited;
  frmLuong_ChitietBang := TfrmLuong_ChitietBang.Create(self);
  try
    if frmLuong_ChitietBang.ShowModal = mrOk then
      acRefreshDSBangluong.Execute;
  finally
    frmLuong_ChitietBang.Free;
    frmLuong_ChitietBang := nil;
  end;
end;

procedure TfrmLuong_Bangluong.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: integer;
begin
  inherited;
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
  frmLuong_Bangluong := nil;
end;

procedure TfrmLuong_Bangluong.acHieuchinhTTBangluongExecute(
  Sender: TObject);
begin
  inherited;
  SaveGridView;
  frmLuong_ChitietBang := TfrmLuong_ChitietBang.Create(self,
    memBangluongL_ID.Value);
  try
    if frmLuong_ChitietBang.ShowModal = mrOk then
      acRefreshDSBangluong.Execute;
  finally
    frmLuong_ChitietBang.Free;
    frmLuong_ChitietBang := nil;
  end;
end;

procedure TfrmLuong_Bangluong.acHieuchinhTTBangluongUpdate(
  Sender: TObject);
begin
  inherited;
  acHieuchinhTTBangluong.Enabled := (memBangluongL_ID.Value > 0);
end;

procedure TfrmLuong_Bangluong.tlBangluongMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Button = mbRight then
    menuPop.PopupFromCursorPos;
end;

procedure TfrmLuong_Bangluong.acXoabangluongExecute(Sender: TObject);
begin
  inherited;
  if ShowMessageUnicode(88) = mrYes then
  begin
    try
      scriptExecute.SQL.Clear;
      scriptExecute.SQL.Add('delete from WB_' + memBangluongPA_KYHIEU.AsString +
        ' where MA_THANG=' + memBangluongTHANG.AsString + ' and MA_NAM=' +
        memBangluongNAM.AsString + ';');
      scriptExecute.SQL.Add('delete from HR_LUONG_THANG where L_ID = ' +
        memBangluongL_ID.AsString + ';');
      scriptExecute.SQL.Add('COMMIT WORK;');
      scriptExecute.Execute;
      ShowMessageUnicode(89);
      acRefreshDSBangluong.Execute;
    except
      ShowMessageUnicode(90);
    end;
  end;
end;

procedure TfrmLuong_Bangluong.acXoabangluongUpdate(Sender: TObject);
begin
  inherited;
  acXoabangluong.Enabled := (memBangluongL_ID.Value > 0);
end;

procedure TfrmLuong_Bangluong.tlBangluongDblClick(Sender: TObject);
begin
  inherited;
  acChitietBangluong.Execute;
end;

procedure TfrmLuong_Bangluong.acChitietBangluongExecute(Sender: TObject);
var
  i: integer;
  col: TdxDBTreeListColumn;
  band: TdxTreeListBand;
  insert_s1, insert_s2, update_s1, delete_s1: string;
  f: TField;
begin
  inherited;
  if Assigned(frmLuong_Themnhanvien) then
    frmLuong_Themnhanvien.Free;
  frmLuong_Themnhanvien := nil;

  if memBangluongIMG_INDEX.Value <> 2 then
    exit;
  Screen.Cursor := crSQLWait;
  if F_PA_KYHIEU<>'' then
    SaveGridView;
  F_THANG := memBangluongTHANG.Value;
  F_NAM := memBangluongNAM.Value;
  F_PA_KYHIEU := memBangluongPA_KYHIEU.Value;
  F_TIEUDE := memBangluongTIEU_DE.Value;
  F_PA_MA := memBangluongPA_MA.Value;
  lblListCaption.Caption := WideUpperCase(F_TIEUDE);

  //Buoc 1: xoa trang VIEW bang luong
  qryLuong.DisableControls;

  gridLuong.BeginUpdate;
  if qryLuong.Active then
    qryLuong.Close;
  if gridLuong.ColumnCount > 0 then
  begin
    for i := gridLuong.ColumnCount - 1 downto 0 do
    begin
      if gridLuong.Columns[i].Tag <> -1 then
        gridLuong.Columns[i].Free;
    end;
  end;
  if gridLuong.Bands.Count > 1 then
  begin
    for i := gridLuong.Bands.Count - 1 downto 0 do
    begin
      if gridLuong.Bands[i].DisableCustomizing = false then
        gridLuong.Bands[i].Free;
    end;
  end;

  F_Script.ClearIdentifiers;
  InitIdentifier(F_Script, false);
  // Buoc 2: khoi tao Banner-Session

  if qrySession.Active then
    qrySession.Close;
  qrySession.ParamByName('PA_MA').Value := F_PA_MA;
  qrySession.Open;
  if qrySession.IsEmpty = false then
  begin

    qrySession.First;
    while not qrySession.Eof do
    begin
      band := gridLuong.Bands.Add;
      band.Caption := qrySessionS_TIEUDE.Value;
      qrySession.Next;
    end;
  end;
  //Buoc 3: khoi tao GRID
  // - Khoi tao phan THONG TIN NHAN VIEN

  if qryCongthuc.Active then
    qryCongthuc.Close;
  qryCongthuc.ParamByName('PA_MA').Value := F_PA_MA;
  qryCongthuc.Open;

  if qryLuong.Active then
    qryLuong.Close;
  qryLuong.SQL.Clear;
  qryLuong.SQL.Text := s_select;

  qryLuong.DeleteSQL.Clear;
  qryLuong.DeleteSQL.Text := 'delete from WB_' + F_PA_KYHIEU +
    ' where WB_KEY_ID=:OLD_WB_KEY_ID';
  qryLuong.KeyLinks.Clear;
  qryLuong.KeyLinks.Add('WB_KEY_ID');
  qryLuong.GeneratorLinks.Clear;
  qryLuong.GeneratorLinks.Add('WB_KEY_ID=GEN_WB_' + F_PA_KYHIEU + '_ID');

  qryLuong.InsertSQL.Clear;
  qryLuong.InsertSQL.Text := 'insert into WB_' + F_PA_KYHIEU;
  qryLuong.EditSQL.Clear;
  qryLuong.EditSQL.Text := 'update WB_' + F_PA_KYHIEU + ' set ';

  insert_s1 :=
    'WB_KEY_ID , MA_NHANVIEN , MA_DONVI , MA_CHUCVU, MA_THANG , MA_NAM ';
  insert_s2 :=
    ':WB_KEY_ID , :MA_NHANVIEN , :MA_DONVI , :MA_CHUCVU, :MA_THANG , :MA_NAM ';

  update_s1 := ' WB_KEY_ID=:WB_KEY_ID , ' +
    ' MA_NHANVIEN=:MA_NHANVIEN , ' +
    ' MA_DONVI=:MA_DONVI ,' +
    ' MA_CHUCVU=:MA_CHUCVU,' +
    ' MA_THANG=:MA_THANG ,' +
    ' MA_NAM=:MA_NAM ';

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
      qryLuong.SQL.Text := qryLuong.SQL.Text + ' , ' +
        qryCongthucCT_KYHIEU.AsString;
      if qryCongthucCT_KIEUDULIEU.Value = 'DOUBLE' then
      begin
        f := TFloatField.Create(qryLuong);
        f.SetFieldType(ftFloat);
        TFloatField(f).DisplayFormat := sysConfig.FloatFormat;
        col := gridLuong.CreateColumn(TdxDBGridCalcColumn)
      end
      else if qryCongthucCT_KIEUDULIEU.Value = 'VARCHAR' then
      begin
        f := TWideStringField.Create(qryLuong);
        f.SetFieldType(ftWideString);
        col := gridLuong.CreateColumn(TdxDBGridColumn);
      end
      else if qryCongthucCT_KIEUDULIEU.Value = 'DATE' then
      begin
        f := TDateField.Create(qryLuong);
        f.SetFieldType(ftDate);
        col := gridLuong.CreateColumn(TdxDBGridDateColumn);
      end;

      // cau INSERT SQL
      insert_s1 := insert_s1 + ' , ' + qryCongthucCT_KYHIEU.AsString;
      insert_s2 := insert_s2 + ' , :' + qryCongthucCT_KYHIEU.AsString;
      update_s1 := update_s1 + ' , ' + qryCongthucCT_KYHIEU.AsString + '=:' +
        qryCongthucCT_KYHIEU.AsString;

      f.Name := qryLuong.Name + qryCongthucCT_KYHIEU.AsString;
      f.FieldName := qryCongthucCT_KYHIEU.AsString;
      f.FieldKind := fkData;
      f.DataSet := qryLuong;
      F_FieldList.AddObject(qryCOngthucCT_KYHIEU.AsString, f);

      col.Name := gridLuong.Name + qryCongthucCT_KYHIEU.AsString;
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
  qryLuong.SQL.Text := qryLuong.SQL.Text +
    ' FROM WB_' + F_PA_KYHIEU + ' ' +
    s_leftjoin + ' ' + s_where;
  qryLuong.InsertSQL.Text := qryLuong.InsertSQL.Text + '(' + insert_s1 +
    ') values (' + insert_s2 + ')';
  qryLuong.EditSQL.Text := qryLuong.EditSQL.Text + update_s1 +
    ' where WB_KEY_ID=:OLD_WB_KEY_ID';
  qryLuong.Prepare;
  acXembangluong.Execute;
  frameToolbar1.SetDataSource(dsLuong);
  frameToolbar1.SetListSource(dsLuong);
  Apply_Grid(gridLuong);
  gridLuong.EndUpdate;
  qryLuong.EnableControls;
  pageContent.ActivePage := tabVIewDetail;
  ApplyGridView;
  if Assigned(frmLuong_Tuychon) then
    frmLuong_Tuychon.ReloadGridView;
  Screen.Cursor := crDefault;
end;

procedure TfrmLuong_Bangluong.acDulieuDonviExecute(Sender: TObject);
begin
  inherited;
  frmLuong_Donvi := TfrmLuong_DOnvi.Create(self, F_PA_MA, F_PA_KYHIEU, F_THANG,
    F_NAM);
  try
    frmLuong_Donvi.ShowModal;
  finally
    frmLuong_donvi.Free;
    frmLuong_Donvi := nil;
  end;

end;

procedure TfrmLuong_Bangluong.acDulieuVitriExecute(Sender: TObject);
begin
  inherited;
  frmLuong_Vitri := TfrmLuong_Vitri.Create(self, F_PA_MA, F_PA_KYHIEU, F_THANG,
    F_NAM);
  try
    frmLuong_Vitri.ShowModal;
  finally
    frmLuong_Vitri.Free;
    frmLuong_Vitri := nil;
  end;
end;

procedure TfrmLuong_Bangluong.acDulieuChucvuExecute(Sender: TObject);
begin
  inherited;
  frmLuong_Chucvu := TfrmLuong_Chucvu.Create(self, F_PA_MA, F_PA_KYHIEU,
    F_THANG, F_NAM);
  try
    frmLuong_Chucvu.ShowModal;
  finally
    frmLuong_Chucvu.Free;
    frmLuong_Chucvu := nil;
  end;
end;

procedure TfrmLuong_Bangluong.dxChonDonviInitPopup(Sender: TObject);
begin
  inherited;
  if not qryDeptList.Active then
  begin
    qryDeptList.Open;
    tlDeptList.FullExpand;
  end;
  InitPopupControl('dxlcDeptList', self, sender, 2);
end;

procedure TfrmLuong_Bangluong.dxChonDonviCloseUp(Sender: TObject;
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

procedure TfrmLuong_Bangluong.acXembangluongUpdate(Sender: TObject);
begin
  inherited;
  acXemBangluong.Enabled := qryLuong.Prepared;
end;

procedure TfrmLuong_Bangluong.acXembangluongExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if qryLuong.Active then
    qryLuong.Close;
  qryLuong.ParamByName('DEPT_NO').Value := F_DEPT_NO;
  qryLuong.ParamByName('THANG').Value := F_THANG;
  qryLuong.ParamByName('NAM').Value := F_NAM;
  if dxCapduoi.Checked then
    qryLuong.ParamByName('VIEW_ALL').Value := 1
  else
    qryLuong.ParamByName('VIEW_ALL').Value := 0;
  qryLuong.ParamByName('LEFT_INDEX').Value := F_DEPT_LEFT_INDEX;
  qryLuong.ParamByName('RIGHT_INDEX').Value := F_DEPT_RIGHT_INDEX;
  qryLuong.Open;
  gridLuong.FullExpand;
  Screen.Cursor := crDefault;
end;

procedure TfrmLuong_Bangluong.acKhoitaoBangluongExecute(Sender: TObject);
var
  res: integer;
begin
  inherited;
  scriptExecute.SQL.Clear;
  scriptExecute.SQL.Add('insert into WB_' + F_PA_KYHIEU +
    '(ma_nhanvien,ma_donvi,ma_chucvu,ma_thang,ma_nam) '
    + 'select ma_nhanvien, ma_donvi, ma_chucvu,' + IntToStr(F_THANG) + ',' +
    IntToStr(F_NAM)
    + ' from hr_luong_pa_nv where ma_pa=' + IntToStr(F_PA_MA) + ' and'
    + ' ma_nhanvien||ma_donvi||ma_chucvu not in '
    + ' (select ma_nhanvien||ma_donvi||ma_chucvu '
    + '  from WB_' + F_PA_KYHIEU + ' where ma_thang=' + IntToStr(F_THANG) +
    ' and ma_nam=' + IntToStr(F_NAM) + ');');
  scriptExecute.SQL.Add('COMMIT WORK;');
  try
    scriptExecute.Execute;
    acXembangluong.Execute;
  except
    ShowMessage('Error while creating wagebook data');
  end;

end;

procedure TfrmLuong_Bangluong.dxChophepHieuchinhChange(Sender: TObject);
begin
  inherited;
  if dxChophepHieuchinh.Checked then
    gridLuong.OptionsBehavior := gridLuong.OptionsBehavior + [edgoEditing]
  else
    gridLuong.OptionsBehavior := gridLuong.OptionsBehavior - [edgoEditing]
end;

procedure TfrmLuong_Bangluong.acTinhluongExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frmLuong_Tinhluong) then
  begin
    frmLuong_Tinhluong := TfrmLuong_Tinhluong.Create(self);
    frmLuong_Tinhluong.Show;
  end
  else
    frmLuong_Tinhluong.BringToFront;
end;

function TfrmLuong_Bangluong.Cotluong: Variant;
var
  cur_function: string;
begin
  try
    cur_function := Trim(F_Script.GetCurFunction);
    if cur_function = '' then
      result := ''
    else
    begin
      if Assigned(qryLuong.FindField(cur_function)) then
      begin
        if qryLuong.FieldByName(cur_function).IsNull then
        begin
          if (qryLuong.FieldByName(cur_function) is TFloatField) then
            result := 0
          else
            result := '';
        end
        else
          result := qryLuong.FieldByName(cur_function).Value;
      end
    end;
  except
    result := 'Error';
  end;
end;
//=========================================================================================

function TfrmLuong_Bangluong.TinhLuong_Canhan: TTimeSpend;
//MO TA : thuc hien tinh luong do nhan vien hien tai tren bang luong
begin
  if dmLuong.PA_KYHIEU <> F_PA_KYHIEU then
    dmLuong.PA_KYHIEU := F_PA_KYHIEU;
  result.begin_time := Now;
  dmLuong.MA_NHANVIEN := qryLuongMA_NHANVIEN.Value;
  dmLuong.MA_DONVI := qryLuongMA_CHUCVU.Value;
  dmLuong.MA_CHUCVU := qryLuongMA_CHUCVU.Value;
  dmLuong.THANG := qryLuongMA_THANG.Value;
  dmLuong.NAM := qryLuongMA_NAM.Value;

  if qryLuong.Eof then
  begin
    result.end_time := Now;
    result.total_time := result.end_time - result.begin_time;
    exit;
  end;
  try
    if not (qryLuong.State in [dsEdit, dsInsert]) then
      qryLuong.Edit;
    qryCongthuc.First;
    while not qryCongthuc.Eof do
    begin
      if qryCongthucCT_HINHTHUC_NHAPLIEU.Value = 'TINHTOAN' then
      begin
        F_Script.Script := qryCongthucCT_BIEUTHUC.Value;
        try
          qryLuong.FieldByName(qryCongthucCT_KYHIEU.AsString).Value :=
            F_Script.AnalyzeScript;
        except
          qryLuong.FieldByName(qryCongthucCT_KYHIEU.AsString).Clear;
          F_ErrorList.Add(qryCongthucCT_KYHIEU.AsString);
        end;
      end;
      qryCongthuc.Next;
    end;
  finally
    if qryLuong.State in [dsEdit] then
      qryLuong.Post;
  end;
  result.end_time := Now;
end;

function TfrmLuong_Bangluong.TinhLuong_Session: TTimeSpend;
//MO TA : thuc hien tinh luong do nhan vien hien tai tren bang luong
begin
  if dmLuong.PA_KYHIEU <> F_PA_KYHIEU then
    dmLuong.PA_KYHIEU := F_PA_KYHIEU;
  dmLuong.MA_NHANVIEN := qryLuongMA_NHANVIEN.Value;
  dmLuong.MA_DONVI := qryLuongMA_CHUCVU.Value;
  dmLuong.MA_CHUCVU := qryLuongMA_CHUCVU.Value;
  dmLuong.THANG := qryLuongMA_THANG.Value;
  dmLuong.NAM := qryLuongMA_NAM.Value;

  result.begin_time := Now;
  if not qrySessionDetail.Active then
    qrySessionDetail.Open
  else
    qrySessionDetail.Refresh;
  if qrySessionDetail.Eof then
  begin
    result.end_time := Now;
    result.total_time := result.end_time - result.begin_time;
    exit;
  end;
  try
    if not (qryLuong.State in [dsEdit, dsInsert]) then
      qryLuong.Edit;
    qrySessionDetail.First;
    while not qrySessionDetail.Eof do
    begin
      if qrySessionDetailCT_HINHTHUC_NHAPLIEU.Value = 'TINHTOAN' then
      begin
        F_Script.Script := qrySessionDetailCT_BIEUTHUC.Value;
        try
          qryLuong.FieldByName(qrySessionDetailCT_KYHIEU.AsString).Value :=
            F_Script.AnalyzeScript;
        except
          qryLuong.FieldByName(qrySessionDetailCT_KYHIEU.AsString).Clear;
          F_ErrorList.Add(qrySessionDetailCT_KYHIEU.AsString);
        end;
      end;
      qrySessionDetail.Next;
    end;
  finally
    if qryLuong.State in [dsEdit] then
      qryLuong.Post;
    if frmLuong_Tinhluong.dxUntracked.Checked=false then
    begin
       frmLuong_Tinhluong.bar.StepIt;
       frmLuong_Tinhluong.Repaint;
    end;
  end;
  result.end_time := Now;

end;

procedure TfrmLuong_Bangluong.acTinhluongNhanhExecute(Sender: TObject);
var
  t: TTimeSpend;
begin
  inherited;
  F_ErrorList.Clear;
  Screen.Cursor := crSQLWait;
  try
    t := TinhLuong_Canhan;
    ShowMessageUnicode(39);
  except
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmLuong_Bangluong.acTinhluongNhanhUpdate(Sender: TObject);
begin
  inherited;
  acTinhluongnhanh.Enabled := not qryLuong.IsEmpty;
end;

procedure TfrmLuong_Bangluong.acTinhluongUpdate(Sender: TObject);
begin
  inherited;
  acTinhLuong.Enabled := not qryLuong.IsEmpty;
end;

procedure TfrmLuong_Bangluong.tlDeptListDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self, true, sender);
end;

procedure TfrmLuong_Bangluong.acSaochepBangluongExecute(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmLuong_Saochep, frmLuong_Saochep);
end;

procedure TfrmLuong_Bangluong.acChonthemNhanvienExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frmLuong_Themnhanvien) then
  begin
    frmLuong_Themnhanvien := TfrmLuong_Themnhanvien.Create(self, F_PA_KYHIEU,
      F_THANG, F_NAM);
    frmLuong_Themnhanvien.Show;
  end
  else
    frmLuong_Themnhanvien.BringToFront;
end;

procedure TfrmLuong_Bangluong.acGetSelectedEmployeeExecute(
  Sender: TObject);
begin
  inherited;
  if not Assigned(frmLuong_Themnhanvien) then
    exit;
  if frmLuong_Themnhanvien.memData.IsEmpty then
    exit;
  frmLuong_Themnhanvien.memData.First;
  qryLuong.DisableControls;
  while not frmLuong_Themnhanvien.memData.Eof do
  begin
    if not (qryLuong.State in [dsInsert]) then
      qryLuong.Append;
    qryLuong.FieldByName('MA_NHANVIEN').Value :=
      frmLuong_Themnhanvien.memData.FieldByName('EMP_NO').Value;
    qryLuong.FieldByName('FULL_NAME').Value :=
      frmLuong_Themnhanvien.memData.FieldByName('FULL_NAME').Value;
    qryLuong.FieldByName('MA_DONVI').Value :=
      frmLuong_Themnhanvien.memData.FieldByName('DEPT_NO').Value;
    qryLuong.FieldByName('DEPT_NAME').Value :=
      frmLuong_Themnhanvien.memData.FieldByName('DEPT_NAME').Value;
    qryLuong.FieldByName('MA_CHUCVU').Value :=
      frmLuong_Themnhanvien.memData.FieldByName('TITLE_NO').Value;
    qryLuong.FieldByName('TITLE_NAME').Value :=
      frmLuong_Themnhanvien.memData.FieldByName('TITLE_NAME').Value;
    qryLuong.FieldByName('MA_THANG').Value := F_THANG;
    qryLuong.FieldByName('MA_NAM').Value := F_NAM;

    try
      qryLuong.Post;
    except
      qryLuong.Cancel;
    end;
    frmLuong_Themnhanvien.memData.Next;
  end;
  qryLuong.EnableControls;
end;

procedure TfrmLuong_Bangluong.gridLuongDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  if Assigned(frmLuong_Themnhanvien) then
    frmLuong_Themnhanvien.SetFocusForm(self)
end;

procedure TfrmLuong_Bangluong.gridLuongCustomDraw(Sender: TObject;
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

procedure TfrmLuong_Bangluong.dxShowErrorChange(Sender: TObject);
begin
  inherited;
  gridLuong.Repaint;
end;

procedure TfrmLuong_Bangluong.acDulieuChungExecute(Sender: TObject);
begin
  inherited;
  if Assigned(frmLuong_TienichNhaplieu) then
     frmLuong_TienichNhaplieu.BringToFront
  else
  begin
    frmLuong_TienichNhaplieu:=TfrmLuong_TienichNhaplieu.Create(self);
    frmLuong_TienichNhaplieu.Show;
  end;

end;

procedure TfrmLuong_Bangluong.ApplyGridView;
var reg :TRegistry;
    i:integer;
    bool_value:boolean;
    text_value:string;
begin
  reg:=TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey(REGISTRY_ROOT + '\'+sysConfig.User+'\Bangluong\'+F_PA_KYHIEU, true);
  for i:=1 to gridLuong.Bands.Count-1 do
  begin
    try
      bool_value:= reg.ReadBool('Band'+IntToStr(i));
      gridLuong.Bands[i].Visible:=bool_value;
    except
    end
  end;
  for i:=0 to gridLuong.ColumnCount-1 do
  begin
    if gridLuong.Columns[i].BandIndex=0 then Continue;
    try
      bool_value:= reg.ReadBool(gridLuong.Columns[i].Name);
      gridLuong.Columns[i].Visible:=bool_value;
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
procedure TfrmLuong_Bangluong.SaveGridView;
var reg :TRegistry;
    i:integer;
begin
  reg:=TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey(REGISTRY_ROOT + '\'+sysConfig.User+'\Bangluong\'+F_PA_KYHIEU, true);
  for i:=1 to gridLuong.Bands.Count-1 do
  begin
    try
      reg.WriteBool('Band'+IntToStr(i),gridLuong.Bands[i].Visible);
    except
    end
  end;
  for i:=0 to gridLuong.ColumnCount-1 do
  begin
    if gridLuong.Columns[i].BandIndex=0 then Continue;
    try
      reg.WriteBool(gridLuong.Columns[i].Name,gridLuong.Columns[i].Visible);
    except
    end
  end;
  reg.WriteString('TemplateFileName',F_FILE_NAME);
  reg.WriteString('TemplateFileTitle',UTF8Encode(F_FILE_TIEUDE));
  reg.CloseKey;
  reg.Free;
end;
procedure TfrmLuong_Bangluong.acTuychonUpdate(Sender: TObject);
begin
  inherited;
  acTuychon.Enabled:=(F_PA_KYHIEU<>'')
end;

procedure TfrmLuong_Bangluong.acTuychonExecute(Sender: TObject);
begin
  inherited;
  if Assigned(frmLuong_Tuychon) then
   frmLuong_Tuychon.BringToFront
  else
  begin
    frmLuong_Tuychon:=TfrmLuong_Tuychon.Create(self);
    frmLuong_Tuychon.Show;
  end;
end;

procedure TfrmLuong_Bangluong.acDanhmucMauinExecute(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmLuong_Mauin,frmLuong_Mauin);
  qryMauin.Refresh;
end;

procedure TfrmLuong_Bangluong.dxMauinInitPopup(Sender: TObject);
begin
  inherited;
  if not qryMauin.Active then
    qryMauin.Open;
    InitPopupControl('dxlcMauin',self,sender,2);
end;

procedure TfrmLuong_Bangluong.dxMauinCloseUp(Sender: TObject;
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

procedure TfrmLuong_Bangluong.gridMauinDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self,true,sender);
end;

procedure TfrmLuong_Bangluong.acXemMauinExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  DefOnBeforePrint(true, qryLuong);
  rpLuong.AllowPrintToFile := True;
  rpLuong.DeviceType := dtScreen;
  rpLuong.Print;
end;

function TfrmLuong_Bangluong.PrepareReport: boolean;
var
  pathName, pathDirectory: string;
begin
  try
    pathDirectory := ExtractFilePath(Application.ExeName) + 'Reports\WageReport';
    case sysConfig.Language of
      0, 1:
        pathName := pathDirectory + '\Vn\' + F_FILE_NAME;
      2:
        pathName := pathDirectory + '\Eng\' + F_FILE_NAME;
    end;
    if (FileExists(pathName)) then
    begin
      rpLuong.Template.FileName := pathName;
      rpLuong.Template.Load;
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

procedure TfrmLuong_Bangluong.DefOnBeforePrint(isprinted: boolean; qryReport: TIBOQuery);
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
    end;
    if not (compReport is TppLabel) then
      Continue;
    if (compReport as TppLabel).Height < 0.1 then
      (compReport as TppLabel).Height := 0.2;
    if isprinted = false then continue;
    CompCap := LowerCase(UTF8Encode((compReport as TppLabel).Caption));
    if (CompCap = 'lbl_param_month') then
      TppLabel(compReport).Caption := memBangluongTHANG.AsString
    else
      if (CompCap = 'lbl_param_year') then
      TppLabel(compReport).Caption := memBangluongNAM.AsString  
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

procedure TfrmLuong_Bangluong.acThietkeMauinExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  DefOnBeforePrint(false, qryLuong);
  dsnLuong.ShowModal;
  rpLuong.PrintToDevices;
end;

procedure TfrmLuong_Bangluong.acInbangluongExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  DefOnBeforePrint(true, qryLuong);
  rpLuong.AllowPrintToFile := True;
  rpLuong.DeviceType := dtPrinter;
  rpLuong.Print;
end;

end.
