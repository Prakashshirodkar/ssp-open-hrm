unit EstimateManagerForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxExEdtr, dxEdLib, dxCntner, dxEditor,
  ElPanel, ElSplit, dxorgchr, dxdborgc, ExtCtrls, dxTL, dxDBCtrl, dxDBTL,
  ActnList, ElBtnCtl, ElPopBtn, ToolbarFrame, ImgList, DB, IBODataset,
  ElPgCtl, StdCtrls, ElCLabel, ElLabel, jzExtCtrls, jzGrids, jzPlannerCtrl,
  jzClasses, jzContacts, jzContactGrid, dxDBGrid, dxDBELib, DBActns,
  dxmdaset, dxDBTLCl, dxGrClEx, dxGrClms;

type
  TfrmEstimateManager = class(TfrmBase)
    ActionList1: TActionList;
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    pageLeft: TElPageControl;
    tabStage: TElTabSheet;
    ImageList1: TImageList;
    ElSplitter1: TElSplitter;
    gridEstimateStage: TdxDBGrid;
    dsEstimateStage: TDataSource;
    qryEstimateStage: TIBOQuery;
    gridEstimateStageSTAGE_NO: TdxDBGridColumn;
    gridEstimateStageSTAGE_NAME: TdxDBGridColumn;
    panelMain: TElPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    groupNgay: TdxLayoutGroup;
    groupThangNam: TdxLayoutGroup;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBEdit4: TdxDBEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    ActionList2: TActionList;
    acEstimateStageInsert: TDataSetInsert;
    acEstimateStageDelete: TDataSetDelete;
    qryEstimateStageSTAGE_NO: TWideStringField;
    qryEstimateStageSTAGE_NAME: TWideStringField;
    qryEstimateStageSTAGE_TYPE: TSmallintField;
    qryEstimateStageFROM_DATE: TDateField;
    qryEstimateStageTO_DATE: TDateField;
    qryEstimateStageFROM_MONTH: TIntegerField;
    qryEstimateStageFROM_YEAR: TIntegerField;
    qryEstimateStageTO_MONTH: TIntegerField;
    qryEstimateStageTO_YEAR: TIntegerField;
    dxDBDateEdit1: TdxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxDBDateEdit2: TdxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item13: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    acView: TAction;
    ElSplitter2: TElSplitter;
    tlDeptList: TdxDBTreeList;
    tlDeptListDEPT_NAME: TdxDBTreeListColumn;
    qryDeptList: TIBOQuery;
    dsDeptList: TDataSource;
    dxlcWorkType: TdxLayoutControl;
    gridWorkType: TdxDBGrid;
    ElPopupButton3: TElPopupButton;
    ElPopupButton4: TElPopupButton;
    ElPopupButton6: TElPopupButton;
    dxlcWorkTypeayoutGroup1: TdxLayoutGroup;
    dxlcWorkTypeayoutItem1: TdxLayoutItem;
    dxlcWorkTypeayoutGroup2: TdxLayoutGroup;
    dxlcWorkTypeItem2: TdxLayoutItem;
    dxlcWorkTypeItem3: TdxLayoutItem;
    dxlcWorkTypeItem4: TdxLayoutItem;
    qryWorkType: TIBOQuery;
    dsWorkType: TDataSource;
    qryDeptListDEPT_NO: TWideStringField;
    qryDeptListDEPT_NAME: TWideStringField;
    qryDeptListP_DEPT_NO: TWideStringField;
    qryWorkTypeWORK_TYPE_NO: TWideStringField;
    qryWorkTypeWORK_TYPE_NAME: TWideStringField;
    gridWorkTypeWORK_TYPE_NO: TdxDBGridColumn;
    gridWorkTypeWORK_TYPE_NAME: TdxDBGridColumn;
    dxppWorkType: TdxPopupEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    gridEstimate: TdxDBGrid;
    dxLayoutControl1Item10: TdxLayoutItem;
    memEstimate: TdxMemData;
    dsEstimate: TDataSource;
    dxLayoutControl1Item11: TdxLayoutItem;
    ElPopupButton7: TElPopupButton;
    acUpdate: TAction;
    qryEstimateDetail: TIBOQuery;
    qryEstimateItem: TIBOQuery;
    qryEstimateItemITEM_NO: TWideStringField;
    qryEstimateItemITEM_NAME: TWideStringField;
    memEstimateEMPLOYEE_NO: TWideStringField;
    memEstimateFULL_NAME: TWideStringField;
    memEstimatePOSITION_NO: TWideStringField;
    memEstimateDEPT_NAME: TWideStringField;
    memEstimateTITLE_NAME: TWideStringField;
    gridEstimateEMPLOYEE_NO: TdxDBGridColumn;
    gridEstimateFULL_NAME: TdxDBGridColumn;
    gridEstimateDEPT_NAME: TdxDBGridColumn;
    gridEstimateTITLE_NAME: TdxDBGridColumn;
    imEmpOption: TdxImageEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxlcEstimateLevel: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    ElPopupButton8: TElPopupButton;
    ElPopupButton9: TElPopupButton;
    ElPopupButton10: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    qryEstimateLevel: TIBOQuery;
    dsEstimateLevel: TDataSource;
    qryEstimateLevelLEVEL_NO: TWideStringField;
    qryEstimateLevelLEVEL_NAME: TWideStringField;
    dxDBGrid1LEVEL_NO: TdxDBGridColumn;
    dxDBGrid1LEVEL_NAME: TdxDBGridColumn;
    qryEstimateDetailSTAGE_NO: TWideStringField;
    qryEstimateDetailEMPLOYEE_NO: TWideStringField;
    qryEstimateDetailFULL_NAME: TWideStringField;
    qryEstimateDetailDEPT_NAME: TWideStringField;
    qryEstimateDetailTITLE_NAME: TWideStringField;
    qryEstimateDetailPOSITION_NO: TWideStringField;
    qryEstimateDetailASSIGNED_DATE: TDateField;
    qryEstimateDetailITEM_NO: TWideStringField;
    qryEstimateDetailESTIMATE_LEVEL: TWideStringField;
    qryEstimateDetailESTIMATE_SYS: TWideStringField;
    qryEstimateDetailLEVEL_NAME: TWideStringField;
    qryExecute: TIBOQuery;
    memEstimateASSIGNED_DATE: TDateField;
    tabSumStage: TElTabSheet;
    gridEstimateSum: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    ElSplitter3: TElSplitter;
    tlDeptList_1: TdxDBTreeList;
    dxDBTreeListColumn1: TdxDBTreeListColumn;
    pageMain: TElPageControl;
    tabDetail: TElTabSheet;
    tabSummary: TElTabSheet;
    dxLayoutControl2: TdxLayoutControl;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    ElPopupButton11: TElPopupButton;
    ElPopupButton12: TElPopupButton;
    dxDBDateEdit3: TdxDBDateEdit;
    dxDBDateEdit4: TdxDBDateEdit;
    ElPopupButton13: TElPopupButton;
    dxppWorkType_Summary: TdxPopupEdit;
    gridSummary: TdxDBGrid;
    gridSummaryEMPLOYEE_NO: TdxDBGridColumn;
    gridSummaryFULL_NAME: TdxDBGridColumn;
    gridSummaryDEPT_NAME: TdxDBGridColumn;
    gridSummaryTITLE_NAME: TdxDBGridColumn;
    ElPopupButton14: TElPopupButton;
    imEmpOption_Summary: TdxImageEdit;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    groupTKNgay: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    groupTKThangNam: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutControl2Item1: TdxLayoutItem;
    ElPopupButton15: TElPopupButton;
    memSummary: TdxMemData;
    memSummaryEMPLOYEE_NO: TWideStringField;
    memSummaryFULL_NAME: TWideStringField;
    memSummaryPOSITION_NO: TWideStringField;
    memSummaryDEPT_NAME: TWideStringField;
    memSummaryTITLE_NAME: TWideStringField;
    memSummaryASSIGNED_DATE: TDateField;
    dsSummary: TDataSource;
    qryEstimateSumLevel: TIBOQuery;
    dsEstimateSumLevel: TDataSource;
    qryEstimateSumLevelLEVEL_NO: TWideStringField;
    qryEstimateSumLevelLEVEL_NAME: TWideStringField;
    dxlcEstimateSumLevel: TdxLayoutControl;
    dxDBGrid2: TdxDBGrid;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    ElPopupButton16: TElPopupButton;
    ElPopupButton17: TElPopupButton;
    ElPopupButton18: TElPopupButton;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    qryEstimateSummary: TIBOQuery;
    qryEstimateSummarySTAGE_NO: TWideStringField;
    qryEstimateSummaryEMPLOYEE_NO: TWideStringField;
    qryEstimateSummaryFULL_NAME: TWideStringField;
    qryEstimateSummaryDEPT_NAME: TWideStringField;
    qryEstimateSummaryTITLE_NAME: TWideStringField;
    qryEstimateSummaryPOSITION_NO: TWideStringField;
    qryEstimateSummaryASSIGNED_DATE: TDateField;
    qryEstimateSummaryITEM_NO: TWideStringField;
    qryEstimateSummaryESTIMATE_LEVEL: TWideStringField;
    qryEstimateSummaryESTIMATE_SYS: TWideStringField;
    qryEstimateSummaryLEVEL_NAME: TWideStringField;
    qryEstimateSumStage: TIBOQuery;
    dsEstimateSumStage: TDataSource;
    qryEstimateSumStageSTAGE_NO: TWideStringField;
    qryEstimateSumStageSTAGE_NAME: TWideStringField;
    qryEstimateSumStageSTAGE_TYPE: TSmallintField;
    qryEstimateSumStageFROM_DATE: TDateField;
    qryEstimateSumStageTO_DATE: TDateField;
    qryEstimateSumStageFROM_MONTH: TIntegerField;
    qryEstimateSumStageFROM_YEAR: TIntegerField;
    qryEstimateSumStageTO_MONTH: TIntegerField;
    qryEstimateSumStageTO_YEAR: TIntegerField;
    acEstimateSumInsert: TDataSetInsert;
    acEstimateSumDelete: TDataSetDelete;
    acView_Summary: TAction;
    acUpdateSummary: TAction;
    acUpdateStage: TAction;
    acUpdateSumStage: TAction;
    acInitSummary: TAction;
    qryEstimateSumStageESTIMATE_METHOD: TWideStringField;
    dxDirect: TdxCheckEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    qryEstimateDetailESTIMATE_MARK: TIBOFloatField;
    qryEstimateLevelLEVEL_MARK: TIBOFloatField;
    qryEstimateLevelLEVEL_TO_MARK: TIBOFloatField;
    dxDirectSum: TdxCheckEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    qryEstimateSummaryESTIMATE_MARK: TIBOFloatField;
    qryEstimateSumLevelFROM_MARK: TIBOFloatField;
    qryEstimateSumLevelTO_MARK: TIBOFloatField;
    dxMoreOption: TdxCheckEdit;
    dx: TdxLayoutItem;
    dxViewChild: TdxCheckEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxgroupViewMore: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxViewAll: TdxCheckEdit;
    dx1: TdxLayoutItem;
    dxgroupSumViewMore: TdxLayoutGroup;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxSumMoreOption: TdxCheckEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxSumViewChild: TdxCheckEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxSumViewAll: TdxCheckEdit;
    dxLayoutControl2Item5: TdxLayoutItem;
    memSummaryTOTAL_MARK: TFloatField;
    gridSummaryTOTAL_MARK: TdxDBGridColumn;
    memSummaryTOTAL_MARK_OLD: TFloatField;
    qryEstimateSummaryTOTAL_MARK: TIBOFloatField;
    memEstimateTOTAL_MARK: TFloatField;
    memEstimateAVERAGE_MARK: TFloatField;
    gridEstimateTOTAL_MARK: TdxDBGridColumn;
    gridEstimateAVERAGE_MARK: TdxDBGridColumn;
    qryEstimateDetailTOTAL_MARK: TIBOFloatField;
    qryEstimateDetailAVERAGE_MARK: TIBOFloatField;
    memEstimateTOTAL_MARK_OLD: TFloatField;
    memEstimateAVERAGE_MARK_OLD: TFloatField;
    memSummaryAVERAGE_MARK: TFloatField;
    memSummaryAVERAGE_MARK_OLD: TFloatField;
    gridSummaryAVERAGE_MARK: TdxDBGridColumn;
    qryEstimateSummaryAVERAGE_MARK: TIBOFloatField;
    qryEstimateItemGROUP_NO: TWideStringField;
    qryEstimateItemGROUP_NAME: TWideStringField;
    qryEstimateItemGROUP_INDEX: TIntegerField;
    qryEstimateItemITEM_INDEX: TIntegerField;
    panelDeptList: TPanel;
    chkViewInvalidDept: TdxCheckEdit;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl3Item1: TdxLayoutItem;
    dxLayoutControl3Item2: TdxLayoutItem;
    qryDeptListENDED_DATE: TDateField;
    tlDeptListENDED_DATE: TdxDBTreeListDateColumn;
    Panel1: TPanel;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutControl4Item1: TdxLayoutItem;
    tlDeptList_1ENDED_DATE: TdxDBTreeListDateColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acEstimateStageInsertExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryEstimateStageSTAGE_TYPEChange(Sender: TField);
    procedure acUpdateStageExecute(Sender: TObject);
    procedure qryEstimateStageNewRecord(DataSet: TDataSet);
    procedure gridWorkTypeDblClick(Sender: TObject);
    procedure dxppWorkTypeCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxppWorkTypeChange(Sender: TObject);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure acViewExecute(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure ElPopupButton8Click(Sender: TObject);
    procedure acUpdateUpdate(Sender: TObject);
    procedure DefOnDataChange(Sender: TField);
    procedure DefOnDataTextChange(Sender: TField);
    procedure DefOnDataFloatChange(Sender: TField);
    procedure DefOnDataSummaryFloatChange(Sender: TField);

    procedure DefOnDataSummaryChange(Sender: TField);
    procedure DefOnDataSummaryTextChange(Sender: TField);

    procedure qryDeptListAfterScroll(DataSet: TDataSet);
    procedure acUpdateExecute(Sender: TObject);
    procedure pageLeftChange(Sender: TObject);
    procedure ElPopupButton16Click(Sender: TObject);
    procedure acEstimateSumInsertExecute(Sender: TObject);
    procedure acView_SummaryExecute(Sender: TObject);
    procedure qryEstimateSumStageSTAGE_TYPEChange(Sender: TField);
    procedure acUpdateSummaryUpdate(Sender: TObject);
    procedure acUpdateSummaryExecute(Sender: TObject);
    procedure acUpdateSumStageExecute(Sender: TObject);
    procedure qryEstimateSumStageNewRecord(DataSet: TDataSet);
    procedure dxppWorkType_SummaryInitPopup(Sender: TObject);
    procedure dxppWorkType_SummaryCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxppWorkType_SummaryChange(Sender: TObject);
    procedure gridEstimateStageChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure gridEstimateSumChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure acInitSummaryExecute(Sender: TObject);
    procedure dxppWorkTypeInitPopup(Sender: TObject);
    procedure qryEstimateSumStageAfterPost(DataSet: TDataSet);
    procedure qryEstimateStageAfterPost(DataSet: TDataSet);
    procedure dxDirectChange(Sender: TObject);
    procedure dxDirectSumChange(Sender: TObject);
    procedure acViewUpdate(Sender: TObject);
    procedure acView_SummaryUpdate(Sender: TObject);
    procedure dxMoreOptionChange(Sender: TObject);
    procedure dxViewAllChange(Sender: TObject);
    procedure dxSumViewAllChange(Sender: TObject);
    procedure dxSumMoreOptionChange(Sender: TObject);
    procedure tlDeptListCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure chkViewInvalidDeptChange(Sender: TObject);
    procedure tlDeptList_1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
    F_DETAIL_WORK_TYPE: WideString;
    F_SUM_WORK_TYPE: WideString;
    F_DETAIL_SOMETHING_CHANGE,
      F_DETAIL_DATA_CHANGE,
      F_SUM_SOMETHING_CHANGE,
      F_SUM_DATA_CHANGE: boolean;

    F_DETAIL_FIELD_COUNT,
      F_DETAIL_COLUMN_COUNT,
      F_SUM_FIELD_COUNT,
      F_SUM_COLUMN_COUNT: integer;

    procedure SetWorkType(Value: WideString);
    procedure SetWorkType_Summary(Value: WideString);
    procedure CreateGridData;
    procedure CreateGridData_Summary;
    procedure DefOnInitPopup(Sender: TObject);
    procedure DefOnCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure DefOnInitPopup_Summary(Sender: TObject);
    procedure DefOnCloseUp_Summary(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure LoadData;
    procedure LoadData_Summary;
    procedure Update_Group;
    procedure Update_Group_Summary;
  public
    { Public declarations }
    E_STATE, S_STATE: string;
    ACTION_STATE: string;
    property WORK_TYPE_NO: WideString read F_DETAIL_WORK_TYPE write SetWorkType;
    property SUM_WORK_TYPE_NO: WideString read F_SUM_WORK_TYPE write
      SetWorkType_Summary;
  end;

var
  frmEstimateManager: TfrmEstimateManager;

implementation

uses MainDM, EstimateItemForm, EstimateStageDetail, DateUtils, SSP_Library,
  WorkTypeForm, MainUnit, EstimateSysLevelForm, Math, EstimateStageSummary;

{$R *.dfm}

procedure TfrmEstimateManager.Update_Group;
begin
  groupNgay.Visible := (qryEstimateStageSTAGE_TYPE.Value = 0);
  groupThangNam.Visible := (qryEstimateStageSTAGE_TYPE.Value = 1);
  acView.Execute;
end;

procedure TfrmEstimateManager.Update_Group_Summary;
begin
  groupTKNgay.Visible := (qryEstimateSumStageSTAGE_TYPE.Value = 0);
  groupTKThangNam.Visible := (qryEstimateSumStageSTAGE_TYPE.Value = 1);
  acView_Summary.Execute;
end;

procedure TfrmEstimateManager.CreateGridData;
var
  f: TField;
  i,col_index,band_index: integer;
  newCol: TdxDBTreeListColumn;
  newBand: TdxTreeListBand;
  newBand_name:string;
begin
  Screen.Cursor := crSQLWait;
  //clear
  memEstimate.DisableControls;
  if memEstimate.Active then
    memEstimate.Close;
  if memEstimate.FieldCount > F_DETAIL_FIELD_COUNT then
  begin
    for i := memEstimate.FieldCount - 1 downto F_DETAIL_FIELD_COUNT do
    begin
      memEstimate.Fields[i].Free;
    end;
  end;

  if gridEstimate.ColumnCount > F_DETAIL_COLUMN_COUNT then
  begin
    for i := gridEstimate.ColumnCount - 1 downto 0 do//F_DETAIL_COLUMN_COUNT do
    begin
      if gridEstimate.Columns[i].BandIndex>0 then
        gridEstimate.Columns[i].Free;
    end;
  end;
  if gridEstimate.Bands.Count>1 then
  begin
    for i := gridEstimate.Bands.Count - 1 downto 1 do
    begin
      gridEstimate.Bands[i].Free;
    end;
  end;
  // end clear
  if qryEstimateItem.Active then
    qryEstimateItem.Close;
  if dxViewAll.Checked then
  begin
    qryEstimateItem.SQLWhere.Clear;
    qryEstimateItem.Prepare;
  end
  else
  begin
    qryEstimateItem.SQLWhere.Text :=
      'where WORK_TYPE_NO=:WORK_TYPE_NO and APPLIED=1';
    qryEstimateItem.Prepare;
    qryEstimateItem.ParamByName('WORK_TYPE_NO').Value := WORK_TYPE_NO;
  end;

  qryEstimateItem.Open;
  if qryEstimateItem.RecordCount > 0 then
  begin
    frmMain.SetStatusBarPrgDisplay(0, qryEstimateItem.RecordCount);
    qryEstimateItem.First;
    col_index:=1;
    band_index:=1;
    while not qryEstimateItem.Eof do
    begin
      //create BAND
      if (not Assigned(newBand))or
         (newBand_name<>qryEstimateItemGROUP_NO.AsString) then
      begin
        newBand:=gridEstimate.Bands.Add;
        newBand_name:=qryEstimateItemGROUP_NO.AsString;
        newBand.Visible:=true;
        newBand.Index:=band_index;
        Inc(band_index);
        newBand.Caption:=qryEstimateItemGROUP_NAME.Value;
        col_index:=1;
      end;

      // SELECT VIEW
      f := TWideStringField.Create(memEstimate);
      f.FieldName := qryEstimateItemITEM_NO.AsString;
      f.FieldKind := fkData;
      f.DataSet := memEstimate;
      f.SetFieldType(ftWideString);
      f.OnChange := DefOnDataTextChange;
      f.Size := 127;

      newCol := gridEstimate.CreateColumn(TdxDBGridPopupColumn);
      newCol.Name := 'gridEstimate' + f.FieldName;
      newCol.FieldName := f.FieldName;
      newCol.Width := 120;
      newCol.HeaderAlignment := taCenter;
      newCol.BandIndex := newBand.Index;
      newCol.Index:=col_index;
      Inc(col_index);
      newCol.DisableCustomizing := true;
      newCol.Caption := qryEstimateItemITEM_NAME.Value;
      (newCol as TdxDBGridPopupColumn).OnInitPopup := DefOnInitPopup;
      (newCol as TdxDBGridPopupColumn).OnCloseUp := DefOnCloseUp;
      newCol.Visible := not dxDirect.Checked;
      newCol.Tag := -1;

      f := TWideStringField.Create(memEstimate);
      f.FieldName := qryEstimateItemITEM_NO.AsString + '_CODE';
      f.FieldKind := fkData;
      f.DataSet := memEstimate;
      f.SetFieldType(ftWideString);
      f.OnChange := DefOnDataChange;
      f.Size := 30;

      f := TWideStringField.Create(memEstimate);
      f.FieldName := qryEstimateItemITEM_NO.AsString + '_OLD';
      f.FieldKind := fkData;
      f.DataSet := memEstimate;
      f.SetFieldType(ftWideString);
      f.Size := 30;

      // DIRECT_VIEW

      f := TFloatField.Create(memEstimate);
      f.FieldName := qryEstimateItemITEM_NO.AsString + '_FLOAT';
      f.FieldKind := fkData;
      f.DataSet := memEstimate;
      f.SetFieldType(ftFloat);
      f.OnChange := DefOnDataFloatChange;

      newCol := gridEstimate.CreateColumn(TdxDBGridCalcColumn);
      newCol.Name := 'gridEstimate' + f.FieldName + '_FLOAT';
      newCol.FieldName := f.FieldName;
      newCol.Width := 100;
      newCol.HeaderAlignment := taCenter;
      newCol.BandIndex := newBand.Index;
      newCol.Index:=col_index;
      Inc(col_index);
      newCol.DisableCustomizing := true;
      newCol.Caption := qryEstimateItemITEM_NAME.Value;
      newCol.Visible := dxDirect.Checked;
      newCol.Tag := -2;

      f := TFloatField.Create(memEstimate);
      f.FieldName := qryEstimateItemITEM_NO.AsString + '_OLD_FLOAT';
      f.FieldKind := fkData;
      f.DataSet := memEstimate;
      f.SetFieldType(ftFloat);

      frmMain.BarPrgStepIt;
      qryEstimateItem.Next;
    end;
  end;
  memEstimate.EnableControls;

  if dxViewAll.Checked then
    gridEstimate.OptionsBehavior := gridEstimate.OptionsBehavior - [edgoEditing]
  else
    gridEstimate.OptionsBehavior := gridEstimate.OptionsBehavior +
      [edgoEditing];

  F_DETAIL_SOMETHING_CHANGE := false;
  Screen.Cursor := crDefault;
end;

procedure TfrmEstimateManager.LoadData;
var
  EMPLOYEE_NO: WideString;
begin
  Screen.Cursor := crSQLWait;
  ACTION_STATE := 'Data loading';
  memEstimate.DisableControls;
  if memEstimate.Active then
    memEstimate.Close;
  if qryEstimateDetail.Active then
    qryEstimateDetail.Close;
  if dxViewAll.Checked then
  begin
    qryEstimateDetail.SQLWhere.Text :=
      'where ((hr_get_emp_list.is_dismissed=:is_dismissed)or(:is_dismissed=2))';
    qryEstimateDetail.Prepare;
  end
  else
  begin
    qryEstimateDetail.SQLWhere.Text :=
      ' where ((hr_get_emp_list.is_dismissed=:is_dismissed)or(:is_dismissed=2)) ' +
      ' and hr_position.work_type_no=:work_type_no';
    qryEstimateDetail.Prepare;
    qryEstimateDetail.ParamByName('WORK_TYPE_NO').Value := WORK_TYPE_NO;
  end;
  if dxViewChild.Checked then
    qryEstimateDetail.ParamByName('VIEW_CHILD').Value := 1
  else
    qryEstimateDetail.ParamByName('VIEW_CHILD').Value := 0;

  qryEstimateDetail.ParamByName('DEPT_NO').Value := qryDeptListDEPT_NO.Value;
  qryEstimateDetail.ParamByName('IS_DISMISSED').Value := imEmpOption.Text;
  qryEstimateDetail.ParamByName('STAGE_NO').Value :=
    qryEstimateStageSTAGE_NO.Value;

  qryEstimateDetail.Open;
  if qryEstimateDetail.RecordCount > 0 then
  begin
    frmMain.SetStatusBarPrgDisplay(0, qryEstimateDetail.RecordCount);
    qryEstimateDetail.First;
    EMPLOYEE_NO := qryEstimateDetailEMPLOYEE_NO.Value;
    memEstimate.Open;

    memEstimate.Insert;
    memEstimateEMPLOYEE_NO.Value := qryEstimateDetailEMPLOYEE_NO.Value;
    memEstimateFULL_NAME.Value := qryEstimateDetailFULL_NAME.Value;
    memEstimateDEPT_NAME.Value := qryEstimateDetailDEPT_NAME.Value;
    memEstimateTITLE_NAME.Value := qryEstimateDetailTITLE_NAME.Value;
    memEstimatePOSITION_NO.Value := qryEstimateDetailPOSITION_NO.Value;
    memEstimateASSIGNED_DATE.Value := qryEstimateDetailASSIGNED_DATE.Value;
    if qryEstimateDetailTOTAL_MARK.IsNull then
    begin
      memEstimateTOTAL_MARK.Clear;
      memEstimateTOTAL_MARK_OLD.Clear;
    end
    else
    begin
      memEstimateTOTAL_MARK.Value := qryEstimateDetailTOTAL_MARK.Value;
      memEstimateTOTAL_MARK_OLD.Value := qryEstimateDetailTOTAL_MARK.Value;
    end;

    if qryEstimateDetailAVERAGE_MARK.IsNull then
    begin
      memEstimateAVERAGE_MARK.Clear;
      memEstimateAVERAGE_MARK_OLD.Clear;
    end
    else
    begin
      memEstimateAVERAGE_MARK.Value := qryEstimateDetailAVERAGE_MARK.Value;
      memEstimateAVERAGE_MARK_OLD.Value := qryEstimateDetailAVERAGE_MARK.Value;
    end;

    repeat
      if (EMPLOYEE_NO <> qryEstimateDetailEMPLOYEE_NO.Value) or
        (qryEstimateDetail.Eof) then
      begin
        if (memEstimate.State in [dsEdit, dsInsert]) then
          memEstimate.Post;
        if qryEstimateDetail.Eof then
          Break
        else
          EMPLOYEE_NO := qryEstimateDetailEMPLOYEE_NO.Value;

        memEstimate.Insert;
        memEstimateEMPLOYEE_NO.Value :=
          qryEstimateDetailEMPLOYEE_NO.Value;
        memEstimateFULL_NAME.Value := qryEstimateDetailFULL_NAME.Value;
        memEstimateDEPT_NAME.Value := qryEstimateDetailDEPT_NAME.Value;
        memEstimateTITLE_NAME.Value := qryEstimateDetailTITLE_NAME.Value;
        memEstimatePOSITION_NO.Value := qryEstimateDetailPOSITION_NO.Value;
        memEstimateASSIGNED_DATE.Value := qryEstimateDetailASSIGNED_DATE.Value;
        if qryEstimateDetailTOTAL_MARK.IsNull then
        begin
          memEstimateTOTAL_MARK.Clear;
          memEstimateTOTAL_MARK_OLD.Clear;
        end
        else
        begin
          memEstimateTOTAL_MARK.Value := qryEstimateDetailTOTAL_MARK.Value;
          memEstimateTOTAL_MARK_OLD.Value := qryEstimateDetailTOTAL_MARK.Value;
        end;

        if qryEstimateDetailAVERAGE_MARK.IsNull then
        begin
          memEstimateAVERAGE_MARK.Clear;
          memEstimateAVERAGE_MARK_OLD.Clear;
        end
        else
        begin
          memEstimateAVERAGE_MARK.Value := qryEstimateDetailAVERAGE_MARK.Value;
          memEstimateAVERAGE_MARK_OLD.Value :=
            qryEstimateDetailAVERAGE_MARK.Value;
        end;

      end;
      if not qryEstimateDetailITEM_NO.IsNull then
      begin
        if
          Assigned(memEstimate.FindField(qryEstimateDetailITEM_NO.AsString))
            then
        begin
          // load muc
          memEstimate.FieldByName(qryEstimateDetailITEM_NO.AsString).Value
            := qryEstimateDetailLEVEL_NAME.Value;
          memEstimate.FieldByName(qryEstimateDetailITEM_NO.AsString +
            '_CODE').Value :=
            qryEstimateDetailESTIMATE_LEVEL.Value;
          memEstimate.FieldByName(qryEstimateDetailITEM_NO.AsString +
            '_OLD').Value :=
            qryEstimateDetailESTIMATE_LEVEL.Value;
          // load diem
          memEstimate.FieldByName(qryEstimateDetailITEM_NO.AsString +
            '_FLOAT').Value
            := qryEstimateDetailESTIMATE_MARK.Value;
          memEstimate.FieldByName(qryEstimateDetailITEM_NO.AsString +
            '_OLD_FLOAT').Value :=
            qryEstimateDetailESTIMATE_MARK.Value;
        end;
      end;
      frmMain.BarPrgStepIt;
      qryEstimateDetail.Next;
    until (EMPLOYEE_NO = '') and (not (memEstimate.State in [dsInsert]));
    qryEstimateDetail.Close;
  end;
  memEstimate.EnableControls;
  F_DETAIL_DATA_CHANGE := false;
  ACTION_STATE := '';
  Screen.Cursor := crDefault;
end;

procedure TfrmEstimateManager.DefOnInitPopup(Sender: TObject);
begin
  inherited;
  if qryEstimateLevel.Active then
    qryEstimateLevel.Close;
  qryEstimateLevel.ParamByName('ITEM_NO').Value :=
    (sender as TdxDBGridPopupColumn).FieldName;
  qryEstimateLevel.Open;
  InitPopupControl('dxlcEstimateLevel', self, sender, 2, gridEstimate);
end;

procedure TfrmEstimateManager.DefOnCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
var
  fieldName: string;
begin
  inherited;
  fieldName := (sender as TdxDBGridPopupColumn).FieldName;
  OnPopupCloseUp(Accept, qryEstimateLevel, memEstimate,
    'LEVEL_NO;LEVEL_NAME', fieldName + '_CODE;' + fieldName,
    'LEVEL_NAME', Text);
  qryEstimateLevel.Close;
end;

procedure TfrmEstimateManager.SetWorkType(Value: WideString);
begin
  if Value <> F_DETAIL_WORK_TYPE then
  begin
    F_DETAIL_WORK_TYPE := Value;
    F_DETAIL_SOMETHING_CHANGE := true;
  end
  else
    F_DETAIL_SOMETHING_CHANGE := false;
end;

procedure TfrmEstimateManager.SetWorkType_Summary(Value: WideString);
begin
  if Value <> F_SUM_WORK_TYPE then
  begin
    F_SUM_WORK_TYPE := Value;
    F_SUM_SOMETHING_CHANGE := true;
  end
  else
    F_SUM_SOMETHING_CHANGE := false;
end;

procedure TfrmEstimateManager.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryEstimateStage.Close;
  qryEstimateSumStage.Close;
  qryDeptList.Close;
  qryWorkType.Close;
  Action := caFree;
  frmEstimateManager := nil;
end;

procedure TfrmEstimateManager.acEstimateStageInsertExecute(
  Sender: TObject);
begin
  inherited;
  frmEstimageStageDetail := TfrmEstimageStageDetail.Create(self);
  with frmEstimageStageDetail do
  try
    if not (qryEstimateStage.State in [dsInsert, dsEdit]) then
      qryEstimateStage.Append;
    ShowModal;
  finally
    Free;
  end;
  frmEstimageStageDetail := nil;
end;

procedure TfrmEstimateManager.FormCreate(Sender: TObject);
begin
  imEmpOption.Descriptions.Add(Utf8Decode('Đang làm việc'));
  imEmpOption.Descriptions.Add(Utf8Decode('Đã thôiviệc'));
  imEmpOption.Descriptions.Add(Utf8Decode('Tất cả'));

  imEmpOption.Values.Add('0');
  imEmpOption.Values.Add('1');
  imEmpOption.Values.Add('2');

  imEmpOption.Text := '0';
  F_DETAIL_FIELD_COUNT := memEstimate.FieldCount;
  F_DETAIL_COLUMN_COUNT := gridEstimate.ColumnCount;

  imEmpOption_Summary.Descriptions.Add(Utf8Decode('Đang làm việc'));
  imEmpOption_Summary.Descriptions.Add(Utf8Decode('Đã thôi việc'));
  imEmpOption_Summary.Descriptions.Add(Utf8Decode('Tất cả'));

  imEmpOption_Summary.Values.Add('0');
  imEmpOption_Summary.Values.Add('1');
  imEmpOption_Summary.Values.Add('2');

  imEmpOption_Summary.Text := '0';
  F_SUM_FIELD_COUNT := memSummary.FieldCount;
  F_SUM_COLUMN_COUNT := gridSummary.ColumnCount;

  pageMain.ShowTabs := false;
  pageLeft.ActivePage := tabStage;
  inherited;
  qryDeptList.Open;
  CustomExpand(tlDeptList);
  CustomExpand(tlDeptList_1);
  qryEstimateStage.Open;
  Update_Group;
  qryEstimateSumStage.Open;
  Update_Group_Summary;
  qryWorkType.Open;
  if qryWorkType.RecordCount > 0 then
  begin
    WORK_TYPE_NO := qryWorkTypeWORK_TYPE_NO.Value;
    dxppWorkType.Text := qryWorkTypeWORK_TYPE_NAME.Value;
    SUM_WORK_TYPE_NO := qryWorkTypeWORK_TYPE_NO.Value;
    dxppWorkType_Summary.Text := qryWorkTypeWORK_TYPE_NAME.Value;
  end;
  F_DETAIL_SOMETHING_CHANGE := true;
  F_SUM_SOMETHING_CHANGE := true;
  acView.Execute;
  acView_Summary.Execute;
end;

procedure TfrmEstimateManager.qryEstimateStageSTAGE_TYPEChange(
  Sender: TField);
begin
  inherited;
  if qryEstimateStageSTAGE_TYPE.Value = 0 then
  begin
    qryEstimateStageFROM_DATE.Required := true;
    qryEstimateStageTO_DATE.Required := true;
    qryEstimateStageFROM_MONTH.Required := false;
    qryEstimateStageFROM_YEAR.Required := false;
    qryEstimateStageTO_MONTH.Required := false;
    qryEstimateStageTO_YEAR.Required := false;
  end
  else
    if qryEstimateStageSTAGE_TYPE.Value = 1 then
  begin
    qryEstimateStageFROM_DATE.Required := false;
    qryEstimateStageTO_DATE.Required := false;
    qryEstimateStageFROM_MONTH.Required := true;
    qryEstimateStageFROM_YEAR.Required := true;
    qryEstimateStageTO_MONTH.Required := true;
    qryEstimateStageTO_YEAR.Required := true;
  end;
end;

procedure TfrmEstimateManager.acUpdateStageExecute(Sender: TObject);
begin
  inherited;
  frmEstimageStageDetail := TfrmEstimageStageDetail.Create(self);
  with frmEstimageStageDetail do
  try
    TypeChange;
    ShowModal;
  finally
    Free;
  end;
  frmEstimageStageDetail := nil;
end;

procedure TfrmEstimateManager.qryEstimateStageNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryEstimateStageFROM_MONTH.Value := MonthOf(Now);
  qryEstimateStageFROM_YEAR.Value := YearOf(Now);
  qryEstimateStageFROM_DATE.Value := StartOfTheMonth(Now);
  qryEstimateStageTO_DATE.Value := EndOfTheMonth(Now);
  qryEstimateStageTO_MONTH.Value := qryEstimateStageFROM_MONTH.Value;
  qryEstimateStageTO_YEAR.Value := qryEstimateStageFROM_YEAR.Value;

  E_STATE := 'insert';
  qryEstimateStageSTAGE_NO.Value := dmMain.GenerateKeyData(207);
end;

procedure TfrmEstimateManager.gridWorkTypeDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self, true, sender);
end;

procedure TfrmEstimateManager.dxppWorkTypeCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := qryWorkTypeWORK_TYPE_NAME.Value;
    WORK_TYPE_NO := qryWorkTypeWORK_TYPE_NO.Value;
  end;
end;

procedure TfrmEstimateManager.dxppWorkTypeChange(Sender: TObject);
begin
  inherited;
  if dxppWorkType.Text = '' then
    WORK_TYPE_NO := '';
end;

procedure TfrmEstimateManager.ElPopupButton3Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmWorkType, frmWorkType);
  qryWorkType.Refresh;
