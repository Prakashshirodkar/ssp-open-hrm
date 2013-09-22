unit DangkyPhepForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, ExtCtrls, ElPanel, ElSplit,
  dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxEdLib, dxDBELib,
  jzExtCtrls, jzGrids, jzPlannerCtrl, ElBtnCtl, ElPopBtn, ElPgCtl, DB,
  IBODataset, dxDBTLCl, dxGrClms, dxGrClEx, ActnList, jzEvents;

type
  TfrmDangkyPhep = class(TfrmEditBase)
    gridDSPhieu: TdxDBGrid;
    dxlcMainItem2: TdxLayoutItem;
    dxlcMainGroup2: TdxLayoutGroup;
    dxlcMainGroup3: TdxLayoutGroup;
    dxlcMainGroup6: TdxLayoutGroup;
    dxlcMainGroup8: TdxLayoutGroup;
    dxlcMainGroup7: TdxLayoutGroup;
    dxlcMainItem7: TdxLayoutItem;
    gridDSNhanvien: TdxDBGrid;
    ElPopupButton1: TElPopupButton;
    dxlcMainItem8: TdxLayoutItem;
    pageDetail: TElPageControl;
    dxlcMainItem9: TdxLayoutItem;
    tabNVDangky: TElTabSheet;
    gridChitietDK: TdxDBGrid;
    dsDSPhieuDK: TDataSource;
    qryDSPhieuDK: TIBOQuery;
    qryDSNhanvien: TIBOQuery;
    dsDSNhanvien: TDataSource;
    qryChitietDK: TIBOQuery;
    dsChitietDK: TDataSource;
    qryDSPhieuDKMASO_PHIEU: TWideStringField;
    qryDSPhieuDKNGAY_DANGKY: TDateField;
    qryDSPhieuDKNHANVIEN_LAPPHIEU: TWideStringField;
    qryDSPhieuDKDA_DUYET: TSmallintField;
    dxDBEdit1: TdxDBEdit;
    dxlcMainItem3: TdxLayoutItem;
    dxDBDateEdit1: TdxDBDateEdit;
    dxlcMainItem4: TdxLayoutItem;
    qryDSPhieuDKGHI_CHU: TWideStringField;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxlcMainItem6: TdxLayoutItem;
    dxlcMainGroup5: TdxLayoutGroup;
    dxDBMemo1: TdxDBMemo;
    dxlcMainItem10: TdxLayoutItem;
    qryDSPhieuDKFILE_NAME: TWideStringField;
    qryDSPhieuDKFILE_CONTENT: TBlobField;
    gridDSPhieuMASO_PHIEU: TdxDBGridColumn;
    gridDSPhieuNGAY_DANGKY: TdxDBGridDateColumn;
    qryDSNhanvienMASO_PHIEU: TWideStringField;
    qryDSNhanvienMASO_NHANVIEN: TWideStringField;
    qryDSNhanvienHO_TEN: TWideStringField;
    qryDSNhanvienTEN_DONVI: TWideStringField;
    qryDSNhanvienTEN_CHUCVU: TWideStringField;
    qryDSNhanvienSONGAY_DANGKY: TIntegerField;
    gridDSNhanvienMASO_NHANVIEN: TdxDBGridColumn;
    gridDSNhanvienHO_TEN: TdxDBGridPopupColumn;
    gridDSNhanvienTEN_DONVI: TdxDBGridColumn;
    gridDSNhanvienTEN_CHUCVU: TdxDBGridColumn;
    qryChitietDKMASO_PHIEU: TWideStringField;
    qryChitietDKMASO_NHANVIEN: TWideStringField;
    qryChitietDKTU_NGAY: TDateField;
    qryChitietDKDEN_NGAY: TDateField;
    qryChitietDKLOAI_NGAY: TWideStringField;
    qryChitietDKWDT_NAME: TWideStringField;
    qryChitietDKWDT_COLOR: TIntegerField;
    qryChitietDKGHI_CHU: TWideStringField;
    gridChitietDKTU_NGAY: TdxDBGridDateColumn;
    gridChitietDKDEN_NGAY: TdxDBGridDateColumn;
    gridChitietDKGHI_CHU: TdxDBGridColumn;
    gridChitietDKWDT_COLOR: TdxDBGridColumn;
    dxDBEdit2: TdxDBEdit;
    dxlcMainItem11: TdxLayoutItem;
    dxlcMainGroup4: TdxLayoutGroup;
    dxlcMainGroup9: TdxLayoutGroup;
    dxFromDate: TdxDateEdit;
    dxlcMainItem12: TdxLayoutItem;
    dxToDate: TdxDateEdit;
    dxlcMainItem13: TdxLayoutItem;
    ActionList1: TActionList;
    acXemDSPhieuDK: TAction;
    gridChitietDKWDT_NAME: TdxDBGridPopupColumn;
    gridChitietDK_SHOWCOLOR: TdxDBGridColumn;
    acPhatsinhDLChamcong: TAction;
    qryPhatsinh: TIBOQuery;
    gridDSPhieuDA_DUYET: TdxDBGridImageColumn;
    dxTrangThai: TdxDBImageEdit;
    dxlcMainItem5: TdxLayoutItem;
    dxlcMainGroup1: TdxLayoutGroup;
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure qryDSPhieuDKNewRecord(DataSet: TDataSet);
    procedure qryDSNhanvienNewRecord(DataSet: TDataSet);
    procedure qryChitietDKNewRecord(DataSet: TDataSet);
    procedure gridDSNhanvienHO_TENInitPopup(Sender: TObject);
    procedure gridDSNhanvienHO_TENCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxToDateChange(Sender: TObject);
    procedure dxFromDateChange(Sender: TObject);
    procedure acXemDSPhieuDKExecute(Sender: TObject);
    procedure gridChitietDKWDT_NAMEInitPopup(Sender: TObject);
    procedure gridChitietDKWDT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridChitietDK_SHOWCOLORCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDangkyPhep: TfrmDangkyPhep;

