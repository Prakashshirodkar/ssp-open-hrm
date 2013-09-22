unit TieuchuanPhepForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, ElPgCtl, ImgList, dxExEdtr,
  dxEdLib, dxDBELib, dxEditor, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB,
  IBODataset, dxDBTLCl, dxGrClms, ElBtnCtl, ElPopBtn, ActnList;

type
  TfrmTieuchuanPhep = class(TfrmEditBase)
    pageMain: TElPageControl;
    tabQuyche: TElTabSheet;
    tabPhanloaiNhanvien: TElTabSheet;
    ImageList1: TImageList;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDBPopupEdit1: TdxDBPopupEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxDBMemo1: TdxDBMemo;
    dxLayoutControl1Item4: TdxLayoutItem;
    gridDoituong: TdxDBGrid;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dsDoituong: TDataSource;
    qryDoituong: TIBOQuery;
    qryDanhsachNV: TIBOQuery;
    dsDanhsachNV: TDataSource;
    qryChitietQuyche: TIBOQuery;
    dsChitietQuyche: TDataSource;
    qryDoituongMA_DOITUONG: TWideStringField;
    qryDoituongTEN_DOITUONG: TWideStringField;
    qryDoituongGHI_CHU: TWideStringField;
    qryDoituongPHANLOAI_MACDINH: TWideStringField;
    qryDoituongWORK_TYPE_NAME: TWideStringField;
    gridDoituongTEN_DOITUONG: TdxDBGridColumn;
    gridDoituongWORK_TYPE_NAME: TdxDBGridColumn;
    gridChitietQuyche: TdxDBGrid;
    dxLayoutControl1Item6: TdxLayoutItem;
    qryChitietQuycheMA_DOITUONG: TWideStringField;
    qryChitietQuycheTU_THOIGIAN: TIntegerField;
    qryChitietQuycheDEN_THOIGIAN: TIntegerField;
    qryChitietQuycheSO_NGAYPHEP: TIntegerField;
    qryChitietQuycheCT_SO_NGAYPHEP: TWideStringField;
    gridChitietQuycheTU_THOIGIAN: TdxDBGridSpinColumn;
    gridChitietQuycheDEN_THOIGIAN: TdxDBGridSpinColumn;
    gridChitietQuycheSO_NGAYPHEP: TdxDBGridSpinColumn;
    gridChitietQuycheCT_SO_NGAYPHEP: TdxDBGridColumn;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Item1: TdxLayoutItem;
    gridQuyche: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxLayoutControl2Group2: TdxLayoutGroup;
    gridApdungNhanvien: TdxDBGrid;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Item3: TdxLayoutItem;
    gridNhanvien: TdxDBGrid;
    dxLayoutControl2Group3: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl2Item4: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl2Item5: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl2Item6: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl2Item7: TdxLayoutItem;
    ActionList1: TActionList;
    acAdd: TAction;
    acAddAll: TAction;
    acRemove: TAction;
    acRemoveAll: TAction;
    dxSelectDept: TdxPopupEdit;
    dxLayoutControl2Item8: TdxLayoutItem;
    chkViewAll: TdxCheckEdit;
    dxLayoutControl2Item9: TdxLayoutItem;
    dxLayoutControl2Group5: TdxLayoutGroup;
    qryDanhsachNVEMPLOYEE_NO: TWideStringField;
    qryDanhsachNVFULL_NAME: TWideStringField;
    qryDanhsachNVTITLE_NAME: TWideStringField;
    qryDanhsachNVDEPT_NAME: TWideStringField;
    qryDanhsachNVWORK_TYPE_NAME: TWideStringField;
    gridNhanvienEMPLOYEE_NO: TdxDBGridColumn;
    gridNhanvienFULL_NAME: TdxDBGridColumn;
    gridNhanvienTITLE_NAME: TdxDBGridColumn;
    gridNhanvienDEPT_NAME: TdxDBGridColumn;
    gridNhanvienWORK_TYPE_NAME: TdxDBGridColumn;
    acDocDSNhanvien: TAction;
    qryDSApdung: TIBOQuery;
    dsDSApdung: TDataSource;
    qryDSApdungMA_NHANVIEN: TWideStringField;
    qryDSApdungFULL_NAME: TWideStringField;
    qryDSApdungTITLE_NAME: TWideStringField;
    qryDSApdungDEPT_NAME: TWideStringField;
    qryDSApdungWORK_TYPE_NAME: TWideStringField;
    gridApdungNhanvienMA_NHANVIEN: TdxDBGridColumn;
    gridApdungNhanvienFULL_NAME: TdxDBGridColumn;
    gridApdungNhanvienTITLE_NAME: TdxDBGridColumn;
    gridApdungNhanvienDEPT_NAME: TdxDBGridColumn;
    gridApdungNhanvienWORK_TYPE_NAME: TdxDBGridColumn;
    qryDSApdungMA_DOITUONG: TWideStringField;
    acDocDSApdung: TAction;
    dsNull: TDataSource;
    tabCauhinh: TElTabSheet;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl3Group1: TdxLayoutGroup;
    gridDSNgaycong: TdxDBGrid;
    dxLayoutControl3Group3: TdxLayoutGroup;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxDBSpinEdit2: TdxDBSpinEdit;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxNam: TdxDBImageEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    gridDSNgayphep: TdxDBGrid;
    dxDBSpinEdit3: TdxDBSpinEdit;
    dxLayoutControl3Item6: TdxLayoutItem;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Item7: TdxLayoutItem;
    dxLayoutControl3Group4: TdxLayoutGroup;
    qryPhepCauhinh: TIBOQuery;
    dsPhepCauhinh: TDataSource;
    qryPhepCauhinhKEY_ID: TIntegerField;
    qryPhepCauhinhTU_THANG: TIntegerField;
    qryPhepCauhinhDEN_THANG: TIntegerField;
    qryPhepCauhinhDEN_NAM: TIntegerField;
    qryPhepCauhinhSONGAY_TOIDA: TIntegerField;
    qryDSNgaycong: TIBOQuery;
    dsDSNgaycong: TDataSource;
    qryDSNgayphep: TIBOQuery;
    dsDSNgayphep: TDataSource;
    qryDSNgayphepWDT_NO: TWideStringField;
    qryDSNgayphepWDT_NAME: TWideStringField;
    qryDSNgayphepWDT_RATE: TIBOFloatField;
    qryDSNgayphepLA_NGAYPHEP: TSmallintField;
    qryDSNgaycongWDT_NO: TWideStringField;
    qryDSNgaycongWDT_NAME: TWideStringField;
    qryDSNgaycongWDT_RATE: TIBOFloatField;
    qryDSNgaycongLA_NGAYPHEP: TSmallintField;
    gridDSNgaycongWDT_NO: TdxDBGridColumn;
    gridDSNgaycongWDT_NAME: TdxDBGridColumn;
    gridDSNgaycongWDT_RATE: TdxDBGridColumn;
    gridDSNgayphepWDT_NO: TdxDBGridColumn;
    gridDSNgayphepWDT_NAME: TdxDBGridColumn;
    gridDSNgayphepWDT_RATE: TdxDBGridColumn;
    ElPopupButton5: TElPopupButton;
    ElPopupButton6: TElPopupButton;
    ElPopupButton7: TElPopupButton;
    ElPopupButton8: TElPopupButton;
    acAddDate: TAction;
    acAddAllDate: TAction;
    acRemoveAllDate: TAction;
    acRemoveDate: TAction;
    qryDSNgayphepWDT_COLOR: TIntegerField;
    qryDSNgaycongWDT_COLOR: TIntegerField;
    gridDSNgaycongWDT_COLOR: TdxDBGridMaskColumn;
    gridDSNgayphepWDT_COLOR: TdxDBGridMaskColumn;
    dxLoaichamcong: TdxDBImageEdit;
    dxLayoutControl3Item14: TdxLayoutItem;
    dxLayoutControl3Group8: TdxLayoutGroup;
    qryPhepCauhinhLOAI_CHAMCONG: TWideStringField;
    ElPageControl1: TElPageControl;
    dxLayoutControl3Item12: TdxLayoutItem;
    ElTab_NgayCong: TElTabSheet;
    ElTabS_GioCong: TElTabSheet;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutControl4Item1: TdxLayoutItem;
    dxLayoutControl4Item2: TdxLayoutItem;
    dxLayoutControl4Item3: TdxLayoutItem;
    dxLayoutControl4Item4: TdxLayoutItem;
    dxLayoutControl4Item5: TdxLayoutItem;
    dxLayoutControl4Item6: TdxLayoutItem;
    dxLayoutControl4Group3: TdxLayoutGroup;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    GridDSGioPhep: TdxDBGrid;
    dxLayoutControl5Item1: TdxLayoutItem;
    GridDSGioCong: TdxDBGrid;
    dxLayoutControl5Item2: TdxLayoutItem;
    ElPopupButton9: TElPopupButton;
    dxLayoutControl5Item3: TdxLayoutItem;
    ElPopupButton10: TElPopupButton;
    dxLayoutControl5Item4: TdxLayoutItem;
    ElPopupButton11: TElPopupButton;
    dxLayoutControl5Item5: TdxLayoutItem;
    ElPopupButton12: TElPopupButton;
    dxLayoutControl5Item6: TdxLayoutItem;
    dxLayoutControl5Group2: TdxLayoutGroup;
    qryDSGioCong: TIBOQuery;
    qryDSGioPhep: TIBOQuery;
    dsDSGioCong: TDataSource;
    dsDSGioPhep: TDataSource;
    qryDSGioCongWHT_NO: TWideStringField;
    qryDSGioCongWHT_NAME: TWideStringField;
    qryDSGioCongWHT_RATE: TIBOFloatField;
    qryDSGioCongLA_GIOPHEP: TSmallintField;
    qryDSGioCongWHT_COLOR: TIntegerField;
    qryDSGioPhepWHT_NO: TWideStringField;
    qryDSGioPhepWHT_NAME: TWideStringField;
    qryDSGioPhepWHT_RATE: TIBOFloatField;
    qryDSGioPhepLA_GIOPHEP: TSmallintField;
    qryDSGioPhepWHT_COLOR: TIntegerField;
    GridDSGioCongWHT_NO: TdxDBGridMaskColumn;
    GridDSGioCongWHT_NAME: TdxDBGridMaskColumn;
    GridDSGioCongWHT_RATE: TdxDBGridMaskColumn;
    GridDSGioCongLA_GIOPHEP: TdxDBGridMaskColumn;
    GridDSGioCongWHT_COLOR: TdxDBGridMaskColumn;
    GridDSGioPhepWHT_NO: TdxDBGridMaskColumn;
    GridDSGioPhepWHT_NAME: TdxDBGridMaskColumn;
    GridDSGioPhepWHT_RATE: TdxDBGridMaskColumn;
    GridDSGioPhepLA_GIOPHEP: TdxDBGridMaskColumn;
    GridDSGioPhepWHT_COLOR: TdxDBGridMaskColumn;
    acAddHour: TAction;
    acAddAllHour: TAction;
    acRemoveHour: TAction;
    acRemoveAllHour: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryDoituongNewRecord(DataSet: TDataSet);
    procedure dxDBPopupEdit1InitPopup(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure chkViewAllChange(Sender: TObject);
    procedure acDocDSNhanvienExecute(Sender: TObject);
    procedure acAddUpdate(Sender: TObject);
    procedure acRemoveUpdate(Sender: TObject);
    procedure acAddAllUpdate(Sender: TObject);
    procedure acRemoveAllUpdate(Sender: TObject);
    procedure acAddExecute(Sender: TObject);
    procedure gridNhanvienEnter(Sender: TObject);
    procedure acAddAllExecute(Sender: TObject);
    procedure acRemoveExecute(Sender: TObject);
    procedure acDocDSApdungExecute(Sender: TObject);
    procedure dxSelectDeptInitPopup(Sender: TObject);
    procedure dxSelectDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure pageMainChange(Sender: TObject);
    procedure qryDSApdungBeforeDelete(DataSet: TDataSet);
    procedure acRemoveAllExecute(Sender: TObject);
    procedure qryPhepCauhinhBeforeInsert(DataSet: TDataSet);
    procedure qryPhepCauhinhNewRecord(DataSet: TDataSet);
    procedure qryPhepCauhinhTU_THANGChange(Sender: TField);
    procedure acAddDateExecute(Sender: TObject);
    procedure acAddDateUpdate(Sender: TObject);
    procedure acAddAllDateUpdate(Sender: TObject);
    procedure acAddAllDateExecute(Sender: TObject);
    procedure acRemoveDateUpdate(Sender: TObject);
    procedure acRemoveDateExecute(Sender: TObject);
    procedure acRemoveAllDateUpdate(Sender: TObject);
    procedure acRemoveAllDateExecute(Sender: TObject);
    procedure gridDSNgaycongWDT_NOCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure gridDSNgayphepWDT_NOCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure GridDSGioCongWHT_NOCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure GridDSGioPhepWHT_NOCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure acAddHourExecute(Sender: TObject);
    procedure acAddAllHourExecute(Sender: TObject);
    procedure acRemoveHourExecute(Sender: TObject);
    procedure acRemoveAllHourExecute(Sender: TObject);
    procedure acAddHourUpdate(Sender: TObject);
    procedure acRemoveHourUpdate(Sender: TObject);
    procedure acAddAllHourUpdate(Sender: TObject);
    procedure acRemoveAllHourUpdate(Sender: TObject);

  private
    { Private declarations }
    F_PARAM_DEPT_NO: Variant;
    procedure SetParamDeptNo(Value: variant);
  public
    { Public declarations }
    property ParamDeptNo: Variant read F_PARAM_DEPT_NO write SetParamDeptNo;
  end;

var
  frmTieuchuanPhep: TfrmTieuchuanPhep;

implementation

uses MainDM, SSP_Library, PopupMainForm;

{$R *.dfm}

procedure TfrmTieuchuanPhep.SetParamDeptNo(Value: variant);
begin
  if F_PARAM_DEPT_NO <> Value then
  begin
    F_PARAM_DEPT_NO := Value;
    acDocDSNhanvien.Execute;
  end;
end;

procedure TfrmTieuchuanPhep.FormCreate(Sender: TObject);
begin
  dxNam.Descriptions.Add(UTF8Decode('cùng năm'));
  dxNam.Descriptions.Add(UTF8Decode('năm sau '));
  dxNam.Values.Add('0');
  dxNam.Values.Add('1');

 // dxLoaiChamcong.Descriptions.Add(Utf8Decode('Chấm công theo ngày'));
  dxLoaiChamcong.Descriptions.Add(Utf8Decode('Chấm công theo tháng'));
  dxLoaiChamcong.Descriptions.Add(Utf8Decode('Chấm công theo ngày'));
 // dxLoaiChamcong.Values.Add('CHAMCONG_NGAY');
  dxLoaiChamcong.Values.Add('CHAMCONG_THANG');
  dxLoaiChamcong.Values.Add('CHAMCONG_GIO');
  inherited;
  qryDoituong.Open;
  qryChitietQuyche.Open;

  frameToolbar1.SetDataSource(dsDoituong);
  acDocDSNhanvien.Execute;
  acDocDSApdung.Execute;
  pageMain.ActivePage := tabQuyche;

  qryPhepCauhinh.Open;
  //qryDSNgaycong.Open;
  //qryDSNgayphep.Open;
  qryDSgiocong.Open;
  qryDSgiophep.Open;
end;

procedure TfrmTieuchuanPhep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryChitietQuyche.Close;
  qryDoituong.Close;
  qryDanhsachNV.Close;
  qryDSApdung.Close;
  qryPhepCauhinh.Close;
  //qryDSNgaycong.Close;
  //qryDSNgayphep.Close;
  qryDSgiocong.close;
  qryDSgiophep.close;
end;

procedure TfrmTieuchuanPhep.qryDoituongNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryDoituongMA_DOITUONG.FocusControl;
end;

procedure TfrmTieuchuanPhep.dxDBPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWorkTypeList.Open;
  InitPopupControl('dxlcWorkType', frmPopupMain, sender, 2.5);
end;

procedure TfrmTieuchuanPhep.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryWorkTypeList, qryDoituong,
    'WORK_TYPE_NO;WORK_TYPE_NAME', 'PHANLOAI_MACDINH;WORK_TYPE_NAME',
    'WORK_TYPE_NAME', Text);
  frmPopupMain.qryWorkTypeList.Close;
