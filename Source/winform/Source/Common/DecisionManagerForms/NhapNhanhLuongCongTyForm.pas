unit NhapNhanhLuongCongTyForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, dxExEdtr, DB, IBODataset, dxmdaset, ActnList, dxCntner,
  dxEditor, dxEdLib, ElPgCtl, dxDBTLCl, dxDBCtrl, dxDBTL, ExtCtrls,
  dxLayoutControl, ElBtnCtl, ElPopBtn, dxTL, dxDBGrid, cxControls,
  ElCaption, ElXPThemedControl, ElStatBar;

type
  TfrmNhapNhanhLuongCongTy = class(TfrmBase)
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
    treeFinalRecId: TdxDBTreeListColumn;
    treeFinalITEM_NO: TdxDBTreeListMaskColumn;
    treeFinalP_ITEM_NO: TdxDBTreeListMaskColumn;
    treeFinalITEM_NAME: TdxDBTreeListMaskColumn;
    treeFinalIS_EMP: TdxDBTreeListMaskColumn;
    treeFinalEMPLOYEE_NO: TdxDBTreeListMaskColumn;
    treeFinalWAGE_SCALE: TdxDBTreeListMaskColumn;
    treeFinalWAGE_LEVEL: TdxDBTreeListMaskColumn;
    treeFinalWAGE_COEFF: TdxDBTreeListMaskColumn;
    treeFinalWAGE_ITEM: TdxDBTreeListMaskColumn;
    treeFinalTHANG_APDUNG: TdxDBTreeListSpinColumn;
    treeFinalNAM_APDUNG: TdxDBTreeListSpinColumn;
    treeFinalKY_APDUNG: TdxDBTreeListSpinColumn;
    pageOrigin: TElPageControl;
    tabDSCanhanCTN: TElTabSheet;
    gridDSCanhan: TdxDBGrid;
    gridDSCanhanEMPLOYEE_NO: TdxDBGridColumn;
    gridDSCanhanFULL_NAME: TdxDBGridColumn;
    gridDSCanhanWAGE_SCALE: TdxDBGridColumn;
    gridDSCanhanWAGE_LEVEL: TdxDBGridColumn;
    gridDSCanhanWAGE_COEFF: TdxDBGridColumn;
    dxCareer: TdxEdit;
    dxWage: TdxEdit;
    ElPopupButton5: TElPopupButton;
    ElPopupButton8: TElPopupButton;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dsFinal: TDataSource;
    ActionList1: TActionList;
    acAdd: TAction;
    acAddAll: TAction;
    acRemove: TAction;
    acRemoveAll: TAction;
    acLoadDSCanhan: TAction;
    acInitFinalList: TAction;
    acChapnhan: TAction;
    acBoqua: TAction;
    memDSCanhan: TdxMemData;
    memDSCanhanEMPLOYEE_NO: TWideStringField;
    memDSCanhanFULL_NAME: TWideStringField;
    memDSCanhanWAGE_SCALE: TWideStringField;
    memDSCanhanWAGE_LEVEL: TIntegerField;
    memDSCanhanWAGE_COEFF: TFloatField;
    dsDSCanhan: TDataSource;
    qryInsertWageDetail: TIBOQuery;
    qryCareer: TIBOQuery;
    qryCareerWAGE_SCALE: TWideStringField;
    qryCareerCAREER_NAME: TWideStringField;
    qryCareerWAGE_LEVEL: TIntegerField;
    qryCareerWAGE_COEFF: TIBOFloatField;
    qryCareerWAGE_ITEM: TWideStringField;
    memFinal: TdxMemData;
    memFinalITEM_NO: TWideStringField;
    memFinalP_ITEM_NO: TWideStringField;
    memFinalITEM_NAME: TWideStringField;
    memFinalIS_EMP: TIntegerField;
    memFinalEMPLOYEE_NO: TWideStringField;
    memFinalWAGE_SCALE: TWideStringField;
    memFinalWAGE_LEVEL: TIntegerField;
    memFinalWAGE_COEFF: TFloatField;
    memFinalWAGE_ITEM: TWideStringField;
    memFinalTHANG_APDUNG: TSmallintField;
    memFinalNAM_APDUNG: TIntegerField;
    memFinalKY_APDUNG: TSmallintField;
    qryDSCaNhan: TIBOQuery;
    qryDSCaNhanEMPLOYEE_NO: TWideStringField;
    qryDSCaNhanFULL_NAME: TWideStringField;
    qryDSCaNhanWAGE_SCALE: TWideStringField;
    qryDSCaNhanWAGE_LEVEL: TIntegerField;
    qryDSCaNhanWAGE_COEFF: TIBOFloatField;
    qryInsertWageChange: TIBOQuery;
    qryInsertWageChangeCHANGE_NO: TWideStringField;
    procedure acLoadDSCanhanExecute(Sender: TObject);
    procedure acInitFinalListExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure treeFinalCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure acAddExecute(Sender: TObject);
    procedure acAddAllExecute(Sender: TObject);
    procedure treeFinalChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure acRemoveExecute(Sender: TObject);
    procedure acRemoveAllExecute(Sender: TObject);
    procedure acBoquaExecute(Sender: TObject);
    procedure acAddUpdate(Sender: TObject);
    procedure acRemoveUpdate(Sender: TObject);
    procedure acRemoveAllUpdate(Sender: TObject);
    procedure memDSCanhanBeforeDelete(DataSet: TDataSet);
    procedure memFinalBeforeDelete(DataSet: TDataSet);
    procedure acChapnhanExecute(Sender: TObject);
  private
    { Private declarations }
    F_CUR_CAREER_NO, F_CUR_ITEM_NO,F_CUR_WAGE_SCALE,F_CUR_WAGE_ITEM: Widestring;
    F_CUR_WAGE_LEVEL, F_SIZE : integer;
    F_CUR_WAGE_COEFF : Double;
  public
    { Public declarations }
  end;

