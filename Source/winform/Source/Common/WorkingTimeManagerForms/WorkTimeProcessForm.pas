unit WorkTimeProcessForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxExEdtr, dxEdLib, dxCntner, dxEditor,
  ActnList, ElBtnCtl, ElPopBtn, dxTL, dxDBCtrl, dxDBGrid, DB, DateTimeFrame,
  IBODataset, dxDBTLCl, dxGrClms, dxmdaset, dxfProgressBar, StdCtrls,
  ElCLabel, ElLabel, ExtCtrls, ElPgCtl;

type
  TfrmWorkTimeProcess = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxSelectDept: TdxPopupEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxSelectChild: TdxCheckEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    ActionList1: TActionList;
    acLaydulieuMaychamcong: TAction;
    gridRawData: TdxDBGrid;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dsRawData: TDataSource;
    dxLayoutControl1Item5: TdxLayoutItem;
    frameDateTime1: TframeDateTime;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    gridResult: TdxDBGrid;
    dxLayoutControl1Item6: TdxLayoutItem;
    dsResult: TDataSource;
    qryRawData: TIBOQuery;
    qryRawDataEMPLOYEE_NO: TWideStringField;
    qryRawDataFULL_NAME: TWideStringField;
    qryRawDataDEPT_NAME: TWideStringField;
    qryRawDataTITLE_NAME: TWideStringField;
    qryRawDataWORK_DATE: TDateField;
    qryRawDataSTART_TIME: TTimeField;
    qryRawDataEND_TIME: TTimeField;
    qryRawDataEND_DATE: TIntegerField;
    qryRawDataWHT_NO: TWideStringField;
    qryRawDataWHT_NAME: TWideStringField;
    qryRawDataWHT_COLOR: TIntegerField;
    gridRawDataEMPLOYEE_NO: TdxDBGridColumn;
    gridRawDataFULL_NAME: TdxDBGridColumn;
    gridRawDataDEPT_NAME: TdxDBGridColumn;
    gridRawDataTITLE_NAME: TdxDBGridColumn;
    gridRawDataWORK_DATE: TdxDBGridDateColumn;
    gridRawDataSTART_TIME: TdxDBGridTimeColumn;
    gridRawDataEND_TIME: TdxDBGridTimeColumn;
    gridRawDataWHT_NAME: TdxDBGridColumn;
    gridRawDataEND_DATE: TdxDBGridImageColumn;
    memResult: TdxMemData;
    memResultEMPLOYEE_NO: TWideStringField;
    memResultFULL_NAME: TWideStringField;
    memResultDEPT_NAME: TWideStringField;
    memResultTITLE_NAME: TWideStringField;
    memResultWORK_DATE: TDateField;
    memResultSTART_TIME: TTimeField;
    memResultWHT_NO: TWideStringField;
    memResultWHT_NAME: TWideStringField;
    memResultEND_TIME: TTimeField;
    memResultEND_DATE: TIntegerField;
    gridResultEMPLOYEE_NO: TdxDBGridColumn;
    gridResultFULL_NAME: TdxDBGridColumn;
    gridResultDEPT_NAME: TdxDBGridColumn;
    gridResultTITLE_NAME: TdxDBGridColumn;
    gridResultWORK_DATE: TdxDBGridDateColumn;
    gridResultSTART_TIME: TdxDBGridTimeColumn;
    gridResultWHT_NAME: TdxDBGridColumn;
    gridResultEND_TIME: TdxDBGridTimeColumn;
    gridResultEND_DATE: TdxDBGridImageColumn;
    dxLayoutControl1Group6: TdxLayoutGroup;
    qryRawDataLICH_LV_CHUAN: TWideStringField;
    qryWeekTime: TIBOQuery;
    dsWeekTime: TDataSource;
    qryRawDataWEEK_DATE_NO: TSmallintField;
    gridStandard: TdxDBGrid;
    gridStandardSTART_TIME: TdxDBGridTimeColumn;
    gridStandardWHT_NAME: TdxDBGridColumn;
    gridStandardWEEK_END_DATE: TdxDBGridImageColumn;
    gridStandardEND_TIME: TdxDBGridTimeColumn;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxpgBar: TdxfProgressBar;
    dxLayoutControl1Item7: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    acXuliDulieu: TAction;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    acLuuDulieu: TAction;
    qrySaveData: TIBOQuery;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    qryDeleteData: TIBOQuery;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl1Item16: TdxLayoutItem;
    acClose: TAction;
    qryWeekTimeSHIFT_NO: TWideStringField;
    qryWeekTimeSTART_TIME: TTimeField;
    qryWeekTimeEND_TIME: TTimeField;
    qryWeekTimeWHT_NAME: TWideStringField;
    qryWeekTimeWHT_NO: TWideStringField;
    qryWeekTimeEND_DATE: TIntegerField;
    lblDept: TdxEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    lblFromTo: TdxEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    lblEmployee: TdxEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    lblTime: TdxEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    ElPageControl1: TElPageControl;
    dxLayoutControl1Item10: TdxLayoutItem;
    ElTabSheet1: TElTabSheet;
    ElTabSheet2: TElTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl3Item1: TdxLayoutItem;
    gridBlankTime: TdxDBGrid;
    dxDBGridTimeColumn1: TdxDBGridTimeColumn;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridTimeColumn2: TdxDBGridTimeColumn;
    dxDBGridImageColumn1: TdxDBGridImageColumn;
    qryBlankWeekTime: TIBOQuery;
    dsBlankWeekTime: TDataSource;
    qryBlankData: TIBOQuery;
    qryBlankWeekTimeSHIFT_NO: TWideStringField;
    qryBlankWeekTimeSTART_TIME: TTimeField;
    qryBlankWeekTimeEND_TIME: TTimeField;
    qryBlankWeekTimeEND_DATE: TIntegerField;
    qryBlankWeekTimeWHT_NO: TWideStringField;
    qryBlankWeekTimeWHT_NAME: TWideStringField;
    memResultBLANK_TIME: TSmallintField;
    qryLateData: TIBOQuery;
    qryLateWeekTime: TIBOQuery;
    dsLateWeekTime: TDataSource;
    qryLateWeekTimeSHIFT_NO: TWideStringField;
    qryLateWeekTimeSTART_TIME: TTimeField;
    qryLateWeekTimeEND_TIME: TTimeField;
    qryLateWeekTimeEND_DATE: TIntegerField;
    qryLateWeekTimeWHT_NO: TWideStringField;
    qryLateWeekTimeWHT_NAME: TWideStringField;
    qrySoonData: TIBOQuery;
    ElTabSheet3: TElTabSheet;
    ElTabSheet4: TElTabSheet;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    dxLayoutControl4Item1: TdxLayoutItem;
    dxDBGrid1: TdxDBGrid;
    dxDBGridTimeColumn3: TdxDBGridTimeColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridTimeColumn4: TdxDBGridTimeColumn;
    dxDBGridImageColumn2: TdxDBGridImageColumn;
    dxLayoutControl5Item1: TdxLayoutItem;
    dxDBGrid2: TdxDBGrid;
    dxDBGridTimeColumn5: TdxDBGridTimeColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridTimeColumn6: TdxDBGridTimeColumn;
    dxDBGridImageColumn3: TdxDBGridImageColumn;
    qrySoonWeekTime: TIBOQuery;
    dsSoonWeekTime: TDataSource;
    qrySoonWeekTimeSHIFT_NO: TWideStringField;
    qrySoonWeekTimeSTART_TIME: TTimeField;
    qrySoonWeekTimeEND_TIME: TTimeField;
    qrySoonWeekTimeEND_DATE: TIntegerField;
    qrySoonWeekTimeWHT_NO: TWideStringField;
    qrySoonWeekTimeWHT_NAME: TWideStringField;
    ElPageControl2: TElPageControl;
    dxLayoutControl1Item8: TdxLayoutItem;
    ElTabSheet5: TElTabSheet;
    ElTabSheet6: TElTabSheet;
    ElTabSheet7: TElTabSheet;
    ElTabSheet8: TElTabSheet;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutControl6: TdxLayoutControl;
    dxLayoutControl6Item1: TdxLayoutItem;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutControl7: TdxLayoutControl;
    dxLayoutControl8: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl9: TdxLayoutControl;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl7Item1: TdxLayoutItem;
    dxDBGrid3: TdxDBGrid;
    dxLayoutControl8Item1: TdxLayoutItem;
    dxDBGrid4: TdxDBGrid;
    dxLayoutControl9Item1: TdxLayoutItem;
    dxDBGrid5: TdxDBGrid;
    dsBlankData: TDataSource;
    dsLateData: TDataSource;
    dsSoonData: TDataSource;
    qryBlankDataEMPLOYEE_NO: TWideStringField;
    qryBlankDataFULL_NAME: TWideStringField;
    qryBlankDataDEPT_NAME: TWideStringField;
    qryBlankDataTITLE_NAME: TWideStringField;
    qryBlankDataWORK_DATE: TDateField;
    qryBlankDataSTART_TIME: TTimeField;
    qryBlankDataEND_TIME: TTimeField;
    qryLateDataEMPLOYEE_NO: TWideStringField;
    qryLateDataFULL_NAME: TWideStringField;
    qryLateDataDEPT_NAME: TWideStringField;
    qryLateDataTITLE_NAME: TWideStringField;
    qryLateDataWORK_DATE: TDateField;
    qryLateDataSTART_TIME: TTimeField;
    qryLateDataEND_TIME: TTimeField;
    qrySoonDataEMPLOYEE_NO: TWideStringField;
    qrySoonDataFULL_NAME: TWideStringField;
    qrySoonDataDEPT_NAME: TWideStringField;
    qrySoonDataTITLE_NAME: TWideStringField;
    qrySoonDataWORK_DATE: TDateField;
    qrySoonDataSTART_TIME: TTimeField;
    qrySoonDataEND_TIME: TTimeField;
    dxDBGrid3EMPLOYEE_NO: TdxDBGridMaskColumn;
    dxDBGrid3FULL_NAME: TdxDBGridMaskColumn;
    dxDBGrid3DEPT_NAME: TdxDBGridMaskColumn;
    dxDBGrid3TITLE_NAME: TdxDBGridMaskColumn;
    dxDBGrid3WORK_DATE: TdxDBGridDateColumn;
    dxDBGrid3START_TIME: TdxDBGridTimeColumn;
    dxDBGrid3END_TIME: TdxDBGridTimeColumn;
    dxDBGrid4EMPLOYEE_NO: TdxDBGridMaskColumn;
    dxDBGrid4FULL_NAME: TdxDBGridMaskColumn;
    dxDBGrid4DEPT_NAME: TdxDBGridMaskColumn;
    dxDBGrid4TITLE_NAME: TdxDBGridMaskColumn;
    dxDBGrid4WORK_DATE: TdxDBGridDateColumn;
    dxDBGrid4START_TIME: TdxDBGridTimeColumn;
    dxDBGrid4END_TIME: TdxDBGridTimeColumn;
    dxDBGrid5EMPLOYEE_NO: TdxDBGridMaskColumn;
    dxDBGrid5FULL_NAME: TdxDBGridMaskColumn;
    dxDBGrid5DEPT_NAME: TdxDBGridMaskColumn;
    dxDBGrid5TITLE_NAME: TdxDBGridMaskColumn;
    dxDBGrid5WORK_DATE: TdxDBGridDateColumn;
    dxDBGrid5START_TIME: TdxDBGridTimeColumn;
    dxDBGrid5END_TIME: TdxDBGridTimeColumn;
    qryRawDataDEPT_NO: TWideStringField;
    memResultDEPT_NO: TWideStringField;
    qryWeekTimeFOR_EMP_NO: TWideStringField;
    qryWeekTimeNOTE: TWideStringField;
    memResultFOR_EMP_NO: TWideStringField;
    gridResultFOR_EMP_NO: TdxDBGridColumn;
    qryWeekTimeSTART_DATE: TIntegerField;
    gridStandardSTART_DATE: TdxDBGridColumn;
    memResultSTART_DATE: TIntegerField;
    qryRawDataSTART_DATE: TIntegerField;
    gridRawDataSTART_DATE: TdxDBGridImageColumn;
    memResultTITLE_NO: TWideStringField;
    qryRawDataTITLE_NO: TWideStringField;
    gridResultTITLE_NO: TdxDBGridMaskColumn;
    qryBlankDataTITLE_NO: TWideStringField;
    qryLateDataTITLE_NO: TWideStringField;
    qrySoonDataTITLE_NO: TWideStringField;
    qryBlankDataDEPT_NO: TWideStringField;
    qryLateDataDEPT_NO: TWideStringField;
    qrySoonDataDEPT_NO: TWideStringField;
    procedure acLaydulieuMaychamcongExecute(Sender: TObject);
    procedure dxSelectDeptInitPopup(Sender: TObject);
    procedure dxSelectDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acXuliDulieuExecute(Sender: TObject);
    procedure acXuliDulieuUpdate(Sender: TObject);
    procedure AnalyseWorkTime;
    procedure memResultNewRecord(DataSet: TDataSet);
    procedure gridRawDataChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure acLuuDulieuExecute(Sender: TObject);
    procedure acLuuDulieuUpdate(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    {Phuc add}
    procedure AnalyseLateTime;
    procedure AnalyseSoonTime;
    procedure AnalyseBlankTime;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    {}
  private
    { Private declarations }
    F_DEPT_NO, F_DEPT_NAME: WideString;
    F_SAVE_DEPT_NO:WideString;
    F_SAVE_VIEW_ALL:integer;
    F_SAVE_FROM_DATE,F_SAVE_TO_DATE:TDate;
    F_STATE:string;
    F_anlyze : integer;
    is_ok :boolean;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; DEPT_NO, DEPT_NAME: WideString; FROM_DATE, TO_DATE: TDate);
    function GetStatusFinish:boolean;

  end;

