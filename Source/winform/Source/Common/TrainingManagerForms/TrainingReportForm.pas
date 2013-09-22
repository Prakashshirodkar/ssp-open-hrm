unit TrainingReportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, DateTimeFrame, dxExEdtr, DB, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, IBODataset, ElBtnCtl, ElPopBtn, dxDBTLCl, dxGrClms,
  ActnList, ElPgCtl, ImgList, dxmdaset, ExtCtrls, TeeProcs, TeEngine, Chart,
  Series, DBChart, TeeComma;

type
  TfrmTrainingReport = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    frameDateTime1: TframeDateTime;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    gridData: TdxDBGrid;
    dsData: TDataSource;
    qryData: TIBOQuery;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    qryDataPLAN_NO: TWideStringField;
    qryDataCLASS_NO: TWideStringField;
    qryDataEMPLOYEE_NO: TWideStringField;
    qryDataFULL_NAME: TWideStringField;
    qryDataGENDER: TSmallintField;
    qryDataALLOWANCE: TIBOFloatField;
    qryDataCURRENCY: TWideStringField;
    qryDataEDU_RESULT: TWideStringField;
    qryDataFROM_DATE: TDateField;
    qryDataTO_DATE: TDateField;
    qryDataPLAN_NAME: TWideStringField;
    qryDataSOURCE_NAME: TWideStringField;
    qryDataFORM_NAME: TWideStringField;
    qryDataTYPE_NAME: TWideStringField;
    qryDataSUPPLY_NAME: TWideStringField;
    qryDataCREATE_DATE: TDateField;
    qryDataAT_MONTH: TIntegerField;
    qryDataAT_PERIOD: TIntegerField;
    qryDataAT_YEAR: TIntegerField;
    qryDataCLASS_CODE: TWideStringField;
    qryDataEDU_FIELD_NAME: TWideStringField;
    qryDataSTUDENT_COUNT: TIntegerField;
    qryDataFIELD_LEVEL_NAME: TWideStringField;
    qryDataCOST: TIBOFloatField;
    qryDataCURRENCY_NAME: TWideStringField;
    qryDataTEACHER: TWideStringField;
    qryDataCLASS_CONTENT: TWideStringField;
    qryDataIS_PLANNED: TIntegerField;
    gridDataPLAN_NO: TdxDBGridColumn;
    gridDataCLASS_NO: TdxDBGridColumn;
    gridDataEMPLOYEE_NO: TdxDBGridColumn;
    gridDataFULL_NAME: TdxDBGridColumn;
    gridDataGENDER: TdxDBGridImageColumn;
    gridDataEDU_RESULT: TdxDBGridColumn;
    gridDataFROM_DATE: TdxDBGridDateColumn;
    gridDataTO_DATE: TdxDBGridDateColumn;
    gridDataPLAN_NAME: TdxDBGridColumn;
    gridDataSOURCE_NAME: TdxDBGridColumn;
    gridDataFORM_NAME: TdxDBGridColumn;
    gridDataTYPE_NAME: TdxDBGridColumn;
    gridDataSUPPLY_NAME: TdxDBGridColumn;
    gridDataCLASS_CODE: TdxDBGridColumn;
    gridDataEDU_FIELD_NAME: TdxDBGridColumn;
    gridDataFIELD_LEVEL_NAME: TdxDBGridColumn;
    gridDataTEACHER: TdxDBGridColumn;
    gridDataCLASS_CONTENT: TdxDBGridColumn;
    gridDataIS_PLANNED: TdxDBGridImageColumn;
    ActionList1: TActionList;
    acXemdulieu: TAction;
    pageData: TElPageControl;
    dxLayoutControl1Item4: TdxLayoutItem;
    ImageList1: TImageList;
    tabData: TElTabSheet;
    tabSoluong: TElTabSheet;
    dsTrainCount: TDataSource;
    memTrainCount: TdxMemData;
    memTrainCountMONTH: TIntegerField;
    memTrainCountYEAR: TIntegerField;
    memTrainCountMONTH_YEAR: TWideStringField;
    memTrainCountCOUNT: TIntegerField;
    acInitTrainCount: TAction;
    chartTrainCount: TDBChart;
    Series1: TBarSeries;
    tabKetqua: TElTabSheet;
    chartTrainResult: TDBChart;
    BarSeries1: TPieSeries;
    dsTrainResult: TDataSource;
    memTrainResult: TdxMemData;
    memTrainResultRESULT_NAME: TWideStringField;
    memTrainResultCOUNT: TIntegerField;
    acInitTrainResult: TAction;
    TeeCommander1: TTeeCommander;
    TeeCommander2: TTeeCommander;
    tabNoidungDaotao: TElTabSheet;
    dsTrainContent: TDataSource;
    TeeCommander3: TTeeCommander;
    memTrainContent: TdxMemData;
    chartTrainClass: TDBChart;
    BarSeries2: TBarSeries;
    memTrainContentCONTENT: TWideStringField;
    acInitTrainContent: TAction;
    memTrainContentCOUNT: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure acXemdulieuExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acInitTrainCountExecute(Sender: TObject);
    procedure pageDataChanging(Sender: TObject; NewPage: TElTabSheet;
      var AllowChange: Boolean);
    procedure acInitTrainResultExecute(Sender: TObject);
    procedure acInitTrainContentExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrainingReport: TfrmTrainingReport;

implementation

uses MainDM, DateUtils;

{$R *.dfm}

procedure TfrmTrainingReport.FormCreate(Sender: TObject);
begin
  inherited;
  frameDateTime1.InitViewData;
  frameDateTime1.SetPeriod('NAM_NAY');
  pageData.ActivePageIndex := 0;
  acXemdulieu.Execute;
end;