end;

procedure TfrmEstimateManager.acViewExecute(Sender: TObject);
begin
  inherited;
  if F_DETAIL_SOMETHING_CHANGE then
    CreateGridData;
  LoadData;
end;

procedure TfrmEstimateManager.dxDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self, true, sender);
end;

procedure TfrmEstimateManager.ElPopupButton8Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmEstimateSysLevel, frmEstimateSysLevel);
  qryEstimateLevel.Refresh;
end;

procedure TfrmEstimateManager.acUpdateUpdate(Sender: TObject);
begin
  inherited;
  acUpdate.Enabled := F_DETAIL_DATA_CHANGE and
    (qryEstimateStageSTAGE_NO.isNull = false);
end;

procedure TfrmEstimateManager.DefOnDataChange(Sender: TField);
var
  mark: Double;
  field_name: string;
begin
  inherited;
  if ACTION_STATE = 'Data loading' then exit;
  if dxDirect.Checked = false then
  begin
    field_name := Copy(sender.FieldName, 1, Length(sender.FieldName) - 5);
    if Sender.IsNull = False then
    begin
      mark := memEstimate.FieldByName(field_name + '_FLOAT').AsFloat;
      if (mark < qryEstimateLevelLEVEL_MARK.Value) or
        (mark > qryEstimateLevelLEVEL_TO_MARK.Value) then
        memEstimate.FieldByName(field_Name + '_FLOAT').Value :=
          qryEstimateLevelLEVEL_MARK.Value;
    end
    else
    begin
      memEstimate.FieldByName(field_name + '_FLOAT').Clear;
    end;
    F_DETAIL_DATA_CHANGE := true;
  end