var
  frmNhapNhanhLuongCongTy: TfrmNhapNhanhLuongCongTy;

implementation

uses MainDM, DecisionDataModule, SSP_Library, DateUtils;

{$R *.dfm}

procedure TfrmNhapNhanhLuongCongTy.acLoadDSCanhanExecute(
  Sender: TObject);
begin
  inherited;
  if qryDSCaNhan.Active then qryDSCaNhan.Close;
  qryDSCaNhan.ParamByName('DECISION_NO').Value :=  DecisionDM.qryDecisionsDECISION_NO.Value;
  qryDSCaNhan.ParamByName('DECISION_DATE').Value :=  DecisionDM.qryDecisionsDECISION_DATE.Value;
  qryDSCaNhan.open;

  if qryDSCaNhan.IsEmpty then exit;
  qryDSCaNhan.DisableControls;
  memDSCanhan.DisableControls;
  if memDSCanhan.Active then memDSCanhan.Close;
  memDSCanhan.Open;
  qryDSCaNhan.First;
  while not qryDSCaNhan.Eof do
  begin
    memDSCanhan.Append;
    memDSCanhanEMPLOYEE_NO.Value:=qryDSCaNhanEMPLOYEE_NO.Value;
    memDSCanhanFULL_NAME.Value:=qryDSCaNhanFULL_NAME.Value;
    memDSCanhanWAGE_SCALE.Value:=qryDSCaNhanWAGE_SCALE.Value;
    memDSCanhanWAGE_LEVEL.Value:=qryDSCaNhanWAGE_LEVEL.Value;
    memDSCanhanWAGE_COEFF.Value:=qryDSCaNhanWAGE_COEFF.Value;
    memDSCanhan.Post;
    qryDSCaNhan.Next;
  end;
  memDSCanhan.EnableControls;
  qryDSCaNhan.EnableControls;
end;

procedure TfrmNhapNhanhLuongCongTy.acInitFinalListExecute(
  Sender: TObject);
begin
  inherited;
  memFinal.DisableControls;
  if memFinal.Active then memFinal.Close;
  qryCareer.Open;
  if not qryCareer.IsEmpty then
  begin
    memFinal.Open;
    qryCareer.First;
    while not qryCareer.Eof do
    begin
      if F_CUR_CAREER_NO<>qryCareerWAGE_SCALE.Value then
      begin
        memFinal.Append;
        memFinalITEM_NO.Value:='D_'+qryCareerWAGE_SCALE.Value;
        //if not qryCareerP_DEPT_NO.IsNull then
        //  memFinalP_ITEM_NO.Value:='D_'+qryCareerP_DEPT_NO.Value;
        memFinalITEM_NAME.Value:=qryCareerCAREER_NAME.Value;
        memFinalWAGE_SCALE.Value:=qryCareerWAGE_SCALE.Value;
        memFinalIS_EMP.Value:=3;
        memFinalWAGE_LEVEL.Value:=0;
        memFinalWAGE_COEFF.Value:=0;
        memFinalWAGE_ITEM.Value:=qryCareerCAREER_NAME.Value;
        memFinal.Post;
        F_CUR_CAREER_NO:=qryCareerWAGE_SCALE.Value;
        F_CUR_WAGE_LEVEL:=0;
      end;
      if (not qryCareerWAGE_LEVEL.IsNull) and
         (F_CUR_WAGE_LEVEL<>qryCareerWAGE_LEVEL.Value) then
      begin
        memFinal.Append;
        memFinalITEM_NO.Value:='D_'+qryCareerWAGE_SCALE.Value+'_T_'+qryCareerWAGE_ITEM.Value;
        memFinalP_ITEM_NO.Value:='D_'+qryCareerWAGE_SCALE.Value;
        memFinalITEM_NAME.Value:=qryCareerWAGE_ITEM.Value;
        memFinalWAGE_SCALE.Value:=qryCareerWAGE_SCALE.Value;
        memFinalWAGE_LEVEL.Value:=qryCareerWAGE_LEVEL.Value;
        memFinalWAGE_COEFF.Value:=qryCareerWAGE_COEFF.Value;
        memFinalWAGE_ITEM.Value:=qryCareerCAREER_NAME.Value;
        memFinalIS_EMP.Value:=2;
        memFinal.Post;
        F_CUR_WAGE_LEVEL:=qryCareerWAGE_LEVEL.Value
      end;
      qryCareer.Next;
    end;
  end;
  qryCareer.Close;
  memFinal.EnableControls;
  F_Size:=memFinal.RecordCount;
  treeFinal.FullCollapse;
