unit TrainingRegulationForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ElPgCtl,
  ImgList, dxLayoutControl, cxControls, dxExEdtr, DB, dxmdaset, dxCntner,
  dxTL, dxDBCtrl, dxDBTL, IBODataset, ActnList, dxDBTLCl, ElBtnCtl,
  ElPopBtn, dxEdLib, dxEditor, ElHTMLView, StdCtrls, ElCLabel, ElLabel,
  dxGrClEx, dxInspct, dxDBInsp, dxInspRw, dxDBInRw, dxDBELib;

type
  TfrmTrainingRegulation = class(TfrmBase)
    ImageList1: TImageList;
    pageMain: TElPageControl;
    tabPosition: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    treeData: TdxDBTreeList;
    dxLayoutControl1Item1: TdxLayoutItem;
    dsData: TDataSource;
    memData: TdxMemData;
    memDataPOSITION_NO: TWideStringField;
    memDataDEPT_NAME: TWideStringField;
    memDataTITLE_NAME: TWideStringField;
    memDataP_POSITION_NO: TWideStringField;
    memDataPOSITION_NAME: TWideStringField;
    treeDataDEPT_NAME: TdxDBTreeListColumn;
    treeDataTITLE_NAME: TdxDBTreeListColumn;
    treeDataPOSITION_NAME: TdxDBTreeListColumn;
    ActionList1: TActionList;
    qryClass: TIBOQuery;
    qryClassCOURSE_CODE: TWideStringField;
    qryClassCOURSE_NAME: TWideStringField;
    qryClassCLASS_CODE: TWideStringField;
    qryClassCLASS_NAME: TWideStringField;
    qryClassINSIDE_OUTSIDE: TSmallintField;
    qryData: TIBOQuery;
    qryDataPOSITION_NO: TWideStringField;
    qryDataP_POSITION_NO: TWideStringField;
    qryDataDEPT_NAME: TWideStringField;
    qryDataTITLE_NAME: TWideStringField;
    qryDataCLASS_CODE: TWideStringField;
    memDataCHECK_ALL: TIntegerField;
    acSaveData: TAction;
    qryExecute: TIBOQuery;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDept: TdxPopupEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxViewAll: TdxCheckEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    acReloadData: TAction;
    acCreateMemData: TAction;
    tabOrder: TElTabSheet;
    dxLayoutControl2: TdxLayoutControl;
    treeOrder: TdxDBTreeList;
    dxDBTreeListColumn1: TdxDBTreeListColumn;
    dxDBTreeListColumn2: TdxDBTreeListColumn;
    dxDBTreeListColumn3: TdxDBTreeListColumn;
    dxDept_1: TdxPopupEdit;
    dxViewAll_1: TdxCheckEdit;
    ElPopupButton4: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    treeDataCHECK_ALL: TdxDBTreeListCheckColumn;
    acCreateMemOrder: TAction;
    acReloadOrder: TAction;
    memOrder: TdxMemData;
    memOrderPOSITION_NO: TWideStringField;
    memOrderDEPT_NAME: TWideStringField;
    memOrderTITLE_NAME: TWideStringField;
    memOrderP_POSITION_NO: TWideStringField;
    memOrderPOSITION_NAME: TWideStringField;
    dsOrder: TDataSource;
    qryOrder: TIBOQuery;
    qryOrderPOSITION_NO: TWideStringField;
    qryOrderP_POSITION_NO: TWideStringField;
    qryOrderDEPT_NAME: TWideStringField;
    qryOrderTITLE_NAME: TWideStringField;
    qryOrderCLASS_CODE: TWideStringField;
    qryOrderTRAIN_ORDER: TIntegerField;
    dxlcMsgGroup_Root: TdxLayoutGroup;
    dxlcMsg: TdxLayoutControl;
    dxlcMsgGroup1: TdxLayoutGroup;
    qryClassDetail: TIBOQuery;
    qryClassDetailCOURSE_CODE: TWideStringField;
    qryClassDetailCOURSE_NAME: TWideStringField;
    qryClassDetailCLASS_CODE: TWideStringField;
    qryClassDetailCLASS_NAME: TWideStringField;
    qryClassDetailTEACHER: TWideStringField;
    qryClassDetailCLASS_PLACE: TWideStringField;
    qryClassDetailTIME_PERIOD: TIntegerField;
    qryClassDetailTIME_UNIT: TIntegerField;
    dxLayoutControl2Item1: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl2Item2: TdxLayoutItem;
    ElPopupButton6: TElPopupButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl2Item4: TdxLayoutItem;
    ElPopupButton7: TElPopupButton;
    acMoveFirst: TAction;
    acMovePrev: TAction;
    acMoveNext: TAction;
    acMoveLast: TAction;
    qryUpdateOrder: TIBOQuery;
    chkViewDetail: TdxCheckEdit;
    dxLayoutControl2Item5: TdxLayoutItem;
    qryClassDetailFILE_NAME: TWideStringField;
    qryClassDetailFILE_CONTENT: TBlobField;
    qryClassDetailTYPE_NAME: TWideStringField;
    dsClassDetail: TDataSource;
    insClassDetail: TdxDBInspector;
    dxlcMsgItem1: TdxLayoutItem;
    insClassDetailCOURSE_CODE: TdxInspectorDBRow;
    insClassDetailCOURSE_NAME: TdxInspectorDBRow;
    insClassDetailCLASS_CODE: TdxInspectorDBRow;
    insClassDetailCLASS_NAME: TdxInspectorDBRow;
    insClassDetailTEACHER: TdxInspectorDBRow;
    insClassDetailCLASS_PLACE: TdxInspectorDBRow;
    insClassDetailTYPE_NAME: TdxInspectorDBRow;
    insClassDetailRow13: TdxInspectorComplexRow;
    insClassDetailRow14: TdxInspectorComplexRow;
    insClassDetailRow15: TdxInspectorComplexRow;
    insClassDetailFILE_NAME: TdxInspectorDBButtonRow;
    qryClassDetailINSIDE_OUTSIDE: TSmallintField;
    insClassDetailINSIDE_OUTSIDE: TdxInspectorDBImageRow;
    ImageList2: TImageList;
    insClassDetailTIME_UNIT: TdxInspectorDBImageRow;
    dxlcMsgGroup2: TdxLayoutGroup;
    dxDBMemo1: TdxDBMemo;
    dxlcMsgItem2: TdxLayoutItem;
    insClassDetailTIME_PERIOD: TdxInspectorDBSpinRow;
    qryClassDetailCOURSE_CONTENT: TWideStringField;
    qryClassDetailPOSITION_NO: TWideStringField;
    qryOrderTIME_PERIOD: TIntegerField;
    qryOrderTIME_UNIT: TIntegerField;
    qryOrderDAY_COUNT: TIntegerField;
    qryUpdateTime: TIBOQuery;
    procedure FormCreate(Sender: TObject);
    procedure acSaveDataExecute(Sender: TObject);
    procedure acSaveDataUpdate(Sender: TObject);
    procedure FieldChange(Sender: TField);
    procedure acReloadDataExecute(Sender: TObject);
    procedure dxDeptInitPopup(Sender: TObject);
    procedure dxDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure acCreateMemDataExecute(Sender: TObject);
    procedure treeDataCHECK_ALLToggleClick(Sender: TObject;
      const Text: WideString; State: TdxCheckBoxState);
    procedure dxDept_1InitPopup(Sender: TObject);
    procedure dxDept_1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure acCreateMemOrderExecute(Sender: TObject);
    procedure pageMainChange(Sender: TObject);
    procedure acReloadOrderExecute(Sender: TObject);
    procedure CustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure CustomPopup(Sender: TObject);
    procedure CustomCloseUp(Sender: TObject; var Text: WideString; var Accept: Boolean);

    procedure CustomDrawCheckCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure acMovePrevUpdate(Sender: TObject);
    procedure chkViewDetailChange(Sender: TObject);
    procedure acMoveNextUpdate(Sender: TObject);
    procedure acMovePrevExecute(Sender: TObject);
    procedure acMoveNextExecute(Sender: TObject);
    procedure acMoveFirstExecute(Sender: TObject);
    procedure acMoveLastExecute(Sender: TObject);
    procedure insClassDetailFILE_NAMEButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qryClassDetailTIME_PERIODChange(Sender: TField);
    procedure qryClassDetailTIME_UNITChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure insClassDetailDrawValue(Sender: TdxInspectorRow;
      ACanvas: TCanvas; ARect: TRect; var AText: WideString; AFont: TFont;
      var AColor: TColor; var ADone: Boolean);
    procedure insClassDetailTIME_PERIODDrawValue(Sender: TdxInspectorRow;
      ACanvas: TCanvas; ARect: TRect; var AText: WideString; AFont: TFont;
      var AColor: TColor; var ADone: Boolean);
    procedure insClassDetailTIME_PERIODDrawCaption(Sender: TdxInspectorRow;
      ACanvas: TCanvas; ARect: TRect; var AText: WideString; AFont: TFont;
      var AColor: TColor; var ADone: Boolean);
    procedure insClassDetailTIME_UNITDrawCaption(Sender: TdxInspectorRow;
      ACanvas: TCanvas; ARect: TRect; var AText: WideString; AFont: TFont;
      var AColor: TColor; var ADone: Boolean);
    procedure insClassDetailTIME_UNITDrawValue(Sender: TdxInspectorRow;
      ACanvas: TCanvas; ARect: TRect; var AText: WideString; AFont: TFont;
      var AColor: TColor; var ADone: Boolean);
    procedure CustomChange(Sender: TField);

  private
    { Private declarations }
    F_MAX_CLASS: integer;
    F_State: string;
    F_IsChange: boolean;
    F_OrderChange: boolean;
    F_DEPT_NO, F_DEPT_NO_CONFIRM, F_DEPT_NO_1, F_DEPT_NO_CONFIRM_1: WideString;
    F_DEPT_LEFT_INDEX, F_DEPT_RIGHT_INDEX,
      F_DEPT_LEFT_INDEX_CONFIRM, F_DEPT_RIGHT_INDEX_CONFIRM, F_VIEW_ALL_CONFIRM: integer;
    F_DEPT_LEFT_INDEX_1, F_DEPT_RIGHT_INDEX_1,
      F_DEPT_LEFT_INDEX_CONFIRM_1, F_DEPT_RIGHT_INDEX_CONFIRM_1, F_VIEW_ALL_CONFIRM_1: integer;
  public
    { Public declarations }
  end;