end;

procedure TfrmEstimateManager.DefOnDataTextChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet, Sender.FieldName, Sender.FieldName + '_CODE');
end;

procedure TfrmEstimateManager.DefOnDataFloatChange(Sender: TField);
var
  field_name: string;
  mark, total_mark: double;
  i, j: integer;
  is_null, ok: boolean;
begin
  if ACTION_STATE = 'Data loading' then exit;
  if dxDirect.Checked then
  begin
    field_name := Copy(sender.FieldName, 1, Length(sender.FieldName) - 6);
    if memEstimate.FieldByName(Field_Name + '_FLOAT').IsNull then
    begin
      memEstimate.FieldByName(field_name).Clear;
    end
    else
    begin
      if (qryEstimateLevel.Active and
        (qryEstimateLevel.ParamByName('ITEM_NO').AsString <> field_name))
        or (qryEstimateLevel.Active = false) then
      begin
        qryEstimateLevel.Close;
        qryEstimateLevel.ParamByName('ITEM_NO').Value := field_name;
        qryEstimateLevel.Open;
      end;

      if qryEstimateLevel.IsEmpty then
      begin
        memEstimate.FieldByName(Field_Name + '_FLOAT').Clear;
        ShowMessageUnicode(55);
      end
      else
      begin
        qryEstimateLevel.First;
        mark := memEstimate.FieldByName(Field_Name + '_FLOAT').AsFloat;
        ok := false;
        while not qryEstimateLevel.Eof do
        begin
          if (qryEstimateLevelLEVEL_MARK.Value <= mark) and
            (qryEstimateLevelLEVEL_TO_MARK.Isnull or
            (qryEstimateLevelLEVEL_TO_MARK.Value >= mark)) then
          begin
            memEstimate.FieldByName(field_name).Value :=
              qryEstimateLevelLEVEL_NAME.Value;
            memEstimate.FieldByName(field_name + '_CODE').Value :=
              qryEstimateLevelLEVEL_NO.Value;
            F_DETAIL_DATA_CHANGE := true;
            ok := true;
            break;
          end
          else
            qryEstimateLevel.Next;
        end;
        if ok = false then
        begin
          memEstimate.FieldByName(Field_Name + '_FLOAT').Clear;
          ShowMessageUnicode(55);
        end;
      end; //if EXIST LEVEL TABLE
    end // if VALUE is NOT NULL
  end; // if in VIEW DIRECT

  total_mark := 0;

  i := F_DETAIL_FIELD_COUNT;
  j := 0;
  is_null := true;
  while i <= memEstimate.FieldCount - 1 do
  begin
    field_name := memEstimate.Fields[i].FieldName;
    if not memEstimate.FieldByName(field_name + '_FLOAT').IsNull then
    begin
      total_mark := total_mark + memEstimate.FieldByName(field_name +
        '_FLOAT').AsFloat;
      is_null := false;
    end;
    i := i + 5;
    j := j + 1;
  end;
  if is_null then
  begin
    memEstimateTOTAL_MARK.Clear;
    memEstimateAVERAGE_MARK.Clear;
  end
  else
  begin
    memEstimateTOTAL_MARK.Value := total_mark;
    if j <= 0 then
      memEstimateAVERAGE_MARK.Clear
    else
      memEstimateAVERAGE_MARK.Value := total_mark / j;
  end;
  F_DETAIL_DATA_CHANGE := true;
