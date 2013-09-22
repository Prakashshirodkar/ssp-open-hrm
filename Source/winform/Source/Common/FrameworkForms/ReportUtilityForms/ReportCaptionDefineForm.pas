unit ReportCaptionDefineForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBODataset, dxLayoutControl, cxControls, ElCaption,
  dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, NavigatorFrameUnit,
  dxDBTLCl, dxGrClms, dxEditor, dxEdLib, dxDBELib, DBActns, ActnList,
  ElPgCtl, ElXPThemedControl, ElBtnCtl, ElPopBtn, ImgList, TeEngine,
  Series, ExtCtrls, TeeProcs, Chart, DBChart, dxmdaset, TeeEdit, TeeURL,
  TeeXML, TeeComma, ElPanel, ToolbarFrame,BaseFrm, ElStatBar, ElSplit,
  dxDBTL;

type
  TfrmReportCaptionDefine = class(TfrmBase)
    ElFormCaption1: TElFormCaption;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dsReportCaptionDefine: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxDBEdit3: TdxDBEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxDBEdit4: TdxDBEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxDBMemo1: TdxDBMemo;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxDBEdit5: TdxDBEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    ActionList1: TActionList;
    dxLayoutControl1Item9: TdxLayoutItem;
    tabSQLMain: TElTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    pageSQL: TElPageControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    tabSQL1: TElTabSheet;
    tabSQL2: TElTabSheet;
    tabSQL3: TElTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    dxDBMemo2: TdxDBMemo;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl4: TdxLayoutControl;
    dxDBMemo3: TdxDBMemo;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl5: TdxLayoutControl;
    dxDBMemo4: TdxDBMemo;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    OpenDialog1: TOpenDialog;
    pageReportData: TElPageControl;
    dxLayoutControl1Item19: TdxLayoutItem;
    tabCaptionData: TElTabSheet;
    tabParamData: TElTabSheet;
    dxlcCaptionDataGroup_Root: TdxLayoutGroup;
    dxlcCaptionData: TdxLayoutControl;
    dxlcCaptionDataItem1: TdxLayoutItem;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutControl6: TdxLayoutControl;
    dxDBGrid2: TdxDBGrid;
    dxLayoutControl6Item1: TdxLayoutItem;
    qryReportParam: TIBOQuery;
    dsReportParam: TDataSource;
    dxDBGrid2DATA_TYPE: TdxDBGridImageColumn;
    dxDBImageEdit1: TdxDBImageEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDBGrid1COLUMN_INDEX: TdxDBGridColumn;
    dxDBGrid1COLUMN_ID: TdxDBGridColumn;
    dxDBGrid1COLUMN_CAPTION: TdxDBGridColumn;
    dxDBGrid1COLUMN_WIDTH: TdxDBGridColumn;
    dxDBGrid1COLUMN_FORMAT: TdxDBGridColumn;
    dxDBGrid1COLUMN_GROUP: TdxDBGridCheckColumn;
    dxDBGrid1INVISIBLE: TdxDBGridCheckColumn;
    dxDBGrid2PARAM_INDEX: TdxDBGridColumn;
    dxDBGrid2PARAM_NAME: TdxDBGridColumn;
    dxDBGrid2PARAM_CAPTION: TdxDBGridColumn;
    dxDBGrid2TEMPLATE_NAME: TdxDBGridColumn;
    dxDBGrid2LOOKUP_ID: TdxDBGridColumn;
    dxDBGrid2LOOKUPFIELD: TdxDBGridColumn;
    dxDBGrid2DISPLAYFIELD: TdxDBGridColumn;
    dxDBGrid2PARAM_TYPE: TdxDBGridColumn;
    dxDBGrid2DEF_VALUE: TdxDBGridColumn;
    dxDBEdit6: TdxDBEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    tabChartConfig: TElTabSheet;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutControl7: TdxLayoutControl;
    dxUsed: TdxDBCheckEdit;
    dxLayoutControl7Item1: TdxLayoutItem;
    dxChartType: TdxDBImageEdit;
    dxLayoutControl7Item2: TdxLayoutItem;
    memDemoChart: TdxMemData;
    dsDemoChart: TDataSource;
    memDemoChartX: TIntegerField;
    memDemoChartY: TIntegerField;
    memDemoChartLABEL: TStringField;
    imgChart: TImageList;
    dxX: TdxDBEdit;
    dxLayoutControl7Item6: TdxLayoutItem;
    dxY: TdxDBEdit;
    dxLayoutControl7Item7: TdxLayoutItem;
    dxTitle_Y: TdxDBEdit;
    dxLayoutControl7Item8: TdxLayoutItem;
    dxTitle_X: TdxDBEdit;
    dxLayoutControl7Item9: TdxLayoutItem;
    dxTitle: TdxDBEdit;
    dxLayoutControl7Item10: TdxLayoutItem;
    dxLayoutControl7Group5: TdxLayoutGroup;
    dxLayoutControl7Group3: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    TeeCommander1: TTeeCommander;
    qryReportChart: TIBOQuery;
    dsReportChart: TDataSource;
    panelRight: TPanel;
    acSelectChart: TAction;
    tcDemo: TDBChart;
    sLine: TLineSeries;
    sBar: TBarSeries;
    sHBar: THorizBarSeries;
    sArea: TAreaSeries;
    sPoint: TPointSeries;
    sPie: TPieSeries;
    sFLine: TFastLineSeries;
    sHLine: THorizLineSeries;
    sHArea: THorizAreaSeries;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    qryReportCaptionDefine: TIBOQuery;
    qryReportCaptionDefineREPORTID: TIntegerField;
    qryReportCaptionDefineSUBSYSTEMID: TIntegerField;
    qryReportCaptionDefineCOLUMN_ID: TWideStringField;
    qryReportCaptionDefineCOLUMN_CAPTION: TWideStringField;
    qryReportCaptionDefineCOLUMN_WIDTH: TIntegerField;
    qryReportCaptionDefineCOLUMN_GROUP: TIntegerField;
    qryReportCaptionDefineCOLUMN_ALIGN: TIntegerField;
    qryReportCaptionDefineCOLUMN_FORMAT: TWideStringField;
    qryReportCaptionDefineCOLUMN_FILTER: TIntegerField;
    qryReportCaptionDefineCOLUMN_INDEX: TIntegerField;
    qryReportCaptionDefineCOLUMN_FOOTER: TIntegerField;
    qryReportCaptionDefineINVISIBLE: TIntegerField;
    qryReportCaptionDefineLOOKUP_ID: TIntegerField;
    qryReportCaptionDefineCOLUMN_CLASS: TIntegerField;
    qryReportCaptionDefineDISPLAYFIELD: TWideStringField;
    qryReportCaptionDefineREQUIRED: TSmallintField;
    qryReportParamREPORTID: TIntegerField;
    qryReportParamSUBSYSTEMID: TIntegerField;
    qryReportParamPARAM_NAME: TWideStringField;
    qryReportParamPARAM_INDEX: TIntegerField;
    qryReportParamPARAM_CAPTION: TWideStringField;
    qryReportParamDATA_TYPE: TIntegerField;
    qryReportParamTEMPLATE_NAME: TWideStringField;
    qryReportParamLOOKUP_ID: TIntegerField;
    qryReportParamLOOKUPFIELD: TWideStringField;
    qryReportParamDISPLAYFIELD: TWideStringField;
    qryReportParamPARAM_TYPE: TIntegerField;
    qryReportParamDEF_VALUE: TWideStringField;
    qryReportChartREPORTID: TIntegerField;
    qryReportChartSUBSYSTEMID: TIntegerField;
    qryReportChartUSED_CHART: TIntegerField;
    qryReportChartCHART_TYPE: TWideStringField;
    qryReportChartTITLE: TWideStringField;
    qryReportChartX_TITLE: TWideStringField;
    qryReportChartY_TITLE: TWideStringField;
    qryReportChartX_FIELD: TWideStringField;
    qryReportChartY_FIELD: TWideStringField;
    panelLeft: TPanel;
    qryReportParamLAYOUT_GROUP_NAME: TWideStringField;
    dxDBGrid2LAYOUT_GROUP_NAME: TdxDBGridColumn;
    qryReportParamWIDTH: TIntegerField;
    dxDBGrid2WIDTH: TdxDBGridCalcColumn;
    dxDBEdit7: TdxDBEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    acGenDetail: TAction;
    qryTest: TIBOQuery;
    dxLayoutControl1Item24: TdxLayoutItem;
    frameToolbar1: TframeToolbar;
    dxReportTree: TdxDBTreeList;
    ElSplitter1: TElSplitter;
    mainPanel: TPanel;
    dxReportTreeREPORT_NAME: TdxDBTreeListColumn;
    dxReportTreeDISPLAY_INDEX: TdxDBTreeListSpinColumn;
    qryReportChartCHART_DATASOURCE: TIntegerField;
    dxChartSourrce: TdxDBImageEdit;
    dxLayoutControl7Item3: TdxLayoutItem;
    qryReportCaptionDefineCOLUMN_CAPTION_ENG: TWideStringField;
    dxDBGrid1COLUMN_CAPTION_ENG: TdxDBGridColumn;
    qryReportParamPARAM_CAPTION_ENG: TWideStringField;
    dxDBGrid2PARAM_CAPTION_ENG: TdxDBGridColumn;
    qryReportChartTITLE_ENG: TWideStringField;
    qryReportChartX_TITLE_ENG: TWideStringField;
    qryReportChartY_TITLE_ENG: TWideStringField;
    dxLayoutControl7Group1: TdxLayoutGroup;
    dxLayoutControl7Item4: TdxLayoutItem;
    dxTitle_E: TdxDBEdit;
    dxLayoutControl7Item5: TdxLayoutItem;
    dxDBEdit9: TdxDBEdit;
    dxLayoutControl7Item11: TdxLayoutItem;
    dxDBEdit10: TdxDBEdit;
    qryInsertDetail: TIBOQuery;
    acCopyDetail: TAction;
    tabChartConfig1: TElTabSheet;
    Panel1: TPanel;
    TeeCommander2: TTeeCommander;
    tcDemo1: TDBChart;
    LineSeries1: TLineSeries;
    BarSeries1: TBarSeries;
    HorizBarSeries1: THorizBarSeries;
    AreaSeries1: TAreaSeries;
    PointSeries1: TPointSeries;
    PieSeries1: TPieSeries;
    FastLineSeries1: TFastLineSeries;
    HorizLineSeries1: THorizLineSeries;
    HorizAreaSeries1: THorizAreaSeries;
    Panel2: TPanel;
    dxLayoutControl8: TdxLayoutControl;
    dxUsed1: TdxDBCheckEdit;
    dxChartType1: TdxDBImageEdit;
    dxX1: TdxDBEdit;
    dxY1: TdxDBEdit;
    dxTitle_X1: TdxDBEdit;
    dxTitle_Y1: TdxDBEdit;
    dxTitle1: TdxDBEdit;
    dxChartSourrce1: TdxDBImageEdit;
    dxTitle_E1: TdxDBEdit;
    dxDBEdit17: TdxDBEdit;
    dxDBEdit18: TdxDBEdit;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    tabChartConfig2: TElTabSheet;
    Panel3: TPanel;
    TeeCommander3: TTeeCommander;
    tcDemo2: TDBChart;
    LineSeries2: TLineSeries;
    BarSeries2: TBarSeries;
    HorizBarSeries2: THorizBarSeries;
    AreaSeries2: TAreaSeries;
    PointSeries2: TPointSeries;
    PieSeries2: TPieSeries;
    FastLineSeries2: TFastLineSeries;
    HorizLineSeries2: THorizLineSeries;
    HorizAreaSeries2: THorizAreaSeries;
    Panel4: TPanel;
    dxLayoutControl9: TdxLayoutControl;
    dxUsed2: TdxDBCheckEdit;
    dxChartType2: TdxDBImageEdit;
    dxX2: TdxDBEdit;
    dxY2: TdxDBEdit;
    dxTitle_X2: TdxDBEdit;
    dxTitle_Y2: TdxDBEdit;
    dxTitle2: TdxDBEdit;
    dxChartSourrce2: TdxDBImageEdit;
    dxDBEdit24: TdxDBEdit;
    dxDBEdit25: TdxDBEdit;
    dxDBEdit26: TdxDBEdit;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    qryReportChartSTT: TIntegerField;
    qryReportChart1: TIBOQuery;
    dsReportChart1: TDataSource;
    qryReportChart2: TIBOQuery;
    dsReportChart2: TDataSource;
    Action1: TAction;
    acSelectChart1: TAction;
    acSelectChart2: TAction;
    qryReportChart1REPORTID: TIntegerField;
    qryReportChart1SUBSYSTEMID: TIntegerField;
    qryReportChart1STT: TIntegerField;
    qryReportChart1USED_CHART: TIntegerField;
    qryReportChart1CHART_TYPE: TWideStringField;
    qryReportChart1TITLE: TWideStringField;
    qryReportChart1X_TITLE: TWideStringField;
    qryReportChart1Y_TITLE: TWideStringField;
    qryReportChart1TITLE_ENG: TWideStringField;
    qryReportChart1X_TITLE_ENG: TWideStringField;
    qryReportChart1Y_TITLE_ENG: TWideStringField;
    qryReportChart1X_FIELD: TWideStringField;
    qryReportChart1Y_FIELD: TWideStringField;
    qryReportChart1CHART_DATASOURCE: TIntegerField;
    qryReportChart2REPORTID: TIntegerField;
    qryReportChart2SUBSYSTEMID: TIntegerField;
    qryReportChart2STT: TIntegerField;
    qryReportChart2USED_CHART: TIntegerField;
    qryReportChart2CHART_TYPE: TWideStringField;
    qryReportChart2TITLE: TWideStringField;
    qryReportChart2X_TITLE: TWideStringField;
    qryReportChart2Y_TITLE: TWideStringField;
    qryReportChart2TITLE_ENG: TWideStringField;
    qryReportChart2X_TITLE_ENG: TWideStringField;
    qryReportChart2Y_TITLE_ENG: TWideStringField;
    qryReportChart2X_FIELD: TWideStringField;
    qryReportChart2Y_FIELD: TWideStringField;
    qryReportChart2CHART_DATASOURCE: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure pageReportDataChanging(Sender: TObject; NewPage: TElTabSheet;
      var AllowChange: Boolean);
    procedure dxDBGrid2Enter(Sender: TObject);
    procedure qryReportCaptionDefineAfterInsert(DataSet: TDataSet);
    procedure acReportDuplicateExecute(Sender: TObject);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure pageReportDataEnter(Sender: TObject);
    procedure qryReportChartUSED_CHARTChange(Sender: TField);
    procedure qryReportChartCHART_TYPEChange(Sender: TField);
    procedure acSelectChartExecute(Sender: TObject);
    procedure pageReportDataChange(Sender: TObject);
    procedure tabChartConfigShow(Sender: TObject);
    procedure qryReportCaptionDefineNewRecord(DataSet: TDataSet);
    procedure qryReportParamNewRecord(DataSet: TDataSet);
    procedure qryReportChartNewRecord(DataSet: TDataSet);
    procedure qryReportChartAfterScroll(DataSet: TDataSet);
    procedure acGenDetailExecute(Sender: TObject);
    procedure dxReportTreeGetImageIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure dxReportTreeGetSelectedIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure dxReportTreeEnter(Sender: TObject);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure frameToolbar1btnCopyClick(Sender: TObject);
    procedure acCopyDetailExecute(Sender: TObject);
    procedure qryReportChart1AfterScroll(DataSet: TDataSet);
    procedure acSelectChart1Execute(Sender: TObject);
    procedure acSelectChart2Execute(Sender: TObject);
    procedure qryReportChart1NewRecord(DataSet: TDataSet);
    procedure qryReportChart2NewRecord(DataSet: TDataSet);
    procedure qryReportChart2AfterScroll(DataSet: TDataSet);
    procedure qryReportChart1USED_CHARTChange(Sender: TField);
    procedure qryReportChart2USED_CHARTChange(Sender: TField);
    procedure qryReportChart1CHART_TYPEChange(Sender: TField);
    procedure qryReportChart2CHART_TYPEChange(Sender: TField);
    procedure tabChartConfig1Show(Sender: TObject);
    procedure tabChartConfig2Show(Sender: TObject);
  private
    { Private declarations }
    cur_chart: TCustomSeries;
    cur_chart1: TCustomSeries;
    cur_chart2: TCustomSeries;
    from_reportid,to_reportid:integer;
  public
    { Public declarations }
  end;