var
  frmTrainingRegulation: TfrmTrainingRegulation;

implementation

uses MainDM, MainUnit, PopupMainForm, SSP_Library, Math;

{$R *.dfm}

procedure TfrmTrainingRegulation.FormCreate(Sender: TObject);
begin
  inherited;
  acCreateMemData.Execute;
  acCreateMemOrder.Execute;
  pageMain.ActivePageIndex := 0;
end;

procedure TfrmTrainingRegulation.FieldChange(Sender: TField);
var i: integer;
begin
  inherited;
  F_IsChange := true;
  if F_State = 'Update' then exit;
  {  F_State:='Update';
    for i:=memDataCHECK_ALL.Index+1 to memData.FieldCount-1 do
      memData.Fields[i].Value:=memDataCHECK_ALL.Value;
    F_State:='';
  }
end;

procedure TfrmTrainingRegulation.acSaveDataExecute(Sender: TObject);
var i: integer;
begin
  inherited;
  if memData.IsEmpty then exit;
  Screen.Cursor := crSQLWait;
  memData.DisableControls;
  dmMain.RollbackTransaction;
  frmMain.SetStatusBarPrgDisplay(0, memData.RecordCount);
  qryExecute.SQL.Text :=
    'delete from hr_tr_position_reg where (:VIEW_ALL=-1) or position_no in ' +
    '( select position_no from hr_position left join hr_department on hr_position.dept_no=hr_department.dept_no ' +
    ' where ((:VIEW_ALL=0) and (HR_POSITION.DEPT_NO=:DEPT_NO)) or ' +
    '       ((:VIEW_ALL=1) and (DEPT_LEFT_INDEX>=:LEFT_INDEX) and (DEPT_RIGHT_INDEX<=:RIGHT_INDEX)) ' +
    ')';
  qryExecute.Prepare;
  qryExecute.ParamByName('DEPT_NO').Value := F_DEPT_NO_CONFIRM;
  qryExecute.ParamByName('VIEW_ALL').Value := F_VIEW_ALL_CONFIRM;
  if F_DEPT_NO_CONFIRM = '' then
    qryExecute.ParamByName('VIEW_ALL').Value := -1;
  qryExecute.ParamByName('LEFT_INDEX').Value := F_DEPT_LEFT_INDEX_CONFIRM;
  qryExecute.ParamByName('RIGHT_INDEX').Value := F_DEPT_RIGHT_INDEX_CONFIRM;
  qryExecute.ExecSQL;
  qryExecute.SQL.Text := 'insert into hr_tr_position_reg(position_no,class_code) values (:position_no,:class_code)';
  qryExecute.Prepare;
  memData.First;
  while not memData.Eof do
  begin
    for i := memDataCHECK_ALL.Index + 1 to memData.FieldCount - 1 do
    begin
      if memData.Fields[i].Value = 1 then
      begin
        qryExecute.ParamByName('POSITION_NO').Value := memDataPOSITION_NO.Value;
        qryExecute.ParamByName('CLASS_CODE').Value := memData.Fields[i].FieldName;
        qryExecute.ExecSQL;
      end;
    end;
    frmMain.BarPrgStepIt;
    memData.Next;
  end;
  // update thu tu dao tao
  qryExecute.SQL.Text :=
    'execute procedure hr_tr_update_order';
  qryExecute.Prepare;
  qryExecute.ExecSQL;
  //====================================
  dmMain.CommitTransaction;
  frmMain.SetStatusBarMsg('');
  memData.EnableControls;
  F_IsChange := false;
  Screen.Cursor := crDefault;