end;

procedure TfrmEstimateManager.DefOnDataSummaryFloatChange(Sender: TField);
var
  field_name: string;
  mark, total_mark: double;
  i, j: integer;
  ok, is_null: boolean;
begin
  if ACTION_STATE = 'Data loading' then exit;
  if dxDirectSum.Checked then
  begin
    field_name := Copy(sender.FieldName, 1, Length(sender.FieldName) - 6);
    if memSummary.FieldByName(Field_Name + '_FLOAT').IsNull then
    begin
      memSummary.FieldByName(field_name).Clear;
    end
    else
    begin
      if (qryEstimateSumLevel.Active and
        (qryEstimateSumLevel.ParamByName('ITEM_NO').AsString <> field_name))
        or (qryEstimateSumLevel.Active = false) then
      begin
        qryEstimateSumLevel.Close;
        qryEstimateSumLevel.ParamByName('ITEM_NO').Value := field_name;
        qryEstimateSumLevel.Open;
      end;

      if qryEstimateSumLevel.IsEmpty then
      begin
        memSummary.FieldByName(Field_Name + '_FLOAT').Clear;
        ShowMessageUnicode(55);
      end
      else
      begin
        qryEstimateSumLevel.First;
        mark := memSummary.FieldByName(Field_Name + '_FLOAT').AsFloat;
        ok := false;
        while not qryEstimateSumLevel.Eof do
        begin
          if (qryEstimateSumLevelFROM_MARK.Value <= mark) and
            (qryEstimateSumLevelTO_MARK.Isnull or
            (qryEstimateSumLevelTO_MARK.Value >= mark)) then
          begin
            memSummary.FieldByName(field_name).Value :=
              qryEstimateSumLevelLEVEL_NAME.Value;
            memSummary.FieldByName(field_name + '_CODE').Value :=
              qryEstimateSumLevelLEVEL_NO.Value;
            F_SUM_DATA_CHANGE := true;
            ok := true;
            break;
          end
          else
            qryEstimateSumLevel.Next;
        end;
        if ok = false then
        begin
          memSummary.FieldByName(Field_Name + '_FLOAT').Clear;
          ShowMessageUnicode(55);
        end;
      end; //if EXIST LEVEL TABLE
    end // if VALUE is NOT NULL
  end; // if in VIEW DIRECT

  total_mark := 0;
  is_null := true;
  i := F_SUM_FIELD_COUNT;
  j := 0;
  while i <= memSummary.FieldCount - 1 do
  begin
    field_name := memSummary.Fields[i].FieldName;
    if not memSummary.FieldByName(field_name + '_FLOAT').IsNull then
    begin
      total_mark := total_mark + memSummary.FieldByName(field_name +
        '_FLOAT').AsFloat;
      is_null := false;
    end;
    i := i + 5;
    j := j + 1;
  end;
  if is_null then
  begin
    memSummaryTOTAL_MARK.Clear;
    memSummaryAVERAGE_MARK.Clear;
  end
  else
  begin
    memSummaryTOTAL_MARK.Value := total_mark;
    if j <= 0 then
      memSummaryAVERAGE_MARK.Clear
    else
      memSummaryAVERAGE_MARK.Value := total_mark / j;
  end;
  F_SUM_DATA_CHANGE := true;
end;

procedure TfrmEstimateManager.DefOnDataSummaryChange(Sender: TField);
var
  mark: Double;
  field_name: string;
