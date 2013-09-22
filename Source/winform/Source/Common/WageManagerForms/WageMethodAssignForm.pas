unit WageMethodAssignForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  ElPanel, ExtCtrls, ElSplit, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ElPgCtl,
  dxLayoutControl, ElBtnCtl, ElPopBtn, cxControls, ImgList, DB, IBODataset,
  ActnList, dxEditor, dxEdLib;

type
  TfrmWageMethodAssign = class(TfrmBase)
    pageLeft: TElPageControl;
    tabWageMethod: TElTabSheet;
    gridWageMethod: TdxDBGrid;
    gridWageMethodMETHOD_NO: TdxDBGridColumn;
    gridWageMethodMETHOD_NAME: TdxDBGridColumn;
    ElSplitter1: TElSplitter;
    pageRight: TElPageControl;
    tabSelectGroup: TElTabSheet;
    tabSelectEmp: TElTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    gridGroup: TdxDBGrid;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    Splitter1: TSplitter;
    dxLayoutControl2: TdxLayoutControl;
    gridGroupNoChange: TdxDBGrid;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl3: TdxLayoutControl;
    ElPopupButton3: TElPopupButton;
    ElPopupButton4: TElPopupButton;
    gridEmp: TdxDBGrid;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    Splitter2: TSplitter;
    dxLayoutControl4: TdxLayoutControl;
    gridEmpNoChange: TdxDBGrid;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    qryWageMethod: TIBOQuery;
    qryWageMethodMETHOD_NO: TWideStringField;
    qryWageMethodMETHOD_NAME: TWideStringField;
    qryWageMethodMETHOD_NOTE: TWideStringField;
    dsWageMethod: TDataSource;
    imlDetail: TImageList;
    qryGroup: TIBOQuery;
    dsGroup: TDataSource;
    qryEmployee: TIBOQuery;
    dsEmployee: TDataSource;
    qryGroupNoChange: TIBOQuery;
    dsGroupNoChange: TDataSource;
    qryEmpNoChange: TIBOQuery;
    dsEmpNoChange: TDataSource;
    qryGroupOBJECT_NO: TWideStringField;
    qryGroupSTRUCTURE_NAME: TWideStringField;
    qryGroupEMPLOYEE_COUNT: TIntegerField;
    gridGroupSTRUCTURE_NAME: TdxDBGridColumn;
    gridGroupEMPLOYEE_COUNT: TdxDBGridColumn;
    gridGroupNoChangeSTRUCTURE_NO: TdxDBGridColumn;
    gridGroupNoChangeSTRUCTURE_NAME: TdxDBGridColumn;
    gridGroupNoChangeEMPLOYEE_COUNT: TdxDBGridColumn;
    qryExecute: TIBOQuery;
    ActionList1: TActionList;
    acGroupUp: TAction;
    acGroupDown: TAction;
    acEmpUp: TAction;
    acEmpDown: TAction;
    qryEmpNoChangeEMP_NO: TWideStringField;
    qryEmpNoChangeFULL_NAME: TWideStringField;
    qryEmpNoChangeTITLE_NAME: TWideStringField;
    qryEmpNoChangeDEPT_NAME: TWideStringField;
    qryEmployeeOBJECT_NO: TWideStringField;
    qryEmployeeFULL_NAME: TWideStringField;
    qryEmployeeTITLE_NAME: TWideStringField;
    qryEmployeeDEPT_NAME: TWideStringField;
    gridEmpOBJECT_NO: TdxDBGridColumn;
    gridEmpFULL_NAME: TdxDBGridColumn;
    gridEmpTITLE_NAME: TdxDBGridColumn;
    gridEmpDEPT_NAME: TdxDBGridColumn;
    gridEmpNoChangeEMP_NO: TdxDBGridColumn;
    gridEmpNoChangeFULL_NAME: TdxDBGridColumn;
    gridEmpNoChangeTITLE_NAME: TdxDBGridColumn;
    gridEmpNoChangeDEPT_NAME: TdxDBGridColumn;
    gridGroupOBJECT_NO: TdxDBGridColumn;
    dxLayoutControl3Item1: TdxLayoutItem;
    imOption: TdxImageEdit;
    dxLayoutControl3Group1: TdxLayoutGroup;
    constructor Create(AOwner:TComponent;CHANGE_NO:WideString);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acGroupUpExecute(Sender: TObject);
    procedure acGroupDownExecute(Sender: TObject);
    procedure acGroupUpUpdate(Sender: TObject);
    procedure acGroupDownUpdate(Sender: TObject);
    procedure imOptionChange(Sender: TObject);
    procedure acEmpUpExecute(Sender: TObject);
    procedure acEmpDownExecute(Sender: TObject);
    procedure acEmpUpUpdate(Sender: TObject);
    procedure acEmpDownUpdate(Sender: TObject);
  private
    { Private declarations }
    CHANGE_ID:WideString;
    is_init_form:boolean;
    something_change:boolean;
  public
    { Public declarations }
  end;

