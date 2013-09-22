unit Luong_NhanVienForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxEdLib, dxLayoutControl, dxEditor,
  ToolbarFrame, cxControls, DB, IBODataset, ActnList, dxDBTLCl, dxGrClms,
  dxDBTL, ElBtnCtl, ElPopBtn, Registry;
const
  S_HINHTHUC='AD_CANHAN';
  S_PREFIX_TABLE='WE_';
  S_PREFIX_WAGE_TABLE='WB_';
  S_KEY_FIELD='MA_NHANVIEN';
type
  TfrmLuong_NhanVien = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    frameToolbar1: TframeToolbar;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxChonDonvi: TdxPopupEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxCapduoi: TdxCheckEdit;
    dximOption: TdxImageEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    tlData: TdxDBGrid;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    ActionList: TActionList;
    acPhatsinhDulieu: TAction;
    acXemdulieu: TAction;
    acInitQuery: TAction;
    acCapnhatDulieu: TAction;
    qryData: TIBOQuery;
    qryCongthuc: TIBOQuery;
    qryCongthucPA_MA: TIntegerField;
    qryCongthucCT_MA: TIntegerField;
    qryCongthucCT_KYHIEU: TWideStringField;
    qryCongthucCT_TIEUDE: TWideStringField;
    qryCongthucCT_KIEUDULIEU: TWideStringField;
    qryCongthucCT_HINHTHUC_NHAPLIEU: TWideStringField;
    qryCongthucCT_THUTU_HIENTHI: TIntegerField;
    qryExecute: TIBOQuery;
    dsData: TDataSource;
    qryDataMA_NHANVIEN: TWideStringField;
    qryDataHOTEN_NHANVIEN: TWideStringField;
    tlDataMA_NHANVIEN: TdxDBGridColumn;
    tlDataHOTEN_NHANVIEN: TdxDBGridColumn;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    qryDeptList: TIBOQuery;
    qryDeptListDEPT_NO: TWideStringField;
    qryDeptListDEPT_NAME: TWideStringField;
    qryDeptListP_DEPT_NO: TWideStringField;
    qryDeptListLEFT_INDEX: TIntegerField;
    qryDeptListRIGHT_INDEX: TIntegerField;
    dsDeptList: TDataSource;
    tlDeptList: TdxDBTreeList;
    tlDeptListDEPT_NAME: TdxDBTreeListColumn;
    qryDataSTATE: TWideStringField;
    tlDataSTATE: TdxDBGridColumn;
    qryDataDEPT_NAME: TWideStringField;
    tlDataDEPT_NAME: TdxDBGridColumn;
    qryDataDISMISS_DATE: TDateField;
    tlDataDISMISS_DATE: TdxDBGridDateColumn;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxChucVuHienTai: TdxCheckEdit;
    qryDataTITLE_NAME: TWideStringField;
    tlDataTITLE_NAME: TdxDBGridColumn;
    procedure acInitQueryExecute(Sender: TObject);
    procedure acPhatsinhDulieuExecute(Sender: TObject);
    procedure acXemdulieuExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tlDataCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure dxChonDonviInitPopup(Sender: TObject);
    procedure dxChonDonviCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure tlDeptListDblClick(Sender: TObject);
    procedure acCapnhatDulieuExecute(Sender: TObject);
    procedure acCapnhatDulieuUpdate(Sender: TObject);
  private
    { Private declarations }
  protected
    F_PA_KYHIEU, F_DEPT_NO, F_DEPT_NAME: string;
    F_PA_MA,F_THANG,F_NAM, F_DOT: integer;
    F_FieldList:TList;

  public
    { Public declarations }
    constructor Create(AOwner: TComponent; PA_MA: integer; PA_KYHIEU: string;DOT,THANG,NAM:integer);
  end;

var
  frmLuong_NhanVien: TfrmLuong_NhanVien;

implementation

