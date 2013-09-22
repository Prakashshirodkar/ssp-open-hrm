unit PhepNhapNhanhForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBTL, cxControls, dxDBGrid,
  ElBtnCtl, ElPopBtn, dxEditor, dxEdLib, ActnList, DB, IBODataset,
  ExtCtrls, ElPanel, ElSplit, dxDBTLCl, dxGrClms, DBActns;

type
  TfrmPhepNhapNhanh = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxDBTreeOrgList: TdxDBTreeList;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBTreeOrgListDEPT_NAME: TdxDBTreeListMaskColumn;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxDBGrid1: TdxDBGrid;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxInYear: TdxSpinEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    ActionList1: TActionList;
    dxDaNghi: TdxCalcEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    qryPhepNhanVien: TIBOQuery;
    dsPhepNhanVien: TDataSource;
    dxDBGrid1EMPLOYEE_NO: TdxDBGridColumn;
    dxDBGrid1FULL_NAME: TdxDBGridColumn;
    dxDBGrid1TITLE_NAME: TdxDBGridColumn;
    dxKetChuyen: TdxCalcEdit;
    dxlayoutKetchuyen: TdxLayoutItem;
    ElSplitter1: TElSplitter;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxInMonth: TdxSpinEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxDBGrid1SOPHEP_TRONGKY: TdxDBGridCalcColumn;
    dxDBGrid1SOPHEP_KETCHUYEN: TdxDBGridCalcColumn;
    dxDBGrid1SOPHEP_DANGHI: TdxDBGridCalcColumn;
    acXem: TAction;
    acNext: TAction;
    acBack: TAction;
    acCapnhat: TAction;
    DataSetCancel1: TDataSetCancel;
    DataSetPost1: TDataSetPost;
    qryExecute: TIBOQuery;
    ElPopupButton6: TElPopupButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    ElPopupButton7: TElPopupButton;
    dxLayoutControl1Item12: TdxLayoutItem;
    qryExecute2: TIBOQuery;
    qryPhepNhanVienEMPLOYEE_NO: TWideStringField;
    qryPhepNhanVienFULL_NAME: TWideStringField;
    qryPhepNhanVienTITLE_NAME: TWideStringField;
    qryPhepNhanVienSOPHEP_TRONGKY: TIBOFloatField;
    qryPhepNhanVienSOPHEP_KETCHUYEN: TIBOFloatField;
    qryPhepNhanVienSOPHEP_DANGHI: TIBOFloatField;
    qryPhepNhanVienTHANG_APDUNG: TIntegerField;
    qryPhepNhanVienMASO: TWideStringField;
    qryPhepNhanVienNAM_APDUNG: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure acXemExecute(Sender: TObject);
    procedure acBackExecute(Sender: TObject);
    procedure acNextExecute(Sender: TObject);
    procedure acCapnhatExecute(Sender: TObject);
    procedure dxKetChuyenChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryPhepNhanVienAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    sophep_ketchuyen :integer;
    sophep_danghi : integer;
  end;

var
  frmPhepNhapNhanh: TfrmPhepNhapNhanh;

implementation

uses MainDM, TheodoiPhepForm;

{$R *.dfm}

procedure TfrmPhepNhapNhanh.FormCreate(Sender: TObject);
begin
  inherited;
  dxDBTreeOrgList.FullExpand;
  dxInYear.Value := frmTheodoiPhep.dxInYear.Value;
  dmMain.DefOnBeforeOpen(qryPhepNhanVien);
  qryPhepNhanVien.ParamByName('nam_apdung').Value:=dxInYear.Value;
  qryPhepNhanVien.ParamByName('thang_apdung').Value:=dxInMonth.Value;
  qryPhepNhanVien.Open;
end;

