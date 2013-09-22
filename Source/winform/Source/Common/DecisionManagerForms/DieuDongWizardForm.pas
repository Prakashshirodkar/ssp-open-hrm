unit DieuDongWizardForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  dxCntner, dxEditor, dxEdLib, dxGrClms, dxDBGrid, ElPgCtl, dxDBCtrl,
  dxDBTLCl, dxTL, dxDBTL, dxLayoutControl, ElBtnCtl, ElPopBtn, ExtCtrls,
  cxControls, IBODataset, DB, dxmdaset, ActnList;

type
  TfrmDieuDongWizard = class(TfrmBase)
    dxLayoutControl1: TdxLayoutControl;
    panelMain: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    ElPopupButton3: TElPopupButton;
    ElPopupButton4: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    treeFinal: TdxDBTreeList;
    treeFinalITEM_NAME: TdxDBTreeListColumn;
    treeFinalASSIGNED_DATE: TdxDBTreeListDateColumn;
    treeFinalENDED_DATE: TdxDBTreeListDateColumn;
    treeFinalIS_MAIN_POSITION: TdxDBTreeListCheckColumn;
    treeFinalIS_EMP: TdxDBTreeListColumn;
    treeFinalEMPLOYEE_NO: TdxDBTreeListMaskColumn;
    treeFinalDEPT_NO: TdxDBTreeListMaskColumn;
    treeFinalDEPT_NAME: TdxDBTreeListMaskColumn;
    treeFinalTITLE_NO: TdxDBTreeListMaskColumn;
    treeFinalTITLE_NAME: TdxDBTreeListMaskColumn;
    treeFinalPOSITION_NO: TdxDBTreeListMaskColumn;
    treeFinalColumn12: TdxDBTreeListDateColumn;
    treeFinalOLD_DEPT_NO: TdxDBTreeListMaskColumn;
    treeFinalOLD_DEPT_NAME: TdxDBTreeListMaskColumn;
    treeFinalOLD_TITLE_NO: TdxDBTreeListMaskColumn;
    treeFinalOLD_TITLE_NAME: TdxDBTreeListMaskColumn;
    treeFinalOLD_POSITION_NO: TdxDBTreeListMaskColumn;
    treeFinalOLD_ASSIGNED_DATE: TdxDBTreeListDateColumn;
    treeFinalOLD_ENDED_DATE: TdxDBTreeListDateColumn;
    treeFinalOLD_IS_MAIN_POSITION: TdxDBTreeListMaskColumn;
    treeFinalITEM_NO: TdxDBTreeListMaskColumn;
    treeFinalP_ITEM_NO: TdxDBTreeListMaskColumn;
    pageOrigin: TElPageControl;
    tabDSBonhiem: TElTabSheet;
    gridDSViTri: TdxDBGrid;
    gridDSViTriEMPLOYEE_NO: TdxDBGridColumn;
    gridDSViTriFULL_NAME: TdxDBGridColumn;
    gridDSViTriOLD_DEPT_NO: TdxDBGridColumn;
    gridDSViTriOLD_DEPT_NAME: TdxDBGridColumn;
    gridDSViTriOLD_TITLE_NO: TdxDBGridColumn;
    gridDSViTriOLD_TITLE_NAME: TdxDBGridColumn;
    gridDSViTriOLD_POSITION_NO: TdxDBGridColumn;
    gridDSViTriOLD_ASSIGNED_DATE: TdxDBGridDateColumn;
    gridDSViTriOLD_ENDED_DATE: TdxDBGridDateColumn;
    gridDSViTriOLD_IS_MAIN_POSITION: TdxDBGridCheckColumn;
    dxDept: TdxEdit;
    dxTitle: TdxEdit;
    ElPopupButton5: TElPopupButton;
    ElPopupButton8: TElPopupButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    memDSViTri: TdxMemData;
    memDSViTriEMPLOYEE_NO: TWideStringField;
    memDSViTriFULL_NAME: TWideStringField;
    memDSViTriOLD_DEPT_NO: TWideStringField;
    memDSViTriOLD_DEPT_NAME: TWideStringField;
    memDSViTriOLD_TITLE_NO: TWideStringField;
    memDSViTriOLD_TITLE_NAME: TWideStringField;
    memDSViTriOLD_POSITION_NO: TWideStringField;
    memDSViTriOLD_ASSIGNED_DATE: TDateField;
    memDSViTriOLD_ENDED_DATE: TDateField;
    memDSViTriOLD_IS_MAIN_POSITION: TIntegerField;
    dsDSViTri: TDataSource;
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
    memFinalOLD_TITLE_NO: TWideStringField;
    memFinalOLD_POSITION_NO: TWideStringField;
    memFinalOLD_ASSIGNED_DATE: TDateField;
    dsFinal: TDataSource;
    qryDeptList: TIBOQuery;
    qryDeptListDEPT_NO: TWideStringField;
    qryDeptListP_DEPT_NO: TWideStringField;
    qryDeptListDEPT_NAME: TWideStringField;
    qryDeptListPOSITION_NO: TWideStringField;
    qryDeptListTITLE_NO: TWideStringField;
    qryDeptListTITLE_NAME: TWideStringField;
    ActionList1: TActionList;
    acAdd: TAction;
    acAddAll: TAction;
    acRemove: TAction;
    acRemoveAll: TAction;
    acLoadDSViTri: TAction;
    acInitFinalList: TAction;
    acChapnhan: TAction;
    acBoqua: TAction;
    qryDSViTri: TIBOQuery;
    qryDSViTriEMPLOYEE_NO: TWideStringField;
    qryDSViTriFULL_NAME: TWideStringField;
    qryDSViTriPOSITION_NO: TWideStringField;
    qryDSViTriPOSITION_TITLE: TWideStringField;
    qryDSViTriASSIGNED_DATE: TDateField;
    qryDSViTriENDED_DATE: TDateField;
    qryDSViTriIS_MAIN_POSITION: TSmallintField;
    qryDSViTriDECISION_NO: TWideStringField;
    qryDSViTriDEPT_NO: TWideStringField;
    qryDSViTriTITLE_NO: TWideStringField;
    qryDSViTriDEPT_NAME: TWideStringField;
    qryDSViTriTITLE_NAME: TWideStringField;
    qryDSViTriDISMISS_DATE: TDateField;
    memDSViTriOLD_DISMISS_DATE: TDateField;
    gridDSViTriOLD_DISMISS_DATE: TdxDBGridDateColumn;
    memDSViTriKEY_FIELD: TWideStringField;
    gridDSViTriKEY_FIELD: TdxDBGridColumn;
    qryDSViTriKEY_FIELD: TWideStringField;
    qryInsertChangePosition: TIBOQuery;
    procedure treeFinalCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure acLoadDSViTriExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acInitFinalListExecute(Sender: TObject);
    procedure acBoquaExecute(Sender: TObject);
    procedure acChapnhanExecute(Sender: TObject);
    procedure treeFinalChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure acAddUpdate(Sender: TObject);
    procedure acRemoveUpdate(Sender: TObject);
    procedure acAddExecute(Sender: TObject);
    procedure memFinalASSIGNED_DATEChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acRemoveExecute(Sender: TObject);
    procedure acAddAllExecute(Sender: TObject);
    procedure acRemoveAllExecute(Sender: TObject);
    procedure memFinalBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    F_CUR_ITEM_NO,F_CUR_DEPT_NO,F_CUR_DEPT_NAME, F_CUR_TITLE_NO,F_CUR_TITLE_NAME,F_CUR_POSITION_NO:WideString;
    F_Size:integer;
  public
    { Public declarations }
  end;

