unit BangTheoDoiCongTacForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, StdCtrls,
  ElCLabel, ElLabel, ExtCtrls, ElPanel, dxLayoutControl, cxControls,
  dxExEdtr, ImgList, DB, IBODataset, dxDBTLCl, dxTL, dxDBCtrl, dxCntner,
  dxDBTL, dxEdLib, dxEditor, ElBtnCtl, ElPopBtn, dxDBGrid, dxmdaset,
  ActnList;

type
  TfrmBangTheoDoiCongTac = class(TfrmBase)
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    tlOrgMap: TdxDBTreeList;
    tlOrgMapDEPT_NAME: TdxDBTreeListColumn;
    tlOrgMapENDED_DATE: TdxDBTreeListDateColumn;
    qryOrgMap: TIBOQuery;
    qryOrgMapDEPT_NO: TWideStringField;
    qryOrgMapDEPT_NAME: TWideStringField;
    qryOrgMapP_DEPT_NO: TWideStringField;
    qryOrgMapENDED_DATE: TDateField;
    dsOrgMap: TDataSource;
    Panel1: TPanel;
    Splitter1: TSplitter;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxTuNam: TdxSpinEdit;
    dxDenNam: TdxSpinEdit;
    dxPhanLoai: TdxImageEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    gridTongHop: TdxDBGrid;
    gridTongHopEMPLOYEE_NO: TdxDBGridColumn;
    gridTongHopFULL_NAME: TdxDBGridColumn;
    gridTongHopTITLE_NAME: TdxDBGridColumn;
    gridTongHopTONG_CONG: TdxDBGridColumn;
    dsEmpList: TDataSource;
    qryEmpList: TIBOQuery;
    memEmpList: TdxMemData;
    memEmpListEMPLOYEE_NO: TWideStringField;
    memEmpListFULL_NAME: TWideStringField;
    memEmpListTITLE_NAME: TWideStringField;
    memEmpListTONG_CONG: TIntegerField;
    qryEmpListEMP_NO: TWideStringField;
    qryEmpListFULL_NAME: TWideStringField;
    qryEmpListTITLE_NAME: TWideStringField;
    qryEmpListTONG_CONG: TIntegerField;
    ActionList1: TActionList;
    acXemDS: TAction;
    qryChiTietCongTac: TIBOQuery;
    memEmpListKEY_FIELD: TWideStringField;
    qryChiTietCongTacNAM: TIntegerField;
    qryChiTietCongTacCHI_TIET: TWideStringField;
    qryChiTietCongTacSO_LAN: TIntegerField;
    dxCapduoi: TdxCheckEdit;
    Panel2: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    memEmpListDEPT_NAME: TWideStringField;
    qryEmpListDEPT_NAME: TWideStringField;
    gridTongHopDEPT_NAME: TdxDBGridColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tlOrgMapCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure InitMemFields;
    procedure InitGridColumns;
    procedure acXemDSExecute(Sender: TObject);
    procedure InitMemData;
    procedure tlOrgMapChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBangTheoDoiCongTac: TfrmBangTheoDoiCongTac;

implementation

uses DateUtils, MainUnit, MainDM;

{$R *.dfm}

procedure TfrmBangTheoDoiCongTac.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryOrgMap.Close;
  qryEmpList.Close;
  qryChiTietCongTac.Close;   
  action := caFree;
  frmBangTheoDoiCongTac := nil;
end;

procedure TfrmBangTheoDoiCongTac.tlOrgMapCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    if VarToStr(ANode.Values[tlOrgMapENDED_DATE.Index]) = '' then
      AFont.Color := clBlack
    else
      AFont.Color := clRed;
  except
  end
end;

procedure TfrmBangTheoDoiCongTac.FormCreate(Sender: TObject);
begin
  dxPhanLoai.Descriptions.Add(UTF8Decode('Trong nước'));
  dxPhanLoai.Descriptions.Add(UTF8Decode('Nước ngoài'));
  dxPhanLoai.Values.Add('0');
  dxPhanLoai.Values.Add('1');
  inherited;
  dxTuNam.IntValue := YearOf(today);
  dxDenNam.IntValue := YearOf(today); 
  qryOrgMap.Open;
  tlOrgMap.FullExpand;  

  dxPhanLoai.Text := IntToStr(1);

  InitMemFields;
  InitGridColumns;