procedure TfrmPhepNhapNhanh.acXemExecute(Sender: TObject);
begin
  inherited;
  qryPhepNhanVien.Close;
  qryPhepNhanVien.ParamByName('nam_apdung').Value:=dxInYear.Value;
  qryPhepNhanVien.ParamByName('thang_apdung').Value:=dxInMonth.Value;
  qryPhepNhanVien.open;

  if qryExecute2.Active then
    qryExecute2.close;
  qryExecute2.sql.Text:=' SELECT hr_phep_cauhinh.den_thang'+
                       ' FROM hr_phep_cauhinh';
  qryExecute2.open;
  if qryExecute2.FieldByName('den_thang').Value < dxinmonth.Value then
  begin
    dxDBGrid1SOPHEP_KETCHUYEN.Visible := false;
    dxlayoutKetchuyen.Visible := false;
  end
  else
  begin
    dxDBGrid1SOPHEP_KETCHUYEN.Visible := true;
    dxlayoutKetchuyen.Visible := true;
  end;
end;

procedure TfrmPhepNhapNhanh.acBackExecute(Sender: TObject);
begin
  inherited;
  if dxInMonth.Value = 1 then
  begin
    dxInMonth.Value := 12;
    dxInYear.Value := dxInYear.Value -1;
  end else
    dxInMonth.Value := dxInMonth.Value-1;
  acXem.Execute;
end;

procedure TfrmPhepNhapNhanh.acNextExecute(Sender: TObject);
begin
  inherited;
  if dxInMonth.Value = 12 then
  begin
    dxInMonth.Value := 1;
    dxInYear.Value := dxInYear.Value +1;
  end else
    dxInMonth.Value := dxInMonth.Value+1;
  acXem.Execute;
end;

procedure TfrmPhepNhapNhanh.acCapnhatExecute(Sender: TObject);
var
  i : integer;
begin
  inherited;
  if qryExecute.Active then
    qryExecute.close;
  qryExecute.SQL.Text:='EXECUTE PROCEDURE HR_PHEP_CAPNHAT_HIENTHI'+
                      '(:maso_nv,:nam_apdung, :thang_apdung, '+
                      ':sophep_ketchuyen, :sophep_danghi)';

  for i := 0 to dxdbgrid1.SelectedCount-1 do
  begin
    qryExecute.ParamByName('maso_nv').Value:=
          dxdbgrid1.SelectedNodes[i].Values[dxDBGrid1EMPLOYEE_NO.Index];
    qryExecute.ParamByName('nam_apdung').Value:=dxInYear.IntValue;
    qryExecute.ParamByName('thang_apdung').Value:=dxInMonth.IntValue;
    qryExecute.ParamByName('sophep_ketchuyen').Value:=StrToFloat(dxKetChuyen.Text);
    qryExecute.ParamByName('sophep_danghi').Value:=StrToFloat(dxDaNghi.Text);
    qryExecute.Open;
    qryExecute.Close;
  end;
  acCapnhat.Enabled := False;
  qryPhepNhanVien.Refresh;
end;

procedure TfrmPhepNhapNhanh.dxKetChuyenChange(Sender: TObject);
begin
  inherited;
  acCapnhat.Enabled := true;
end;

procedure TfrmPhepNhapNhanh.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmTheodoiPhep.qryTheodoiThongtin.Refresh;
end;

procedure TfrmPhepNhapNhanh.qryPhepNhanVienAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryExecute.Active then
    qryExecute.close;
  qryExecute.SQL.Text:='EXECUTE PROCEDURE HR_PHEP_CAPNHAT_HIENTHI'+
                      '(:maso_nv,:nam_apdung, :thang_apdung, '+
                      ':sophep_ketchuyen, :sophep_danghi)';
  qryExecute.ParamByName('maso_nv').Value:=
          dxdbgrid1.SelectedNodes[0].Values[dxDBGrid1EMPLOYEE_NO.Index];
  qryExecute.ParamByName('nam_apdung').Value:=dxInYear.IntValue;
  qryExecute.ParamByName('thang_apdung').Value:=dxInMonth.IntValue;
  qryExecute.ParamByName('sophep_ketchuyen').Value:=
          dxdbgrid1.SelectedNodes[0].Values[dxDBGrid1SOPHEP_KETCHUYEN.Index];
  qryExecute.ParamByName('sophep_danghi').Value:=
          dxdbgrid1.SelectedNodes[0].Values[dxDBGrid1SOPHEP_DANGHI.Index];
  qryExecute.Open;
  qryExecute.Close;
  qryPhepNhanVien.Refresh;
end;

end.