var
  frmDieuDongWizard: TfrmDieuDongWizard;

implementation

uses MainDM, DecisionDataModule, SSP_Library, DateUtils;

{$R *.dfm}

procedure TfrmDieuDongWizard.treeFinalCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if ANode.Values[treeFinalIS_EMP.Index]=3 then
  begin
    AFont.Style:=AFont.Style+[fsBold,fsUnderline];
    AFont.Color:=clBlue;
  end
  else
  if ANode.Values[treeFinalIS_EMP.Index]=2 then
  begin
    AFont.Style:=AFont.Style+[fsItalic];
    AFont.Color:=clRed;
  end
end;

procedure TfrmDieuDongWizard.acLoadDSViTriExecute(Sender: TObject);
begin
  inherited;
  if qryDSViTri.active then qryDSViTri.close;
  qryDSViTri.ParamByName('DECISION_NO').Value := DecisionDM.qryDecisionsDECISION_NO.Value;
  qryDSViTri.ParamByName('DECISION_DATE').Value := DecisionDM.qryDecisionsDECISION_DATE.Value;
  qryDSViTri.Open;     

  if qryDSViTri.IsEmpty then exit;
  qryDSViTri.DisableControls;
  memDSViTri.DisableControls;
  if memDSViTri.Active then memDSViTri.Close;
  memDSViTri.Open;
  qryDSViTri.First;
  while not qryDSViTri.Eof do
  begin
    memDSViTri.Append;
    memDSViTriEMPLOYEE_NO.Value:=qryDSViTriEMPLOYEE_NO.Value;
    memDSViTriFULL_NAME.Value:=qryDSViTriFULL_NAME.Value;
    memDSViTriOLD_DEPT_NO.Value:=qryDSViTriDEPT_NO.Value;
    memDSViTriOLD_DEPT_NAME.Value:=qryDSViTriDEPT_NAME.Value;
    memDSViTriOLD_TITLE_NO.Value:=qryDSViTriTITLE_NO.Value;
    memDSViTriOLD_TITLE_NAME.Value:=qryDSViTriTITLE_NAME.Value;
    memDSViTriOLD_POSITION_NO.Value:=qryDSViTriPOSITION_NO.Value;
    memDSViTriOLD_ASSIGNED_DATE.Value:=qryDSViTriASSIGNED_DATE.Value;
    memDSViTriOLD_ENDED_DATE.Value:=qryDSViTriENDED_DATE.Value;
    memDSViTriOLD_IS_MAIN_POSITION.Value:=qryDSViTriIS_MAIN_POSITION.Value;
    memDSViTriKEY_FIELD.Value:=qryDSViTriKEY_FIELD.Value;
    memDSViTri.Post;
    qryDSViTri.Next;
  end;
  memDSViTri.EnableControls;
  qryDSViTri.EnableControls;