end;

procedure TfrmNhapNhanhLuongCongTy.FormCreate(Sender: TObject);
begin
  inherited;
  acLoadDSCanhan.Execute;
  acInitFinalList.Execute;
end;

procedure TfrmNhapNhanhLuongCongTy.treeFinalCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
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

procedure TfrmNhapNhanhLuongCongTy.acAddExecute(Sender: TObject);
var
  i : integer;
begin
  inherited;
  memFinal.DisableControls;
  begin
    for i:=0 to gridDSCanhan.SelectedCount-1 do
    begin
      memFinal.Append;
      memFinalITEM_NO.Value:='E_'+VarToWideStr(gridDSCanhan.SelectedNodes[i].Values[gridDSCanhanEMPLOYEE_NO.Index]);
      memFinalITEM_NAME.Value:=VarToWideStr(gridDSCanhan.SelectedNodes[i].Values[gridDSCanhanFULL_NAME.Index]);
      memFinalP_ITEM_NO.Value:=F_CUR_ITEM_NO;
      memFinalIS_EMP.Value:=1;
      memFinal.FieldByname('EMPLOYEE_NO').Value:=gridDSCanhan.SelectedNodes[i].Values[gridDSCanhanEMPLOYEE_NO.Index];
      memFinalWAGE_SCALE.Value:=F_CUR_WAGE_SCALE;
      memFinalWAGE_LEVEL.Value:=F_CUR_WAGE_LEVEL;
      memFinalWAGE_COEFF.Value:=F_CUR_WAGE_COEFF;
      memFinalWAGE_ITEM.Value:=F_CUR_WAGE_ITEM;
      memFinalTHANG_APDUNG.Value:= MonthOf(DecisionDM.qryDecisionsDECISION_DATE.Value);
      memFinalNAM_APDUNG.Value:= YearOf(DecisionDM.qryDecisionsDECISION_DATE.Value);
      memFinalKY_APDUNG.Value:= 1;
      memFinal.Post;
    end;
    gridDSCanhan.DeleteSelection;
  end;
  memFinal.EnableControls;
  treeFinal.Refresh;
end;

procedure TfrmNhapNhanhLuongCongTy.acAddAllExecute(Sender: TObject);
begin
  inherited;
  gridDSCanhan.SelectAll;
  acAdd.Execute;
end;

procedure TfrmNhapNhanhLuongCongTy.treeFinalChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  dxCareer.Text:=VarToWideStr(Node.Values[treeFinalWAGE_ITEM.Index]);
  dxWage.Text:=VarToWideStr(Node.Values[treeFinalITEM_NAME.Index]);

  if Node.Values[treeFinalIS_EMP.Index]=1 then
    F_CUR_ITEM_NO:=VarToWideStr(Node.Values[treeFinalP_ITEM_NO.Index])
  else
    F_CUR_ITEM_NO:=VarToWideStr(Node.Values[treeFinalITEM_NO.Index]);
  F_CUR_WAGE_SCALE:=VarToWideStr(Node.Values[treeFinalWAGE_SCALE.Index]);
  F_CUR_WAGE_LEVEL:= StrToIntDef(VarToStr(Node.Values[treeFinalWAGE_LEVEL.Index]),0);
  F_CUR_WAGE_COEFF:= StrToFloatDef(VarToStr(Node.Values[treeFinalWAGE_COEFF.Index]),0);
  F_CUR_WAGE_ITEM:=VarToWideStr(Node.Values[treeFinalWAGE_ITEM.Index]);
end;

procedure TfrmNhapNhanhLuongCongTy.acRemoveExecute(Sender: TObject);
var i:integer;
  temp:string;
  temp_date:TDate;
