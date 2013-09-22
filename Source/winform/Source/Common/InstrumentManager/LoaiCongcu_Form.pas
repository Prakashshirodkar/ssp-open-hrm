unit LoaiCongcu_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, DB, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, IBODataset;

type
  TfrmCongcu_Loai = class(TfrmEditBase)
    gridLoaiCongcu: TdxDBGrid;
    dxlcMainItem2: TdxLayoutItem;
    gridThuoctinh: TdxDBGrid;
    dxlcMainItem3: TdxLayoutItem;
    dxlcMainGroup1: TdxLayoutGroup;
    dsLoaiCongcu: TDataSource;
    dsThuoctinh: TDataSource;
    qryLoaiCongcu: TIBOQuery;
    qryThuoctinh: TIBOQuery;
    qryLoaiCongcuMA_LOAI: TWideStringField;
    qryLoaiCongcuTEN_LOAI: TWideStringField;
    qryThuoctinhMA_LOAI: TWideStringField;
    qryThuoctinhMA_THUOCTINH: TWideStringField;
    qryThuoctinhTEN_THUOCTINH: TWideStringField;
    qryThuoctinhLOAI_DULIEU: TWideStringField;
    gridLoaiCongcuMA_LOAI: TdxDBGridColumn;
    gridLoaiCongcuTEN_LOAI: TdxDBGridColumn;
    gridThuoctinhMA_THUOCTINH: TdxDBGridColumn;
    gridThuoctinhTEN_THUOCTINH: TdxDBGridColumn;
    gridThuoctinhLOAI_DULIEU: TdxDBGridImageColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCongcu_Loai: TfrmCongcu_Loai;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmCongcu_Loai.FormCreate(Sender: TObject);
begin
  inherited;
  qryLoaiCongcu.Open;
  qryThuoctinh.Open;
  frameToolbar1.SetDataSource(dsLoaiCongcu);
end;

procedure TfrmCongcu_Loai.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryThuoctinh.Close;
  qryLoaiCongcu.Close;
end;

end.