var
  frmReportCaptionDefine: TfrmReportCaptionDefine;

implementation

uses SSP_Library, MainDM,SSP_Menus,ReportsFrmMain,Math;

{$R *.dfm}

procedure TfrmReportCaptionDefine.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  dxChartSourrce.Descriptions.Add(Utf8Decode('Dữ liệu chính'));
  dxChartSourrce.Descriptions.Add(Utf8Decode('Dữ liệu phụ 1'));
  dxChartSourrce.Descriptions.Add(Utf8Decode('Dữ liệu phụ 2'));
  dxChartSourrce.Descriptions.Add(Utf8Decode('Dữ liệu phụ 3'));

  dxChartSourrce.Values.Add('0');
  dxChartSourrce.Values.Add('1');
  dxChartSourrce.Values.Add('2');
  dxChartSourrce.Values.Add('3');

  dxChartSourrce1.Descriptions.Add(Utf8Decode('Dữ liệu chính'));
  dxChartSourrce1.Descriptions.Add(Utf8Decode('Dữ liệu phụ 1'));
  dxChartSourrce1.Descriptions.Add(Utf8Decode('Dữ liệu phụ 2'));
  dxChartSourrce1.Descriptions.Add(Utf8Decode('Dữ liệu phụ 3'));

  dxChartSourrce1.Values.Add('0');
  dxChartSourrce1.Values.Add('1');
  dxChartSourrce1.Values.Add('2');
  dxChartSourrce1.Values.Add('3');

  dxChartSourrce2.Descriptions.Add(Utf8Decode('Dữ liệu chính'));
  dxChartSourrce2.Descriptions.Add(Utf8Decode('Dữ liệu phụ 1'));
  dxChartSourrce2.Descriptions.Add(Utf8Decode('Dữ liệu phụ 2'));
  dxChartSourrce2.Descriptions.Add(Utf8Decode('Dữ liệu phụ 3'));

  dxChartSourrce2.Values.Add('0');
  dxChartSourrce2.Values.Add('1');
  dxChartSourrce2.Values.Add('2');
  dxChartSourrce2.Values.Add('3');

  inherited;

  pageSQL.ActivePageIndex := 0;
  pageReportData.ActivePageIndex := 0;
  frameToolbar1.SetDataSource(frmReportsMain.dsReportTree);
  qryReportCaptionDefine.Open;
  qryReportParam.Open;
  qryReportChart.Open;
  qryReportChart1.Open;
  qryReportChart2.Open;
  memDemoChart.Open;
  for i := 0 to 10 do
  begin
    memDemoChart.Insert;
    memDemoChartX.Value := i;
    memDemoChartLABEL.Value := 'L' + IntToStr(i);
    memDemoChartY.Value := RandomRange(0, 10);
    memDemoChart.Post;
  end;

  //Chi co smallfot hay sspadmin moi co quyen sua thong tin cau lenh SQL
  if ((sysConfig.User <> 'smallfoot') and (sysConfig.User <> 'sspadmin')) then
  begin
    dxDBEdit1.Enabled := false;
    dxDBEdit5.Enabled := false;
    dxDBEdit4.Enabled := false;
    dxDBEdit7.Enabled := false;
    dxDBEdit2.Enabled := false;
    dxDBImageEdit1.Enabled := false;
    pageSQL.Enabled := false;
{    tabChartConfig.Visible := false;
    tabChartConfig1.Visible := false;
    tabChartConfig2.Visible := false;
    frameToolbar1.dxlctrlInsert.Visible := false;
    frameToolbar1.dxlctrlDelete.Visible := false;
    frameToolbar1.dxlctrlInsertCopy.Visible := false;}
    frameToolbar1.dxlctrlGenerate.Visible := false;

  end;