end;

procedure TfrmTrainingRegulation.acSaveDataUpdate(Sender: TObject);
begin
  inherited;
  acSaveData.Enabled := F_IsChange;
end;

procedure TfrmTrainingRegulation.acReloadDataExecute(Sender: TObject);
var POSITION_NO, DEPT_NAME: WideString;
begin
  inherited;
  memData.DisableControls;
  F_State := 'Update';
  if qryData.Active then qryData.Close;
  if memData.Active then memData.Close;
  qryData.ParamByName('DEPT_NO').Value := F_DEPT_NO;
  if dxViewAll.Checked then
  begin
    qryData.ParamByName('VIEW_ALL').Value := 1;
    F_VIEW_ALL_CONFIRM := 1;
  end
  else
  begin
    qryData.ParamByName('VIEW_ALL').Value := 0;
    F_VIEW_ALL_CONFIRM := 0;
  end;
  if F_DEPT_NO = '' then qryData.ParamByName('VIEW_ALL').Value := -1;
  qryData.ParamByName('LEFT_INDEX').Value := F_DEPT_LEFT_INDEX;
  qryData.ParamByName('RIGHT_INDEX').Value := F_DEPT_RIGHT_INDEX;
  qryData.Open;
  if not qryData.IsEmpty then
  begin
    memData.Open;
    qryData.First;
    frmMain.SetStatusBarPrgDisplay(0,qryData.RecordCount);
    while not qryData.Eof do
    begin
      if qryDataPOSITION_NO.Value <> POSITION_NO then
      begin
        if memData.State in [dsInsert, dsEdit] then
          memData.Post;
        POSITION_NO := qryDataPOSITION_NO.Value;
        memData.Insert;
        memDataPOSITION_NO.Value := qryDataPOSITION_NO.Value;
        memDataP_POSITION_NO.Value := qryDataP_POSITION_NO.Value;
        {     if qryDataDEPT_NAME.Value<>DEPT_NAME then
              begin
                DEPT_NAME:=qryDataDEPT_NAME.Value;
                memDataPOSITION_NAME.Value:=qryDataDEPT_NAME.Value+'-'+qryDataTITLE_NAME.Value;
              end
              else
              begin
                memDataPOSITION_NAME.Value:=qryDataTITLE_NAME.Value;
              end;
         }
        memDataPOSITION_NAME.Value := qryDataDEPT_NAME.Value + '-' + qryDataTITLE_NAME.Value;
        memDataDEPT_NAME.Value := qryDataDEPT_NAME.Value;
        memDataTITLE_NAME.Value := qryDataTITLE_NAME.Value;
      end;
      if not qryDataCLASS_CODE.IsNull then
        memData.FieldByName(qryDataCLASS_CODE.AsString).Value := 1;
      qryData.Next;
      frmMain.BarPrgStepIt;
    end;
    if memData.State in [dsInsert, dsEdit] then
      memData.Post;
  end;
  qryData.Close;
  memData.EnableControls;
  treeData.FullExpand;
  F_State := '';
  F_IsChange := false;
  F_DEPT_NO_CONFIRM := F_DEPT_NO;
  F_DEPT_LEFT_INDEX_CONFIRM := F_DEPT_LEFT_INDEX;
  F_DEPT_RIGHT_INDEX_CONFIRM := F_DEPT_RIGHT_INDEX;
  frmMain.SetStatusBarMsg('');
end;

procedure TfrmTrainingRegulation.dxDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
end;

procedure TfrmTrainingRegulation.dxDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryDeptListDEPT_NAME.Value;
    F_DEPT_NO := frmPopupMain.qryDeptListDEPT_NO.Value;
    F_DEPT_LEFT_INDEX := frmPopupMain.qryDeptListDEPT_LEFT_INDEX.Value;
    F_DEPT_RIGHT_INDEX := frmPopupMain.qryDeptListDEPT_RIGHT_INDEX.Value;
  end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmTrainingRegulation.acCreateMemDataExecute(Sender: TObject);
