unit EmpCalendarWizardForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, dxExEdtr, IBODataset, ActnList, DB, dxmdaset, dxCntner,
  dxEditor, dxEdLib, dxGrClms, ElPgCtl, dxDBCtrl, dxDBTLCl, dxDBTL,
  ExtCtrls, dxLayoutControl, ElBtnCtl, ElPopBtn, dxTL, dxDBGrid,
  cxControls, dxfProgressBar, ElCaption, ElXPThemedControl, ElStatBar;

type
  TfrmEmpCalendarWizard = class(TfrmBase)
    ElStatusBar1: TElStatusBar;
    dxpgBar: TdxfProgressBar;
    dxlcSelectPosition: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1TITLE_NO: TdxDBGridColumn;
    dxDBGrid1TITLE_NAME: TdxDBGridColumn;
    ElPopupButton6: TElPopupButton;
    ElPopupButton7: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxlcSelectPositionItem3: TdxLayoutItem;
    dxlcSelectPositionItem4: TdxLayoutItem;
    dxLayoutControl1: TdxLayoutControl;
    panelMain: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    ElPopupButton3: TElPopupButton;
    ElPopupButton4: TElPopupButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    treeFinal: TdxDBTreeList;
    pageOrigin: TElPageControl;
    tabDSCanhanCTN: TElTabSheet;
    gridDSCanhan: TdxDBGrid;
    gridDSCanhanEMPLOYEE_NO: TdxDBGridColumn;
    gridDSCanhanFULL_NAME: TdxDBGridColumn;
    tabDSBonhiem: TElTabSheet;
    gridDSBonhiem: TdxDBGrid;
    gridDSBonhiemEMPLOYEE_NO: TdxDBGridColumn;
    gridDSBonhiemFULL_NAME: TdxDBGridColumn;
    ElPopupButton5: TElPopupButton;
    ElPopupButton8: TElPopupButton;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dsDSBonhiem: TDataSource;
    dsFinal: TDataSource;
    memDSNVLich: TdxMemData;
    memDSNVLichEMPLOYEE_NO: TWideStringField;
    memDSNVLichFULL_NAME: TWideStringField;
    memFinal: TdxMemData;
    memFinalITEM_NO: TWideStringField;
    memFinalP_ITEM_NO: TWideStringField;
    memFinalITEM_NAME: TWideStringField;
    memFinalIS_EMP: TIntegerField;
    memFinalEMPLOYEE_NO: TWideStringField;
    memFinalDEPT_NO: TWideStringField;
    memFinalDEPT_NAME: TWideStringField;
    memFinalTITLE_NO: TWideStringField;
    memFinalTITLE_NAME: TWideStringField;
    memFinalPOSITION_NO: TWideStringField;
    memFinalASSIGNED_DATE: TDateField;
    memFinalENDED_DATE: TDateField;
    memFinalIS_MAIN_POSITION: TIntegerField;
    memFinalOLD_DEPT_NO: TWideStringField;
    memFinalOLD_DEPT_NAME: TWideStringField;
    memFinalOLD_TITLE_NO: TWideStringField;
    memFinalOLD_TITLE_NAME: TWideStringField;
    memFinalOLD_POSITION_NO: TWideStringField;
    memFinalOLD_ASSIGNED_DATE: TDateField;
    memFinalOLD_ENDED_DATE: TDateField;
    memFinalOLD_IS_MAIN_POSITION: TIntegerField;
    ActionList1: TActionList;
    acAdd: TAction;
    acAddAll: TAction;
    acRemove: TAction;
    acRemoveAll: TAction;
    acLoadDSCanhan: TAction;
    acLoadDSNVLich: TAction;
    acInitFinalList: TAction;
    acChapnhan: TAction;
    acBoqua: TAction;
    memDSCanhan: TdxMemData;
    memDSCanhanEMPLOYEE_NO: TWideStringField;
    memDSCanhanFULL_NAME: TWideStringField;
    dsDSCanhan: TDataSource;
    qryDeptList: TIBOQuery;
    qryDeptListDEPT_NO: TWideStringField;
    qryDeptListP_DEPT_NO: TWideStringField;
    qryDeptListDEPT_NAME: TWideStringField;
    qryDeptListPOSITION_NO: TWideStringField;
    qryDeptListTITLE_NO: TWideStringField;
    qryDeptListTITLE_NAME: TWideStringField;
    qryUpdate: TIBOQuery;
    qryInsert: TIBOQuery;
    dxDept: TdxPopupEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxViewAll: TdxCheckEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxApplyDate: TdxDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    gridDSBonhiemOLD_CALENDAR_NAME: TdxDBGridColumn;
    memDSNVLichASSIGN_DATE: TDateField;
    gridDSBonhiemASSIGN_DATE: TdxDBGridDateColumn;
    memDSNVLichOLD_CALENDAR_NO: TWideStringField;
    memDSNVLichOLD_CALENDAR_NAME: TWideStringField;
    qryCalendarList: TIBOQuery;
    qryCalendarListCALENDAR_NO: TWideStringField;
    qryCalendarListCALENDAR_NAME: TWideStringField;
    qryCalendarListIS_ROTATE: TSmallintField;
    memNewEmpCalendar: TdxMemData;
    dsNewEmpCalendar: TDataSource;
    memNewEmpCalendarITEM_NO: TWideStringField;
    memNewEmpCalendarP_ITEM_NO: TWideStringField;
    memNewEmpCalendarITEM_NAME: TWideStringField;
    memNewEmpCalendarIS_EMC: TIntegerField;
    memNewEmpCalendarEMPLOYEE_NO: TWideStringField;
    memNewEmpCalendarCALENDAR_NO: TWideStringField;
    memNewEmpCalendarCALENDAR_NAME: TWideStringField;
    memNewEmpCalendarASSIGN_DATE: TDateField;
    memNewEmpCalendarOLD_CALENDAR_NO: TWideStringField;
    memNewEmpCalendarOLD_CALENDAR_NAME: TWideStringField;
    memNewEmpCalendarOLD_ASSIGN_DATE: TDateField;
    treeFinalITEM_NO: TdxDBTreeListMaskColumn;
    treeFinalP_ITEM_NO: TdxDBTreeListMaskColumn;
    treeFinalITEM_NAME: TdxDBTreeListMaskColumn;
    treeFinalIS_EMC: TdxDBTreeListMaskColumn;
    treeFinalEMPLOYEE_NO: TdxDBTreeListMaskColumn;
    treeFinalCALENDAR_NO: TdxDBTreeListMaskColumn;
    treeFinalCALENDAR_NAME: TdxDBTreeListMaskColumn;
    treeFinalASSIGN_DATE: TdxDBTreeListDateColumn;
    treeFinalOLD_CALENDAR_NO: TdxDBTreeListMaskColumn;
    treeFinalOLD_CALENDAR_NAME: TdxDBTreeListMaskColumn;
    treeFinalOLD_ASSIGN_DATE: TdxDBTreeListDateColumn;
    gridDSBonhiemOLD_CALENDAR_NO: TdxDBGridColumn;
    procedure dxDeptInitPopup(Sender: TObject);
    procedure dxDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDeptChange(Sender: TObject);
    procedure acLoadDSCanhanExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acLoadDSNVLichExecute(Sender: TObject);
    procedure dxViewAllChange(Sender: TObject);
    procedure acInitFinalListExecute(Sender: TObject);
    procedure acAddExecute(Sender: TObject);
    procedure treeFinalChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure memDSCanhanBeforePost(DataSet: TDataSet);
    procedure memDSCanhanBeforeDelete(DataSet: TDataSet);
    procedure acAddAllExecute(Sender: TObject);
    procedure acRemoveExecute(Sender: TObject);
    procedure acRemoveAllExecute(Sender: TObject);
    procedure memNewEmpCalendarBeforeDelete(DataSet: TDataSet);
    procedure acAddUpdate(Sender: TObject);
    procedure acRemoveUpdate(Sender: TObject);
    procedure acRemoveAllUpdate(Sender: TObject);
    procedure acChapnhanExecute(Sender: TObject);
    procedure acBoquaExecute(Sender: TObject);
  private
    { Private declarations }
    F_DEPT_NO, F_CUR_CALENDAR_NO, F_CUR_ITEM_NO, F_CUR_CALENDAR_NAME : string;
    F_Size:integer;
  public
    { Public declarations }
  end;