end;

procedure TfrmReportCaptionDefine.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryReportCaptionDefine.Close;
  qryReportParam.Close;
  qryReportChart.Close;
  qryReportChart1.Close;
  qryReportChart2.Close;
end;

procedure TfrmReportCaptionDefine.dxDBButtonEdit1ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
  filename: string;
begin
  if OpenDialog1.Execute then
  begin
    filename := ExtractFileName(OpenDialog1.FileName);
    if not (frmReportsMain.qryReportTree.State in [dsInsert, dsEdit]) then
      frmReportsMain.qryReportTree.Edit;
    frmReportsMain.qryReportTree.FieldByName('TEMPLATE_NAME').Value := filename;
    if frmReportsMain.qryReportTree.FieldByName('TEMPLATE_NAME_ENG').IsNull then
      frmReportsMain.qryReportTree.FieldByName('TEMPLATE_NAME_ENG').Value :=
        filename;
  end;
end;

procedure TfrmReportCaptionDefine.pageReportDataChanging(Sender: TObject;
  NewPage: TElTabSheet; var AllowChange: Boolean);
begin
  if pageReportData.ActivePageIndex = 0 then
  begin
    if dmMain.MsgChangeDataSource(dsReportCaptionDefine)=false then
      AllowChange:=false;
  end
  else
  if pageReportData.ActivePageIndex = 1 then
  begin
    if dmMain.MsgChangeDataSource(dsReportParam)=false then
      AllowChange:=false;
  end
  else
  if pageReportData.ActivePageIndex = 2 then
  begin
    if dmMain.MsgChangeDataSource(dsReportChart)=false then
      AllowChange:=false;
  end
  else
  if pageReportData.ActivePageIndex = 3 then
  begin
    if dmMain.MsgChangeDataSource(dsReportChart1)=false then
      AllowChange:=false;
  end
  else
  if pageReportData.ActivePageIndex = 4 then
  begin
    if dmMain.MsgChangeDataSource(dsReportChart1)=false then
      AllowChange:=false;
  end