begin
  inherited;
  memFinal.DisableControls;
  memDSCanhan.DisableControls;
  for i:=0 to treeFinal.SelectedCount-1 do
  begin
      memDSCanhan.Append;
      memDSCanhan.FieldByName('EMPLOYEE_NO').Value:=treeFinal.SelectedNodes[i].Values[treeFinalEMPLOYEE_NO.Index];
      memDSCanhan.FieldByName('FULL_NAME').Value:=treeFinal.SelectedNodes[i].Values[treeFinalITEM_NAME.Index];
      memDSCanhan.Post;
  end;
  treeFinal.DeleteSelection;
  memFinal.EnableControls;
  memDSCanhan.EnableControls;
end;

procedure TfrmNhapNhanhLuongCongTy.acRemoveAllExecute(Sender: TObject);
begin
  inherited;
  memFinal.DisableControls;
  memDSCanhan.DisableControls;

  memFinal.Last;
  while not memFinal.Bof do
  begin
    if memFinalIS_EMP.Value<>1 then
      memFinal.Prior
    else
    begin
      memDSCanhan.Append;
      memDSCanhanEMPLOYEE_NO.Value:=memFinalEMPLOYEE_NO.Value;
      memDSCanhanFULL_NAME.Value:=memFinalITEM_NAME.Value;
      memDSCanhan.Post;
      memFinal.Delete;
    end;
  end;
  memFinal.EnableControls;
  memDSCanhan.EnableControls;
end;

procedure TfrmNhapNhanhLuongCongTy.acBoquaExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;

procedure TfrmNhapNhanhLuongCongTy.acAddUpdate(Sender: TObject);
begin
  inherited;
  acAdd.Enabled:=(gridDSCanhan.SelectedCount>0)
  and (not memFinalWAGE_SCALE.IsNull) and (not memFinalWAGE_ITEM.IsNull);
  acAddAll.Enabled:=acAdd.Enabled;
end;

procedure TfrmNhapNhanhLuongCongTy.acRemoveUpdate(Sender: TObject);
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

procedure TfrmNhapNhanhLuongCongTy.acRemoveAllUpdate(Sender: TObject);
begin
  inherited;
  acRemoveALL.Enabled:=not memFinal.IsEmpty;
end;

procedure TfrmNhapNhanhLuongCongTy.memDSCanhanBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TfrmNhapNhanhLuongCongTy.memFinalBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TfrmNhapNhanhLuongCongTy.acChapnhanExecute(Sender: TObject);
begin
  inherited;
  memFinal.DisableControls;

  //Them dot thay doi luong vao bang HR_WAGE_STANDARD_CHANGE
  if  qryInsertWageChange.Active then qryInsertWageChange.Close;
  qryInsertWageChange.ParamByName('DECISION_NO').Value :=  DecisionDM.qryDecisionsDECISION_NO.Value;
  qryInsertWageChange.ParamByName('DECISION_DATE').Value :=  DecisionDM.qryDecisionsDECISION_DATE.Value;
  qryInsertWageChange.ParamByName('DECISION_NAME').Value :=  DecisionDM.qryDecisionsDECISION_TITLE.Value;
  qryInsertWageChange.Open; 
  dmMain.CommitTransaction;

  //Them chi tiet tang luong vao bang HR_WAGE_STANDARD_DETAIL
  memFinal.First;
  while not memFinal.Eof do
  begin
    if memFinalIS_EMP.Value<>1 then
    else
    begin
      qryInsertWageDetail.ParamByName('CHANGE_NO').Value := qryInsertWageChangeCHANGE_NO.Value;
      qryInsertWageDetail.ParamByName('EMPLOYEE_NO').Value := memFinalEMPLOYEE_NO.Value;
      qryInsertWageDetail.ParamByName('WAGE_SCALE').Value := memFinalWAGE_SCALE.Value;
      qryInsertWageDetail.ParamByName('WAGE_LEVEL').Value := memFinalWAGE_LEVEL.Value;
      qryInsertWageDetail.ParamByName('WAGE_COEFF').Value := memFinalWAGE_COEFF.Value;
      qryInsertWageDetail.ParamByName('APPLY_MONTH').Value := memFinalTHANG_APDUNG.Value;
      qryInsertWageDetail.ParamByName('APPLY_YEAR').Value := memFinalNAM_APDUNG.Value;
      qryInsertWageDetail.ParamByName('APPLY_PERIOD').Value := memFinalKY_APDUNG.Value;
      try
        dmMain.ExecuteSQL(qryInsertWageDetail);
      except
      end;
    end;
    memFinal.Next;
  end;
  dmMain.CommitTransaction;
  memFinal.EnableControls;
  ModalResult:=mrOk;
end;

end.
