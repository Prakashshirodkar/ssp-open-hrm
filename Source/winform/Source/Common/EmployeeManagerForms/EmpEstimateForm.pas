unit EmpEstimateForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, ElPgCtl, ImgList, DB, IBODataset,
  ExtCtrls, ElPanel, ElSplit, dxDBTLCl, dxGrClms;

type
  TfrmEmpEstimate = class(TfrmBase)
    ImageList1: TImageList;
    pageMain: TElPageControl;
    pageEstimate: TElTabSheet;
    pageSummary: TElTabSheet;
    gridEstimate: TdxDBGrid;
    gridEstimateSTAGE_NAME: TdxDBGridColumn;
    gridEstimateITEM_NO: TdxDBGridColumn;
    gridEstimateITEM_NAME: TdxDBGridColumn;
    gridEstimateLEVEL_NAME: TdxDBGridColumn;
    gridEstimateSTAGE_NO: TdxDBGridColumn;
    gridEstimateSummary: TdxDBGrid;
    gridEstimateSummarySTAGE_NO: TdxDBGridColumn;
    gridEstimateSummarySTAGE_NAME: TdxDBGridColumn;
    gridEstimateSummaryITEM_NO: TdxDBGridColumn;
    gridEstimateSummaryITEM_NAME: TdxDBGridColumn;
    gridEstimateSummaryLEVEL_NAME: TdxDBGridColumn;
    ElSplitter1: TElSplitter;
    pageBottom: TElPageControl;
    tabTraining: TElTabSheet;
    gridTraining: TdxDBGrid;
    gridTrainingCLASS_NO: TdxDBGridColumn;
    gridTrainingPLAN_NAME: TdxDBGridColumn;
    gridTrainingEDU_FIELD_NAME: TdxDBGridColumn;
    gridTrainingFIELD_LEVEL_NAME: TdxDBGridColumn;
    gridTrainingSTART_DATE: TdxDBGridDateColumn;
    gridTrainingEND_DATE: TdxDBGridDateColumn;
    gridTrainingALLOWANCE: TdxDBGridColumn;
    gridTrainingCURRENCY_NAME: TdxDBGridColumn;
    gridTrainingNOTE: TdxDBGridColumn;
    gridTrainingRESULT_NAME: TdxDBGridColumn;
    gridEstimateESTIMATE_MARK: TdxDBGridColumn;
    gridEstimateSummaryESTIMATE_MARK: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpEstimate: TfrmEmpEstimate;

implementation

uses MainDM, EmpInfoDataModule;

{$R *.dfm}

procedure TfrmEmpEstimate.FormCreate(Sender: TObject);
begin
  inherited;
  if EmpInfoDM.qryEstimate.active then
   EmpInfoDM.qryEstimate.Refresh
  else
   EmpInfoDM.qryEstimate.Open;
  gridEstimate.FullExpand;

  if EmpInfoDM.qryEstimateSummary.active then
   EmpInfoDM.qryEstimateSummary.Refresh
  else
   EmpInfoDM.qryEstimateSummary.Open;
  gridEstimateSummary.FullExpand;

  pageMain.ActivePage:=pageEstimate;
   if EmpInfoDM.qryTraining.active then
   EmpInfoDM.qryTraining.Refresh
  else
   EmpInfoDM.qryTraining.Open;

  gridTraining.FullExpand;
end;

procedure TfrmEmpEstimate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  EmpInfoDM.qryEstimate.Close;
  EmpInfoDM.qryEstimateSummary.Close;
  EmpInfoDM.qryTraining.Close; 
end;

end.