var
  frmWageMethodAssign: TfrmWageMethodAssign;

implementation

uses MainDM, MainUnit;

{$R *.dfm}

constructor TfrmWageMethodAssign.Create(AOwner:TComponent;CHANGE_NO:WideString);
begin
  inherited Create(AOwner);
  something_change:=false;
  is_init_form:=true;
  imOption.Descriptions.Add(Utf8Decode('Đang làm việc'));
  imOption.Descriptions.Add(Utf8Decode('Đã thôi việc'));
  imOption.Descriptions.Add(Utf8Decode('Tất cả'));

  imOption.Values.Add('0');
  imOption.Values.Add('1');
  imOption.Values.Add('2');

  imOption.Text:='0';
  is_init_form:=false;
  CHANGE_ID:=CHANGE_NO;
  qryWageMethod.Open;
  qryGroup.ParamByName('CHANGE_NO').Value:=CHANGE_ID;
  qryGroup.Open;
  qryGroupNoChange.ParamByName('CHANGE_NO').Value:=CHANGE_ID;
  qryGroupNoChange.Open;
  qryEmployee.ParamByName('CHANGE_NO').Value:=CHANGE_ID;
  qryEmployee.ParamByName('IS_DISMISSED').Value:=imOption.Text;
  qryEmployee.Open;
  qryEmpNoChange.ParamByName('CHANGE_NO').Value:=CHANGE_ID;
  qryEmpNoChange.ParamByName('IS_DISMISSED').Value:=imOption.Text;
  qryEmpNoChange.Open;
end;
procedure TfrmWageMethodAssign.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryGroup.Close;
  qryGroupNoChange.Close;
  qryEmployee.Close;
  qryEmpNoChange.Close;
  qryWageMethod.Close;
  if something_change then
    ModalResult:=mrOk
  else
    ModalResult:=mrCancel;
end;

procedure TfrmWageMethodAssign.acGroupUpExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  dmmain.RollbackTransaction;
  qryExecute.SQL.Text :=
    'insert into hr_wage_assign_detail( object_no,method_no,change_no,object_type)' +
    ' values(:object_no,:method_no,:change_no,''GROUP'')';
  frmMain.SetStatusBarPrgDisplay(0, gridGroupNoChange.SelectedCount);
  for i := 0 to gridGroupNoChange.SelectedCount - 1 do
  begin
    qryExecute.ParamByName('METHOD_NO').Value :=
      qryWageMethodMETHOD_NO.Value;
    qryExecute.ParamByName('OBJECT_NO').Value :=
      gridGroupNoChange.SelectedNodes[i].Values[gridGroupNoChangeSTRUCTURE_NO.Index];
    qryExecute.ParamByName('CHANGE_NO').Value :=CHANGE_ID;
    try
      frmMain.BarPrgStepIt;
      dmMain.ExecuteSQL(qryExecute);
    except
    end;
  end;
  dmmain.CommitTransaction;
  qryGroup.Refresh;
  qryGroupNoChange.Refresh;
  Screen.Cursor := crDefault;
  something_change:=true;
