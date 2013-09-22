//******************************************************************//
//************** Create form by THUYPTP - 06/10/2009 ***************//
//******************************************************************//
unit BAOHIEM_TienIchNhapLieuForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, DB, ActnList,
  IBODataset, dxLayoutControl, dxExEdtr, dxEdLib, ElBtnCtl, ElPopBtn,
  dxEditor, dxCntner, cxControls, dxDBGrid;

type
  TfrmBAOHIEM_TienIchNhapLieu = class(TfrmBase)
    dxLayoutControl1: TdxLayoutControl;
    dxUpdateAll: TdxCheckEdit;
    dxUpdateSelected: TdxCheckEdit;
    dxTextValue: TdxEdit;
    dxDateValue: TdxDateEdit;
    dxNumValue: TdxCalcEdit;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    dxChoncot: TdxImageEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxlcTextValue: TdxLayoutItem;
    dxlcDateValue: TdxLayoutItem;
    dxlcNumValue: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    qryCongthuc: TIBOQuery;
    dsCongthuc: TDataSource;
    qryExecute: TIBOQuery;
    ActionList1: TActionList;
    acCapnhat: TAction;
    acDong: TAction;
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
    procedure FormCreate(Sender: TObject);
    procedure qryCongthucAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxUpdateAllChange(Sender: TObject);
    procedure dxUpdateSelectedChange(Sender: TObject);
    procedure acDongExecute(Sender: TObject);
    procedure acCapnhatExecute(Sender: TObject);
    procedure acCapnhatUpdate(Sender: TObject);
    procedure dxChoncotChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_TienIchNhapLieu: TfrmBAOHIEM_TienIchNhapLieu;

implementation

{$R *.dfm}

uses MainDM, SSP_Library, BAOHIEM_BangDuLieuForm;

procedure TfrmBAOHIEM_TienIchNhapLieu.FormCreate(Sender: TObject);
begin
  inherited;
  qryCongthuc.ParamByName('MAU_ID').Value := frmBAOHIEM_BangDuLieu.MAU_ID;
  qryCongthuc.Open;
  if qryCongthuc.IsEmpty then exit;
  qryCongthuc.First;
  dxChoncot.Descriptions.Clear;
  dxChoncot.Values.Clear;
  while not qryCongthuc.Eof do
  begin
    dxChoncot.Descriptions.Add(qryCongthucCT_TIEUDE.Value);
    dxChoncot.Values.Add(qryCongthucCT_KYHIEU.Value);
    qryCongthuc.Next;
  end;
  qryCongthuc.AfterScroll:=qryCongthucAfterScroll;
  dxChoncot.Text:=qryCongthucCT_KYHIEU.Value;
end;

procedure TfrmBAOHIEM_TienIchNhapLieu.qryCongthucAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  dxlcTextValue.Visible := (qryCongthucCT_KIEUDULIEU.Value = 'VARCHAR');
  dxlcTextValue.Visible := (qryCongthucCT_KIEUDULIEU.Value = 'NOTATION');
  dxlcDateValue.Visible := (qryCongthucCT_KIEUDULIEU.Value = 'DATE');
  dxlcNumValue.Visible := (qryCongthucCT_KIEUDULIEU.Value = 'DOUBLE');
end;

procedure TfrmBAOHIEM_TienIchNhapLieu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryCongthuc.Close;
  action := caFree;
  frmBAOHIEM_TienIchNhapLieu := nil;
  frmBAOHIEM_BangDuLieu.gridData.OptionsBehavior :=
    frmBAOHIEM_BangDuLieu.gridData.OptionsBehavior - [edgoMultiSelect];
end;

procedure TfrmBAOHIEM_TienIchNhapLieu.dxUpdateAllChange(Sender: TObject);
begin
  inherited;
  if dxUpdateAll.Checked then
  begin
    dxUpdateSelected.Checked := false;
  end
end;

procedure TfrmBAOHIEM_TienIchNhapLieu.dxUpdateSelectedChange(
  Sender: TObject);
