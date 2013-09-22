unit KetChuyenCongTacForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  dxEdLib, dxCntner, dxEditor, dxDBELib, dxLayoutControl, ElBtnCtl,
  ElPopBtn, cxControls, DB, IBODataset, ActnList;

type
  TfrmKetChuyenCongTac = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxToDate: TdxDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxFromDate: TdxDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxViewAll: TdxCheckEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    ActionList1: TActionList;
    qryExe: TIBOQuery;
    dxOrg: TdxPopupEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    procedure dxOrgInitPopup(Sender: TObject);
    procedure dxOrgCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxOrgChange(Sender: TObject);
    procedure qryExeBeforeOpen(DataSet: TDataSet);
    procedure ElPopupButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DEPT_NO :string;
  end;

var
  frmKetChuyenCongTac: TfrmKetChuyenCongTac;

implementation

uses MainDM, PopupMainForm, SSP_Library;

{$R *.dfm}

procedure TfrmKetChuyenCongTac.dxOrgInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList',frmPopupMain,sender,2);
end;

procedure TfrmKetChuyenCongTac.dxOrgCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text:=frmPopupMain.qryDeptListDEPT_NAME.Value;
    DEPT_NO:=frmPopupMain.qryDeptListDEPT_NO.Value;
  end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmKetChuyenCongTac.dxOrgChange(Sender: TObject);
begin
  inherited;
  if length(dxOrg.Text)=0 then
    DEPT_NO:='';
end;

procedure TfrmKetChuyenCongTac.qryExeBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryExe.ParamByName('USER_NAME').Value := sysConfig.User;
  qryExe.ParamByName('DEPT_NO').Value := DEPT_NO;
  if dxViewAll.Checked then
    qryExe.ParamByName('VIEW_ALL').Value := 1
  else
    qryExe.ParamByName('VIEW_ALL').Value := 0;
  qryExe.ParamByName('FROM_DATE').Value := dxFromDate.Date;
  qryExe.ParamByName('TO_DATE').Value := dxToDate.Date;

end;

procedure TfrmKetChuyenCongTac.ElPopupButton1Click(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  qryExe.Open;
  ModalResult := mrOk;
  Screen.Cursor := crDefault;
end;

end.
