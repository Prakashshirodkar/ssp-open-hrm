unit WageCompanyForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, dxBar,
  IBODataset, ElCaption, dxLayoutControl, dxCntner, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxDBTLCl, dxGrClms;

type
  TfrmWageCompany = class(TfrmListBase)
    dxlcMainItem3: TdxLayoutItem;
    gridDetail: TdxDBGrid;
    qryListWAGE_SCALE: TWideStringField;
    qryListWAGE_SCALE_NAME: TWideStringField;
    qryListNOTE: TWideStringField;
    dxdbgMainWAGE_SCALE: TdxDBGridColumn;
    dxdbgMainWAGE_SCALE_NAME: TdxDBGridColumn;
    dxdbgMainNOTE: TdxDBGridColumn;
    dsDetail: TDataSource;
    qryDetail: TIBOQuery;
    qryDetailWAGE_SCALE: TWideStringField;
    qryDetailWAGE_LEVEL: TIntegerField;
    qryDetailWAGE_COEFF: TIBOFloatField;
    qryDetailPROMOTION: TIntegerField;
    qryDetailNOTE: TWideStringField;
    gridDetailNOTE: TdxDBGridColumn;
    gridDetailWAGE_COEFF: TdxDBGridCalcColumn;
    gridDetailPROMOTION: TdxDBGridCalcColumn;
    gridDetailWAGE_LEVEL: TdxDBGridSpinColumn;
    procedure qryDetailNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dxdbgMainEnter(Sender: TObject);
    procedure gridDetailEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWageCompany: TfrmWageCompany;

implementation

{$R *.dfm}

procedure TfrmWageCompany.qryDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryDetailWAGE_LEVEL.Value := qryDetail.RecordCount;  
end;

procedure TfrmWageCompany.FormCreate(Sender: TObject);
begin
  inherited;
  qryDetail.Open;  
end;

procedure TfrmWageCompany.dxdbgMainEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsList);
end;

procedure TfrmWageCompany.gridDetailEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsDetail);
end;

end.
