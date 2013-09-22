unit WageMethodForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ToolbarFrame,
  dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ElPanel, ExtCtrls, ElSplit,
  ImgList, ElPgCtl, dxLayoutControl, cxControls, ElBtnCtl, ElPopBtn, DB,
  IBODataset, dxDBTLCl, dxGrClms, ActnList;

type
  TfrmWageMethod = class(TfrmBase)
    frameToolbar1: TframeToolbar;
    pageLeft: TElPageControl;
    tabWageMethod: TElTabSheet;
    ImageList1: TImageList;
    ElSplitter1: TElSplitter;
    panelRight: TElPanel;
    gridWageMethod: TdxDBGrid;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    Splitter1: TSplitter;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    gridWageMethodDetail: TdxDBGrid;
    dxLayoutControl1Group2: TdxLayoutGroup;
    gridRemainDetail: TdxDBGrid;
    dxLayoutControl2Item1: TdxLayoutItem;
    qryWageMethod: TIBOQuery;
    dsWageMethod: TDataSource;
    qryWageMethodMETHOD_NO: TWideStringField;
    qryWageMethodMETHOD_NAME: TWideStringField;
    qryWageMethodMETHOD_NOTE: TWideStringField;
    gridWageMethodMETHOD_NO: TdxDBGridColumn;
    gridWageMethodMETHOD_NAME: TdxDBGridColumn;
    gridWageMethodMETHOD_NOTE: TdxDBGridColumn;
    qryWageMethodDetail: TIBOQuery;
    dsWageMethodDetail: TDataSource;
    qryRemainDetail: TIBOQuery;
    dsRemainDetail: TDataSource;
    qryWageMethodDetailMETHOD_NO: TWideStringField;
    qryWageMethodDetailFORMULAR_NO: TWideStringField;
    qryWageMethodDetailFORMULAR_NAME: TWideStringField;
    qryWageMethodDetailORDER_INDEX: TIntegerField;
    qryWageMethodDetailIS_PLUS: TSmallintField;
    qryWageMethodDetailIS_MAIN_WAGE: TSmallintField;
    qryWageMethodDetailIS_DISPLAYED: TSmallintField;
    qryRemainDetailFORMULAR_NO: TWideStringField;
    qryRemainDetailFORMULAR_NAME: TWideStringField;
    qryRemainDetailORDER_INDEX: TIntegerField;
    gridWageMethodDetailFORMULAR_NAME: TdxDBGridColumn;
    gridWageMethodDetailORDER_INDEX: TdxDBGridColumn;
    gridWageMethodDetailIS_PLUS: TdxDBGridCheckColumn;
    gridWageMethodDetailIS_MAIN_WAGE: TdxDBGridCheckColumn;
    gridWageMethodDetailIS_MINUS: TdxDBGridCheckColumn;
    gridRemainDetailFORMULAR_NO: TdxDBGridColumn;
    gridRemainDetailFORMULAR_NAME: TdxDBGridColumn;
    gridRemainDetailORDER_INDEX: TdxDBGridColumn;
    ActionList1: TActionList;
    acAddFormulars: TAction;
    acRemoveFormulars: TAction;
    qryExecute: TIBOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    IntegerField1: TIntegerField;
    gridWageMethodDetailFORMULAR_NO: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridWageMethodDetailEnter(Sender: TObject);
    procedure acAddFormularsExecute(Sender: TObject);
    procedure acRemoveFormularsExecute(Sender: TObject);
    procedure qryWageMethodDetailBeforeDelete(DataSet: TDataSet);
    procedure acAddFormularsUpdate(Sender: TObject);
    procedure acRemoveFormularsUpdate(Sender: TObject);
    procedure gridWageMethodDetailIS_PLUSToggleClick(Sender: TObject;
      const Text: WideString; State: TdxCheckBoxState);
    procedure gridWageMethodDetailIS_MINUSToggleClick(Sender: TObject;
      const Text: WideString; State: TdxCheckBoxState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWageMethod: TfrmWageMethod;

implementation

uses MainDM, MainUnit;

{$R *.dfm}

procedure TfrmWageMethod.FormCreate(Sender: TObject);
begin
  inherited;
  qryWageMethod.Open;
  qryWageMethodDetail.Open;
  qryRemainDetail.Open;
  frameToolbar1.SetDataSource(dsWageMethod);
end;

procedure TfrmWageMethod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmMain.MsgChangeDataSource(dsWageMethod);
  dmMain.MsgChangeDataSource(dsWageMethodDetail,false);
  qryWageMethodDetail.Close;
  qryRemainDetail.Close;
  qryWageMethod.Close;

end;

procedure TfrmWageMethod.gridWageMethodDetailEnter(Sender: TObject);
begin
  inherited;
  if dmMain.MsgChangeDataSource(dsWageMethod)=false then
    gridWageMethod.SetFocus;
end;

procedure TfrmWageMethod.acAddFormularsExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  dmmain.RollbackTransaction;
  qryExecute.SQL.Text :=
    'insert into hr_wage_method_detail( method_no,formular_no,is_plus)' +
    ' values(:method_no,:formular_no,1)';
  frmMain.SetStatusBarPrgDisplay(0, gridRemainDetail.SelectedCount);
  for i := 0 to gridRemainDetail.SelectedCount - 1 do
  begin
    qryExecute.ParamByName('METHOD_NO').Value :=
      qryWageMethodMETHOD_NO.Value;
    qryExecute.ParamByName('FORMULAR_NO').Value :=
      gridRemainDetail.SelectedNodes[i].Values[gridRemainDetailFORMULAR_NO.Index];
    try
      frmMain.BarPrgStepIt;
      dmMain.ExecuteSQL(qryExecute);
    except
    end;
  end;
  dmmain.CommitTransaction;
  qryWageMethodDetail.Refresh;
  qryRemainDetail.Refresh;
  Screen.Cursor := crDefault;
end;

procedure TfrmWageMethod.acRemoveFormularsExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  try
    gridWageMethodDetail.DeleteSelection;
  except
  end;

  qryWageMethodDetail.Refresh;
  qryRemainDetail.Refresh;
  Screen.Cursor := crDefault;

end;


procedure TfrmWageMethod.qryWageMethodDetailBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  //
end;

procedure TfrmWageMethod.acAddFormularsUpdate(Sender: TObject);
begin
  inherited;
  acAddFormulars.Enabled:=(gridRemainDetail.SelectedCount>0);
end;

procedure TfrmWageMethod.acRemoveFormularsUpdate(Sender: TObject);
begin
  inherited;
  acRemoveFormulars.Enabled:=(gridWageMethodDetail.SelectedCount>0);
end;

procedure TfrmWageMethod.gridWageMethodDetailIS_PLUSToggleClick(
  Sender: TObject; const Text: WideString; State: TdxCheckBoxState);
begin
  inherited;
  if not ( qryWageMethodDetail.State in [dsEdit,dsInsert]) then
    qryWageMethodDetail.Edit;
  if not (qryWageMethodDetailIS_PLUS.IsNull) then
    qryWageMethodDetailIS_PLUS.Value:=-qryWageMethodDetailIS_PLUS.Value;
  qryWageMethodDetail.Post;
end;

procedure TfrmWageMethod.gridWageMethodDetailIS_MINUSToggleClick(
  Sender: TObject; const Text: WideString; State: TdxCheckBoxState);
begin
  inherited;
  if not ( qryWageMethodDetail.State in [dsEdit,dsInsert]) then
    qryWageMethodDetail.Edit;
  if not (qryWageMethodDetailIS_PLUS.IsNull) then
    qryWageMethodDetailIS_PLUS.Value:=-qryWageMethodDetailIS_PLUS.Value;
  qryWageMethodDetail.Post;
end;

end.
