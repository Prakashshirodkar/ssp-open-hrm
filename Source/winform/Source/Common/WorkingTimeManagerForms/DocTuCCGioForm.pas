unit DocTuCCGioForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, ElBtnCtl, ElPopBtn, dxExEdtr, dxEdLib,
  dxCntner, dxEditor, ActnList, DB, IBODataset;

type
  TfrmDocTuCCGio = class(TfrmBase)
    ActionList1: TActionList;
    acOk: TAction;
    acCancel: TAction;
    qryCCTongGio_Active: TIBOQuery;
    dxLayoutControl1: TdxLayoutControl;
    dxSelectDept: TdxPopupEdit;
    dxViewall: TdxCheckEdit;
    dxTuNgay: TdxDateEdit;
    dxDenNgay: TdxDateEdit;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    procedure acOkExecute(Sender: TObject);
    procedure acCancelExecute(Sender: TObject);
    procedure dxSelectDeptInitPopup(Sender: TObject);
    procedure dxSelectDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectDeptChange(Sender: TObject);
  private
    { Private declarations }
    F_DEPT_NO,F_DEPT_NAME: Widestring;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; DEPT_NO, DEPT_NAME: WideString; FROM_DATE, TO_DATE: TDate);
  end;

var
  frmDocTuCCGio: TfrmDocTuCCGio;

implementation

uses MainDM, PopupMainForm, SSP_Library;

{$R *.dfm}

constructor TfrmDocTuCCGio.Create(AOwner: TComponent; DEPT_NO, DEPT_NAME: WideString; FROM_DATE, TO_DATE: TDate);
begin
  F_DEPT_NO := DEPT_NO;
  F_DEPT_NAME := DEPT_NAME;
  inherited Create(AOwner);
  dxSelectDept.Text := F_DEPT_NAME;
  dxTuNgay.Date := FROM_DATE;
  dxDenNgay.Date := TO_DATE; 
end;

procedure TfrmDocTuCCGio.acOkExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if qryCCTongGio_Active.Active then
    qryCCTongGio_Active.Close;
  dmMain.DefOnBeforeOpen(qryCCTongGio_Active);
  qryCCTongGio_Active.ParamByName('USER_NAME').Value := sysConfig.User;
  qryCCTongGio_Active.ParamByName('DEPT_NO').Value :=F_DEPT_NO;
  if dxViewall.Checked then
    qryCCTongGio_Active.ParamByName('VIEW_ALL').Value := 1
  else
    qryCCTongGio_Active.ParamByName('VIEW_ALL').Value := 0;
  qryCCTongGio_Active.ParamByName('TU_NGAY').Value := dxTuNgay.Date;
  qryCCTongGio_Active.ParamByName('DEN_NGAY').Value := dxDenNgay.Date;

  try
    qryCCTongGio_Active.Open;
    ShowMessageUnicode(39);
    Screen.Cursor := crDefault;
    ModalResult := mrOk
  except 
  end;
end;

procedure TfrmDocTuCCGio.acCancelExecute(Sender: TObject);
begin
  inherited;
  Modalresult := mrCancel;
end;

procedure TfrmDocTuCCGio.dxSelectDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2.5);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmDocTuCCGio.dxSelectDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    F_Dept_No := frmPopupMain.qryDeptListDEPT_NO.Value;
    F_Dept_Name := frmPopupMain.qryDeptListDEPT_NAME.Value;
    Text := frmPopupMain.qryDeptListDEPT_NAME.Value;
  end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmDocTuCCGio.dxSelectDeptChange(Sender: TObject);
begin
  inherited;
  if dxSelectDept.Text = '' then
  begin
    F_Dept_No := '';
    F_Dept_Name := '';
  end;
end;

end.
