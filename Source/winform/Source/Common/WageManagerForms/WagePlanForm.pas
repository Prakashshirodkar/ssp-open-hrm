unit WagePlanForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ElPgCtl,
  ImgList, ExtCtrls, ElPanel, ElSplit, ToolbarFrame, dxExEdtr, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, dxLayoutControl, cxControls, dxEdLib, dxDBELib,
  dxEditor, Series, TeEngine, TeeProcs, Chart, DBChart, dxDBTL, DB,
  IBODataset, ActnList, ElBtnCtl, ElPopBtn, dxDBTLCl, TeeTools,
  TeePageNumTool, dxGrClms,WageThread,WageProgressForm;

type
  TfrmWagePlan = class(TfrmBase)
    pageLeft: TElPageControl;
    imlPageImage: TImageList;
    tabLeft: TElTabSheet;
    ElSplitter1: TElSplitter;
    pageMain: TElPageControl;
    tabNoidung: TElTabSheet;
    frameToolbar1: TframeToolbar;
    gridWagePlan: TdxDBGrid;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxInMonth: TdxDBImageEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxDBSpinEdit2: TdxDBSpinEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxDBDateEdit1: TdxDBDateEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    tabChitietKehoach: TElTabSheet;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxDBEdit3: TdxDBEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxDBEdit4: TdxDBEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxDBEdit5: TdxDBEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxDBEdit6: TdxDBEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    tcGeneralReport: TDBChart;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dsWagePlanReport: TDataSource;
    qryWagePlanReport: TIBOQuery;
    qryWagePlan: TIBOQuery;
    dsWagePlan: TDataSource;
    gridWagePlanPLAN_NAME: TdxDBGridColumn;
    gridWagePlanAT_MONTH: TdxDBGridColumn;
    gridWagePlanAT_YEAR: TdxDBGridColumn;
    gridWagePlanAT_PERIOD: TdxDBGridColumn;
    qryWagePlanReportTOTAL_EMP: TIntegerField;
    qryWagePlanReportTOTAL_REGISTED: TIntegerField;
    qryWagePlanReportTOTAL_UNREGISTED: TLargeintField;
    qryWagePlanReportTOTAL_WAGE_PLAN: TIBOFloatField;
    qryWagePlanReportCHILD_DEPT: TWideStringField;
    qryWagePlanReportCHILD_P_DEPT: TWideStringField;
    qryWagePlanReportCHILD_DEPT_NAME: TWideStringField;
    qryWagePlanPLAN_NO: TWideStringField;
    qryWagePlanPLAN_NAME: TWideStringField;
    qryWagePlanAT_MONTH: TIntegerField;
    qryWagePlanAT_YEAR: TIntegerField;
    qryWagePlanAT_PERIOD: TIntegerField;
    qryWagePlanSTART_DATE: TDateField;
    dxLayoutControl1Group6: TdxLayoutGroup;
    tlDeptList: TdxDBTreeList;
    dxLayoutControl2Item2: TdxLayoutItem;
    qryDetail: TIBOQuery;
    dsDetail: TDataSource;
    tlDeptListDEPT_NAME: TdxDBTreeListColumn;
    dxLayoutControl2Group1: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl2Item1: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    ActionList1: TActionList;
    acTinhLuong: TAction;
    acXemBangluong: TAction;
    acXemChitiet: TAction;
    qryDetailDEPT_NO: TWideStringField;
    qryDetailP_DEPT_NO: TWideStringField;
    qryDetailDEPT_NAME: TWideStringField;
    qryDetailTOTAL_PLAN: TIBOFloatField;
    qryDetailCAL_DATE: TDateField;
    tlDeptListTOTAL_PLAN: TdxDBTreeListColumn;
    tlDeptListCAL_DATE: TdxDBTreeListDateColumn;
    imOption: TdxImageEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    chkViewAll: TdxCheckEdit;
    dxLayoutControl2Item5: TdxLayoutItem;
    ChartTool1: TPageNumTool;
    sPie: TPieSeries;
    qryUpdateWagePlan: TIBOQuery;
    dxAutoOpen: TdxCheckEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    qryWagePlanReportCHILD_WAGE_PLAN: TIBOFloatField;
    dxLockBook: TdxDBCheckEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    qryWagePlanLOCK_BOOK: TSmallintField;
    acPhatSinhPB: TAction;
    qryPhatsinhPB: TIBOQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryWagePlanNewRecord(DataSet: TDataSet);
    procedure acXemChitietExecute(Sender: TObject);
    procedure qryWagePlanAfterPost(DataSet: TDataSet);
    procedure pageMainChange(Sender: TObject);
    procedure acTinhLuongExecute(Sender: TObject);
    procedure eventTinhLuongFinish(Sender: TObject);
    procedure pageMainChanging(Sender: TObject; NewPage: TElTabSheet;
      var AllowChange: Boolean);
    procedure acXemBangluongExecute(Sender: TObject);
    procedure qryWagePlanAfterScroll(DataSet: TDataSet);
    procedure dxLockBookClick(Sender: TObject);
    procedure dxLockBookChange(Sender: TObject);
    procedure gridWagePlanChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure acPhatSinhPBExecute(Sender: TObject);
    procedure acPhatSinhPBUpdate(Sender: TObject);
  private
    { Private declarations }
    STATE:String;
    varWageThread:TWageThread;
    P_NHOM_LUONG: Variant;
  public
    { Public declarations }
  end;

