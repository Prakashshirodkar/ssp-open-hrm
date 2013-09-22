unit ToolForWorkTimeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  ExtCtrls, dxLayoutControl, dxTL, dxDBCtrl, dxCntner, dxDBTL, cxControls,
  ElPanel, ElBtnCtl, ElPopBtn, dxEdLib, dxEditor, dxDBGrid, dxDBTLCl,
  dxGrClms, DB, dxmdaset, ActnList, IBODataset, dxGrClEx, DBActns,
  ToolbarFrame, ImgList, ElPgCtl, dxBar;

type
  TfrmToolForWorkTime = class(TfrmBase)
    dxLayoutControl1: TdxLayoutControl;
    tlOrgMap: TdxDBTreeList;
    tlOrgMapDEPT_NAME: TdxDBTreeListColumn;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    Splitter1: TSplitter;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxlcYear: TdxLayoutItem;
    dxInYear: TdxSpinEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl2Item5: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    ElPanel1: TElPanel;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    memDayList: TdxMemData;
    dsDayList: TDataSource;
    memDayListWEEK_DAY: TIntegerField;
    memDayListWEEY_DAY_NAME: TWideStringField;
    memDayListWORK_DATE: TDateField;
    gridDayListWEEY_DAY_NAME: TdxDBGridColumn;
    gridDayListWORK_DATE: TdxDBGridDateColumn;
    Splitter2: TSplitter;
    gridEmpWorkDay: TdxDBGrid;
    ActionList1: TActionList;
    acThangKetruoc: TAction;
    acThangtiepTheo: TAction;
    acTaoDSNgay: TAction;
    gridDayListWEEK_DAY: TdxDBGridColumn;
    qryEmpWorkDay: TIBOQuery;
    dsEmpWorkDay: TDataSource;
    acXemdulieu: TAction;
    gridEmpWorkDayEMPLOYEE_NO: TdxDBGridColumn;
    gridEmpWorkDayFULL_NAME: TdxDBGridColumn;
    gridEmpWorkDayTITLE_NAME: TdxDBGridColumn;
    dxLayoutControl2Item1: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    acLoadData: TAction;
    DataSetCancel1: TDataSetCancel;
    DataSetPost1: TDataSetPost;
    Panel1: TPanel;
    Splitter3: TSplitter;
    gridWorkTime: TdxDBGrid;
    qryWorkTime: TIBOQuery;
    dsWorkTime: TDataSource;
    qryEmpWorkDayEMPLOYEE_NO: TWideStringField;
    qryEmpWorkDayFULL_NAME: TWideStringField;
    qryEmpWorkDayTITLE_NAME: TWideStringField;
    qryWorkTimeEMPLOYEE_NO: TWideStringField;
    qryWorkTimeWORK_DATE: TDateField;
    qryWorkTimeSTART_TIME: TTimeField;
    qryWorkTimeEND_TIME: TTimeField;
    qryWorkTimeWHT_NO: TWideStringField;
    qryWorkTimeWHT_NAME: TWideStringField;
    qryWorkTimeEND_DATE: TIntegerField;
    qryWorkTimeTOTAL_TIME: TIBOFloatField;
    gridWorkTimeSTART_TIME: TdxDBGridTimeColumn;
    gridWorkTimeEND_TIME: TdxDBGridTimeColumn;
    gridWorkTimeWHT_NAME: TdxDBGridPopupColumn;
    gridWorkTimeEND_DATE: TdxDBGridImageColumn;
    qryWorkTimeWHT_COLOR: TIntegerField;
    gridWorkTimeWHT_COLOR: TdxDBGridColumn;
    dxLayoutControl2Item2: TdxLayoutItem;
    frameToolbar1: TframeToolbar;
    dxInMonth: TdxImageEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxSelectWHT: TdxPopupEdit;
    acMultiDelete: TAction;
    ElPopupButton2: TElPopupButton;
    pageControl: TElPageControl;
    tabData: TElTabSheet;
    tabUtil: TElTabSheet;
    ImageList1: TImageList;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Item1: TdxLayoutItem;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxBarManager1: TdxBarManager;
    dxFromWHT: TdxPopupEdit;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxToWHT: TdxPopupEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl3Item5: TdxLayoutItem;
    dxLayoutControl3Group4: TdxLayoutGroup;
    qryOrgMap: TIBOQuery;
    qryOrgMapDEPT_NO: TWideStringField;
    qryOrgMapDEPT_NAME: TWideStringField;
    qryOrgMapP_DEPT_NO: TWideStringField;
    dsOrgMap: TDataSource;
    gridWorkTimeTOTAL_TIME: TdxDBGridCalcColumn;
    qryWorkTimeDEPT_NO: TWideStringField;
    chkViewAll: TdxCheckEdit;
    dxLayoutControl2Item9: TdxLayoutItem;
    dxToMonth: TdxImageEdit;
    dxLayoutControl2Item10: TdxLayoutItem;
    dxToYear: TdxSpinEdit;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    chkExt: TdxCheckEdit;
    dxLayoutControl2Item7: TdxLayoutItem;
    dxlcgExt: TdxLayoutGroup;
    ElPopupButton6: TElPopupButton;
    dxLayoutControl2Item8: TdxLayoutItem;
    acChon: TAction;
    acBochon: TAction;
    dxLayoutControl2Item12: TdxLayoutItem;
    chkSat: TdxCheckEdit;
    dxLayoutControl2Item13: TdxLayoutItem;
    chkFri: TdxCheckEdit;
    dxLayoutControl2Item14: TdxLayoutItem;
    chkThu: TdxCheckEdit;
    dxLayoutControl2Item15: TdxLayoutItem;
    chkWed: TdxCheckEdit;
    dxLayoutControl2Item16: TdxLayoutItem;
    chkTues: TdxCheckEdit;
    dxLayoutControl2Item17: TdxLayoutItem;
    chkSun: TdxCheckEdit;
    dxLayoutControl2Item18: TdxLayoutItem;
    chkMon: TdxCheckEdit;
    gridDayListIS_SELECTED: TdxDBGridCheckColumn;
    gridDayList: TdxDBGrid;
    memDayListIS_SELECTED: TBooleanField;
    qryEmpWorkDayDEPT_NO: TWideStringField;
    qryWorkTimeTITLE_NO: TWideStringField;
    qryEmpWorkDayTITLE_NO: TWideStringField;
    gridEmpWorkDayDEPT_NO: TdxDBGridMaskColumn;
    gridEmpWorkDayTITLE_NO: TdxDBGridMaskColumn;
    dxLayoutControl3Group3: TdxLayoutGroup;
    imgInOut: TdxImageEdit;
    dxLayoutControl3Item6: TdxLayoutItem;
    dxLayoutControl3Item7: TdxLayoutItem;
    tmInOut: TdxTimeEdit;
    dxLayoutControl3Item8: TdxLayoutItem;
    btnUpdateInOut: TElPopupButton;
    acUpdateInOut: TAction;
    qryUpdateWorkTime: TIBOQuery;
    qryWorkTimeWT_ID: TIntegerField;
    acMultiPost: TAction;
    procedure acTaoDSNgayExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acXemdulieuExecute(Sender: TObject);
    procedure gridDayListChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acThangKetruocExecute(Sender: TObject);
    procedure acThangtiepTheoExecute(Sender: TObject);
    procedure acLoadDataExecute(Sender: TObject);
    procedure gridDayListWEEY_DAY_NAMECustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure gridDayListWORK_DATECustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure gridWorkTimeWHT_NAMECustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure gridWorkTimeWHT_NAMEInitPopup(Sender: TObject);
    procedure gridWorkTimeWHT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryWorkTimeBeforePost(DataSet: TDataSet);
    procedure qryWorkTimeNewRecord(DataSet: TDataSet);
    procedure qryUpdateWorkTimeError(Sender: TObject;
      const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
      const SQLCODE: Integer; SQLMessage, SQL: TStringList;
      var RaiseException: Boolean);
    procedure dxSelectWHTInitPopup(Sender: TObject);
    procedure dxSelectWHTCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectWHTChange(Sender: TObject);
    procedure acMultiDeleteExecute(Sender: TObject);
    procedure qryEmpWorkDayBeforeOpen(DataSet: TDataSet);
    procedure chkViewAllChange(Sender: TObject);
    procedure dxFromWHTInitPopup(Sender: TObject);
    procedure dxToWHTInitPopup(Sender: TObject);
    procedure dxFromWHTCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxToWHTCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxFromWHTChange(Sender: TObject);
    procedure dxToWHTChange(Sender: TObject);
    procedure dxInMonthChange(Sender: TObject);
    procedure dxToMonthChange(Sender: TObject);
    procedure chkExtChange(Sender: TObject);
    procedure acChonExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryEmpWorkDayBeforeRefresh(DataSet: TDataSet);
    procedure memDayListAfterScroll(DataSet: TDataSet);
    procedure acUpdateInOutUpdate(Sender: TObject);
    procedure acUpdateInOutExecute(Sender: TObject);
    procedure acMultiPostExecute(Sender: TObject);
    procedure qryWorkTimeBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    F_WHT_NO,F_FROM_WHT_NO,F_TO_WHT_NO:WideString;
    STATE: TDataSetState;
  public
    { Public declarations }
  end;

