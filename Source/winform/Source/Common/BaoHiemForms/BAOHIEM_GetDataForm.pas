//******************************************************************//
//************** Create form by THUYPTP - 17/09/2009 ***************//
//******************************************************************//
unit BAOHIEM_GetDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxExEdtr, dxTL, dxDBCtrl, dxCntner, dxDBTL,
  DB, dxmdaset, IBODataset, ImgList, StdCtrls, ElCLabel, ElLabel, ElPanel,
  ExtCtrls, ElSplit, ElPgCtl, dxDBGrid, ActnList, dxEdLib, dxEditor,
  ElBtnCtl, ElPopBtn, dxGrClms;

type
  TfrmBAOHIEM_GetData = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    tlPhanNhom: TdxDBTreeList;
    qryPhanNhom: TIBOQuery;
    memPhanNhom: TdxMemData;
    dsPhanNhom: TDataSource;
    qryPhanNhomMA_PHANNHOM: TWideStringField;
    qryPhanNhomTEN_PHANNHOM: TWideStringField;
    qryPhanNhomSTT: TSmallintField;
    memPhanNhomTIEU_DE: TWideStringField;
    memPhanNhomIMG_INDEX: TSmallintField;
    imlIcon: TImageList;
    qryData: TIBOQuery;
    qryDataBH_CONFIG_DATA_ID: TIntegerField;
    qryDataDATA_TITLE: TWideStringField;
    qryDataDATA_SQL: TWideStringField;
    qryDataDATA_NOTE: TWideStringField;
    qryDataMA_PHANNHOM: TWideStringField;
    memPhanNhomKEY_ID: TWideStringField;
    memPhanNhomP_KEY_ID: TWideStringField;
    tlPhanNhomTIEU_DE: TdxDBTreeListMaskColumn;
    tlPhanNhomIMG_INDEX: TdxDBTreeListMaskColumn;
    memPhanNhomDATA_SQL: TWideStringField;
    ElSplitter1: TElSplitter;
    ElPanel1: TElPanel;
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    gridData: TdxDBGrid;
    memData: TdxMemData;
    ActionList1: TActionList;
    acLoadData: TAction;
    qryCaption: TIBOQuery;
    qryCaptionCOLUMN_NO: TWideStringField;
    qryCaptionCOLUMN_CAPTION: TWideStringField;
    qryCaptionCOLUMN_TYPE: TWideStringField;
    qryCaptionCOLUMN_WIDTH: TIntegerField;
    qryCaptionCOLUMN_GET_DATA: TSmallintField;
    ElPanel2: TElPanel;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxChonDonvi: TdxPopupEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxCapduoi: TdxCheckEdit;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    qryDeptList: TIBOQuery;
    qryDeptListDEPT_NO: TWideStringField;
    qryDeptListDEPT_NAME: TWideStringField;
    qryDeptListP_DEPT_NO: TWideStringField;
    qryDeptListLEFT_INDEX: TIntegerField;
    qryDeptListRIGHT_INDEX: TIntegerField;
    dsDeptList: TDataSource;
    dxlcDeptList: TdxLayoutControl;
    tlDeptList: TdxDBTreeList;
    tlDeptListDEPT_NAME: TdxDBTreeListColumn;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxThang: TdxSpinEdit;
    dxNam: TdxSpinEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    acGetPhanNhom: TAction;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    memDataPHAN_NHOM: TWideStringField;
    qryDataTEN_PHANNHOM: TWideStringField;
    memPhanNhomPHAN_NHOM: TWideStringField;
    qryCaptionCOLUMN_GROUP: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure acLoadDataExecute(Sender: TObject);
    procedure dxChonDonviInitPopup(Sender: TObject);
    procedure dxChonDonviCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure acGetPhanNhomExecute(Sender: TObject);
    procedure tlDeptListDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridDataBeginDragNode(Sender: TObject;
      Node: TdxTreeListNode);
    procedure gridDataEndDrag(Sender, Target: TObject; X,
  Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    F_FocusForm:TfrmBase;
    F_DEPT_NO, F_DEPT_NAME : Widestring;
    IN_MONTH, IN_YEAR, F_BH_MAU_ID : Integer;
  public
    { Public declarations }
    procedure SetFocusForm(form:TfrmBase);
    constructor Create(AOwner: TComponent; AT_MONTH, AT_YEAR, BH_MAU_ID: Integer);
  end;

var
  frmBAOHIEM_GetData: TfrmBAOHIEM_GetData;

implementation

uses MainDM, DateUtils, SSP_Library, BAOHIEM_CauHinhDuLieuForm;

{$R *.dfm}

constructor TfrmBAOHIEM_GetData.Create(AOwner: TComponent; AT_MONTH, AT_YEAR, BH_MAU_ID: Integer);
begin
  IN_MONTH := AT_MONTH;
  IN_YEAR := AT_YEAR;
  F_BH_MAU_ID := BH_MAU_ID;
  inherited Create(AOwner);
end;

procedure TfrmBAOHIEM_GetData.FormCreate(Sender: TObject);
begin
  inherited;
  acGetPhanNhom.Execute;
  dxThang.IntValue := IN_MONTH;
  dxNam.IntValue := IN_YEAR;
end;

procedure TfrmBAOHIEM_GetData.acLoadDataExecute(Sender: TObject);
  procedure InitGridData;
    var col:TdxDBTreeListColumn; i, stt_group  : integer;
        f: TField;
  begin
    if qryCaption.Active then
      qryCaption.Close;
    qryCaption.ParamByName('BH_CONFIG_DATA_ID').Value:= StrToInt(memPhanNhomKEY_ID.Value);
    qryCaption.Open;
    if qryCaption.IsEmpty then exit;
    qryCaption.First;
    
    gridData.BeginUpdate;
    if gridData.ColumnCount > 0 then
    begin
      for i := gridData.ColumnCount - 1 downto 0 do
      begin
        if gridData.Columns[i].Tag <> -1 then
          gridData.Columns[i].Free;
      end;
    end;

    if memData.FieldCount > 2 then
    begin
      for i:= memData.FieldCount -1 downto 2 do
        memData.Fields[i].Free;
    end;

    stt_group := 0;
    while not qryCaption.Eof do
    begin
      if qryCaptionCOLUMN_TYPE.Value = 'DATE' then
      begin
        //tao cot tren grid
        col := gridData.CreateColumn(TdxDBGridDateColumn);
        //Gom nhom du lieu
        if qryCaptionCOLUMN_GROUP.Value = 1 then
        begin
          TdxDBGridColumn(col).GroupIndex := stt_group;
          stt_group := stt_group + 1;
        end;
        //Tao field tren memData
        if qryCaptionCOLUMN_GET_DATA.Value = 1 then
        begin
          f := TDateField.Create(memData);
          f.SetFieldType(ftDate);
        end;
      end
      else if qryCaptionCOLUMN_TYPE.Value = 'NUMBER' then
      begin
        //tao cot tren grid
        col := gridData.CreateColumn(TdxDBGridCalcColumn);
        //Gom nhom du lieu
        if qryCaptionCOLUMN_GROUP.Value = 1 then
        begin
          TdxDBGridColumn(col).GroupIndex := stt_group;
          stt_group := stt_group + 1;
        end;
        //Tao field tren memData
        if qryCaptionCOLUMN_GET_DATA.Value = 1 then
        begin
          f := TFloatField.Create(memData);
          f.SetFieldType(ftFloat);
        end;
      end
      else if qryCaptionCOLUMN_TYPE.Value = 'NOTATION' then
      begin
        //tao cot tren grid
        col := gridData.CreateColumn(TdxDBGridColumn);
        //Gom nhom du lieu
        if qryCaptionCOLUMN_GROUP.Value = 1 then
        begin
          TdxDBGridColumn(col).GroupIndex := stt_group;
          stt_group := stt_group + 1;
        end;
        //Tao field tren memData
        if qryCaptionCOLUMN_GET_DATA.Value = 1 then
        begin
          f := TWideStringField.Create(memData);
          f.SetFieldType(ftWideString);
          f.Size := 200;
        end;
      end
      else
      begin
        //tao cot tren grid
        col := gridData.CreateColumn(TdxDBGridColumn);
        //Gom nhom du lieu
        if qryCaptionCOLUMN_GROUP.Value = 1 then
        begin
          TdxDBGridColumn(col).GroupIndex := stt_group;
          stt_group := stt_group + 1;
        end;
        //Tao field tren memData
        if qryCaptionCOLUMN_GET_DATA.Value = 1 then
        begin
          f := TWideStringField.Create(memData);
          f.SetFieldType(ftWideString);
        end;
      end;

      col.Name := gridData.Name + qryCaptionCOLUMN_NO.AsString;
      col.FieldName := qryCaptionCOLUMN_NO.AsString;
      col.Width := qryCaptionCOLUMN_WIDTH.Value;
      col.HeaderAlignment := taCenter;
      col.DisableCustomizing := true;
      col.DisableEditor := true;
      col.Caption := qryCaptionCOLUMN_CAPTION.Value;


      if qryCaptionCOLUMN_GET_DATA.Value = 1 then
      begin
        f.Name := memData.Name + qryCaptionCOLUMN_NO.AsString;
        f.FieldName := qryCaptionCOLUMN_NO.AsString;
        f.FieldKind := fkData;
        f.DataSet := memData;
      end;

      if gridData.KeyField='' then
        gridData.KeyField:=qryCaptionCOLUMN_NO.AsString;

      qryCaption.Next;
    end;
    qryCaption.Close;
    gridData.EndUpdate;
    gridData.FullExpand;  
  end;

  function GetData(SQL:String;index: integer):boolean;
  var qry:TIBOQuery;
      ds:TDataSource;
      tab:TElTabSheet;
      com:TComponent;
  begin
    gridData.DataSource:= nil;

    com:=FindComponent('qry'+IntToStr(index));
    if Assigned(com) then com.Free;
    qry:=TIBOQuery.Create(self);
    qry.Name:='qry'+IntToStr(index);
    qry.Unicode:=true;
    qry.IB_Connection:=dmMain.connMain;
    qry.IB_Transaction:=dmMain.trCommited;
    qry.SQL.Text:=SQL;
    qry.BeforeOpen:=dmMain.DefOnBeforeOpen;
    qry.OnError:=dmMain.DefOnDatasetError;
    try
      qry.Prepare;

      if Assigned(qry.FindParam('DEPT_NO')) then
        qry.ParamByName('DEPT_NO').Value := F_DEPT_NO;
      if Assigned(qry.FindParam('VIEW_CHILD')) then
        if dxCapduoi.Checked then
          qry.ParamByName('VIEW_CHILD').Value := 1
        else
          qry.ParamByName('VIEW_CHILD').Value := 0;
      if Assigned(qry.FindParam('AT_MONTH')) then
        qry.ParamByName('AT_MONTH').Value := dxThang.IntValue;
      if Assigned(qry.FindParam('AT_YEAR')) then
        qry.ParamByName('AT_YEAR').Value := dxNam.IntValue;

      qry.Open;
    except
      result:=false;
    end;
    if not qry.IsEmpty then
    begin
      result:=true;
      //tao datasource
      com:=FindComponent('ds'+IntToStr(index));
      if Assigned(com) then com.Free;
      ds:=TDataSource.Create(self);
      ds.name:='ds'+IntToStr(index);
      ds.DataSet:=qry;

      // tao cot cho grid
      InitGridData;
      Apply_Grid(gridData);

      // gan data source
      gridData.DataSource:=ds;
     end
    else
    begin
      qry.Close;
      qry.Free;
      result:=false;
    end
  end;

begin
  inherited;
  if memPhanNhomIMG_INDEX.Value = 0 then
    exit;
  GetData(memPhanNhomDATA_SQL.Value,StrToInt(memPhanNhomKEY_ID.Value));
  lblListCaption.Caption := WideUpperCase(memPhanNhomTIEU_DE.Value);
end;

procedure TfrmBAOHIEM_GetData.dxChonDonviInitPopup(Sender: TObject);
begin
  inherited;
  if qryDeptList.Active then qryDeptList.Close;  
  qryDeptList.Open;
  InitPopupControl('dxlcDeptList', self, sender, 2);
  tlDeptList.FullExpand;
end;

procedure TfrmBAOHIEM_GetData.dxChonDonviCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := qryDeptListDEPT_NAME.Value;
    F_DEPT_NO := qryDeptListDEPT_NO.Value;
    F_DEPT_NAME := qryDeptListDEPT_NAME.Value;
  end;
end;

procedure TfrmBAOHIEM_GetData.acGetPhanNhomExecute(Sender: TObject);
begin
  inherited;
  if qryPhanNhom.Active then qryPhanNhom.Close;
  if memPhanNhom.Active then memPhanNhom.Close;
  qryPhanNhom.ParamByName('BH_MAU_ID').Value := F_BH_MAU_ID;
  qryPhanNhom.Open;
  memPhanNhom.Open;

  if not qryPhanNhom.IsEmpty then
  begin
    qryPhanNhom.First;
    while not qryPhanNhom.Eof do
    begin
      memPhanNhom.Append;
      memPhanNhomKEY_ID.Value := qryPhanNhomMA_PHANNHOM.Value;
      memPhanNhomP_KEY_ID.Clear;
      memPhanNhomTIEU_DE.Value := qryPhanNhomTEN_PHANNHOM.Value;
      memPhanNhomIMG_INDEX.Value := 0;
      memPhanNhomDATA_SQL.Clear;
      memPhanNhomPHAN_NHOM.Clear;  
      memPhanNhom.Post;

      if qryData.active then qryData.Close;
      qryData.ParamByName('MA_PHANNHOM').Value := qryPhanNhomMA_PHANNHOM.Value;
      qryData.ParamByName('BH_MAU_ID').Value := F_BH_MAU_ID;
      qryData.Open;

      if not qryData.IsEmpty then
      begin
        qryData.First;
        while not qryData.Eof do
        begin
          memPhanNhom.Append;
          memPhanNhomKEY_ID.Value := IntToStr(qryDataBH_CONFIG_DATA_ID.Value);
          memPhanNhomP_KEY_ID.Value := qryPhanNhomMA_PHANNHOM.Value;
          memPhanNhomTIEU_DE.Value := qryDataDATA_TITLE.Value;
          memPhanNhomIMG_INDEX.Value := 1;
          memPhanNhomDATA_SQL.Value := qryDataDATA_SQL.Value;
          memPhanNhomPHAN_NHOM.Value := qryDataTEN_PHANNHOM.Value;  
          memPhanNhom.Post;
          qryData.Next;           
        end
      end;

      qryPhanNhom.Next;
    end
  end;
  tlPhanNhom.Repaint;
end;

procedure TfrmBAOHIEM_GetData.tlDeptListDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self, true, sender);
end;