end;

procedure TfrmTieuchuanPhep.chkViewAllChange(Sender: TObject);
begin
  inherited;
  acDocDSNhanvien.Execute;
  acDocDSApdung.Execute;
end;

procedure TfrmTieuchuanPhep.acDocDSNhanvienExecute(Sender: TObject);
begin
  inherited;
  qryDanhsachNV.DisableControls;
  if qryDanhsachNV.Active then
    qryDanhsachNV.Close;
  qryDanhsachNV.ParamByName('DEPT_NO').Value := ParamDeptNo;
  if chkViewAll.Checked then
    qryDanhsachNV.ParamByName('VIEW_ALL').Value := 1
  else
    qryDanhsachNV.ParamByName('VIEW_ALL').Value := 0;
  qryDanhsachNV.Open;
  qryDanhsachNV.EnableControls;

end;

procedure TfrmTieuchuanPhep.acAddUpdate(Sender: TObject);
begin
  inherited;
  acAdd.Enabled := (gridNhanvien.SelectedCount > 0) and
    (qryDoituongMA_DOITUONG.IsNull = false);
end;

procedure TfrmTieuchuanPhep.acRemoveUpdate(Sender: TObject);
begin
  inherited;
  acRemove.Enabled := (gridApdungNhanvien.SelectedCount > 0);