var COURSE_CODE: WideString;
  band: TdxTreeListBand;
  column: TdxDBTreeListColumn;
  f: TIntegerField;
begin
  inherited;
  memData.DisableControls;
  qryClass.Open;
  if not qryClass.IsEmpty then
  begin
    frmMain.SetStatusBarPrgDisplay(0,qryClass.RecordCount);
    qryClass.First;
    while not qryClass.Eof do
    begin
      if qryClassCOURSE_CODE.Value <> COURSE_CODE then
      begin
        COURSE_CODE := qryClassCOURSE_CODE.Value;
        band := treeData.Bands.Add;
        band.Caption := qryClassCOURSE_NAME.Value;
      end;
      f := TIntegerField.Create(memData);
      f.Name := memData.Name + qryClassCLASS_CODE.AsString;
      f.FieldName := qryClassCLASS_CODE.AsString;
      f.FieldKind := fkData;
      f.DataSet := memData;
      f.SetFieldType(ftInteger);
      f.OnChange := FieldChange;

      column := treeData.CreateColumn(TdxDBTreeListCheckColumn);
      column.Name := treeData.Name + f.FieldName;
      column.FieldName := f.FieldName;
      column.Width := 80;
      column.HeaderAlignment := taCenter;
      column.DisableCustomizing := true;
      column.Caption := qryClassCLASS_CODE.Value;
      column.BandIndex := band.Index;
      TdxDBTreeListCheckColumn(column).ValueChecked := '1';
      TdxDBTreeListCheckColumn(column).ValueUnchecked := '0';
      TdxDBTreeListCheckColumn(column).ShowNullFieldStyle := nsUnchecked;
      TdxDBTreeListCheckColumn(column).OnCustomDrawCell := CustomDrawCheckCell;
      qryClass.Next;
      frmMain.BarPrgStepIt;
    end;
  end;
  qryClass.Close;
  memData.EnableControls;
  frmMain.SetStatusBarMsg('');
end;

procedure TfrmTrainingRegulation.treeDataCHECK_ALLToggleClick(
  Sender: TObject; const Text: WideString; State: TdxCheckBoxState);
var i, check: integer;
begin
  inherited;
  if State = cbsUnchecked then check := 0 else
    if State = cbsChecked then check := 1;
  for i := memDataCHECK_ALL.Index to memData.FieldCount - 1 do
    memData.Fields[i].Value := check;
end;


procedure TfrmTrainingRegulation.dxDept_1InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
end;

procedure TfrmTrainingRegulation.dxDept_1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryDeptListDEPT_NAME.Value;
    F_DEPT_NO_1 := frmPopupMain.qryDeptListDEPT_NO.Value;
    F_DEPT_LEFT_INDEX_1 := frmPopupMain.qryDeptListDEPT_LEFT_INDEX.Value;
    F_DEPT_RIGHT_INDEX_1 := frmPopupMain.qryDeptListDEPT_RIGHT_INDEX.Value;
  end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmTrainingRegulation.acCreateMemOrderExecute(Sender: TObject);
var
  band:TdxTreeListBand;
  column: TdxDBTreeListColumn;
  f: TStringField;
  inf:TIntegerField;
  i: integer;
begin
  inherited;
  memOrder.DisableControls;
  qryClass.Open;
  if not qryClass.IsEmpty then
  begin
    F_MAX_CLASS := qryClass.RecordCount;
    frmMain.SetStatusBarPrgDisplay(0,F_MAX_CLASS);
    for i := 1 to F_MAX_CLASS do
    begin
      band:=treeOrder.Bands.Add;
      band.Index:=i;
      band.Width:=80;
      band.Caption:=IntToStr(i);

      f := TStringField.Create(memOrder);
      f.Name := memOrder.Name + IntToStr(i);
      f.FieldName := IntToStr(i);
      f.FieldKind := fkData;
      f.DataSet := memOrder;
      f.SetFieldType(ftString);

      column := treeOrder.CreateColumn(TdxDBTreeListPopupColumn);
      column.Name := treeOrder.Name + f.FieldName;
      column.FieldName := f.FieldName;
      column.Width := 100;
      column.HeaderAlignment := taCenter;
      column.DisableCustomizing := true;
      column.Caption:=IntToStr(i);
      //     column.DisableEditor:=true;
      TdxDBTreeListPopupColumn(column).HideEditCursor := true;
      column.DisableCustomizing := true;
      column.DisableDragging := true;
      column.DisableGrouping := true;
      column.Caption := UTF8Decode('Mã lớp');
      column.BandIndex := band.Index;
      column.RowIndex:=0;
      column.Alignment := taCenter;
      column.OnCustomDrawCell := CustomDrawCell;
      TdxDBTreeListPopupColumn(column).OnInitPopup := CustomPopup;
      TdxDBTreeListPopupColumn(column).OnCloseUp := CustomCloseUp;

      inf := TIntegerField.Create(memOrder);
      inf.Name := memOrder.Name+'TIME_PERIOD_'+ IntToStr(i);
      inf.FieldName := 'TIME_PERIOD_'+IntToStr(i);
      inf.FieldKind := fkData;
      inf.DataSet := memOrder;
      inf.SetFieldType(ftInteger);
      inf.OnChange:=CustomChange;

      column := treeOrder.CreateColumn(TdxDBTreeListSpinColumn);
      column.Name := treeOrder.Name + inf.FieldName;
      column.FieldName := inf.FieldName;
      column.Width := 50;
      column.HeaderAlignment := taCenter;
      column.DisableCustomizing := true;
      column.DisableCustomizing := true;
      column.DisableDragging := true;
      column.DisableGrouping := true;
      column.Caption := UTF8Decode('Giới hạn');
      column.BandIndex := band.Index;
      column.RowIndex:=1;
      column.Alignment := taCenter;
      column.OnCustomDrawCell := CustomDrawCell;

      inf := TIntegerField.Create(memOrder);
      inf.Name := memOrder.Name+'TIME_UNIT_'+ IntToStr(i);
      inf.FieldName := 'TIME_UNIT_'+IntToStr(i);
      inf.FieldKind := fkData;
      inf.DataSet := memOrder;
      inf.SetFieldType(ftInteger);
      inf.OnChange:=CustomChange;

      column := treeOrder.CreateColumn(TdxDBTreeListImageColumn);
      column.Name := treeOrder.Name + inf.FieldName;
      column.FieldName := inf.FieldName;
      column.Width := 50;
      column.HeaderAlignment := taCenter;
      column.DisableCustomizing := true;
      column.DisableCustomizing := true;
      column.DisableDragging := true;
      column.DisableGrouping := true;
      column.Caption := UTF8Decode('Đơn vị');
      column.BandIndex := band.Index;
      column.RowIndex:=1;
      column.Alignment := taCenter;
      column.OnCustomDrawCell := CustomDrawCell;
      TdxDBTreeListImageColumn(column).Descriptions.Text:=insClassDetailTIME_UNIT.Descriptions.Text;
      TdxDBTreeListImageColumn(column).Values.Text:=insClassDetailTIME_UNIT.Values.Text;
      TdxDBTreeListImageColumn(column).ShowDescription:=true;

      frmMain.BarPrgStepIt;
    end
  end;
  qryClass.Close;
  memOrder.EnableControls;
  frmMain.SetStatusBarMsg('');
