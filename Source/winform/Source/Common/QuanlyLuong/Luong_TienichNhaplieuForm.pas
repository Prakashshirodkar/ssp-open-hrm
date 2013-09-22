unit Luong_TienichNhaplieuForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, DB, IBODataset, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib, dxTL, dxDBCtrl, dxDBGrid, ElBtnCtl,
  ElPopBtn, ActnList;

type
  TfrmLuong_TienichNhaplieu = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dsCongthuc: TDataSource;
    qryCongthuc: TIBOQuery;
    dxUpdateAll: TdxCheckEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxUpdateSelected: TdxCheckEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxTextValue: TdxEdit;
    dxlcTextValue: TdxLayoutItem;
    dxDateValue: TdxDateEdit;
    dxlcDateValue: TdxLayoutItem;
    dxNumValue: TdxCalcEdit;
    dxlcNumValue: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ActionList1: TActionList;
    acCapnhat: TAction;
    acDong: TAction;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    qryExecute: TIBOQuery;
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
    dxChoncotluong: TdxImageEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    procedure gridCongthucDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryCongthucAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxUpdateAllChange(Sender: TObject);
    procedure dxUpdateSelectedChange(Sender: TObject);
    procedure acDongExecute(Sender: TObject);
    procedure acCapnhatExecute(Sender: TObject);
    procedure acCapnhatUpdate(Sender: TObject);
    procedure dxChoncotluongChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLuong_TienichNhaplieu: TfrmLuong_TienichNhaplieu;

implementation

uses MainDM, SSP_Library, Luong_Bangluong;

{$R *.dfm}

procedure TfrmLuong_TienichNhaplieu.gridCongthucDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self, true, sender);
end;

procedure TfrmLuong_TienichNhaplieu.FormCreate(Sender: TObject);
begin
  inherited;
  qryCongthuc.ParamByName('PA_MA').Value := frmLuong_Bangluong.PA_MA;
  qryCongthuc.Open;
  if qryCongthuc.IsEmpty then exit;
  qryCongthuc.First;
  dxChoncotluong.Descriptions.Clear;
  dxChoncotluong.Values.Clear;
  while not qryCongthuc.Eof do
  begin
    dxChoncotluong.Descriptions.Add(qryCongthucCT_TIEUDE.Value);
    dxChoncotluong.Values.Add(qryCongthucCT_KYHIEU.Value);
    qryCongthuc.Next;
  end;
  qryCongthuc.AfterScroll:=qryCongthucAfterScroll;
  dxChoncotluong.Text:=qryCongthucCT_KYHIEU.Value;
end;

procedure TfrmLuong_TienichNhaplieu.qryCongthucAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  dxlcTextValue.Visible := (qryCongthucCT_KIEUDULIEU.Value = 'VARCHAR');
  dxlcTextValue.Visible := (qryCongthucCT_KIEUDULIEU.Value = 'MEMO');
  dxlcDateValue.Visible := (qryCongthucCT_KIEUDULIEU.Value = 'DATE');
  dxlcNumValue.Visible := (qryCongthucCT_KIEUDULIEU.Value = 'DOUBLE');
end;

procedure TfrmLuong_TienichNhaplieu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryCongthuc.Close;
  action := caFree;
  frmLuong_TienichNhaplieu := nil;
  frmLuong_Bangluong.gridLuong.OptionsBehavior :=
    frmLuong_Bangluong.gridLuong.OptionsBehavior - [edgoMultiSelect];
end;

procedure TfrmLuong_TienichNhaplieu.dxUpdateAllChange(Sender: TObject);
begin
  inherited;
  if dxUpdateAll.Checked then
  begin
    dxUpdateSelected.Checked := false;
  end
end;

procedure TfrmLuong_TienichNhaplieu.dxUpdateSelectedChange(
  Sender: TObject);
begin
  inherited;
  if dxUpdateSelected.Checked then
  begin
    dxUpdateAll.Checked := false;
    frmLuong_bangluong.gridLuong.OptionsBehavior :=
      frmLuong_bangluong.gridLuong.OptionsBehavior + [edgoMultiSelect];
  end;
end;