end;

procedure TfrmReportCaptionDefine.dxDBGrid2Enter(Sender: TObject);
begin
  frameToolbar1.SetDataSource(dsReportParam);
end;

procedure TfrmReportCaptionDefine.qryReportCaptionDefineAfterInsert(
  DataSet: TDataSet);
begin
  qryReportCaptionDefineCOLUMN_INDEX.FocusControl;
end;

procedure TfrmReportCaptionDefine.acReportDuplicateExecute(
  Sender: TObject);
begin
  //
end;

procedure TfrmReportCaptionDefine.dxDBButtonEdit2ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
  filename: string;
begin
  if OpenDialog1.Execute then
  begin
    filename := ExtractFileName(OpenDialog1.FileName);
    if not (frmReportsMain.qryReportTree.State in [dsInsert, dsEdit]) then
      frmReportsMain.qryReportTree.Edit;
    frmReportsMain.qryReportTree.FieldByName('TEMPLATE_NAME_ENG').Value :=
      filename;
  end;
end;

procedure TfrmReportCaptionDefine.pageReportDataEnter(Sender: TObject);
begin
  if dmMain.MsgChangeDataSource(frmReportsMain.dsReportTree,false) then
    qryReportChart.Refresh;
end;

procedure TfrmReportCaptionDefine.qryReportChartUSED_CHARTChange(
  Sender: TField);
