unit TrainingDeploymentForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, ExtCtrls, DB, IBODataset,
  dxExEdtr, ElPanel, ElSplit, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, dxGrClEx, ActnList, ElPgCtl, ImgList;

type
  TfrmTrainingDeployment = class(TfrmEditBase)
    panelTop: TPanel;
    dxlcMainItem2: TdxLayoutItem;
    qryTrainingPlan: TIBOQuery;
    dsTrainingPlan: TDataSource;
    gridTrainingPlan: TdxDBGrid;
    gridTrainingPlanPLAN_NO: TdxDBGridColumn;
    gridTrainingPlanPLAN_NAME: TdxDBGridColumn;
    gridTrainingPlanCREATE_DATE: TdxDBGridDateColumn;
    ElSplitter1: TElSplitter;
    dxDBGrid1: TdxDBGrid;
    qryClass: TIBOQuery;
    dsClass: TDataSource;
    qryClassPLAN_NO: TWideStringField;
    qryClassCLASS_NO: TWideStringField;
    qryClassSTUDENT_COUNT: TIntegerField;
    qryClassSTART_DATE: TDateField;
    qryClassEND_DATE: TDateField;
    qryTrainingPlanPLAN_NO: TWideStringField;
    qryTrainingPlanPLAN_NAME: TWideStringField;
    qryTrainingPlanCREATE_DATE: TDateField;
    gridStudent: TdxDBGrid;
    qryStudent: TIBOQuery;
    dsStudent: TDataSource;
    qryStudentPLAN_NO: TWideStringField;
    qryStudentCLASS_NO: TWideStringField;
    qryStudentEMPLOYEE_NO: TWideStringField;
    qryStudentFULL_NAME: TWideStringField;
    qryStudentGENDER: TSmallintField;
    qryStudentALLOWANCE: TIBOFloatField;
    qryStudentCURRENCY: TWideStringField;
    qryStudentCURRENCY_NAME: TWideStringField;
    qryStudentEDU_RESULT: TWideStringField;
    qryStudentNOTE: TWideStringField;
    gridStudentEMPLOYEE_NO: TdxDBGridColumn;
    gridStudentFULL_NAME: TdxDBGridPopupColumn;
    gridStudentGENDER: TdxDBGridImageColumn;
    gridStudentALLOWANCE: TdxDBGridCalcColumn;
    gridStudentCURRENCY_NAME: TdxDBGridPopupColumn;
    gridStudentNOTE: TdxDBGridColumn;
    dxDBGrid1CLASS_NO: TdxDBGridColumn;
    dxDBGrid1EDU_FIELD_NAME: TdxDBGridColumn;
    dxDBGrid1START_DATE: TdxDBGridDateColumn;
    dxDBGrid1END_DATE: TdxDBGridDateColumn;
    ActionList1: TActionList;
    acPhatsinh: TAction;
    gridStudentRESULT_RESULT: TdxDBGridPopupColumn;
    qryStudentRESULT_NAME: TWideStringField;
    ElSplitter2: TElSplitter;
    gridFee: TdxDBGrid;
    gridFeeFEE_NAME: TdxDBGridColumn;
    gridFeeTOTAL_VALUE: TdxDBGridCalcColumn;
    qryStudentFee: TIBOQuery;
    dsStudenFee: TDataSource;
    pageMain: TElPageControl;
    dxlcMainItem3: TdxLayoutItem;
    tabChiphi: TElTabSheet;
    tabKetqua: TElTabSheet;
    ImageList1: TImageList;
    gridResult: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridPopupColumn1: TdxDBGridPopupColumn;
    dxDBGridImageColumn1: TdxDBGridImageColumn;
    dxDBGridCalcColumn1: TdxDBGridCalcColumn;
    dxDBGridPopupColumn2: TdxDBGridPopupColumn;
    dxDBGridPopupColumn3: TdxDBGridPopupColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    qryResult: TIBOQuery;
    dsResult: TDataSource;
    qryResultPLAN_NO: TWideStringField;
    qryResultCLASS_NO: TWideStringField;
    qryResultEMPLOYEE_NO: TWideStringField;
    qryResultFULL_NAME: TWideStringField;
    qryResultGENDER: TSmallintField;
    qryResultALLOWANCE: TIBOFloatField;
    qryResultCURRENCY: TWideStringField;
    qryResultCURRENCY_NAME: TWideStringField;
    qryResultEDU_RESULT: TWideStringField;
    qryResultRESULT_NAME: TWideStringField;
    qryResultNOTE: TWideStringField;
    qryStudentFeePLAN_NO: TWideStringField;
    qryStudentFeeCLASS_NO: TWideStringField;
    qryStudentFeeEMPLOYEE_NO: TWideStringField;
    qryStudentFeeFEE_NO: TWideStringField;
    qryStudentFeeTOTAL_VALUE: TIBOFloatField;
    qryStudentFeeFEE_NAME: TWideStringField;
    qryExecute: TIBOQuery;
    qryClassCLASS_CONTENT: TWideStringField;
    qryStudentFROM_DATE: TDateField;
    qryStudentTO_DATE: TDateField;
    gridStudentFROM_DATE: TdxDBGridDateColumn;
    gridStudentTO_DATE: TdxDBGridDateColumn;
    dxDBGrid1STUDENT_COUNT: TdxDBGridColumn;
    acCapnhatChiphi: TAction;
    acChonNhanhNV: TAction;
    acGetSelectedEmployee: TAction;
    qryStudentNGAY_HETHAN_CAMKET_LV: TDateField;
    gridStudentNGAY_HETHAN_CAMKET_LV: TdxDBGridDateColumn;
    qryClassTG_CAMKET_LAMVIEC: TIBOFloatField;
    qryClassDV_CAMKET_LAMVIEC: TSmallintField;
    procedure gridStudentFULL_NAMEInitPopup(Sender: TObject);
    procedure gridStudentFULL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridStudentCURRENCY_NAMEInitPopup(Sender: TObject);
    procedure gridStudentCURRENCY_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridStudentRESULT_RESULTInitPopup(Sender: TObject);
    procedure gridStudentRESULT_RESULTCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure acPhatsinhUpdate(Sender: TObject);
    procedure qryStudentAfterPost(DataSet: TDataSet);
    procedure pageMainChanging(Sender: TObject; NewPage: TElTabSheet;
      var AllowChange: Boolean);
    procedure qryStudentFeeNewRecord(DataSet: TDataSet);
    procedure acCapnhatChiphiExecute(Sender: TObject);
    procedure acPhatsinhExecute(Sender: TObject);
    procedure acChonNhanhNVExecute(Sender: TObject);
    procedure acChonNhanhNVUpdate(Sender: TObject);
    procedure acGetSelectedEmployeeExecute(Sender: TObject);
    procedure gridStudentDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure acCapnhatChiphiUpdate(Sender: TObject);
    procedure qryStudentNewRecord(DataSet: TDataSet);
    procedure qryStudentTO_DATEChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrainingDeployment: TfrmTrainingDeployment;