var
  frmToolForWorkTime: TfrmToolForWorkTime;

implementation

uses MainDM, WorkTimeManagerForm, DateUtils, PopupMainForm, SSP_Library,
  MainUnit;

{$R *.dfm}

procedure TfrmToolForWorkTime.acTaoDSNgayExecute(Sender: TObject);
var
  cur_date, to_date: TDate;
begin
  inherited;
  memDayList.DisableControls;

  memDayList.Close;
  memDayList.Open;
  cur_date := TDate(StartOfAMonth(dxInYear.IntValue, StrToInt(dxInMonth.Text)));
  {Phuc rao}
  //to_date := TDate(EndOfAMonth(dxInYear.IntValue, StrToInt(dxInMonth.Text)));
  to_date := TDate(EndOfAMonth(dxToYear.IntValue, StrToInt(dxToMonth.Text)));

  while cur_date <= to_date do
  begin
    memDayList.Append;
    memDayListWEEK_DAY.Value := DayOfTheWeek(cur_date);
    if sysConfig.Language = 2 then
      memDayListWEEY_DAY_NAME.Value :=
        Utf8Decode(WeekEng[memDayListWEEK_DAY.Value])
    else
      memDayListWEEY_DAY_NAME.Value :=
        Utf8Decode(WeekVn[memDayListWEEK_DAY.Value]);
    memDayListWORK_DATE.Value := cur_date;
    memDayList.Post;
    cur_date := cur_date + 1;
  end;

  gridDayList.Bands[0].Caption := dxInMonth.Descriptions[StrToInt(dxInMonth.Text)
    - 1] +
    ' - ' + IntToStr(dxInYear.IntValue);

  memDayList.EnableControls;
  gridDayList.LastNode.Selected:=True;