end;

procedure TfrmTieuchuanPhep.acAddAllUpdate(Sender: TObject);
begin
  inherited;
  acAddAll.Enabled := (qryDanhsachNV.IsEmpty = false);
end;

procedure TfrmTieuchuanPhep.acRemoveAllUpdate(Sender: TObject);
begin
  inherited;
  acRemoveAll.Enabled := (qryDSApdung.IsEmpty = false);
end;

procedure TfrmTieuchuanPhep.acAddExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  qryDSApdung.DisableControls;
  for i := 0 to gridNhanvien.SelectedCount - 1 do
  begin
    try
      if not (qryDSApdung.State in [dsInsert]) then
        qryDSApdung.Insert;
      qryDSApdung.FieldByName('MA_NHANVIEN').Value :=
        gridNhanvien.SelectedNodes[i].Values[gridNhanvienEMPLOYEE_NO.Index];
      qryDSApdung.FieldByName('FULL_NAME').Value :=
        gridNhanvien.SelectedNodes[i].Values[gridNhanvienFULL_NAME.Index];
      qryDSApdung.FieldByName('TITLE_NAME').Value :=
        gridNhanvien.SelectedNodes[i].Values[gridNhanvienTITLE_NAME.Index];
      qryDSApdung.FieldByName('DEPT_NAME').Value :=
        gridNhanvien.SelectedNodes[i].Values[gridNhanvienDEPT_NAME.Index];
      qryDSApdung.FieldByName('WORK_TYPE_NAME').Value :=
        gridNhanvien.SelectedNodes[i].Values[gridNhanvienWORK_TYPE_NAME.Index];
      qryDSApdung.FieldByName('MA_DOITUONG').Value :=
        qryDoituongMA_DOITUONG.Value;
      ;

      qryDSApdung.Post;
    except
      qryDSApdung.Cancel;
    end;
  end;
  acDocDSNhanvien.Execute;
  qryDSApdung.EnableControls;
  Screen.Cursor := crDefault;