begin
  inherited;
  if ACTION_STATE = 'Data loading' then exit;
  if dxDirectSum.Checked = false then
  begin
    field_name := Copy(sender.FieldName, 1, Length(sender.FieldName) - 5);
    if Sender.IsNull = False then
    begin
      mark := memSummary.FieldByName(field_name + '_FLOAT').AsFloat;
      if (mark < qryEstimateSumLevelFROM_MARK.Value) or
        (mark > qryEstimateSumLevelTO_MARK.Value) then
        memSummary.FieldByName(field_Name + '_FLOAT').Value :=
          qryEstimateSumLevelFROM_MARK.Value;
    end
    else
    begin
      memSummary.FieldByName(field_name + '_FLOAT').Clear;
    end;
    F_SUM_DATA_CHANGE := true;
  end
end;

procedure TfrmEstimateManager.DefOnDataSummaryTextChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet, Sender.FieldName, Sender.FieldName + '_CODE');
end;

procedure TfrmEstimateManager.qryDeptListAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if pageLeft.ActivePage = tabStage then
    acView.Execute
  else
    acView_Summary.Execute;

end;

procedure TfrmEstimateManager.acUpdateExecute(Sender: TObject);
var
  ok: boolean;
  bookmark: TBookmark;
  i: integer;
  field_name: string;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memEstimate.RecordCount = 0 then exit;
  dmMain.RollbackTransaction;
  ok := true;
  if (memEstimate.State in [dsEdit]) then
    memEstimate.Post;
  bookmark := memEstimate.GetBookmark;
  memEstimate.DisableControls;
  frmMain.SetStatusBarPrgDisplay(0, memEstimate.RecordCount);
  memEstimate.First;
  while not memEstimate.Eof do
  begin
    i := F_DETAIL_FIELD_COUNT;
    while i <= memEstimate.FieldCount - 1 do
    begin
      field_name := memEstimate.Fields[i].FieldName;
      if memEstimate.FieldByName(field_name + '_OLD').IsNull then
      begin
        if (not memEstimate.FieldByName(field_name + '_CODE').IsNull) then
          //insert
        begin
          qryExecute.SQL.Text :=
            ' insert into hr_estimate_detail ' +
            ' ( hr_estimate_detail.employee_no, ' +
            '   hr_estimate_detail.position_no, ' +
            '   hr_estimate_detail.assigned_date, ' +
            '   hr_estimate_detail.stage_no, ' +
            '   hr_estimate_detail.item_no, ' +
            '   hr_estimate_detail.estimate_level,' +
            '   hr_estimate_detail.estimate_mark) ' +
            ' values ' +
            ' ( :employee_no, ' +
            '   :position_no, ' +
            '   :assigned_date, ' +
            '   :stage_no, ' +
            '   :item_no, ' +
            '   :estimate_level, ' +
            '   :estimate_mark )';
          qryExecute.Prepare;
          qryExecute.ParamByName('EMPLOYEE_NO').Value :=
            memEstimateEMPLOYEE_NO.Value;
          qryExecute.ParamByName('POSITION_NO').Value :=
            memEstimatePOSITION_NO.Value;
          qryExecute.ParamByName('ASSIGNED_DATE').Value :=
            memEstimateASSIGNED_DATE.Value;
          qryExecute.ParamByName('STAGE_NO').Value :=
            qryEstimateStageSTAGE_NO.Value;
          qryExecute.ParamByName('ITEM_NO').Value :=
            field_name;
          qryExecute.ParamByName('ESTIMATE_LEVEL').Value :=
            memEstimate.FieldByName(field_name + '_CODE').Value;
          qryExecute.ParamByName('ESTIMATE_MARK').Value :=
            memEstimate.FieldByName(field_name + '_FLOAT').Value;
          dmMain.ExecuteSQL(qryExecute);
        end
      end
      else // old is not nul
        if memEstimate.FieldByName(field_name + '_CODE').IsNull then //delete
      begin
        qryExecute.SQL.Text :=
          ' delete from hr_estimate_detail ' +
          ' where ' +
          '  employee_no=:employee_no and ' +
          '  position_no=:position_no and ' +
          '  assigned_date=:assigned_date and ' +
          '  stage_no=:stage_no and ' +
          '  item_no=:item_no';
        qryExecute.Prepare;
        qryExecute.ParamByName('EMPLOYEE_NO').Value :=
          memEstimateEMPLOYEE_NO.Value;
        qryExecute.ParamByName('POSITION_NO').Value :=
          memEstimatePOSITION_NO.Value;
        qryExecute.ParamByName('ASSIGNED_DATE').Value :=
          memEstimateASSIGNED_DATE.Value;
        qryExecute.ParamByName('STAGE_NO').Value :=
          qryEstimateStageSTAGE_NO.Value;
        qryExecute.ParamByName('ITEM_NO').Value :=
          field_name;
        dmMain.ExecuteSQL(qryExecute);
      end
      else
        if (memEstimate.FieldByName(field_name + '_CODE').Value <>
        memEstimate.FieldByName(field_name + '_OLD').Value) or
        (memEstimate.FieldByName(field_name + '_FLOAT').Value <>
        memEstimate.FieldByName(field_name + '_OLD_FLOAT').Value) then
        //update
      begin
        qryExecute.SQL.Text :=
          ' update hr_estimate_detail ' +
          ' set estimate_level=:estimate_level, ' +
          '     estimate_mark=:estimate_mark ' +
          ' where employee_no=:employee_no and ' +
          '  position_no=:position_no and ' +
          '  assigned_date=:assigned_date and ' +
          '  stage_no=:stage_no and ' +
          '  item_no=:item_no';
        qryExecute.Prepare;
        qryExecute.ParamByName('EMPLOYEE_NO').Value :=
          memEstimateEMPLOYEE_NO.Value;
        qryExecute.ParamByName('POSITION_NO').Value :=
          memEstimatePOSITION_NO.Value;
        qryExecute.ParamByName('ASSIGNED_DATE').Value :=
          memEstimateASSIGNED_DATE.Value;
        qryExecute.ParamByName('STAGE_NO').Value :=
          qryEstimateStageSTAGE_NO.Value;
        qryExecute.ParamByName('ITEM_NO').Value :=
          field_name;
        qryExecute.ParamByName('ESTIMATE_LEVEL').Value :=
          memEstimate.FieldByName(field_name + '_CODE').Value;
        qryExecute.ParamByName('ESTIMATE_MARK').Value :=
          memEstimate.FieldByName(field_name + '_FLOAT').Value;
        dmMain.ExecuteSQL(qryExecute);
      end;
      if not (memEstimate.State in [dsEdit]) then
        memEstimate.Edit;
      if memEstimate.FieldByName(field_name + '_CODE').IsNull then
        memEstimate.FieldByName(field_name + '_OLD').Clear
      else
        memEstimate.FieldByName(field_name + '_OLD').Value :=
          memEstimate.FieldByName(field_name + '_CODE').Value;
      if memEstimate.FieldByName(field_name + '_FLOAT').IsNull then
        memEstimate.FieldByName(field_name + '_OLD_FLOAT').Clear
      else
        memEstimate.FieldByName(field_name + '_OLD_FLOAT').Value :=
          memEstimate.FieldByName(field_name + '_FLOAT').Value;
      i := i + 5;
    end; //end WHILE

    // cap nhat TONG DIEM
    if memEstimateTOTAL_MARK_OLD.IsNull then
    begin
      if (not memEstimateTOTAL_MARK.IsNull) then
        //insert
      begin
        qryExecute.SQL.Text :=
          ' insert into hr_estimate_total ' +
          ' ( employee_no, ' +
          '   position_no, ' +
          '   assigned_date, ' +
          '   stage_no, ' +
          '   total_mark, ' +
          '   average_mark ) ' +
          ' values ' +
          ' ( :employee_no, ' +
          '   :position_no, ' +
          '   :assigned_date, ' +
          '   :stage_no, ' +
          '   :total_mark ,' +
          '   :average_mark)';
        qryExecute.Prepare;
        qryExecute.ParamByName('EMPLOYEE_NO').Value :=
          memEstimateEMPLOYEE_NO.Value;
        qryExecute.ParamByName('POSITION_NO').Value :=
          memEstimatePOSITION_NO.Value;
        qryExecute.ParamByName('ASSIGNED_DATE').Value :=
          memEstimateASSIGNED_DATE.Value;
        qryExecute.ParamByName('STAGE_NO').Value :=
          qryEstimateStageSTAGE_NO.Value;
        qryExecute.ParamByName('TOTAL_MARK').Value :=
          memEstimateTOTAL_MARK.Value;
        qryExecute.ParamByName('AVERAGE_MARK').Value :=
          memEstimateAVERAGE_MARK.Value;
        dmMain.ExecuteSQL(qryExecute);
      end
    end
    else // old is not nul
      if memEstimateTOTAL_MARK.IsNull then //delete
    begin
      qryExecute.SQL.Text :=
        ' delete from hr_estimate_total  ' +
        ' where ' +
        '  employee_no=:employee_no and ' +
        '  position_no=:position_no and ' +
        '  assigned_date=:assigned_date and ' +
        '  stage_no=:stage_no';
      qryExecute.Prepare;
      qryExecute.ParamByName('EMPLOYEE_NO').Value :=
        memEstimateEMPLOYEE_NO.Value;
      qryExecute.ParamByName('POSITION_NO').Value :=
        memEstimatePOSITION_NO.Value;
      qryExecute.ParamByName('ASSIGNED_DATE').Value :=
        memEstimateASSIGNED_DATE.Value;
      qryExecute.ParamByName('STAGE_NO').Value :=
        qryEstimateStageSTAGE_NO.Value;
      dmMain.ExecuteSQL(qryExecute);
    end
    else
      if (memEstimateTOTAL_MARK.Value <>
      memEstimateTOTAL_MARK_OLD.Value) then
      //update
    begin
      qryExecute.SQL.Text :=
        ' update hr_estimate_total ' +
        ' set total_mark=:total_mark ,' +
        '     average_mark=:average_mark ' +
        ' where employee_no=:employee_no and ' +
        '  position_no=:position_no and ' +
        '  assigned_date=:assigned_date and ' +
        '  stage_no=:stage_no';
      qryExecute.Prepare;
      qryExecute.ParamByName('EMPLOYEE_NO').Value :=
        memEstimateEMPLOYEE_NO.Value;
      qryExecute.ParamByName('POSITION_NO').Value :=
        memEstimatePOSITION_NO.Value;
      qryExecute.ParamByName('ASSIGNED_DATE').Value :=
        memEstimateASSIGNED_DATE.Value;
      qryExecute.ParamByName('STAGE_NO').Value :=
        qryEstimateStageSTAGE_NO.Value;
      qryExecute.ParamByName('TOTAL_MARK').Value :=
        memEstimateTOTAL_MARK.Value;
      qryExecute.ParamByName('AVERAGE_MARK').Value :=
        memEstimateAVERAGE_MARK.Value;

      dmMain.ExecuteSQL(qryExecute);
    end;

    if not (memEstimate.State in [dsEdit]) then
      memEstimate.Edit;
    if memEstimateTOTAL_MARK.IsNull then
      memEstimateTOTAL_MARK_OLD.Clear
    else
      memEstimateTOTAL_MARK_OLD.Value :=
        memEstimateTOTAL_MARK.Value;
    if memEstimateAVERAGE_MARK.IsNull then
      memEstimateAVERAGE_MARK_OLD.Clear
    else
      memEstimateAVERAGE_MARK_OLD.Value :=
        memEstimateAVERAGE_MARK.Value;

    if memEstimate.State in [dsEdit] then
      memEstimate.Post;
    memEstimate.Next;
    frmMain.BarPrgStepIt;
  end;
  F_DETAIL_DATA_CHANGE := false;
  memEstimate.GotoBookmark(bookmark);
  memEstimate.EnableControls;
  if ok then
    dmmain.CommitTransaction
  else
    dmMain.RollbackTransaction;
  Screen.Cursor := crDefault;
