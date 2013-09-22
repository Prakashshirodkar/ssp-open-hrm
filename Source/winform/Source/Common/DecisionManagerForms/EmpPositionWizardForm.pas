unit EmpPositionWizardForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxExEdtr, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, ExtCtrls, dxDBTL, DB, dxmdaset, dxDBTLCl, dxGrClms, ElBtnCtl,
  ElPopBtn, ActnList, dxfProgressBar, dxEdLib, ElPgCtl, dxEditor,
  IBODataset;

type
  TfrmEmpPositionWizard = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    panelMain: TPanel;
    dxLayoutControl1Item1: TdxLayoutItem;
    gridDSBonhiem: TdxDBGrid;
    dsDSBonhiem: TDataSource;
    dsFinal: TDataSource;
    memDSBonhiem: TdxMemData;
    memFinal: TdxMemData;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    treeFinal: TdxDBTreeList;
    memDSBonhiemEMPLOYEE_NO: TWideStringField;
    memDSBonhiemFULL_NAME: TWideStringField;
    memDSBonhiemOLD_DEPT_NO: TWideStringField;
    memDSBonhiemOLD_DEPT_NAME: TWideStringField;
    memDSBonhiemOLD_TITLE_NO: TWideStringField;
    memDSBonhiemOLD_TITLE_NAME: TWideStringField;
    memDSBonhiemOLD_POSITION_NO: TWideStringField;
    memDSBonhiemOLD_ASSIGNED_DATE: TDateField;
    memDSBonhiemOLD_ENDED_DATE: TDateField;
    memDSBonhiemOLD_IS_MAIN_POSITION: TIntegerField;
    gridDSBonhiemEMPLOYEE_NO: TdxDBGridColumn;
    gridDSBonhiemFULL_NAME: TdxDBGridColumn;
    gridDSBonhiemOLD_DEPT_NO: TdxDBGridColumn;
    gridDSBonhiemOLD_DEPT_NAME: TdxDBGridColumn;
    gridDSBonhiemOLD_TITLE_NO: TdxDBGridColumn;
    gridDSBonhiemOLD_TITLE_NAME: TdxDBGridColumn;
    gridDSBonhiemOLD_POSITION_NO: TdxDBGridColumn;
    gridDSBonhiemOLD_ASSIGNED_DATE: TdxDBGridDateColumn;
    gridDSBonhiemOLD_ENDED_DATE: TdxDBGridDateColumn;
    gridDSBonhiemOLD_IS_MAIN_POSITION: TdxDBGridCheckColumn;
    memFinalITEM_NO: TWideStringField;
    memFinalP_ITEM_NO: TWideStringField;
    memFinalITEM_NAME: TWideStringField;
    memFinalIS_EMP: TIntegerField;
    treeFinalITEM_NAME: TdxDBTreeListColumn;
    treeFinalASSIGNED_DATE: TdxDBTreeListDateColumn;
    treeFinalENDED_DATE: TdxDBTreeListDateColumn;
    treeFinalIS_MAIN_POSITION: TdxDBTreeListCheckColumn;
    dxLayoutControl2Group1: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl2Item1: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl2Item2: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl2Item4: TdxLayoutItem;
    ActionList1: TActionList;
    acAdd: TAction;
    acAddAll: TAction;
    acRemove: TAction;
    acRemoveAll: TAction;
    acLoadDSCanhan: TAction;
    acLoadDSBonhiem: TAction;
    dxpgBar: TdxfProgressBar;
    pageOrigin: TElPageControl;
    tabDSCanhanCTN: TElTabSheet;
    tabDSBonhiem: TElTabSheet;
    gridDSCanhan: TdxDBGrid;
    memDSCanhan: TdxMemData;
    dsDSCanhan: TDataSource;
    memDSCanhanEMPLOYEE_NO: TWideStringField;
    memDSCanhanFULL_NAME: TWideStringField;
    gridDSCanhanEMPLOYEE_NO: TdxDBGridColumn;
    gridDSCanhanFULL_NAME: TdxDBGridColumn;
    dxlcSelectPosition: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    ElPopupButton6: TElPopupButton;
    ElPopupButton7: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxlcSelectPositionItem3: TdxLayoutItem;
    dxlcSelectPositionItem4: TdxLayoutItem;
    dxDBGrid1TITLE_NO: TdxDBGridColumn;
    dxDBGrid1TITLE_NAME: TdxDBGridColumn;
    acInitFinalList: TAction;
    qryDeptList: TIBOQuery;
    qryDeptListDEPT_NO: TWideStringField;
    qryDeptListP_DEPT_NO: TWideStringField;
    qryDeptListDEPT_NAME: TWideStringField;
    qryDeptListPOSITION_NO: TWideStringField;
    qryDeptListTITLE_NO: TWideStringField;
    qryDeptListTITLE_NAME: TWideStringField;
    treeFinalIS_EMP: TdxDBTreeListColumn;
    dxLayoutControl1Group1: TdxLayoutGroup;
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
    dxDept: TdxEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxTitle: TdxEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElPopupButton8: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    acChapnhan: TAction;
    acBoqua: TAction;
    qryUpdate: TIBOQuery;
    qryInsert: TIBOQuery;
    treeFinalITEM_NO: TdxDBTreeListMaskColumn;
    treeFinalP_ITEM_NO: TdxDBTreeListMaskColumn;
    procedure acLoadDSCanhanExecute(Sender: TObject);
    procedure acLoadDSBonhiemExecute(Sender: TObject);
    procedure acInitFinalListExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure treeFinalCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure acAddUpdate(Sender: TObject);
    procedure acRemoveUpdate(Sender: TObject);
    procedure acAddExecute(Sender: TObject);
    procedure memDSCanhanBeforeDelete(DataSet: TDataSet);
    procedure memDSBonhiemBeforeDelete(DataSet: TDataSet);
    procedure memFinalBeforeDelete(DataSet: TDataSet);
    procedure acAddAllExecute(Sender: TObject);
    procedure acRemoveExecute(Sender: TObject);
    procedure acRemoveAllExecute(Sender: TObject);
    procedure acRemoveAllUpdate(Sender: TObject);
    procedure acBoquaExecute(Sender: TObject);
    procedure acChapnhanExecute(Sender: TObject);
    procedure acChapnhanUpdate(Sender: TObject);
    procedure treeFinalChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
  private
    { Private declarations }
    F_CUR_ITEM_NO,F_CUR_DEPT_NO,F_CUR_DEPT_NAME, F_CUR_TITLE_NO,F_CUR_TITLE_NAME,F_CUR_POSITION_NO:WideString;
    F_Size:integer;
  public
    { Public declarations }
  end;

