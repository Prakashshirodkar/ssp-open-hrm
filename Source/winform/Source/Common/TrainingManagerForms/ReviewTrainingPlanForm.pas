unit ReviewTrainingPlanForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, cxControls,
  ExtCtrls, dxsbar, dxDBTLCl, dxGrClms, ElPgCtl, ElPanel, ElHTMLPanel,
  ElAdvPanel, ElExpBar, ElScrollBox, StdCtrls, ElCLabel, ElLabel, ImgList,
  dxEdLib, ElBtnCtl, ElPopBtn, dxEditor, DB, IBODataset, ActnList, dxBar,
  dxmdaset;

type
  TfrmReviewTrainingPlan = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    gridClass: TdxDBGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    gridClassCLASS_CONTENT: TdxDBGridColumn;
    gridClassSTART_DATE: TdxDBGridDateColumn;
    gridClassEND_DATE: TdxDBGridDateColumn;
    gridClassSTUDENT_COUNT: TdxDBGridSpinColumn;
    gridClassCLASS_CODE: TdxDBGridColumn;
    gridClassTEACHER: TdxDBGridColumn;
    gridDetail: TdxDBGrid;
    dxLayoutControl1Item2: TdxLayoutItem;
    pageMain: TElPageControl;
    tabSelect: TElTabSheet;
    tabPlan: TElTabSheet;
    dxsidebarMenu: TdxSideBar;
    imgLargeIcon: TImageList;
    dxlcMain: TdxLayoutControl;
    dxDept: TdxPopupEdit;
    dxViewAll: TdxCheckEdit;
    ElPopupButton1: TElPopupButton;
    dxAtDate: TdxDateEdit;
    dxClass: TdxPopupEdit;
    dxSelectAll: TdxCheckEdit;
    dxFromDate: TdxDateEdit;
    gridData: TdxDBGrid;
    gridDataEMPLOYEE_NO: TdxDBGridColumn;
    gridDataFULL_NAME: TdxDBGridColumn;
    gridDataDEPT_NAME: TdxDBGridColumn;
    gridDataTITLE_NAME: TdxDBGridColumn;
    gridDataASSIGNED_DATE: TdxDBGridDateColumn;
    gridDataCOURSE_CODE: TdxDBGridColumn;
    gridDataCOURSE_NAME: TdxDBGridColumn;
    gridDataCLASS_CODE: TdxDBGridColumn;
    gridDataCLASS_NAME: TdxDBGridColumn;
    gridDataTIME_PERIOD: TdxDBGridColumn;
    gridDataTIME_UNIT: TdxDBGridImageColumn;
    gridDataEXPIRED_DATE: TdxDBGridDateColumn;
    gridDataOVER_DUE: TdxDBGridColumn;
    gridDataSELECTED: TdxDBGridCheckColumn;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxlcMainGroup3: TdxLayoutGroup;
    dxlcMainItem2: TdxLayoutItem;
    dxlcMainItem7: TdxLayoutItem;
    dxlcMainGroup4: TdxLayoutGroup;
    dxlcMainItem3: TdxLayoutItem;
    dxlcMainItem8: TdxLayoutItem;
    dxlcMainItem10: TdxLayoutItem;
    dxlcMainItem5: TdxLayoutItem;
    dxlcMainItem4: TdxLayoutItem;
    dxlcMainGroup2: TdxLayoutGroup;
    dxlcMainItem6: TdxLayoutItem;
    dxlcMainGroup1: TdxLayoutGroup;
    ActionList1: TActionList;
    acXem: TAction;
    acSelectAll: TAction;
    acUnSelectAll: TAction;
    acSelectAllForDept: TAction;
    acUnselectAllForDept: TAction;
    qryData: TIBOQuery;
    qryDataEMPLOYEE_NO: TWideStringField;
    qryDataFULL_NAME: TWideStringField;
    qryDataPOSITION_NO: TWideStringField;
    qryDataDEPT_NO: TWideStringField;
    qryDataDEPT_NAME: TWideStringField;
    qryDataTITLE_NO: TWideStringField;
    qryDataTITLE_NAME: TWideStringField;
    qryDataASSIGNED_DATE: TDateField;
    qryDataCOURSE_CODE: TWideStringField;
    qryDataCOURSE_NAME: TWideStringField;
    qryDataCLASS_CODE: TWideStringField;
    qryDataCLASS_NAME: TWideStringField;
    qryDataTIME_PERIOD: TIntegerField;
    qryDataTIME_UNIT: TIntegerField;
    qryDataEXPIRED_DATE: TDateField;
    qryDataOVER_DUE: TIntegerField;
    qryDataDAY_COUNT: TIntegerField;
    qryDataSELECTED: TIntegerField;
    qryDataKEY_ID: TWideStringField;
    qryDataTEACHER: TWideStringField;
    qryDataCLASS_PLACE: TWideStringField;
    dsData: TDataSource;
    dxlcMainGroup6: TdxLayoutGroup;
    dxSelectMenu: TdxBarPopupMenu;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    memClass: TdxMemData;
    memClassCLASS_CONTENT: TWideStringField;
    memClassSTART_DATE: TDateField;
    memClassEND_DATE: TDateField;
    memClassSTUDENT_COUNT: TIntegerField;
    memClassCLASS_CODE: TWideStringField;
    memClassTEACHER: TWideStringField;
    dsClass: TDataSource;
    memTrainee: TdxMemData;
    dsTrainee: TDataSource;
    acCreatePlan: TAction;
    pageControl: TElPageControl;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElTabSheet1: TElTabSheet;
    ElTabSheet2: TElTabSheet;
    memTraineeEMPLOYEE_NO: TWideStringField;
    memTraineeFULL_NAME: TWideStringField;
    memTraineeDEPT_NO: TWideStringField;
    memTraineeTITLE_NO: TWideStringField;
    memTraineeDEPT_NAME: TWideStringField;
    memTraineeTITLE_NAME: TWideStringField;
    memTraineeSTART_DATE: TDateField;
    memTraineeEND_DATE: TDateField;
    memTraineeCLASS_CODE: TWideStringField;
    gridDetailEMPLOYEE_NO: TdxDBGridColumn;
    gridDetailFULL_NAME: TdxDBGridColumn;
    gridDetailDEPT_NAME: TdxDBGridColumn;
    gridDetailTITLE_NAME: TdxDBGridColumn;
    gridDetailSTART_DATE: TdxDBGridDateColumn;
    gridDetailEND_DATE: TdxDBGridDateColumn;
    gridDetailCLASS_CODE: TdxDBGridColumn;
    memTraineeSELECTED: TIntegerField;
    gridDetailSELECTED: TdxDBGridCheckColumn;
    acSelectClass: TAction;
    acConfirmPlan: TAction;
    qryExecute: TIBOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    DateField1: TDateField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DateField2: TDateField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    procedure dxsidebarMenuItemClick(Sender: TObject;
      Item: TdxSideBarItem);
    procedure acXemExecute(Sender: TObject);
    procedure dxDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDeptInitPopup(Sender: TObject);
    procedure dxDeptChange(Sender: TObject);
    procedure dxClassChange(Sender: TObject);
    procedure dxClassCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxClassInitPopup(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridDataMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acSelectAllExecute(Sender: TObject);
    procedure acUnSelectAllExecute(Sender: TObject);
    procedure acSelectAllForDeptExecute(Sender: TObject);
    procedure acUnselectAllForDeptExecute(Sender: TObject);
    procedure acSelectAllUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acCreatePlanExecute(Sender: TObject);
    procedure FreeClass;
    procedure acSelectClassExecute(Sender: TObject);
    procedure dxSelectAllChange(Sender: TObject);
    procedure OnSELECTEDChange(Sender: TField);
    procedure acConfirmPlanExecute(Sender: TObject);
    procedure qryExecuteError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);

  private
    { Private declarations }
    F_DEPT_NO, F_CLASS_NO: WideString;
    F_ClassList: TStrings;
    F_STATE: string;
  public
    { Public declarations }
  end;

