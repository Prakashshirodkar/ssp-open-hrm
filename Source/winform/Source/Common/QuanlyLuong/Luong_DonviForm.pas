unit Luong_DonviForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, DB, IBODataset, ToolbarFrame, dxExEdtr,
  dxCntner, dxTL, dxDBCtrl, dxDBTL, ActnList, dxDBTLCl, dxDBGrid, dxGrClms,
  dxEdLib;
const
  S_HINHTHUC='AD_DONVI';
  S_PREFIX_TABLE='WD_';
  S_PREFIX_WAGE_TABLE='WB_';
  S_KEY_FIELD='MA_DONVI';
type
  TfrmLuong_Donvi = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dsData: TDataSource;
    dxLayoutControl1Item1: TdxLayoutItem;
    frameToolbar1: TframeToolbar;
    tlData: TdxDBTreeList;
    dxLayoutControl1Item2: TdxLayoutItem;
    qryCongthuc: TIBOQuery;
    qryCongthucPA_MA: TIntegerField;
    qryCongthucCT_MA: TIntegerField;
    qryCongthucCT_KYHIEU: TWideStringField;
    qryCongthucCT_TIEUDE: TWideStringField;
    qryCongthucCT_KIEUDULIEU: TWideStringField;
    qryCongthucCT_HINHTHUC_NHAPLIEU: TWideStringField;
    qryCongthucCT_THUTU_HIENTHI: TIntegerField;
    tlDataDEPT_NAME: TdxDBTreeListColumn;
    ActionList: TActionList;
    acPhatsinhDulieu: TAction;
    qryExecute: TIBOQuery;
    acXemdulieu: TAction;
    acInitQuery: TAction;
    qryData: TIBOQuery;
    qryDataMA_DONVI: TWideStringField;
    qryDataDEPT_NAME: TWideStringField;
    qryDataP_DEPT_NO: TWideStringField;
    acCapnhatDulieu: TAction;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxViewInvalidDept: TdxCheckEdit;
    tlDataENDED_DATE: TdxDBTreeListDateColumn;
    qryDataENDED_DATE: TDateField;
    procedure acPhatsinhDulieuExecute(Sender: TObject);
    procedure acXemdulieuExecute(Sender: TObject);
    procedure acInitQueryExecute(Sender: TObject);
    procedure acCapnhatDulieuExecute(Sender: TObject);
    procedure acCapnhatDulieuUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxViewInvalidDeptChange(Sender: TObject);
    procedure tlDataCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
  protected
    F_PA_KYHIEU: string;
    F_PA_MA,F_THANG,F_NAM, F_DOT: integer;
    F_FieldList:TList;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; PA_MA: integer; PA_KYHIEU: string;DOT,THANG,NAM:integer);
  end;

var
  frmLuong_Donvi: TfrmLuong_Donvi;

implementation

uses MainDM, Math, Luong_Bangluong;

{$R *.dfm}

constructor TfrmLuong_Donvi.Create(AOwner: TComponent; PA_MA: integer;
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

procedure TfrmLuong_Donvi.acPhatsinhDulieuExecute(Sender: TObject);
begin
  inherited;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text := 'insert into '+S_PREFIX_TABLE+ F_PA_KYHIEU + ' ('+S_KEY_FIELD+') ' +
    ' select DEPT_NO from HR_DEPARTMENT where DEPT_NO not in ' +
    ' (select '+S_KEY_FIELD+' from '+S_PREFIX_TABLE+F_PA_KYHIEU + ')';
  qryExecute.ExecSQL;
  acXemdulieu.Execute;
end;

procedure TfrmLuong_Donvi.acXemdulieuExecute(Sender: TObject);
begin
  inherited;
  if qryData.Active then
    qryData.Close;
  if dxViewInvalidDept.Checked then
    qryData.ParamByName('Invalid_dept').Value := 1
  else
    qryData.ParamByName('Invalid_dept').Value := 0;

  qryData.Open;
  tlData.FullExpand;
end;

procedure TfrmLuong_Donvi.acInitQueryExecute(Sender: TObject);
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
  qryData.SQL.Text := 'SELECT '+S_KEY_FIELD+', DEPT_NAME, P_DEPT_NO, ENDED_DATE ';

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
        f.Size := 100;
        f.SetFieldType(ftDate);
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
      col.Width := 80;
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
         ' left JOIN HR_DEPARTMENT on DEPT_NO='+S_KEY_FIELD +
         ' WHERE ((:Invalid_dept =0 ) and (ended_date is null)) or (:Invalid_dept=1)';

    qryData.EditSQL.Text:=qryData.EditSQL.Text+update_s+' where '+S_KEY_FIELD+'=:OLD_'+S_KEY_FIELD;
    qryData.Prepare;

  Apply_TreeList(tlData);

  acXemdulieu.Execute;

  frameToolbar1.SetDataSource(dsData);
  tlData.EndUpdate;
  qryData.EnableControls;
  Screen.Cursor := crDefault;
  tlData.OptionsBehavior := tlData.OptionsBehavior + [etoEditing];

end;

procedure TfrmLuong_Donvi.acCapnhatDulieuExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  if (qrydata.State in [dsEdit]) then
    qryData.Post; 
  qryCongthuc.First;
  while not qryCongthuc.Eof do
  begin
    try
    qryExecute.SQL.Clear;
    qryExecute.SQL.Text := 'update '+S_PREFIX_WAGE_TABLE+F_PA_KYHIEU+ ' set '+
    S_PREFIX_WAGE_TABLE+F_PA_KYHIEU+ '.'+qryCongthucCT_KYHIEU.AsString+' = '+
    ' (select '+S_PREFIX_TABLE+F_PA_KYHIEU+'.'+qryCongthucCT_KYHIEU.AsString+
    '  from '+S_PREFIX_TABLE+F_PA_KYHIEU +
    '  where '+S_PREFIX_TABLE+F_PA_KYHIEU+'.ma_donvi='+S_PREFIX_WAGE_TABLE+F_PA_KYHIEU+'.ma_donvi)'+
    '  where '+S_PREFIX_WAGE_TABLE+F_PA_KYHIEU+'.ma_thang='+IntToStr(F_THANG)+
    ' and '+S_PREFIX_WAGE_TABLE+F_PA_KYHIEU+'.ma_nam='+IntToStr(F_NAM)+
    ' and '+S_PREFIX_WAGE_TABLE+F_PA_KYHIEU+'.ma_dot='+IntToStr(F_DOT) ;
    qryExecute.ExecSQL;
    except
      Screen.Cursor:=crDefault;
      Exit;
    end;
    qryCongthuc.Next;
  end;
  frmLuong_Bangluong.acXembangluong.Execute;
  Screen.Cursor:=crDefault;
  ShowMessageUnicode(39);
end;

procedure TfrmLuong_Donvi.acCapnhatDulieuUpdate(Sender: TObject);
begin
  inherited;
  acCapnhatDulieu.Enabled:=not qryCongthuc.IsEmpty;
end;

procedure TfrmLuong_Donvi.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i:integer;
begin
  inherited;
  for i:=F_FieldList.Count-1 downto 0 do
    TField(F_FieldList.Items[i]).Free;
  F_FieldList.Free;   
end;

procedure TfrmLuong_Donvi.dxViewInvalidDeptChange(Sender: TObject);
begin
  inherited;
  acXemdulieu.Execute;  
end;

procedure TfrmLuong_Donvi.tlDataCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    if VarToStr(ANode.Values[tlDataENDED_DATE.Index]) = '' then
      AFont.Color := clBlack
    else
      AFont.Color := clRed;
  except
  end
end;

end.