var
  frmEmpPositionWizard: TfrmEmpPositionWizard;

implementation

uses MainDM, DecisionDataModule, SSP_Library, DateUtils;

{$R *.dfm}

procedure TfrmEmpPositionWizard.acLoadDSCanhanExecute(Sender: TObject);
begin
  inherited;
  if DecisionDM.qryDecision_Emp.IsEmpty then exit;
  DecisionDM.qryDecision_Emp.DisableControls;
  memDSCanhan.DisableControls;
  if memDSCanhan.Active then memDSCanhan.Close;
  memDSCanhan.Open;
  DecisionDM.qryDecision_Emp.First;
  while not DecisionDM.qryDecision_Emp.Eof do
  begin
    memDSCanhan.Append;
    memDSCanhanEMPLOYEE_NO.Value:=DecisionDM.qryDecision_EmpEMPLOYEE_NO.Value;
    memDSCanhanFULL_NAME.Value:=DecisionDM.qryDecision_EmpFULL_NAME.Value;
    memDSCanhan.Post;
    DecisionDM.qryDecision_Emp.Next;
  end;
  memDSCanhan.EnableControls;
  DecisionDM.qryDecision_Emp.EnableControls;
end;

procedure TfrmEmpPositionWizard.acLoadDSBonhiemExecute(Sender: TObject);
begin
  inherited;
  if DecisionDM.qryChitietBonhiem.IsEmpty then exit;
  DecisionDM.qryChitietBonhiem.DisableControls;
  memDSBonhiem.DisableControls;
  if memDSBonhiem.Active then memDSBonhiem.Close;
  memDSBonhiem.Open;
  DecisionDM.qryChitietBonhiem.First;
  while not DecisionDM.qryChitietBonhiem.Eof do
  begin
    memDSBonhiem.Append;
    memDSBonhiemEMPLOYEE_NO.Value:=DecisionDM.qryChitietBonhiemEMPLOYEE_NO.Value;
    memDSBonhiemFULL_NAME.Value:=DecisionDM.qryChitietBonhiemFULL_NAME.Value;
    memDSBonhiemOLD_DEPT_NO.Value:=DecisionDM.qryChitietBonhiemDEPT_NO.Value;
    memDSBonhiemOLD_DEPT_NAME.Value:=DecisionDM.qryChitietBonhiemDEPT_NAME.Value;
    memDSBonhiemOLD_TITLE_NO.Value:=DecisionDM.qryChitietBonhiemTITLE_NO.Value;
    memDSBonhiemOLD_TITLE_NAME.Value:=DecisionDM.qryChitietBonhiemTITLE_NAME.Value;
    memDSBonhiemOLD_POSITION_NO.Value:=DecisionDM.qryChitietBonhiemPOSITION_NO.Value;
    memDSBonhiemOLD_ASSIGNED_DATE.Value:=DecisionDM.qryChitietBonhiemASSIGNED_DATE.Value;
    memDSBonhiemOLD_ENDED_DATE.Value:=DecisionDM.qryChitietBonhiemENDED_DATE.Value;
    memDSBonhiemOLD_IS_MAIN_POSITION.Value:=DecisionDM.qryChitietBonhiemIS_MAIN_POSITION.Value;
    memDSBonhiem.Post;
    DecisionDM.qryChitietBonhiem.Next;
  end;
  memDSBonhiem.EnableControls;
  DecisionDM.qryChitietBonhiem.EnableControls;
