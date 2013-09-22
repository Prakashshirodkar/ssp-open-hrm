unit WorkShiftRegForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, ElPgCtl, dxExEdtr, DB, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxEditor, dxEdLib, IBODataset, jzExtCtrls, jzGrids,
  jzPlannerCtrl, ToolbarFrame, ActnList, ElBtnCtl, ElPopBtn, dxDBTLCl,
  dxGrClms, dxGrClEx, ElHTMLHint, ElMouseHint, ExtCtrls, ElPanel;

type
  TfrmWorkShiftReg = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    pageMain: TElPageControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    tabData: TElTabSheet;
    tabView: TElTabSheet;
    gridDSNhanvien: TdxDBGrid;
    dxLayoutControl1Item2: TdxLayoutItem;
    dsDSNhanvien: TDataSource;
    dxSelectDept: TdxPopupEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    qryDSNhanvien: TIBOQuery;
    jzLich: TjzPlannerGrid;
    gridDangky: TdxDBGrid;
    dxLayoutControl1Item4: TdxLayoutItem;
    frameToolbar1: TframeToolbar;
    dxViewAll: TdxCheckEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    qryDangky: TIBOQuery;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    ActionList1: TActionList;
    acXemDulieu: TAction;
    qryDSNhanvienEMPLOYEE_NO: TWideStringField;
    qryDSNhanvienFULL_NAME: TWideStringField;
    qryDSNhanvienDEPT_NAME: TWideStringField;
    qryDSNhanvienTITLE_NAME: TWideStringField;
    gridDSNhanvienEMPLOYEE_NO: TdxDBGridColumn;
    gridDSNhanvienFULL_NAME: TdxDBGridColumn;
    gridDSNhanvienDEPT_NAME: TdxDBGridColumn;
    gridDSNhanvienTITLE_NAME: TdxDBGridColumn;
    qryDangkyEMPLOYEE_NO: TWideStringField;
    qryDangkySHIFT_NO: TWideStringField;
    qryDangkyFROM_DATE: TDateField;
    qryDangkyTO_DATE: TDateField;
    qryDangkyPERMANENT: TIntegerField;
    qryDangkyNOTE: TWideStringField;
    dsDangky: TDataSource;
    gridDangkyFROM_DATE: TdxDBGridDateColumn;
    gridDangkyTO_DATE: TdxDBGridDateColumn;
    gridDangkyNOTE: TdxDBGridColumn;
    qryDangkyKEY_ID: TWideStringField;
    qryDangkySHIFT_NAME: TWideStringField;
    gridDangkySHIFT_NAME: TdxDBGridPopupColumn;
    qryMultiAction: TIBOQuery;
    acMultiDelete: TAction;
    acKhoitaoLich: TAction;
    qryDSCalamviec: TIBOQuery;
    qryDSCalamviecSHIFT_NO: TWideStringField;
    qryDSCalamviecSHIFT_NAME: TWideStringField;
    qryDSCalamviecSHIFT_NOTE: TWideStringField;
    qryDSCalamviecCOLOR: TIntegerField;
    acXemLich: TAction;
    qryLichLamviec: TIBOQuery;
    qryLichLamviecEMPLOYEE_NO: TWideStringField;
    qryLichLamviecFROM_DATE: TDateField;
    qryLichLamviecTO_DATE: TDateField;
    qryLichLamviecSHIFT_NO: TWideStringField;
    qryLichLamviecSHIFT_NAME: TWideStringField;
    ElMouseHint1: TElMouseHint;
    SpinThang: TdxSpinEdit;
    SpinNam: TdxSpinEdit;
    btnThangTruoc: TElPopupButton;
    btnThangHienTai: TElPopupButton;
    btnThangSau: TElPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    acXemTheoThang: TAction;
    acXemThangTruoc: TAction;
    acXemThangSau: TAction;
    acTinhHS: TAction;
    qryDangkyFOR_EMP_NO: TWideStringField;
    qryDangkyFULL_NAME: TWideStringField;
    gridDangkyFULL_NAME: TdxDBGridPopupColumn;
    procedure dxSelectDeptInitPopup(Sender: TObject);
    procedure dxSelectDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxViewAllChange(Sender: TObject);
    procedure acXemDulieuExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryDangkyBeforePost(DataSet: TDataSet);
    procedure gridDangkySHIFT_NAMEInitPopup(Sender: TObject);
    procedure gridDangkySHIFT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryDangkyAfterPost(DataSet: TDataSet);
    procedure qryMultiActionError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure qryDangkyBeforeDelete(DataSet: TDataSet);
    procedure acMultiDeleteUpdate(Sender: TObject);
    procedure acMultiDeleteExecute(Sender: TObject);
    procedure acKhoitaoLichExecute(Sender: TObject);
    procedure jzLichClick(Sender: TObject);
    procedure acXemLichExecute(Sender: TObject);
    procedure pageMainChange(Sender: TObject);
    procedure gridDSNhanvienChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure jzLichYearChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acXemTheoThangExecute(Sender: TObject);
    procedure acXemThangSauExecute(Sender: TObject);
    procedure acXemThangTruocExecute(Sender: TObject);
    procedure tabDataShow(Sender: TObject);
    procedure gridDangkyFULL_NAMEInitPopup(Sender: TObject);
    procedure gridDangkyFULL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
  private
    { Private declarations }
    FSelectDept, FSelectDeptName: WideString;
    STATE:TDataSetState;
  public
    { Public declarations }
  end;