procedure TfrmBAOHIEM_GetData.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  dmMain.DefOnGridKeyDown(sender, key, Shift);
  if sysConfig.AdminRight then
    if (Key=Ord('D')) and (ssCtrl in Shift) then
    begin
      ShowModalForm(TfrmBAOHIEM_CauHinhDuLieu, frmBAOHIEM_CauHinhDuLieu);
      acGetPhanNhom.Execute;
    end;

end;

procedure TfrmBAOHIEM_GetData.gridDataBeginDragNode(Sender: TObject;
  Node: TdxTreeListNode);
  procedure AddNode(node: TdxTreeListNode);
  var
    i: integer;
  begin
    if node.HasChildren then
    begin
      //Locked by THUYPTP - 19/01/2009
      //Khong xet cac node co cap con vi moi lan duyet cac node cha nay,
      //Cac node con se duoc them vao 1 lan
      //Sau do khi duyet toi chinh cac node con nay lai duoc them vao 1 lan nua
      //Do do xay ra tinh trang xuat hien 2 dong du lieu nhu nhau
      {for i := 0 to Node.Count - 1 do
        AddNode(node.Items[i]);}
    end
    else
    begin
      if not (memData.State in [dsInsert]) then
        memData.Append;
      for i := 0 to gridData.ColumnCount - 1 do
        if Assigned(TIBOQuery(memData).FindField(gridData.Columns[i].FieldName)) then
          memData.FieldByName(gridData.Columns[i].FieldName).Value :=
            node.Values[gridData.Columns[i].Index];

      memDataPHAN_NHOM.Value := memPhanNhomPHAN_NHOM.Value  ;            
      memData.Post;
    end
  end;