uses MainDM, Math, Luong_Bangluong, SSP_Library, Luong_NhanVienToolForm;

{$R *.dfm}

constructor TfrmLuong_NhanVien.Create(AOwner: TComponent; PA_MA: integer;
  PA_KYHIEU: string;DOT,THANG,NAM:integer);
begin
  F_PA_KYHIEU := PA_KYHIEU;
  F_PA_MA := PA_MA;
  F_DOT:=DOT;
  F_THANG:=THANG;
  F_NAM:=NAM;
  inherited Create(AOwner);
  acInitQuery.Execute;
  frameToolbar1.SetDataSource(dsData);
end;

procedure TfrmLuong_NhanVien.acInitQueryExecute(Sender: TObject);
var
  i: integer;
  col: TdxDBTreeListColumn;
  update_s: string;
  f: TField;
begin
  inherited;
  F_FieldList:=TList.Create;
  Screen.Cursor := crSQLWait;
  //Buoc 1: xoa trang VIEW bang luong
  qryData.DisableControls;
  tlData.BeginUpdate;

  if qryData.Active then
    qryData.Close;

  //Buoc 2: khoi tao GRID
  // - Khoi tao phan THONG TIN NHAN VIEN
  if qryCongthuc.Active then
    qryCongthuc.Close;
  qryCongthuc.ParamByName('PA_MA').Value := F_PA_MA;
  qryCongthuc.ParamByName('CT_HINHTHUC').Value := S_HINHTHUC;

  qryCongthuc.Open;

  qryData.SQL.Clear;
  qryData.SQL.Text := 'SELECT '+S_KEY_FIELD+
                ', FULL_NAME HOTEN_NHANVIEN ' +
                ', STATE, DEPT_NAME, DISMISS_DATE, TITLE_NAME ' ;

  qryData.KeyLinks.Clear;
  qryData.KeyLinks.Add(S_KEY_FIELD);

  qryData.EditSQL.Clear;
  qryData.EditSQL.Text := 'update '+S_PREFIX_TABLE+ F_PA_KYHIEU + ' set ';

  update_s := S_KEY_FIELD+'=:'+S_KEY_FIELD;

  if qryCongthuc.IsEmpty = false then
  begin
    qryCongthuc.First;
    while not qryCongthuc.Eof do
    begin
      if qryCongthucCT_KIEUDULIEU.Value = 'DOUBLE' then
      begin
        f := TFloatField.Create(qryData);
        f.SetFieldType(ftFloat);
        TFloatField(f).DisplayFormat := sysConfig.FloatFormat;
      end
      else
      if qryCongthucCT_KIEUDULIEU.Value = 'VARCHAR' then
      begin

        f := TWideStringField.Create(qryData);
        f.Size := 40;
        f.SetFieldType(ftWideString);
      end
      else if qryCongthucCT_KIEUDULIEU.Value = 'DATE' then
      begin
        f := TDateField.Create(qryData);
        f.SetFieldType(ftDate);
      end
      else if qryCongthucCT_KIEUDULIEU.Value = 'MEMO' then
      begin
        f := TWideStringField.Create(qryData);
        f.Size := 100;        
        f.SetFieldType(ftWideString);
      end;

      f.Name := qryData.Name + qryCongthucCT_KYHIEU.AsString;
      f.FieldName := qryCongthucCT_KYHIEU.AsString;
      f.FieldKind := fkData;
      f.DataSet := qryData;
      F_FieldList.Add(f);

      if qryCongthucCT_KIEUDULIEU.Value = 'DOUBLE' then
        col := tlData.CreateColumn(TdxDBTreeListCalcColumn)
      else if
        qryCongthucCT_KIEUDULIEU.Value = 'VARCHAR' then
        col := tlData.CreateColumn(TdxDBTreeListColumn)
      else if
        qryCongthucCT_KIEUDULIEU.Value = 'MEMO' then
        col := tlData.CreateColumn(TdxDBTreeListColumn)
      else if
        qryCongthucCT_KIEUDULIEU.Value = 'DATE' then
        col := tlData.CreateColumn(TdxDBTreeListDateColumn);

      col.Name := tlData.Name + qryCongthucCT_KYHIEU.AsString;
      col.FieldName := qryCongthucCT_KYHIEU.AsString;
      col.Width := 100;
      col.HeaderAlignment := taCenter;
      col.DisableCustomizing := true;
      col.Caption := qryCongthucCT_TIEUDE.Value;
      col.DisableEditor := false;
      col.ReadOnly := false;
      col.BandIndex := 1;

      // cau SELECT
     qryData.SQL.Text:=qryData.SQL.Text+' , '+qryCongthucCT_KYHIEU.AsString;
     update_s:=update_s+' , '+qryCongthucCT_KYHIEU.AsString+'=:'+qryCongthucCT_KYHIEU.AsString;

     qryCongthuc.Next;
    end;
  end;
    qryData.SQL.Text:=qryData.SQL.Text+
         ' FROM '+S_PREFIX_TABLE+F_PA_KYHIEU+
         ' JOIN HR_GET_NHANVIEN(:FROM_DEPT_NO,:VIEW_ALL,:XEM_TUY_CHON,:USER_NAME,:CHUCVU_HIENTAI)' +
         ' on EMPLOYEE_NO='+S_KEY_FIELD;

    qryData.EditSQL.Text:=qryData.EditSQL.Text+update_s+' where '+S_KEY_FIELD+'=:OLD_'+S_KEY_FIELD;
    qryData.Prepare;

  Apply_Grid(tlData);

  acXemdulieu.Execute;

  frameToolbar1.SetDataSource(dsData);
  tlData.EndUpdate;
  qryData.EnableControls;
  Screen.Cursor := crDefault;
  tlData.OptionsBehavior := tlData.OptionsBehavior + [edgoEditing];