implementation

uses MainDM,DateUtils, PopupMainForm, SSP_Library;

{$R *.dfm}

procedure TfrmDangkyPhep.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  dmMain.DatasetLoadFile(sender,AbsoluteIndex);
end;

procedure TfrmDangkyPhep.FormCreate(Sender: TObject);
begin
  dxTrangThai.Descriptions.Add(UTF8Decode ('Chờ duyệt'));
  dxTrangThai.Descriptions.Add(UTF8Decode ('Đã duyệt'));
  dxTrangThai.Descriptions.Add(UTF8Decode ('Không duyệt'));
  dxTrangThai.Values.Add('0');
  dxTrangThai.Values.Add('1');
  dxTrangThai.Values.Add('2');

  inherited;
  dxFromDate.Date:=StartOfAYear(YearOf(Now));
  dxToDate.Date:=Today;
  acXemDSPhieuDK.Execute;

  qryDSNhanvien.Open;
  qryChitietDK.Open;
  frameToolbar1.SetDataSource(dsDSPhieuDK);
end;

procedure TfrmDangkyPhep.qryDSPhieuDKNewRecord(DataSet: TDataSet);
begin
  inherited;
  dxDBEdit1.SetFocus;
  qryDSPhieuDKNGAY_DANGKY.Value:=Today;
  qryDSPhieuDKNHANVIEN_LAPPHIEU.Value:=sysConfig.Username;
  qryDSPhieuDKDA_DUYET.Value:=0;
end;

procedure TfrmDangkyPhep.qryDSNhanvienNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryDSNhanvienMASO_PHIEU.Value:=qryDSPhieuDKMASO_PHIEU.Value;
end;

procedure TfrmDangkyPhep.qryChitietDKNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryChitietDKMASO_NHANVIEN.Value:=qryDSNhanvienMASO_NHANVIEN.Value;
  qryChitietDKMASO_PHIEU.Value:=qryDSNhanvienMASO_PHIEU.Value;
end;

procedure TfrmDangkyPhep.gridDSNhanvienHO_TENInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryEmp_Position.SQLWhere.Text:='where HR_ASSIGNMENT.is_main_position=:is_main_position and '+
                                              'HR_ASSIGNMENT.dismiss_date is null';
  frmPopupMain.qryEmp_Position.ParamByName('IS_MAIN_POSITION').Value:=1;
  frmPopupMain.qryEmp_Position.Open;
  InitPopupControl('dxlcEmp_Position', frmPopupMain, sender, 2.5,gridDSNhanvien);
end;

procedure TfrmDangkyPhep.gridDSNhanvienHO_TENCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryEmp_Position,
      qryDSNhanvien,
      'EMPLOYEE_NO;FULL_NAME;DEPT_NAME;TITLE_NAME',
      'MASO_NHANVIEN;HO_TEN;TEN_DONVI;TEN_CHUCVU',
      'FULL_NAME', Text);
  frmPopupMain.qryEmp_Position.Close;
  frmPopupMain.qryEmp_Position.SQLWhere.Clear;
end;

procedure TfrmDangkyPhep.dxToDateChange(Sender: TObject);
begin
  inherited;
  if dxToDate.Date<dxFromDate.Date then
     dxToDate.Date:=dxFromDate.Date;
end;

procedure TfrmDangkyPhep.dxFromDateChange(Sender: TObject);
begin
  inherited;
  if dxToDate.Date<dxFromDate.Date then
     dxToDate.Date:=dxFromDate.Date;
end;

procedure TfrmDangkyPhep.acXemDSPhieuDKExecute(Sender: TObject);
begin
  inherited;
  if qryDSPhieuDK.Active then
    qryDSPhieuDK.Close;
  qryDSPhieuDK.ParamByName('FROM_DATE').Value:=dxFromDate.Date;
  qryDSPhieuDK.ParamByName('TO_DATE').Value:=dxToDate.Date;
  qryDSPhieuDK.Open;
end;

procedure TfrmDangkyPhep.gridChitietDKWDT_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWorkDateType.Open;
  InitPopupControl('dxlcWorkDateType', frmPopupMain, sender, 2.5,gridChitietDK);
end;

procedure TfrmDangkyPhep.gridChitietDKWDT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryWorkDateType,
      qryChitietDK,
      'WDT_NO;WDT_NAME;WDT_COLOR',
      'LOAI_NGAY;WDT_NAME;WDT_COLOR',
      'WDT_NAME', Text);
    frmPopupMain.qryWorkDateType.Close;
end;

procedure TfrmDangkyPhep.gridChitietDK_SHOWCOLORCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  int_color: integer;
begin
  inherited;
  int_color :=
    StrToIntDef(VarToStr(ANode.Values[gridChitietDKWDT_COLOR.Index]), 0);
  AColor := int_color;
end;

end.
