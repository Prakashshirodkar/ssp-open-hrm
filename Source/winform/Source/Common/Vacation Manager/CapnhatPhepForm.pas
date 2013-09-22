unit CapnhatPhepForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  dxEdLib, dxLayoutControl, dxCntner, dxEditor, cxControls, ActnList,
  ElBtnCtl, ElPopBtn, DB, IBODataset;

type
  TfrmCapnhatPhep = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxSelectDept: TdxPopupEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    chkCreateChild: TdxCheckEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxInYear: TdxSpinEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    ActionList1: TActionList;
    acPhatsinh: TAction;
    acBoqua: TAction;
    dxLayoutControl1Group3: TdxLayoutGroup;
    qryExecute: TIBOQuery;
    procedure FormCreate(Sender: TObject);
    procedure dxSelectDeptInitPopup(Sender: TObject);
    procedure dxSelectDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectDeptChange(Sender: TObject);
    procedure acBoquaExecute(Sender: TObject);
    procedure acPhatsinhExecute(Sender: TObject);
  private
    { Private declarations }
    F_Dept_No,F_Dept_Name:widestring;
    F_Create_Child:boolean;
    F_In_Year:integer;
  public
    { Public declarations }
    constructor Create(AOwner:TComponent; Dept_no,Dept_name:Widestring;CreateChild:boolean;InYear:integer);
  end;

var
  frmCapnhatPhep: TfrmCapnhatPhep;

implementation

uses MainDM, PopupMainForm, SSP_Library;

{$R *.dfm}
constructor TfrmCapnhatPhep.Create(AOwner:TComponent; Dept_no,Dept_name:Widestring;CreateChild:boolean;InYear:integer);
begin
  F_Dept_No:=Dept_no;
  F_Dept_Name:=Dept_name;
  F_Create_Child:=CreateChild;
  F_In_Year:=InYear;
  inherited Create(AOwner);
end;
procedure TfrmCapnhatPhep.FormCreate(Sender: TObject);
begin
  inherited;
  dxSelectDept.Text:=F_Dept_Name;
  if F_Create_Child then
    chkCreateChild.Checked:=true
  else
    chkCreateChild.Checked:=false;
  dxInYear.IntValue:=F_In_Year;
end;

procedure TfrmCapnhatPhep.dxSelectDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2.5);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmCapnhatPhep.dxSelectDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    F_Dept_No:=frmPopupMain.qryDeptListDEPT_NO.Value;
    F_Dept_Name:=frmPopupMain.qryDeptListDEPT_NAME.Value;
    Text:=frmPopupMain.qryDeptListDEPT_NAME.Value;
  end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmCapnhatPhep.dxSelectDeptChange(Sender: TObject);
begin
  inherited;
  if dxSelectDept.Text='' then
  begin
    F_Dept_No:='';
    F_Dept_Name:='';
  end;
end;

procedure TfrmCapnhatPhep.acBoquaExecute(Sender: TObject);
begin
  inherited;
  Modalresult:=mrCancel;
end;

procedure TfrmCapnhatPhep.acPhatsinhExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  qryExecute.ParamByName('USER_NAME').Value:=sysConfig.User;
  qryExecute.ParamByName('DEPT_NO').Value:=F_Dept_No;
  if chkCreateChild.Checked then
    qryExecute.ParamByName('VIEW_ALL').Value:=1
  else
    qryExecute.ParamByName('VIEW_ALL').Value:=0;
    qryExecute.ParamByName('AT_YEAR').Value:=dxInyear.IntValue;
  try
    qryExecute.ExecSQL;
    ShowMessageUnicode(39);
    Screen.Cursor:=crDefault;
    ModalResult:=mrOk
  except

  end;
  Screen.Cursor:=crDefault;
end;

end.