begin
  inherited;
  if dxUpdateSelected.Checked then
  begin
    dxUpdateAll.Checked := false;
    frmBAOHIEM_BangDuLieu.gridData.OptionsBehavior :=
    frmBAOHIEM_BangDuLieu.gridData.OptionsBehavior + [edgoMultiSelect];
  end;
end;

procedure TfrmBAOHIEM_TienIchNhapLieu.acDongExecute(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TfrmBAOHIEM_TienIchNhapLieu.acCapnhatExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Add('UPDATE HR_BAOHIEM_' + frmBAOHIEM_BangDuLieu.P_MAU_KYHIEU);
  qryExecute.SQL.Add(' SET ' + qryCongthucCT_KYHIEU.AsString + ' = :' +
    qryCongthucCT_KYHIEU.AsString);
  qryExecute.SQL.Add(' WHERE BAOHIEM_KEY_ID=:BAOHIEM_KEY_ID');

  qryExecute.Prepare;
  frmBAOHIEM_BangDuLieu.qryData.DisableControls;

  if dxUpdateAll.Checked then
  begin
    if frmBAOHIEM_BangDuLieu.qryData.IsEmpty = false then
    begin
      frmBAOHIEM_BangDuLieu.qryData.First;
      while not frmBAOHIEM_BangDuLieu.qryData.Eof do
      begin
        qryExecute.ParamByName('BAOHIEM_KEY_ID').Value :=
          frmBAOHIEM_BangDuLieu.qryDataBAOHIEM_KEY_ID.Value;
        if qryCongthucCT_KIEUDULIEU.Value = 'VARCHAR' then
          qryExecute.ParamByName(qryCongthucCT_KYHIEU.AsString).Value :=
            dxTextValue.Text
        else if qryCongthucCT_KIEUDULIEU.Value = 'NOTATION' then
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
        frmBAOHIEM_BangDuLieu.qryData.Next;
      end;
    end;
  end
  else if dxUpdateSelected.Checked then
  begin
    for i := 0 to frmBAOHIEM_BangDuLieu.gridData.SelectedCount - 1 do
    begin
      qryExecute.ParamByName('BAOHIEM_KEY_ID').Value :=
        frmBAOHIEM_BangDuLieu.gridData.SelectedNodes[i].Values[frmBAOHIEM_BangDuLieu.gridDataBAOHIEM_KEY_ID.Index];
      if qryCongthucCT_KIEUDULIEU.Value = 'VARCHAR' then
        qryExecute.ParamByName(qryCongthucCT_KYHIEU.AsString).Value :=
          dxTextValue.Text
      else if qryCongthucCT_KIEUDULIEU.Value = 'NOTATION' then
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
  frmBAOHIEM_BangDuLieu.qryData.Refresh;
  frmBAOHIEM_BangDuLieu.qryData.EnableControls;
  Screen.Cursor:=crDefault;
end;

procedure TfrmBAOHIEM_TienIchNhapLieu.acCapnhatUpdate(Sender: TObject);
begin
  inherited;
  acCapnhat.Enabled :=
    (dxUpdateAll.Checked or dxUpdateSelected.Checked) and
    (qryCongthucCT_KYHIEU.IsNull = false) and
    (
    ((qryCongthucCT_KIEUDULIEU.Value = 'VARCHAR') and
    (Trim(dxTextValue.Text) <> '')) or
    ((qryCongthucCT_KIEUDULIEU.Value = 'NOTATION') and
    (Trim(dxTextValue.Text) <> '')) or
    ((qryCongthucCT_KIEUDULIEU.Value = 'DATE') and
    (dxDateValue.Date > 0)) or
    ((qryCongthucCT_KIEUDULIEU.Value = 'DOUBLE') and
    (StrToFloatDef(string(dxNumValue.Text), -1) >= 0))
    );
end;

procedure TfrmBAOHIEM_TienIchNhapLieu.dxChoncotChange(Sender: TObject);
begin
  inherited;
  if qryCongthuc.Active=false then exit;
  if not qryCongthuc.Locate('CT_KYHIEU',dxChoncot.Text,[]) then
    ShowMessage('Error: can not found column '+dxChoncot.Text);
end;

end.