implementation

uses MainDM, EmpInfoDataModule, PopupMainForm, SSP_Library,  ChonNV_PAForm;

{$R *.dfm}

procedure TfrmTrainingDeployment.gridStudentFULL_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.dxDBGrid17.OptionsBehavior:=
    frmPopupMain.dxDBGrid17.OptionsBehavior+[edgoMultiSelect];
  //Edited by THUYPTP - 28/4/2009
  //frmPopupMain.qryEmpForSelect.Open;
  frmPopupMain.dximOptionChange(sender);
  //Het
  InitPopupControl('dxlcEmpForSelect',frmPopupMain,sender,2.5,gridStudent);
end;

procedure TfrmTrainingDeployment.gridStudentFULL_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
var i:integer;
begin
  inherited;
  if frmPopupMain.dxDBGrid17.SelectedCount<=1 then
  OnPopupCloseUp(Accept,frmPopupMain.qryEmpForSelect,qryStudent,
               'EMPLOYEE_NO;FULL_NAME;GENDER','EMPLOYEE_NO;FULL_NAME;GENDER',
               'FULL_NAME',Text)
  else
  if Accept then
  begin
    qryStudent.DisableControls;
    for i:=0 to frmPopupMain.dxDBGrid17.SelectedCount-1 do
    begin
      if not(qryStudent.State in [dsInsert,dsEdit]) then
        qryStudent.Append;
      qryStudent.FieldByName('EMPLOYEE_NO').Value:=
        frmPopupMain.dxDBGrid17.SelectedNodes[i].Values[frmPopupMain.dxDBGrid17EMPLOYEE_NO.Index];
      qryStudent.FieldByName('FULL_NAME').Value:=
        frmPopupMain.dxDBGrid17.SelectedNodes[i].Values[frmPopupMain.dxDBGrid17FULL_NAME.Index];
      qryStudent.FieldByName('GENDER').Value:=
        frmPopupMain.dxDBGrid17.SelectedNodes[i].Values[frmPopupMain.dxDBGrid17GENDER.Index];
      try
        qryStudent.Post;
      except
        qryStudent.Cancel;
      end;
    end;
    qryStudent.EnableControls;
  end;
  frmPopupMain.qryEmpForSelect.Close;
  frmPopupMain.dxDBGrid17.OptionsBehavior:=
    frmPopupMain.dxDBGrid17.OptionsBehavior-[edgoMultiSelect];