end;


procedure TfrmTrainingRegulation.pageMainChange(Sender: TObject);
begin
  inherited;
  if pageMain.ActivePageIndex = 0 then
    acReloadData.Execute
  else
    acReloadOrder.Execute
end;

procedure TfrmTrainingRegulation.acReloadOrderExecute(Sender: TObject);
var POSITION_NO, DEPT_NAME: WideString;
  i: integer;
begin
  inherited;
  F_State:='Reload Order';
  memOrder.DisableControls;
  if qryOrder.Active then qryOrder.Close;
  if memOrder.Active then memOrder.Close;
  qryOrder.ParamByName('DEPT_NO').Value := F_DEPT_NO_1;
  if dxViewAll_1.Checked then
  begin
    qryOrder.ParamByName('VIEW_ALL').Value := 1;
    F_VIEW_ALL_CONFIRM_1 := 1;
  end
  else
  begin
    qryOrder.ParamByName('VIEW_ALL').Value := 0;
    F_VIEW_ALL_CONFIRM_1 := 0;
  end;
  if F_DEPT_NO_1 = '' then qryOrder.ParamByName('VIEW_ALL').Value := -1;
  qryOrder.ParamByName('LEFT_INDEX').Value := F_DEPT_LEFT_INDEX_1;
  qryOrder.ParamByName('RIGHT_INDEX').Value := F_DEPT_RIGHT_INDEX_1;
  qryOrder.Open;
  if not qryOrder.IsEmpty then
  begin
    memOrder.Open;
    qryOrder.First;
    frmMain.SetStatusBarPrgDisplay(0,qryOrder.RecordCount);
    while not qryOrder.Eof do
    begin
      if qryOrderPOSITION_NO.Value <> POSITION_NO then
      begin
        if memOrder.State in [dsInsert, dsEdit] then
          memOrder.Post;
        POSITION_NO := qryOrderPOSITION_NO.Value;
        memOrder.Insert;
        memOrderPOSITION_NO.Value := qryOrderPOSITION_NO.Value;
        memOrderP_POSITION_NO.Value := qryOrderP_POSITION_NO.Value;
        memOrderPOSITION_NAME.Value := qryOrderDEPT_NAME.Value + '-' + qryOrderTITLE_NAME.Value;
        memOrderDEPT_NAME.Value := qryOrderDEPT_NAME.Value;
        memOrderTITLE_NAME.Value := qryOrderTITLE_NAME.Value;
      end;
      if not (qryOrderCLASS_CODE.IsNull or qryOrderTRAIN_ORDER.IsNull) then
      begin
        i := Max(qryOrderTRAIN_ORDER.Value, 1);
        if not memOrder.FieldByName(IntToStr(i)).IsNull then //test
        begin
          ShowMessage('Error : duplicate order between ' + memOrder.FieldByName(IntToStr(i)).AsString + ' and ' + qryOrderCLASS_CODE.AsString + ' (OrderNO: ' + IntToStr(qryOrderTRAIN_ORDER.Value) + ')') //test
        end
        else
        begin
          memOrder.FieldByName(IntToStr(i)).Value := qryOrderCLASS_CODE.Value; //test
          memOrder.FieldByName('TIME_PERIOD_'+IntToStr(i)).Value := qryOrderTIME_PERIOD.Value;
          memOrder.FieldByName('TIME_UNIT_'+IntToStr(i)).Value := qryOrderTIME_UNIT.Value;
        end;
      end;
      qryOrder.Next;
      frmMain.BarPrgStepIt;
    end;
    if memOrder.State in [dsInsert, dsEdit] then
      memOrder.Post;
  end;
  qryOrder.Close;
  memOrder.EnableControls;
  treeOrder.FullExpand;
  F_OrderChange := false;
  F_State:='';
  frmMain.SetStatusBarMsg('');
end;

procedure TfrmTrainingRegulation.CustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if AText <> '' then
    AColor := clYellow;
  if AFocused then
  begin
    AFont.Style := AFont.Style + [fsBold]
  end
  else
  begin
    AFont.Style := AFont.Style - [fsBold]
  end;
  if (AColumn is TdxDBTreeListPopupColumn) then
  begin
    AFont.Style := AFont.Style + [fsBold];
    AFont.Color:=clGreen;
  end;
end;

procedure TfrmTrainingRegulation.CustomCloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if qryClassDetail.State in [dsEdit] then
     qryClassDetail.Post;
end;
procedure TfrmTrainingRegulation.CustomPopup(
  Sender: TObject);
