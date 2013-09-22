//******************************************************************//
//************** Create form by THUYPTP - 22/01/2010 ***************//
//******************************************************************//
unit BAOHIEM_TienIchNhapSoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxEdLib,
  dxExEdtr, ElBtnCtl, ElPopBtn, dxLayoutControl, dxCntner, dxEditor,
  cxControls, DB, IBODataset, ActnList,dxDBGrid;

type
  TfrmBAOHIEM_TienIchNhapSo = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxUpdateAll: TdxCheckEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxUpdateSelected: TdxCheckEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxChoncot: TdxImageEdit;
    dxTuSo: TdxEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxDenSo: TdxEdit;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    qryCongthuc: TIBOQuery;
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
    dsCongthuc: TDataSource;
    ActionList1: TActionList;
    acCapnhat: TAction;
    acDong: TAction;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxNumValue: TdxCalcEdit;
    qryExecute: TIBOQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxUpdateAllChange(Sender: TObject);
    procedure dxUpdateSelectedChange(Sender: TObject);
    procedure acDongExecute(Sender: TObject);
    procedure acCapnhatUpdate(Sender: TObject);
    procedure dxChoncotChange(Sender: TObject);
    procedure acCapnhatExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_TienIchNhapSo: TfrmBAOHIEM_TienIchNhapSo;

implementation

{$R *.dfm}

uses MainDM, SSP_Library, BAOHIEM_BangDuLieuForm;

procedure TfrmBAOHIEM_TienIchNhapSo.FormCreate(Sender: TObject);
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
  dxChoncot.Text:=qryCongthucCT_KYHIEU.Value;
end;

procedure TfrmBAOHIEM_TienIchNhapSo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryCongthuc.Close;
  action := caFree;
  frmBAOHIEM_TienIchNhapSo := nil;
  frmBAOHIEM_BangDuLieu.gridData.OptionsBehavior :=
    frmBAOHIEM_BangDuLieu.gridData.OptionsBehavior - [edgoMultiSelect];
end;

procedure TfrmBAOHIEM_TienIchNhapSo.dxUpdateAllChange(Sender: TObject);
begin
  inherited;
  if dxUpdateAll.Checked then
  begin
    dxUpdateSelected.Checked := false;
  end
end;

procedure TfrmBAOHIEM_TienIchNhapSo.dxUpdateSelectedChange(
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

procedure TfrmBAOHIEM_TienIchNhapSo.acDongExecute(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TfrmBAOHIEM_TienIchNhapSo.acCapnhatUpdate(Sender: TObject);
begin
  inherited;
  acCapnhat.Enabled :=
    (dxUpdateAll.Checked or dxUpdateSelected.Checked) and
    (qryCongthucCT_KYHIEU.IsNull = false) and
    (
    (Trim(dxTuSo.Text) <> '') or
    (Trim(dxDenSo.Text) <> '') or
    (StrToFloatDef(string(dxNumValue.Text), -1) >= 0)
    );
end;

procedure TfrmBAOHIEM_TienIchNhapSo.dxChoncotChange(Sender: TObject);
begin
  inherited;
  if qryCongthuc.Active=false then exit;
  if not qryCongthuc.Locate('CT_KYHIEU',dxChoncot.Text,[]) then
    ShowMessage('Error: can not found column '+dxChoncot.Text);
end;

procedure TfrmBAOHIEM_TienIchNhapSo.acCapnhatExecute(Sender: TObject);
var
  i, j,k: integer;
  so_so_duoc_cap,chieu_dai_so, ky_tu: integer;
  tu_so,den_so, so_bhxh : string;
  tu_ma,den_ma : Double;
begin
  inherited;
  try
    so_so_duoc_cap := StrToIntDef(dxNumValue.Text, 0);
    tu_so := dxTuSo.Text;
    den_so := dxDenSo.Text;
    tu_ma := StrToFloatDef(dxTuSo.Text, 0);
    den_ma := StrToFloatDef(dxDenSo.Text, 0);
    chieu_dai_so := Length(tu_so);
    k := 1;
  except
    abort;
    exit;
  end;

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

      while (not frmBAOHIEM_BangDuLieu.qryData.Eof) and (k <= so_so_duoc_cap) do
      begin
        qryExecute.ParamByName('BAOHIEM_KEY_ID').Value :=
          frmBAOHIEM_BangDuLieu.qryDataBAOHIEM_KEY_ID.Value;

        so_bhxh := FloatToStr(tu_ma + k - 1);
        j := length(so_bhxh);
        while (j < chieu_dai_so) do
        begin
          so_bhxh := '0' + so_bhxh;
          Inc(j);
        end;
        Inc(k);

        qryExecute.ParamByName(qryCongthucCT_KYHIEU.AsString).Value := so_bhxh;
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

      so_bhxh := FloatToStr(tu_ma + k - 1);
      j := length(so_bhxh);
      while (j < chieu_dai_so) do
      begin
        so_bhxh := '0' + so_bhxh;
        Inc(j);
      end;
      Inc(k);

      qryExecute.ParamByName(qryCongthucCT_KYHIEU.AsString).Value := so_bhxh;
      try
        qryExecute.ExecSQL;
        if (k > so_so_duoc_cap) then
          break;
      except
      end;
    end;
  end;
  frmBAOHIEM_BangDuLieu.qryData.Refresh;
  frmBAOHIEM_BangDuLieu.qryData.EnableControls;
  Screen.Cursor:=crDefault;
end;

end.