end;

procedure TfrmDieuDongWizard.FormCreate(Sender: TObject);
begin
  inherited;
  acLoadDSViTri.Execute;
  acInitFinalList.Execute;
  dmMain.CommitTransaction;
end;

procedure TfrmDieuDongWizard.acInitFinalListExecute(Sender: TObject);
begin
  inherited;
  inherited;
  memFinal.DisableControls;
  if memFinal.Active then memFinal.Close;
  qryDeptList.Open;
  if not qryDeptList.IsEmpty then
  begin
    memFinal.Open;
    qryDeptList.First;
    while not qryDeptList.Eof do
    begin
      if F_CUR_DEPT_NO<>qryDeptListDEPT_NO.Value then
      begin
        memFinal.Append;
        memFinalITEM_NO.Value:='D_'+qryDeptListDEPT_NO.Value;
        if not qryDeptListP_DEPT_NO.IsNull then
          memFinalP_ITEM_NO.Value:='D_'+qryDeptListP_DEPT_NO.Value;
        memFinalITEM_NAME.Value:=qryDeptListDEPT_NAME.Value;
        memFinalDEPT_NO.Value:=qryDeptListDEPT_NO.Value;
        memFinalDEPT_NAME.Value:=qryDeptListDEPT_NAME.Value;
        memFinalIS_EMP.Value:=3;
        memFinal.Post;
        F_CUR_DEPT_NO:=qryDeptListDEPT_NO.Value;
        F_CUR_TITLE_NO:='';
      end;
      if (not qryDeptListTITLE_NO.IsNull) and
         (F_CUR_TITLE_NO<>qryDeptListTITLE_NO.Value) then
      begin
        memFinal.Append;
        memFinalITEM_NO.Value:='D_'+qryDeptListDEPT_NO.Value+'_T_'+qryDeptListTITLE_NO.Value;
        memFinalP_ITEM_NO.Value:='D_'+qryDeptListDEPT_NO.Value;
        memFinalITEM_NAME.Value:=qryDeptListTITLE_NAME.Value;
        memFinalDEPT_NO.Value:=qryDeptListDEPT_NO.Value;
        memFinalDEPT_NAME.Value:=qryDeptListDEPT_NAME.Value;
        memFinalTITLE_NO.Value:=qryDeptListTITLE_NO.Value;
        memFinalTITLE_NAME.Value:=qryDeptListTITLE_NAME.Value;
        memFinalPOSITION_NO.Value:=qryDeptListPOSITION_NO.Value;
        memFinalIS_EMP.Value:=2;
        memFinal.Post;
        F_CUR_TITLE_NO:=qryDeptListTITLE_NO.Value
      end;
      qryDeptList.Next;
    end;
  end;
  qryDeptList.Close;
  memFinal.EnableControls;
  F_Size:=memFinal.RecordCount;
  treeFinal.FullCollapse;
