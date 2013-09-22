unit ToolForWorkDayForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  ExtCtrls, dxLayoutControl, dxTL, dxDBCtrl, dxCntner, dxDBTL, cxControls,
  ElPanel, ElBtnCtl, ElPopBtn, dxEdLib, dxEditor, dxDBGrid, dxDBTLCl,
  dxGrClms, DB, dxmdaset, ActnList, IBODataset, dxGrClEx, DBActns, dxBar;

type
  TfrmToolForWorkDay = class(TfrmBase)
    dxLayoutControl1: TdxLayoutControl;
    tlOrgMap: TdxDBTreeList;
    tlOrgMapDEPT_NAME: TdxDBTreeListColumn;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    Splitter1: TSplitter;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxlcMonth: TdxLayoutItem;
    dxInMonth: TdxImageEdit;
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
    dxppSelectWDT: TdxPopupEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxLayoutControl2Item7: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    ActionList1: TActionList;
    acThangKetruoc: TAction;
    acThangtiepTheo: TAction;
    acTaodulieu: TAction;
    acTaoDSNgay: TAction;
    gridDayListWEEK_DAY: TdxDBGridColumn;
    qryEmpWorkDay: TIBOQuery;
    dsEmpWorkDay: TDataSource;
    acXemdulieu: TAction;
    qryCheckEmpDeptNo: TIBOQuery;
    gridEmpWorkDayEMPLOYEE_NO: TdxDBGridColumn;
    gridEmpWorkDayFULL_NAME: TdxDBGridColumn;
    gridEmpWorkDayTITLE_NAME: TdxDBGridColumn;
    gridEmpWorkDayWDT_NAME: TdxDBGridPopupColumn;
    gridEmpWorkDayWDT_COLOR: TdxDBGridMaskColumn;
    dxLayoutControl2Item1: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    acLoadData: TAction;
    qryUpdateEmpWorkDay: TIBOQuery;
    dxLayoutControl2Item2: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl2Item8: TdxLayoutItem;
    ElPopupButton6: TElPopupButton;
    dxLayoutControl2Item9: TdxLayoutItem;
    ElPopupButton7: TElPopupButton;
    dxLayoutControl2Group3: TdxLayoutGroup;
    dxLayoutControl2Group4: TdxLayoutGroup;
    DataSetCancel1: TDataSetCancel;
    DataSetPost1: TDataSetPost;
    qryInitWorkDay: TIBOQuery;
    gridEmpWorkDayWDT_NO: TdxDBGridColumn;
    acTaochamcong: TAction;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    ElPopupButton8: TElPopupButton;
    dxLayoutControl2Item10: TdxLayoutItem;
    acXoaLNC: TAction;
    qryEmpWorkDayEMPLOYEE_NO: TWideStringField;
    qryEmpWorkDayFULL_NAME: TWideStringField;
    qryEmpWorkDayTITLE_NAME: TWideStringField;
    qryEmpWorkDayWORK_DATE: TDateField;
    qryEmpWorkDayWDT_NO: TWideStringField;
    qryEmpWorkDayWDT_NAME: TWideStringField;
    qryEmpWorkDayWDT_COLOR: TIntegerField;
    qryOrgMap: TIBOQuery;
    qryOrgMapDEPT_NO: TWideStringField;
    qryOrgMapDEPT_NAME: TWideStringField;
    qryOrgMapP_DEPT_NO: TWideStringField;
    dsOrgMap: TDataSource;
    procedure acTaoDSNgayExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acXemdulieuExecute(Sender: TObject);
    procedure gridEmpWorkDayWDT_NAMECustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure gridEmpWorkDayWDT_NAMEInitPopup(Sender: TObject);
    procedure gridEmpWorkDayWDT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxppSelectWDTInitPopup(Sender: TObject);
    procedure dxppSelectWDTCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure gridDayListChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure tlOrgMapChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acThangKetruocExecute(Sender: TObject);
    procedure acThangtiepTheoExecute(Sender: TObject);
    procedure acLoadDataExecute(Sender: TObject);
    procedure acTaodulieuExecute(Sender: TObject);
    procedure acTaodulieuUpdate(Sender: TObject);
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
    procedure dxppSelectWDTChange(Sender: TObject);
    procedure qryInsertEmpWorkTimeError(Sender: TObject;
      const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
      const SQLCODE: Integer; SQLMessage, SQL: TStringList;
      var RaiseException: Boolean);
    procedure qryEmpWorkDayBeforePost(DataSet: TDataSet);
    procedure acTaochamcongUpdate(Sender: TObject);
    procedure gridEmpWorkDayMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure acXoaLNCExecute(Sender: TObject);
    procedure gridEmpWorkDayClick(Sender: TObject);
  private
    { Private declarations }
    WDT_NO, WDT_NAME: WideString;
    WDT_COLOR: integer;
  public
    { Public declarations }
  end;

var
  frmToolForWorkDay: TfrmToolForWorkDay;

implementation

uses MainDM, WorkTimeManagerForm, DateUtils, PopupMainForm, SSP_Library,
  MainUnit, SSP_Menus;

{$R *.dfm}