end;

procedure TfrmTieuchuanPhep.gridNhanvienEnter(Sender: TObject);
begin
  inherited;
  // ko lam gi ca
end;

procedure TfrmTieuchuanPhep.acAddAllExecute(Sender: TObject);
begin
  inherited;
  gridNhanvien.SelectAll;
  acAdd.Execute;
end;

procedure TfrmTieuchuanPhep.acRemoveExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  gridApdungNhanvien.DeleteSelection;
  acDocDSNhanvien.Execute;
  Screen.Cursor := crDefault;
end;

procedure TfrmTieuchuanPhep.acDocDSApdungExecute(Sender: TObject);
begin
  inherited;
  qryDSApdung.DisableControls;
  if qryDSApdung.Active then
    qryDSApdung.Close;
  qryDSApdung.ParamByName('DEPT_NO').Value := ParamDeptNo;
  if chkViewAll.Checked then
    qryDSApdung.ParamByName('VIEW_ALL').Value := 1
  else
    qryDSApdung.ParamByName('VIEW_ALL').Value := 0;
  qryDSApdung.Open;
  qryDSApdung.EnableControls;
end;

procedure TfrmTieuchuanPhep.dxSelectDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2.5);
end;

procedure TfrmTieuchuanPhep.dxSelectDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryDeptListDEPT_NAME.Value;
    ParamDeptNo := frmPopupMain.qryDeptListDEPT_NO.Value;
    frmPopupMain.qryDeptList.Close;
  end;