end;

procedure TfrmDieuDongWizard.acBoquaExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;

procedure TfrmDieuDongWizard.acChapnhanExecute(Sender: TObject);
begin
  inherited;
  memFinal.DisableControls;
  memDSViTri.DisableControls;  
  //dmMain.RollbackTransaction;

  //Them vi tri cu chuyen di vao bang HR_CHANGE_POSITIONS
  memDSViTri.First;  
  while not memDSViTri.Eof do
  begin
    if not (memDSViTriOLD_DISMISS_DATE.IsNull) then
    begin
      qryInsertChangePosition.ParamByName('DECISION_NO').Value := DecisionDM.qryDecision_EmpDECISION_NO.Value;
      qryInsertChangePosition.ParamByName('EMPLOYEE_NO').Value := memDSViTriEMPLOYEE_NO.Value;
      qryInsertChangePosition.ParamByName('ASSIGNED_DATE').Value := memDSViTriOLD_ASSIGNED_DATE.Value;
      qryInsertChangePosition.ParamByName('POSITION_NO').Value := memDSViTriOLD_POSITION_NO.Value;
      qryInsertChangePosition.ParamByName('CHANGE_TYPE').Value := 'FROM';
      qryInsertChangePosition.ParamByName('IS_MAIN_POSITION').Value := 0;
      qryInsertChangePosition.ParamByName('CHANGE_DATE').Value := memDSViTriOLD_DISMISS_DATE.Value;
      try
        dmMain.ExecuteSQL(qryInsertChangePosition);
      except
      end;
    end;
    memDSViTri.Next;
  end;
  dmMain.CommitTransaction;

  //Them vi tri moi chuyen den vao bang HR_CHANGE_POSITIONS
  memFinal.First;
  while not memFinal.Eof do
  begin
    if memFinalIS_EMP.Value<>1 then
    else
    begin
      qryInsertChangePosition.ParamByName('DECISION_NO').Value := DecisionDM.qryDecision_EmpDECISION_NO.Value;
      qryInsertChangePosition.ParamByName('EMPLOYEE_NO').Value := memFinalEMPLOYEE_NO.Value;
      if memFinalASSIGNED_DATE.IsNull then
        qryInsertChangePosition.ParamByName('ASSIGNED_DATE').Value := Today
      else
        qryInsertChangePosition.ParamByName('ASSIGNED_DATE').Value := memFinalASSIGNED_DATE.Value;
      qryInsertChangePosition.ParamByName('POSITION_NO').Value := memFinalPOSITION_NO.Value;
      qryInsertChangePosition.ParamByName('CHANGE_TYPE').Value := 'TO';
      qryInsertChangePosition.ParamByName('IS_MAIN_POSITION').Value := memFinalIS_MAIN_POSITION.Value;
      if memFinalENDED_DATE.IsNull then
        qryInsertChangePosition.ParamByName('CHANGE_DATE').Clear
      else
        qryInsertChangePosition.ParamByName('CHANGE_DATE').Value := memFinalENDED_DATE.Value;
      try
        dmMain.ExecuteSQL(qryInsertChangePosition);
      except
      end;
    end;
    memFinal.Next;
  end;
  dmMain.CommitTransaction;
  memFinal.EnableControls;
  memDSViTri.EnableControls;  
  ModalResult:=mrOk;