end;
procedure TfrmToolForWorkTime.FormCreate(Sender: TObject);
begin
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 1'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 2'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 3'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 4'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 5'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 6'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 7'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 8'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 9'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 10'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 11'));
  dxInMonth.Descriptions.Add(Utf8Decode('Tháng 12'));

  dxInMonth.Values.Add('1');
  dxInMonth.Values.Add('2');
  dxInMonth.Values.Add('3');
  dxInMonth.Values.Add('4');
  dxInMonth.Values.Add('5');
  dxInMonth.Values.Add('6');
  dxInMonth.Values.Add('7');
  dxInMonth.Values.Add('8');
  dxInMonth.Values.Add('9');
  dxInMonth.Values.Add('10');
  dxInMonth.Values.Add('11');
  dxInMonth.Values.Add('12');

  dxToMonth.Descriptions.Add(Utf8Decode('Tháng 1'));
  dxToMonth.Descriptions.Add(Utf8Decode('Tháng 2'));
  dxToMonth.Descriptions.Add(Utf8Decode('Tháng 3'));
  dxToMonth.Descriptions.Add(Utf8Decode('Tháng 4'));
  dxToMonth.Descriptions.Add(Utf8Decode('Tháng 5'));
  dxToMonth.Descriptions.Add(Utf8Decode('Tháng 6'));
  dxToMonth.Descriptions.Add(Utf8Decode('Tháng 7'));
  dxToMonth.Descriptions.Add(Utf8Decode('Tháng 8'));
  dxToMonth.Descriptions.Add(Utf8Decode('Tháng 9'));
  dxToMonth.Descriptions.Add(Utf8Decode('Tháng 10'));
  dxToMonth.Descriptions.Add(Utf8Decode('Tháng 11'));
  dxToMonth.Descriptions.Add(Utf8Decode('Tháng 12'));

  dxToMonth.Values.Add('1');
  dxToMonth.Values.Add('2');
  dxToMonth.Values.Add('3');
  dxToMonth.Values.Add('4');
  dxToMonth.Values.Add('5');
  dxToMonth.Values.Add('6');
  dxToMonth.Values.Add('7');
  dxToMonth.Values.Add('8');
  dxToMonth.Values.Add('9');
  dxToMonth.Values.Add('10');
  dxToMonth.Values.Add('11');
  dxToMonth.Values.Add('12');
  
  inherited;
  
  CustomExpand(tlOrgMap);
  frameToolbar1.SetDataSource(dsWorkTime);
  pageControl.ActivePageIndex:=0;
  chkExt.Checked := false;
  acLoadData.Execute;
end;

procedure TfrmToolForWorkTime.acXemdulieuExecute(Sender: TObject);
begin
  inherited;
  qryWorkTime.DisableControls;
  if qryWorkTime.Active then qryWorkTime.Close;
  qryWorkTime.ParamByName('WORK_DATE').Value :=
    memDayListWORK_DATE.Value;
  qryWorkTime.Open;
  qryWorkTime.EnableControls;
end;

procedure TfrmToolForWorkTime.gridDayListChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  acXemdulieu.Execute;
end;

procedure TfrmToolForWorkTime.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryWorkTime.Close;
  qryEmpWorkDay.Close;
  qryOrgMap.Close;