var
  frmWagePlan: TfrmWagePlan;

implementation

uses MainDM, MainUnit, DateUtils, WageDataModule, WageBookForm,
  SSP_Library, PopupMainForm, PassLockWageBookForm;

{$R *.dfm}

procedure TfrmWagePlan.FormCreate(Sender: TObject);
begin
  InitMonthControl(dxInMOnth);
  InitEmpOptionControl(imOption);
  imOption.Text:='0';
  inherited;
  qryWagePlan.Open;
  frameToolbar1.SetDataSource(dsWagePlan);
  qryWagePlanReport.Open;
  pageMain.ActivePage:=tabNoidung;
  if (qryWagePlanLOCK_BOOK.Value = 1) then
    ElPopupButton1.Visible := false
  else
    ElPopupButton1.Visible := true;
end;

procedure TfrmWagePlan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryWagePlanReport.Close;
  qryWagePlan.Close;
end;

procedure TfrmWagePlan.qryWagePlanNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryWagePlanAT_MONTH.Value:=MonthOF(Now);
  qryWagePlanAT_YEAR.Value:=YearOf(Now);
  qryWagePlanAT_PERIOD.Value:=1;
  qryWagePlanSTART_DATE.Value:=Today;
  STATE:='insert';
  qryWagePlanPLAN_NO.Value:=dmMain.GenerateKeyData(206)
end;

procedure TfrmWagePlan.acXemChitietExecute(Sender: TObject);
begin
  inherited;
  if qryDetail.Active then
    qryDetail.Refresh
  else
    qryDetail.Open;
  CustomExpand(tlDeptList);  
end;

procedure TfrmWagePlan.qryWagePlanAfterPost(DataSet: TDataSet);
begin
  inherited;
  if STATE='insert' then
  begin
    dmMain.IncreaseKeyData(206);
  end;
  STATE:='';
  if qryDetail.RecordCount=0 then
    acXemChitiet.Execute;
  dmMain.DefOnAfterPost(Dataset);  
end;

procedure TfrmWagePlan.pageMainChange(Sender: TObject);
begin
  inherited;
  if pageMain.ActivePage=tabChitietKehoach then
    acXemChitiet.Execute;
end;


/////ffffffffffffffffffffffffffffffffffffffffffffffffffff/////
procedure TfrmWagePlan.eventTinhLuongFinish(Sender: TObject);
var ViewAll,State:integer;
begin
  if chkViewAll.Checked then
    ViewAll:=1
  else
    ViewAll:=0;
  qryUpdateWagePlan.ParamByName('USER_NAME').Value:=sysConfig.User;
  qryUpdateWagePlan.ParamByName('PLAN_NO').Value:=qryWagePlanPLAN_NO.Value;
  qryUpdateWagePlan.ParamByName('DEPT_NO').Value:=qryDetailDEPT_NO.Value;
  qryUpdateWagePlan.ParamByName('VIEW_ALL').Value:=ViewAll;
  qryUpdateWagePlan.ParamByName('CAL_DATE').Value:=qryWagePlanSTART_DATE.Value;
  frmMain.SetStatusBarMsg(Utf8Decode('Đang cập nhật bảng lương...'));
  dmMain.ExecuteSQL(qryUpdateWagePlan);
  qryDetail.Refresh;
  qryWagePlanReport.Refresh;
  tcGeneralReport.RefreshData;
  frmMain.SetStatusBarMsg('');
  Screen.Cursor:=crDefault;
  if dxAutoOpen.Checked then
    acXemBangluong.Execute;