end;

procedure TfrmLuong_NhanVien.acPhatsinhDulieuExecute(Sender: TObject);
begin
  inherited;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text := 'insert into '+S_PREFIX_TABLE+ F_PA_KYHIEU + ' ('+S_KEY_FIELD+') ' +
    ' select EMPLOYEE_NO from HR_EMPLOYEE where EMPLOYEE_NO not in ' +
    ' (select '+S_KEY_FIELD+' from '+S_PREFIX_TABLE+F_PA_KYHIEU + ')';
  qryExecute.ExecSQL;
  acXemdulieu.Execute;
end;

procedure TfrmLuong_NhanVien.acXemdulieuExecute(Sender: TObject);
begin
  inherited;
  if qryData.Active then
    qryData.Close;
  qryData.ParamByName('FROM_DEPT_NO').Value := F_DEPT_NO;
  if dxCapduoi.Checked then
    qryData.ParamByName('VIEW_ALL').Value := 1
  else
    qryData.ParamByName('VIEW_ALL').Value := 0;
  qryData.ParamByName('XEM_TUY_CHON').Value := dximOption.Text;
  if dxChucVuHienTai.Checked then
    qryData.ParamByName('CHUCVU_HIENTAI').Value := 1
  else
    qryData.ParamByName('CHUCVU_HIENTAI').Value := 0;
  qryData.Open;
  tlData.FullExpand;
end;

procedure TfrmLuong_NhanVien.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i:integer;
begin
  inherited;
  for i:=F_FieldList.Count-1 downto 0 do
    TField(F_FieldList.Items[i]).Free;
  F_FieldList.Free;   
end;

procedure TfrmLuong_NhanVien.tlDataCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    if VarToStr(ANode.Values[tlDataDISMISS_DATE.Index])<>'' then
      AFont.Color := clGreen;
    if VarToStr(ANode.Values[tlDataSTATE.Index])='OUT' then
      AFont.Color := clRed;
  except
  end
end;

