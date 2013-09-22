unit KT_CC_TonggioForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, dxExEdtr, DBActns, ActnList, DB, IBODataset,
  dxLayoutControl, dxCntner, dxEditor, dxEdLib, dxDBTLCl, dxGrClms,
  dxDBGrid, ElBtnCtl, ElPopBtn, ExtCtrls, ElPanel, ElSplit, dxTL, dxDBCtrl,
  dxDBTL, cxControls, ElCaption, ElXPThemedControl, ElStatBar;

type
  TfrmKT_CC_Tonggio = class(TfrmBase)
    ElStatusBar1: TElStatusBar;
    dxLayoutControl1: TdxLayoutControl;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeList1DEPT_NO: TdxDBTreeListMaskColumn;
    dxDBTreeList1DEPT_NAME: TdxDBTreeListMaskColumn;
    dxDBTreeList1P_DEPT_NO: TdxDBTreeListMaskColumn;
    ElSplitter1: TElSplitter;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    gridCCThieu: TdxDBGrid;
    gridCCThieuEMPLOYEE_NO: TdxDBGridMaskColumn;
    gridCCThieuWORK_DATE: TdxDBGridDateColumn;
    gridCCThieuCHAM_CONG: TdxDBGridCheckColumn;
    ElPopupButton3: TElPopupButton;
    dxInMonth: TdxSpinEdit;
    dxInYear: TdxSpinEdit;
    ElPopupButton4: TElPopupButton;
    ElPopupButton5: TElPopupButton;
    ElPopupButton6: TElPopupButton;
    griddsnv: TdxDBGrid;
    griddsnvEMP_NO: TdxDBGridMaskColumn;
    griddsnvFULL_NAME: TdxDBGridMaskColumn;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    qryCCthieu: TIBOQuery;
    qryCCthieuEMPLOYEE_NO: TWideStringField;
    qryCCthieuWORK_DATE: TDateField;
    qryCCthieuCHAM_CONG: TSmallintField;
    dsCCthieu: TDataSource;
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    acPri: TAction;
    acXem: TAction;
    acNext: TAction;
    qryExecute: TIBOQuery;
    dsDSNv: TDataSource;
    qryDsNV: TIBOQuery;
    qryDsNVEMP_NO: TWideStringField;
    qryDsNVFULL_NAME: TWideStringField;
    CheckAll: TdxCheckEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    qryCCthieuTHU: TSmallintField;
    gridCCThieuTHU: TdxDBGridImageColumn;
    procedure qryDsNVBeforeOpen(DataSet: TDataSet);
    procedure qryCCthieuBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acXemExecute(Sender: TObject);
    procedure acPriExecute(Sender: TObject);
    procedure acNextExecute(Sender: TObject);
    procedure qryCCthieuAfterPost(DataSet: TDataSet);
    procedure dxDBTreeList1ChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure CheckAllChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKT_CC_Tonggio: TfrmKT_CC_Tonggio;

implementation

uses MainDM, WorkTimeManagerForm;

{$R *.dfm}

procedure TfrmKT_CC_Tonggio.qryDsNVBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  dmMain.DefOnBeforeOpen(qryDsNV);
  qryDsNV.ParamByName('THANG').Value := StrToInt(frmWorkTimeManager.dxInMonth.Text);
  qryDsNV.ParamByName('NAM').Value := frmWorkTimeManager.dxInYear.IntValue;
  if CheckAll.Checked then
    qryDsNV.ParamByName('VIEW_ALL').Value := 1
  else
    qryDsNV.ParamByName('VIEW_ALL').Value := 0;
end;

procedure TfrmKT_CC_Tonggio.qryCCthieuBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryCCthieu.ParamByName('THANG').Value := dxInMonth.IntValue;
  qryCCthieu.ParamByName('NAM').Value := dxInYear.IntValue;
  
 // ShowMessage(VarToStr(qryCCthieu.ParamByName('THANG').Value));
end;

procedure TfrmKT_CC_Tonggio.FormCreate(Sender: TObject);
begin
  inherited;
  qryDsNV.open;
  
end;

procedure TfrmKT_CC_Tonggio.FormShow(Sender: TObject);
begin
  inherited;
  
//  ShowMessage(IntToStr(dxInYear.IntValue));
//  ShowMessage(qryCCthieu.SQL.Text);
  qryCCthieu.open;
end;

procedure TfrmKT_CC_Tonggio.acXemExecute(Sender: TObject);
begin
  inherited;
  if qryCCthieu.Active then
    qryCCthieu.Close;
  qryCCthieu.Open;  
end;

procedure TfrmKT_CC_Tonggio.acPriExecute(Sender: TObject);
begin
  inherited;
    if dxInMonth.IntValue = 1 then
  begin
    dxInMonth.IntValue := 12;
    dxInYear.IntValue := dxInYear.IntValue -1;
  end
  else
  begin
    dxInMonth.IntValue := dxInMonth.IntValue -1;
  end;
  acXem.Execute;
end;

procedure TfrmKT_CC_Tonggio.acNextExecute(Sender: TObject);
begin
  inherited;
  if dxInMonth.IntValue = 12 then
  begin
    dxInMonth.IntValue := 1;
    dxInYear.IntValue := dxInYear.IntValue +1;
  end
  else
  begin
    dxInMonth.IntValue := dxInMonth.IntValue +1;
  end;
  acXem.Execute;
end;

procedure TfrmKT_CC_Tonggio.qryCCthieuAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryExecute.Active then
    qryExecute.Close;
  dmMain.DefOnBeforeOpen(qryExecute);
  qryExecute.ParamByName('DEPT_NO').Value := frmWorkTimeManager.qryOrgMapDEPT_NO.Value;
  if CheckAll.Checked then
    qryExecute.ParamByName('VIEW_ALL').Value := 1
  else
    qryExecute.ParamByName('VIEW_ALL').Value := 0;

  qryExecute.open;
  qryExecute.close;
//  qryCCthieu.Refresh;    
end;

procedure TfrmKT_CC_Tonggio.dxDBTreeList1ChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  qryDsNV.Close;
  qryDsNV.Open;
end;

procedure TfrmKT_CC_Tonggio.CheckAllChange(Sender: TObject);
begin
  inherited;
  qryDsNV.Close;
  qryDsNV.Open;
end;

procedure TfrmKT_CC_Tonggio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmWorkTimeManager.acView.Execute;
end;

end.