end;

procedure TfrmEmpPositionWizard.acInitFinalListExecute(Sender: TObject);
begin
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
end;

procedure TfrmEmpPositionWizard.FormCreate(Sender: TObject);
begin
  inherited;
  acLoadDSCanhan.Execute;
  acLoadDSBonhiem.Execute;
  acInitFinalList.Execute;
end;

procedure TfrmEmpPositionWizard.treeFinalCustomDrawCell(Sender: TObject;
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

procedure TfrmEmpPositionWizard.acAddUpdate(Sender: TObject);
begin
  inherited;
  acAdd.Enabled:=
   (
   (pageOrigin.ActivePage=tabDSCanhanCTN) and (gridDSCanhan.SelectedCount>0)
   or
   (pageOrigin.ActivePage=tabDSBonhiem) and (gridDSBonhiem.SelectedCount>0)
   )
   and (not memFinalDEPT_NO.IsNull) and (not memFinalTITLE_NO.IsNull);
  acAddAll.Enabled:=acAdd.Enabled;
end;

procedure TfrmEmpPositionWizard.acRemoveUpdate(Sender: TObject);
var i:integer;
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

procedure TfrmEmpPositionWizard.acAddExecute(Sender: TObject);
var i:integer;
    temp:string;
    temp_date:TDate;
begin
  inherited;
  memFinal.DisableControls;

  if pageOrigin.ActivePage=tabDSCanhanCTN then
  begin
    for i:=0 to gridDSCanhan.SelectedCount-1 do
    begin
      memFinal.Append;
      memFinalITEM_NO.Value:='E_'+VarToWideStr(gridDSCanhan.SelectedNodes[i].Values[gridDSCanhanEMPLOYEE_NO.Index]);
      memFinalITEM_NAME.Value:=VarToWideStr(gridDSCanhan.SelectedNodes[i].Values[gridDSCanhanFULL_NAME.Index]);
      memFinalP_ITEM_NO.Value:=F_CUR_ITEM_NO;
      memFinalIS_EMP.Value:=1;
      memFinal.FieldByname('EMPLOYEE_NO').Value:=gridDSCanhan.SelectedNodes[i].Values[gridDSCanhanEMPLOYEE_NO.Index];
      memFinalDEPT_NO.Value:=F_CUR_DEPT_NO;
      memFinalTITLE_NO.Value:=F_CUR_TITLE_NO;
      memFinalDEPT_NAME.Value:=F_CUR_DEPT_NAME;
      memFinalTITLE_NAME.Value:=F_CUR_TITLE_NAME;
      memFinalPOSITION_NO.Value:=F_CUR_TITLE_NO+'-'+F_CUR_DEPT_NO;
      memFinalASSIGNED_DATE.Value:=Today;
      memFinalIS_MAIN_POSITION.Value:=1;
      memFinal.Post;
    end;
    gridDSCanhan.DeleteSelection;
  end
  else
  if pageOrigin.ActivePage=tabDSBonhiem then
  begin
    for i:=0 to gridDSBonhiem.SelectedCount-1 do
    begin
      memFinal.Append;
      memFinalITEM_NO.Value:='E_'+VarToWideStr(gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemEMPLOYEE_NO.Index]);
      memFinalITEM_NAME.Value:=VarToWideStr(gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemFULL_NAME.Index]);
      memFinalP_ITEM_NO.Value:=F_CUR_ITEM_NO;
      memFinalIS_EMP.Value:=1;
      memFinal.FieldByname('EMPLOYEE_NO').Value:=gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemEMPLOYEE_NO.Index];

      memFinalDEPT_NO.Value:=F_CUR_DEPT_NO;
      memFinalTITLE_NO.Value:=F_CUR_TITLE_NO;
      memFinalDEPT_NAME.Value:=F_CUR_DEPT_NAME;
      memFinalTITLE_NAME.Value:=F_CUR_TITLE_NAME;
      memFinalPOSITION_NO.Value:=F_CUR_TITLE_NO+'-'+F_CUR_DEPT_NO;
      memFinal.FieldByName('ASSIGNED_DATE').Value:=gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemOLD_ASSIGNED_DATE.Index];
      memFinal.FieldByName('IS_MAIN_POSITION').Value:=gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemOLD_IS_MAIN_POSITION.Index];

      temp:=VarToStr(gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemOLD_ENDED_DATE.Index]);
      temp_date:=StrToDateDef(temp,0);
      if temp_date>0 then
      begin
        memFinal.FieldByName('ENDED_DATE').Value:=temp_date;
        memFinal.FieldByName('OLD_ENDED_DATE').Value:=temp_date;
      end;

      memFinal.FieldByName('OLD_DEPT_NO').Value:=gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemOLD_DEPT_NO.Index];
      memFinal.FieldByName('OLD_TITLE_NO').Value:=gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemOLD_TITLE_NO.Index];
      memFinal.FieldByName('OLD_DEPT_NAME').Value:=gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemOLD_DEPT_NAME.Index];
      memFinal.FieldByName('OLD_TITLE_NAME').Value:=gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemOLD_TITLE_NAME.Index];
      memFinal.FieldByName('OLD_POSITION_NO').Value:=gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemOLD_POSITION_NO.Index];
      memFinal.FieldByName('OLD_ASSIGNED_DATE').Value:=gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemOLD_ASSIGNED_DATE.Index];
      memFinal.FieldByName('OLD_IS_MAIN_POSITION').Value:=gridDSBonhiem.SelectedNodes[i].Values[gridDSBonhiemOLD_IS_MAIN_POSITION.Index];
      memFinal.Post;
    end;
    gridDSBonhiem.DeleteSelection;
  end;
  memFinal.EnableControls;
  treeFinal.Refresh;
