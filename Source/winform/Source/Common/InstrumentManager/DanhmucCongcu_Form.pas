unit DanhmucCongcu_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, ElPanel, ElSplit,
  dxTL, dxDBCtrl, dxDBGrid, DB, IBODataset, dxCntner, ExtCtrls, dxmdaset,
  ActnList, dxDBTLCl, dxGrClms;

type
  TfrmCongcuDanhmuc = class(TfrmEditBase)
    Panel1: TPanel;
    dxlcMainItem2: TdxLayoutItem;
    gridLoaiCongcu: TdxDBGrid;
    qryLoaiCongcu: TIBOQuery;
    qryLoaiCongcuMA_LOAI: TWideStringField;
    qryLoaiCongcuTEN_LOAI: TWideStringField;
    dsLoaiCongcu: TDataSource;
    qryThuoctinh: TIBOQuery;
    qryThuoctinhMA_LOAI: TWideStringField;
    qryThuoctinhMA_THUOCTINH: TWideStringField;
    qryThuoctinhTEN_THUOCTINH: TWideStringField;
    qryThuoctinhLOAI_DULIEU: TWideStringField;
    gridLoaiCongcuMA_LOAI: TdxDBGridColumn;
    gridLoaiCongcuTEN_LOAI: TdxDBGridColumn;
    ElSplitter1: TElSplitter;
    gridDanhmuc: TdxDBGrid;
    qryDanhmuc: TIBOQuery;
    qryExecute: TIBOQuery;
    qryDanhmucMA_CONGCU: TIntegerField;
    qryDanhmucMA_LOAI: TWideStringField;
    qryDanhmucTEN_CONGCU: TWideStringField;
    qryDanhmucGHI_CHU: TWideStringField;
    qryExecuteMA_CONGCU: TIntegerField;
    qryExecuteMA_LOAI: TWideStringField;
    qryExecuteMA_TT: TWideStringField;
    qryExecuteGIATRI_TT: TWideStringField;
    dsDanhmuc_Nhap: TDataSource;
    memDanhmuc: TdxMemData;
    gridDanhmucTEN_CONGCU: TdxDBGridColumn;
    ActionList1: TActionList;
    acCreateMem: TAction;
    acLoadMem: TAction;
    memDanhmucMA_CONGCU: TIntegerField;
    memDanhmucMA_LOAI: TWideStringField;
    memDanhmucTEN_CONGCU: TWideStringField;
    qryDanhmucMA_TT: TWideStringField;
    qryDanhmucGIATRI_TT: TWideStringField;
    gridDanhmucMA_CONGCU: TdxDBGridSpinColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridLoaiCongcuEnter(Sender: TObject);
    procedure acCreateMemExecute(Sender: TObject);
    procedure acLoadMemExecute(Sender: TObject);
    procedure memDanhmucBeforePost(DataSet: TDataSet);
    procedure memDanhmucNewRecord(DataSet: TDataSet);
    procedure gridLoaiCongcuChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
  private
    { Private declarations }
    STATE:String;
  public
    { Public declarations }
  end;

var
  frmCongcuDanhmuc: TfrmCongcuDanhmuc;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmCongcuDanhmuc.FormCreate(Sender: TObject);
begin
  inherited;
  qryLoaiCongcu.Open;
  frameToolbar1.SetDataSource(dsDanhmuc_Nhap);
  acCreateMem.Execute;
end;

procedure TfrmCongcuDanhmuc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryThuoctinh.Close;
  qryLoaiCongcu.Close;
end;