end;

procedure TfrmTieuchuanPhep.pageMainChange(Sender: TObject);
begin
  inherited;
  if pageMain.ActivePage = tabPhanloaiNhanvien then
  begin
    frameToolbar1.SetDataSource(dsNull);
  end
  else
    if pageMain.ActivePage = tabQuyche then
  begin
    frameToolbar1.SetDataSource(dsDoituong);
  end
  else
    if pageMain.ActivePage = tabCauhinh then
  begin
    frameToolbar1.SetDataSource(dsPhepCauhinh);
  end

end;

procedure TfrmTieuchuanPhep.qryDSApdungBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  //ko co gi
end;

procedure TfrmTieuchuanPhep.acRemoveAllExecute(Sender: TObject);
begin
  inherited;
  gridApdungNhanvien.SelectAll;
  acRemove.Execute;
end;

procedure TfrmTieuchuanPhep.qryPhepCauhinhBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if qryPhepCauhinh.IsEmpty = false then Abort;
end;

procedure TfrmTieuchuanPhep.qryPhepCauhinhNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryPhepCauhinhKEY_ID.Value := 1;
  qryPhepCauhinhTU_THANG.Value := 1;
  qryPhepCauhinhSONGAY_TOIDA.Value := -1;
end;

procedure TfrmTieuchuanPhep.qryPhepCauhinhTU_THANGChange(Sender: TField);
begin
  inherited;
  if qryPhepCauhinhTU_THANG.Value = 1 then
  begin
    qryPhepCauhinhDEN_THANG.Value := 12;
    qryPhepCauhinhDEN_NAM.Value := 0;
  end
  else
  begin
    qryPhepCauhinhDEN_THANG.Value := qryPhepCauhinhTU_THANG.Value - 1;
    qryPhepCauhinhDEN_NAM.Value := 1;
  end;

