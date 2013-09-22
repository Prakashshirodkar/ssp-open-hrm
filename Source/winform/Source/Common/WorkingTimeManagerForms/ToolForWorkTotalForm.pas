unit ToolForWorkTotalForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  ExtCtrls, dxLayoutControl, dxTL, dxDBCtrl, dxCntner, dxDBTL, cxControls,
  ElPanel, ElBtnCtl, ElPopBtn, dxEdLib, dxEditor, dxDBGrid, dxDBTLCl,
  dxGrClms, DB, dxmdaset, ActnList, IBODataset, dxGrClEx, DBActns,
  ToolbarFrame, ElCheckCtl;

type
  TfrmToolForWorkTotal = class(TfrmBase)
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
    gridDayList: TdxDBGrid;
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
    gridWorkTimeHOUR_TIME: TdxDBGridTimeColumn;
    gridWorkTimeWHT_NAME: TdxDBGridPopupColumn;
    gridWorkTimeWHT_COLOR: TdxDBGridColumn;
    qryUpdateWorkTime: TIBOQuery;
    dxLayoutControl2Item2: TdxLayoutItem;
    frameToolbar1: TframeToolbar;
    dxInMonth: TdxImageEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxSelectWHT: TdxPopupEdit;
    dxLayoutControl2Item7: TdxLayoutItem;
    acMultiDelete: TAction;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl2Item8: TdxLayoutItem;
    qryDelete: TIBOQuery;
    qryWorkTimeEMPLOYEE_NO: TWideStringField;
    qryWorkTimeWORK_DATE: TDateField;
    qryWorkTimeHOUR_TIME: TTimeField;
    qryWorkTimeWORK_TIME: TIBOFloatField;
    qryWorkTimeWHT_NO: TWideStringField;
    qryWorkTimeWHT_NAME: TWideStringField;
    qryWorkTimeWHT_COLOR: TIntegerField;
    dxCheck_ViewChild: TdxCheckEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
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
    procedure qryWorkTimeAfterPost(DataSet: TDataSet);
    procedure dxSelectWHTInitPopup(Sender: TObject);
    procedure dxSelectWHTCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectWHTChange(Sender: TObject);
    procedure acMultiDeleteUpdate(Sender: TObject);
    procedure acMultiDeleteExecute(Sender: TObject);
    procedure frameToolbar1btnInsertClick(Sender: TObject);
    procedure qryWorkTimeHOUR_TIMEChange(Sender: TField);
    procedure dxCheck_ViewChildChange(Sender: TObject);
  private
    { Private declarations }
    F_WHT_NO:WideString;
    STATE: TDataSetState;
  public
    { Public declarations }
  end;

var
  frmToolForWorkTotal: TfrmToolForWorkTotal;

implementation

uses MainDM, WorkTimeManagerForm, DateUtils, PopupMainForm, SSP_Library,
  MainUnit;

{$R *.dfm}

procedure TfrmToolForWorkTotal.acTaoDSNgayExecute(Sender: TObject);
var
  cur_date, to_date: TDate;
begin
  inherited;
  memDayList.DisableControls;

  memDayList.Close;
  memDayList.Open;
  cur_date := TDate(StartOfAMonth(dxInYear.IntValue, StrToInt(dxInMonth.Text)));
  to_date := TDate(EndOfAMonth(dxInYear.IntValue, StrToInt(dxInMonth.Text)));
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

end;

procedure TfrmToolForWorkTotal.FormCreate(Sender: TObject);
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
  inherited;
  CustomExpand(tlOrgMap);
  qryEmpWorkDay.Open;
  frameToolbar1.SetDataSource(dsWorkTime);
end;

procedure TfrmToolForWorkTotal.acXemdulieuExecute(Sender: TObject);
begin
  inherited;
  qryWorkTime.DisableControls;
  if qryWorkTime.Active then qryWorkTime.Close;
  qryWorkTime.ParamByName('WORK_DATE').Value :=
    memDayListWORK_DATE.Value;
  qryWorkTime.Open;
  qryWorkTime.EnableControls;
end;

procedure TfrmToolForWorkTotal.gridDayListChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  acXemdulieu.Execute;
end;

