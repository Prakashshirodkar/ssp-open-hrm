unit WorkHistoryForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  ToolbarFrame, ExtCtrls, dxLayoutControl, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, dxCntner, cxControls, ElPgCtl, ImgList, ElPanel,
  ElSplit, ActnList;

type
  TfrmWorkHistory = class(TfrmBase)
    pageTop: TElPageControl;
    tabTop: TElTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    gridWorkChange: TdxDBGrid;
    gridWorkChangeDOC_NO: TdxDBGridMaskColumn;
    gridWorkChangeDOC_NAME: TdxDBGridMaskColumn;
    gridWorkChangeTITLE_NAME: TdxDBGridMaskColumn;
    gridWorkChangeDEPT_NAME: TdxDBGridMaskColumn;
    gridWorkChangeIS_MAIN_POSITION: TdxDBGridCheckColumn;
    gridWorkChangeIS_DISMISSED: TdxDBGridCheckColumn;
    gridWorkChangeASSIGNED_DATE: TdxDBGridDateColumn;
    gridWorkChangeDISMISSED_DATE: TdxDBGridDateColumn;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    pageBottom: TElPageControl;
    tabBottom: TElTabSheet;
    dxLayoutControl2: TdxLayoutControl;
    gridWorkHistory: TdxDBGrid;
    gridWorkHistoryFROM_DATE: TdxDBGridDateColumn;
    gridWorkHistoryTO_DATE: TdxDBGridDateColumn;
    frameToolbar1: TframeToolbar;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    ImageList1: TImageList;
    ElSplitter1: TElSplitter;
    gridWorkChangeDOC_TYPE: TdxDBGridImageColumn;
    ActionList1: TActionList;
    acDetail: TAction;
    gridWorkHistoryWORK_FIELD: TdxDBGridColumn;
    gridWorkHistoryWORK_JOB: TdxDBGridColumn;
    gridWorkHistoryWORK_PLACE: TdxDBGridColumn;
    gridWorkHistoryPLACE_ADDR: TdxDBGridColumn;
    gridWorkHistoryCONTACT_PERSON: TdxDBGridColumn;
    gridWorkHistoryPLACE_PHONE: TdxDBGridColumn;
    gridWorkHistoryNOTE: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridWorkChangeCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: WideString; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure acDetailUpdate(Sender: TObject);
    procedure acDetailExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWorkHistory: TfrmWorkHistory;

implementation

uses EmpInfoDataModule, MainDM, ContractManageForm, SSP_Library,
DecisionManageForm, DB,
  ContractDataModule, DecisionDataModule;

{$R *.dfm}

procedure TfrmWorkHistory.FormCreate(Sender: TObject);
begin
  inherited;
  if not EmpInfoDM.qryEmpWorkChange.Active then
    EmpInfoDM.qryEmpWorkChange.Open;
  if not EmpInfoDM.qryEmpWorkHistory.Active then
    EmpInfoDM.qryEmpWorkHistory.Open;
  frameToolbar1.SetDataSource(EmpInfoDM.dsEmpWorkHistory);
end;

procedure TfrmWorkHistory.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  EmpInfoDM.qryEmpWorkChange.Close;
  EmpInfoDM.qryEmpWorkHistory.Close;
end;

procedure TfrmWorkHistory.gridWorkChangeCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: WideString; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
begin
  inherited;
  try
    if (Anode.Index mod 2) = 0 then
      AColor := sysUIConfig.Read_Only_Color;
  except
  end
end;

procedure TfrmWorkHistory.acDetailUpdate(Sender: TObject);
begin
  inherited;
  acDetail.Enabled := (EmpInfoDM.qryEmpWorkChange.RecordCount > 0);
end;

procedure TfrmWorkHistory.acDetailExecute(Sender: TObject);
var
  bookmark: TBookmark;
begin
  inherited;
  bookmark := EmpInfoDM.qryEmpWorkChange.GetBookmark;
  if EmpInfoDM.qryEmpWorkChangeDOC_TYPE.Value = 0 then
    ContractDM.ViewContract(EmpInfoDM.qryEmpWorkChangeDOC_NO.Value)
  else
    if EmpInfoDM.qryEmpWorkChangeDOC_TYPE.Value = 1 then
    DecisionDM.ViewDecision(EmpInfoDM.qryEmpWorkChangeDOC_NO.Value);

  EmpInfoDM.qryEmpWorkChange.Refresh;
  EmpInfoDM.qryEmpWorkChange.GotoBookmark(bookmark);
end;

end.