end;

procedure TfrmToolForWorkTime.acThangKetruocExecute(Sender: TObject);
begin
  inherited;
  if dxInMonth.Text = '1' then
  begin
    dxInMonth.Text := '12';
    dxInYear.IntValue := dxInYear.IntValue - 1;
  end
  else
    dxInMonth.Text := IntToStr(StrToInt(dxInMonth.Text) - 1);
  if dxToMonth.Text = '1' then
  begin
    dxToMonth.Text := '12';
    dxToYear.IntValue := dxToYear.IntValue - 1;
  end
  else
    dxToMonth.Text := IntToStr(StrToInt(dxToMonth.Text) - 1);
  acLoadData.Execute;
end;

procedure TfrmToolForWorkTime.acThangtiepTheoExecute(Sender: TObject);
begin
  inherited;
  if dxInMonth.Text = '12' then
  begin
    dxInMonth.Text := '1';
    dxInYear.IntValue := dxInYear.IntValue + 1;
  end
  else
    dxInMonth.Text := IntToStr(StrToInt(dxInMonth.Text) + 1);
  if dxToMonth.Text = '12' then
  begin
    dxToMonth.Text := '1';
    dxToYear.IntValue := dxToYear.IntValue + 1;
  end
  else
    dxToMonth.Text := IntToStr(StrToInt(dxToMonth.Text) + 1);
  acLoadData.Execute;
end;

procedure TfrmToolForWorkTime.acLoadDataExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if qryOrgMap.Active then qryOrgMap.Close;
  qryOrgMap.ParamByName('den_ngay').Value := EndOfAMonth(dxToYear.IntValue,strtoint(dxToMonth.text));
  qryOrgMap.ParamByName('tu_ngay').Value := StartOfAMonth(dxInYear.IntValue,strtoint(dxInMonth.text));
  qryOrgMap.Open;
  tlOrgMap.FullExpand;
  acTaoDSNgay.Execute;
  if qryEmpWorkDay.Active then
    qryEmpWorkDay.Close;
  qryEmpWorkDay.Open;
  if memDayList.RecordCount > 0 then
    memDayList.First;
  acXemdulieu.Execute;

  Screen.Cursor := crDefault;
end;

procedure TfrmToolForWorkTime.gridDayListWEEY_DAY_NAMECustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if ANode.Values[gridDayListWEEK_DAY.Index] = 7 then
  begin
    AFont.Style := AFont.Style + [fsBold];
    AFont.Color := clRed;
  end;
end;

procedure TfrmToolForWorkTime.gridDayListWORK_DATECustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if ANode.Values[gridDayListWEEK_DAY.Index] = 7 then
  begin
    AFont.Style := AFont.Style + [fsBold];
    AFont.Color := clRed;
  end;

end;

procedure TfrmToolForWorkTime.gridWorkTimeWHT_NAMECustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AColor := StrToIntDef(VarToStr(ANode.Values[gridWorkTimeWHT_COLOR.Index]),
    Integer(clWhite));
end;

procedure TfrmToolForWorkTime.gridWorkTimeWHT_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWorkHourType.Open;
  InitPopupControl('dxlcWorkHourType', frmPopupMain, sender, 2, gridWorkTime);
end;

procedure TfrmToolForWorkTime.gridWorkTimeWHT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryWorkHourType, qryWorkTime,
    'WHT_NO;WHT_NAME;WHT_COLOR', 'WHT_NO;WHT_NAME;WHT_COLOR',
    'WHT_NAME', Text);
  frmPopupMain.qryWorkHourType.Close
end;

procedure TfrmToolForWorkTime.qryWorkTimeBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (gridDayList.SelectedCount > 1) or (gridEmpWorkDay.SelectedCount>1) then
  begin
    STATE:=qryWorkTime.State;
    acMultiPost.Execute;
  end;
  dmMain.DefOnBeforePost(DataSet);
end;

procedure TfrmToolForWorkTime.qryWorkTimeNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryWorkTimeEMPLOYEE_NO.Value := qryEmpWorkDayEMPLOYEE_NO.Value;
  qryWorkTimeWORK_DATE.Value := memDayListWORK_DATE.Value;

  qryWorkTimeDEPT_NO.Value := qryEmpWorkDayDEPT_NO.Value; {Phuc add}
  qryWorkTimeTITLE_NO.Value := qryEmpWorkDayTITLE_NO.Value; {Phuc add}
  //qryWorkTimeEND_DATE.Value := 0; {Phuc rao}
end;

procedure TfrmToolForWorkTime.qryUpdateWorkTimeError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  inherited;
  RaiseException := false;
end;