end;

procedure TfrmDieuDongWizard.treeFinalChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  inherited;
  dxDept.Text:=VarToWideStr(Node.Values[treeFinalDEPT_NAME.Index]);
  dxTitle.Text:=VarToWideStr(Node.Values[treeFinalTITLE_NAME.Index]);

  if Node.Values[treeFinalIS_EMP.Index]=1 then
    F_CUR_ITEM_NO:=VarToWideStr(Node.Values[treeFinalP_ITEM_NO.Index])
  else
    F_CUR_ITEM_NO:=VarToWideStr(Node.Values[treeFinalITEM_NO.Index]);
  F_CUR_DEPT_NO:=VarToWideStr(Node.Values[treeFinalDEPT_NO.Index]);
  F_CUR_DEPT_NAME:=VarToWideStr(Node.Values[treeFinalDEPT_NAME.Index]);
  F_CUR_TITLE_NO:=VarToWideStr(Node.Values[treeFinalTITLE_NO.Index]);
  F_CUR_TITLE_NAME:=VarToWideStr(Node.Values[treeFinalTITLE_NAME.Index]);
  F_CUR_POSITION_NO:=VarToWideStr(Node.Values[treeFinalPOSITION_NO.Index]);
end;

procedure TfrmDieuDongWizard.acAddUpdate(Sender: TObject);
begin
  inherited;
  acAdd.Enabled:= (gridDSViTri.SelectedCount>0)
    and (not memFinalDEPT_NO.IsNull) and (not memFinalTITLE_NO.IsNull);
  acAddAll.Enabled:=acAdd.Enabled;
end;

procedure TfrmDieuDongWizard.acRemoveUpdate(Sender: TObject);
var
  i : integer;
begin
  inherited;
  acRemove.Enabled:=false;
  if treeFinal.SelectedCount>0 then
  begin
    acRemove.Enabled:=true;
    for i:=0 to treeFinal.SelectedCount-1 do
    begin
      if treeFinal.SelectedNodes[i].Values[treeFinalIS_EMP.Index]<>1 then
      begin
        acRemove.Enabled:=false;
        exit;
      end;
    end
  end;
end;

procedure TfrmDieuDongWizard.acAddExecute(Sender: TObject);
var
  i : integer;
begin
  inherited;
  memFinal.DisableControls;
  begin
    for i:=0 to gridDSViTri.SelectedCount-1 do
    begin
      if memDSViTri.Locate('KEY_FIELD',VarToWideStr(gridDSViTri.SelectedNodes[i].Values[gridDSViTriKEY_FIELD.Index]),[]) then
      begin
        if (memDSViTriOLD_DISMISS_DATE.IsNull) then
        begin
          memFinal.Append;
          memFinalITEM_NO.Value:='E_'+VarToWideStr(gridDSViTri.SelectedNodes[i].Values[gridDSViTriEMPLOYEE_NO.Index]);
          memFinalITEM_NAME.Value:=VarToWideStr(gridDSViTri.SelectedNodes[i].Values[gridDSViTriFULL_NAME.Index]);
          memFinalP_ITEM_NO.Value:=F_CUR_ITEM_NO;
          memFinalIS_EMP.Value:=1;
          memFinal.FieldByname('EMPLOYEE_NO').Value:=gridDSViTri.SelectedNodes[i].Values[gridDSViTriEMPLOYEE_NO.Index];
          memFinalDEPT_NO.Value:=F_CUR_DEPT_NO;
          memFinalTITLE_NO.Value:=F_CUR_TITLE_NO;
          memFinalDEPT_NAME.Value:=F_CUR_DEPT_NAME;
          memFinalTITLE_NAME.Value:=F_CUR_TITLE_NAME;
          memFinalPOSITION_NO.Value:=F_CUR_POSITION_NO;
          memFinalASSIGNED_DATE.Value:=Today;
          memFinalIS_MAIN_POSITION.Value:=1;

          memFinal.FieldByname('OLD_DEPT_NO').Value:=gridDSViTri.SelectedNodes[i].Values[gridDSViTriOLD_DEPT_NO.Index];
          memFinal.FieldByname('OLD_TITLE_NO').Value:=gridDSViTri.SelectedNodes[i].Values[gridDSViTriOLD_TITLE_NO.Index];
          memFinal.FieldByname('OLD_POSITION_NO').Value:=gridDSViTri.SelectedNodes[i].Values[gridDSViTriOLD_POSITION_NO.Index];
          memFinal.FieldByname('OLD_ASSIGNED_DATE').Value:=gridDSViTri.SelectedNodes[i].Values[gridDSViTriOLD_ASSIGNED_DATE.Index];


          memFinal.Post;

          if not (memDSViTri.State in [dsInsert,dsEdit]) then
            memDSViTri.Edit;
          memDSViTriOLD_DISMISS_DATE.Value := today;
          memDSViTri.Post;
        end;
      end;
    end;
  end;
  memFinal.EnableControls;
  treeFinal.Refresh;