begin
  if qryReportChartUSED_CHART.Value = 0 then
  begin
    dxChartType.Enabled := False;
    dxTitle.Enabled := False;
    dxTitle_X.Enabled := False;
    dxTitle_Y.Enabled := False;
    dxX.Enabled := False;
    dxY.Enabled := False;
  end
  else
  begin
    dxChartType.Enabled := true;
    dxTitle.Enabled := true;
    dxTitle_X.Enabled := true;
    dxTitle_Y.Enabled := true;
    dxX.Enabled := true;
    dxY.Enabled := true;
  end;
end;

procedure TfrmReportCaptionDefine.qryReportChartCHART_TYPEChange(
  Sender: TField);
begin
  acSelectChart.Execute;
end;

procedure TfrmReportCaptionDefine.acSelectChartExecute(Sender: TObject);
begin
  if Assigned(cur_chart) then
    cur_chart.Visible := False;
  if qryReportChartCHART_TYPE.Value = 'LINE' then
  begin
    cur_chart := TCustomSeries(sLine);
  end
  else
    if qryReportChartCHART_TYPE.Value = 'BAR' then
  begin
    cur_chart := TCustomSeries(sBar);
  end
  else
    if qryReportChartCHART_TYPE.Value = 'FLINE' then
  begin
    cur_chart := TCustomSeries(sFLine);
  end
  else
    if qryReportChartCHART_TYPE.Value = 'HLINE' then
  begin
    cur_chart := TCustomSeries(sHLine);
  end
  else
    if qryReportChartCHART_TYPE.Value = 'HBAR' then
  begin
    cur_chart := TCustomSeries(sHBar);
  end
  else
    if qryReportChartCHART_TYPE.Value = 'AREA' then
  begin
    cur_chart := TCustomSeries(sArea);
  end
  else
    if qryReportChartCHART_TYPE.Value = 'HAREA' then
  begin
    cur_chart := TCustomSeries(sHArea);
  end
  else
    if qryReportChartCHART_TYPE.Value = 'POINT' then
  begin
    cur_chart := TCustomSeries(sPoint);
  end
  else
    if qryReportChartCHART_TYPE.Value = 'PIE' then
  begin
    cur_chart := TCustomSeries(sPie);
  end
  else
    cur_chart := TCustomSeries(sLine);
  cur_chart.Visible:=True;