end;

procedure TfrmEstimateManager.pageLeftChange(Sender: TObject);
begin
  inherited;
  pageMain.ActivePageIndex := pageLeft.ActivePageIndex;
end;
//===============================================================

procedure TfrmEstimateManager.CreateGridData_Summary;
var
  f: TField;
  i,col_index,band_index: integer;
  newCol: TdxDBTreeListColumn;
  newBand:TdxTreeListBand;
  newBand_name:string;
begin
  Screen.Cursor := crSQLWait;
  //clear
  memSummary.DisableControls;
  if memSummary.Active then
    memSummary.Close;
  if memSummary.FieldCount > F_SUM_FIELD_COUNT then
  begin
    for i := memSummary.FieldCount - 1 downto F_SUM_FIELD_COUNT do
    begin
      memSummary.Fields[i].Free;
    end;
  end;
  if gridsummary.ColumnCount > F_SUM_COLUMN_COUNT then
  begin
    for i := gridSummary.ColumnCount - 1 downto 0 do
    begin
      if gridSummary.Columns[i].BandIndex>0 then
        gridSummary.Columns[i].Free;
    end;
  end;
  if gridSummary.Bands.Count>1 then
  begin
    for i := gridsummary.Bands.Count - 1 downto 1 do
    begin
      gridSummary.Bands[i].Free;
    end;
  end;

  // end clear
  if qryEstimateItem.Active then
    qryEstimateItem.Close;
  if dxSumViewAll.Checked then
  begin
    qryEstimateItem.SQLWhere.Clear;
    qryEstimateItem.Prepare;
  end
  else
  begin
    qryEstimateItem.SQLWhere.Text :=
      'where WORK_TYPE_NO=:WORK_TYPE_NO and APPLIED=1';
    qryEstimateItem.Prepare;
    qryEstimateItem.ParamByName('WORK_TYPE_NO').Value := SUM_WORK_TYPE_NO;
  end;

  qryEstimateItem.Open;
  if qryEstimateItem.RecordCount > 0 then
  begin
    frmMain.SetStatusBarPrgDisplay(0, qryEstimateItem.RecordCount);
    qryEstimateItem.First;
    col_index:=1;
    band_index:=1;
    while not qryEstimateItem.Eof do
    begin
       //create BAND
      if (not Assigned(newBand))or
         (newBand_name<>qryEstimateItemGROUP_NO.AsString) then
      begin
        newBand:=gridSummary.Bands.Add;
        newBand_name:=qryEstimateItemGROUP_NO.AsString;
        newBand.Visible:=true;
        newBand.Index:=band_index;
        Inc(band_index);
        newBand.Caption:=qryEstimateItemGROUP_NAME.Value;
        col_index:=1;
      end;

      // SELECT VIEW
      f := TWideStringField.Create(memSummary);
      f.FieldName := qryEstimateItemITEM_NO.AsString;
      f.FieldKind := fkData;
      f.DataSet := memSummary;
      f.SetFieldType(ftWideString);
      f.OnChange := DefOnDataSummaryTextChange;
      f.Size := 127;

      newCol := gridSummary.CreateColumn(TdxDBGridPopupColumn);
      newCol.Name := 'gridSummary' + f.FieldName;
      newCol.FieldName := f.FieldName;
      newCol.Width := 120;
      newCol.HeaderAlignment := taCenter;
      newCol.BandIndex := newBand.Index;
      newCol.Index:=col_index;
      Inc(col_index);
      newCol.DisableCustomizing := true;
      newCol.Caption := qryEstimateItemITEM_NAME.Value;
      (newCol as TdxDBGridPopupColumn).OnInitPopup := DefOnInitPopup_Summary;
      (newCol as TdxDBGridPopupColumn).OnCloseUp := DefOnCloseUp_Summary;
      newCol.Visible := not dxDirectSum.Checked;
      newCol.Tag := -1;

      f := TWideStringField.Create(memSummary);
      f.FieldName := qryEstimateItemITEM_NO.AsString + '_CODE';
      f.FieldKind := fkData;
      f.DataSet := memSummary;
      f.SetFieldType(ftWideString);
      f.OnChange := DefOnDataSummaryChange;
      f.Size := 30;

      f := TWideStringField.Create(memSummary);
      f.FieldName := qryEstimateItemITEM_NO.AsString + '_OLD';
      f.FieldKind := fkData;
      f.DataSet := memSummary;
      f.SetFieldType(ftWideString);
      f.Size := 30;

      // DIRECT VIEW

      f := TFloatField.Create(memSummary);
      f.FieldName := qryEstimateItemITEM_NO.AsString + '_FLOAT';
      f.FieldKind := fkData;
      f.DataSet := memSummary;
      f.SetFieldType(ftFloat);
      f.OnChange := DefOnDataSummaryFloatChange;

      newCol := gridSummary.CreateColumn(TdxDBGridCalcColumn);
      newCol.Name := 'gridSummary' + f.FieldName;
      newCol.FieldName := f.FieldName;
      newCol.Width := 100;
      newCol.HeaderAlignment := taCenter;
      newCol.BandIndex := newBand.Index;
      newCol.Index:=col_index;
      Inc(col_index);
      newCol.DisableCustomizing := true;
      newCol.Caption := qryEstimateItemITEM_NAME.Value;
      newCol.Visible := dxDirectSum.Checked;
      newCol.Tag := -2;

      f := TFloatField.Create(memSummary);
      f.FieldName := qryEstimateItemITEM_NO.AsString + '_OLD_FLOAT';
      f.FieldKind := fkData;
      f.DataSet := memSummary;
      f.SetFieldType(ftFloat);

      frmMain.BarPrgStepIt;
      qryEstimateItem.Next;
    end;
  end;
  memSummary.EnableControls;
  Screen.Cursor := crDefault;

  if dxSumViewAll.Checked then
    gridSummary.OptionsBehavior := gridEstimate.OptionsBehavior - [edgoEditing]
  else
    gridSummary.OptionsBehavior := gridEstimate.OptionsBehavior + [edgoEditing];

  F_SUM_DATA_CHANGE := false;
end;

procedure TfrmEstimateManager.DefOnInitPopup_Summary(Sender: TObject);
begin
  inherited;
  if qryEstimateSumLevel.Active then
    qryEstimatesumLevel.Close;
  qryEstimateSumLevel.ParamByName('ITEM_NO').Value :=
    (sender as TdxDBGridPopupColumn).FieldName;
  qryEstimateSumLevel.Open;
  InitPopupControl('dxlcEstimateSumLevel', self, sender, 2, gridSummary);
end;

procedure TfrmEstimateManager.DefOnCloseUp_Summary(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
var
  fieldName: string;
begin
  inherited;
  fieldName := (sender as TdxDBGridPopupColumn).FieldName;
  OnPopupCloseUp(Accept, qryEstimateSumLevel, memSummary,
    'LEVEL_NO;LEVEL_NAME', fieldName + '_CODE;' + fieldName,
    'LEVEL_NAME', Text);
  qryEstimateSumLevel.Close;
end;

procedure TfrmEstimateManager.ElPopupButton16Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmEstimateSysLevel, frmEstimateSysLevel);
  qryEstimateSumLevel.Refresh;
end;

procedure TfrmEstimateManager.LoadData_Summary;
var
  EMPLOYEE_NO: WideString;
begin
  ACTION_STATE := 'Data loading';
  Screen.Cursor := crSQLWait;
  memSummary.DisableControls;
  if memSummary.Active then
    memSummary.Close;
  if qryEstimateSummary.Active then
    qryEstimateSummary.Close;
  //==================
  if dxSumViewAll.Checked then
  begin
    qryEstimateSummary.SQLWhere.Text :=
      'where ((hr_get_emp_list.is_dismissed=:is_dismissed)or(:is_dismissed=2))';
    qryEstimateDetail.Prepare;
  end
  else
  begin
    qryEstimateSummary.SQLWhere.Text :=
      ' where ((hr_get_emp_list.is_dismissed=:is_dismissed)or(:is_dismissed=2)) ' +
      ' and hr_position.work_type_no=:work_type_no';
    qryEstimateSummary.Prepare;
    qryEstimateSummary.ParamByName('WORK_TYPE_NO').Value := SUM_WORK_TYPE_NO;
  end;
  if dxSumViewChild.Checked then
    qryEstimateSummary.ParamByName('VIEW_CHILD').Value := 1
  else
    qryEstimateSummary.ParamByName('VIEW_CHILD').Value := 0;

  qryEstimateSummary.ParamByName('DEPT_NO').Value := qryDeptListDEPT_NO.Value;
  qryEstimateSummary.ParamByName('IS_DISMISSED').Value :=
    imEmpOption_Summary.Text;
  qryEstimateSummary.ParamByName('STAGE_NO').Value :=
    qryEstimateSumStageSTAGE_NO.Value;
  qryEstimateSummary.Open;
  if qryEstimateSummary.RecordCount > 0 then
  begin
    frmMain.SetStatusBarPrgDisplay(0, qryEstimateSummary.RecordCount);
    qryEstimateSummary.First;
    EMPLOYEE_NO := qryEstimateSummaryEMPLOYEE_NO.Value;
    memSummary.Open;

    memSummary.Insert;
    memSummaryEMPLOYEE_NO.Value := qryEstimateSummaryEMPLOYEE_NO.Value;
    memSummaryFULL_NAME.Value := qryEstimateSummaryFULL_NAME.Value;
    memSummaryDEPT_NAME.Value := qryEstimateSummaryDEPT_NAME.Value;
    memSummaryTITLE_NAME.Value := qryEstimateSummaryTITLE_NAME.Value;
    memSummaryPOSITION_NO.Value := qryEstimateSummaryPOSITION_NO.Value;
    memSummaryASSIGNED_DATE.Value := qryEstimateSummaryASSIGNED_DATE.Value;

    if qryEstimateSummaryTOTAL_MARK.IsNull then
    begin
      memSummaryTOTAL_MARK.Clear;
      memSummaryTOTAL_MARK_OLD.Clear;
    end
    else
    begin
      memSummaryTOTAL_MARK.Value := qryEstimateSummaryTOTAL_MARK.Value;
      memSummaryTOTAL_MARK_OLD.Value := qryEstimateSummaryTOTAL_MARK.Value;
    end;
    if qryEstimateSummaryAVERAGE_MARK.IsNull then
    begin
      memSummaryAVERAGE_MARK.Clear;
      memSummaryAVERAGE_MARK_OLD.Clear;
    end
    else
    begin
      memSummaryAVERAGE_MARK.Value := qryEstimateSummaryAVERAGE_MARK.Value;
      memSummaryAVERAGE_MARK_OLD.Value := qryEstimateSummaryAVERAGE_MARK.Value;
    end;

    repeat
      if (EMPLOYEE_NO <> qryEstimateSummaryEMPLOYEE_NO.Value) or
        (qryEstimateSummary.Eof) then
      begin
        if (memSummary.State in [dsEdit, dsInsert]) then
          memSummary.Post;
        if qryEstimateSummary.Eof then
          Break
        else
          EMPLOYEE_NO := qryEstimateSummaryEMPLOYEE_NO.Value;

        memSummary.Insert;
        memSummaryEMPLOYEE_NO.Value :=
          qryEstimateSummaryEMPLOYEE_NO.Value;
        memSummaryFULL_NAME.Value := qryEstimateSummaryFULL_NAME.Value;
        memSummaryDEPT_NAME.Value := qryEstimateSummaryDEPT_NAME.Value;
        memSummaryTITLE_NAME.Value := qryEstimateSummaryTITLE_NAME.Value;
        memSummaryPOSITION_NO.Value := qryEstimateSummaryPOSITION_NO.Value;
        memSummaryASSIGNED_DATE.Value := qryEstimateSummaryASSIGNED_DATE.Value;
        if qryEstimateSummaryTOTAL_MARK.IsNull then
        begin
          memSummaryTOTAL_MARK.Clear;
          memSummaryTOTAL_MARK_OLD.Clear;
        end
        else
        begin
          memSummaryTOTAL_MARK.Value := qryEstimateSummaryTOTAL_MARK.Value;
          memSummaryTOTAL_MARK_OLD.Value := qryEstimateSummaryTOTAL_MARK.Value;
        end;
        if qryEstimateSummaryAVERAGE_MARK.IsNull then
        begin
          memSummaryAVERAGE_MARK.Clear;
          memSummaryAVERAGE_MARK_OLD.Clear;
        end
        else
        begin
          memSummaryAVERAGE_MARK.Value := qryEstimateSummaryAVERAGE_MARK.Value;
          memSummaryAVERAGE_MARK_OLD.Value :=
            qryEstimateSummaryAVERAGE_MARK.Value;
        end;
      end;
      if not qryEstimateSummaryITEM_NO.IsNull then
      begin
        if
          Assigned(memSummary.FindField(qryEstimateSummaryITEM_NO.AsString))
            then
        begin
          //load TEXT DATA
          memSummary.FieldByName(qryEstimateSummaryITEM_NO.AsString).Value
            := qryEstimateSummaryLEVEL_NAME.Value;
          memSummary.FieldByName(qryEstimateSummaryITEM_NO.AsString +
            '_CODE').Value :=
            qryEstimateSummaryESTIMATE_LEVEL.Value;
          memSummary.FieldByName(qryEstimateSummaryITEM_NO.AsString +
            '_OLD').Value :=
            qryEstimateSummaryESTIMATE_LEVEL.Value;
          // load DOUBLE DATA
          memSummary.FieldByName(qryEstimateSummaryITEM_NO.AsString +
            '_FLOAT').Value
            := qryEstimateSummaryESTIMATE_MARK.Value;
          memSummary.FieldByName(qryEstimateSummaryITEM_NO.AsString +
            '_OLD_FLOAT').Value
            := qryEstimateSummaryESTIMATE_MARK.Value;
        end;
      end;
      frmMain.BarPrgStepIt;
      qryEstimateSummary.Next;
    until (EMPLOYEE_NO = '') and (not (memSummary.State in [dsInsert]));
    qryEstimateSummary.Close;
  end;
  memSummary.EnableControls;
  F_SUM_DATA_CHANGE := false;
  ACTION_STATE := '';
  Screen.Cursor := crDefault;