end;

procedure TfrmDieuDongWizard.memFinalASSIGNED_DATEChange(Sender: TField);
begin
  inherited;
  if memDSViTri.Locate('KEY_FIELD',VarToWideStr(memFinalEMPLOYEE_NO.Value + memFinalOLD_DEPT_NO.Value + memFinalOLD_TITLE_NO.Value ),[]) then
  begin
    if not (memDSViTri.State in [dsInsert,dsEdit]) then
      memDSViTri.Edit;
    memDSViTriOLD_DISMISS_DATE.Value := memFinalASSIGNED_DATE.Value;
    memDSViTri.Post;
  end;
end;

procedure TfrmDieuDongWizard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if qryDeptList.Active then qryDeptList.Close;
  if qryDSViTri.Active then qryDSViTri.Close;
  if memDSViTri.Active then memDSViTri.Close;
  if memFinal.Active then memFinal.Close;
end;

procedure TfrmDieuDongWizard.acRemoveExecute(Sender: TObject);
var
  key_field : Widestring;
  i : integer;
begin
  inherited;
  memFinal.DisableControls;
  memDSViTri.DisableControls;
  for i:=0 to treeFinal.SelectedCount-1 do
  begin
    key_field := VarToWideStr(treeFinal.SelectedNodes[i].Values[treeFinalEMPLOYEE_NO.Index]) +
          VarToWideStr(treeFinal.SelectedNodes[i].Values[treeFinalOLD_DEPT_NO.Index]) +
          VarToWideStr(treeFinal.SelectedNodes[i].Values[treeFinalOLD_TITLE_NO.Index]);
    if memDSViTri.Locate('KEY_FIELD',key_field,[]) then
    begin
        if not (memDSViTri.State in [dsInsert,dsEdit]) then
          memDSViTri.Edit;
        memDSViTriOLD_DISMISS_DATE.clear;
        memDSViTri.Post;
    end;
  end;
  treeFinal.DeleteSelection;
  memFinal.EnableControls;
  memDSViTri.EnableControls;
end;

procedure TfrmDieuDongWizard.acAddAllExecute(Sender: TObject);
begin
  inherited;
  gridDSViTri.SelectAll;
  acAdd.Execute;
end;

procedure TfrmDieuDongWizard.acRemoveAllExecute(Sender: TObject);
var
  key_field : Widestring;
begin
  inherited;
  memFinal.DisableControls;
  memDSViTri.DisableControls;
  memFinal.Last;
  while not memFinal.Bof do
  begin
    if memFinalIS_EMP.Value<>1 then
      memFinal.Prior
    else
    begin
      key_field := memFinalEMPLOYEE_NO.Value + memFinalOLD_DEPT_NO.Value + memFinalOLD_TITLE_NO.Value;
      if memDSViTri.Locate('KEY_FIELD',key_field,[]) then
      begin
        if not (memDSViTri.State in [dsInsert,dsEdit]) then
          memDSViTri.Edit;
        memDSViTriOLD_DISMISS_DATE.clear;
        memDSViTri.Post;
      end;
      memFinal.Delete;
    end;      
  end;
  memFinal.EnableControls;
  memDSViTri.EnableControls;

end;

procedure TfrmDieuDongWizard.memFinalBeforeDelete(DataSet: TDataSet);
begin
  inherited;
//
end;

end.