var
  frmWorkShiftReg: TfrmWorkShiftReg;

implementation

uses MainDM, PopupMainForm, SSP_Library, MainUnit,DateUtils, SSP_Script;

{$R *.dfm}

procedure TfrmWorkShiftReg.dxSelectDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, Sender, 2);
  frmPopupMain.dxtlDeptList.FullExpand;
end;

procedure TfrmWorkShiftReg.dxSelectDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
    begin
      Text := frmPopupMain.qryDeptListDEPT_NAME.Value;
      FSelectDept := frmPopupMain.qryDeptListDEPT_NO.Value;
      FSelectDeptName := frmPopupMain.qryDeptListDEPT_NAME.Value;
      acXemDulieu.Execute;
    end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmWorkShiftReg.dxViewAllChange(Sender: TObject);
begin
  inherited;
  acXemDulieu.Execute;
end;

procedure TfrmWorkShiftReg.acXemDulieuExecute(Sender: TObject);
begin
  inherited;
  qryDSNhanvien.DisableControls;
  qryDangky.DisableControls;

  if qryDSNhanvien.Active then
    qryDSNHanvien.Close;
  if qryDangky.Active then
    qryDangky.Close;

  qryDSNhanvien.ParamByName('FROM_DEPT_NO').Value := FSelectDept;
  if dxViewAll.Checked then
    qryDSNhanvien.ParamByName('VIEW_ALL').Value := 1
  else
    qryDSNhanvien.ParamByName('VIEW_ALL').Value := 0;
  qryDSNHanvien.Open;
  qryDangky.Open;

  qryDSNhanvien.EnableControls;
  qryDangky.EnableControls;
  gridDSNhanvien.FullExpand;
end;

procedure TfrmWorkShiftReg.FormCreate(Sender: TObject);
begin
  inherited;
  acXemDulieu.Execute;
  frameToolbar1.SetDataSource(dsDangky);
  acKhoitaoLich.Execute;
  jzLich.OnYearChange:=jzLichYearChange;
  pageMain.ActivePageIndex:=0;

  //Gan thang hien hanh
  SpinThang.IntValue:=MonthOf(now);
  SpinNam.IntValue:=YearOf(now);

  //Thuc hien loc theo thang nam
  qryDangky.ParamByName('vThang').Value:=SpinThang.IntValue;
  qryDangky.ParamByName('vNam').Value:=SpinNam.IntValue;
  if not qryDangKy.Active then
      qryDangKy.Open;
  
end;

procedure TfrmWorkShiftReg.qryDangkyBeforePost(DataSet: TDataSet);
begin
  inherited;
  STATE := qryDangky.State;
  if qryDangkyTO_DATE.Value<qryDangkyFROM_DATE.Value
  then qryDangkyTO_DATE.Value:=qryDangkyFROM_DATE.Value;
  qryDangkyKEY_ID.Value := qryDangkySHIFT_NO.Value + qryDangkyFROM_DATE.AsString + qryDangkyTO_DATE.AsString;
  dmMain.DefOnBeforePost(qryDangky);
end;

procedure TfrmWorkShiftReg.gridDangkySHIFT_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWorkShift.Open;
  InitPopupControl('dxlcWorkShift', frmPopupMain, Sender, 2.3, gridDangky);
end;


procedure TfrmWorkShiftReg.gridDangkySHIFT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryWorkShift, qryDangky, 'SHIFT_NO;SHIFT_NAME', 'SHIFT_NO;SHIFT_NAME', 'SHIFT_NAME', Text);
  frmPopupMain.qryWorkShift.Close;
end;

procedure TfrmWorkShiftReg.qryDangkyAfterPost(DataSet: TDataSet);
var
  i, max: integer;