end;

procedure TfrmEstimateManager.acEstimateSumInsertExecute(Sender: TObject);
begin
  inherited;
  frmEstimateStageSummary := TfrmEstimateStageSummary.Create(self);
  with frmEstimateStageSummary do
  try
    if not (qryEstimateSumStage.State in [dsInsert, dsEdit]) then
      qryEstimateSUmStage.Append;
    if Application.Title = 'SSP-HRM TRUNG DUNG' then
    begin
      qryEstimateSumStageESTIMATE_METHOD.Value := 'TB_DIEM_HS';
    end;
    ShowModal;
  finally
    Free;
  end;
  frmEstimateStageSummary := nil;
end;

procedure TfrmEstimateManager.acView_SummaryExecute(Sender: TObject);
begin
  inherited;
  if F_SUM_SOMETHING_CHANGE then
    CreateGridData_Summary;
  LoadData_Summary;
end;

procedure TfrmEstimateManager.qryEstimateSumStageSTAGE_TYPEChange(
  Sender: TField);
begin
  inherited;
  if qryEstimateSumStageSTAGE_TYPE.Value = 0 then
  begin
    qryEstimateSumStageFROM_DATE.Required := true;
    qryEstimateSumStageTO_DATE.Required := true;
    qryEstimateSumStageFROM_MONTH.Required := false;
    qryEstimateSumStageFROM_YEAR.Required := false;
    qryEstimateSumStageTO_MONTH.Required := false;
    qryEstimateSumStageTO_YEAR.Required := false;
  end
  else
    if qryEstimateSumStageSTAGE_TYPE.Value = 1 then
  begin
    qryEstimateSumStageFROM_DATE.Required := false;
    qryEstimateSumStageTO_DATE.Required := false;
    qryEstimateSumStageFROM_MONTH.Required := true;
    qryEstimateSumStageFROM_YEAR.Required := true;
    qryEstimateSumStageTO_MONTH.Required := true;
    qryEstimateSumStageTO_YEAR.Required := true;
  end;

end;

procedure TfrmEstimateManager.acUpdateSummaryUpdate(Sender: TObject);
begin
  inherited;
  acUpdateSummary.Enabled := F_SUM_DATA_CHANGE and
    (qryEstimateSumStageSTAGE_NO.isNull = false);
end;

procedure TfrmEstimateManager.acUpdateSummaryExecute(Sender: TObject);
var
  ok: boolean;
  bookmark: TBookmark;
  i: integer;
  field_name: string;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if memSummary.RecordCount = 0 then exit;
  dmMain.RollbackTransaction;
  ok := true;
  if (memSummary.State in [dsEdit]) then
    memSummary.Post;
  bookmark := memSummary.GetBookmark;
  memSummary.DisableControls;
  frmMain.SetStatusBarPrgDisplay(0, memSummary.RecordCount);
  memSummary.First;
  while not memSummary.Eof do
  begin
    i := F_SUM_FIELD_COUNT;
    while i <= memSummary.FieldCount - 1 do
    begin
      field_name := memSummary.Fields[i].FieldName;
      if memSummary.FieldByName(field_name + '_OLD').IsNull then
      begin
        if (not memSummary.FieldByName(field_name + '_CODE').IsNull) then
          //insert
        begin
          qryExecute.SQL.Text :=
            ' insert into hr_estimate_sum_detail ' +
            ' ( employee_no, ' +
            '   position_no, ' +
            '   assigned_date, ' +
            '   stage_no, ' +
            '   item_no, ' +
            '   estimate_mark, ' +
            '   estimate_level) ' +
            ' values ' +
            ' ( :employee_no, ' +
            '   :position_no, ' +
            '   :assigned_date, ' +
            '   :stage_no, ' +
            '   :item_no, ' +
            '   :estimate_mark, ' +
            '   :estimate_level )';
          qryExecute.ParamByName('EMPLOYEE_NO').Value :=
            memSummaryEMPLOYEE_NO.Value;
          qryExecute.ParamByName('POSITION_NO').Value :=
            memSummaryPOSITION_NO.Value;
          qryExecute.ParamByName('ASSIGNED_DATE').Value :=
            memSummaryASSIGNED_DATE.Value;
          qryExecute.ParamByName('STAGE_NO').Value :=
            qryEstimateSumStageSTAGE_NO.Value;
          qryExecute.ParamByName('ITEM_NO').Value :=
            field_name;
          qryExecute.ParamByName('ESTIMATE_LEVEL').Value :=
            memSummary.FieldByName(field_name + '_CODE').Value;
          qryExecute.ParamByName('ESTIMATE_MARK').Value :=
            memSummary.FieldByName(field_name + '_FLOAT').Value;

          dmMain.ExecuteSQL(qryExecute);
        end
      end
      else // old is not nul
        if memSummary.FieldByName(field_name + '_CODE').IsNull then //delete
      begin
        qryExecute.SQL.Text :=
          ' delete from hr_estimate_sum_detail ' +
          ' where ' +
          '  employee_no=:employee_no and ' +
          '  position_no=:position_no and ' +
          '  assigned_date=:assigned_date and ' +
          '  stage_no=:stage_no and ' +
          '  item_no=:item_no';
        qryExecute.ParamByName('EMPLOYEE_NO').Value :=
          memSummaryEMPLOYEE_NO.Value;
        qryExecute.ParamByName('POSITION_NO').Value :=
          memSummaryPOSITION_NO.Value;
        qryExecute.ParamByName('ASSIGNED_DATE').Value :=
          memSummaryASSIGNED_DATE.Value;
        qryExecute.ParamByName('STAGE_NO').Value :=
          qryEstimateSumStageSTAGE_NO.Value;
        qryExecute.ParamByName('ITEM_NO').Value :=
          field_name;
        dmMain.ExecuteSQL(qryExecute);
      end
      else
        if (memSummary.FieldByName(field_name + '_CODE').Value <>
        memSummary.FieldByName(field_name + '_OLD').Value)
        or
        (memSummary.FieldByName(field_name + '_FLOAT').Value <>
        memSummary.FieldByName(field_name + '_OLD_FLOAT').Value) then
        //update
      begin
        qryExecute.SQL.Text :=
          ' update hr_estimate_sum_detail ' +
          ' set estimate_level=:estimate_level, ' +
          '     estimate_mark=:estimate_mark ' +
          ' where employee_no=:employee_no and ' +
          '  position_no=:position_no and ' +
          '  assigned_date=:assigned_date and ' +
          '  stage_no=:stage_no and ' +
          '  item_no=:item_no';
        qryExecute.ParamByName('EMPLOYEE_NO').Value :=
          memSummaryEMPLOYEE_NO.Value;
        qryExecute.ParamByName('POSITION_NO').Value :=
          memSummaryPOSITION_NO.Value;
        qryExecute.ParamByName('ASSIGNED_DATE').Value :=
          memSummaryASSIGNED_DATE.Value;
        qryExecute.ParamByName('STAGE_NO').Value :=
          qryEstimateSumStageSTAGE_NO.Value;
        qryExecute.ParamByName('ITEM_NO').Value :=
          field_name;
        qryExecute.ParamByName('ESTIMATE_LEVEL').Value :=
          memSummary.FieldByName(field_name + '_CODE').Value;
        qryExecute.ParamByName('ESTIMATE_MARK').Value :=
          memSummary.FieldByName(field_name + '_FLOAT').Value;

        dmMain.ExecuteSQL(qryExecute);
      end;
      if not (memSummary.State in [dsEdit]) then
        memSummary.Edit;
      if memSummary.FieldByName(field_name + '_CODE').IsNull then
        memSummary.FieldByName(field_name + '_OLD').Clear
      else
        memSummary.FieldByName(field_name + '_OLD').Value :=
          memSummary.FieldByName(field_name + '_CODE').Value;

      if memSummary.FieldByName(field_name + '_FLOAT').IsNull then
        memSummary.FieldByName(field_name + '_OLD_FLOAT').Clear
      else
        memSummary.FieldByName(field_name + '_OLD_FLOAT').Value :=
          memSummary.FieldByName(field_name + '_FLOAT').Value;
      i := i + 5;
    end; //end WHILE
    // cap nhat TONG DIEM
    if memSummaryTOTAL_MARK_OLD.IsNull then
    begin
      if (not memSummaryTOTAL_MARK.IsNull) then
        //insert
      begin
        qryExecute.SQL.Text :=
          ' insert into hr_estimate_sum_total ' +
          ' ( employee_no, ' +
          '   position_no, ' +
          '   assigned_date, ' +
          '   stage_no, ' +
          '   estimate_mark, ' +
          '   estimate_mark_average ) ' +
          ' values ' +
          ' ( :employee_no, ' +
          '   :position_no, ' +
          '   :assigned_date, ' +
          '   :stage_no, ' +
          '   :estimate_mark ,' +
          '   :estimate_mark_average)';
        qryExecute.Prepare;
        qryExecute.ParamByName('EMPLOYEE_NO').Value :=
          memSummaryEMPLOYEE_NO.Value;
        qryExecute.ParamByName('POSITION_NO').Value :=
          memSummaryPOSITION_NO.Value;
        qryExecute.ParamByName('ASSIGNED_DATE').Value :=
          memSummaryASSIGNED_DATE.Value;
        qryExecute.ParamByName('STAGE_NO').Value :=
          qryEstimateSumStageSTAGE_NO.Value;
        qryExecute.ParamByName('ESTIMATE_MARK').Value :=
          memSummaryTOTAL_MARK.Value;
        qryExecute.ParamByName('ESTIMATE_MARK_AVERAGE').Value :=
          memSummaryAVERAGE_MARK.Value;
        dmMain.ExecuteSQL(qryExecute);
      end
    end
    else // old is not nul
      if memSummaryTOTAL_MARK.IsNull then //delete
    begin
      qryExecute.SQL.Text :=
        ' delete from hr_estimate_sum_total  ' +
        ' where ' +
        '  employee_no=:employee_no and ' +
        '  position_no=:position_no and ' +
        '  assigned_date=:assigned_date and ' +
        '  stage_no=:stage_no';
      qryExecute.Prepare;
      qryExecute.ParamByName('EMPLOYEE_NO').Value :=
        memSummaryEMPLOYEE_NO.Value;
      qryExecute.ParamByName('POSITION_NO').Value :=
        memSummaryPOSITION_NO.Value;
      qryExecute.ParamByName('ASSIGNED_DATE').Value :=
        memSummaryASSIGNED_DATE.Value;
      qryExecute.ParamByName('STAGE_NO').Value :=
        qryEstimateSumStageSTAGE_NO.Value;
      dmMain.ExecuteSQL(qryExecute);
    end
    else
      if (memSummaryTOTAL_MARK.Value <>
      memSummaryTOTAL_MARK_OLD.Value) then
      //update
    begin
      qryExecute.SQL.Text :=
        ' update hr_estimate_sum_total ' +
        ' set estimate_mark=:estimate_mark ,' +
        '     estimate_mark_average=:estimate_mark_average ' +
        ' where employee_no=:employee_no and ' +
        '  position_no=:position_no and ' +
        '  assigned_date=:assigned_date and ' +
        '  stage_no=:stage_no';
      qryExecute.Prepare;
      qryExecute.ParamByName('EMPLOYEE_NO').Value :=
        memSummaryEMPLOYEE_NO.Value;
      qryExecute.ParamByName('POSITION_NO').Value :=
        memSummaryPOSITION_NO.Value;
      qryExecute.ParamByName('ASSIGNED_DATE').Value :=
        memSummaryASSIGNED_DATE.Value;
      qryExecute.ParamByName('STAGE_NO').Value :=
        qryEstimateSumStageSTAGE_NO.Value;
      qryExecute.ParamByName('ESTIMATE_MARK').Value :=
        memSummaryTOTAL_MARK.Value;
      qryExecute.ParamByName('ESTIMATE_MARK_AVERAGE').Value :=
        memSummaryAVERAGE_MARK.Value;

      dmMain.ExecuteSQL(qryExecute);
    end;
    if not (memSummary.State in [dsEdit]) then
      memSummary.Edit;
    if memSummaryTOTAL_MARK.IsNull then
      memSummaryTOTAL_MARK_OLD.Clear
    else
      memSummaryTOTAL_MARK_OLD.Value :=
        memSummaryTOTAL_MARK.Value;
    if memSummaryAVERAGE_MARK.IsNull then
      memSummaryAVERAGE_MARK_OLD.Clear
    else
      memSummaryAVERAGE_MARK_OLD.Value :=
        memSummaryAVERAGE_MARK.Value;

    //
    if memSummary.State in [dsEdit] then
      memSummary.Post;
    memSummary.Next;
    frmMain.BarPrgStepIt;
  end;
  F_SUM_DATA_CHANGE := false;
  memSummary.GotoBookmark(bookmark);
  memSummary.EnableControls;
  if ok then
    dmmain.CommitTransaction
  else
    dmMain.RollbackTransaction;
  Screen.Cursor := crDefault;