begin
  inherited;
  if memOrder.FieldByName(treeOrder.FocusedField.FieldName).AsString='' then
  begin
    Abort;
    Exit;
  end;
  if qryClassDetail.Active then qryClassDetail.Close;
  qryClassDetail.ParamByName('CLASS_CODE').Value :=
    memOrder.FieldByName(treeOrder.FocusedField.FieldName).Value;
  qryClassDetail.ParamByName('POSITION_NO').Value :=memOrderPOSITION_NO.Value;
  qryClassDetail.Open;
 InitPopupControl('dxlcMsg', Self, sender,3, treeOrder);
end;                              

procedure TfrmTrainingRegulation.CustomDrawCheckCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ANode.Values[AColumn.Index] = 1 then
    AColor := clYellow;
end;

procedure TfrmTrainingRegulation.chkViewDetailChange(Sender: TObject);
begin
  inherited;
  if chkViewDetail.Checked then
    treeOrder.OptionsBehavior := treeOrder.OptionsBehavior + [etoEditing]
  else
    treeOrder.OptionsBehavior := treeOrder.OptionsBehavior - [etoEditing]
end;

procedure TfrmTrainingRegulation.acMovePrevUpdate(Sender: TObject);
var temp: integer;
begin
  inherited;
  { dieu kien:
      + current cell khong phai nam o vi tri thu nhat
      + current cell co du lieu
  }
   if Pos('TIME_PERIOD_',treeOrder.FocusedField.FieldName)=1 then
      temp:=StrToInt(Copy(treeOrder.FocusedField.FieldName,13,Length(treeOrder.FocusedField.FieldName)-12))
   else
   if Pos('TIME_UNIT_',treeOrder.FocusedField.FieldName)=1 then
      temp:=StrToInt(Copy(treeOrder.FocusedField.FieldName,11,Length(treeOrder.FocusedField.FieldName)-10))
   else
  temp := StrToIntDef(treeOrder.FocusedField.FieldName, 0);
  acMovePrev.Enabled := (temp > 1) and
    not (memOrder.FieldByName(treeOrder.FocusedField.FieldName).IsNull);
  acMoveFirst.Enabled := acMovePrev.Enabled;
end;

procedure TfrmTrainingRegulation.acMoveNextUpdate(Sender: TObject);
var temp: integer;
begin
  inherited;
  { dieu kien:
      + current cell khong phai nam o vi tri cuoi cung
      + cell ke tiep co du lieu
  }
   if Pos('TIME_PERIOD_',treeOrder.FocusedField.FieldName)=1 then
      temp:=StrToInt(Copy(treeOrder.FocusedField.FieldName,13,Length(treeOrder.FocusedField.FieldName)-12))
   else
   if Pos('TIME_UNIT_',treeOrder.FocusedField.FieldName)=1 then
      temp:=StrToInt(Copy(treeOrder.FocusedField.FieldName,11,Length(treeOrder.FocusedField.FieldName)-10))
   else
    temp := StrToIntDef(treeOrder.FocusedField.FieldName, 0);
  acMoveNext.Enabled := (temp > 0) and (temp < F_MAX_CLASS) and
    (not (memOrder.FieldByName(IntToStr(temp + 1)).IsNull));
  acMoveLast.Enabled := acMoveNext.Enabled;
end;

procedure TfrmTrainingRegulation.acMovePrevExecute(Sender: TObject);
var field_1, field_2: string;
  temp: Variant;
begin
  inherited;
  F_State:='Change Order';
  dmMain.RollbackTransaction;
  try
    if Pos('TIME_PERIOD_',treeOrder.FocusedField.FieldName)=1 then
      field_1:=Copy(treeOrder.FocusedField.FieldName,13,Length(treeOrder.FocusedField.FieldName)-12)
   else
   if Pos('TIME_UNIT_',treeOrder.FocusedField.FieldName)=1 then
     field_1:=Copy(treeOrder.FocusedField.FieldName,11,Length(treeOrder.FocusedField.FieldName)-10)
   else
      field_1 := treeOrder.FocusedField.FieldName;
    field_2 := IntToStr(StrToInt(field_1) - 1);
    qryUpdateOrder.ParamByName('POSITION_NO').Value := memOrderPOSITION_NO.Value;
    qryUpdateOrder.ParamByName('CLASS_CODE').Value := memOrder.FieldByName(field_1).Value;
    qryUpdateOrder.ParamByName('TRAIN_ORDER').Value := field_2;
    qryUpdateOrder.ExecSQL;
    qryUpdateOrder.ParamByName('CLASS_CODE').Value := memOrder.FieldByName(field_2).Value;
    qryUpdateOrder.ParamByName('TRAIN_ORDER').Value := field_1;
    qryUpdateOrder.ExecSQL;

    if not (memOrder.State in [dsEdit]) then memOrder.Edit;
    temp := memOrder.FieldByName(field_1).Value;
    memOrder.FieldByName(field_1).Value := memOrder.FieldByName(field_2).Value;
    memOrder.FieldByName(field_2).Value := temp;

    temp := memOrder.FieldByName('TIME_PERIOD_'+field_1).Value;
    memOrder.FieldByName('TIME_PERIOD_'+field_1).Value := memOrder.FieldByName('TIME_PERIOD_'+field_2).Value;
    memOrder.FieldByName('TIME_PERIOD_'+field_2).Value := temp;

    temp := memOrder.FieldByName('TIME_UNIT_'+field_1).Value;
    memOrder.FieldByName('TIME_UNIT_'+field_1).Value := memOrder.FieldByName('TIME_UNIT_'+field_2).Value;
    memOrder.FieldByName('TIME_UNIT_'+field_2).Value := temp;

    memOrder.Post;
    memOrder.FieldByName(field_2).FocusControl;
    dmMain.CommitTransaction;
  except
    if memOrder.State in [dsEdit] then memOrder.Cancel;
    dmMain.RollbackTransaction;
  end;
  F_State:='';
end;

procedure TfrmTrainingRegulation.acMoveNextExecute(Sender: TObject);
var field_1, field_2: string;
  temp: Variant;