procedure TfrmLuong_TienichNhaplieu.acDongExecute(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TfrmLuong_TienichNhaplieu.acCapnhatExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Add('UPDATE WB_' + frmLuong_Bangluong.P_PA_KYHIEU);
  qryExecute.SQL.Add(' SET ' + qryCongthucCT_KYHIEU.AsString + ' = :' +
    qryCongthucCT_KYHIEU.AsString);
  qryExecute.SQL.Add(' WHERE WB_KEY_ID=:WB_KEY_ID');

  qryExecute.Prepare;
  frmLuong_Bangluong.qryLuong.DisableControls;

  if dxUpdateAll.Checked then
  begin
    if frmLuong_Bangluong.qryLuong.IsEmpty = false then
    begin
      frmLuong_Bangluong.qryLuong.First;
      while not frmLuong_Bangluong.qryLuong.Eof do
      begin
        qryExecute.ParamByName('WB_KEY_ID').Value :=
          frmLuong_Bangluong.qryLuongWB_KEY_ID.Value;
        if qryCongthucCT_KIEUDULIEU.Value = 'VARCHAR' then
          qryExecute.ParamByName(qryCongthucCT_KYHIEU.AsString).Value :=
            dxTextValue.Text
        else if qryCongthucCT_KIEUDULIEU.Value = 'MEMO' then
          qryExecute.ParamByName(qryCongthucCT_KYHIEU.AsString).Value :=
            dxTextValue.Text
        else if qryCongthucCT_KIEUDULIEU.Value = 'DATE' then
          qryExecute.ParamByName(qryCongthucCT_KYHIEU.AsString).Value :=
            dxDateValue.Date
        else if qryCongthucCT_KIEUDULIEU.Value = 'DOUBLE' then
          qryExecute.ParamByName(qryCongthucCT_KYHIEU.AsString).Value :=
            StrToFloatDef(dxNumValue.Text, 0);
        try
          qryExecute.ExecSQL;
        except
        end;
        frmLuong_Bangluong.qryLuong.Next;
      end;
    end;
  end
  else if dxUpdateSelected.Checked then
  begin
    for i := 0 to frmLuong_bangluong.gridLuong.SelectedCount - 1 do
    begin
      qryExecute.ParamByName('WB_KEY_ID').Value :=
        frmLuong_Bangluong.gridLuong.SelectedNodes[i].Values[frmLuong_Bangluong.gridLuongWB_KEY_ID.Index];
      if qryCongthucCT_KIEUDULIEU.Value = 'VARCHAR' then
        qryExecute.ParamByName(qryCongthucCT_KYHIEU.AsString).Value :=
          dxTextValue.Text
      else if qryCongthucCT_KIEUDULIEU.Value = 'VARCHAR' then
        qryExecute.ParamByName(qryCongthucCT_KYHIEU.AsString).Value :=
          dxTextValue.Text
      else if qryCongthucCT_KIEUDULIEU.Value = 'DATE' then
        qryExecute.ParamByName(qryCongthucCT_KYHIEU.AsString).Value :=
          dxDateValue.Date
      else if qryCongthucCT_KIEUDULIEU.Value = 'DOUBLE' then
        qryExecute.ParamByName(qryCongthucCT_KYHIEU.AsString).Value :=
          StrToFloatDef(dxNumValue.Text, 0);
      try
        qryExecute.ExecSQL;
      except
      end;
    end;
  end;
  frmLuong_Bangluong.qryLuong.Refresh;
  frmLuong_Bangluong.qryLuong.EnableControls;
  Screen.Cursor:=crDefault;
end;

procedure TfrmLuong_TienichNhaplieu.acCapnhatUpdate(Sender: TObject);
begin
  inherited;
  acCapnhat.Enabled :=
    (dxUpdateAll.Checked or dxUpdateSelected.Checked) and
    (qryCongthucCT_KYHIEU.IsNull = false) and
    (
    ((qryCongthucCT_KIEUDULIEU.Value = 'VARCHAR') and
    (Trim(dxTextValue.Text) <> '')) or
    ((qryCongthucCT_KIEUDULIEU.Value = 'MEMO') and
    (Trim(dxTextValue.Text) <> '')) or
    ((qryCongthucCT_KIEUDULIEU.Value = 'DATE') and
    (dxDateValue.Date > 0)) or
    ((qryCongthucCT_KIEUDULIEU.Value = 'DOUBLE') and
    (StrToFloatDef(string(dxNumValue.Text), -1) >= 0))
    );
end;

procedure TfrmLuong_TienichNhaplieu.dxChoncotluongChange(Sender: TObject);
begin
  inherited;
  if qryCongthuc.Active=false then exit;
  if not qryCongthuc.Locate('CT_KYHIEU',dxChoncotluong.Text,[]) then
    ShowMessage('Error: can not found column '+dxChoncotluong.Text);
end;

end.

