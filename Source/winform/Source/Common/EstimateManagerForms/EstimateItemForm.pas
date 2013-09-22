unit EstimateItemForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ToolbarFrame,
  dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, ElPanel, ElSplit,
  dxDBTL, DB, IBODataset, dxDBTLCl, dxGrClEx, dxGrClms, ElPgCtl;

type
  TfrmEstimateItem = class(TfrmBase)
    frameToolbar1: TframeToolbar;
    gridEstimateItem: TdxDBGrid;
    ElSplitter1: TElSplitter;
    qryApply: TIBOQuery;
    dsApply: TDataSource;
    qryEstimateItem: TIBOQuery;
    dsEstimateItem: TDataSource;
    qryEstimateItemITEM_NO: TWideStringField;
    qryEstimateItemITEM_NAME: TWideStringField;
    qryEstimateItemITEM_NOTE: TWideStringField;
    qryEstimateItemSYS_ESTIMATE: TWideStringField;
    qryEstimateItemSYS_NAME: TWideStringField;
    gridEstimateItemITEM_NO: TdxDBGridColumn;
    gridEstimateItemITEM_NAME: TdxDBGridColumn;
    gridEstimateItemITEM_NOTE: TdxDBGridColumn;
    gridEstimateItemSYS_NAME: TdxDBGridPopupColumn;
    qryApplyITEM_NO: TWideStringField;
    qryApplyWORK_TYPE_NO: TWideStringField;
    qryApplyWORK_TYPE_NAME: TWideStringField;
    qryApplyAPPLIED: TIntegerField;
    gridApply: TdxDBGrid;
    gridApplyWORK_TYPE_NAME: TdxDBGridColumn;
    gridApplyAPPLIED: TdxDBGridCheckColumn;
    qryApplyCOEFF: TIBOFloatField;
    gridApplyCOEFF: TdxDBGridCalcColumn;
    pageMain: TElPageControl;
    tabTieuchi_Loaicongviec: TElTabSheet;
    tabLoaicongviec_Tieuchi: TElTabSheet;
    dsSummary: TDataSource;
    gridSummary: TdxDBGrid;
    qrySummary: TIBOQuery;
    qrySummaryWORK_TYPE_NO: TWideStringField;
    qrySummaryWORK_TYPE_NAME: TWideStringField;
    qrySummaryITEM_NO: TWideStringField;
    qrySummaryITEM_NAME: TWideStringField;
    qrySummaryCOEFF: TIBOFloatField;
    gridSummaryWORK_TYPE_NAME: TdxDBGridColumn;
    gridSummaryITEM_NO: TdxDBGridColumn;
    gridSummaryITEM_NAME: TdxDBGridColumn;
    gridSummaryCOEFF: TdxDBGridColumn;
    qrySummarySYS_NAME: TWideStringField;
    gridSummarySYS_NAME: TdxDBGridColumn;
    qryEstimateItemGROUP_NO: TWideStringField;
    qryEstimateItemGROUP_NAME: TWideStringField;
    gridEstimateItemGROUP_NAME: TdxDBGridPopupColumn;
    gridEstimateItemITEM_INDEX: TdxDBGridSpinColumn;
    qryEstimateItemITEM_INDEX: TIntegerField;
    qryEstimateItemGROUP_INDEX: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridEstimateItemSYS_NAMEInitPopup(Sender: TObject);
    procedure gridEstimateItemSYS_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryEstimateItemAfterPost(DataSet: TDataSet);
    procedure qryEstimateItemBeforePost(DataSet: TDataSet);
    procedure gridEstimateItemEnter(Sender: TObject);
    procedure tlDeptListEnter(Sender: TObject);
    procedure pageMainChange(Sender: TObject);
    procedure qryEstimateItemGROUP_NAMEChange(Sender: TField);
    procedure gridEstimateItemGROUP_NAMEInitPopup(Sender: TObject);
    procedure gridEstimateItemGROUP_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
  private
    { Private declarations }
    F_State:String;
  public
    { Public declarations }
  end;

var
  frmEstimateItem: TfrmEstimateItem;

implementation

uses MainDM, SSP_Library, PopupMainForm;

{$R *.dfm}

procedure TfrmEstimateItem.FormCreate(Sender: TObject);
begin
  inherited;
  qryEstimateItem.Open;
  qryApply.Open;
  pageMain.ActivePage:=tabTieuchi_Loaicongviec;
end;

procedure TfrmEstimateItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qrySummary.Close;
  qryApply.Close;
  qryEstimateItem.Close;
end;

procedure TfrmEstimateItem.gridEstimateItemSYS_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryEstimateSystem.Open;
  InitPopupControl('dxlcEstimateSys',frmPopupMain,sender,2,gridEstimateItem);
end;

procedure TfrmEstimateItem.gridEstimateItemSYS_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupMain.qryEstimateSystem,
                qryEstimateItem,
               'SYS_NO;SYS_NAME','SYS_ESTIMATE;SYS_NAME',
               'SYS_NAME',Text);
    frmPopupMain.qryEstimateSystem.Close;
end;

procedure TfrmEstimateItem.qryEstimateItemAfterPost(DataSet: TDataSet);
begin
  inherited;
  if F_State='INSERT' then
  begin
    qryApply.Refresh;
  end;
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TfrmEstimateItem.qryEstimateItemBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (qryEstimateItem.State in [dsInsert]) then
    F_State:='INSERT'
  else
    F_STATE:='EDIT';
  dmMain.DefOnBeforePost(DataSet);
end;

procedure TfrmEstimateItem.gridEstimateItemEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsEstimateItem)
end;

procedure TfrmEstimateItem.tlDeptListEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsApply);
end;

procedure TfrmEstimateItem.pageMainChange(Sender: TObject);
begin
  inherited;
  if pageMain.ActivePage=tabTieuchi_Loaicongviec then
    frameToolbar1.SetDataSource(dsEstimateItem)
  else
  begin
    if qrySummary.Active then
      qrySummary.Refresh
    else
      qrySummary.Open;  
    frameToolbar1.SetDataSource(dsSummary);
    gridSummary.FullExpand;
  end
end;

procedure TfrmEstimateItem.qryEstimateItemGROUP_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet, Sender.FieldName, 'GROUP_NO');
end;

procedure TfrmEstimateItem.gridEstimateItemGROUP_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryEstimateGroup.Open;
  InitPopupControl('dxlcEstimateGroup',frmPopupMain,sender,2,gridEstimateItem);
end;

procedure TfrmEstimateItem.gridEstimateItemGROUP_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryEstimateGroup,qryEstimateItem,
      'GROUP_NO;GROUP_NAME;GROUP_INDEX','GROUP_NO;GROUP_NAME;GROUP_INDEX','GROUP_NAME',Text);
  frmPopupMain.qryEstimateGroup.Close;    
end;

end.