end;

procedure TfrmEmpPositionWizard.memDSCanhanBeforeDelete(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TfrmEmpPositionWizard.memDSBonhiemBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TfrmEmpPositionWizard.memFinalBeforeDelete(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TfrmEmpPositionWizard.acAddAllExecute(Sender: TObject);
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

procedure TfrmEmpPositionWizard.acRemoveExecute(Sender: TObject);
var i:integer;
  temp:string;
  temp_date:TDate;
begin
  inherited;
  memFinal.DisableControls;
  memDSCanhan.DisableControls;
  memDSBonhiem.DisableControls;
  for i:=0 to treeFinal.SelectedCount-1 do
  begin
    if VarToStr(treeFinal.SelectedNodes[i].Values[treeFinalOLD_DEPT_NO.Index])='' then
    begin
      memDSCanhan.Append;
      memDSCanhan.FieldByName('EMPLOYEE_NO').Value:=treeFinal.SelectedNodes[i].Values[treeFinalEMPLOYEE_NO.Index];
      memDSCanhan.FieldByName('FULL_NAME').Value:=treeFinal.SelectedNodes[i].Values[treeFinalITEM_NAME.Index];
      memDSCanhan.Post;
    end
    else
    begin
      memDSBonhiem.Append;
      memDSBonhiem.FieldByName('EMPLOYEE_NO').Value:=treeFinal.SelectedNodes[i].Values[treeFinalEMPLOYEE_NO.Index];
      memDSBonhiem.FieldByName('FULL_NAME').Value:=treeFinal.SelectedNodes[i].Values[treeFinalITEM_NAME.Index];
      memDSBonhiem.FieldByName('OLD_DEPT_NO').Value:=treeFinal.SelectedNodes[i].Values[treeFinalOLD_DEPT_NO.Index];
      memDSBonhiem.FieldByName('OLD_DEPT_NAME').Value:=treeFinal.SelectedNodes[i].Values[treeFinalOLD_DEPT_NAME.Index];
      memDSBonhiem.FieldByName('OLD_TITLE_NO').Value:=treeFinal.SelectedNodes[i].Values[treeFinalOLD_TITLE_NO.Index];
      memDSBonhiem.FieldByName('OLD_TITLE_NAME').Value:=treeFinal.SelectedNodes[i].Values[treeFinalOLD_TITLE_NAME.Index];
      memDSBonhiem.FieldByName('OLD_POSITION_NO').Value:=treeFinal.SelectedNodes[i].Values[treeFinalOLD_POSITION_NO.Index];
      memDSBonhiem.FieldByName('OLD_ASSIGNED_DATE').Value:=treeFinal.SelectedNodes[i].Values[treeFinalOLD_ASSIGNED_DATE.Index];

      temp:=VarToStr(treeFinal.SelectedNodes[i].Values[treeFinalOLD_ENDED_DATE.Index]);
      temp_date:=StrToDateDef(temp,0);
      if temp_date>0 then
        memDSBonhiem.FieldByName('OLD_ENDED_DATE').Value:=temp_date;
      memDSBonhiem.FieldByName('OLD_IS_MAIN_POSITION').Value:=treeFinal.SelectedNodes[i].Values[treeFinalOLD_IS_MAIN_POSITION.Index];
      memDSBonhiem.Post;
    end;
  end;
  treeFinal.DeleteSelection;
  memFinal.EnableControls;
  memDSCanhan.EnableControls;
  memDSBonhiem.EnableControls;
end;

procedure TfrmEmpPositionWizard.acRemoveAllExecute(Sender: TObject);
begin
  inherited;
  memFinal.DisableControls;
  memDSCanhan.DisableControls;
  memDSBonhiem.DisableControls;

  memFinal.Last;
  while not memFinal.Bof do
  begin
    if memFinalIS_EMP.Value<>1 then
      memFinal.Prior
    else
    if memFinalOLD_DEPT_NO.IsNull then
    begin
      memDSCanhan.Append;
      memDSCanhanEMPLOYEE_NO.Value:=memFinalEMPLOYEE_NO.Value;
      memDSCanhanFULL_NAME.Value:=memFinalITEM_NAME.Value;
      memDSCanhan.Post;
      memFinal.Delete;
    end
    else
    begin
      memDSBonhiem.Append;
      memDSBonhiemEMPLOYEE_NO.Value:=memFinalEMPLOYEE_NO.Value;
      memDSBonhiemFULL_NAME.Value:=memFinalITEM_NAME.Value;
      memDSBonhiemOLD_DEPT_NO.Value:=memFinalOLD_DEPT_NO.Value;
      memDSBonhiemOLD_DEPT_NAME.Value:=memFinalOLD_DEPT_NAME.Value;
      memDSBonhiemOLD_TITLE_NO.Value:=memFinalOLD_TITLE_NO.Value;
      memDSBonhiemOLD_TITLE_NAME.Value:=memFinalOLD_TITLE_NAME.Value;
      memDSBonhiemOLD_POSITION_NO.Value:=memFinalOLD_POSITION_NO.Value;
      memDSBonhiemOLD_ASSIGNED_DATE.Value:=memFinalOLD_ASSIGNED_DATE.Value;
      memDSBonhiemOLD_ENDED_DATE.Value:=memFinalOLD_ENDED_DATE.Value;
      memDSBonhiemOLD_IS_MAIN_POSITION.Value:=memFinalOLD_IS_MAIN_POSITION.Value;
      memDSBonhiem.Post;
      memFinal.Delete;
    end;
  end;
  memFinal.EnableControls;
  memDSCanhan.EnableControls;
  memDSBonhiem.EnableControls;
end;

procedure TfrmEmpPositionWizard.acRemoveAllUpdate(Sender: TObject);
begin
  inherited;
  acRemoveALl.Enabled:=not memFinal.IsEmpty;
end;

procedure TfrmEmpPositionWizard.acBoquaExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;

procedure TfrmEmpPositionWizard.acChapnhanExecute(Sender: TObject);
begin
  inherited;
  memFinal.DisableControls;
  dmMain.RollbackTransaction;

  memFinal.First;
  while not memFinal.Eof do
  begin
    if memFinalIS_EMP.Value<>1 then
    else
    if memFinalOLD_DEPT_NO.IsNull then
    begin
      if memFinalASSIGNED_DATE.IsNull then
        qryInsert.ParamByName('ASSIGNED_DATE').Value:=Today
      else
        qryInsert.ParamByName('ASSIGNED_DATE').Value:=memFinalASSIGNED_DATE.Value;
      qryInsert.ParamByName('EMPLOYEE_NO').Value:=memFinalEMPLOYEE_NO.Value;
      qryInsert.ParamByName('POSITION_NO').Value:=memFinalPOSITION_NO.Value;
      if memFinalENDED_DATE.isNull then
        qryInsert.ParamByName('ENDED_DATE').Clear
      else
        qryInsert.ParamByName('ENDED_DATE').Value:=memFinalENDED_DATE.Value;
      qryInsert.ParamByName('IS_MAIN_POSITION').Value:=memFinalIS_MAIN_POSITION.Value;
      qryInsert.ParamByName('DECISION_NO').Value:=DecisionDM.qryDecisionsDECISION_NO.Value;
      try
        qryInsert.ExecSQL;
      except
      end;
    end
    else
    begin
      if memFinalASSIGNED_DATE.IsNull then
        qryUpdate.ParamByName('ASSIGNED_DATE').Value:=Today
      else
        qryUpdate.ParamByName('ASSIGNED_DATE').Value:=memFinalASSIGNED_DATE.Value;
      qryUpdate.ParamByName('EMPLOYEE_NO').Value:=memFinalEMPLOYEE_NO.Value;
      qryUpdate.ParamByName('POSITION_NO').Value:=memFinalPOSITION_NO.Value;
      qryUpdate.ParamByName('ENDED_DATE').Value:=memFinalENDED_DATE.Value;
      qryUpdate.ParamByName('IS_MAIN_POSITION').Value:=memFinalIS_MAIN_POSITION.Value;
      qryUpdate.ParamByName('DECISION_NO').Value:=DecisionDM.qryDecisionsDECISION_NO.Value;

      qryUpdate.ParamByName('OLD_ASSIGNED_DATE').Value:=memFinalOLD_ASSIGNED_DATE.Value;
      qryUpdate.ParamByName('OLD_EMPLOYEE_NO').Value:=memFinalEMPLOYEE_NO.Value;
      qryUpdate.ParamByName('OLD_POSITION_NO').Value:=memFinalOLD_POSITION_NO.Value;
      try
        qryUpdate.ExecSQL;
      except
      end;
    end;
    memFinal.Next;
  end;
  dmMain.CommitTransaction;
  memFinal.EnableControls;
  ModalResult:=mrOk;
 end;

procedure TfrmEmpPositionWizard.acChapnhanUpdate(Sender: TObject);
begin
  inherited;
  acChapnhan.Enabled:=(F_Size<memFinal.RecordCount);
end;

procedure TfrmEmpPositionWizard.treeFinalChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
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
end;

end.