var
  frmReviewTrainingPlan: TfrmReviewTrainingPlan;

implementation

uses MainDM, TrainingAlertForm, SSP_Library, PopupMainForm, Registry, DateUtils,
  MainUnit, TrainingPlanForm;

{$R *.dfm}

procedure TfrmReviewTrainingPlan.dxsidebarMenuItemClick(Sender: TObject;
  Item: TdxSideBarItem);
begin
  inherited;
  if item.Tag = 2 then
  begin
    acConfirmPlan.Execute;
  end
  else
    if pageMain.ActivePageIndex <> item.Tag then
  begin
    if item.Tag = 1 then
    begin
      acCreatePlan.Execute;
    end;
    pageMain.ActivePageIndex := item.Tag;
  end;
end;

procedure TfrmReviewTrainingPlan.acXemExecute(Sender: TObject);
begin
  inherited;
  qryData.DisableControls;
  if qryData.Active then qryData.Close;
  if F_DEPT_NO = '' then
    qryData.ParamByName('VIEW_DEPT_NO').Clear
  else
    qryData.ParamByName('VIEW_DEPT_NO').Value := F_DEPT_NO;
  if (F_CLASS_NO = '') or (dxSelectAll.Checked) then
    qryData.ParamByName('VIEW_AT_CLASS').Clear
  else
    qryData.ParamByName('VIEW_AT_CLASS').Value := F_CLASS_NO;

  if dxViewAll.Checked then
    qryData.ParamByName('VIEW_ALL').Value := 1
  else
    qryData.ParamByName('VIEW_ALL').Value := 0;
  qryData.ParamByName('VIEW_AT_DATE').Value := dxAtDate.Date;
  qryData.ParamByName('VIEW_FROM_DATE').Value := dxFromDate.Date;
  qryData.Open;
  qryData.EnableControls;
  gridData.FullExpand;
