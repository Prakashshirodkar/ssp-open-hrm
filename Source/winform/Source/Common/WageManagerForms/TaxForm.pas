unit TaxForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, ExtCtrls, dxExEdtr, dxDBTLCl,
  dxGrClms, ElPanel, ElSplit, dxTL, dxDBCtrl, dxDBGrid, dxCntner, DB,
  IBODataset;

type
  TfrmTax = class(TfrmEditBase)
    mainPanel: TPanel;
    dxlcMainItem2: TdxLayoutItem;
    dsTaxGroup: TDataSource;
    qryTaxGroup: TIBOQuery;
    qryTaxLevel: TIBOQuery;
    dsTaxLevel: TDataSource;
    qryTaxGroupTAX_GROUP_NO: TWideStringField;
    qryTaxGroupTAX_GROUP_NAME: TWideStringField;
    qryTaxGroupNOTE: TWideStringField;
    qryTaxLevelFROM_INCOME: TIBOFloatField;
    qryTaxLevelTO_INCOME: TIBOFloatField;
    qryTaxLevelTAX_LEVEL: TIBOFloatField;
    qryTaxLevelTAX_GROUP: TWideStringField;
    gridTaxGroup: TdxDBGrid;
    gridTaxGroupTAX_GROUP_NO: TdxDBGridColumn;
    gridTaxGroupTAX_GROUP_NAME: TdxDBGridColumn;
    gridTaxGroupNOTE: TdxDBGridColumn;
    ElSplitter1: TElSplitter;
    gridTaxLevel: TdxDBGrid;
    gridTaxLevelFROM_INCOME: TdxDBGridCalcColumn;
    gridTaxLevelTO_INCOME: TdxDBGridCalcColumn;
    gridTaxLevelTAX_LEVEL: TdxDBGridCalcColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryTaxLevelNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTax: TfrmTax;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmTax.FormCreate(Sender: TObject);
begin
  inherited;
  qryTaxGroup.Open;
  qryTaxLevel.Open;
  frameToolbar1.SetDataSource(dsTaxGroup);
end;

procedure TfrmTax.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  qryTaxLevel.Close;
  qryTaxGroup.Close;
end;

procedure TfrmTax.qryTaxLevelNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryTaxLevelTAX_GROUP.Value:=qryTaxGroupTAX_GROUP_NO.Value;
end;

end.