procedure TfrmToolForWorkDay.acTaoDSNgayExecute(Sender: TObject);
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

procedure TfrmToolForWorkDay.FormCreate(Sender: TObject);
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

  WDT_COLOR := clWhite;
  inherited;
   qryOrgMap.Open;
  try
    qryOrgMap.Locate('DEPT_NO',frmWorkTimeManager.qryOrgMapDEPT_NO.Value,[]);
  except
  end;
  qryCheckEmpDeptNo.Open;

  CustomExpand(tlOrgMap);
  acXoaLNC.Enabled := false;
end;

procedure TfrmToolForWorkDay.acXemdulieuExecute(Sender: TObject);
begin
  inherited;
  if qryCheckEmpDeptNo.RecordCount = 0 then exit;
  qryEmpWorkDay.DisableControls;
  if qryEmpWorkDay.Active then qryEmpWorkDay.Close;
  qryEmpWorkDay.ParamByName('WORK_DATE').Value :=
    memDayListWORK_DATE.Value;
  qryEmpWorkDay.Open;
  if qryEmpWorkDay.RecordCount = 0 then
  begin
    qryInitWorkDay.ParamByName('USER_NAME').Value := sysConfig.User;
    qryInitWorkDay.ParamByName('DEPT_NO').Value :=
      qryOrgMapDEPT_NO.Value;
    qryInitWorkDay.ParamByName('IN_MONTH').Value := dxInMonth.Text;
    qryInitWorkDay.ParamByName('IN_YEAR').Value := dxInYear.IntValue;
    dmMain.ExecuteSQL(qryInitWorkDay);
    qryEmpWorkDay.Close;
    qryEmpWorkDay.Open;
  end;
  qryEmpWorkDay.EnableControls;
end;

procedure TfrmToolForWorkDay.gridEmpWorkDayWDT_NAMECustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AColor := StrToIntDef(VarToStr(ANode.Values[gridEmpWorkDayWDT_COLOR.Index]),
    Integer(clWhite));
end;

procedure TfrmToolForWorkDay.gridEmpWorkDayWDT_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWorkDateType.Open;
  InitPopupControl('dxlcWorkDateType', frmPopupMain, sender, 2, gridEmpWorkDay);

end;

procedure TfrmToolForWorkDay.gridEmpWorkDayWDT_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryWorkDateType, qryEmpWorkDay,
    'WDT_NO;WDT_NAME;WDT_COLOR', 'WDT_NO;WDT_NAME;WDT_COLOR',
    'WDT_NAME', Text);
  frmPopupMain.qryWorkDateType.Close;
end;

procedure TfrmToolForWorkDay.dxppSelectWDTInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWorkDateType.Open;
  InitPopupControl('dxlcWorkDateType', frmPopupMain, sender, 2);

end;

procedure TfrmToolForWorkDay.dxppSelectWDTCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if accept then
  begin
    Text := frmPopupMain.qryWorkDateTypeWDT_NAME.Value;
    WDT_NO := frmPopupMain.qryWorkDateTypeWDT_NO.Value;
    WDT_NAME := frmPopupMain.qryWorkDateTypeWDT_NAME.Value;
    WDT_COLOR := frmPopupMain.qryWorkDateTypeWDT_COLOR.Value;
  end;
  frmPopupMain.qryWorkDateType.Close;
end;

procedure TfrmToolForWorkDay.gridDayListChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  acXemdulieu.Execute;
end;

procedure TfrmToolForWorkDay.tlOrgMapChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  if qryCheckEmpDeptNo.RecordCount > 0 then
    if qryEmpWorkDay.RecordCount = 0 then
      acXemdulieu.Execute;
end;

procedure TfrmToolForWorkDay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryCheckEmpDeptNo.Close;
  qryEmpWorkDay.Close;
  qryOrgMap.Close;
end;

procedure TfrmToolForWorkDay.acThangKetruocExecute(Sender: TObject);
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

procedure TfrmToolForWorkDay.acThangtiepTheoExecute(Sender: TObject);
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

procedure TfrmToolForWorkDay.acLoadDataExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  acTaoDSNgay.Execute;
  if memDayList.RecordCount > 0 then
    memDayList.First;
  acXemdulieu.Execute;
  gridDayList.ClearSelection;
  gridEmpWorkDay.ClearSelection;
  Screen.Cursor := crDefault;
end;

procedure TfrmToolForWorkDay.acTaodulieuExecute(Sender: TObject);
var
  max, i, j: integer;
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
      qryUpdateEmpWorkDay.ParamByName('WDT_NO').Value := WDT_NO;
      qryUpdateEmpWorkDay.ParamByName('WORK_DATE').Value :=
        gridDayList.SelectedNodes[i].Values[gridDayListWORK_DATE.Index];
      qryUpdateEmpWorkDay.ParamByName('EMPLOYEE_NO').Value :=
        gridEmpWorkDay.SelectedNodes[j].Values[gridEmpWorkDayEMPLOYEE_NO.Index];
      try
        dmMain.ExecuteSQL(qryUpdateEmpWorkDay);
      except
      end;
      frmMain.BarPrgStepIt;
    end;
  end;
  dmMain.CommitTransaction;
  Screen.Cursor := crDefault;
  if qryEmpWorkDay.Active and
    (qryEmpWorkDay.RecordCount > 0) then
    qryEmpWorkDay.Refresh;