var
  frmEmpCalendarWizard: TfrmEmpCalendarWizard;

implementation

uses MainDM, SSP_Library, PopupMainForm, CalendarForm;

{$R *.dfm}

procedure TfrmEmpCalendarWizard.dxDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList',frmPopupMain,Sender,2);
  frmPopupMain.dxtlDeptList.FullExpand;
end;

procedure TfrmEmpCalendarWizard.dxDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text:=frmPopupMain.qryDeptListDEPT_NAME.Value;
    F_DEPT_NO := frmPopupMain.qryDeptListDEPT_NO.Value;
  end;
  frmPopupMain.qryDeptList.Close;
  acLoadDSCanhan.Execute;
  acLoadDSNVLich.Execute;
end;

procedure TfrmEmpCalendarWizard.dxDeptChange(Sender: TObject);
begin
  inherited;
  if Length(dxDept.Text)=0 then
  begin
    F_DEPT_NO := '';
  end
  else
  begin
    if frmCalendar.qryOrgMap.Locate('DEPT_NO', F_DEPT_NO, []) then
    begin
      acLoadDSCanhan.Execute;
      acLoadDSNVLich.Execute;
    end;  
  end;
end;

procedure TfrmEmpCalendarWizard.acLoadDSCanhanExecute(Sender: TObject);
begin
  inherited;
  if frmCalendar.qryEmpCalendar2.IsEmpty then exit;
  frmCalendar.qryEmpCalendar2.DisableControls;
  memDSCanhan.DisableControls;
  if memDSCanhan.Active then memDSCanhan.Close;
  memDSCanhan.Open;
  frmCalendar.qryEmpCalendar2.First;
  while not frmCalendar.qryEmpCalendar2.Eof do
  begin
    memDSCanhan.Append;
    memDSCanhanEMPLOYEE_NO.Value:=frmCalendar.qryEmpCalendar2EMPLOYEE_NO.Value;
    memDSCanhanFULL_NAME.Value:=frmCalendar.qryEmpCalendar2FULL_NAME.Value;
    memDSCanhan.Post;
    frmCalendar.qryEmpCalendar2.Next;
  end;
  memDSCanhan.EnableControls;
  frmCalendar.qryEmpCalendar2.EnableControls;