begin
  inherited;
  F_State:='Change Order';
  dmMain.RollbackTransaction;
  try
     if Pos('TIME_PERIOD_',treeOrder.FocusedField.FieldName)=1 then
      field_1:=Copy(treeOrder.FocusedField.FieldName,13,Length(treeOrder.FocusedField.FieldName)-12)
   else
   if Pos('TIME_UNIT_',treeOrder.FocusedField.FieldName)=1 then
     field_1:=Copy(treeOrder.FocusedField.FieldName,11,Length(treeOrder.FocusedField.FieldName)-10)
   else
      field_1 := treeOrder.FocusedField.FieldName;
    field_2 := IntToStr(StrToInt(field_1) + 1);
    qryUpdateOrder.ParamByName('POSITION_NO').Value := memOrderPOSITION_NO.Value;
    qryUpdateOrder.ParamByName('CLASS_CODE').Value := memOrder.FieldByName(field_1).Value;
    qryUpdateOrder.ParamByName('TRAIN_ORDER').Value := field_2;
    qryUpdateOrder.ExecSQL;
    qryUpdateOrder.ParamByName('CLASS_CODE').Value := memOrder.FieldByName(field_2).Value;
    qryUpdateOrder.ParamByName('TRAIN_ORDER').Value := field_1;
    qryUpdateOrder.ExecSQL;

    if not (memOrder.State in [dsEdit]) then memOrder.Edit;
    temp := memOrder.FieldByName(field_1).Value;
    memOrder.FieldByName(field_1).Value := memOrder.FieldByName(field_2).Value;
    memOrder.FieldByName(field_2).Value := temp;
     temp := memOrder.FieldByName('TIME_PERIOD_'+field_1).Value;
    memOrder.FieldByName('TIME_PERIOD_'+field_1).Value := memOrder.FieldByName('TIME_PERIOD_'+field_2).Value;
    memOrder.FieldByName('TIME_PERIOD_'+field_2).Value := temp;

    temp := memOrder.FieldByName('TIME_UNIT_'+field_1).Value;
    memOrder.FieldByName('TIME_UNIT_'+field_1).Value := memOrder.FieldByName('TIME_UNIT_'+field_2).Value;
    memOrder.FieldByName('TIME_UNIT_'+field_2).Value := temp;
    memOrder.Post;
    memOrder.FieldByName(field_2).FocusControl;
    dmMain.CommitTransaction;
  except
    if memOrder.State in [dsEdit] then memOrder.Cancel;
    dmMain.RollbackTransaction;
  end;
  F_State:='';
end;


procedure TfrmTrainingRegulation.acMoveFirstExecute(Sender: TObject);
var field_cur, field_prev: string;
  temp: Variant;
  class_code,time_period,time_unit: Variant;
begin
  inherited;
  F_State:='Change Order';
  dmMain.RollbackTransaction;
  try
     if Pos('TIME_PERIOD_',treeOrder.FocusedField.FieldName)=1 then
      field_cur:=Copy(treeOrder.FocusedField.FieldName,13,Length(treeOrder.FocusedField.FieldName)-12)
   else
   if Pos('TIME_UNIT_',treeOrder.FocusedField.FieldName)=1 then
     field_cur:=Copy(treeOrder.FocusedField.FieldName,11,Length(treeOrder.FocusedField.FieldName)-10)
   else
    field_cur := treeOrder.FocusedField.FieldName;
    class_code := memOrder.FieldByName(field_cur).Value;
    time_period:= memOrder.FieldByName('TIME_PERIOD_'+field_cur).Value;
    time_unit:= memOrder.FieldByName('TIME_UNIT_'+field_cur).Value;
    repeat
      field_prev := IntToStr(StrToInt(field_cur) - 1);
      qryUpdateOrder.ParamByName('POSITION_NO').Value := memOrderPOSITION_NO.Value;
      qryUpdateOrder.ParamByName('CLASS_CODE').Value := memOrder.FieldByName(field_prev).Value;
      qryUpdateOrder.ParamByName('TRAIN_ORDER').Value := field_cur;
      qryUpdateOrder.ExecSQL;
      if not (memOrder.State in [dsEdit]) then memOrder.Edit;

      memOrder.FieldByName(field_cur).Value := memOrder.FieldByName(field_prev).Value;
      memOrder.FieldByName('TIME_UNIT_'+field_cur).Value := memOrder.FieldByName('TIME_UNIT_'+field_prev).Value;
      memOrder.FieldByName('TIME_PERIOD_'+field_cur).Value := memOrder.FieldByName('TIME_PERIOD_'+field_prev).Value;
      field_cur := field_prev;
    until field_cur = '1';
    qryUpdateOrder.ParamByName('CLASS_CODE').Value := class_code;
    qryUpdateOrder.ParamByName('TRAIN_ORDER').Value := 1;
    qryUpdateOrder.ExecSQL;
    memOrder.FieldByName(field_cur).Value := class_code;
    memOrder.FieldByName('TIME_PERIOD_'+field_cur).Value := time_period;
    memOrder.FieldByName('TIME_UNIT_'+field_cur).Value := time_unit;
    memOrder.Post;
    memOrder.FieldByName(field_cur).FocusControl;
    dmMain.CommitTransaction;
  except
    if memOrder.State in [dsEdit] then memOrder.Cancel;
    dmMain.RollbackTransaction;
  end;
  F_State:='';
end;

procedure TfrmTrainingRegulation.acMoveLastExecute(Sender: TObject);
var field_cur, field_next: string;
  temp: Variant;
    class_code,time_period,time_unit: Variant;
