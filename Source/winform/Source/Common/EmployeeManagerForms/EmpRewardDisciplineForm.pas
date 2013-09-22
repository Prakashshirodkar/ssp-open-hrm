unit EmpRewardDisciplineForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ElPgCtl,
  ImgList, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, ElPanel,
  ElSplit, dxDBTLCl, dxGrClms, ActnList;

type
  TfrmEmpRewardDiscipline = class(TfrmBase)
    pageMain: TElPageControl;
    ImageList1: TImageList;
    tabMain: TElTabSheet;
    gridReward: TdxDBGrid;
    ElSplitter1: TElSplitter;
    pageBottom: TElPageControl;
    tabBottom: TElTabSheet;
    dxDBGrid1: TdxDBGrid;
    gridRewardDECISION_NO: TdxDBGridColumn;
    gridRewardDECISION_TITLE: TdxDBGridColumn;
    gridRewardDECISION_DATE: TdxDBGridDateColumn;
    gridRewardLEVEL_NAME: TdxDBGridColumn;
    gridRewardREWARD_NAME: TdxDBGridColumn;
    gridRewardREWARD_LIST_NAME: TdxDBGridColumn;
    dxDBGrid1DECISION_NO: TdxDBGridColumn;
    dxDBGrid1DECISION_TITLE: TdxDBGridColumn;
    dxDBGrid1DECISION_DATE: TdxDBGridDateColumn;
    dxDBGrid1LEVEL_NAME: TdxDBGridColumn;
    dxDBGrid1DISC_NAME: TdxDBGridColumn;
    dxDBGrid1DISC_LIST_NAME: TdxDBGridColumn;
    ActionList1: TActionList;
    acRewardDetail: TAction;
    acDiscipDetail: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acRewardDetailExecute(Sender: TObject);
    procedure acRewardDetailUpdate(Sender: TObject);
    procedure acDiscipDetailExecute(Sender: TObject);
    procedure acDiscipDetailUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpRewardDiscipline: TfrmEmpRewardDiscipline;

implementation

uses EmpInfoDataModule, DecisionDataModule, ContractDataModule,DB;

{$R *.dfm}

procedure TfrmEmpRewardDiscipline.FormCreate(Sender: TObject);
begin
  inherited;
  if not EmpInfoDM.qryEmpReward.Active then
   EmpInfoDM.qryEmpReward.Open;
  if not EmpInfoDM.qryEmpDiscipline.Active then
   EmpInfoDM.qryEmpDiscipline.Open;
end;

procedure TfrmEmpRewardDiscipline.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  EmpInfoDM.qryEmpReward.Close;
  EmpInfoDM.qryEmpDiscipline.Close;
end;

procedure TfrmEmpRewardDiscipline.acRewardDetailExecute(Sender: TObject);
var bookmark:TBookmark;
begin
  inherited;
  bookmark:=EmpInfoDM.qryEmpReward.GetBookmark;
  DecisionDM.ViewDecision(EmpInfoDM.qryEmpRewardDECISION_NO.Value);
  EmpInfoDM.qryEmpReward.Refresh;
  EmpInfoDM.qryEmpReward.GotoBookmark(bookmark);
end;


procedure TfrmEmpRewardDiscipline.acRewardDetailUpdate(Sender: TObject);
begin
  inherited;
  acRewardDetail.Enabled:=not EmpInfoDM.qryEmpReward.IsEmpty;
end;

procedure TfrmEmpRewardDiscipline.acDiscipDetailExecute(Sender: TObject);
var bookmark:TBookmark;
begin
  inherited;
  bookmark:=EmpInfoDM.qryEmpDiscipline.GetBookmark;
  DecisionDM.ViewDecision(EmpInfoDM.qryEmpDisciplineDECISION_NO.Value);
  EmpInfoDM.qryEmpDiscipline.Refresh;
  EmpInfoDM.qryEmpDiscipline.GotoBookmark(bookmark);
end;

procedure TfrmEmpRewardDiscipline.acDiscipDetailUpdate(Sender: TObject);
begin
  inherited;
  acDiscipDetail.Enabled:=not EmpInfoDM.qryEmpDiscipline.IsEmpty;
end;

end.