end;

procedure TfrmReviewTrainingPlan.dxDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    F_DEPT_NO := frmPopupMain.qryDeptListDEPT_NO.Value;
    Text := frmPopupMain.qryDeptListDEPT_NAME.Value;
  end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmReviewTrainingPlan.dxDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
end;

procedure TfrmReviewTrainingPlan.dxDeptChange(Sender: TObject);
begin
  inherited;
  if Trim(dxDept.Text) = '' then F_DEPT_NO := '';
end;

procedure TfrmReviewTrainingPlan.dxClassChange(Sender: TObject);
begin
  inherited;
  if Trim(dxClass.Text) = '' then F_CLASS_NO := '';
end;

procedure TfrmReviewTrainingPlan.dxClassCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    F_CLASS_NO := frmPopupMain.qryClassCLASS_CODE.Value;
    Text := frmPopupMain.qryClassCLASS_NAME.Value + ' (' + frmPopupMain.qryClassCLASS_CODE.Value + ')';
  end;
  frmPopupMain.qryClass.Close;
end;

procedure TfrmReviewTrainingPlan.dxClassInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryClass.Open;
  InitPopupControl('dxlcClass', frmPopupMain, sender, 2);
end;

procedure TfrmReviewTrainingPlan.FormCreate(Sender: TObject);
var
  Reg: TRegistry;