procedure TfrmToolForWorkTime.dxSelectWHTInitPopup(Sender: TObject);
begin
  inherited;
   frmPopupMain.qryWorkHourType.Open;
  InitPopupControl('dxlcWorkHourType', frmPopupMain, sender, 2);
end;

procedure TfrmToolForWorkTime.dxSelectWHTCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text:=frmPopupMain.qryWorkHourTypeWHT_NAME.Value;
    F_WHT_NO:=frmPopupMain.qryWorkHourTypeWHT_NO.Value;
    dxSelectWHT.Color:=frmPopupMain.qryWorkHourTypeWHT_COLOR.Value;
  end;
  frmPopupMain.qryWorkHourType.Close;
end;

procedure TfrmToolForWorkTime.dxSelectWHTChange(Sender: TObject);
begin
  inherited;
  if dxSelectWHT.Text='' then
  begin
    F_WHT_NO:='';
    dxSelectWHT.Color:=clWhite;
  end;
end;

procedure TfrmToolForWorkTime.acMultiDeleteExecute(Sender: TObject);
var
  i, j, max: integer;
  has_start_time,has_end_time,has_wht:Boolean;
begin
  inherited;
  if (gridDayList.SelectedCount > 1) or
    (gridEmpWorkDay.SelectedCount > 1) then
  begin
    Screen.Cursor := crSQLWait;
    max := gridDayList.SelectedCount * gridEmpWorkDay.SelectedCount;
    frmMain.SetStatusBarPrgDisplay(0, max);
    qryUpdateWorkTime.SQL.Text :=
      'delete from hr_working_time ' +
      ' where employee_no=:employee_no and '+
      '       dept_no=:dept_no and '+
      '       title_no=:title_no and '+
      '       work_date=:work_date ';
   has_start_time:= not qryWorkTimeSTART_TIME.IsNull;
   has_end_time:= not qryWorkTimeEND_TIME.IsNull;
   has_wht:= not qryWorkTimeWHT_NO.IsNull;

   if has_start_time then
     qryUpdateWorkTime.SQL.Text:=qryUpdateWorkTime.SQL.Text+' and start_time=:start_time '
   else
     qryUpdateWorkTime.SQL.Text:=qryUpdateWorkTime.SQL.Text+' and start_time is null ';
   if has_end_time then
     qryUpdateWorkTime.SQL.Text:=qryUpdateWorkTime.SQL.Text+' and end_time=:end_time '
   else
     qryUpdateWorkTime.SQL.Text:=qryUpdateWorkTime.SQL.Text+' and end_time is null ';
   if has_wht then
     qryUpdateWorkTime.SQL.Text:=qryUpdateWorkTime.SQL.Text+' and wht_no=:wht_no '
   else
     qryUpdateWorkTime.SQL.Text:=qryUpdateWorkTime.SQL.Text+' and wht_no is null ';
    qryUpdateWorkTime.Prepare;
    for i := 0 to gridDayList.SelectedCount - 1 do
    begin
      for j := 0 to gridEmpWorkDay.SelectedCount - 1 do
      begin
         qryUpdateWorkTime.ParamByName('EMPLOYEE_NO').Value :=
          gridEmpWorkDay.SelectedNodes[j].Values[gridEmpWorkDayEMPLOYEE_NO.Index];
        qryUpdateWorkTime.ParamByName('WORK_DATE').Value :=
          gridDayList.SelectedNodes[i].Values[gridDayListWORK_DATE.Index];
        qryUpdateWorkTime.ParamByName('DEPT_NO').Value :=
          qryEmpWorkDayDEPT_NO.Value;
        qryUpdateWorkTime.ParamByName('TITLE_NO').Value :=
          qryEmpWorkDayTITLE_NO.Value;
        if not qryWorkTimeSTART_TIME.IsNull then
          qryUpdateWorkTime.ParamByName('START_TIME').Value :=
            qryWorkTimeSTART_TIME.Value;
        if not qryWorkTimeEND_TIME.IsNull then
          qryUpdateWorkTime.ParamByName('END_TIME').Value :=
            qryWorkTimeEND_TIME.Value;
        if not qryWorkTimeWHT_NO.IsNull then
           qryWorkTimeWHT_NO.Value;

        try
          if not(
             (qryUpdateWorkTime.ParamByName('EMPLOYEE_NO').Value=qryWorkTimeEMPLOYEE_NO.Value) and
             (qryUpdateWorkTime.ParamByName('DEPT_NO').Value=qryWorkTimeDEPT_NO.Value) and
             (qryUpdateWorkTime.ParamByName('TITLE_NO').Value=qryWorkTimeTITLE_NO.Value) and
             (qryUpdateWorkTime.ParamByName('WORK_DATE').Value=qryWorkTimeWORK_DATE.Value)
             )
          then
            dmMain.ExecuteSQL(qryUpdateWorkTime);
        except
        end;
        frmMain.BarPrgStepIt;
      end;
    end;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmToolForWorkTime.qryEmpWorkDayBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if chkViewAll.Checked then
    qryEmpWorkDay.ParamByName('VIEW_ALL').Value:=1
  else
    qryEmpWorkDay.ParamByName('VIEW_ALL').Value:=0;
  qryEmpWorkDay.ParamByName('FROM_DATE').Value:=StartOfAMonth(dxToYear.IntValue,strtoint(dxToMonth.text));
  qryEmpWorkDay.ParamByName('TO_DATE').Value:=EndOfAMonth(dxToYear.IntValue,strtoint(dxToMonth.text));
  dmMain.DefOnBeforeOpen(Dataset);  