end;

procedure TfrmEmpCalendarWizard.FormCreate(Sender: TObject);
begin
  inherited;
  dxApplyDate.Date := now;
  F_DEPT_NO := frmCalendar.qryOrgMapDEPT_NO.Value;
  dxDept.Text := frmCalendar.qryOrgMapDEPT_NAME.Value;
  acLoadDSCanhan.Execute;
  acLoadDSNVLich.Execute;
  acInitFinalList.Execute;
end;

procedure TfrmEmpCalendarWizard.acLoadDSNVLichExecute(Sender: TObject);
begin
  inherited;
  if frmCalendar.qryEmpCalendarHistory.IsEmpty then exit;
  frmCalendar.qryEmpCalendarHistory.Refresh;
  frmCalendar.qryEmpCalendarHistory.DisableControls;
  memDSNVLich.DisableControls;
  if memDSNVLich.Active then memDSNVLich.Close;
  memDSNVLich.Open;
  frmCalendar.qryEmpCalendarHistory.First;
  while not frmCalendar.qryEmpCalendarHistory.Eof do
  begin
    memDSNVLich.Append;
    memDSNVLichEMPLOYEE_NO.Value:=frmCalendar.qryEmpCalendarHistoryEMPLOYEE_NO.Value;
    memDSNVLichFULL_NAME.Value:=frmCalendar.qryEmpCalendarHistoryFULL_NAME.Value;
    memDSNVLichOLD_CALENDAR_NO.Value:=frmCalendar.qryEmpCalendarHistoryCALENDAR_NO.Value;
    memDSNVLichOLD_CALENDAR_NAME.Value:=frmCalendar.qryEmpCalendarHistoryCALENDAR_NAME.Value;
    memDSNVLichASSIGN_DATE.Value:=frmCalendar.qryEmpCalendarHistoryASSIGN_DATE.Value;

    memDSNVLich.Post;
    frmCalendar.qryEmpCalendarHistory.Next;
  end;
  memDSNVLich.EnableControls;
  frmCalendar.qryEmpCalendarHistory.EnableControls;