begin
  inherited;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(REGISTRY_ROOT + '\TrainingAlert\', TRUE) then
    begin
      try
        dxFromDate.Date := Reg.ReadDate('FromDate');
      except
        dxFromDate.Date := StartOfTheMonth(Today);
      end;
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
  dxAtDate.Date := Today;
  acXem.Execute;
  F_ClassList := TStringList.Create;
  pageMain.ShowTabs := false;
  pageMain.ActivePageIndex := 0;

end;

procedure TfrmReviewTrainingPlan.gridDataMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (Button = mbRight) then
  begin
    if frmMain.ShowGridMenus(TdxDBGrid(Sender)) then exit
    else
      dxSelectMenu.PopupFromCursorPos;
  end;

end;

procedure TfrmReviewTrainingPlan.acSelectAllExecute(Sender: TObject);
var b: TBookmark;
begin
  inherited;
  qryData.DisableControls;
  b := qryData.GetBookmark;
  qryData.First;
  while not qryData.Eof do
  begin
    if not (qryData.State in [dsEdit]) then
      qryData.Edit;
    qryDataSELECTED.Value := 1;
    qryData.Post;
    qryData.Next;
  end;
  qryData.GotoBookmark(b);
  qryData.EnableControls;
end;

procedure TfrmReviewTrainingPlan.acUnSelectAllExecute(Sender: TObject);
var b: TBookmark;
begin
  inherited;
  qryData.DisableControls;
  b := qryData.GetBookmark;
  qryData.First;
  while not qryData.Eof do
  begin
    if not (qryData.State in [dsEdit]) then
      qryData.Edit;
    qryDataSELECTED.Value := 0;
    qryData.Post;
    qryData.Next;
  end;
  qryData.GotoBookmark(b);
  qryData.EnableControls;
end;

procedure TfrmReviewTrainingPlan.acSelectAllForDeptExecute(
  Sender: TObject);
var b: TBookmark;
  cur_dept: WideString;
begin
  inherited;
  qryData.DisableControls;
  b := qryData.GetBookmark;
  cur_dept := qryDataDEPT_NO.Value;
  qryData.First;
  while not qryData.Eof do
  begin
    if qryDataDEPT_NO.Value = cur_dept then
    begin
      if not (qryData.State in [dsEdit]) then
        qryData.Edit;
      qryDataSELECTED.Value := 1;
      qryData.Post;
    end;
    qryData.Next;
  end;
  qryData.GotoBookmark(b);
  qryData.EnableControls;
end;

procedure TfrmReviewTrainingPlan.acUnselectAllForDeptExecute(
  Sender: TObject);
var b: TBookmark;
  cur_dept: WideString;
begin
  inherited;
  qryData.DisableControls;
  b := qryData.GetBookmark;
  cur_dept := qryDataDEPT_NO.Value;
  qryData.First;
  while not qryData.Eof do
  begin
    if qryDataDEPT_NO.Value = cur_dept then
    begin
      if not (qryData.State in [dsEdit]) then
        qryData.Edit;
      qryDataSELECTED.Value := 0;
      qryData.Post;
    end;
    qryData.Next;
  end;
  qryData.GotoBookmark(b);
  qryData.EnableControls;
end;

procedure TfrmReviewTrainingPlan.acSelectAllUpdate(Sender: TObject);
begin
  inherited;
  acSelectAll.Enabled := not qryData.IsEmpty;
  acUnSelectAll.Enabled := acSelectAll.Enabled;
  acSelectAllForDept.Enabled := acSelectAll.Enabled;
  acUnselectAllForDept.Enabled := acSelectAll.Enabled;
end;

procedure TfrmReviewTrainingPlan.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i: integer;
begin
  qryData.Close;
  pageControl.OnChange := nil;
  FreeClass;
  inherited;
end;

procedure TfrmReviewTrainingPlan.acCreatePlanExecute(Sender: TObject);
var i: integer;
  CLASS_CODE: string;
  class_page: TElTabSheet;
  class_mem: TdxMemData;
  class_ds: TDatasource;
begin
  inherited;
  F_STATE := 'InitClassList';
  if qryData.IsEmpty then exit;
  if qryData.State in [dsEdit] then qryData.Post;
  FreeClass;

  qryData.First;
  memClass.DisableControls;
  memClass.Close;
  memClass.Open;
  while not qryData.Eof do
  begin
    if qryDataSELECTED.Value = 1 then
    begin
      //   class_page:=TElTabSheet(pageControl.FindComponent('tab'+qryDataCLASS_CODE.AsString));
      if not memClass.Locate('CLASS_CODE', qryDataCLASS_CODE.Value, []) then
        // tao moi class-view
      begin
        class_page := pageControl.NewPage;
        class_page.Name := qryDataCLASS_CODE.AsString;
        class_page.Caption := qryDataCLASS_NAME.Value;

        class_mem := TdxMemData.Create(self);
        class_mem.Name := 'mem' + qryDataCLASS_CODE.AsString;
        class_mem.CreateFieldsFromDataSet(memTrainee);
        class_mem.FieldByName('SELECTED').OnChange := OnSELECTEDChange;

        class_ds := TDatasource.Create(self);
        class_ds.Name := 'ds' + qryDataCLASS_CODE.AsString;
        class_ds.DataSet := class_mem;
        F_ClassList.AddObject(qryDataCLASS_CODE.AsString, class_ds);

        memClass.Append;
        memClassCLASS_CODE.Value := qryDataCLASS_CODE.Value;
        memClassCLASS_CONTENT.Value := qryDataCLASS_NAME.Value;
        memClassSTART_DATE.Value := Today;
        memClassEND_DATE.Value := memClassSTART_DATE.Value + qryDataDAY_COUNT.Value;
        memClassSTUDENT_COUNT.Value := 0;
        memClassTEACHER.Value := qryDataTEACHER.Value;
        memClass.Post;
      end
      else
      begin
        class_mem := TdxMemData(Self.FindComponent('mem' + qryDataCLASS_CODE.AsString));
        class_ds := TDatasource(Self.FindComponent('ds' + qryDataCLASS_CODE.AsString));
      end;
      if not class_mem.Active then class_mem.Open;
      class_mem.Append;
      class_mem.FieldByName('CLASS_CODE').Value := qryDataCLASS_CODE.Value;
      class_mem.FieldByName('EMPLOYEE_NO').Value := qryDataEMPLOYEE_NO.Value;
      class_mem.FieldByName('FULL_NAME').Value := qryDataFULL_NAME.Value;
      class_mem.FieldByName('DEPT_NO').Value := qryDataDEPT_NO.Value;
      class_mem.FieldByName('DEPT_NAME').Value := qryDataDEPT_NAME.Value;
      class_mem.FieldByName('TITLE_NO').Value := qryDataTITLE_NO.Value;
      class_mem.FieldByName('TITLE_NAME').Value := qryDataTITLE_NAME.Value;
      class_mem.FieldByName('START_DATE').Value := memClassSTART_DATE.Value;
      class_mem.FieldByName('END_DATE').Value := memClassEND_DATE.Value;
      class_mem.FieldByName('SELECTED').Value := 1;
      class_mem.Post;

      if not (memClass.State in [dsInsert, dsEdit]) then
        memClass.Edit;
      memClassSTUDENT_COUNT.Value := memClassSTUDENT_COUNT.Value + 1;
      ;
      memClass.Post;
    end;
    qryData.Next;
  end;
  F_STATE := '';
  memClass.EnableControls;
  if pageControl.PageCount > 0 then
  begin
    if pageControl.ActivePageIndex = 0 then
      acSelectClass.Execute
    else
      pageControl.ActivePageIndex := 0;
  end;
end;

procedure TfrmReviewTrainingPlan.FreeClass;
var i: integer;
begin
  if F_ClassList.Count > 0 then
    for i := F_ClassList.Count - 1 downto 0 do
      if Assigned(F_ClassList.Objects[i]) then
      begin
        TDataSource(F_ClassList.Objects[i]).Dataset.Close;
        TDataSource(F_ClassList.Objects[i]).Dataset.Free;
        F_ClassList.Objects[i].Free;
      end;
  F_ClassList.Clear;
  if pageControl.PageCount > 0 then
    for i := pageControl.PageCount - 1 downto 0 do
      pageControl.Pages[i].Free;
end;

procedure TfrmReviewTrainingPlan.acSelectClassExecute(Sender: TObject);
var ds: TDatasource;
begin
  inherited;
  if F_STATE = 'InitClassList' then exit;
  if ((Assigned(gridDetail.DataSource)) and (gridDetail.DataSource.DataSet.State in [dsEdit, dsInsert]))
    then
    gridDetail.DataSource.DataSet.Post;
  ds := TDatasource(self.FindComponent('ds' + pageControl.ActivePage.Name));
  if Assigned(ds) then
  begin
    gridDetail.DataSource := ds;
    gridDetail.Repaint;
  end;
end;

procedure TfrmReviewTrainingPlan.dxSelectAllChange(Sender: TObject);
begin
  inherited;
  dxClass.Enabled := not dxSelectAll.Checked;
end;

procedure TfrmReviewTrainingPlan.OnSELECTEDChange(Sender: TField);
begin
  inherited;
  if F_STATE = 'InitClassList' then exit;
  if memClassCLASS_CODE.AsString <> Sender.DataSet.FieldByName('CLASS_CODE').AsString then
  begin
    if not memClass.Locate('CLASS_CODE', Sender.DataSet.FieldByName('CLASS_CODE').AsString, []) then
    begin
      ShowMessage('Error while locating data record ' + Sender.DataSet.FieldByName('CLASS_CODE').AsString);
      Exit;
    end;
  end;
  if not (memClass.State in [dsInsert, dsEdit]) then
    memClass.Edit;
  if (Sender as TIntegerField).Value = 0 then
    memClassSTUDENT_COUNT.Value := memClassSTUDENT_COUNT.Value - 1
  else
    memClassSTUDENT_COUNT.Value := memClassSTUDENT_COUNT.Value + 1;
  memClass.Post;

end;

procedure TfrmReviewTrainingPlan.acConfirmPlanExecute(Sender: TObject);
var i: integer;
  mem: TdxMemdata;
begin
  inherited;
  if not memClass.Active then
  begin
    acCreatePlan.Execute;
    if ShowMessageUnicode(81)=mrYes then
    begin
      pageMain.ActivePageIndex:=1;
      Exit;
    end;
  end;
  if ShowMessageUnicode(80) = mrYes then
  begin
    dmMain.RollbackTransaction;
    if not frmTrainingPlan.qryClass.IsEmpty then
    begin
      qryExecute.SQL.Text := 'DELETE FROM HR_TRAINING_CLASS WHERE PLAN_NO = :PLAN_NO';
      qryExecute.Prepare;
      qryExecute.ParamByName('PLAN_NO').Value := frmTrainingPlan.qryTrainingPlanPLAN_NO.Value;
      try
        qryExecute.ExecSQL;
      except
      end;
    end;

    if memClass.IsEmpty then Exit;
    if memClass.State in [dsInsert,dsEdit] then memClass.Post;
    memClass.First;
    while not memClass.Eof do
    begin
      qryExecute.SQL.Text := 'INSERT INTO HR_TRAINING_CLASS( ' +
        ' CLASS_NO,PLAN_NO,START_DATE,END_DATE,TEACHER,CLASS_CODE,CLASS_CONTENT,STUDENT_COUNT,IS_PLANNED ) VALUES ( ' +
        ':CLASS_NO,:PLAN_NO,:START_DATE,:END_DATE,:TEACHER,:CLASS_CODE,:CLASS_CONTENT,:STUDENT_COUNT,:IS_PLANNED)';
      qryExecute.Prepare;
      qryExecute.ParamByName('PLAN_NO').Value := frmTrainingPlan.qryTrainingPlanPLAN_NO.Value;
      qryExecute.ParamByName('CLASS_NO').Value := memClassCLASS_CODE.Value;
      qryExecute.ParamByName('START_DATE').Value := memClassSTART_DATE.Value;
      if not memClassEND_DATE.IsNull then
        qryExecute.ParamByName('END_DATE').Value := memClassEND_DATE.Value
      else
        qryExecute.ParamByName('END_DATE').Clear;
      qryExecute.ParamByName('TEACHER').Value := memClassTEACHER.Value;
      qryExecute.ParamByName('CLASS_CODE').Value := memClassCLASS_CODE.Value;
      qryExecute.ParamByName('CLASS_CONTENT').Value := memClassCLASS_CONTENT.Value;
      qryExecute.ParamByName('STUDENT_COUNT').Value := memClassSTUDENT_COUNT.Value;
      qryExecute.ParamByName('IS_PLANNED').Value := 1;
      try
        qryExecute.ExecSQL;
      except
      end;
      memClass.Next;
    end;

    for i := 0 to F_ClassList.Count - 1 do
    begin
      mem := TdxMemData(TDatasource(F_ClassList.Objects[i]).DataSet);
      if mem.State in [dsInsert,dsEdit] then
        mem.Post;
      if not mem.IsEmpty then
      begin
        qryExecute.SQL.Text := 'INSERT INTO HR_TRAINEE(CLASS_NO,EMPLOYEE_NO,PLAN_NO,FROM_DATE,TO_DATE) ' +
          ' VALUES (:CLASS_NO,:EMPLOYEE_NO,:PLAN_NO,:FROM_DATE,:TO_DATE)';
        qryExecute.Prepare;
        mem.First;
        while not mem.Eof do
        begin
          if mem.FieldByName('SELECTED').Value = 1 then
          begin
            qryExecute.ParamByName('PLAN_NO').Value := frmTrainingPlan.qryTrainingPlanPLAN_NO.Value;
            qryExecute.ParamByName('EMPLOYEE_NO').Value := mem.FieldByName('EMPLOYEE_NO').Value;
            qryExecute.ParamByName('CLASS_NO').Value := mem.FieldByName('CLASS_CODE').Value;
            qryExecute.ParamByName('FROM_DATE').Value := mem.FieldByName('START_DATE').Value;
            if not mem.FieldByName('END_DATE').IsNull then
              qryExecute.ParamByName('TO_DATE').Value := mem.FieldByName('END_DATE').Value
            else
              qryExecute.ParamByName('TO_DATE').Clear;
            try
              qryExecute.ExecSQL;
            except
            end;
          end;
          mem.Next;
        end
      end
    end;
    try
      qryExecute.SQL.Text:='execute procedure hr_training_class_fee_gen(:plan_no,null)';
      qryExecute.Prepare;
      qryExecute.ParamByName('PLAN_NO').Value := frmTrainingPlan.qryTrainingPlanPLAN_NO.Value;
      qryExecute.ExecSQL
    except
    end;
    try
      qryExecute.SQL.Text:='execute procedure HR_TRAINING_PERSON_FEE_GEN(:plan_no,null,null)';
      qryExecute.Prepare;
      qryExecute.ParamByName('PLAN_NO').Value := frmTrainingPlan.qryTrainingPlanPLAN_NO.Value;
      qryExecute.ExecSQL
    except
    end;
    dmMain.CommitTransaction;
    ModalResult := mrOk;
  end;
end;

procedure TfrmReviewTrainingPlan.qryExecuteError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  inherited;
  RaiseException := false;
end;

end.

