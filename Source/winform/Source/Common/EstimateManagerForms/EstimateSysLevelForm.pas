unit EstimateSysLevelForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ToolbarFrame,
  dxExEdtr, ExtCtrls, ElPanel, ElSplit, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  DB, IBODataset, dxDBTLCl, dxGrClms;

type
  TfrmEstimateSysLevel = class(TfrmBase)
    frameToolbar1: TframeToolbar;
    dsEstimateSystem: TDataSource;
    qryEstimateSystem: TIBOQuery;
    dsSysDetail: TDataSource;
    qrySysDetail: TIBOQuery;
    gridEstimateSystem: TdxDBGrid;
    ElSplitter1: TElSplitter;
    gridSysDetail: TdxDBGrid;
    gridEstimateSystemSYS_NO: TdxDBGridColumn;
    gridEstimateSystemSYS_NAME: TdxDBGridColumn;
    gridSysDetailLEVEL_NO: TdxDBGridColumn;
    gridSysDetailLEVEL_NAME: TdxDBGridColumn;
    gridSysDetailLEVEL_MARK: TdxDBGridCalcColumn;
    qryEstimateSystemSYS_NO: TWideStringField;
    qryEstimateSystemSYS_NAME: TWideStringField;
    qryEstimateSystemSYS_NOTE: TWideStringField;
    Panel1: TPanel;
    ElSplitter2: TElSplitter;
    gridSysSum: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridCalcColumn1: TdxDBGridCalcColumn;
    dxDBGridCalcColumn2: TdxDBGridCalcColumn;
    qrySysSum: TIBOQuery;
    dsSysSum: TDataSource;
    qrySysSumLEVEL_NO: TWideStringField;
    qrySysSumLEVEL_NAME: TWideStringField;
    qrySysSumFROM_MARK: TIBOFloatField;
    qrySysSumTO_MARK: TIBOFloatField;
    qrySysSumSYS_ESTIMATE: TWideStringField;
    qrySysDetailLEVEL_NO: TWideStringField;
    qrySysDetailLEVEL_NAME: TWideStringField;
    qrySysDetailLEVEL_MARK: TIBOFloatField;
    qrySysDetailSYS_ESTIMATE: TWideStringField;
    qrySysDetailLEVEL_TO_MARK: TIBOFloatField;
    gridSysDetailLEVEL_TO_MARK: TdxDBGridCalcColumn;
    procedure gridEstimateSystemEnter(Sender: TObject);
    procedure gridSysDetailEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrySysDetailNewRecord(DataSet: TDataSet);
    procedure qrySysSumNewRecord(DataSet: TDataSet);
    procedure gridSysSumEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstimateSysLevel: TfrmEstimateSysLevel;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmEstimateSysLevel.gridEstimateSystemEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsEstimateSystem);
end;

procedure TfrmEstimateSysLevel.gridSysDetailEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsSysDetail)
end;

procedure TfrmEstimateSysLevel.FormCreate(Sender: TObject);
begin
  inherited;
  qryEstimateSystem.Open;
  qrySysDetail.Open;
  qrySysSum.Open;
  frameToolbar1.SetDataSource(dsEstimateSystem);
end;

procedure TfrmEstimateSysLevel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qrySysDetail.Close;
  qrySysSum.Close;
  qryEstimateSystem.Close;
end;

procedure TfrmEstimateSysLevel.qrySysDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrySysDetailSYS_ESTIMATE.Value:=qryEstimateSystemSYS_NO.Value;
end;

procedure TfrmEstimateSysLevel.qrySysSumNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrySysSumSYS_ESTIMATE.Value:=qryEstimateSystemSYS_NO.Value;
end;

procedure TfrmEstimateSysLevel.gridSysSumEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsSysSum)
end;

end.