end;
procedure TfrmWageMethodAssign.acGroupDownExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  dmmain.RollbackTransaction;
  qryExecute.SQL.Text := 'delete from hr_wage_assign_detail ' +
    ' where (object_no=:object_no) and (method_no=:method_no) '+
    ' and (change_no=:change_no) and (object_type=''GROUP'') ';
  frmMain.SetStatusBarPrgDisplay(0, gridGroup.SelectedCount);
  for i := 0 to gridGroup.SelectedCount - 1 do
  begin
    qryExecute.ParamByName('METHOD_NO').Value :=
      qryWageMethodMETHOD_NO.Value;
    qryExecute.ParamByName('OBJECT_NO').Value :=
      gridGroup.SelectedNodes[i].Values[gridGroupOBJECT_NO.Index];
    qryExecute.ParamByName('CHANGE_NO').Value :=CHANGE_ID;
    try
      frmMain.BarPrgStepIt;
      dmMain.ExecuteSQL(qryExecute);
    except
    end;
  end;
  dmmain.CommitTransaction;
  qryGroup.Refresh;
  qryGroupNoChange.Refresh;
  Screen.Cursor := crDefault;
  something_change:=true;
end;

procedure TfrmWageMethodAssign.acGroupUpUpdate(Sender: TObject);
begin
  inherited;
  acGroupUp.Enabled:=(gridGroupNoChange.SelectedCount>0);
end;

procedure TfrmWageMethodAssign.acGroupDownUpdate(Sender: TObject);
begin
  inherited;
  acGroupDown.Enabled:=(gridGroup.SelectedCount>0);
end;

procedure TfrmWageMethodAssign.imOptionChange(Sender: TObject);
begin
  inherited;
  if is_init_form then exit; 
  qryEmployee.ParamByName('IS_DISMISSED').Value:=imOption.Text;
  qryEmployee.Refresh;
  qryEmpNoChange.ParamByName('IS_DISMISSED').Value:=imOption.Text;
  qryEmpNoChange.Refresh;
end;

procedure TfrmWageMethodAssign.acEmpUpExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  dmmain.RollbackTransaction;
  qryExecute.SQL.Text :=
    'insert into hr_wage_assign_detail( object_no,method_no,change_no,object_type)' +
    ' values(:object_no,:method_no,:change_no,''PERSON'')';
  frmMain.SetStatusBarPrgDisplay(0, gridEmpNoChange.SelectedCount);
  for i := 0 to gridEmpNoChange.SelectedCount - 1 do
  begin
    qryExecute.ParamByName('METHOD_NO').Value :=
      qryWageMethodMETHOD_NO.Value;
    qryExecute.ParamByName('OBJECT_NO').Value :=
      gridEmpNoChange.SelectedNodes[i].Values[gridEmpNoChangeEMP_NO.Index];
    qryExecute.ParamByName('CHANGE_NO').Value :=CHANGE_ID;
    try
      frmMain.BarPrgStepIt;
      dmMain.ExecuteSQL(qryExecute);
    except
    end;
  end;
  dmmain.CommitTransaction;
  qryEmployee.Refresh;
  qryEmpNoChange.Refresh;
  Screen.Cursor := crDefault;
  something_change:=true;
end;

procedure TfrmWageMethodAssign.acEmpDownExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  dmmain.RollbackTransaction;
  qryExecute.SQL.Text := 'delete from hr_wage_assign_detail ' +
    ' where (object_no=:object_no) and (method_no=:method_no) '+
    ' and (change_no=:change_no) and (object_type=''PERSON'') ';
  frmMain.SetStatusBarPrgDisplay(0, gridEmp.SelectedCount);
  for i := 0 to gridEmp.SelectedCount - 1 do
  begin
    qryExecute.ParamByName('METHOD_NO').Value :=
      qryWageMethodMETHOD_NO.Value;
    qryExecute.ParamByName('OBJECT_NO').Value :=
      gridEmp.SelectedNodes[i].Values[gridEmpOBJECT_NO.Index];
    qryExecute.ParamByName('CHANGE_NO').Value :=CHANGE_ID;
    try
      frmMain.BarPrgStepIt;
      dmMain.ExecuteSQL(qryExecute);
    except
    end;
  end;
  dmmain.CommitTransaction;
  qryEmployee.Refresh;
  qryEmpNoChange.Refresh;
  Screen.Cursor := crDefault;
  something_change:=true;
end;


procedure TfrmWageMethodAssign.acEmpUpUpdate(Sender: TObject);
begin
  inherited;
  acEmpUp.Enabled:=(gridEmpNoChange.SelectedCount>0);
end;

procedure TfrmWageMethodAssign.acEmpDownUpdate(Sender: TObject);
begin
  inherited;
  acEmpDown.Enabled:=(gridEmp.SelectedCount>0); 
end;

end.
