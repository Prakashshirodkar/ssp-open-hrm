unit ReportsFrmMain;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxDBGrid, dxTL, dxDBCtrl, dxCntner, dxDBTL, Buttons,
  dxLayoutControl, dxEditor, dxEdLib, cxControls, ppDB, ppDBPipe, DB,
  IBODataset, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppRelatv, ppProd, ppReport, ppComm, ppEndUsr, IB_Components, ppModule,
  dxBar, ActnList, XPStyleActnCtrls, ActnMan, dxPageControl, ExtCtrls,
  ImgList, StdCtrls, dxDBTLCl, dxGrClms, DateUtils, ppStrtch, ppMemo, ppSubRpt,
  TeeProcs, TeEngine, Chart, DBChart, Series,
  TeeLisB, dxmdaset, ComCtrls,
  ToolWin, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn, ElPanel,
  dxDBELib, ReportParamsFrm, ppTypes, dxBarExtItems, TXComp, ElCLabel,
  ElLabel, ElPgCtl, TeeComma, ElSplit, BaseFrm, ElStatBar;

type
  TfrmReportsMain = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    qryReportTree: TIBOQuery;
    dsReportTree: TDataSource;
    pnlMain: TPanel;
    dxLayoutControl1Item8: TdxLayoutItem;
    dbgReportTree: TdxDBTreeList;
    dbgReportTreeREPORT_NAME: TdxDBTreeListMaskColumn;
    qryReport: TIBOQuery;
    dsReport: TDataSource;
    dsgReport: TppDesigner;
    ActionManager1: TActionManager;
    acPerform: TAction;
    acPreview: TAction;
    acDesigner: TAction;
    acExportToExcel: TAction;
    acExportToHTML: TAction;
    acExportToXML: TAction;
    acShowGroupPanel: TAction;
    acShowSummaryFooter: TAction;
    acShowGroupFooter: TAction;
    acHideRpt: TAction;
    acShowAll: TAction;
    bmReport: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxbrbtnGroupFooter: TdxBarButton;
    dxbrbtnGroupPanel: TdxBarButton;
    dxbrbtnSummaryFooter: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    pmTree: TdxBarPopupMenu;
    dxbpmReportGrid: TdxBarPopupMenu;
    DlgSave: TSaveDialog;
    qryReportCaption: TIBOQuery;
    acSavertmToDB: TAction;
    dbgAnalysis: TdxDBGrid;
    acShowChart: TAction;
    acShowGrid: TAction;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    ac3D: TAction;
    acMask: TAction;
    acRotator: TAction;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    acExportToBMP: TAction;
    acExportToJPEG: TAction;
    acExportToGIF: TAction;
    dxLayoutControl1Item5: TdxLayoutItem;
    sbGetData: TElPopupButton;
    tsReport: TIB_Transaction;
    pnlReport: TElPanel;
    dsReportCaption: TDataSource;
    ImageList1: TImageList;
    dplSubReport3: TppDBPipeline;
    qrySubReport1: TIBOQuery;
    dsSubReport1: TDataSource;
    qryReportParams: TIBOQuery;
    dsReportParams: TDataSource;
    acReportDesign: TAction;
    pnlParam: TPanel;
    acPrint: TAction;
    acDinhnghiaCaption: TAction;
    dxBarButton14: TdxBarButton;
    dbgReportTreeREPORT_ID: TdxDBTreeListMaskColumn;
    dxHideParamReport: TdxCheckEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    ExtraOptions1: TExtraOptions;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    btnHelp: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    btnClose: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    btnNoSelect: TElPopupButton;
    dplSubReport2: TppDBPipeline;
    dplSubReport1: TppDBPipeline;
    qrySubReport2: TIBOQuery;
    dsSubReport2: TDataSource;
    qrySubReport3: TIBOQuery;
    dsSubReport3: TDataSource;
    dxlcReportGroup_Root: TdxLayoutGroup;
    dxlcReport: TdxLayoutControl;
    dxlcReportItem1: TdxLayoutItem;
    lblReportCaption: TElLabel;
    pnlRight: TElPanel;
    dxtsGrid: TElTabSheet;
    dxtsChart: TElTabSheet;
    dbgReportTreeREPORT_NAME_ENG: TdxDBTreeListColumn;
    Panel1: TPanel;
    TeeCommander1: TTeeCommander;
    tcReportChart: TDBChart;
    sLine: TLineSeries;
    sBar: TBarSeries;
    sHBar: THorizBarSeries;
    sArea: TAreaSeries;
    sPoint: TPointSeries;
    sPie: TPieSeries;
    sFLine: TFastLineSeries;
    sHLine: THorizLineSeries;
    sHArea: THorizAreaSeries;
    qryReportChart: TIBOQuery;
    dsReportChart: TDataSource;
    ActionList1: TActionList;
    acDisplayChart: TAction;
    dxpgcReport: TElPageControl;
    qryReportParamsREPORTID: TIntegerField;
    qryReportParamsSUBSYSTEMID: TIntegerField;
    qryReportParamsPARAM_NAME: TWideStringField;
    qryReportParamsPARAM_CAPTION: TWideStringField;
    qryReportParamsDISPLAYFIELD: TWideStringField;
    qryReportParamsLOOKUPFIELD: TWideStringField;
    qryReportParamsDATA_TYPE: TIntegerField;
    qryReportParamsTEMPLATE_NAME: TWideStringField;
    qryReportParamsPARAM_INDEX: TIntegerField;
    qryReportParamsLOOKUP_ID: TIntegerField;
    qryReportCaptionREPORTID: TIntegerField;
    qryReportCaptionSUBSYSTEMID: TIntegerField;
    qryReportCaptionCOLUMN_ID: TWideStringField;
    qryReportCaptionCOLUMN_CAPTION: TWideStringField;
    qryReportCaptionCOLUMN_WIDTH: TIntegerField;
    qryReportCaptionCOLUMN_GROUP: TIntegerField;
    qryReportCaptionCOLUMN_ALIGN: TIntegerField;
    qryReportCaptionCOLUMN_FORMAT: TWideStringField;
    qryReportCaptionCOLUMN_FILTER: TIntegerField;
    qryReportCaptionCOLUMN_FOOTER: TIntegerField;
    qryReportCaptionCOLUMN_INDEX: TIntegerField;
    qryReportCaptionINVISIBLE: TIntegerField;
    qryReportCaptionLOOKUP_ID: TIntegerField;
    qryReportCaptionCOLUMN_CLASS: TIntegerField;
    qryReportChartREPORTID: TIntegerField;
    qryReportChartSUBSYSTEMID: TIntegerField;
    qryReportChartUSED_CHART: TIntegerField;
    qryReportChartCHART_TYPE: TWideStringField;
    qryReportChartTITLE: TWideStringField;
    qryReportChartX_TITLE: TWideStringField;
    qryReportChartY_TITLE: TWideStringField;
    qryReportChartX_FIELD: TWideStringField;
    qryReportChartY_FIELD: TWideStringField;
    dbgReportTreeINVISIBLE: TdxDBTreeListCheckColumn;
    ElSplitter1: TElSplitter;
    dbgAnalysisColumn1: TdxDBGridGraphicColumn;
    qryReportChartCHART_DATASOURCE: TIntegerField;
    dplReport: TppDBPipeline;
    rptReport: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    qryReportParamsPARAM_CAPTION_ENG: TWideStringField;
    qryReportChartTITLE_ENG: TWideStringField;
    qryReportChartX_TITLE_ENG: TWideStringField;
    qryReportChartY_TITLE_ENG: TWideStringField;
    qryReportCaptionCOLUMN_CAPTION_ENG: TWideStringField;
    dbgReportTreeDISPLAY_INDEX: TdxDBTreeListColumn;
    ppThongtinDoanhnghiep: TppDBPipeline;
    qryReportTreeSUBSYSTEMID: TIntegerField;
    qryReportTreeREPORTID: TIntegerField;
    qryReportTreeREPORT_NAME: TWideStringField;
    qryReportTreeKEYFIELD: TWideStringField;
    qryReportTreeSQLSELECT: TWideStringField;
    qryReportTreeTEMPLATE_NAME: TWideStringField;
    qryReportTreeCOLUMNCOUNT: TSmallintField;
    qryReportTreeSQL_SUB1: TWideStringField;
    qryReportTreeSQL_SUB2: TWideStringField;
    qryReportTreeSQL_SUB3: TWideStringField;
    qryReportTreeCONDITIONTYPE: TSmallintField;
    qryReportTreePREPORTID: TIntegerField;
    qryReportTreeINVISIBLE: TSmallintField;
    qryReportTreeREPORT_NAME_ENG: TWideStringField;
    qryReportTreeTEMPLATE_NAME_ENG: TWideStringField;
    qryReportTreeP_KEYFIELD: TWideStringField;
    qryReportTreeDISPLAY_INDEX: TIntegerField;
    dxtsChart1: TElTabSheet;
    Panel2: TPanel;
    TeeCommander2: TTeeCommander;
    tcReportChart1: TDBChart;
    LineSeries1: TLineSeries;
    BarSeries1: TBarSeries;
    HorizBarSeries1: THorizBarSeries;
    AreaSeries1: TAreaSeries;
    PointSeries1: TPointSeries;
    PieSeries1: TPieSeries;
    FastLineSeries1: TFastLineSeries;
    HorizLineSeries1: THorizLineSeries;
    HorizAreaSeries1: THorizAreaSeries;
    dxtsChart2: TElTabSheet;
    Panel3: TPanel;
    TeeCommander3: TTeeCommander;
    tcReportChart2: TDBChart;
    LineSeries2: TLineSeries;
    BarSeries2: TBarSeries;
    HorizBarSeries2: THorizBarSeries;
    AreaSeries2: TAreaSeries;
    PointSeries2: TPointSeries;
    PieSeries2: TPieSeries;
    FastLineSeries2: TFastLineSeries;
    HorizLineSeries2: THorizLineSeries;
    HorizAreaSeries2: THorizAreaSeries;
    acDisplayChart1: TAction;
    acDisplayChart2: TAction;
    qryReportChart1: TIBOQuery;
    dsReportChart1: TDataSource;
    qryReportChart2: TIBOQuery;
    dsReportChart2: TDataSource;
    qryReportChart1REPORTID: TIntegerField;
    qryReportChart1SUBSYSTEMID: TIntegerField;
    qryReportChart1USED_CHART: TIntegerField;
    qryReportChart1CHART_TYPE: TWideStringField;
    qryReportChart1TITLE: TWideStringField;
    qryReportChart1X_TITLE: TWideStringField;
    qryReportChart1Y_TITLE: TWideStringField;
    qryReportChart1X_FIELD: TWideStringField;
    qryReportChart1Y_FIELD: TWideStringField;
    qryReportChart1CHART_DATASOURCE: TIntegerField;
    qryReportChart1TITLE_ENG: TWideStringField;
    qryReportChart1X_TITLE_ENG: TWideStringField;
    qryReportChart1Y_TITLE_ENG: TWideStringField;
    qryReportChart2REPORTID: TIntegerField;
    qryReportChart2SUBSYSTEMID: TIntegerField;
    qryReportChart2USED_CHART: TIntegerField;
    qryReportChart2CHART_TYPE: TWideStringField;
    qryReportChart2TITLE: TWideStringField;
    qryReportChart2X_TITLE: TWideStringField;
    qryReportChart2Y_TITLE: TWideStringField;
    qryReportChart2X_FIELD: TWideStringField;
    qryReportChart2Y_FIELD: TWideStringField;
    qryReportChart2CHART_DATASOURCE: TIntegerField;
    qryReportChart2TITLE_ENG: TWideStringField;
    qryReportChart2X_TITLE_ENG: TWideStringField;
    qryReportChart2Y_TITLE_ENG: TWideStringField;
    qryReportChartSTT: TIntegerField;
    qryReportChart1STT: TIntegerField;
    qryReportChart2STT: TIntegerField;
    memDisplayReport: TdxMemData;
    dsDisplayReport: TDataSource;
    dxSaoChepBaoBieu: TdxBarButton;
    acSaoChepBaoBieu: TAction;
    qrySaoChepBaoBieu: TIBOQuery;
    qrySaoChepBaoBieuREPORTID: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgReportTreeChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure FormDestroy(Sender: TObject);
    procedure acPerformExecute(Sender: TObject);
    procedure acDesignExecute(Sender: TObject);
    procedure dbgReportTreeDblClick(Sender: TObject);
    procedure acPreviewExecute(Sender: TObject);
    procedure rptReportBeforePrint(isprinted: boolean = false);
    procedure dbgReportTreeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acShowGridExecute(Sender: TObject);
    procedure acShowSummaryFooterExecute(Sender: TObject);
    procedure acShowGroupPanelExecute(Sender: TObject);
    procedure dxseMonthChange(Sender: TObject);
    procedure dxseMonthKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryReportCaptionNewRecord(DataSet: TDataSet);
    procedure qryReportParamsNewRecord(DataSet: TDataSet);
    procedure OnOwnerParamEdit(Sender: TObject);
    procedure dbgAnalysisMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acPerformUpdate(Sender: TObject);
    procedure acDesignerUpdate(Sender: TObject);
    procedure dbgAnalysisDblClick(Sender: TObject);
    procedure acPreviewUpdate(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acDinhnghiaCaptionExecute(Sender: TObject);
    procedure dbgReportTreeCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure dbgReportTreeMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgReportTreeGetSelectedIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure dbgReportTreeGetImageIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure dxHideParamReportChange(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure acPrintUpdate(Sender: TObject);
    procedure acDinhnghiaCaptionUpdate(Sender: TObject);
    procedure acDisplayChartExecute(Sender: TObject);
    procedure qryReportTreeNewRecord(DataSet: TDataSet);
    procedure ShowParamControl;
    procedure CreateParamPanel;
    procedure FormCreate(Sender: TObject);
    procedure acDisplayChart1Execute(Sender: TObject);
    procedure acDisplayChart2Execute(Sender: TObject);
    procedure qryReportChartNewRecord(DataSet: TDataSet);
    procedure qryReportChart2NewRecord(DataSet: TDataSet);
    procedure qryReportChart1NewRecord(DataSet: TDataSet);
    procedure acSaoChepBaoBieuExecute(Sender: TObject);
  private
    cur_chart: TCustomSeries;
    cur_chart_1: TCustomSeries;
    cur_chart_2: TCustomSeries;
    isPrepare: boolean;
    isChart: boolean;
    Performed: Boolean; //cho biet da do du lieu qua Grid chua
    isCreateTable: boolean;
    FfrmParams: TfrmReportParams;
    REPORT_ID : String;
    { Private declarations }
    procedure SetPerformed(AValue: boolean);
    procedure InitData();
    procedure LoadDisplayData();

    function PrepareReport: boolean;
    function GetParamValue(AParamName: string): variant;
    function GetParamDisplayValue(AParamName: string): variant;
  public
    property IsPerformed: boolean read Performed write SetPerformed;
  end;
var
  frmReportsMain: TfrmReportsMain;
  rCurFormat: string = ',0.##;-,0.##';
  numFormat: string = ',0.##;-,0.##';
  dateFormat: string = 'dd/mm/yyyy';
implementation

uses dxLayoutLookAndFeels, ppTmplat, TeCanvas, SSP_Library,
  ReportCaptionDefineForm, SSP_Menus, MainUnit,
  MainDM, Registry;
{$R *.dfm}

procedure TfrmReportsMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  try
    with qryReportChart do
      if Active then
        Close;
    with qryReportChart1 do
      if Active then
        Close;
   with qryReportChart2 do
      if Active then
        Close;

    with qryReportCaption do
      if Active then
        Close;
    with qryReport do
      if Active then
        Close;
    with qryReportTree do
      if Active then
        Close;
  except
  end;
  action := caFree;
  FfrmParams.Free;
  frmReportsMain := nil;
end;

procedure TfrmReportsMain.LoadDisplayData();
  procedure LoadNode (cur_node:TdxTreeListNode);
  var i:integer;
  begin
    if cur_node.HasChildren then
    begin
      for i:=0 to cur_node.Count-1 do
        LoadNode(cur_node.Items[i]);
    end
    else
    begin
      if not (memDisplayReport.State in [dsInsert,dsEdit]) then
        memDisplayReport.Append;
      for i:=0 to dbgAnalysis.ColumnCount-1 do
      begin
        memDisplayReport.FieldByName(dbgAnalysis.Columns[i].FieldName).Value:=cur_node.Values[dbgAnalysis.Columns[i].Index];
      end;
      memDisplayReport.Post;
    end;
  end;
var i,j:integer;
  node: TdxTreeListNode;
begin
 if memDisplayReport.Active then memDisplayReport.Close;
 memDisplayReport.Open;

 for i := 0 to dbgAnalysis.Count - 1 do
  begin
    node := dbgAnalysis.Items[i];
    if node.IsVisible then
      LoadNode(node);
{
    if node.IsVisible and (not node.HasChildren) then
    begin

    end;
}
  end;

end;
procedure TfrmReportsMain.InitData();
var
  i: integer;
  col: TdxDBTreeListColumn;
  iTotalWidth: integer;
  ret: Boolean;
  reg: TRegistry;
begin
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;
  //===============
  frmMain.SetStatusBarMsg(UTF8Decode('Chuẩn bị nội dung báo cáo'));
  if Assigned(cur_chart) then
  begin
    cur_chart.XLabelsSource := '';
    cur_chart.YValues.ValueSource := '';
    cur_chart.DataSource := nil;
    tcReportChart.LeftAxis.Title.Caption := '';
    tcReportChart.BottomAxis.Title.Caption := '';
    cur_chart.Visible := False;
  end;
  if Assigned(cur_chart_1) then
  begin
    cur_chart_1.XLabelsSource := '';
    cur_chart_1.YValues.ValueSource := '';
    cur_chart_1.DataSource := nil;
    tcReportChart1.LeftAxis.Title.Caption := '';
    tcReportChart1.BottomAxis.Title.Caption := '';
    cur_chart_1.Visible := False;
  end;
  if Assigned(cur_chart_2) then
  begin
    cur_chart_2.XLabelsSource := '';
    cur_chart_2.YValues.ValueSource := '';
    cur_chart_2.DataSource := nil;
    tcReportChart2.LeftAxis.Title.Caption := '';
    tcReportChart2.BottomAxis.Title.Caption := '';
    cur_chart_2.Visible := False;
  end;
  //===============
  frmMain.SetStatusBarMsg(UTF8Decode('Đọc nội dung báo cáo'));

  qryReport.DisableControls;
  with qryReport do
  begin
    if Active = true then
      Close;
    if not isCreateTable then
    begin
      for i := 0 to ParamCount - 1 do
        ParamByName(Params[i].Name).Value := null;
      SQL.Clear;
      SQLWhere.Clear;
      Params.Clear;
      if qryReportTreeSQLSELECT.AsString = '' then
      begin
        ShowMessageUnicode(25);
        Exit;
      end;
      SQL.Text := qryReportTreeSQLSELECT.AsString;
      Prepare;
    end;
    for i := 0 to ParamCount - 1 do
      ParamByName(Params[i].Name).Value := GetParamValue(Params[i].Name);
    Open;
  end;
  // tao bang
  frmMain.SetStatusBarMsg(UTF8Decode('Xây dựng lưới dữ liệu báo cáo'));

  while dbgAnalysis.GroupColumnCount > 0 do
    dbgAnalysis.DeleteGroupColumn(0);
  if not isCreateTable then
  begin
    iTotalWidth := 0;

    dbgAnalysis.DestroyColumns;
    dbgAnalysis.Refresh;
    dbgAnalysis.KeyField := VarToWideStr(qryReportTreeKEYFIELD.Value);

    qryReportCaption.Open;
    with qryReportCaption do
    begin
      First;
      while not eof do
      begin
        if qryReportCaptionCOLUMN_FORMAT.AsString = 'CURRENCY' then
        begin
          col := dbgAnalysis.CreateColumn(TdxDBGridCurrencyColumn);
          TdxDBGridCurrencyColumn(col).DisplayFormat :=
            sysConfig.FloatFormat;
          if qryReportCaptionCOLUMN_FOOTER.AsInteger = 1 then
          begin
            col.SummaryFooterFormat :=
              sysConfig.FloatFormat;
            col.SummaryFooterType := cstSum;
          end;
        end
        else
          if qryReportCaptionCOLUMN_FORMAT.AsString = 'SL' then
          begin
            col := dbgAnalysis.CreateColumn(TdxDBGridCurrencyColumn);
            TdxDBGridCurrencyColumn(col).DisplayFormat :=
              sysConfig.FloatFormat;
            if qryReportCaptionCOLUMN_FOOTER.AsInteger = 1 then
            begin
              col.SummaryFooterFormat := sysConfig.FloatFormat;
              col.SummaryFooterType := cstSum;
            end;
          end
          else
            if qryReportCaptionCOLUMN_FORMAT.AsString = 'DATE' then
            begin
              col := dbgAnalysis.CreateColumn(TdxDBGridDateColumn);
              TDateField(qryReport.FieldByName(qryReportCaptionCOLUMN_ID.AsString)).DisplayFormat :=
                sysConfig.DateFormat;
            end
            else
              if qryReportCaptionCOLUMN_FORMAT.AsString = 'TIME' then
              begin
                col := dbgAnalysis.CreateColumn(TdxDBGridTimeColumn);
              end
              else
                if qryReportCaptionCOLUMN_FORMAT.AsString = 'BLOD' then
                begin
                  col := dbgAnalysis.CreateColumn(TdxDBGridBlobColumn);
                  TdxDBGridBlobColumn(col).BlobKind := bkMemo;
                  TdxDBGridBlobColumn(col).BlobPaintStyle := bpsText;
                end
                else
                  if qryReportCaptionCOLUMN_FORMAT.AsString = 'IMAGE' then
                  begin
                    col := dbgAnalysis.CreateColumn(TdxDBGridGraphicColumn);
                    TdxDBGridGraphicColumn(col).Stretch := true;
                    TdxDBGridGraphicColumn(col).OnGetGraphicClass :=
                      dmMain.DefOnGetGraphicClassForGrid;
                    TdxDBGridGraphicColumn(col).OnAssignPicture :=
                      dmMain.DefOnAssignPicture;
                    dbgAnalysis.DefaultRowHeight := 40;
                  end
                  else
                    if qryReportCaptionCOLUMN_FORMAT.AsString = 'CHECK' then
                    begin
                      col := dbgAnalysis.CreateColumn(TdxDBGridCheckColumn);
                      TdxDBGridCheckColumn(col).ValueChecked := '1';
                      TdxDBGridCheckColumn(col).ValueUnchecked := '0';
                    end
                    else
                    begin
                      col := dbgAnalysis.CreateColumn(TdxDBGridColumn);
                    end;
        if sysConfig.Language <> 2 then
          col.Caption := VarToWideStr(qryReportCaptionCOLUMN_CAPTION.Value)
        else
          col.Caption := VarToWideStr(qryReportCaptionCOLUMN_CAPTION_ENG.Value);
        col.FieldName := qryReportCaptionCOLUMN_ID.AsString;
        col.HeaderAlignment := taCenter;

        //edited by ThuyPTP - 07/04/2009
        //Load cau hinh width va visible cot tu registry len luoi
        ret := reg.KeyExists(REGISTRY_ROOT + '\UIConfig\ReportCaption\' + qryReportTreeREPORTID.AsString + '\' + qryReportCaptionCOLUMN_ID.AsString );
        if ret = false then
        begin
          col.Width := qryReportCaptionCOLUMN_WIDTH.AsInteger;
          col.Visible := (qryReportCaptionINVISIBLE.AsInteger = 0);
        end
        else
        begin
          reg.OpenKey(REGISTRY_ROOT + '\UIConfig\ReportCaption\' + qryReportTreeREPORTID.AsString + '\' + qryReportCaptionCOLUMN_ID.AsString, False);
          col.Width := reg.ReadInteger('WIDTH');
          col.Visible := reg.ReadBool('VISIBLE'); 
        end;
        //Het edited by ThuyPTP - 07/04/2009

        col.Name:='dbgAnalysis'+qryReportCaptionCOLUMN_ID.AsString;
        if qryReportCaptionCOLUMN_GROUP.AsInteger = 1 then
        begin
          dbgAnalysis.AddGroupColumn(col);
          col.Tag := 1;
        end
        else
        begin
          col.Tag := 0;
        end;
        if col.Visible then
          iTotalWidth := iTotalWidth + col.Width;
        next;
      end;
    end;
    if iTotalWidth < (dbgAnalysis.Width) then
      dbgAnalysis.OptionsView := dbgAnalysis.OptionsView + [edgoAutoWidth]
    else
      dbgAnalysis.OptionsView := dbgAnalysis.OptionsView - [edgoAutoWidth];
    //      dbgAnalysis.ShowGroupPanel := (dbgAnalysis.GroupColumnCount > 0);
    // tao cac cot khac khong co trong danh sach
    for i:=0 to qryReport.FieldCount-1 do
    begin
      if not Assigned(dbgAnalysis.FindColumnByFieldName(qryReport.Fields[i].FieldName)) then
      begin
        col := dbgAnalysis.CreateColumn(TdxDBGridColumn);
        col.Caption := qryReport.Fields[i].FieldName;
        col.FieldName := qryReport.Fields[i].FieldName;
        col.HeaderAlignment := taCenter;
        col.Width := qryReportCaptionCOLUMN_WIDTH.AsInteger;
        col.Visible := false;
        col.Name:='dbgAnalysis'+qryReport.Fields[i].FieldName;
      end;
    end;
    isCreateTable := true;
  end
  else
  begin
    for i := 0 to dbgAnalysis.ColumnCount - 1 do
      if dbgAnalysis.Columns[i].Tag = 1 then
        dbgAnalysis.AddGroupColumn(dbgAnalysis.Columns[i]);
  end;

   // khoi tao Display Data
   frmMain.SetStatusBarMsg(UTF8Decode('Đọc dữ liệu hiển thị của báo cáo'));

   if memDisplayReport.Active then memDisplayReport.Close;
  // memDisplayReport.Fields.Free;
   memDisplayReport.CreateFieldsFromDataSet(qryReport);

   LoadDisplayData;

  frmMain.SetStatusBarMsg(UTF8Decode('Khởi tạo các báo cáo phụ'));

  with qrySubReport1 do
  begin
    if Active then
      Close;
    for i := 0 to ParamCount - 1 do
      ParamByName(Params[i].Name).Value := null;
    SQL.Clear;
    SQLWhere.Clear;
    Params.Clear;
    if qryReportTreeSQL_SUB1.AsString <> '' then
    begin
      SQL.Text := qryReportTreeSQL_SUB1.AsString;
      Prepare;
      for i := 0 to ParamCount - 1 do
      begin
        if not Assigned(qryReport.FindField(Params[i].Name)) then
          ParamByName(Params[i].Name).Value := GetParamValue(Params[i].Name);
      end;
      Open;
      dplSubReport1.DataSource := dsSubReport1;
    end                                          
    else
      dplSubReport1.DataSource := nil;
  end;
  //subreport 2
  with qrySubReport2 do
  begin
    if Active = true then
      Close;
    for i := 0 to ParamCount - 1 do
      ParamByName(Params[i].Name).Value := null;
    SQL.Clear;
    SQLWhere.Clear;
    Params.Clear;
    if qryReportTreeSQL_SUB2.AsString <> '' then
    begin
      SQL.Text := qryReportTreeSQL_SUB2.AsString;
      Prepare;
      for i := 0 to ParamCount - 1 do
        ParamByName(Params[i].Name).Value := GetParamValue(Params[i].Name);
      Open;
      dplSubReport2.DataSource := dsSubReport2;
    end
    else
      dplSubReport2.DataSource := nil;
  end;
  //sub report 3
  with qrySubReport3 do
  begin
    if Active = true then
      Close;
    for i := 0 to ParamCount - 1 do
      ParamByName(Params[i].Name).Value := null;
    SQL.Clear;
    SQLWhere.Clear;
    Params.Clear;
    if qryReportTreeSQL_SUB3.AsString <> '' then
    begin
      SQL.Text := qryReportTreeSQL_SUB3.AsString;
      Prepare;
      for i := 0 to ParamCount - 1 do
        ParamByName(Params[i].Name).Value := GetParamValue(Params[i].Name);
      Open;
      dplSubReport3.DataSource := dsSubReport3;
    end
    else
      dplSubReport3.DataSource := nil;
  end;
  // het report

  // ket thuc tao bang
  // ve bieu do
  acDisplayChart.Execute;
  acDisplayChart1.Execute;
  acDisplayChart2.Execute;

  qryReport.EnableControls;
   frmMain.SetStatusBarMsg(UTF8Decode('Quá trình đọc báo cáo hoàn tất'));

end;

function TfrmReportsMain.GetParamValue(AParamName: string): variant;
begin
  Result := FfrmParams.GetParamValue(AParamName);
end;

function TfrmReportsMain.GetParamDisplayValue(AParamName: string): variant;
begin
  Result := FfrmParams.GetParamDisplayValue(AParamName);
end;

procedure TfrmReportsMain.dbgReportTreeChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
var
  ret: Boolean;
  reg: TRegistry;
  i : integer;
begin
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;

  if self.Active = false then exit;
  if Node.HasChildren then exit;
  //Added by THUYPTP - 07/04/2009
  //Ghi nhan cau hinh caption cua report id
  if (REPORT_ID <> qryReportTreeREPORTID.AsString) then
  begin
    if (REPORT_ID <> '') then
    begin
      ret := reg.KeyExists(REGISTRY_ROOT + '\UIConfig\ReportCaption\' + REPORT_ID);
      if ret = false then
        reg.CreateKey(REGISTRY_ROOT + '\UIConfig\ReportCaption\' + REPORT_ID);
      reg.OpenKey(REGISTRY_ROOT + '\UIConfig\ReportCaption\' + REPORT_ID, False);

      if dbgAnalysis.ColumnCount > 0 then
      begin
        for i:=0 to dbgAnalysis.ColumnCount -1 do
        begin
          ret := reg.KeyExists(REGISTRY_ROOT + '\UIConfig\ReportCaption\' + REPORT_ID + '\' + dbgAnalysis.Columns[i].FieldName );
          if ret = false then
            reg.CreateKey(REGISTRY_ROOT + '\UIConfig\ReportCaption\' + REPORT_ID + '\' + dbgAnalysis.Columns[i].FieldName );
          reg.OpenKey(REGISTRY_ROOT + '\UIConfig\ReportCaption\' + REPORT_ID + '\' + dbgAnalysis.Columns[i].FieldName,false );
          reg.WriteInteger('WIDTH',dbgAnalysis.Columns[i].Width);
          reg.WriteBool('VISIBLE',dbgAnalysis.Columns[i].Visible);
        end;
      end;
    end;
    REPORT_ID := qryReportTreeREPORTID.AsString;
  end;
  //Het added by ThuyPTP - 07/04/2009

  isPerformed := False;
  isCreateTable := false;
  isPrepare := False;
  if sysConfig.Language <> 2 then
    lblReportCaption.Caption := WideUpperCase(qryReportTreeREPORT_NAME.value)
  else
    lblReportCaption.Caption :=
      WideUpperCase(qryReportTreeREPORT_NAME_ENG.value);
  if Screen.ActiveForm = Self then
  begin
    // Dong cac query lai
    try
      with qryReportCaption do
        if Active then
          Close;
      with qryReport do
        if Active then
          Close;
    except
    end;
    {update param  }
    Container_Width := pnlParam.Width;
    ShowParamControl;
  end;
  //chart


end;

procedure TfrmreportsMain.ShowParamControl;
var
  h: integer;
begin
  FfrmParams.ReportID := qryReportTreeREPORTID.Value;
  h := FfrmParams.dxLayoutControl1.ViewInfo.ItemsViewInfo.CalculateHeight + 4;
  if h > 33 then
    pnlParam.Height := h
  else
    pnlParam.Height := 33;
  pnlreport.Height := dxlcReport.ViewInfo.ItemsViewInfo.CalculateHeight + 4;
  dxpgcReport.Height := pnlRight.Height - pnlReport.Height - pnlParam.Height;
end;

procedure TfrmReportsMain.FormDestroy(Sender: TObject);
begin
  with frmMain.bbListwindows.Items do
    Delete(IndexOfObject(Self));
  frmReportsMain := nil;
end;

procedure TfrmReportsMain.acPerformExecute(Sender: TObject);
begin
  dxpgcReport.ActivePageIndex := 0;
  if qryReportTree.IsEmpty then exit;
  if dbgReportTree.FocusedNode.HasChildren then
    exit;
  dxpgcReport.ActivePage := dxtsGrid;
  dxpgcReport.BringToFront;
  if IsPerformed then
    exit;
  Screen.Cursor := crHourGlass;
  try
    InitData();
    dbgAnalysis.FullRefresh;
    isPerformed := True;
  finally
    Screen.Cursor := crDefault;
  end;
  dbgAnalysis.FullExpand;
end;

procedure TfrmReportsMain.dbgReportTreeDblClick(Sender: TObject);
begin
  if Assigned(dbgReportTree.FocusedNode) and not
    dbgReportTree.FocusedNode.HasChildren then
    acPerform.Execute;
  dbgAnalysis.FullExpand;
end;

function TfrmReportsMain.PrepareReport: boolean;
var
  pathName, pathDirectory: string;
begin
  try
    if sysConfig.Language = 2 then
      pathDirectory := ExtractFilePath(Application.ExeName) + 'Reports\Eng'
    else
      pathDirectory := ExtractFilePath(Application.ExeName) + 'Reports\Vn';
    pathName := pathDirectory + '\' + qryReportTreeTEMPLATE_NAME.AsString;
    if not qryReportTreeSQLSELECT.IsNull then
    begin
      if (FileExists(pathName)) then
      begin
        frmMain.SetStatusBarMsg(UTF8Decode('Đọc dữ liệu hiển thị của báo cáo'));
        LoadDisplayData;
        frmMain.SetStatusBarMsg('');
        rptReport.Template.FileName := pathName;
        rptReport.Template.Load;
      end
      else
      begin
        ShowMessageUnicode(24);
        Result := false;
        isPrepare := false;
        exit;
      end;
    end;
  except
    result := false;
  end;
  isPrepare := true;
   result := true;
end;

procedure TfrmReportsMain.acPreviewExecute(Sender: TObject);
begin
if dxpgcReport.ActivePage = dxtsGrid then
  begin
//    if not isPrepare then
      PrepareReport;
    dmMain.DefOnBeforePrint(true, qryReport,self); //thiet lap label
    rptReport.AllowPrintToFile := True;
    if isPrepare then
    begin
      rptReportBeforePrint(true);
      rptReport.DeviceType := dtScreen;
      rptReport.Print;
    end
  end
end;

procedure TfrmReportsMain.acDesignExecute(Sender: TObject);
begin
  PrepareReport;
  if isPrepare then
  begin
    dmMain.DefOnBeforePrint(false, qryReport,self);
    rptReportBeforePrint(false);
    dsgReport.Report := rptReport;
    dsgReport.ShowModal;
    dsgReport.Report := nil;
  end
  else
    ShowMessageUnicode(25);
end;

procedure TfrmReportsMain.rptReportBeforePrint(isprinted: boolean);
var
  i: integer;
  compReport: TComponent;
  CompCap: string;
  paramIndex: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    compReport := Components[i];
    if (compReport is TppDBImage) then
    begin
      if (dmMain.qryThongTinDoanhNghiepIMG_TYPE.AsString = 'TJPEGImage') then
        (compReport as TppDBImage).GraphicType := 'JPEG'
      else
        if (dmMain.qryThongTinDoanhNghiepIMG_TYPE.AsString = 'TBitmap') then
          (compReport as TppDBImage).GraphicType := 'Bitmap';
      Continue;
    end;
    if (compReport is TppDBText) then
    begin
      (compReport as TppDBText).AutoSize := false;
      if (compReport as TppDBText).Height < 0.1 then
        (compReport as TppDBText).Height := 0.2;
      if (compReport as TppDBText).Width < 0.1 then
        (compReport as TppDBText).Width := 0.2;
    end;
    if isprinted = false then continue;
    //===========================================================
    if not (compReport is TppLabel) then
      Continue;
    (compReport as TppLabel).Autosize := false;

    if (compReport as TppLabel).Height < 0.1 then
      (compReport as TppLabel).Height := 0.2;
    if (compReport as TppLabel).Width < 0.1 then
      (compReport as TppLabel).Width := 0.2;
    CompCap := LowerCase(UTF8Encode((compReport as TppLabel).Caption));
    if Pos('lbl_param', CompCap) = 1 then
      paramIndex := StrToIntDef(Copy(CompCap, 10, Length(CompCap) - 9), -1)
    else
      paramIndex := -1;
    if paramIndex >= 0 then
      TppLabel(compReport).Caption :=
        VarToWideStr(GetParamDisplayValue(qryReport.Params[paramIndex].Name));
  end;
end;

procedure TfrmReportsMain.dbgReportTreeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    dbgReportTreeDblClick(Sender);
end;

procedure TfrmReportsMain.acShowGridExecute(Sender: TObject);
begin
  dxpgcReport.ActivePage := dxtsGrid;
end;

procedure TfrmReportsMain.acShowSummaryFooterExecute(Sender: TObject);
begin
  dbgAnalysis.ShowSummaryFooter := not dbgAnalysis.ShowSummaryFooter;
end;

procedure TfrmReportsMain.acShowGroupPanelExecute(Sender: TObject);
begin
  //  dbgAnalysis.ShowGroupPanel := not dbgAnalysis.ShowGroupPanel;
end;

procedure TfrmReportsMain.dxseMonthChange(Sender: TObject);
begin
  acPerform.Enabled := true;
end;

procedure TfrmReportsMain.dxseMonthKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    keybd_event(VK_TAB, 0, 0, 0);
end;

procedure TfrmReportsMain.qryReportCaptionNewRecord(DataSet: TDataSet);
begin
  with DataSet as TIBODataset do
  begin
    FieldByName('REPORT_ID').Value :=
      qryReportTree.FieldByName('REPORT_ID').Value;
  end;
end;

procedure TfrmReportsMain.qryReportParamsNewRecord(DataSet: TDataSet);
begin
  with DataSet as TIBODataset do
  begin
    FieldByName('REPORT_ID').Value :=
      qryReportTree.FieldByName('REPORT_ID').Value;
  end;
end;

procedure TfrmReportsMain.OnOwnerParamEdit(Sender: TObject);
begin
  Performed := false;
end;

procedure TfrmReportsMain.SetPerformed(AValue: boolean);
begin
  Performed := AValue;
end;

procedure TfrmReportsMain.dbgAnalysisMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ShowCustomGridPopupMenu(TdxDBGrid(Sender), false, Button) = 2 then
    dxbpmReportGrid.PopupFromCursorPos;
end;

procedure TfrmReportsMain.acPerformUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := not Performed;
end;

procedure TfrmReportsMain.acDesignerUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := qryReport.Active;
end;

procedure TfrmReportsMain.dbgAnalysisDblClick(Sender: TObject);
begin
  acPreview.Execute;
end;

procedure TfrmReportsMain.acPreviewUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := qryReport.Active;
end;

procedure TfrmReportsMain.acPrintExecute(Sender: TObject);
begin
  if dxpgcReport.ActivePage = dxtsGrid then
  begin
    if not isPrepare then
      PrepareReport;
    //    dmMain.DefOnBeforePrint(true, qryReport,self); //thiet lap label
    rptReport.AllowPrintToFile := True;
    if isPrepare then
    begin
      rptReportBeforePrint(true);
      rptReport.DeviceType := dtPrinter;
      rptReport.Print;
    end
  end
end;

procedure TfrmReportsMain.acDinhnghiaCaptionExecute(Sender: TObject);
var
  need_refresh: boolean;
begin
  dbgReportTree.Enabled := false;
  with TfrmReportCaptionDefine.Create(self) do
    try
      ShowModal;
    finally
      qryReportCaptionDefine.Close;
      Free;
      qryReportTree.Refresh;
    end;
  CreateParamPanel;
  ShowParamControl;
  dbgReportTree.Enabled := true;
end;

procedure TfrmReportsMain.CreateParamPanel;
begin
  if Assigned(FfrmParams) then
    FfrmParams.Free;
  FfrmParams := TfrmReportParams.Create(Self);
  with FfrmParams do
  begin
    Parent := pnlparam;
    Align := alClient;
    OnParamEdit := OnOwnerParamEdit;
    Paramset := qryReportParams;
    BorderStyle := bsNone;
    Visible := true;
  end;
end;

procedure TfrmReportsMain.dbgReportTreeCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  try
    if Anode.HasChildren then
    begin
      AFont.Style := AFont.Style + [fsBold];
      //    AFont.Color := clGreen;
    end;
    if Anode.Values[dbgReportTreeINVISIBLE.Index] = 1 then
    begin
      AFont.Style := AFont.Style + [fsItalic];
      AFont.Color := clBlue;
    end;
  except
  end
end;

procedure TfrmReportsMain.dbgReportTreeMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbRight) then
  begin
    if frmMain.ShowGridMenus(TdxDBGrid(Sender)) then exit
    else pmTree.PopupFromCursorPos;
  end;
end;

procedure TfrmReportsMain.dbgReportTreeGetSelectedIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
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

procedure TfrmReportsMain.dbgReportTreeGetImageIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
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

procedure TfrmReportsMain.dxHideParamReportChange(Sender: TObject);
begin
  if dxHideParamReport.Checked = false then
  begin
    qryReportTree.Close;
    qryReportTree.SQLWhere.Text := 'where Invisible<>1';
    qryReportTree.Open;
  end
  else
  begin
    qryReportTree.Close;
    qryReportTree.SQLWhere.Clear;
    qryReportTree.Open;
  end;
  dbgReportTree.FullExpand;
end;

procedure TfrmReportsMain.FormDeactivate(Sender: TObject);
begin
  frmMain.ElFormCaption1.Texts.Items[2].Caption := '';
end;

procedure TfrmReportsMain.acPrintUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := qryReport.Active;
end;

procedure TfrmReportsMain.acDinhnghiaCaptionUpdate(Sender: TObject);
begin
  // locked by THUYPTP - 03/04/2009
  //Nguoi su dung duoc quyen sua caption nhung chi cho sua 1 vai cho
  //acDinhnghiaCaption.Enabled := (sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin');
end;

procedure TfrmReportsMain.acDisplayChartExecute(Sender: TObject);
begin
  dxtsChart.Visible:=false;
  dxtsChart.TabVisible:=false;
  if qryReportChartUSED_CHART.Value <> 1 then
  begin
    tcReportChart.Visible := False;
    Exit;
  end
  else
    tcReportChart.Visible := True;

  if sysConfig.Language <> 2 then
    tcReportChart.Title.Text.Text := qryReportChartTITLE.Value
  else
    tcReportChart.Title.Text.Text := qryReportChartTITLE_ENG.Value;
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
                  end;

  if qryReportChartCHART_DATASOURCE.Value = 1 then
    cur_chart.DataSource := qrySubReport1
  else
    if qryReportChartCHART_DATASOURCE.Value = 2 then
      cur_chart.DataSource := qrySubReport2
    else
      if qryReportChartCHART_DATASOURCE.Value = 3 then
        cur_chart.DataSource := qrySubReport3
      else
        cur_chart.DataSource := qryReport;

  cur_chart.XLabelsSource := qryReportChartX_FIELD.AsString;
  cur_chart.YValues.ValueSource := qryReportChartY_FIELD.AsString;
  if sysConfig.Language <> 2 then
  begin
    tcReportChart.LeftAxis.Title.Caption := qryReportChartY_TITLE.Value;
    tcReportChart.BottomAxis.Title.Caption := qryReportChartX_TITLE.Value;
  end
  else
  begin
    tcReportChart.LeftAxis.Title.Caption := qryReportChartY_TITLE_ENG.Value;
    tcReportChart.BottomAxis.Title.Caption := qryReportChartX_TITLE_ENG.Value;
  end;
  cur_chart.Visible := True;
  dxtsChart.Visible:=true;
  dxtsChart.TabVisible:=true;
end;

procedure TfrmReportsMain.qryReportTreeNewRecord(DataSet: TDataSet);
begin
  qryReportTreeSUBSYSTEMID.Value := sysConfig.SubSystemID;
  qryReportTreeINVISIBLE.Value := 0;
end;

procedure TfrmReportsMain.FormCreate(Sender: TObject);
var
  ret: Boolean;
  reg: TRegistry;
begin
  REPORT_ID := '';
  inherited;
  if not dmMain.qryThongTinDoanhNghiep.Active then
    dmMain.qryThongTinDoanhNghiep.Open;
  with qryReportTree do
  begin
    if Active then
      close;
    ParamByName('SUBSYSTEM_ID').Value := sysConfig.SubSystemID;
    Open;
  end;
  qryReportParams.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
  qryReportCaption.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
  qryReportChart.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
  qryReportChart1.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
  qryReportChart2.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;

  with qryReportChart do
  begin
    if Active then
      Close;
    Open;
  end;
   with qryReportChart1 do
  begin
    if Active then
      Close;
    Open;
  end;
   with qryReportChart2 do
  begin
    if Active then
      Close;
    Open;
  end;
  dbgReportTree.FullExpand;
  dbgReportTree.GotoFirst;
  pnlReport.BringToFront;

  CreateParamPanel;
  ShowParamControl;
  pnlParam.Visible := true;
  Performed := false;
  isCreateTable := false;
  if sysConfig.Language = 2 then
  begin
    dbgReportTreeREPORT_NAME.Visible := false;
    dbgReportTreeREPORT_NAME_ENG.Visible := true;
  end
  else
  begin
    dbgReportTreeREPORT_NAME.Visible := true;
    dbgReportTreeREPORT_NAME_ENG.Visible := false;
  end;

  dxtsChart.TabVisible:=false;
  dxtsChart1.TabVisible:=false;
  dxtsChart2.TabVisible:=false;
  dxpgcReport.ActivePageIndex:=0;

  dxHideParamReport.Visible := ((sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin'));

  //Added by THUYPTP - 07/04/2009
  //Ghi nhan cau hinh caption cua report id
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;

  ret := reg.KeyExists(REGISTRY_ROOT + '\UIConfig\ReportCaption');
  if ret = false then
      reg.CreateKey(REGISTRY_ROOT + '\UIConfig\ReportCaption');
      
end;

procedure TfrmReportsMain.acDisplayChart1Execute(Sender: TObject);
begin
  inherited;
  dxtsChart1.Visible:=false;
  dxtsChart1.TabVisible:=false;
  if qryReportChart1USED_CHART.Value <> 1 then
  begin
    tcReportChart1.Visible := False;
    Exit;
  end
  else
    tcReportChart1.Visible := True;

  if sysConfig.Language <> 2 then
    tcReportChart1.Title.Text.Text := qryReportChart1TITLE.Value
  else
    tcReportChart1.Title.Text.Text := qryReportChart1TITLE_ENG.Value;
  if qryReportChart1CHART_TYPE.Value = 'LINE' then
  begin
    cur_chart_1 := TCustomSeries(LineSeries1);
  end
  else
    if qryReportChart1CHART_TYPE.Value = 'BAR' then
    begin
      cur_chart_1 := TCustomSeries(BarSeries1);
    end
    else
      if qryReportChart1CHART_TYPE.Value = 'FLINE' then
      begin
        cur_chart_1 := TCustomSeries(FastLineSeries1);
      end
      else
        if qryReportChart1CHART_TYPE.Value = 'HLINE' then
        begin
          cur_chart_1 := TCustomSeries(HorizLineSeries1);
        end
        else
          if qryReportChart1CHART_TYPE.Value = 'HBAR' then
          begin
            cur_chart_1 := TCustomSeries(HorizBarSeries1);
          end
          else
            if qryReportChart1CHART_TYPE.Value = 'AREA' then
            begin
              cur_chart_1 := TCustomSeries(AreaSeries1);
            end
            else
              if qryReportChart1CHART_TYPE.Value = 'HAREA' then
              begin
                cur_chart_1 := TCustomSeries(HorizAreaSeries1);
              end
              else
                if qryReportChart1CHART_TYPE.Value = 'POINT' then
                begin
                  cur_chart_1 := TCustomSeries(PointSeries1);
                end
                else
                  if qryReportChart1CHART_TYPE.Value = 'PIE' then
                  begin
                    cur_chart_1 := TCustomSeries(PieSeries1);
                  end;

  if qryReportChart1CHART_DATASOURCE.Value = 1 then
    cur_chart_1.DataSource := qrySubReport1
  else
    if qryReportChart1CHART_DATASOURCE.Value = 2 then
      cur_chart_1.DataSource := qrySubReport2
    else
      if qryReportChart1CHART_DATASOURCE.Value = 3 then
        cur_chart_1.DataSource := qrySubReport3
      else
        cur_chart_1.DataSource := qryReport;

  cur_chart_1.XLabelsSource := qryReportChart1X_FIELD.AsString;
  cur_chart_1.YValues.ValueSource := qryReportChart1Y_FIELD.AsString;
  if sysConfig.Language <> 2 then
  begin
    tcReportChart1.LeftAxis.Title.Caption := qryReportChart1Y_TITLE.Value;
    tcReportChart1.BottomAxis.Title.Caption := qryReportChart1X_TITLE.Value;
  end
  else
  begin
    tcReportChart1.LeftAxis.Title.Caption := qryReportChart1Y_TITLE_ENG.Value;
    tcReportChart1.BottomAxis.Title.Caption := qryReportChart1X_TITLE_ENG.Value;
  end;
  cur_chart_1.Visible := True;
  dxtsChart1.Visible:=true;
  dxtsChart1.TabVisible:=true;

end;

procedure TfrmReportsMain.acDisplayChart2Execute(Sender: TObject);
begin
 inherited;
 dxtsChart2.Visible:=false;
  dxtsChart2.TabVisible:=false;

if qryReportChart2USED_CHART.Value <> 1 then
  begin
    tcReportChart2.Visible := False;
    Exit;
  end
  else
    tcReportChart2.Visible := True;

  if sysConfig.Language <> 2 then
    tcReportChart2.Title.Text.Text := qryReportChart2TITLE.Value
  else
    tcReportChart2.Title.Text.Text := qryReportChart2TITLE_ENG.Value;
  if qryReportChart2CHART_TYPE.Value = 'LINE' then
  begin
    cur_chart_2 := TCustomSeries(LineSeries2);
  end
  else
    if qryReportChart2CHART_TYPE.Value = 'BAR' then
    begin
      cur_chart_2 := TCustomSeries(BarSeries2);
    end
    else
      if qryReportChart2CHART_TYPE.Value = 'FLINE' then
      begin
        cur_chart_2 := TCustomSeries(FastLineSeries2);
      end
      else
        if qryReportChart2CHART_TYPE.Value = 'HLINE' then
        begin
          cur_chart_2 := TCustomSeries(HorizLineSeries2);
        end
        else
          if qryReportChart2CHART_TYPE.Value = 'HBAR' then
          begin
            cur_chart_2 := TCustomSeries(HorizBarSeries2);
          end
          else
            if qryReportChart2CHART_TYPE.Value = 'AREA' then
            begin
              cur_chart_2 := TCustomSeries(AreaSeries2);
            end
            else
              if qryReportChart2CHART_TYPE.Value = 'HAREA' then
              begin
                cur_chart_2 := TCustomSeries(HorizAreaSeries2);
              end
              else
                if qryReportChart2CHART_TYPE.Value = 'POINT' then
                begin
                  cur_chart_2 := TCustomSeries(PointSeries2);
                end
                else
                  if qryReportChart2CHART_TYPE.Value = 'PIE' then
                  begin
                    cur_chart_2 := TCustomSeries(PieSeries2);
                  end;

  if qryReportChart2CHART_DATASOURCE.Value = 1 then
    cur_chart_2.DataSource := qrySubReport1
  else
    if qryReportChart2CHART_DATASOURCE.Value = 2 then
      cur_chart_2.DataSource := qrySubReport2
    else
      if qryReportChart2CHART_DATASOURCE.Value = 3 then
        cur_chart_2.DataSource := qrySubReport3
      else
        cur_chart_2.DataSource := qryReport;

  cur_chart_2.XLabelsSource := qryReportChart2X_FIELD.AsString;
  cur_chart_2.YValues.ValueSource := qryReportChart2Y_FIELD.AsString;
  if sysConfig.Language <> 2 then
  begin
    tcReportChart2.LeftAxis.Title.Caption := qryReportChart2Y_TITLE.Value;
    tcReportChart2.BottomAxis.Title.Caption := qryReportChart2X_TITLE.Value;
  end
  else
  begin
    tcReportChart2.LeftAxis.Title.Caption := qryReportChart2Y_TITLE_ENG.Value;
    tcReportChart2.BottomAxis.Title.Caption := qryReportChart2X_TITLE_ENG.Value;
  end;
  cur_chart_2.Visible := True;
  dxtsChart2.Visible:=true;
  dxtsChart2.TabVisible:=true;

end;

procedure TfrmReportsMain.qryReportChartNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryReportChartSTT.Value:=1;
end;

procedure TfrmReportsMain.qryReportChart2NewRecord(DataSet: TDataSet);
begin
  inherited;
  qryReportChart2STT.Value:=3;
end;

procedure TfrmReportsMain.qryReportChart1NewRecord(DataSet: TDataSet);
begin
  inherited;
  qryReportChart1STT.Value:=2;
end;

procedure TfrmReportsMain.acSaoChepBaoBieuExecute(Sender: TObject);
var
  path_file_exists_vn, path_file_exists_eng: string ;
  path_file_new_vn, path_file_new_eng : string;
  file_exists_vn, file_exists_eng: string ;
  file_new_vn, file_new_eng: string ;
begin
  inherited;
  path_file_exists_vn := ExtractFilePath(Application.ExeName) + 'Reports\Vn\' + qryReportTreeTEMPLATE_NAME.AsString;
  path_file_exists_eng := ExtractFilePath(Application.ExeName) + 'Reports\Eng\' + qryReportTreeTEMPLATE_NAME_ENG.AsString;
  file_exists_vn := qryReportTreeTEMPLATE_NAME.AsString;
  file_exists_eng := qryReportTreeTEMPLATE_NAME.AsString;

  if qrySaoChepBaoBieu.Active then qrySaoChepBaoBieu.Close;
  qrySaoChepBaoBieu.ParamByName('subsystemid_old').Value := qryReportTreeSUBSYSTEMID.Value;
  qrySaoChepBaoBieu.ParamByName('reportid_old').Value := qryReportTreeREPORTID.Value;
  qrySaoChepBaoBieu.ParamByName('user_accid').Value := sysConfig.User ;
  try
  begin
    qrySaoChepBaoBieu.Open;
    dmMain.CommitTransaction;

    path_file_new_vn := copy(path_file_exists_vn,1,length(path_file_exists_vn)-4) + qrySaoChepBaoBieuREPORTID.AsString + '.rtm';
    path_file_new_eng := copy(path_file_exists_eng,1,length(path_file_exists_eng)-4) + qrySaoChepBaoBieuREPORTID.AsString + '.rtm';
    file_new_vn := copy(file_exists_vn,1,length(file_exists_vn)-4) + qrySaoChepBaoBieuREPORTID.AsString + '.rtm';
    file_new_eng := copy(file_exists_eng,1,length(file_exists_eng)-4) + qrySaoChepBaoBieuREPORTID.AsString + '.rtm';

    CopyFile(PAnsiChar(path_file_exists_vn),PAnsiChar(path_file_new_vn),False);
    CopyFile(PAnsiChar(path_file_exists_eng),PAnsiChar(path_file_new_eng),False);

    with qryReportTree do
    begin
      if Active then close;
      ParamByName('SUBSYSTEM_ID').Value := sysConfig.SubSystemID;
      Open;
    end;
    if qryReportTree.Locate('REPORTID',qrySaoChepBaoBieuREPORTID.Value,[]) then
    begin
      qryReportTree.Edit;
      qryReportTreeTEMPLATE_NAME.Value := file_new_vn;
      qryReportTreeTEMPLATE_NAME_ENG.Value := file_new_eng;
      qryReportTree.Post;  
    end;



    qryReportParams.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
    qryReportCaption.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
    qryReportChart.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
    qryReportChart1.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
    qryReportChart2.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
    with qryReportParams do
    begin
      if Active then
        Close;
      Open;
    end;
    CreateParamPanel;
    ShowParamControl;

    with qryReportCaption do
    begin
      if Active then Close;
      Open;
    end;
    with qryReportChart do
    begin
      if Active then
        Close;
      Open;
    end;
    with qryReportChart1 do
    begin
      if Active then
        Close;
      Open;
    end;
    with qryReportChart2 do
    begin
      if Active then
        Close;
      Open;
    end;
  end
  except
    dmMain.RollbackTransaction;
  end;

end;

end.