begin
  inherited;
  if (gridDSNhanvien.SelectedCount > 1) then
    begin
      dmMain.RollbackTransaction;
      Screen.Cursor := crSQLWait;
      max := gridDSNhanvien.SelectedCount;
      frmMain.SetStatusBarPrgDisplay(0, max);
      if STATE in [dsInsert] then
            qryMultiAction.SQL.Text :=
              'INSERT INTO HR_WORK_SHIFT_REG(EMPLOYEE_NO,FROM_DATE,SHIFT_NO,TO_DATE,PERMANENT,NOTE)' +
              ' VALUES (:EMPLOYEE_NO,:FROM_DATE,:SHIFT_NO,:TO_DATE,:PERMANENT,:NOTE)'
          else
            qryMultiAction.SQL.Text :=
              'UPDATE HR_WORK_SHIFT_REG SET ' +
              ' EMPLOYEE_NO = :EMPLOYEE_NO,' +
              ' FROM_DATE = :FROM_DATE, ' +
              ' SHIFT_NO = :SHIFT_NO,' +
              ' TO_DATE = :TO_DATE, ' +
              ' PERMANENT = :PERMANENT, ' +
              ' NOTE = :NOTE ' +
              ' WHERE  ' +
              ' EMPLOYEE_NO = :EMPLOYEE_NO AND ' +
              ' FROM_DATE = :FROM_DATE AND ' +
              ' SHIFT_NO = :SHIFT_NO AND '+
              ' TO_DATE = :TO_DATE ';
      qryMultiAction.Prepare;
      for i := 0 to gridDSNhanvien.SelectedCount - 1 do
      begin
          qryMultiAction.ParamByName('EMPLOYEE_NO').Value :=
              gridDSNhanvien.SelectedNodes[i].Values[gridDSNhanvienEMPLOYEE_NO.Index];
          qryMultiAction.ParamByName('FROM_DATE').Value :=
            qryDangkyFROM_DATE.Value;
          qryMultiAction.ParamByName('SHIFT_NO').Value :=
            qryDangkySHIFT_NO.Value;
          qryMultiAction.ParamByName('TO_DATE').Value :=
            qryDangkyTO_DATE.Value;
           qryMultiAction.ParamByName('PERMANENT').Value :=
            qryDangkyPERMANENT.Value;
            qryMultiAction.ParamByName('NOTE').Value :=
            qryDangkyNOTE.Value;
          try
            dmMain.ExecuteSQL(qryMultiAction);
          except
          end;
          frmMain.BarPrgStepIt;
      end;
      dmMain.CommitTransaction;
      Screen.Cursor := crDefault;
    end;
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TfrmWorkShiftReg.qryMultiActionError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  inherited;
  RaiseException := false;
end;

procedure TfrmWorkShiftReg.qryDangkyBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if acMultiDelete.Enabled then
  begin
    acMultiDelete.Execute;
    Abort;
    qryDangky.Refresh;
  end;
  dmMain.DefOnBeforeDelete(qryDangky);
end;

procedure TfrmWorkShiftReg.acMultiDeleteUpdate(Sender: TObject);
begin
  inherited;
  acMultiDelete.Enabled:=(gridDSNhanvien.SelectedCount>1) and (not qryDangky.IsEmpty);
end;

procedure TfrmWorkShiftReg.acMultiDeleteExecute(Sender: TObject);
var
  i, max: integer;
begin
  inherited;
  if (gridDSNhanvien.SelectedCount > 1) then
    begin
      dmMain.RollbackTransaction;
      Screen.Cursor := crSQLWait;
      max := gridDSNhanvien.SelectedCount;
      frmMain.SetStatusBarPrgDisplay(0, max);
      qryMultiAction.SQL.Text :=
              'DELETE FROM HR_WORK_SHIFT_REG WHERE ' +
              ' EMPLOYEE_NO = :EMPLOYEE_NO AND ' +
              ' FROM_DATE = :FROM_DATE AND ' +
              ' SHIFT_NO = :SHIFT_NO AND '+
              ' TO_DATE = :TO_DATE ';
     qryMultiAction.Prepare;
      for i := 0 to gridDSNhanvien.SelectedCount - 1 do
      begin

         qryMultiAction.ParamByName('EMPLOYEE_NO').Value :=
              gridDSNhanvien.SelectedNodes[i].Values[gridDSNhanvienEMPLOYEE_NO.Index];
          qryMultiAction.ParamByName('FROM_DATE').Value :=
            qryDangkyFROM_DATE.Value;
          qryMultiAction.ParamByName('SHIFT_NO').Value :=
            qryDangkySHIFT_NO.Value;
          qryMultiAction.ParamByName('TO_DATE').Value :=
            qryDangkyTO_DATE.Value;
          try
            dmMain.ExecuteSQL(qryMultiAction);
          except
          end;
          frmMain.BarPrgStepIt;
      end;
      dmMain.CommitTransaction;
      Screen.Cursor := crDefault;
    end;