end;

procedure TfrmTieuchuanPhep.acAddDateExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  for i := 0 to gridDSNgaycong.SelectedCount - 1 do
  begin
    if not (qryDSNgayphep.State in [dsInsert, dsEdit]) then
      qryDSNgayphep.Insert;
    qryDSNgayphep.FieldByname('WDT_NO').Value :=
      gridDSNgaycong.SelectedNodes[i].Values[gridDSNgaycongWDT_NO.Index];
    qryDSNgayphep.FieldByname('WDT_NAME').Value :=
      gridDSNgaycong.SelectedNodes[i].Values[gridDSNgaycongWDT_NAME.Index];
    qryDSNgayphep.FieldByname('WDT_RATE').Value :=
      gridDSNgaycong.SelectedNodes[i].Values[gridDSNgaycongWDT_RATE.Index];
    qryDSNgayphep.Post;
  end;
  qryDSNgaycong.Refresh;
  Screen.Cursor := crDefault;
end;

procedure TfrmTieuchuanPhep.acAddDateUpdate(Sender: TObject);
begin
  inherited;
  acAddDate.Enabled := gridDSNgaycong.SelectedCount > 0;
end;

procedure TfrmTieuchuanPhep.acAddAllDateUpdate(Sender: TObject);
begin
  inherited;
  acAddAll.Enabled := (qryDSNgaycong.IsEmpty = false);
end;

procedure TfrmTieuchuanPhep.acAddAllDateExecute(Sender: TObject);
begin
  inherited;
  gridDSNgaycong.SelectAll;
  acAddDate.Execute;
end;