end;

procedure TfrmToolForWorkTime.chkViewAllChange(Sender: TObject);
begin
  inherited;
  if qryEmpWorkDay.Active then
    qryEmpWorkDay.Close;
  qryEmpWorkDay.Open;  
end;

procedure TfrmToolForWorkTime.dxFromWHTInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWorkHourType.Open;
  InitPopupControl('dxlcWorkHourType', frmPopupMain, sender, 2);
end;

procedure TfrmToolForWorkTime.dxToWHTInitPopup(Sender: TObject);
begin
  inherited;
   frmPopupMain.qryWorkHourType.Open;
  InitPopupControl('dxlcWorkHourType', frmPopupMain, sender, 2);
end;

procedure TfrmToolForWorkTime.dxFromWHTCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text:=frmPopupMain.qryWorkHourTypeWHT_NAME.Value;
    F_FROM_WHT_NO:=frmPopupMain.qryWorkHourTypeWHT_NO.Value;
    dxFromWHT.Color:=frmPopupMain.qryWorkHourTypeWHT_COLOR.Value;
  end;
  frmPopupMain.qryWorkHourType.Close;

end;

procedure TfrmToolForWorkTime.dxToWHTCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text:=frmPopupMain.qryWorkHourTypeWHT_NAME.Value;
    F_TO_WHT_NO:=frmPopupMain.qryWorkHourTypeWHT_NO.Value;
    dxToWHT.Color:=frmPopupMain.qryWorkHourTypeWHT_COLOR.Value;
  end;
  frmPopupMain.qryWorkHourType.Close;

end;

procedure TfrmToolForWorkTime.dxFromWHTChange(Sender: TObject);
begin
  inherited;
  if dxFromWHT.Text='' then
  begin
    F_FROM_WHT_NO:='';
    dxFromWHT.Color:=clWhite;
  end;
end;

procedure TfrmToolForWorkTime.dxToWHTChange(Sender: TObject);
begin
  inherited;
  if dxToWHT.Text='' then
  begin
    F_TO_WHT_NO:='';
    dxToWHT.Color:=clWhite;
  end;
end;

procedure TfrmToolForWorkTime.dxInMonthChange(Sender: TObject);
var inmonth, inyear, tomonth, toyear: integer;
    from_time, to_time : integer;
begin
  inherited;
  exit;
  from_time := inmonth - 1 + inyear*12;
  to_time := tomonth - 1 + toyear*12;
  inmonth := strtoint(dxinmonth.Text);
  inyear := dxinyear.IntValue;
  tomonth := strtoint(dxtomonth.Text);
  toyear := dxtoyear.IntValue;
  
  if from_time > to_time then
  begin
    dxToMonth.Text := dxInMonth.Text;
    dxToYear.IntValue := dxInYear.IntValue;
  end;
end;

procedure TfrmToolForWorkTime.dxToMonthChange(Sender: TObject);
var inmonth, inyear, tomonth, toyear: integer;
    from_time, to_time : integer;
begin
  inherited;
  exit;
  inmonth := strtoint(dxinmonth.Text);
  inyear := dxinyear.IntValue;
  tomonth := strtoint(dxtomonth.Text);
  toyear := dxtoyear.IntValue;

  from_time := inmonth - 1 + inyear*12;
  to_time := tomonth - 1 + toyear*12;
  if from_time > to_time then
  begin
    dxToMonth.Text := dxInMonth.Text;
    dxToYear.IntValue := dxInYear.IntValue;
  end;
end;

procedure TfrmToolForWorkTime.chkExtChange(Sender: TObject);
begin
  inherited;
  exit;
  dxlcgExt.Visible := chkExt.Checked;
end;

procedure TfrmToolForWorkTime.acChonExecute(Sender: TObject);
var i :integer;
begin
  inherited;