end;

procedure TfrmToolForWorkDay.acTaodulieuUpdate(Sender: TObject);
begin
  inherited;
  acTaodulieu.Enabled := (Length(WDT_NO) > 0) and
    (gridDayList.SelectedCount * gridEmpWorkDay.SelectedCount > 0);
end;

procedure TfrmToolForWorkDay.gridDayListWEEY_DAY_NAMECustomDrawCell(
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

procedure TfrmToolForWorkDay.gridDayListWORK_DATECustomDrawCell(
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

procedure TfrmToolForWorkDay.dxppSelectWDTChange(Sender: TObject);
begin
  inherited;
  if dxppSelectWDT.Text = '' then
  begin
    WDT_NO := '';
    WDT_NAME := '';
    WDT_COLOR := clWhite;
  end;
  dxppSelectWDT.Color := WDT_COLOR;
end;

procedure TfrmToolForWorkDay.qryInsertEmpWorkTimeError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  inherited;
  RaiseException := false;
end;

procedure TfrmToolForWorkDay.qryEmpWorkDayBeforePost(DataSet: TDataSet);
var
  i: integer;
begin
  inherited;
  if CheckRequiredFields(DataSet) then
  begin
    if gridDayList.SelectedCount > 1 then
    begin
      dmMain.RollbackTransaction;
      Screen.Cursor := crSQLWait;
      frmMain.SetStatusBarPrgDisplay(0, gridDayList.SelectedCount);
      for i := 0 to gridDayList.SelectedCount - 1 do
      begin
        qryUpdateEmpWorkDay.ParamByName('WDT_NO').Value :=
          qryEmpWorkDayWDT_NO.Value;
        qryUpdateEmpWorkDay.ParamByName('WORK_DATE').Value :=
          gridDayList.SelectedNodes[i].Values[gridDayListWORK_DATE.Index];
        qryUpdateEmpWorkDay.ParamByName('EMPLOYEE_NO').Value :=
          qryEmpWorkDayEMPLOYEE_NO.Value;
        try
          dmMain.ExecuteSQL(qryUpdateEmpWorkDay);
        except
        end;
        frmMain.BarPrgStepIt;
      end;
      dmMain.CommitTransaction;
      Screen.Cursor := crDefault;
    end
  end
  else
    Abort;
end;

procedure TfrmToolForWorkDay.acTaochamcongUpdate(Sender: TObject);
begin
  inherited;
  acTaoChamcong.Enabled := qryEmpWorkDayWDT_NO.IsNull;
end;

procedure TfrmToolForWorkDay.gridEmpWorkDayMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (Button = mbRight) then
  begin
   if frmMain.ShowGridMenus(TdxDBGrid(Sender)) then exit else
    dxBarPopupMenu1.PopupFromCursorPos;
  end;
end;

procedure TfrmToolForWorkDay.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  gridEmpWorkDay.SelectAll;
end;

procedure TfrmToolForWorkDay.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  gridEmpWorkDay.ClearSelection;
end;

procedure TfrmToolForWorkDay.acXoaLNCExecute(Sender: TObject);
var
  max, i, j: integer;
begin
  inherited;
  dmMain.RollbackTransaction;
  Screen.Cursor := crSQLWait;
  max := gridDayList.SelectedCount * gridEmpWorkDay.SelectedCount;
  frmMain.SetStatusBarPrgDisplay(0, max);
  if (qryEmpWorkDay.State in [dsEdit, dsInsert]) = false then
  begin
    qryEmpWorkDay.Edit;
  end;
  for i := 0 to gridDayList.SelectedCount - 1 do
  begin
    for j := 0 to gridEmpWorkDay.SelectedCount - 1 do
    begin
      qryUpdateEmpWorkDay.ParamByName('WDT_NO').Value := null;
      qryUpdateEmpWorkDay.ParamByName('WORK_DATE').Value :=
        gridDayList.SelectedNodes[i].Values[gridDayListWORK_DATE.Index];
      qryUpdateEmpWorkDay.ParamByName('EMPLOYEE_NO').Value :=
        gridEmpWorkDay.SelectedNodes[j].Values[gridEmpWorkDayEMPLOYEE_NO.Index];
      try
        dmMain.ExecuteSQL(qryUpdateEmpWorkDay);
      except
      end;
      frmMain.BarPrgStepIt;
    end;
  end;
  dmMain.CommitTransaction;
  acXoaLNC.Enabled := false;
  Screen.Cursor := crDefault;
  if qryEmpWorkDay.Active and
    (qryEmpWorkDay.RecordCount > 0) then
    qryEmpWorkDay.Refresh;
end;

procedure TfrmToolForWorkDay.gridEmpWorkDayClick(Sender: TObject);
begin
  inherited;
  if gridEmpWorkDay.SelectedCount > 0 then
    acXoaLNC.Enabled := true
  else
    acXoaLNC.Enabled := false;
end;

end.