end;

procedure TfrmTrainingDeployment.FormCreate(Sender: TObject);
begin
  inherited;
  qryTrainingPlan.Open;
  qryClass.Open;
  qryStudent.Open;
  qryStudentFee.Open;
  qryresult.Open;
  frameToolbar1.SetDataSource(dsStudent);
end;

procedure TfrmTrainingDeployment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryStudentFee.Close;
  qryStudent.Close;
  qryResult.Close;
  qryClass.Close;
  qryTrainingPlan.Close;
  if Assigned(frmChonNV_PA) then
    frmChonNV_PA.Close;
end;

procedure TfrmTrainingDeployment.gridStudentCURRENCY_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryCurrencyList.Open;
  InitPopupControl('dxlcCurrencyList',frmPopupMain,sender,2,gridStudent);
end;

procedure TfrmTrainingDeployment.gridStudentCURRENCY_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupMain.qryCurrencyList,qryStudent,
               'CURRENCY_NO;CURRENCY_NAME','CURRENCY;CURRENCY_NAME',
               'CURRENCY_NAME',Text);
    frmPopupMain.qryCurrencyList.Close;
end;

procedure TfrmTrainingDeployment.gridStudentRESULT_RESULTInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryTrainingResult.Open;
  InitPopupControl('dxlcTrainingResult',frmPopupMain,sender,2,gridResult);
end;

procedure TfrmTrainingDeployment.gridStudentRESULT_RESULTCloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupMain.qryTrainingResult,qryResult,
               'RESULT_NO;RESULT_NAME','EDU_RESULT;RESULT_NAME',
               'RESULT_NAME',Text);
    frmPopupMain.qryTrainingResult.Close;
end;

procedure TfrmTrainingDeployment.acPhatsinhUpdate(Sender: TObject);
begin
  inherited;
  acPhatsinh.Enabled:=not qryStudent.IsEmpty;
end;

procedure TfrmTrainingDeployment.qryStudentAfterPost(DataSet: TDataSet);
begin
  inherited;
  acPhatsinh.Execute;
  dmMain.DefOnAfterPost(dataset);
end;