end;

procedure TfrmEmpCalendarWizard.dxViewAllChange(Sender: TObject);
begin
  inherited;
  frmCalendar.chkViewAll.Checked := dxViewAll.Checked;
  if frmCalendar.qryOrgMap.Locate('DEPT_NO', F_DEPT_NO, []) then
  begin
    acLoadDSCanhan.Execute;
    acLoadDSNVLich.Execute;
  end;
end;

procedure TfrmEmpCalendarWizard.acInitFinalListExecute(Sender: TObject);
begin
  inherited;
  memNewEmpCalendar.DisableControls;
  if memNewEmpCalendar.Active then memNewEmpCalendar.Close;
  qryCalendarList.Open;
  if not qryCalendarList.IsEmpty then
  begin
    memNewEmpCalendar.Open;
    qryCalendarList.First;
    while not qryCalendarList.Eof do
    begin
      if F_CUR_CALENDAR_NO<>qryCalendarListCALENDAR_NO.Value then
      begin
        memNewEmpCalendar.Append;
        memNewEmpCalendarITEM_NO.Value:='C_'+qryCalendarListCALENDAR_NO.Value;
        memNewEmpCalendarITEM_NAME.Value:=qryCalendarListCALENDAR_NAME.Value;
        memNewEmpCalendarCALENDAR_NO.Value:=qryCalendarListCALENDAR_NO.Value;;
        memNewEmpCalendarCALENDAR_NAME.Value:=qryCalendarListCALENDAR_NAME.Value;
        memNewEmpCalendarIS_EMC.Value:=2;
        memNewEmpCalendar.Post;
        F_CUR_CALENDAR_NO:=qryCalendarListCALENDAR_NO.Value;
      end;

      qryCalendarList.Next;
    end;
  end;
  qryCalendarList.Close;
  memNewEmpCalendar.EnableControls;
  F_Size:=memNewEmpCalendar.RecordCount;
end;