end;

procedure TfrmEstimateManager.acUpdateSumStageExecute(Sender: TObject);
begin
  inherited;
  frmEstimateStageSummary := TfrmEstimateStageSummary.Create(self);
  with frmEstimateStageSummary do
  try
    TypeChange;
    ShowModal;
  finally
    Free;
  end;
  frmEstimateStageSummary := nil;
end;

procedure TfrmEstimateManager.qryEstimateSumStageNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  qryEstimateSumStageFROM_MONTH.Value := MonthOf(Now);
  qryEstimateSumStageFROM_YEAR.Value := YearOf(Now);
  qryEstimateSumStageFROM_DATE.Value := StartOfTheMonth(Now);
  qryEstimateSumStageTO_DATE.Value := EndOfTheMonth(Now);
  qryEstimateSumStageTO_MONTH.Value := qryEstimateSumStageFROM_MONTH.Value;
  qryEstimateSumStageTO_YEAR.Value := qryEstimateSumStageFROM_YEAR.Value;
  qryEstimateSumStageESTIMATE_METHOD.Value := 'TB_DIEM';
  S_STATE := 'insert';
  qryEstimateSumStageSTAGE_NO.Value := dmMain.GenerateKeyData(208);
end;

procedure TfrmEstimateManager.dxppWorkType_SummaryInitPopup(
  Sender: TObject);
begin
  inherited;
  InitPopupControl('dxlcWorkType', self, sender, 2);
end;

procedure TfrmEstimateManager.dxppWorkType_SummaryCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := qryWorkTypeWORK_TYPE_NAME.Value;
    SUM_WORK_TYPE_NO := qryWorkTypeWORK_TYPE_NO.Value;
  end;
end;

procedure TfrmEstimateManager.dxppWorkType_SummaryChange(Sender: TObject);
begin
  inherited;
  if dxppWorkType_Summary.Text = '' then
    SUM_WORK_TYPE_NO := '';
end;

procedure TfrmEstimateManager.gridEstimateStageChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  Update_group;
end;

procedure TfrmEstimateManager.gridEstimateSumChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  Update_group_Summary;

end;

procedure TfrmEstimateManager.acInitSummaryExecute(Sender: TObject);
begin
  inherited;
  if ShowMessageUnicode(47) = mrYes then
  begin
    try
      Screen.Cursor := crSQLWait;
      qryExecute.SQL.Text :=
        'execute procedure HR_SP_ESTIMATE_SUMMARY(:STAGE_NO,:ESTIMATE_METHOD)';
      qryExecute.Prepare;
      qryExecute.ParamByName('STAGE_NO').Value :=
        qryEstimateSumStageSTAGE_NO.Value;
      qryExecute.ParamByName('ESTIMATE_METHOD').Value :=
        qryEstimateSumStageESTIMATE_METHOD.Value;
      dmMain.ExecuteSQL(qryExecute);
      dmMain.CommitTransaction;
      ShowMessageUnicode(39);
      acView_Summary.Execute;
    except
      dmMain.RollbackTransaction;
    end;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmEstimateManager.dxppWorkTypeInitPopup(Sender: TObject);
begin
  inherited;
  InitPopupControl('dxlcWorkType', self, sender, 2);
end;

procedure TfrmEstimateManager.qryEstimateSumStageAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  if S_STATE = 'insert' then
  begin
    dmMain.IncreaseKeyData(208);
  end;
  S_STATE := '';
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TfrmEstimateManager.qryEstimateStageAfterPost(DataSet: TDataSet);
begin
  inherited;
  if E_STATE = 'insert' then
  begin
    dmMain.IncreaseKeyData(207);
  end;
  E_STATE := '';
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TfrmEstimateManager.dxDirectChange(Sender: TObject);
var
  i: integer;
begin
  inherited;
  for i := 0 //F_DETAIL_COLUMN_COUNT
  to gridEstimate.ColumnCount - 1 do
  begin
    if gridEstimate.Columns[i].BandIndex>0 then
    gridEstimate.Columns[i].Visible :=
      ((gridEstimate.Columns[i].Tag = -1) and (not dxDirect.Checked))
      or
      ((gridEstimate.Columns[i].Tag = -2) and dxDirect.Checked);
  end;
  if pagemain.ActivePage = tabDetail then
  begin
    if dxDirect.Checked <> dxDirectSum.Checked then
      dxDirectSum.Checked := dxDirect.Checked;
  end;
end;

procedure TfrmEstimateManager.dxDirectSumChange(Sender: TObject);
var
  i: integer;
begin
  inherited;
  for i := 0 to gridSummary.ColumnCount - 1 do
  begin
    if gridSummary.Columns[i].BandIndex>0 then
    gridSummary.Columns[i].Visible :=
      ((gridSummary.Columns[i].Tag = -1) and (not dxDirectSum.Checked))
      or
      ((gridSummary.Columns[i].Tag = -2) and dxDirectSum.Checked);
  end;
  if pagemain.ActivePage = tabSummary then
  begin
    if dxDirect.Checked <> dxDirectSum.Checked then
      dxDirect.Checked := dxDirectSum.Checked;
  end
end;

procedure TfrmEstimateManager.acViewUpdate(Sender: TObject);
begin
  inherited;
  acView.Enabled := (qryEstimateStageSTAGE_NO.isNull = false);
end;

procedure TfrmEstimateManager.acView_SummaryUpdate(Sender: TObject);
begin
  inherited;
  acView_Summary.Enabled := (qryEstimateSumStageSTAGE_NO.isNull = false);
end;

procedure TfrmEstimateManager.dxMoreOptionChange(Sender: TObject);
begin
  inherited;
  dxgroupViewMore.Visible := dxMoreOption.Checked;
end;

procedure TfrmEstimateManager.dxViewAllChange(Sender: TObject);
begin
  inherited;
  dxppWorkType.Enabled := not dxViewAll.Checked;
  F_DETAIL_SOMETHING_CHANGE := true;
end;

procedure TfrmEstimateManager.dxSumViewAllChange(Sender: TObject);
begin
  inherited;
  dxppWorkType_Summary.Enabled := not dxSumViewAll.Checked;
  F_SUM_SOMETHING_CHANGE := true;
end;

procedure TfrmEstimateManager.dxSumMoreOptionChange(Sender: TObject);
begin
  inherited;
  dxgroupSumViewMore.Visible := dxSumMoreOption.Checked;
end;

procedure TfrmEstimateManager.tlDeptListCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    if VarToStr(ANode.Values[tlDeptListENDED_DATE.Index]) = '' then
      AFont.Color := clBlack
    else
      AFont.Color := clRed;
  except
  end
end;

procedure TfrmEstimateManager.chkViewInvalidDeptChange(Sender: TObject);
begin
  inherited;
  with qryDeptList do
  begin
    DisableControls;
    if Active then
      Close;
    if chkViewInvalidDept.Checked then
      SQLWhere.Clear
    else
      SQLWhere.Text:='where ENDED_DATE is null';
    Prepare;
    Open;
    EnableControls;
  end;
  CustomExpand(tlDeptList);
end;

procedure TfrmEstimateManager.tlDeptList_1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    if VarToStr(ANode.Values[tlDeptList_1ENDED_DATE.Index]) = '' then
      AFont.Color := clBlack
    else
      AFont.Color := clRed;
  except
  end
end;

end.