end;

procedure TfrmReportCaptionDefine.pageReportDataChange(Sender: TObject);
begin
  if pageReportData.ActivePageIndex = 0 then
  begin
    frameToolbar1.SetDataSource(dsReportCaptionDefine);
  end
  else
    if pageReportData.ActivePageIndex = 1 then
  begin

    frameToolbar1.SetDataSource(dsReportParam);

  end
  else
  if pageReportData.ActivePageIndex = 2 then
  begin
    frameToolbar1.SetDataSource(dsReportChart);
  end
    else
  if pageReportData.ActivePageIndex = 3 then
  begin
    frameToolbar1.SetDataSource(dsReportChart1);
  end
    else
  if pageReportData.ActivePageIndex = 4 then
  begin
    frameToolbar1.SetDataSource(dsReportChart2);
  end
end;

procedure TfrmReportCaptionDefine.tabChartConfigShow(Sender: TObject);
begin
  acSelectChart.Execute;
end;

procedure TfrmReportCaptionDefine.qryReportCaptionDefineNewRecord(
  DataSet: TDataSet);
begin
  qryReportCaptionDefineREPORTID.Value:=frmReportsMain.qryReportTreeREPORTID.Value;
  qryReportCaptionDefineSUBSYSTEMID.Value:=frmReportsMain.qryReportTreeSUBSYSTEMID.Value;
end;

procedure TfrmReportCaptionDefine.qryReportParamNewRecord(
  DataSet: TDataSet);
begin
  qryReportParamREPORTID.Value:=frmReportsMain.qryReportTreeREPORTID.Value;
  qryReportParamSUBSYSTEMID.Value:=frmReportsMain.qryReportTreeSUBSYSTEMID.Value;
end;

procedure TfrmReportCaptionDefine.qryReportChartNewRecord(
  DataSet: TDataSet);
begin
  qryReportChartUSED_CHART.Value:=1;
  qryReportChartCHART_DATASOURCE.Value:=0;
  qryReportChartREPORTID.Value:=frmReportsMain.qryReportTreeREPORTID.Value;
  qryReportChartSUBSYSTEMID.Value:=frmReportsMain.qryReportTreeSUBSYSTEMID.Value;
  qryReportChartSTT.Value:=1;
end;

procedure TfrmReportCaptionDefine.qryReportChartAfterScroll(
  DataSet: TDataSet);
begin
  if pageReportData.ActivePageIndex=2 then
    acSelectChart.Execute;
end;

procedure TfrmReportCaptionDefine.acGenDetailExecute(Sender: TObject);
var i:integer;
begin
  try
    if qryTest.Active then qryTest.Close;
    qryTest.SQL.Text:=frmReportsMain.qryReportTreeSQLSELECT.AsString;
    qryTest.Prepare;
    if qryTest.ParamCount>0 then
    begin
      for i:=0 to qryTest.ParamCount-1 do
      begin
        if not (qryReportParam.State in [dsInsert,dsEdit]) then
          qryReportParam.Append;
        qryReportParamPARAM_INDEX.Value:=i+1;
        qryReportParamREPORTID.Value:=frmReportsMain.qryReportTreeREPORTID.Value;
        qryReportParamSUBSYSTEMID.Value:=frmReportsMain.qryReportTreeSUBSYSTEMID.Value;
        qryReportParamPARAM_NAME.Value:=qryTest.Params[i].Name;
        qryReportParamPARAM_CAPTION.Value:=qryTest.Params[i].Name;
        qryReportParamWIDTH.Value:=100;
        qryReportParam.Post;
      end;
    end;
    qryTest.Open;
    if qryTest.Fields.Count>0 then
    begin
      for i:=0 to qryTest.Fields.Count-1 do
      begin
        if not (qryReportCaptionDefine.State in [dsInsert,dsEdit]) then
          qryReportCaptionDefine.Append;
        qryReportCaptionDefineCOLUMN_INDEX.Value:=i+1;
        qryReportCaptionDefineREPORTID.Value:=frmReportsMain.qryReportTreeREPORTID.Value;
        qryReportCaptionDefineSUBSYSTEMID.Value:=frmReportsMain.qryReportTreeSUBSYSTEMID.Value;
        qryReportCaptionDefineCOLUMN_ID.Value:=(qryTest.Fields[i].FieldName);
        qryReportCaptionDefineCOLUMN_CAPTION.Value:=(qryTest.Fields[i].FieldName);
        qryReportCaptionDefineCOLUMN_WIDTH.Value:=100;
        qryReportCaptionDefine.Post;
      end;
    end;

  finally
    qryTest.Close;
    qryTest.SQL.Clear;
  end;

