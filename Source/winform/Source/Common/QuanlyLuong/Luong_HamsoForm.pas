unit Luong_HamsoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxDBTLCl, dxGrClms;

type
  TfrmLuong_Hamso = class(TfrmListBase)
    qryListHAMSO_ID: TWideStringField;
    qryListHAMSO_TIEUDE: TWideStringField;
    qryListHAMSO_KYHIEU: TWideStringField;
    qryListHAMSO_HUONGDAN: TWideStringField;
    qryListHAMSO_LOAI: TWideStringField;
    dxdbgMainHAMSO_ID: TdxDBGridColumn;
    dxdbgMainHAMSO_TIEUDE: TdxDBGridColumn;
    dxdbgMainHAMSO_KYHIEU: TdxDBGridColumn;
    dxdbgMainHAMSO_HUONGDAN: TdxDBGridMemoColumn;
    dxdbgMainHAMSO_LOAI: TdxDBGridImageColumn;
    procedure qryListNewRecord(DataSet: TDataSet);
    procedure qryListAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    F_PHANLOAI:Widestring;
  public
    { Public declarations }
  end;

var
  frmLuong_Hamso: TfrmLuong_Hamso;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmLuong_Hamso.qryListNewRecord(DataSet: TDataSet);
begin
  inherited;
  if F_PHANLOAI='' then
    qryListHAMSO_LOAI.Value:='MATH'
  else
    qryListHAMSO_LOAI.Value:=F_PHANLOAI;
end;

procedure TfrmLuong_Hamso.qryListAfterPost(DataSet: TDataSet);
begin
  inherited;
  dmMain.DefOnAfterPost(Dataset);
  F_PHANLOAI:=qryListHAMSO_LOAI.Value;
end;

end.