procedure TfrmEmpCalendarWizard.acAddExecute(Sender: TObject);
var i :integer;
begin
  inherited;
  memNewEmpCalendar.DisableControls;

  if pageOrigin.ActivePage=tabDSCanhanCTN then
  begin
    for i:=0 to gridDSCanhan.SelectedCount-1 do
    begin
      memNewEmpCalendar.Append;
      memNewEmpCalendarITEM_NO.Value:='E_'+VarToWideStr(gridDSCanhan.SelectedNodes[i].Values[gridDSCanhanEMPLOYEE_NO.Index]);
      memNewEmpCalendarITEM_NAME.Value:=VarToWideStr(gridDSCanhan.SelectedNodes[i].Values[gridDSCanhanFULL_NAME.Index]);
      memNewEmpCalendarP_ITEM_NO.Value:=F_CUR_ITEM_NO;
      memNewEmpCalendarIS_EMC.Value:=1;
      memNewEmpCalendar.FieldByname('EMPLOYEE_NO').Value:=gridDSCanhan.SelectedNodes[i].Values[gridDSCanhanEMPLOYEE_NO.Index];
      memNewEmpCalendarCALENDAR_NO.Value:=F_CUR_CALENDAR_NO;
      memNewEmpCalendarCALENDAR_NAME.Value:=F_CUR_CALENDAR_NAME;
      memNewEmpCalendarASSIGN_DATE.Value:=dxApplyDate.Date;
      memNewEmpCalendar.Post;
    end;
    gridDSCanhan.DeleteSelection;
  end
  else
  if pageOrigin.ActivePage=tabDSBonhiem then
  begin
    for i:=0 to gridDSBonhiem.SelectedCount-1 do
    begin
      memNewEmpCalendar.Append;
      memNewEmpCalendarITEM_NO.Value:='E_'+VarToWideStr(gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemEMPLOYEE_NO.Index]);
      memNewEmpCalendarITEM_NAME.Value:=VarToWideStr(gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemFULL_NAME.Index]);
      memNewEmpCalendarP_ITEM_NO.Value:=F_CUR_ITEM_NO;
      memNewEmpCalendarIS_EMC.Value:=1;
      memNewEmpCalendar.FieldByname('EMPLOYEE_NO').Value:=gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemEMPLOYEE_NO.Index];

      memNewEmpCalendarCALENDAR_NO.Value:=F_CUR_CALENDAR_NO;
      memNewEmpCalendarCALENDAR_NAME.Value:=F_CUR_CALENDAR_NAME;

      memNewEmpCalendar.FieldByName('ASSIGN_DATE').Value:=gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemASSIGN_DATE.Index];

    {  temp:=VarToStr(gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemOLD_ENDED_DATE.Index]);
      temp_date:=StrToDateDef(temp,0);
      if temp_date>0 then
      begin
        memFinal.FieldByName('ENDED_DATE').Value:=temp_date;
        memFinal.FieldByName('OLD_ENDED_DATE').Value:=temp_date;
      end;
     }
      memNewEmpCalendar.FieldByName('OLD_CALENDAR_NO').Value:=gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemOLD_CALENDAR_NO.Index];
      memNewEmpCalendar.FieldByName('OLD_CALENDAR_NAME').Value:=gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemOLD_CALENDAR_NAME.Index];
      memNewEmpCalendar.FieldByName('OLD_ASSIGN_DATE').Value:=gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemASSIGN_DATE.Index];
      memNewEmpCalendar.Post;
    end;
    gridDSBonhiem.DeleteSelection;
  end;
  memNewEmpCalendar.EnableControls;
  treeFinal.Refresh;
end;

procedure TfrmEmpCalendarWizard.treeFinalChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;

  if Node.Values[treeFinalIS_EMC.Index]=1 then
    F_CUR_ITEM_NO:=VarToWideStr(Node.Values[treeFinalP_ITEM_NO.Index])
  else
    F_CUR_ITEM_NO:=VarToWideStr(Node.Values[treeFinalITEM_NO.Index]);

  F_CUR_CALENDAR_NO:=VarToWideStr(Node.Values[treeFinalCALENDAR_NO.Index]);
  F_CUR_CALENDAR_NAME :=VarToWideStr(Node.Values[treeFinalCALENDAR_NAME.Index]);
end;