end;

procedure TfrmBangTheoDoiCongTac.InitMemFields;
var
  f: TWideStringField;
  bf: TIntegerField;
  i: integer;
begin
  frmMain.SetStatusBarPrgDisplay(0, dxDenNam.IntValue - dxTuNam.IntValue + 1);
  if memEmpList.Active then
    memEmpList.Close;

  if gridTongHop.ColumnCount > 5 then
  begin
    for i := gridTongHop.ColumnCount - 1 downto 5 do
      gridTongHop.Columns[i].Free;
  end;

  if memEmpList.FieldCount > 7 then
  begin
    for i := memEmpList.FieldCount - 1 downto 7 do
      memEmpList.Fields[i].Free;
  end;

  if gridTongHop.Bands.Count > 1 then
    for i := gridTongHop.Bands.Count - 1 downto 1 do
      gridTongHop.Bands[i].Free;

  i := dxTuNam.IntValue;
  while (i <= dxDenNam.IntValue) do
  begin
    {So lan di}
    bf := TIntegerField.Create(memEmpList);
    bf.FieldName := 'SOLAN_' + IntToStr(i);
    bf.FieldKind := fkData;
    bf.DataSet := memEmpList;
    bf.SetFieldType(ftInteger);


    {Nuoc den}
    f := TWideStringField.Create(memEmpList);
    f.FieldName := 'CHITIET_' + IntToStr(i);
    f.FieldKind := fkData;
    f.Size := 500;
    f.DataSet := memEmpList;
    f.SetFieldType(ftWideString);

    i := i + 1;
    frmMain.BarPrgStepIt;
  end;
end;

procedure TfrmBangTheoDoiCongTac.InitGridColumns;
var
  i: integer;
  newCol: TdxDBTreeListColumn;
  band: TdxTreeListBand;
  band_index: integer;
begin
  frmMain.SetStatusBarPrgDisplay(0, dxDenNam.IntValue - dxTuNam.IntValue + 1);
  i := dxTuNam.IntValue;
  while (i <= dxDenNam.IntValue) do
  begin
    //khoi tao band
    band := gridTongHop.Bands.Add;
    band.Visible := true;
    band.DisableCustomizing := true;
    band.DisableDragging := true;
    band.Caption := utf8decode('Năm ') + IntToStr(i);
    band.Alignment := taCenter; 
    i := i + 1;
  end;

  band_index := 1;
  i := dxTuNam.IntValue;
  while (i <= dxDenNam.IntValue) do
  begin
    newCol := gridTongHop.CreateColumn(TdxDBGridColumn);
    newCol.Name := 'gridTongHopSOLAN_' + IntToStr(i);
    newCol.FieldName := 'SOLAN_' + IntToStr(i);
    newCol.Width := 50;
    newCol.HeaderAlignment := taCenter;
    newCol.BandIndex := band_index;
    newCol.RowIndex := 1;
    newCol.DisableCustomizing := true;
    newCol.DisableEditor := true;
    if sysConfig.Language = 2 then
      newcol.Caption := 'Quantity'
    else
      newcol.Caption := utf8decode('Số lần');

    newCol := gridTongHop.CreateColumn(TdxDBGridColumn);
    newCol.Name := 'gridTongHopCHITIET_' + IntToStr(i);
    newCol.FieldName := 'CHITIET_' + IntToStr(i);
    newCol.Width := 100;
    newCol.HeaderAlignment := taCenter;
    newCol.BandIndex := band_index;
    newCol.RowIndex := 1;
    newCol.DisableCustomizing := true;
    newCol.DisableEditor := true;
    if sysConfig.Language = 2 then
      newcol.Caption := 'Detail'
    else
      newcol.Caption := utf8decode('Chi tiết');

    i := i + 1;
    band_index := band_index +1;
    frmMain.BarPrgStepIt;
  end;
end;

