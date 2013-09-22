unit LogDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, DateTimeFrame, dxExEdtr, dxEdLib, dxCntner,
  dxEditor, ElBtnCtl, ElPopBtn, ActnList, dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms, DB, IBODataset, dxDBTL;

type
  TfrmLogData = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    frameDateTime1: TframeDateTime;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxSelectType: TdxPopupEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxSelectAll: TdxCheckEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    ActionList1: TActionList;
    acXem: TAction;
    dxLayoutControl1Group2: TdxLayoutGroup;
    gridLogData: TdxDBGrid;
    dxLayoutControl1Item5: TdxLayoutItem;
    dsLogData: TDataSource;
    qryLogData: TIBOQuery;
    qryLogDataLOG_ID: TIntegerField;
    qryLogDataCONNECTION_ID: TWideStringField;
    qryLogDataHOST_NAME: TWideStringField;
    qryLogDataTIME_ID: TDateTimeField;
    qryLogDataUSER_ID: TWideStringField;
    qryLogDataSYSTEM_ID: TSmallintField;
    qryLogDataFEATURE_ID: TSmallintField;
    qryLogDataLOG_DATA: TWideStringField;
    qryLogDataFEATURENAME: TWideStringField;
    gridLogDataCONNECTION_ID: TdxDBGridColumn;
    gridLogDataHOST_NAME: TdxDBGridColumn;
    gridLogDataTIME_ID: TdxDBGridDateColumn;
    gridLogDataUSER_ID: TdxDBGridColumn;
    gridLogDataLOG_DATA: TdxDBGridColumn;
    gridLogDataFEATURENAME: TdxDBGridColumn;
    qryLogDataACTION_TYPE: TWideStringField;
    gridLogDataACTION_TYPE: TdxDBGridImageColumn;
    dsFeatureList: TDataSource;
    qryFeatureList: TIBOQuery;
    qryFeatureListSUBSYSTEMID: TSmallintField;
    qryFeatureListFEATUREID: TSmallintField;
    qryFeatureListFEATURENAME: TWideStringField;
    qryFeatureListP_FEATUREID: TIntegerField;
    qryFeatureListFEATURENAME_ENG: TWideStringField;
    dxlcFeatureList: TdxLayoutControl;
    ElPopupButton7: TElPopupButton;
    ElPopupButton8: TElPopupButton;
    ElPopupButton9: TElPopupButton;
    treeList: TdxDBTreeList;
    treeListFEATURENAME: TdxDBTreeListColumn;
    treeListFEATURENAME_ENG: TdxDBTreeListColumn;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    acXoa: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acXemExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxSelectAllChange(Sender: TObject);
    procedure dxSelectTypeInitPopup(Sender: TObject);
    procedure dxSelectTypeCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure treeListDblClick(Sender: TObject);
    procedure acXoaExecute(Sender: TObject);
  private
    { Private declarations }
    F_FEATURE_ID:integer;
  public
    { Public declarations }
  end;

var
  frmLogData: TfrmLogData;

implementation

uses MainDM, SSP_Library, DeleteLogDataForm;

{$R *.dfm}

procedure TfrmLogData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  qryLogData.Close;
  qryFeatureList.Close;
  Action:=caFree;
  frmLogData:=nil;
end;

procedure TfrmLogData.acXemExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  qryLogData.DisableControls;
  qryLogData.Close;
  if dxSelectAll.Checked then
  begin
    qryLogData.SQLWhere.Text:='where time_id between :from_date and :to_date';
    qryLogdata.Prepare;
  end
  else
  begin
    qryLogData.SQLWhere.Text:='where feature_id=:feature_id and system_id=:system_id and '+
    ' time_id between :from_date and :to_date';
    qryLogdata.Prepare;
    qryLogData.ParamByName('FEATURE_ID').Value:=F_FEATURE_ID;
    qryLogData.ParamByName('SYSTEM_ID').Value:=sysConfig.SubSystemID;
  end;
  qryLogData.ParamByName('FROM_DATE').Value:=frameDateTime1.GetBeginDate;
  qryLogData.ParamByName('TO_DATE').Value:=frameDateTime1.GetEndDate;
  qryLogData.Open;
  qryLogData.EnableControls;
  Screen.Cursor:=crDefault;
end;

procedure TfrmLogData.FormCreate(Sender: TObject);
begin
  inherited;
  frameDateTime1.InitViewData;
  frameDateTime1.SetPeriod('THANG_NAY');
  acXem.Execute;
end;

procedure TfrmLogData.dxSelectAllChange(Sender: TObject);
begin
  inherited;
  dxSelectType.Enabled:=not dxSelectAll.Checked;
end;

procedure TfrmLogData.dxSelectTypeInitPopup(Sender: TObject);
begin
  inherited;
  if not qryFeatureList.Active then
    qryFeatureList.Open;
  InitPopupControl('dxlcFeatureList',self,sender,2);
end;

procedure TfrmLogData.dxSelectTypeCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    dxSelectType.Text:=qryFeatureListFEATURENAME.Value;
    F_FEATURE_ID:=qryFeatureListFEATUREID.Value;
  end;
end;

procedure TfrmLogData.treeListDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self,True,sender);
end;

procedure TfrmLogData.acXoaExecute(Sender: TObject);
begin
  inherited;
  frmDeleteLogData:=TfrmDeleteLogData.Create(self);
  try
    if frmDeleteLogData.ShowModal=mrOk then
      acXem.Execute;
  finally
    frmDeleteLogData.Free;
    frmDeleteLogData:=nil;
  end;

end;

end.