end;

procedure TfrmReportCaptionDefine.dxReportTreeGetImageIndex(
  Sender: TObject; Node: TdxTreeListNode; var Index: Integer);
begin
  inherited;
  if Node.HasChildren then
    Index := 0
  else
  begin
    if Node.Selected then
      Index := 2
    else
      Index := 1;
  end;
end;

procedure TfrmReportCaptionDefine.dxReportTreeGetSelectedIndex(
  Sender: TObject; Node: TdxTreeListNode; var Index: Integer);
begin
  inherited;
  if Node.HasChildren then
    Index := 0
  else
  begin
    if Node.Selected then
      Index := 2
    else
      Index := 1;
  end;
end;
procedure TfrmReportCaptionDefine.dxReportTreeEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(frmReportsMain.dsReportTree);
end;

procedure TfrmReportCaptionDefine.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsReportCaptionDefine);
end;

procedure TfrmReportCaptionDefine.frameToolbar1btnCopyClick(
  Sender: TObject);
begin
  inherited;
  from_reportid:=frmReportsMain.qryReportTreeREPORTID.Value;
  frameToolbar1.acDSInsertCopyExecute(Sender);
  if frameToolbar1.acDSInsertCopy.DataSource.DataSet=frmReportsMain.qryReportTree then
  begin
    frameToolbar1.acDSPost.Execute;
    to_reportid:=frmReportsMain.qryReportTreeREPORTID.Value;
    qryInsertDetail.ParamByName('FROM_REPORTID').Value:=from_reportid;
    qryInsertDetail.ParamByName('TO_REPORTID').Value:=to_reportid;
    qryInsertDetail.ExecSQL;
    qryReportCaptionDefine.RefreshRows;
    qryReportParam.RefreshRows;
  end
end;

procedure TfrmReportCaptionDefine.acCopyDetailExecute(Sender: TObject);
begin
  inherited;
   qryInsertDetail.ParamByName('FROM_REPORTID').Value:=from_reportid;
   qryInsertDetail.ParamByName('TO_REPORTID').Value:=to_reportid;
   qryInsertDetail.ExecSQL;
   qryReportCaptionDefine.RefreshRows;
   qryReportParam.RefreshRows;
end;

procedure TfrmReportCaptionDefine.qryReportChart1AfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if pageReportData.ActivePageIndex=3 then
    acSelectChart1.Execute;
end;

procedure TfrmReportCaptionDefine.acSelectChart1Execute(Sender: TObject);
begin
  inherited;
  if Assigned(cur_chart1) then
    cur_chart1.Visible := False;
  if qryReportChart1CHART_TYPE.Value = 'LINE' then
  begin
    cur_chart1 := TCustomSeries(LineSeries1);
  end
  else
    if qryReportChart1CHART_TYPE.Value = 'BAR' then
  begin
    cur_chart1 := TCustomSeries(BarSeries1);
  end
  else
    if qryReportChart1CHART_TYPE.Value = 'FLINE' then
  begin
    cur_chart1 := TCustomSeries(FastLineSeries1);
  end
  else
    if qryReportChart1CHART_TYPE.Value = 'HLINE' then
  begin
    cur_chart1 := TCustomSeries(HorizLineSeries1);
  end
  else
    if qryReportChart1CHART_TYPE.Value = 'HBAR' then
  begin
    cur_chart1 := TCustomSeries(HorizBarSeries1);
  end
  else
    if qryReportChart1CHART_TYPE.Value = 'AREA' then
  begin
    cur_chart1 := TCustomSeries(AreaSeries1);
  end
  else
    if qryReportChart1CHART_TYPE.Value = 'HAREA' then
  begin
    cur_chart1 := TCustomSeries(HorizAreaSeries1);
  end
  else
    if qryReportChart1CHART_TYPE.Value = 'POINT' then
  begin
    cur_chart1 := TCustomSeries(PointSeries1);
  end
  else
    if qryReportChart1CHART_TYPE.Value = 'PIE' then
  begin
    cur_chart1 := TCustomSeries(PieSeries1);
  end
  else
    cur_chart1 := TCustomSeries(LineSeries1);
  cur_chart1.Visible:=True;
end;