procedure TfrmToolForWorkTotal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryWorkTime.Close;
  qryEmpWorkDay.Close;
end;

procedure TfrmToolForWorkTotal.acThangKetruocExecute(Sender: TObject);
begin
  inherited;
  if dxInMonth.Text = '1' then
  begin
    dxInMonth.Text := '12';
    dxInYear.IntValue := dxInYear.IntValue - 1;
  end
  else
    dxInMonth.Text := IntToStr(StrToInt(dxInMonth.Text) - 1);
  acLoadData.Execute;
end;

procedure TfrmToolForWorkTotal.acThangtiepTheoExecute(Sender: TObject);
begin
  inherited;
  if dxInMonth.Text = '12' then
  begin
    dxInMonth.Text := '1';
    dxInYear.IntValue := dxInYear.IntValue + 1;
  end
  else
    dxInMonth.Text := IntToStr(StrToInt(dxInMonth.Text) + 1);
  acLoadData.Execute;
end;

procedure TfrmToolForWorkTotal.acLoadDataExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  acTaoDSNgay.Execute;
  if memDayList.RecordCount > 0 then
    memDayList.First;
  acXemdulieu.Execute;
  Screen.Cursor := crDefault;
end;

procedure TfrmToolForWorkTotal.gridDayListWEEY_DAY_NAMECustomDrawCell(
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

procedure TfrmToolForWorkTotal.gridDayListWORK_DATECustomDrawCell(
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

procedure TfrmToolForWorkTotal.gridWorkTimeWHT_NAMECustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AColor := StrToIntDef(VarToStr(ANode.Values[gridWorkTimeWHT_COLOR.Index]),
    Integer(clWhite));
end;

procedure TfrmToolForWorkTotal.gridWorkTimeWHT_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWorkHourType.Open;
  InitPopupControl('dxlcWorkHourType', frmPopupMain, sender, 2, gridWorkTime);
end;

procedure TfrmToolForWorkTotal.gridWorkTimeWHT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryWorkHourType, qryWorkTime,
    'WHT_NO;WHT_NAME;WHT_COLOR', 'WHT_NO;WHT_NAME;WHT_COLOR',
    'WHT_NAME', Text);
  frmPopupMain.qryWorkHourType.Close
end;

procedure TfrmToolForWorkTotal.qryWorkTimeBeforePost(DataSet: TDataSet);
begin
  inherited;
  STATE := qryWorkTime.State;
  dmMain.DefOnBeforePost(DataSet);
end;

procedure TfrmToolForWorkTotal.qryWorkTimeNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryWorkTimeEMPLOYEE_NO.Value := qryEmpWorkDayEMPLOYEE_NO.Value;
  qryWorkTimeWORK_DATE.Value := memDayListWORK_DATE.Value;
end;

procedure TfrmToolForWorkTotal.qryUpdateWorkTimeError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  inherited;
  RaiseException := false;
end;

procedure TfrmToolForWorkTotal.qryWorkTimeAfterPost(DataSet: TDataSet);
var
  i, j, max: integer;
begin
  inherited;
  if (gridDayList.SelectedCount > 1) or
    (gridEmpWorkDay.SelectedCount > 1) then
  begin
    dmMain.RollbackTransaction;
    Screen.Cursor := crSQLWait;
    max := gridDayList.SelectedCount * gridEmpWorkDay.SelectedCount;
    frmMain.SetStatusBarPrgDisplay(0, max);
    for i := 0 to gridDayList.SelectedCount - 1 do
    begin
      for j := 0 to gridEmpWorkDay.SelectedCount - 1 do
      begin
        if STATE in [dsInsert] then
          qryUpdateWorkTime.SQL.Text :=
            'insert into hr_working_total( ' +
            ' employee_no,work_date,hour_time,work_time,wht_no) ' +
            ' values ' +
            ' (:employee_no,:work_date,:hour_time,:work_time,:wht_no)'
        else
          qryUpdateWorkTime.SQL.Text :=
            'update hr_working_total set ' +
            ' work_time=:work_time,hour_time=:hour_time,wht_no=:wht_no ' +
            ' where ' +
            ' employee_no=:employee_no and work_date=:work_date';

        qryUpdateWorkTime.ParamByName('EMPLOYEE_NO').Value :=
          gridEmpWorkDay.SelectedNodes[j].Values[gridEmpWorkDayEMPLOYEE_NO.Index];
        qryUpdateWorkTime.ParamByName('WORK_DATE').Value :=
          gridDayList.SelectedNodes[i].Values[gridDayListWORK_DATE.Index];
        qryUpdateWorkTime.ParamByName('HOUR_TIME').Value :=
          qryWorkTimeHOUR_TIME.Value;
        qryUpdateWorkTime.ParamByName('WORK_TIME').Value :=
          qryWorkTimeWORK_TIME.Value;
        qryUpdateWorkTime.ParamByName('WHT_NO').Value :=
          qryWorkTimeWHT_NO.Value;
        try
          dmMain.ExecuteSQL(qryUpdateWorkTime);
        except
        end;
        frmMain.BarPrgStepIt;
      end;
    end;
    dmMain.CommitTransaction;
    Screen.Cursor := crDefault;
  end;
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TfrmToolForWorkTotal.dxSelectWHTInitPopup(Sender: TObject);
begin
  inherited;
   frmPopupMain.qryWorkHourType.Open;
  InitPopupControl('dxlcWorkHourType', frmPopupMain, sender, 2);
end;

procedure TfrmToolForWorkTotal.dxSelectWHTCloseUp(Sender: TObject;
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

procedure TfrmToolForWorkTotal.dxSelectWHTChange(Sender: TObject);
begin
  inherited;
  if dxSelectWHT.Text='' then
  begin
    F_WHT_NO:='';
    dxSelectWHT.Color:=clWhite; 
  end;
end;

procedure TfrmToolForWorkTotal.acMultiDeleteUpdate(Sender: TObject);
begin
  inherited;
  acMultiDelete.Enabled:=((gridDayList.SelectedCount>1)or(gridEmpWorkDay.SelectedCount>1)) and
    (F_WHT_NO<>'');
end;

procedure TfrmToolForWorkTotal.acMultiDeleteExecute(Sender: TObject);
var max, i, j: integer;
begin
  inherited;
  dmMain.RollbackTransaction;
  Screen.Cursor := crSQLWait;
  max := gridDayList.SelectedCount * gridEmpWorkDay.SelectedCount;
  frmMain.SetStatusBarPrgDisplay(0, max);
  for i := 0 to gridDayList.SelectedCount - 1 do
  begin
    for j := 0 to gridEmpWorkDay.SelectedCount - 1 do
    begin
      qryDelete.ParamByName('WHT_NO').Value := F_WHT_NO;
      qryDelete.ParamByName('WORK_DATE').Value :=
        gridDayList.SelectedNodes[i].Values[gridDayListWORK_DATE.Index];
      qryDelete.ParamByName('EMPLOYEE_NO').Value :=
        gridEmpWorkDay.SelectedNodes[j].Values[gridEmpWorkDayEMPLOYEE_NO.Index];
      try
        qryDelete.ExecSQL;
      except
      end;
      frmMain.BarPrgStepIt;
    end;
  end;
  dmMain.CommitTransaction;
  Screen.Cursor := crDefault;
end;

procedure TfrmToolForWorkTotal.frameToolbar1btnInsertClick(
  Sender: TObject);
begin
  inherited;
  frameToolbar1.acDSInsertExecute(Sender);

end;

procedure TfrmToolForWorkTotal.qryWorkTimeHOUR_TIMEChange(Sender: TField);
begin
  inherited;
  qryWorkTimeWORK_TIME.Value:=qryWorkTimeHOUR_TIME.AsFloat*24;
end;

procedure TfrmToolForWorkTotal.dxCheck_ViewChildChange(Sender: TObject);
begin
  inherited;
  if qryEmpWorkDay.Active then
    qryEmpWorkDay.close;

  if dxCheck_ViewChild.Checked then
    qryEmpWorkDay.ParamByName('VIEW_CHILD').Value := 1
  else
    qryEmpWorkDay.ParamByName('VIEW_CHILD').Value := 0;
  qryEmpWorkDay.open;  


end;

end.