procedure TfrmEmpCalendarWizard.memDSCanhanBeforePost(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TfrmEmpCalendarWizard.memDSCanhanBeforeDelete(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TfrmEmpCalendarWizard.acAddAllExecute(Sender: TObject);
begin
  inherited;
  if pageOrigin.ActivePage=tabDSCanhanCTN then
  begin
    gridDSCanhan.SelectAll;
    acAdd.Execute;
  end
  else
  if pageOrigin.ActivePage=tabDSBonhiem then
  begin
    gridDSBonhiem.SelectAll;
    acAdd.Execute;
  end
  else
end;

procedure TfrmEmpCalendarWizard.acRemoveExecute(Sender: TObject);
var i:integer;
  temp:string;
  temp_date:TDate;
begin
  inherited;
  memNewEmpCalendar.DisableControls;
  memDSCanhan.DisableControls;
  memDSNVLich.DisableControls;
  for i:=0 to treeFinal.SelectedCount-1 do
  begin
    if VarToStr(treeFinal.SelectedNodes[i].Values[treeFinalOLD_CALENDAR_NO.Index])='' then
    begin
      memDSCanhan.Append;
      memDSCanhan.FieldByName('EMPLOYEE_NO').Value:=treeFinal.SelectedNodes[i].Values[treeFinalEMPLOYEE_NO.Index];
      memDSCanhan.FieldByName('FULL_NAME').Value:=treeFinal.SelectedNodes[i].Values[treeFinalITEM_NAME.Index];
      memDSCanhan.Post;
    end
    else
    begin
      memDSNVLich.Append;
      memDSNVLich.FieldByName('EMPLOYEE_NO').Value:=treeFinal.SelectedNodes[i].Values[treeFinalEMPLOYEE_NO.Index];
      memDSNVLich.FieldByName('FULL_NAME').Value:=treeFinal.SelectedNodes[i].Values[treeFinalITEM_NAME.Index];
      memDSNVLich.FieldByName('OLD_CALENDAR_NO').Value:=treeFinal.SelectedNodes[i].Values[treeFinalOLD_CALENDAR_NO.Index];
      memDSNVLich.FieldByName('OLD_CALENDAR_NAME').Value:=treeFinal.SelectedNodes[i].Values[treeFinalOLD_CALENDAR_NAME.Index];
      memDSNVLich.FieldByName('OLD_ASSIGN_DATE').Value:=treeFinal.SelectedNodes[i].Values[treeFinalOLD_ASSIGN_DATE.Index];
      memDSNVLich.Post;
    end;
  end;
  treeFinal.DeleteSelection;
  memNewEmpCalendar.EnableControls;
  memDSCanhan.EnableControls;
  memDSNVLich.EnableControls;
end;

procedure TfrmEmpCalendarWizard.acRemoveAllExecute(Sender: TObject);
begin
  inherited;
  memNewEmpCalendar.DisableControls;
  memDSCanhan.DisableControls;
  memDSNVLich.DisableControls;

  memNewEmpCalendar.Last;
  while not memNewEmpCalendar.Bof do
  begin
    if memNewEmpCalendarIS_EMC.Value<>1 then
      memNewEmpCalendar.Prior
    else
    if memNewEmpCalendarOLD_CALENDAR_NO.IsNull then
    begin
      memDSCanhan.Append;
      memDSCanhanEMPLOYEE_NO.Value:=memNewEmpCalendarEMPLOYEE_NO.Value;
      memDSCanhanFULL_NAME.Value:=memNewEmpCalendarITEM_NAME.Value;
      memDSCanhan.Post;
      memNewEmpCalendar.Delete;
    end
    else
    begin
      memDSNVLich.Append;
      memDSNVLichEMPLOYEE_NO.Value:=memNewEmpCalendarEMPLOYEE_NO.Value;
      memDSNVLichFULL_NAME.Value:=memNewEmpCalendarITEM_NAME.Value;
      memDSNVLichOLD_CALENDAR_NO.Value:=memNewEmpCalendarOLD_CALENDAR_NO.Value;
      memDSNVLichOLD_CALENDAR_NAME.Value:=memNewEmpCalendarOLD_CALENDAR_NAME.Value;

      memDSNVLichASSIGN_DATE.Value:=memNewEmpCalendarOLD_ASSIGN_DATE.Value;

      memDSNVLich.Post;
      memNewEmpCalendar.Delete;
    end;
  end;
  memNewEmpCalendar.EnableControls;
  memDSCanhan.EnableControls;
  memDSNVLich.EnableControls;
end;

procedure TfrmEmpCalendarWizard.memNewEmpCalendarBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TfrmEmpCalendarWizard.acAddUpdate(Sender: TObject);
begin
  inherited;
  acAdd.Enabled:=
   (
   (pageOrigin.ActivePage=tabDSCanhanCTN) and (gridDSCanhan.SelectedCount>0)
   or
   (pageOrigin.ActivePage=tabDSBonhiem) and (gridDSBonhiem.SelectedCount>0)
   )
   and (not memNewEmpCalendarCALENDAR_NO.IsNull);
  acAddAll.Enabled:=acAdd.Enabled;
end;

procedure TfrmEmpCalendarWizard.acRemoveUpdate(Sender: TObject);
var i : integer;
begin
  inherited;
  acRemove.Enabled:=false;
  if treeFinal.SelectedCount>0 then
  begin
    acRemove.Enabled:=true;
    for i:=0 to treeFinal.SelectedCount-1 do
    begin
      if treeFinal.SelectedNodes[i].Values[treeFinalIS_EMC.Index]<>1 then
      begin
        acRemove.Enabled:=false;
        exit;
      end;
    end
  end;
end;

procedure TfrmEmpCalendarWizard.acRemoveAllUpdate(Sender: TObject);
begin
  inherited;
  acRemoveALl.Enabled:=not memNewEmpCalendar.IsEmpty;
end;

procedure TfrmEmpCalendarWizard.acChapnhanExecute(Sender: TObject);
begin
  inherited;
  memNewEmpCalendar.DisableControls;
  dmMain.RollbackTransaction;

  memNewEmpCalendar.First;
  while not memNewEmpCalendar.Eof do
  begin
    if memNewEmpCalendarIS_EMC.Value<>1 then
    else
    if memNewEmpCalendarOLD_CALENDAR_NO.IsNull then
    begin
      if memNewEmpCalendarASSIGN_DATE.IsNull then
        qryInsert.ParamByName('ASSIGN_DATE').Value:=dxApplyDate.date
      else
        qryInsert.ParamByName('ASSIGN_DATE').Value:=memNewEmpCalendarASSIGN_DATE.Value;
      qryInsert.ParamByName('EMPLOYEE_NO').Value:=memNewEmpCalendarEMPLOYEE_NO.Value;
      qryInsert.ParamByName('CALENDAR_NO').Value:=memNewEmpCalendarCALENDAR_NO.Value;
      try
        qryInsert.ExecSQL;
      except
      end;
    end
    else
    begin
      if memNewEmpCalendarASSIGN_DATE.IsNull then
        qryUpdate.ParamByName('ASSIGNED_DATE').Value:=dxApplyDate.date
      else
        qryUpdate.ParamByName('ASSIGN_DATE').Value:=memNewEmpCalendarASSIGN_DATE.Value;
      qryUpdate.ParamByName('EMPLOYEE_NO').Value:=memNewEmpCalendarEMPLOYEE_NO.Value;

      qryUpdate.ParamByName('OLD_ASSIGN_DATE').Value:=memNewEmpCalendarOLD_ASSIGN_DATE.Value;
      qryUpdate.ParamByName('OLD_EMPLOYEE_NO').Value:=memNewEmpCalendarEMPLOYEE_NO.Value;
      qryUpdate.ParamByName('OLD_CALENDAR_NO').Value:=memNewEmpCalendarCALENDAR_NO.Value;
      try
        qryUpdate.ExecSQL;
      except
      end;
    end;
    memNewEmpCalendar.Next;
  end;
  dmMain.CommitTransaction;
  memNewEmpCalendar.EnableControls;
  ModalResult:=mrOk;
end;

procedure TfrmEmpCalendarWizard.acBoquaExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;

end.