procedure TfrmTrainingReport.acXemdulieuExecute(Sender: TObject);
begin
  inherited;
  qryData.DisableControls;
  if qryData.Active then
    qryData.Close;
  qryData.ParamByName('FROM_DATE').Value := frameDateTime1.GetBeginDate;
  qryData.ParamByName('TO_DATE').Value := frameDateTime1.GetEndDate;
  qryData.Open;
  qryData.EnableControls;
  pageData.ActivePageIndex := 0;
end;

procedure TfrmTrainingReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryData.Close;
end;

procedure TfrmTrainingReport.acInitTrainCountExecute(Sender: TObject);
var i: integer;
  node: TdxTreeListNode;
  fd, ld, d: TDate;
  m, y, first_my, last_my: integer;
  my, tmp_my: string;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  qryData.DisableControls;
  memTrainCount.DisableControls;
  if memTrainCount.Active then memTrainCount.Close;
  memTrainCount.Open;
  //==========================================
  // khoi tao du lieu thang
  // B1. Tim ngay dau va ngay cuoi cua danh sach du lieu
  // B2. Tao du lieu tung thang voi so lieu ban dau la 0
  //==========================================
  fd := qryData.ParamByName('FROM_DATE').AsDate;
  ld := qryData.ParamByName('TO_DATE').AsDate;
  first_my := MonthOf(fd) - 1 + 12 * YearOf(fd);
  last_my := MonthOf(ld) - 1 + 12 * YearOf(ld);
  for i := first_my to last_my do
  begin
    memTrainCount.Append;
    memTrainCountMONTH.Value := (i mod 12) + 1;
    memTrainCountYEAR.Value := (i div 12);
    if (memTrainCountMONTH.Value = 1) or
      (i = first_my) or (i = last_my)
      then
      memTrainCountMONTH_YEAR.Value := memTrainCountMONTH.AsString + '/' + memTrainCountYEAR.AsString
    else
      memTrainCountMONTH_YEAR.Value := memTrainCountMONTH.AsString;
    memTrainCountCOUNT.Value := 0;
    memTrainCount.Post;
  end;
  //============================================
  // cap nhat du lieu thong ke
  //==============================================
  for i := 0 to gridData.Count - 1 do
  begin
    node := gridData.Items[i];
    if node.IsVisible then
    begin
      d := VarToDateTime(node.Values[gridDataFROM_DATE.Index]);
      m := MonthOf(d);
      y := YearOf(d);

      if not memTrainCount.Locate('MONTH;YEAR', VarArrayOf([m, y]), []) then
        ShowMessage('Error : can not locate ' + IntToStr(m) + '/' + IntToStr(y))
      else
      begin
        memTrainCount.Edit;
        memTrainCountCOUNT.Value := memTrainCountCOUNT.Value + 1;
        memTrainCount.Post;
      end;
    end;
  end;
  memTrainCount.EnableControls;
  qryData.EnableControls;
  chartTrainCount.RefreshData;
  Screen.Cursor := crDefault;
end;

procedure TfrmTrainingReport.pageDataChanging(Sender: TObject;
  NewPage: TElTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if NewPage = tabSoluong then
    acInitTrainCount.Execute
  else
  if NewPage = tabKetqua then
    acInitTrainResult.Execute
    else
  if NewPage = tabNoidungDaotao then
    acInitTrainContent.Execute


end;

procedure TfrmTrainingReport.acInitTrainResultExecute(Sender: TObject);
var i: integer;
  node: TdxTreeListNode;
  temp: Variant;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  qryData.DisableControls;
  memTrainResult.DisableControls;
  if memTrainResult.Active then memTrainResult.Close;
  memTrainResult.Open;
  for i := 0 to gridData.Count - 1 do
  begin
    node := gridData.Items[i];
    if node.IsVisible then
    begin
      temp := node.Values[gridDataEDU_RESULT.Index];
      if VarIsNull(temp) then temp:='None';
      if not memTrainResult.Locate('RESULT_NAME', temp, []) then
      begin
        memTrainResult.Append;
        memTrainResultCOUNT.Value := 1;
        memTrainResult.FieldByName('RESULT_NAME').Value := temp;
        memTrainResult.Post;
      end
      else
      begin
        memTrainResult.Edit;
        memTrainResultCOUNT.Value := memTrainResultCOUNT.Value + 1;
        memTrainResult.Post;
      end;
    end;
  end;
  memTrainResult.EnableControls;
  qryData.EnableControls;
  chartTrainResult.RefreshData;
  Screen.Cursor := crDefault;
end;

procedure TfrmTrainingReport.acInitTrainContentExecute(Sender: TObject);
var i: integer;
  node: TdxTreeListNode;
  temp: Variant;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  qryData.DisableControls;
  memTrainContent.DisableControls;
  if memTrainContent.Active then memTrainContent.Close;
  memTrainContent.Open;
  for i := 0 to gridData.Count - 1 do
  begin
    node := gridData.Items[i];
    if node.IsVisible then
    begin
      temp := node.Values[gridDataCLASS_CONTENT.Index];
     if VarIsNull(temp) then temp:='None';
      if not memTrainContent.Locate('CONTENT', temp, []) then
      begin
        memTrainContent.Append;
        memTrainContentCOUNT.Value := 1;
        memTrainContent.FieldByName('CONTENT').Value := temp;
        memTrainContent.Post;
      end
      else
      begin
        memTrainContent.Edit;
        memTrainContentCOUNT.Value := memTrainContentCOUNT.Value + 1;
        memTrainContent.Post;
      end;
    end;
  end;
  memTrainContent.EnableControls;
  qryData.EnableControls;
  chartTrainClass.RefreshData;
  Screen.Cursor := crDefault;

end;

end.