begin
  inherited;
  F_State:='Change Order';
  dmMain.RollbackTransaction;
  try
    if Pos('TIME_PERIOD_',treeOrder.FocusedField.FieldName)=1 then
      field_cur:=Copy(treeOrder.FocusedField.FieldName,13,Length(treeOrder.FocusedField.FieldName)-12)
   else
   if Pos('TIME_UNIT_',treeOrder.FocusedField.FieldName)=1 then
     field_cur:=Copy(treeOrder.FocusedField.FieldName,11,Length(treeOrder.FocusedField.FieldName)-10)
   else
    field_cur := treeOrder.FocusedField.FieldName;
     class_code := memOrder.FieldByName(field_cur).Value;
    time_period:= memOrder.FieldByName('TIME_PERIOD_'+field_cur).Value;
    time_unit:= memOrder.FieldByName('TIME_UNIT_'+field_cur).Value;
    field_next := IntToStr(StrToInt(field_cur) + 1);
    while not memOrder.FieldByName(field_next).IsNull do
    begin
      qryUpdateOrder.ParamByName('POSITION_NO').Value := memOrderPOSITION_NO.Value;
      qryUpdateOrder.ParamByName('CLASS_CODE').Value := memOrder.FieldByName(field_next).Value;
      qryUpdateOrder.ParamByName('TRAIN_ORDER').Value := field_cur;
      qryUpdateOrder.ExecSQL;
      if not (memOrder.State in [dsEdit]) then memOrder.Edit;
      memOrder.FieldByName(field_cur).Value := memOrder.FieldByName(field_next).Value;
      memOrder.FieldByName('TIME_UNIT_'+field_cur).Value := memOrder.FieldByName('TIME_UNIT_'+field_next).Value;
      memOrder.FieldByName('TIME_PERIOD_'+field_cur).Value := memOrder.FieldByName('TIME_PERIOD_'+field_next).Value;

      field_cur := field_next;
      if field_cur=IntToStr(F_MAX_CLASS) then Break
      else
        field_next := IntToStr(StrToInt(field_cur) + 1);
    end;
    qryUpdateOrder.ParamByName('CLASS_CODE').Value := class_code;
    qryUpdateOrder.ParamByName('TRAIN_ORDER').Value := field_cur;
    qryUpdateOrder.ExecSQL;
    memOrder.FieldByName(field_cur).Value := class_code;
    memOrder.FieldByName('TIME_PERIOD_'+field_cur).Value := time_period;
    memOrder.FieldByName('TIME_UNIT_'+field_cur).Value := time_unit;

    memOrder.Post;
    memOrder.FieldByName(field_cur).FocusControl;
    dmMain.CommitTransaction;
  except
    if memOrder.State in [dsEdit] then memOrder.Cancel;
    dmMain.RollbackTransaction;
  end;
  F_State:='';

end;

procedure TfrmTrainingRegulation.insClassDetailFILE_NAMEButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  dmMain.DatasetLoadFile(sender,AbsoluteIndex);
end;

procedure TfrmTrainingRegulation.qryClassDetailTIME_PERIODChange(
  Sender: TField);
begin
  inherited;
  if qryClassDetail.State in [dsEdit] then
    qryClassDetail.Post;
end;

procedure TfrmTrainingRegulation.qryClassDetailTIME_UNITChange(
  Sender: TField);
begin
  inherited;
  if qryClassDetail.State in [dsEdit] then
    qryClassDetail.Post;

end;

procedure TfrmTrainingRegulation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryClassDetail.Close;
end;

procedure TfrmTrainingRegulation.insClassDetailDrawValue(
  Sender: TdxInspectorRow; ACanvas: TCanvas; ARect: TRect;
  var AText: WideString; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  inherited;
  AFont.Color:=clBlue;
  AColor:=sysUIConfig.Read_Only_Color;
end;

procedure TfrmTrainingRegulation.insClassDetailTIME_PERIODDrawValue(
  Sender: TdxInspectorRow; ACanvas: TCanvas; ARect: TRect;
  var AText: WideString; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  inherited;
  AColor:=clWhite;
  AFont.Style:=AFont.Style+[fsBold];
end;

procedure TfrmTrainingRegulation.insClassDetailTIME_PERIODDrawCaption(
  Sender: TdxInspectorRow; ACanvas: TCanvas; ARect: TRect;
  var AText: WideString; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  inherited;
  AColor:=clWhite;
  AFont.Style:=AFont.Style+[fsBold];
end;

procedure TfrmTrainingRegulation.insClassDetailTIME_UNITDrawCaption(
  Sender: TdxInspectorRow; ACanvas: TCanvas; ARect: TRect;
  var AText: WideString; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  inherited;
  AColor:=clWhite;
  AFont.Style:=AFont.Style+[fsBold];

end;

procedure TfrmTrainingRegulation.insClassDetailTIME_UNITDrawValue(
  Sender: TdxInspectorRow; ACanvas: TCanvas; ARect: TRect;
  var AText: WideString; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  inherited;
  AColor:=clWhite;
  AFont.Style:=AFont.Style+[fsBold];
end;

procedure TfrmTrainingRegulation.CustomChange(Sender: TField);
var i:string;
begin
  inherited;
  if (F_State='Reload Order') or
     (F_State='Change Order') then exit;
  if sender.IsNull then exit;   
  if Pos('TIME_PERIOD_',sender.FieldName)=1 then
    i:=Copy(sender.FieldName,13,Length(sender.FieldName)-12)
  else
  if Pos('TIME_UNIT_',sender.FieldName)=1 then
    i:=Copy(sender.FieldName,11,Length(sender.FieldName)-10)
  else
  begin
    ShowMessage('Error: '+sender.FieldName);
    Exit;
  end;
  if not memOrder.FieldByName(i).IsNull then
  begin
  qryUpdateTime.ParamByName('POSITION_NO').Value:=memOrderPOSITION_NO.Value;
  qryUpdateTime.ParamByName('CLASS_CODE').Value := memOrder.FieldByName(i).Value;
  qryUpdateTime.ParamByName('TIME_PERIOD').Value:=memOrder.FieldByName('TIME_PERIOD_'+i).Value;
  qryUpdateTime.ParamByName('TIME_UNIT').Value:=memOrder.FieldByName('TIME_UNIT_'+i).Value;
  qryUpdateTime.ExecSQL;
  end
  else
   sender.Clear;
  if memOrder.State in [dsEdit] then memOrder.Post;
end;

end.