procedure TfrmBangTheoDoiCongTac.acXemDSExecute(Sender: TObject);
begin
  inherited;
  InitMemFields;
  InitGridColumns;
  InitMemData;
end;

procedure TfrmBangTheoDoiCongTac.InitMemData;

  procedure InitDataForEachPerson;
  var
    at_year : integer;
  begin

    // luon luon co it nhat  la mot hang du lieu
    memEmpList.Append;
    memEmpListEMPLOYEE_NO.Value := qryEmpListEMP_NO.Value;
    memEmpListFULL_NAME.Value := qryEmpListFULL_NAME.Value;
    memEmpListTITLE_NAME.Value := qryEmpListTITLE_NAME.Value;
    memEmpListTONG_CONG.Value := qryEmpListTONG_CONG.Value;
    memEmpListKEY_FIELD.Value := memEmpListEMPLOYEE_NO.Value;
    memEmpListDEPT_NAME.Value := qryEmpListDEPT_NAME.Value;

    qryChiTietCongTac.First;
    while not qryChiTietCongTac.Eof do
    begin
      at_year := qryChiTietCongTacNAM.Value;
      if not (qryChiTietCongTacCHI_TIET.IsNull) then
      begin
        memEmpList.FieldByName('CHITIET_' + IntToStr(at_year)).Value
          := qryChiTietCongTacCHI_TIET.Value;
        memEmpList.FieldByName('SOLAN_' + IntToStr(at_year)).Value :=
          qryChiTietCongTacSO_LAN.Value;
      end
      else
      begin
        memEmpList.FieldByName('SOLAN_' + IntToStr(at_year)).Clear;
        memEmpList.FieldByName('CHITIET_' + IntToStr(at_year)).Clear;
      end;
      qryChiTietCongTac.Next;
    end;
    memEmpList.Post;
    qryEmpList.Next;
    frmMain.BarPrgStepIt;
  end;
begin
  memEmpList.DisableControls;
  if memEmpList.Active then memEmpList.Close;
  if qryEmpList.Active then qryEmpList.Close;

  qryEmpList.ParamByName('DEPT_NO').Value := qryOrgMapDEPT_NO.Value;
  if dxCapduoi.Checked then
    qryEmpList.ParamByName('VIEW_ALL').Value := 1
  else
    qryEmpList.ParamByName('VIEW_ALL').Value := 0;
  qryEmpList.ParamByName('FROM_YEAR').Value := dxTuNam.intvalue;
  qryEmpList.ParamByName('TO_YEAR').Value := dxDenNam.intvalue;
  qryEmpList.ParamByName('MISSION_TYPE').Value := StrToIntDef(dxPhanLoai.Text,0);
  qryEmpList.Open;



  if qryEmpList.RecordCount > 0 then
  begin
    memEmpList.Open;
    if qryEmpList.RecordCount > 0 then
    begin
      frmMain.SetStatusBarPrgDisplay(0, qryEmpList.RecordCount);
      qryEmpList.First;
      while not qryEmpList.Eof do
      begin
        //lay thong tin chi tiet
        if qryChiTietCongTac.Active then qryChiTietCongTac.Close;
        qryChiTietCongTac.ParamByName('EMP_NO').Value := qryEmpListEMP_NO.Value; 
        qryChiTietCongTac.ParamByName('FROM_YEAR').Value := dxTuNam.intvalue;
        qryChiTietCongTac.ParamByName('TO_YEAR').Value := dxDenNam.intvalue;
        qryChiTietCongTac.ParamByName('MISSION_TYPE').Value := StrToIntDef(dxPhanLoai.Text,0);
        qryChiTietCongTac.Open;

        // khoi tao du lieu cham cong cua tung nhan vien
        InitDataForEachPerson;
        qryEmpList.Next;
        frmMain.BarPrgStepIt;
      end;
    end;
  end;
  memEmpList.EnableControls;
  gridTongHop.FullExpand;

  frmMain.SetStatusBarMsg('');
end;

procedure TfrmBangTheoDoiCongTac.tlOrgMapChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  acXemDS.Execute; 
end;

end.