end;

procedure TfrmWorkShiftReg.acKhoitaoLichExecute(Sender: TObject);
var newType:TEventType;
begin
  inherited;
  if not qryDSCalamviec.Active then
    qryDSCalamviec.Open;
  jzLich.EventTypes.Clear;
  if not qryDSCalamviec.IsEmpty then
  begin
    qryDSCalamviec.First;
    while not qryDSCalamviec.Eof do
    begin
      newType:=jzLich.EventTypes.Add;
      newType.Color:=qryDSCalamviecCOLOR.Value;
      newType.Caption:=qryDSCalamviecSHIFT_NO.AsString;
      qryDSCalamviec.Next;
    end;
  end;
  qryDSCalamviec.Close;
end;

procedure TfrmWorkShiftReg.jzLichClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmWorkShiftReg.acXemLichExecute(Sender: TObject);
var i,EventID:integer;
   Event:TPlannerEvent;
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  qryLichLamviec.ParamByName('AT_YEAR').Value:=jzLich.Year;
  if not qryLichLamviec.Active then
  begin
    qryLichLamviec.Open;
  end;
  jzLich.Events.Clear;
  if not qryLichLamviec.IsEmpty then
  begin
    qryLichLamviec.First;
    while not qryLichLamviec.Eof do
    begin
      for i:=0 to jzLich.EventTypes.Count-1 do
        if jzLich.EventTypes[i].Caption=qryLichLamviecSHIFT_NO.AsString then
        begin
          EventID:=jzLich.EventTypes[i].Index;
          Break;
        end;
      Event:=jzLich.Events.Add(qryLichLamviecFROM_DATE.Value,qryLichLamviecTO_DATE.Value,EventID,qryLichLamviecSHIFT_NO.AsString,false);
      Event.Description:=UTF8Encode(qryLichLamviecSHIFT_NAME.Value);
      qryLichLamviec.Next;
    end;
  end;
  Screen.Cursor:=crDefault;
end;

procedure TfrmWorkShiftReg.pageMainChange(Sender: TObject);
begin
  inherited;
  if pageMain.ActivePageIndex=1 then
    acXemLich.Execute;
end;

procedure TfrmWorkShiftReg.gridDSNhanvienChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  if pageMain.ActivePageIndex=1 then
    acXemLich.Execute;
end;

procedure TfrmWorkShiftReg.jzLichYearChange(Sender: TObject);
begin
  inherited;
  if qryLichLamviec.Active then
    qryLichlamviec.Close;
  acXemLich.Execute;  
end;

procedure TfrmWorkShiftReg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryDangky.Close;
  qryDSNhanvien.Close;
  qryLichLamviec.Close;
  qryDSCalamviec.Close;
end;

procedure TfrmWorkShiftReg.acXemTheoThangExecute(Sender: TObject);
begin
  inherited;
   qryDangky.ParamByName('vThang').Value:=SpinThang.IntValue;
   qryDangky.ParamByName('vNam').Value:=SpinNam.IntValue;
   qryDangKy.Close;
   qryDangKy.Open;
   
end;

procedure TfrmWorkShiftReg.acXemThangSauExecute(Sender: TObject);
begin
  inherited;
  if SpinThang.IntValue < 12 then
    SpinThang.IntValue := SpinThang.IntValue + 1
  else
  begin
    SpinThang.IntValue := 1;
    SpinNam.IntValue := SpinNam.IntValue + 1;
  end;
  acXemTheoThang.Execute;
end;

procedure TfrmWorkShiftReg.acXemThangTruocExecute(Sender: TObject);
begin
  inherited;
  if SpinThang.IntValue > 1 then
    SpinThang.IntValue :=SpinThang.IntValue - 1
  else
  begin
    SpinThang.IntValue := 12;
    SpinNam.IntValue := SpinNam.IntValue - 1;
  end;
  acXemTheoThang.Execute;
end;

procedure TfrmWorkShiftReg.tabDataShow(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsDangky);
end;

procedure TfrmWorkShiftReg.gridDangkyFULL_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  //Edited by THUYPTP - 28/4/2009
  //frmPopupMain.qryEmpForSelect.Open;
  frmPopupMain.dximOptionChange(sender);
  //Het
  InitPopupControl('dxlcEmpForSelect', frmPopupMain, sender, 2.5,
    gridDangky);
end;

procedure TfrmWorkShiftReg.gridDangkyFULL_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryEmpForSelect,
    qryDangky,
    'EMPLOYEE_NO;FULL_NAME',
    'FOR_EMP_NO;FULL_NAME',
    'FULL_NAME', Text);
  frmPopupMain.qryEmpForSelect.Close;
end;

end.