var
  frmWorkTimeProcess: TfrmWorkTimeProcess;

implementation

uses MainDM, PopupMainForm, SSP_Library;

{$R *.dfm}

constructor TfrmWorkTimeProcess.Create(AOwner: TComponent; DEPT_NO, DEPT_NAME: WideString; FROM_DATE, TO_DATE: TDate);
begin
  F_DEPT_NO := DEPT_NO;
  F_DEPT_NAME := DEPT_NAME;
  inherited Create(AOwner);
  dxSelectDept.Text := F_DEPT_NAME;
  frameDateTime1.InitViewData;
  frameDateTime1.dxFromDate.Date := FROM_DATE;
  frameDateTime1.dxToDate.Date := TO_DATE;
  acLaydulieuMaychamcong.Execute;
  {Phuc add}
  is_ok := false;
  {}
end;

procedure TfrmWorkTimeProcess.acLaydulieuMaychamcongExecute(
  Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  qryRawData.DisableControls;
  qryWeekTime.DisableControls;
  if qryRawData.Active then
    qryRawData.Close;
  qryRawData.ParamByName('DEPT_NO').Value := F_DEPT_NO;
  if dxSelectChild.Checked then
    qryRawData.ParamByName('VIEW_ALL').Value := 1
  else
    qryRawData.ParamByName('VIEW_ALL').Value := 0;
  qryRawData.ParamByName('FROM_DATE').Value := frameDateTime1.GetBeginDate;
  qryRawData.ParamByName('TO_DATE').Value := frameDateTime1.GetEndDate;

  {Phuc add}
  if qryBlankData.Active then
    qryBlankData.Close;
  qryBlankData.ParamByName('DEPT_NO').Value := F_DEPT_NO;
  if dxSelectChild.Checked then
    qryBlankData.ParamByName('VIEW_ALL').Value := 1
  else
    qryBlankData.ParamByName('VIEW_ALL').Value := 0;
  qryBlankData.ParamByName('FROM_DATE').Value := frameDateTime1.GetBeginDate;
  qryBlankData.ParamByName('TO_DATE').Value := frameDateTime1.GetEndDate;
  qryBlankData.Open;

  if qryLateData.Active then
    qryLateData.Close;
  qryLateData.ParamByName('DEPT_NO').Value := F_DEPT_NO;
  if dxSelectChild.Checked then
    qryLateData.ParamByName('VIEW_ALL').Value := 1
  else
    qryLateData.ParamByName('VIEW_ALL').Value := 0;
  qryLateData.ParamByName('FROM_DATE').Value := frameDateTime1.GetBeginDate;
  qryLateData.ParamByName('TO_DATE').Value := frameDateTime1.GetEndDate;
  qryLateData.Open;

  if qrySoonData.Active then
    qrySoonData.Close;
  qrySoonData.ParamByName('DEPT_NO').Value := F_DEPT_NO;
  if dxSelectChild.Checked then
    qrySoonData.ParamByName('VIEW_ALL').Value := 1
  else
    qrySoonData.ParamByName('VIEW_ALL').Value := 0;
  qrySoonData.ParamByName('FROM_DATE').Value := frameDateTime1.GetBeginDate;
  qrySoonData.ParamByName('TO_DATE').Value := frameDateTime1.GetEndDate;
  qrySoonData.Open;

  if qryBlankWeekTime.Active then
    qryBlankWeekTime.Refresh
  else
    qryBlankWeekTime.Open;
  if qryLateWeekTime.Active then
    qryLateWeekTime.Refresh
  else
    qryLateWeekTime.Open;
  if qrySoonWeekTime.Active then
    qrySoonWeekTime.Refresh
  else
    qrySoonWeekTime.Open;
  {}

  qryRawData.Open;
  qryRawData.EnableControls;
  gridRawData.FullExpand;
  if qryWeekTime.Active then
    qryWeekTime.Refresh
  else
    qryWeekTime.Open;

  {Phuc add}
  if qryBlankData.Active then
    qryBlankData.Refresh
  else
    qryBlankData.Open;
  {}
  
  qryWeekTime.EnableControls;
  F_SAVE_FROM_DATE:=frameDateTime1.GetBeginDate;
  F_SAVE_TO_DATE:=frameDateTime1.GetEndDate;
  F_SAVE_DEPT_NO:=F_DEPT_NO;
  if dxSelectChild.Checked then
    F_SAVE_VIEW_ALL:=1
  else
    F_SAVE_VIEW_ALL:=0;
  F_STATE:='GET_DATA';  
  Screen.Cursor := crDefault;

  
end;

procedure TfrmWorkTimeProcess.dxSelectDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmWorkTimeProcess.dxSelectDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    F_DEPT_NO := frmPopupMain.qryDeptListDEPT_NO.Value;
    F_DEPT_NAME := frmPopupMain.qryDeptListDEPT_NAME.Value;
    Text:=F_DEPT_NAME;

  end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmWorkTimeProcess.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryWeekTime.Close;
  qryBlankWeekTime.Close;
  qryLateWeekTime.Close;
  qryRawData.Close;
  qryBlankData.close;
end;

procedure TfrmWorkTimeProcess.AnalyseWorkTime;
var finished: boolean;
  raw_start_time, raw_end_time,raw_real_end_time: TDateTime;
  raw_end_date, raw_start_date:Integer;
  record_count, current_record : integer;
  record_count_raw : integer; {Phuc add}
begin
  qryWeekTime.Refresh;
  if qryWeekTime.IsEmpty then exit;
  raw_start_time := qryRawDataSTART_TIME.Value;
  raw_end_time := qryRawDataEND_TIME.Value;
  raw_end_date:=qryRawDataEND_DATE.Value;
  raw_start_date:=qryRawDataSTART_DATE.Value;
  raw_real_end_time:=raw_end_time+raw_end_date;

  qryWeekTime.First;
  finished := false;
  {Phuc add}
  current_record := 1; {Phuc add}
  record_count := qryWeekTime.RecordCount; {Phuc add}
  record_count_Raw := qryRawData.RecordCount;
  {}
  while not qryWeekTime.Eof do
  begin
    //================================================================
    if raw_start_time < qryWeekTimeSTART_TIME.Value then
    begin
      if raw_real_end_time > qryWeekTimeSTART_TIME.Value then
      begin
        {Phuc add}
        memResult.Append;
        memResultSTART_TIME.Value := raw_start_time;
        memResultEND_TIME.Value := qryWeekTimeSTART_TIME.Value;
        memResultDEPT_NO.Value := qryRawDataDEPT_NO.Value;
        memResultTITLE_NO.Value := qryRawDataTITLE_NO.Value;
        if not qryWeekTimeFOR_EMP_NO.IsNull then
          memResultFOR_EMP_NO.Value := qryWeekTimeFOR_EMP_NO.Value
        else
          memResultFOR_EMP_NO.clear;
        memResult.post;
        {}
        memResult.Append;
        memResultDEPT_NO.Value := qryRawDataDEPT_NO.Value;
        memResultTITLE_NO.Value := qryRawDataTITLE_NO.Value;
        if not qryWeekTimeFOR_EMP_NO.IsNull then
          memResultFOR_EMP_NO.Value := qryWeekTimeFOR_EMP_NO.Value
        else
          memResultFOR_EMP_NO.clear;
        memResultSTART_TIME.Value := qryWeekTimeSTART_TIME.Value;
        if raw_real_end_time <= (qryWeekTimeEND_TIME.Value+qryWeekTimeEND_DATE.Value) then
        begin
          memResultEND_TIME.Value := raw_end_time;
          memResultEND_DATE.Value:=raw_end_date;
          {Phuc add}
          memResultSTART_DATE.Value:=raw_start_date;
          {}
          finished := true;
        end
        else
        begin
          memResultEND_TIME.Value := qryWeekTimeEND_TIME.Value;
          memResultEND_DATE.Value:=qryWeekTimeEND_DATE.Value;
          memResultSTART_DATE.Value:=qryWeekTimeSTART_DATE.Value; {Phuc add}
          raw_start_time := (qryWeekTimeEND_TIME.Value+qryWeekTimeEND_DATE.Value);
        end;
        memResultWHT_NO.Value := qryWeekTimeWHT_NO.Value;
        memResultWHT_NAME.Value := qryWeekTimeWHT_NAME.Value;
        {Phuc add}
        
        {}
        if memResultSTART_TIME.Value<(memResultEND_TIME.Value+memResultEND_DATE.Value) then
          memResult.Post
        else
          memResult.Cancel;
      end
      {Phuc add}
      else
      begin
        memResult.Append;
        memResultSTART_TIME.Value := raw_start_time;
        memResultEND_TIME.Value := raw_end_time;
        memResultDEPT_NO.Value := qryRawDataDEPT_NO.Value;
        memResultTITLE_NO.Value := qryRawDataTITLE_NO.Value;
        if not qryWeekTimeFOR_EMP_NO.IsNull then
          memResultFOR_EMP_NO.Value := qryWeekTimeFOR_EMP_NO.Value
        else
          memResultFOR_EMP_NO.clear;
        memResult.post;
        finished := true;
      end;
      {}
    end
    else
    //================================================================
    if (raw_start_time >= qryWeekTimeSTART_TIME.Value) and
       (raw_start_time < (qryWeekTimeEND_TIME.Value+qryWeekTimeEND_DATE.Value))
    then
    begin
      if raw_real_end_time > qryWeekTimeSTART_TIME.Value then
      begin
        //memResult.Append;    {Phuc rao`}
        //memResultSTART_TIME.Value := raw_start_time; {Phuc rao`}
        if raw_real_end_time <= (qryWeekTimeEND_TIME.Value+qryWeekTimeEND_DATE.Value)
        then
        begin
          {Phuc add}
          memResult.Append;
          memResultSTART_TIME.Value := raw_start_time;
          memResultDEPT_NO.Value := qryRawDataDEPT_NO.Value;
          memResultTITLE_NO.Value := qryRawDataTITLE_NO.Value;
          if not qryWeekTimeFOR_EMP_NO.IsNull then
            memResultFOR_EMP_NO.Value := qryWeekTimeFOR_EMP_NO.Value
          else
            memResultFOR_EMP_NO.clear;
          {}
          memResultEND_TIME.Value := raw_end_time;
          memResultEND_DATE.Value := raw_end_date;
          memResultSTART_DATE.Value := raw_start_date;   {Phuc add}
          finished := true;
        end
        else
        begin
          {Phuc add}
          memResult.Append;
          memResultSTART_TIME.Value := raw_start_time;
          memResultDEPT_NO.Value := qryRawDataDEPT_NO.Value;
          memResultTITLE_NO.Value := qryRawDataTITLE_NO.Value;
          if not qryWeekTimeFOR_EMP_NO.IsNull then
            memResultFOR_EMP_NO.Value := qryWeekTimeFOR_EMP_NO.Value
          else
            memResultFOR_EMP_NO.clear;
          {}
          memResultEND_TIME.Value := qryWeekTimeEND_TIME.Value; 
          memResultEND_DATE.Value:=qryWeekTimeEND_DATE.Value;
          memResultSTART_DATE.Value:=qryWeekTimeSTART_DATE.Value; {Phuc add}
          raw_start_time := qryWeekTimeEND_TIME.Value+qryWeekTimeEND_DATE.Value;

          {Phuc add}
          //if record_count = current_record then
          if (raw_start_time >= qryWeekTimeEND_TIME.Value) and
             (qryWeekTime.RecNo = record_count)
             then
          begin
            memResultWHT_NO.Value := qryWeekTimeWHT_NO.Value;
            memResultWHT_NAME.Value := qryWeekTimeWHT_NAME.Value;
            memResult.Post;
            //--
            memResult.Append;
            memResultSTART_TIME.Value := raw_start_time;
            memResultEND_TIME.Value := raw_end_time;
            memResultDEPT_NO.Value := qryRawDataDEPT_NO.Value;
            memResultTITLE_NO.Value := qryRawDataTITLE_NO.Value;
            if not qryWeekTimeFOR_EMP_NO.IsNull then
              memResultFOR_EMP_NO.Value := qryWeekTimeFOR_EMP_NO.Value
            else
              memResultFOR_EMP_NO.clear;
            memResult.Post;
            Exit;
          end;   
          {}
        end;
        memResultWHT_NO.Value := qryWeekTimeWHT_NO.Value;
        memResultWHT_NAME.Value := qryWeekTimeWHT_NAME.Value;
        {Phuc add}
        {}
        memResult.Post;
      end
    end
    {Phuc add}
    {else
    if (raw_start_time > (qryWeekTimeEND_TIME.Value+qryWeekTimeEND_DATE.Value)) and
       (record_count = current_record) then
    begin
      memResult.Append;
      memResultSTART_TIME.Value := raw_start_time;
      memResultEND_TIME.Value := raw_end_time;
      memResult.post;
      finished := true;
    end;} 
    {} ;
    //=================================================================
    if finished then
      Exit
    else
    begin
      qryWeektime.Next;
      current_record := current_record + 1;  {Phuc add}
    end;
  end;
  {Phuc add}
  qryWeekTime.Last;
  if raw_start_time >= qryWeekTimeEND_TIME.Value then
  begin
    memResult.Append;
    memResultDEPT_NO.Value := qryRawDataDEPT_NO.Value;
    memResultTITLE_NO.Value := qryRawDataTITLE_NO.Value;
    if not qryWeekTimeFOR_EMP_NO.IsNull then
       memResultFOR_EMP_NO.Value := qryWeekTimeFOR_EMP_NO.Value
    else
       memResultFOR_EMP_NO.clear;
    memResultSTART_TIME.Value := raw_start_time;
    memResultEND_TIME.Value := raw_end_time;
    memResult.post;
  end;
  {}
end;

procedure TfrmWorkTimeProcess.acXuliDulieuExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  memResult.DisableControls;
  qryRawData.DisableControls;
  qryWeekTime.DisableControls;
  lblDept.Text:=F_DEPT_NAME;
  lblFromTo.Text:=DateToStr(F_SAVE_FROM_DATE)+' ---> '+DateToStr(F_SAVE_TO_DATE);
  if memResult.Active then memResult.Close;
  dxpgBar.Max := qryRawData.RecordCount;
  dxpgBar.Position := 0;
  qryRawData.First;
  if memResult.Active then
    memResult.Close;
  memResult.Open;
  while not qryRawData.Eof do
  begin
    // xu li dong du lieu hien tai
    //===========================================================
    lblEmployee.Text:=qryRawDataFULL_NAME.Value;
    lblTime.Text:=qryRawDataSTART_TIME.AsString+' ---> '+qryRawDataEND_TIME.AsString;
    F_anlyze := 0;
    AnalyseWorkTime;
    // ==========================================================
    qryRawData.Next;
    dxpgBar.StepIt;
  end;
  {Phuc add}

  if qryBlankData.Active then
    qryBlankData.Refresh
  else
    qryBlankData.Open;
  if (qryBlankData.RecordCount > 0)  then
  begin
    dxpgBar.Max := qryBlankData.RecordCount;
    dxpgBar.Position := 0;

    qryBlankData.First;
    while not qryBlankData.Eof do
    begin
      // xu li dong du lieu hien tai
      //===========================================================
      F_anlyze := 1;
      AnalyseBlankTime;
      // ==========================================================
      qryBlankData.Next;
      dxpgBar.StepIt;
    end;
  end;

  //------
  if qryLateData.Active then
    qryLateData.Refresh
  else
    qryLateData.Open;
  if (qryLateData.RecordCount > 0) then
  begin
    dxpgBar.Max := qryLateData.RecordCount;
    dxpgBar.Position := 0;

    qryLateData.First;
    while not qryLateData.Eof do
    begin
      // xu li dong du lieu hien tai
      //===========================================================
      F_anlyze := 2;
      AnalyseLateTime;
      // ==========================================================
      qryLateData.Next;
      dxpgBar.StepIt;
    end;
  end;

  //------
  if qrySoonData.Active then
    qrySoonData.Refresh
  else
    qrySoonData.Open;
  if (qrySoonData.RecordCount > 0)  then
  begin
    dxpgBar.Max := qrySoonData.RecordCount;
    dxpgBar.Position := 0;

    qrySoonData.First;
    while not qrySoonData.Eof do
    begin
      // xu li dong du lieu hien tai
      //===========================================================
      F_anlyze := 3;
      AnalyseSoonTime;
      // ==========================================================
      qrySoonData.Next;
      dxpgBar.StepIt;
    end;
  end;
  {}
  memResult.EnableControls;
  gridResult.FullExpand;
  qryRawData.EnableControls;
  qryWeekTime.EnableControls;
  qryWeekTime.Refresh;
  F_STATE:='IS_PROCESSING';
  Screen.Cursor := crDefault;
end;

procedure TfrmWorkTimeProcess.acXuliDulieuUpdate(Sender: TObject);
begin
  inherited;
  acXulidulieu.Enabled := not qryRawData.IsEmpty;
end;

procedure TfrmWorkTimeProcess.memResultNewRecord(DataSet: TDataSet);
begin
  inherited;
  if F_anlyze = 0 then
  begin
    memResultEMPLOYEE_NO.Value := qryRawDataEMPLOYEE_NO.Value;
    memResultFULL_NAME.Value := qryRawDataFULL_NAME.Value;
    memResultDEPT_NAME.Value := qryRawDataDEPT_NAME.Value;
    memResultTITLE_NAME.Value := qryRawDataTITLE_NAME.Value;
    memResultWORK_DATE.Value := qryRawDataWORK_DATE.Value;
  end
  else
  if F_anlyze = 1 then
  begin
    memResultEMPLOYEE_NO.Value := qryBlankDataEMPLOYEE_NO.Value;
    memResultFULL_NAME.Value := qryBlankDataFULL_NAME.Value;
    memResultDEPT_NAME.Value := qryBlankDataDEPT_NAME.Value;
    memResultTITLE_NAME.Value := qryBlankDataTITLE_NAME.Value;
    memResultWORK_DATE.Value := qryBlankDataWORK_DATE.Value;
  end
  else
  if F_anlyze = 2 then
  begin
    memResultEMPLOYEE_NO.Value := qryLateDataEMPLOYEE_NO.Value;
    memResultFULL_NAME.Value := qryLateDataFULL_NAME.Value;
    memResultDEPT_NAME.Value := qryLateDataDEPT_NAME.Value;
    memResultTITLE_NAME.Value := qryLateDataTITLE_NAME.Value;
    memResultWORK_DATE.Value := qryLateDataWORK_DATE.Value;
  end
  else
  if F_anlyze = 3 then
  begin
    memResultEMPLOYEE_NO.Value := qrySoonDataEMPLOYEE_NO.Value;
    memResultFULL_NAME.Value := qrySoonDataFULL_NAME.Value;
    memResultDEPT_NAME.Value := qrySoonDataDEPT_NAME.Value;
    memResultTITLE_NAME.Value := qrySoonDataTITLE_NAME.Value;
    memResultWORK_DATE.Value := qrySoonDataWORK_DATE.Value;
  end;
end;

procedure TfrmWorkTimeProcess.gridRawDataChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  lblEmployee.Text:=qryRawDataFULL_NAME.Value;
  lblTime.Text:=qryRawDataSTART_TIME.AsString+' ---> '+qryRawDataEND_TIME.AsString;
end;

procedure TfrmWorkTimeProcess.acLuuDulieuExecute(Sender: TObject);
var cur_date:TDate;
    cur_emp:WideString;
    cur_start_time :TDateTime;
begin
  inherited;
  //
  Screen.Cursor:=crSQLWait;
  memResult.DisableControls;

  try
    dmMain.RollbackTransaction;
    qryDeleteData.Prepare;
    qrySaveData.Prepare;

    memResult.First;

    while not memResult.Eof do
    begin
      //kiemtra xoa du lieu
      if (cur_date<>memResultWORK_DATE.Value)or
         (cur_emp<>memResultEMPLOYEE_NO.Value) or
         (cur_start_time<>memResultSTART_TIME.Value) {Phuc add}
      then
      begin
        qryDeleteData.ParamByName('EMPLOYEE_NO').Value:=memResultEMPLOYEE_NO.Value;
        qryDeleteData.ParamByName('AT_DATE').Value:=memResultWORK_DATE.Value;
        {Phuc add}
        qryDeleteData.ParamByName('start_time').Value:=memResultSTART_TIME.Value;
        qryDeleteData.ParamByName('dept_no').Value:=memResultDEPT_NO.Value;
        qryDeleteData.ParamByName('title_no').Value:=memResultTITLE_NO.Value;
        {}
        dmMain.ExecuteSQL(qryDeleteData);
        cur_date:=memResultWORK_DATE.Value;
        cur_emp:=memResultEMPLOYEE_NO.Value;
        cur_start_time:= memResultSTART_TIME.Value; {Phuc add}
      end;

      qrySaveData.ParamByName('EMPLOYEE_NO').Value := memResultEMPLOYEE_NO.Value;
      qrySaveData.ParamByName('START_TIME').Value := memResultSTART_TIME.Value;
      qrySaveData.ParamByName('WORK_DATE').Value := memResultWORK_DATE.Value;
      qrySaveData.ParamByName('END_TIME').Value := memResultEND_TIME.Value;
      qrySaveData.ParamByName('END_DATE').Value := memResultEND_DATE.Value;
      qrySaveData.ParamByName('START_DATE').Value := memResultSTART_DATE.Value; {Phuc add}
      if not memResultWHT_NO.IsNull then {Phuc add}
        qrySaveData.ParamByName('WHT_NO').Value := memResultWHT_NO.Value
      else
        qrySaveData.ParamByName('WHT_NO').Clear;

      {Phuc add}
      qrySaveData.ParamByName('dept_no').Value:=memResultDEPT_NO.Value;
      qrySaveData.ParamByName('title_no').Value:=memResultTITLE_NO.Value;
      qrySaveData.ParamByName('FOR_EMP_NO').Value:=memResultFOR_EMP_NO.Value;

      if memResultBLANK_TIME.IsNull then
        qrySaveData.ParamByName('BLANK_TIME').Clear
      else
        qrySaveData.ParamByName('BLANK_TIME').Value := memResultBLANK_TIME.Value;

      if memResultFOR_EMP_NO.IsNull then
        qrySaveData.ParamByName('FOR_EMP_NO').Clear
      else
         qrySaveData.ParamByName('FOR_EMP_NO').Value:=memResultFOR_EMP_NO.Value;
      {}
      
      dmMain.ExecuteSQL(qrySaveData);

      memResult.Next;
    end;
    dmMain.CommitTransaction;
    ShowMessageUnicode(63);
    qryRawData.Refresh;

    {Phuc add}
    is_ok := true;
    {}
  except
  end;
  memResult.EnableControls;
  Screen.Cursor:=crDefault;
  F_STATE := 'FINISHED';
end;

procedure TfrmWorkTimeProcess.acLuuDulieuUpdate(Sender: TObject);
begin
  inherited;
  acLuuDulieu.Enabled:=(F_STATE='IS_PROCESSING') and
   (memResult.IsEmpty=false);
end;

procedure TfrmWorkTimeProcess.acCloseExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrOk;
end;

procedure TfrmWorkTimeProcess.AnalyseBlankTime;
var finished: boolean;
  raw_start_time, raw_end_time,raw_real_end_time: TDateTime;
  raw_end_date:Integer;
  record_count, current_record : integer;
begin
  qryBlankWeekTime.Refresh;
  if qryBlankWeekTime.IsEmpty then exit;
  raw_start_time := qryBlankDataSTART_TIME.Value;
  raw_end_time := qryBlankDataEND_TIME.Value;
  raw_end_date := 0;
  raw_real_end_time:=raw_end_time+raw_end_date;

  qryBlankWeekTime.First;
  finished := false;
  while not qryBlankWeekTime.Eof do
  begin
    //================================================================
    if raw_start_time < qryBlankWeekTimeSTART_TIME.Value then
    begin
      if raw_real_end_time > qryBlankWeekTimeSTART_TIME.Value then
      begin
        memResult.Append;
        //memResultEMPLOYEE_NO.Value := qryBlankDataEMPLOYEE_NO.Value;
        //memResultWORK_DATE.Value := qryBlankDataWORK_DATE.Value;
        memResultSTART_TIME.Value := qryBlankWeekTimeSTART_TIME.Value;
        memResultDEPT_NO.Value := qryBlankDataDEPT_NO.Value; {Phuc add}
        memResultTITLE_NO.Value := qryBlankDataTITLE_NO.Value; {Phuc add}
        if raw_real_end_time <= (qryBlankWeekTimeEND_TIME.Value+qryBlankWeekTimeEND_DATE.Value) then
        begin
          memResultEND_TIME.Value := raw_end_time;
          memResultEND_DATE.Value:=raw_end_date;
          finished := true;
        end
        else
        begin
          memResultEND_TIME.Value := qryBlankWeekTimeEND_TIME.Value;
          memResultEND_DATE.Value:=qryBlankWeekTimeEND_DATE.Value;
          raw_start_time := (qryBlankWeekTimeEND_TIME.Value+qryBlankWeekTimeEND_DATE.Value);
        end;
        memResultWHT_NO.Value := qryBlankWeekTimeWHT_NO.Value;
        memResultWHT_NAME.Value := qryBlankWeekTimeWHT_NAME.Value;
        memResultBLANK_TIME.Value := 1;
        if memResultSTART_TIME.Value<(memResultEND_TIME.Value+memResultEND_DATE.Value) then
          memResult.Post
        else
          memResult.Cancel;
      end
    end
    else
    //================================================================
    if (raw_start_time >= qryBlankWeekTimeSTART_TIME.Value) and
       (raw_start_time < (qryBlankWeekTimeEND_TIME.Value+qryBlankWeekTimeEND_DATE.Value))
    then
    begin
      if raw_real_end_time > qryBlankWeekTimeSTART_TIME.Value then
      begin
        memResult.Append;
        //memResultEMPLOYEE_NO.Value := qryBlankDataEMPLOYEE_NO.Value;
        //memResultWORK_DATE.Value := qryBlankDataWORK_DATE.Value;
        memResultDEPT_NO.Value := qryBlankDataDEPT_NO.Value; {Phuc add}
        memResultTITLE_NO.Value := qryBlankDataTITLE_NO.Value; {Phuc add}
        memResultSTART_TIME.Value := raw_start_time;
        if raw_real_end_time <= (qryBlankWeekTimeEND_TIME.Value+qryBlankWeekTimeEND_DATE.Value)
        then
        begin
          memResultEND_TIME.Value := raw_end_time;
          memResultEND_DATE.Value := raw_end_date;
          finished := true;
        end
        else
        begin
          memResultEND_TIME.Value := qryBlankWeekTimeEND_TIME.Value;
          memResultEND_DATE.Value:=qryBlankWeekTimeEND_DATE.Value;
          raw_start_time := qryBlankWeekTimeEND_TIME.Value+qryBlankWeekTimeEND_DATE.Value;
        end;
        memResultWHT_NO.Value := qryBlankWeekTimeWHT_NO.Value;
        memResultWHT_NAME.Value := qryBlankWeekTimeWHT_NAME.Value;
        memResultBLANK_TIME.Value := 1;
        memResult.Post;
      end
    end;
    //=================================================================
    if finished then
      Exit
    else
    begin
      qryBlankWeekTime.Next;
    end;
  end;
end;

procedure TfrmWorkTimeProcess.AnalyseLateTime;
var finished: boolean;
  raw_start_time, raw_end_time,raw_real_end_time: TDateTime;
  raw_end_date:Integer;
  record_count, current_record : integer;
begin
  qryLateWeekTime.Refresh;
  if qryLateWeekTime.IsEmpty then exit;
  raw_start_time := qryLateDataSTART_TIME.Value;
  raw_end_time := qryLateDataEND_TIME.Value;
  raw_end_date := 0;
  raw_real_end_time:=raw_end_time+raw_end_date;

  qryLateWeekTime.First;
  finished := false;
  while not qryLateWeekTime.Eof do
  begin
    //================================================================
    if raw_start_time < qryLateWeekTimeSTART_TIME.Value then
    begin
      if raw_real_end_time > qryLateWeekTimeSTART_TIME.Value then
      begin
        memResult.Append;
        //memResultEMPLOYEE_NO.Value := qrylateDataEMPLOYEE_NO.Value;
        //memResultWORK_DATE.Value := qryLateDataWORK_DATE.Value;
        memResultDEPT_NO.Value := qryLateDataDEPT_NO.Value; {Phuc add}
        memResultTITLE_NO.Value := qryLateDataTITLE_NO.Value; {Phuc add}
        memResultSTART_TIME.Value := qryLateWeekTimeSTART_TIME.Value;
        if raw_real_end_time <= (qryLateWeekTimeEND_TIME.Value+qryLateWeekTimeEND_DATE.Value) then
        begin
          memResultEND_TIME.Value := raw_end_time;
          memResultEND_DATE.Value:=raw_end_date;
          finished := true;
        end
        else
        begin
          memResultEND_TIME.Value := qryLateWeekTimeEND_TIME.Value;
          memResultEND_DATE.Value:=qryLateWeekTimeEND_DATE.Value;
          raw_start_time := (qryLateWeekTimeEND_TIME.Value+qryLateWeekTimeEND_DATE.Value);
        end;
        memResultWHT_NO.Value := qryLateWeekTimeWHT_NO.Value;
        memResultWHT_NAME.Value := qryLateWeekTimeWHT_NAME.Value;
        memResultBLANK_TIME.Value := 1;
        if memResultSTART_TIME.Value<(memResultEND_TIME.Value+memResultEND_DATE.Value) then
          memResult.Post
        else
          memResult.Cancel;
      end
    end
    else
    //================================================================
    if (raw_start_time >= qryLateWeekTimeSTART_TIME.Value) and
       (raw_start_time < (qryLateWeekTimeEND_TIME.Value+qryLateWeekTimeEND_DATE.Value))
    then
    begin
      if raw_real_end_time > qryLateWeekTimeSTART_TIME.Value then
      begin
        memResult.Append;
        //memResultEMPLOYEE_NO.Value := qrylateDataEMPLOYEE_NO.Value;
        //memResultWORK_DATE.Value := qryLateDataWORK_DATE.Value;
        memResultDEPT_NO.Value := qryLateDataDEPT_NO.Value; {Phuc add}
        memResultTITLE_NO.Value := qryLateDataTITLE_NO.Value; {Phuc add}
        memResultSTART_TIME.Value := raw_start_time;
        if raw_real_end_time <= (qryLateWeekTimeEND_TIME.Value+qryLateWeekTimeEND_DATE.Value)
        then
        begin
          memResultEND_TIME.Value := raw_end_time;
          memResultEND_DATE.Value := raw_end_date;
          finished := true;
        end
        else
        begin
          memResultEND_TIME.Value := qryLateWeekTimeEND_TIME.Value;
          memResultEND_DATE.Value:=qryLateWeekTimeEND_DATE.Value;
          raw_start_time := qryLateWeekTimeEND_TIME.Value+qryLateWeekTimeEND_DATE.Value;
        end;
        memResultWHT_NO.Value := qryLateWeekTimeWHT_NO.Value;
        memResultWHT_NAME.Value := qryLateWeekTimeWHT_NAME.Value;
        memResultBLANK_TIME.Value := 1;
        memResult.Post;
      end
    end;
    //=================================================================
    if finished then
      Exit
    else
    begin
      qryLateWeekTime.Next;
    end;
  end;
end;

procedure TfrmWorkTimeProcess.AnalyseSoonTime;
var finished: boolean;
  raw_start_time, raw_end_time,raw_real_end_time: TDateTime;
  raw_end_date:Integer;
  record_count, current_record : integer;
begin
  qrySoonWeekTime.Refresh;
  if qrySoonWeekTime.IsEmpty then exit;
  raw_start_time := qrySoonDataSTART_TIME.Value;
  raw_end_time := qrySoonDataEND_TIME.Value;
  raw_end_date := 0;
  raw_real_end_time:=raw_end_time+raw_end_date;

  qrySoonWeekTime.First;
  finished := false;
  while not qrySoonWeekTime.Eof do
  begin
    //================================================================
    if raw_start_time < qrySoonWeekTimeSTART_TIME.Value then
    begin
      if raw_real_end_time > qrySoonWeekTimeSTART_TIME.Value then
      begin
        memResult.Append;
        //memResultEMPLOYEE_NO.Value := qrySoonDataEMPLOYEE_NO.Value;
        //memResultWORK_DATE.Value := qrySoonDataWORK_DATE.Value;
        memResultDEPT_NO.Value := qrySoonDataDEPT_NO.Value; {Phuc add}
        memResultTITLE_NO.Value := qrySoonDataTITLE_NO.Value; {Phuc add}
        memResultSTART_TIME.Value := qrySoonWeekTimeSTART_TIME.Value;
        if raw_real_end_time <= (qrySoonWeekTimeEND_TIME.Value+qrySoonWeekTimeEND_DATE.Value) then
        begin
          memResultEND_TIME.Value := raw_end_time;
          memResultEND_DATE.Value:=raw_end_date;
          finished := true;
        end
        else
        begin
          memResultEND_TIME.Value := qrySoonWeekTimeEND_TIME.Value;
          memResultEND_DATE.Value:=qrySoonWeekTimeEND_DATE.Value;
          raw_start_time := (qrySoonWeekTimeEND_TIME.Value+qrySoonWeekTimeEND_DATE.Value);
        end;
        memResultWHT_NO.Value := qrySoonWeekTimeWHT_NO.Value;
        memResultWHT_NAME.Value := qrySoonWeekTimeWHT_NAME.Value;
        memResultBLANK_TIME.Value := 1;
        if memResultSTART_TIME.Value<(memResultEND_TIME.Value+memResultEND_DATE.Value) then
          memResult.Post
        else
          memResult.Cancel;
      end
    end
    else
    //================================================================
    if (raw_start_time >= qrySoonWeekTimeSTART_TIME.Value) and
       (raw_start_time < (qrySoonWeekTimeEND_TIME.Value+qrySoonWeekTimeEND_DATE.Value))
    then
    begin
      if raw_real_end_time > qrySoonWeekTimeSTART_TIME.Value then
      begin
        memResult.Append;
        //memResultEMPLOYEE_NO.Value := qrySoonDataEMPLOYEE_NO.Value;
        //memResultWORK_DATE.Value := qrySoonDataWORK_DATE.Value;
        memResultDEPT_NO.Value := qrySoonDataDEPT_NO.Value; {Phuc add}
        memResultTITLE_NO.Value := qrySoonDataTITLE_NO.Value; {Phuc add}
        memResultSTART_TIME.Value := raw_start_time;
        if raw_real_end_time <= (qrySoonWeekTimeEND_TIME.Value+qrySoonWeekTimeEND_DATE.Value)
        then
        begin
          memResultEND_TIME.Value := raw_end_time;
          memResultEND_DATE.Value := raw_end_date;
          finished := true;
        end
        else
        begin
          memResultEND_TIME.Value := qrySoonWeekTimeEND_TIME.Value;
          memResultEND_DATE.Value:=qrySoonWeekTimeEND_DATE.Value;
          raw_start_time := qrySoonWeekTimeEND_TIME.Value+qrySoonWeekTimeEND_DATE.Value;
        end;
        memResultWHT_NO.Value := qrySoonWeekTimeWHT_NO.Value;
        memResultWHT_NAME.Value := qrySoonWeekTimeWHT_NAME.Value;
        memResultBLANK_TIME.Value := 1;
        memResult.Post;
      end
    end;
    //=================================================================
    if finished then
      Exit
    else
    begin
      qrySoonWeekTime.Next;
    end;
  end;
end;

function TfrmWorkTimeProcess.GetStatusFinish: boolean;
begin
  result := is_ok;
end;

procedure TfrmWorkTimeProcess.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var yes_no : integer;
begin
  inherited;
  if acLuuDulieu.Enabled then
  begin
    yes_no := ShowMessageUnicode(201);
    if (yes_no = mrYes) then
      acLuuDulieu.Execute
    else
    if (yes_no = mrCancel) then
      CanClose := false;
  end;
end;

end.