procedure TfrmTieuchuanPhep.acRemoveDateUpdate(Sender: TObject);
begin
  inherited;
  acRemoveDate.Enabled := (gridDSNgayphep.SelectedCount > 0);
end;

procedure TfrmTieuchuanPhep.acRemoveDateExecute(Sender: TObject);
begin
  inherited;
  gridDSNgayphep.DeleteSelection;
  qryDSNgaycong.Refresh;
end;

procedure TfrmTieuchuanPhep.acRemoveAllDateUpdate(Sender: TObject);
begin
  inherited;
  acRemoveAllDate.Enabled := (qryDSNgayphep.IsEmpty = false);
end;

procedure TfrmTieuchuanPhep.acRemoveAllDateExecute(Sender: TObject);
begin
  inherited;
  gridDSNgayphep.SelectAll;
  acRemoveDate.Execute;
end;

procedure TfrmTieuchuanPhep.gridDSNgaycongWDT_NOCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    AColor := StrToIntDef(VarToStr(Anode.Values[gridDSNgaycongWDT_COLOR.Index]),
      clWhite);
  except
  end;
end;

procedure TfrmTieuchuanPhep.gridDSNgayphepWDT_NOCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    AColor := StrToIntDef(VarToStr(Anode.Values[gridDSNgayphepWDT_COLOR.Index]),
      clWhite);
  except
  end;
end;

procedure TfrmTieuchuanPhep.GridDSGioCongWHT_NOCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AColor := StrToIntDef(VarToStr(Anode.Values[GridDSGioCongWHT_COLOR.Index]),
      clWhite);
end;

procedure TfrmTieuchuanPhep.GridDSGioPhepWHT_NOCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AColor := StrToIntDef(VarToStr(Anode.Values[GridDSGioPhepWHT_COLOR.Index]),
      clWhite);
end;

procedure TfrmTieuchuanPhep.acAddHourExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  for i := 0 to GridDSGioCong.SelectedCount - 1 do
  begin
    if not (qryDSGioPhep.State in [dsInsert, dsEdit]) then
      qryDSGioPhep.Insert;
    qryDSGioPhep.FieldByname('WHT_NO').Value :=
      GridDSGioCong.SelectedNodes[i].Values[GridDSGioCongWHT_NO.Index];
    qryDSGioPhep.FieldByname('WHT_NAME').Value :=
      GridDSGioCong.SelectedNodes[i].Values[GridDSGioCongWHT_NAME.Index];
    qryDSGioPhep.FieldByname('WHT_RATE').Value :=
      GridDSGioCong.SelectedNodes[i].Values[GridDSGioCongWHT_RATE.Index];
    qryDSGioPhep.Post;
  end;
  qryDSGioCong.Refresh;
  Screen.Cursor := crDefault;
end;

procedure TfrmTieuchuanPhep.acAddAllHourExecute(Sender: TObject);
begin
  inherited;
  GridDSGioCong.SelectAll;
  acAddHour.Execute;
end;

procedure TfrmTieuchuanPhep.acRemoveHourExecute(Sender: TObject);
begin
  inherited;
  GridDSGioPhep.DeleteSelection;
  qryDSGioCong.Refresh;
end;

procedure TfrmTieuchuanPhep.acRemoveAllHourExecute(Sender: TObject);
begin
  inherited;
  GridDSGioPhep.SelectAll;
  acRemoveHour.Execute;
end;

procedure TfrmTieuchuanPhep.acAddHourUpdate(Sender: TObject);
begin
  inherited;
  acAddHour.Enabled := GridDSGioCong.SelectedCount > 0;
end;

procedure TfrmTieuchuanPhep.acRemoveHourUpdate(Sender: TObject);
begin
  inherited;
  acRemoveHour.Enabled := GridDSGioPhep.SelectedCount > 0;
end;

procedure TfrmTieuchuanPhep.acAddAllHourUpdate(Sender: TObject);
begin
  inherited;
  acAddAllHour.Enabled := (qryDSGioCong.IsEmpty = false);
end;

procedure TfrmTieuchuanPhep.acRemoveAllHourUpdate(Sender: TObject);
begin
  inherited;
  acRemoveAllHour.Enabled := (qryDSGioPhep.IsEmpty = false);
end;

end.