procedure TfrmReportCaptionDefine.acSelectChart2Execute(Sender: TObject);
begin
inherited;
  if Assigned(cur_chart2) then
    cur_chart2.Visible := False;
  if qryReportChart2CHART_TYPE.Value = 'LINE' then
  begin
    cur_chart2 := TCustomSeries(LineSeries2);
  end
  else
    if qryReportChart2CHART_TYPE.Value = 'BAR' then
  begin
    cur_chart2 := TCustomSeries(BarSeries2);
  end
  else
    if qryReportChart2CHART_TYPE.Value = 'FLINE' then
  begin
    cur_chart2 := TCustomSeries(FastLineSeries2);
  end
  else
    if qryReportChart2CHART_TYPE.Value = 'HLINE' then
  begin
    cur_chart2 := TCustomSeries(HorizLineSeries2);
  end
  else
    if qryReportChart2CHART_TYPE.Value = 'HBAR' then
  begin
    cur_chart2 := TCustomSeries(HorizBarSeries2);
  end
  else
    if qryReportChart2CHART_TYPE.Value = 'AREA' then
  begin
    cur_chart2 := TCustomSeries(AreaSeries2);
  end
  else
    if qryReportChart2CHART_TYPE.Value = 'HAREA' then
  begin
    cur_chart2 := TCustomSeries(HorizAreaSeries2);
  end
  else
    if qryReportChart2CHART_TYPE.Value = 'POINT' then
  begin
    cur_chart2 := TCustomSeries(PointSeries2);
  end
  else
    if qryReportChart2CHART_TYPE.Value = 'PIE' then
  begin
    cur_chart2 := TCustomSeries(PieSeries2);
  end
  else
    cur_chart2 := TCustomSeries(LineSeries2);
  cur_chart2.Visible:=True;

end;

procedure TfrmReportCaptionDefine.qryReportChart1NewRecord(
  DataSet: TDataSet);
begin
  inherited;
 qryReportChart1USED_CHART.Value:=1;
  qryReportChart1CHART_DATASOURCE.Value:=0;
  qryReportChart1REPORTID.Value:=frmReportsMain.qryReportTreeREPORTID.Value;
  qryReportChart1SUBSYSTEMID.Value:=frmReportsMain.qryReportTreeSUBSYSTEMID.Value;
  qryReportChart1STT.Value:=2;
end;

procedure TfrmReportCaptionDefine.qryReportChart2NewRecord(
  DataSet: TDataSet);
begin
  inherited;
  qryReportChart2USED_CHART.Value:=1;
  qryReportChart2CHART_DATASOURCE.Value:=0;
  qryReportChart2REPORTID.Value:=frmReportsMain.qryReportTreeREPORTID.Value;
  qryReportChart2SUBSYSTEMID.Value:=frmReportsMain.qryReportTreeSUBSYSTEMID.Value;
  qryReportChart2STT.Value:=3;
end;

procedure TfrmReportCaptionDefine.qryReportChart2AfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if pageReportData.ActivePageIndex=4 then
    acSelectChart2.Execute;
end;

procedure TfrmReportCaptionDefine.qryReportChart1USED_CHARTChange(
  Sender: TField);
begin
  inherited;
  if qryReportChart1USED_CHART.Value = 0 then
  begin
    dxChartType1.Enabled := False;
    dxTitle1.Enabled := False;
    dxTitle_X1.Enabled := False;
    dxTitle_Y1.Enabled := False;
    dxX1.Enabled := False;
    dxY1.Enabled := False;
  end
  else
  begin
    dxChartType1.Enabled := true;
    dxTitle1.Enabled := true;
    dxTitle_X1.Enabled := true;
    dxTitle_Y1.Enabled := true;
    dxX1.Enabled := true;
    dxY1.Enabled := true;
  end;
end;

procedure TfrmReportCaptionDefine.qryReportChart2USED_CHARTChange(
  Sender: TField);
begin
  inherited;
inherited;
  if qryReportChart2USED_CHART.Value = 0 then
  begin
    dxChartType2.Enabled := False;
    dxTitle2.Enabled := False;
    dxTitle_X2.Enabled := False;
    dxTitle_Y2.Enabled := False;
    dxX2.Enabled := False;
    dxY2.Enabled := False;
  end
  else
  begin
    dxChartType2.Enabled := true;
    dxTitle2.Enabled := true;
    dxTitle_X2.Enabled := true;
    dxTitle_Y2.Enabled := true;
    dxX2.Enabled := true;
    dxY2.Enabled := true;
  end;
end;

procedure TfrmReportCaptionDefine.qryReportChart1CHART_TYPEChange(
  Sender: TField);
begin
  inherited;
  acSelectChart1.Execute;
end;

procedure TfrmReportCaptionDefine.qryReportChart2CHART_TYPEChange(
  Sender: TField);
begin
  inherited;
  acSelectChart2.Execute;
end;

procedure TfrmReportCaptionDefine.tabChartConfig1Show(Sender: TObject);
begin
  inherited;
acSelectChart1.Execute;
end;

procedure TfrmReportCaptionDefine.tabChartConfig2Show(Sender: TObject);
begin
  inherited;
acSelectChart2.Execute;
end;

end.