procedure TfrmCongcuDanhmuc.gridLoaiCongcuEnter(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmCongcuDanhmuc.acCreateMemExecute(Sender: TObject);
var i:integer;
    f:TField;
    col:TdxDBTreeListColumn;
begin
  inherited;
  memDanhmuc.DisableControls;
  if memDanhmuc.Active then memDanhmuc.Close;
  if memDanhmuc.FieldCount>4 then
  begin
    for i:=memDanhmuc.FieldCount-1 downto  4 do
      memDanhmuc.Fields[i].Free;
  end;
  if gridDanhmuc.ColumnCount>2 then
  begin
    for i:=gridDanhmuc.ColumnCount-1 downto 2 do
      if gridDanhmuc.Columns[i].BandIndex=1 then
         gridDanhmuc.Columns[i].Free;
  end;

  if qryThuoctinh.Active=false then
    qryThuoctinh.Open ;
{
  else
    qryThuoctinh.Refresh;
}
  if qryThuoctinh.IsEmpty then
  begin
    gridDanhmuc.Bands[1].Visible:=false;
  end
  else
  begin
    gridDanhmuc.Bands[1].Visible:=true;

    qryThuoctinh.First;
    while not qryThuoctinh.Eof do
    begin
      if qryThuoctinhLOAI_DULIEU.Value='INTEGER' then
      begin
        f := TIntegerField.Create(memDanhmuc);
        TIntegerField(f).Name := memDanhmuc.Name + qryThuoctinhMA_THUOCTINH.AsString;
        TIntegerField(f).FieldName := qryThuoctinhMA_THUOCTINH.AsString;
        TIntegerField(f).FieldKind := fkData;
        TIntegerField(f).DataSet := memDanhmuc;
        TIntegerField(f).SetFieldType(ftInteger);

        col := gridDanhmuc.CreateColumn(TdxDBGridSpinColumn);
        col.Name := gridDanhmuc.Name + f.FieldName;
        col.FieldName := f.FieldName;
        col.Width := 70;
        col.HeaderAlignment := taCenter;
        col.DisableCustomizing := true;
        col.Caption := qryThuoctinhTEN_THUOCTINH.Value;
        col.BandIndex := 1;

      end
      else
      if qryThuoctinhLOAI_DULIEU.Value='FLOAT' then
      begin
        f := TFloatField.Create(memDanhmuc);
        TFloatField(f).Name := memDanhmuc.Name + qryThuoctinhMA_THUOCTINH.AsString;
        TFloatField(f).FieldName := qryThuoctinhMA_THUOCTINH.AsString;
        TFloatField(f).FieldKind := fkData;
        TFloatField(f).DataSet := memDanhmuc;
        TFloatField(f).SetFieldType(ftFloat);
        TFloatField(f).DisplayFormat:=sysConfig.FloatFormat;

        col := gridDanhmuc.CreateColumn(TdxDBGridCalcColumn);
        col.Name := gridDanhmuc.Name + f.FieldName;
        col.FieldName := f.FieldName;
        col.Width := 70;
        col.HeaderAlignment := taCenter;
        col.DisableCustomizing := true;
        col.Caption := qryThuoctinhTEN_THUOCTINH.Value;
        col.BandIndex := 1;

      end
      else
      if qryThuoctinhLOAI_DULIEU.Value='DATE' then
      begin
        f := TDateField.Create(memDanhmuc);
        TDateField(f).Name := memDanhmuc.Name + qryThuoctinhMA_THUOCTINH.AsString;
        TDateField(f).FieldName := qryThuoctinhMA_THUOCTINH.AsString;
        TDateField(f).FieldKind := fkData;
        TDateField(f).DataSet := memDanhmuc;
        TDateField(f).SetFieldType(ftDate);
        TDateField(f).DisplayFormat:=sysConfig.DateFormat;
        col := gridDanhmuc.CreateColumn(TdxDBGridDateColumn);
        col.Name := gridDanhmuc.Name + f.FieldName;
        col.FieldName := f.FieldName;
        col.Width := 70;
        col.HeaderAlignment := taCenter;
        col.DisableCustomizing := true;
        col.Caption := qryThuoctinhTEN_THUOCTINH.Value;
        col.BandIndex := 1;

      end
      else
      begin
        f := TWideStringField.Create(memDanhmuc);
        TWideStringField(f).Name := memDanhmuc.Name + qryThuoctinhMA_THUOCTINH.AsString;
        TWideStringField(f).FieldName := qryThuoctinhMA_THUOCTINH.AsString;
        TWideStringField(f).FieldKind := fkData;
        TWideStringField(f).DataSet := memDanhmuc;
        TWideStringField(f).SetFieldType(ftWideString);

        col := gridDanhmuc.CreateColumn(TdxDBGridColumn);
        col.Name := gridDanhmuc.Name + f.FieldName;
        col.FieldName := f.FieldName;
        col.Width := 120;
        col.HeaderAlignment := taCenter;
        col.DisableCustomizing := true;
        col.Caption := qryThuoctinhTEN_THUOCTINH.Value;
        col.BandIndex := 1;
      end;
      qryThuoctinh.Next;
    end;
  end;
  // load du lieu
  acLoadMem.Execute;
  memDanhmuc.EnableControls;
end;

procedure TfrmCongcuDanhmuc.acLoadMemExecute(Sender: TObject);
var ma_congcu:Integer;
    field_name:string;
begin
  inherited;
  STATE:='LOAD';
  if not memDanhmuc.Active then
    memDanhmuc.Open;
  if not qryDanhmuc.Active then
    qryDanhmuc.Open;
{
  else
    qryDanhmuc.Refresh;
}
  if qryDanhmuc.IsEmpty then
  begin
    STATE:='';
    exit;
  end;
  qryDanhmuc.First;
  ma_congcu:=-1;
  while not qryDanhmuc.Eof do
  begin
    if ma_congcu<>qryDanhmucMA_CONGCU.Value then
    begin
      if (memDanhmuc.State in [dsEdit,dsInsert]) then memDanhmuc.Post;
      memDanhmuc.Append;
      memDanhmucMA_CONGCU.Value:=qryDanhmucMA_CONGCU.Value;
      memDanhmucMA_LOAI.Value:=qryDanhmucMA_LOAI.Value;
      memDanhmucTEN_CONGCU.Value:=qryDanhmucTEN_CONGCU.Value;
      ma_congcu:=qryDanhmucMA_CONGCU.Value;
    end;
    field_name:=qryDanhmucMA_TT.AsString;
    memDanhmuc.FieldByName(field_name).Value:=qryDanhmuc.FieldByName('GIATRI_TT').Value;
    qryDanhmuc.Next;
  end;
  if (memDanhmuc.State in [dsEdit,dsInsert]) then memDanhmuc.Post;

  STATE:='';
end;

procedure TfrmCongcuDanhmuc.memDanhmucBeforePost(DataSet: TDataSet);
var i:integer;
begin
  inherited;
  if STATE='LOAD' then exit;
  if CheckRequiredFields(Dataset)=false then
  begin
    Abort;
    Exit;
  end;
  if (memDanhmuc.State in [dsInsert]) then
  begin
    try
    qryExecute.SQL.Text:='INSERT INTO HR_CONGCU_DM(MA_CONGCU, MA_LOAI, TEN_CONGCU) VALUES (:MA_CONGCU, :MA_LOAI,:TEN_CONGCU)';
    qryExecute.Prepare;
    qryExecute.ParamByName('MA_CONGCU').Value:=memDanhmucMA_CONGCU.Value;
    qryExecute.ParamByName('MA_LOAI').Value:=memDanhmucMA_LOAI.Value;
    qryExecute.ParamByName('TEN_CONGCU').Value:=memDanhmucTEN_CONGCU.Value;
    qryExecute.ExecSQL;
    except
      Abort;
      Exit;
    end;
  end
  else
  begin
    qryExecute.SQL.Text:='UPDATE HR_CONGCU_DM set MA_CONGCU=:MA_CONGCU , TEN_CONGCU=:TEN_CONGCU where MA_CONGCU=:OLD_MA_CONGCU and MA_LOAI=:MA_LOAI';
    qryExecute.Prepare;
    qryExecute.ParamByName('MA_CONGCU').Value:=memDanhmucMA_CONGCU.Value;
    qryExecute.ParamByName('OLD_MA_CONGCU').Value:=memDanhmucMA_CONGCU.OldValue;
    qryExecute.ParamByName('MA_LOAI').Value:=memDanhmucMA_LOAI.Value;
    qryExecute.ParamByName('TEN_CONGCU').Value:=memDanhmucTEN_CONGCU.Value;
    qryExecute.ExecSQL;

  end;

  qryExecute.SQL.Text:=
   ' UPDATE HR_CONGCU_CT SET '+
   ' GIATRI_TT = :GIATRI_TT  '+
   ' WHERE                   '+
   ' MA_TT = :MA_TT and      '+
   ' MA_CONGCU = :MA_CONGCU and '+
   ' MA_LOAI = :MA_LOAI      ';
  qryExecute.Prepare;
  for i:=memDanhmuc.FieldCount-1 downto 4 do
  begin
    qryExecute.ParamByName('MA_CONGCU').Value:=memDanhmucMA_CONGCU.Value;
    qryExecute.ParamByName('MA_LOAI').Value:=memDanhmucMA_LOAI.Value;
    qryExecute.ParamByName('MA_TT').Value:=memDanhmuc.Fields[i].FieldName;
    qryExecute.ParamByName('GIATRI_TT').Value:=memDanhmuc.Fields[i].Value;
    qryExecute.ExecSQL
  end;
end;

procedure TfrmCongcuDanhmuc.memDanhmucNewRecord(DataSet: TDataSet);
begin
  inherited;
  memDanhmucMA_CONGCU.Value:=memDanhmuc.RecordCount+1;
  memDanhmucTEN_CONGCU.Value:=qryLoaiCongcuTEN_LOAI.Value;
  memDanhmucMA_LOAI.Value:=qryLoaiCongcuMA_LOAI.Value;
end;

procedure TfrmCongcuDanhmuc.gridLoaiCongcuChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  acCreateMem.Execute;
end;

end.