procedure TfrmLuong_NhanVien.FormCreate(Sender: TObject);
begin
  dximOption.Tag := 1;
  dximOption.Descriptions.Add(Utf8Decode('Đang làm việc'));
  dximOption.Descriptions.Add(Utf8Decode('Đã thôi việc'));
  dximOption.Descriptions.Add(Utf8Decode('Tất cả'));
  dximOption.Values.Add('WORK');
  dximOption.Values.Add('OUT');
  dximOption.Values.Add('ALL');

  dximOption.Text := 'WORK';
  dximOption.Tag := 0;
  inherited;

end;

procedure TfrmLuong_NhanVien.dxChonDonviInitPopup(Sender: TObject);
begin
  inherited;
  if qryDeptList.Active then qryDeptList.Close;  
  qryDeptList.Open;
  InitPopupControl('dxlcDeptList', self, sender, 2);
  tlDeptList.FullExpand;
end;

procedure TfrmLuong_NhanVien.dxChonDonviCloseUp(Sender: TObject;
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

procedure TfrmLuong_NhanVien.tlDeptListDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self, true, sender);
end;

procedure TfrmLuong_NhanVien.acCapnhatDulieuExecute(Sender: TObject);
var reg :TRegistry;
    bool_value:integer;
begin
  inherited;
  reg:=TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey(REGISTRY_ROOT + '\'+sysConfig.User+'\DULIEU_NHANVIEN\'+F_PA_KYHIEU, true);

  if qryData.State in [dsEdit] then
    qryData.Post;
  Screen.Cursor:=crSQLWait;
  //Cau hinh cot luong duoc update
  frmLuong_NhanVienTool := TfrmLuong_NhanVienTool.Create(self, F_PA_KYHIEU);
  try
    frmLuong_NhanVienTool.ShowModal;
  finally
    frmLuong_NhanVienTool.Free;
    frmLuong_NhanVienTool := nil;
  end;

  //update
  qryCongthuc.First;
  while not qryCongthuc.Eof do
  begin
      try
        bool_value:= reg.ReadInteger(tlData.Name + qryCongthucCT_KYHIEU.AsString);
      except
        bool_value := 1;
      end;

      if (bool_value = 1) then
      begin
        try
          qryExecute.SQL.Clear;
          qryExecute.SQL.Text := 'update '+S_PREFIX_WAGE_TABLE+F_PA_KYHIEU+ ' set '+
          S_PREFIX_WAGE_TABLE+F_PA_KYHIEU+ '.'+qryCongthucCT_KYHIEU.AsString+' = '+
          ' (select '+S_PREFIX_TABLE+F_PA_KYHIEU+'.'+qryCongthucCT_KYHIEU.AsString+
          '  from '+S_PREFIX_TABLE+F_PA_KYHIEU +
          '  where '+S_PREFIX_TABLE+F_PA_KYHIEU+'.ma_nhanvien='+S_PREFIX_WAGE_TABLE+F_PA_KYHIEU+'.ma_nhanvien)'+
          '   where '+S_PREFIX_WAGE_TABLE+F_PA_KYHIEU+'.ma_thang='+IntToStr(F_THANG)+
          ' and '+S_PREFIX_WAGE_TABLE+F_PA_KYHIEU+'.ma_nam='+IntToStr(F_NAM) +
          ' and '+S_PREFIX_WAGE_TABLE+F_PA_KYHIEU+'.ma_dot='+IntToStr(F_DOT);
          qryExecute.ExecSQL;
        except
          Screen.Cursor:=crDefault;
          Exit;
        end;
      end;

      qryCongthuc.Next;
  end;
  frmLuong_Bangluong.acXembangluong.Execute;
  Screen.Cursor:=crDefault;
  ShowMessageUnicode(39);
end;

procedure TfrmLuong_NhanVien.acCapnhatDulieuUpdate(Sender: TObject);
begin
  inherited;
  acCapnhatDulieu.Enabled:=not qryCongthuc.IsEmpty;
end;

end.