procedure TfrmTrainingDeployment.pageMainChanging(Sender: TObject;
  NewPage: TElTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if pageMain.ActivePage=tabKetqua then
    qryResult.Refresh;
end;

procedure TfrmTrainingDeployment.qryStudentFeeNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryStudentFROM_DATE.Value:=qryClassSTART_DATE.Value;
  if not qryClassEND_DATE.IsNull then
    qryStudentTO_DATE.Value:=qryClassEND_DATE.Value;
end;

procedure TfrmTrainingDeployment.acCapnhatChiphiExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  qryExecute.SQL.Text:=
  'execute procedure hr_training_class_fee_update(:plan_no,:class_no)';
  qryExecute.Prepare;
  qryExecute.ParamByName('PLAN_NO').Value:=qryClassPLAN_NO.Value;
  qryExecute.ParamByName('CLASS_NO').Value:=qryClassCLASS_NO.Value;
  dmMain.ExecuteSQL(qryExecute);
  qryStudent.Refresh;
  Screen.Cursor:=crDefault;
end;

procedure TfrmTrainingDeployment.acPhatsinhExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  qryExecute.SQL.Text:=
  'execute procedure HR_TRAINING_PERSON_FEE_GEN(:plan_no,:class_no, :employee_no)';
  qryExecute.Prepare;
  qryExecute.ParamByName('PLAN_NO').Value:=qryClassPLAN_NO.Value;
  qryExecute.ParamByName('CLASS_NO').Value:=qryClassCLASS_NO.Value;
  qryExecute.ParamByName('employee_no').Value:= qryStudentEMPLOYEE_NO.Value;
  dmMain.ExecuteSQL(qryExecute);
  qryStudentFee.Refresh;
  Screen.Cursor:=crDefault;
end;

procedure TfrmTrainingDeployment.acChonNhanhNVExecute(Sender: TObject);
begin
  inherited;
  if not assigned(frmChonNV_PA) then
    frmChonNV_PA:=TfrmChonNV_PA.Create(self);
  frmChonNV_PA.Show;
end;

procedure TfrmTrainingDeployment.acChonNhanhNVUpdate(Sender: TObject);
begin
  inherited;
  acChonNhanhNV.Enabled := not (qryClass.IsEmpty);
end;

procedure TfrmTrainingDeployment.acGetSelectedEmployeeExecute(
  Sender: TObject);
begin
  inherited;
  if not Assigned(frmChonNV_PA) then exit;
  if frmChonNV_PA.memData.IsEmpty then exit;
  frmChonNV_PA.memData.First;
  qryStudent.DisableControls;
  while not frmChonNV_PA.memData.Eof do
  begin
    if not (qryStudent.State in [dsInsert]) then
      qryStudent.Append;
    qryStudentPLAN_NO.Value:=qryTrainingPlanPLAN_NO.Value;
    qryStudentCLASS_NO.Value:=qryClassCLASS_NO.Value;
    qryStudent.FieldByName('EMPLOYEE_NO').Value:=frmChonNV_PA.memData.FieldByName('EMP_NO').Value;
    qryStudent.FieldByName('FULL_NAME').Value:=frmChonNV_PA.memData.FieldByName('FULL_NAME').Value;
    qryStudentFROM_DATE.Value := qryClassSTART_DATE.Value; 
    TRY
      qryStudent.Post;
    EXCEPT
      qryStudent.Cancel;
    END;
    frmChonNV_PA.memData.Next;
  end;
  qryStudent.EnableControls;
end;

procedure TfrmTrainingDeployment.gridStudentDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  if Assigned(frmChonNV_PA) then
    frmChonNV_PA.SetFocusForm(self);
end;

procedure TfrmTrainingDeployment.acCapnhatChiphiUpdate(Sender: TObject);
begin
  inherited;
  acCapnhatChiphi.Enabled:=not qryStudent.IsEmpty;
end;

procedure TfrmTrainingDeployment.qryStudentNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryStudentFROM_DATE.Value := qryClassSTART_DATE.Value;
end;

procedure TfrmTrainingDeployment.qryStudentTO_DATEChange(Sender: TField);
begin
  inherited;
  qryStudentNGAY_HETHAN_CAMKET_LV.Value :=
    qryStudentTO_DATE.Value + qryClassTG_CAMKET_LAMVIEC.Value * qryClassDV_CAMKET_LAMVIEC.Value;       
end;

end.