//  gridDayList.se
  memDayList.First;

  while not memDayList.Eof do
  begin
    memDayList.Edit;

    case memDayListWEEK_DAY.Value of
      7: memDayListIS_SELECTED.Value := chkSun.Checked;
      1: memDayListIS_SELECTED.Value := chkMon.Checked;
      2: memDayListIS_SELECTED.Value := chkTues.Checked;
      3: memDayListIS_SELECTED.Value := chkWed.Checked;
      4: memDayListIS_SELECTED.Value := chkThu.Checked;
      5: memDayListIS_SELECTED.Value := chkFri.Checked;
      6: memDayListIS_SELECTED.Value := chkSat.Checked;
    end;

    memDayList.Post;
    memDayList.Next;
  end;

  //KeyDown(nil, [ssCtrl]);
  //gridDayList.OnKeyDown(Nil,nil, [ssCtrl]);
  //KeyDown(17,17);
  for i := 0 to gridDayList.Count - 1 do
  begin
    //GotoBookmark(Pointer(gridDayList.SelectedRows.Items[i]));
    gridDayList.Items[17].Selected := false;
  end;
  //Keyup;
end;

procedure TfrmToolForWorkTime.FormShow(Sender: TObject);
begin
  inherited;
  qryOrgMap.ParamByName('den_ngay').Value := EndOfAMonth(dxToYear.IntValue,strtoint(dxToMonth.text));
  qryOrgMap.ParamByName('tu_ngay').Value := StartOfAMonth(dxInYear.IntValue,strtoint(dxInMonth.text));
  qryOrgMap.Open;
  try
    qryOrgMap.Locate('DEPT_NO',frmWorkTimeManager.qryOrgMapDEPT_NO.Value,[]);
  except
  
  end;
end;

procedure TfrmToolForWorkTime.qryEmpWorkDayBeforeRefresh(
  DataSet: TDataSet);
begin
  inherited;
  if qryOrgMap.IsEmpty then
  begin
    qryEmpWorkDay.ParamByName('DEPT_NO').Value := ' ';
  end;
end;

procedure TfrmToolForWorkTime.memDayListAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if qryWorkTime.Active then qryWorkTime.Close;
  qryWorkTime.ParamByName('WORK_DATE').Value:=memDayListWORK_DATE.Value;
  qryWorkTime.Open;
end;

procedure TfrmToolForWorkTime.acUpdateInOutUpdate(Sender: TObject);
begin
  inherited;
  acUpdateInOut.Enabled:=((gridDayList.SelectedCount>1)or(gridEmpWorkDay.SelectedCount>1)) and
     (tmInOut.Time>0);
end;

procedure TfrmToolForWorkTime.acUpdateInOutExecute(Sender: TObject);
var max, i, j: integer;
begin
  inherited;
//  dmMain.RollbackTransaction;
  Screen.Cursor := crSQLWait;
  max := gridDayList.SelectedCount * gridEmpWorkDay.SelectedCount;
  frmMain.SetStatusBarPrgDisplay(0, max);
  if imgInOut.Text='IN' then
    qryUpdateWorkTime.SQL.Text:='update HR_WORKING_TIME set START_TIME=:INPUT_TIME '+
    ' where EMPLOYEE_NO=:EMPLOYEE_NO and '+
    ' DEPT_NO=:DEPT_NO and '+
    ' TITLE_NO=:TITLE_NO and'+
    ' WORK_DATE=:WORK_DATE and'+
    ' (START_TIME is not null) and (START_TIME=END_TIME)'
  else
    qryUpdateWorkTime.SQL.Text:='update HR_WORKING_TIME set END_TIME=:INPUT_TIME '+
    ' where EMPLOYEE_NO=:EMPLOYEE_NO and '+
    ' DEPT_NO=:DEPT_NO and '+
    ' TITLE_NO=:TITLE_NO and'+
    ' WORK_DATE=:WORK_DATE and'+
    ' (END_TIME is not null) and (START_TIME=END_TIME)';

  qryUpdateWorkTime.Prepare;
  qryUpdateWorkTime.ParamByName('INPUT_TIME').Value:=tmInOut.Time;
  for i := 0 to gridDayList.SelectedCount - 1 do
  begin
    for j := 0 to gridEmpWorkDay.SelectedCount - 1 do
    begin
      qryUpdateWorkTime.ParamByName('WORK_DATE').Value :=
        gridDayList.SelectedNodes[i].Values[gridDayListWORK_DATE.Index];
      qryUpdateWorkTime.ParamByName('EMPLOYEE_NO').Value :=
        gridEmpWorkDay.SelectedNodes[j].Values[gridEmpWorkDayEMPLOYEE_NO.Index];
      qryUpdateWorkTime.ParamByName('DEPT_NO').Value :=
        gridEmpWorkDay.SelectedNodes[j].Values[gridEmpWorkDayDEPT_NO.Index];
      qryUpdateWorkTime.ParamByName('TITLE_NO').Value :=
        gridEmpWorkDay.SelectedNodes[j].Values[gridEmpWorkDayTITLE_NO.Index];
      try
        qryUpdateWorkTime.ExecSQL;
      except
      end;
      frmMain.BarPrgStepIt;
    end;
  end;