var
  i: integer;
begin
  inherited;
  F_FocusForm:=nil;
  if memData.Active then
    memData.Close;
  memData.Open;
  if gridData.SelectedCount > 1 then
  begin
    for i := 0 to gridData.SelectedCount - 1 do
      AddNode(gridData.SelectedNodes[i]);
  end
  else
    AddNode(Node);
end;

procedure TfrmBAOHIEM_GetData.gridDataEndDrag(Sender, Target: TObject; X,
  Y: Integer);
var
  acGetData: TComponent;
begin
  inherited;
  if not Assigned(F_FocusForm) then exit;
  acGetData := F_FocusForm.FindComponent('acKhoiTaoDanhSach');
  if Assigned(acGetData) and (acGetData is TAction) then
  begin
    (acGetData as TAction).Execute;
    qryData.Refresh;
  end;
  if memData.Active then
    memData.Close;
end;

procedure TfrmBAOHIEM_GetData.SetFocusForm(form:TfrmBase);
begin
  F_FocusForm:=form;
end;

procedure TfrmBAOHIEM_GetData.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if qryPhanNhom.Active then qryPhanNhom.Close;
  if memPhanNhom.Active then memPhanNhom.Close;
  if qryCaption.Active then qryCaption.Close;
  if qryData.Active then qryData.Close;
  if memData.Active then memData.Close;
  Action := caFree;
  frmBAOHIEM_GetData := nil;
end;

end.