end;

procedure TfrmWagePlan.acTinhLuongExecute(Sender: TObject);
var ViewAll,State:integer;
    begin_Time,end_Time,real_Time:TTime;
    formatSettings:TFormatSettings;
    varResult:integer;
begin
  inherited;
  Application.CreateForm(TfrmWageProgress,frmWageProgress);

  begin_Time := Now;
  end_Time := Now;
  real_Time := (end_Time - begin_Time);
  formatSettings.LongTimeFormat := 'HH:NN:SS.MS';
  formatSettings.DecimalSeparator := '.';
  formatSettings.ThousandSeparator := '.';
  formatSettings.TimeSeparator := ':';

  if chkViewAll.Checked then
    ViewAll:=1
  else
    ViewAll:=0;
  State:=StrToInt(imOption.Text);
  varWageThread := TWageThread.Create(true);
  varWageThread.InitWageThread(sysConfig.User,qryDetailDEPT_NO.Value,ViewAll,State,
    qryWagePlanAT_MONTH.Value,qryWagePlanAT_YEAR.Value,qryWagePlanAT_PERIOD.Value,qryWagePlanSTART_DATE.Value);
  varWageThread.Resume;
  with frmWageProgress do
  try
    varResult := ShowModal;
    if varResult = mrAbort then
    begin
      varWageThread.Terminate;
      frmmain.SetStatusBarPrgDisplay(0,1);
      frmMain.SetStatusBarMsg(Utf8Decode('Quá trình tính lương đã bị huỷ'));
    end
    else
      eventTinhLuongFinish(Sender);
      end_Time := Now;
      real_Time := end_Time - begin_Time;
      frmMain.SetStatusBarMsg(Utf8Decode('Thời gian thực thi : ')
      + TimeToStr(real_Time,formatSettings)+Utf8Decode(' giây'));
    begin
    end
  finally
    Screen.Cursor := crSQLWait;
    //varWageThread.WaitFor;
    varWageThread.Free;
    free;
    Screen.Cursor := crDefault;
  end;
end;
////////fffffffffffffffffffffffffffffffffffffffffffffffffff////


procedure TfrmWagePlan.pageMainChanging(Sender: TObject;
  NewPage: TElTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if pageMain.ActivePage=tabNoidung then
    AllowChange:=dmmain.MsgChangeDataSource(dsWagePlan);
end;

procedure TfrmWagePlan.acXemBangluongExecute(Sender: TObject);
begin
  inherited;
  with TfrmWageBook.Create(self,qryDetailDEPT_NO.Value,qryDetailDEPT_NAME.Value,
    qryWagePlanAT_MONTH.Value,qryWagePlanAT_YEAR.Value,qryWagePlanAT_PERIOD.Value,chkViewAll.Checked) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmWagePlan.qryWagePlanAfterScroll(DataSet: TDataSet);
begin
  inherited;
  tcGeneralReport.RefreshData;
end;

procedure TfrmWagePlan.dxLockBookClick(Sender: TObject);
begin
  inherited;
  with TfrmPassLockWageBook.Create(self) do
  try
      if ShowModal = mrOK then
        Free
      else
      begin
        Free;
        qryWagePlan.Cancel;
      end;
  finally
  end;
end;

procedure TfrmWagePlan.dxLockBookChange(Sender: TObject);
begin
  inherited;
  if (dxLockBook.Checked = true) then
    ElPopupButton1.Visible := false
  else
    ElPopupButton1.Visible := true;
end;

procedure TfrmWagePlan.gridWagePlanChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  inherited;
  if (qryWagePlanLOCK_BOOK.Value = 1) then
    ElPopupButton1.Visible := false
  else
    ElPopupButton1.Visible := true;
end;

procedure TfrmWagePlan.acPhatSinhPBExecute(Sender: TObject);
begin
  inherited;
  qryPhatsinhPB.ParamByName('USER_NAME').Value:=sysConfig.User;
  qryPhatsinhPB.ParamByName('PLAN_NO').Value:=qryWagePlanPLAN_NO.Value;
  dmMain.ExecuteSQL(qryPhatsinhPB);
  qryDetail.Refresh;
end;

procedure TfrmWagePlan.acPhatSinhPBUpdate(Sender: TObject);
begin
  inherited;
  acPhatSinhPB.Enabled := (qryWagePlan.RecordCount >0 ); 
end;

end.