//  dmMain.CommitTransaction;
  Screen.Cursor := crDefault;
end;


procedure TfrmToolForWorkTime.acMultiPostExecute(Sender: TObject);
var
  i, j, max: integer;
begin
  inherited;
  if (gridDayList.SelectedCount > 1) or
    (gridEmpWorkDay.SelectedCount > 1) then
  begin
    Screen.Cursor := crSQLWait;
    max := gridDayList.SelectedCount * gridEmpWorkDay.SelectedCount;
    frmMain.SetStatusBarPrgDisplay(0, max);
    if STATE in [dsInsert] then
          qryUpdateWorkTime.SQL.Text :=
            'insert into hr_working_time( ' +        
            ' employee_no,end_date,end_time,start_time,total_time,wht_no,work_date,dept_no,title_no) ' +
            ' values ' +
            ' (:employee_no,:end_date,:end_time,:start_time,:total_time,:wht_no,:work_date,:DEPT_NO,:TITLE_NO)'
        else
          qryUpdateWorkTime.SQL.Text :=
            'update hr_working_time set ' +
            ' end_date=:end_date,end_time=:end_time,start_time=:start_time,total_time=:total_time,wht_no=:wht_no ' +
            ' where ' +
            ' employee_no=:employee_no and work_date=:work_date and'+
            ' hr_working_time.dept_no = :DEPT_NO and'+
            ' hr_working_time.dept_no = :TITLE_NO' ;

        qryUpdateWorkTime.Prepare;
    for i := 0 to gridDayList.SelectedCount - 1 do
    begin
      for j := 0 to gridEmpWorkDay.SelectedCount - 1 do
      begin

         qryUpdateWorkTime.ParamByName('EMPLOYEE_NO').Value :=
          gridEmpWorkDay.SelectedNodes[j].Values[gridEmpWorkDayEMPLOYEE_NO.Index];
        qryUpdateWorkTime.ParamByName('WORK_DATE').Value :=
          gridDayList.SelectedNodes[i].Values[gridDayListWORK_DATE.Index];

        if qryWorkTimeSTART_TIME.IsNull then
          qryUpdateWorkTime.ParamByName('START_TIME').Clear
        else
          qryUpdateWorkTime.ParamByName('START_TIME').Value :=
            qryWorkTimeSTART_TIME.Value;
        if qryWorkTimeEND_TIME.IsNull then
          qryUpdateWorkTime.ParamByName('END_TIME').Clear
        else
          qryUpdateWorkTime.ParamByName('END_TIME').Value :=
            qryWorkTimeEND_TIME.Value;
        if qryWorkTimeTOTAL_TIME.IsNull then
            qryUpdateWorkTime.ParamByName('TOTAL_TIME').Clear
        else
          qryUpdateWorkTime.ParamByName('TOTAL_TIME').Value :=
            qryWorkTimeTOTAL_TIME.Value;
        qryUpdateWorkTime.ParamByName('END_DATE').Value :=
          qryWorkTimeEND_DATE.Value;
        qryUpdateWorkTime.ParamByName('WHT_NO').Value :=
          qryWorkTimeWHT_NO.Value;

        qryUpdateWorkTime.ParamByName('DEPT_NO').Value :=
          gridEmpWorkDay.SelectedNodes[j].Values[gridEmpWorkDayDEPT_NO.Index];;
        qryUpdateWorkTime.ParamByName('TITLE_NO').Value :=
          gridEmpWorkDay.SelectedNodes[j].Values[gridEmpWorkDayTITLE_NO.Index];;

        try
          if not(
             (qryUpdateWorkTime.ParamByName('EMPLOYEE_NO').Value=qryWorkTimeEMPLOYEE_NO.Value) and
             (qryUpdateWorkTime.ParamByName('DEPT_NO').Value=qryWorkTimeDEPT_NO.Value) and
             (qryUpdateWorkTime.ParamByName('TITLE_NO').Value=qryWorkTimeTITLE_NO.Value) and
             (qryUpdateWorkTime.ParamByName('WORK_DATE').Value=qryWorkTimeWORK_DATE.Value)
             )
          then
            dmMain.ExecuteSQL(qryUpdateWorkTime);
        except
        end;
        frmMain.BarPrgStepIt;
      end;
    end;
    Screen.Cursor := crDefault;
  end;
end;  

procedure TfrmToolForWorkTime.qryWorkTimeBeforeDelete(DataSet: TDataSet);
begin
  if (gridDayList.SelectedCount > 1) or (gridEmpWorkDay.SelectedCount>1) then
  begin
    acMultiDelete.Execute;
  end
  else
  dmMain.DefOnBeforeDelete(DataSet);
end;

end.


