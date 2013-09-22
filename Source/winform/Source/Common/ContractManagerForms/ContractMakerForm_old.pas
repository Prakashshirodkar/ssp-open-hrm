unit ContractMakerForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ToolbarFrame,
  ElPgCtl, dxLayoutControl, cxControls, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, dxCntner, ElBtnCtl, ElPopBtn, ActnList, DB, TypInfo,
  dxTL, dxDBCtrl, dxDBGrid, StdCtrls, ElCLabel, ElLabel, ImgList, dxDBTLCl,
  dxGrClms, dxmdaset, IBODataset;

type
  TfrmContractMaker = class(TfrmBase)
    frameToolbar1: TframeToolbar;
    pageMain: TElPageControl;
    tabNoidungHD: TElTabSheet;
    tabDieukhoanChitiet: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDBPopupEdit1: TdxDBPopupEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxDBPopupEdit2: TdxDBPopupEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxDBPopupEdit3: TdxDBPopupEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxDBDateEdit1: TdxDBDateEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxDBDateEdit2: TdxDBDateEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxDBPopupEdit5: TdxDBPopupEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    ActionList1: TActionList;
    dxDBMemo1: TdxDBMemo;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    OpenDialog1: TOpenDialog;
    dxDBPopupEdit4: TdxDBPopupEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxDBPopupEdit6: TdxDBPopupEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxDBDateEdit3: TdxDBDateEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxDBDateEdit4: TdxDBDateEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxDBEdit4: TdxDBEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    acChitietBonhiemSETDS: TAction;
    acChitietDieukhoanSETDS: TAction;
    acNoidungHDSETDS: TAction;
    dxDBEdit6: TdxDBEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxDBEdit7: TdxDBEdit;
    dxLayoutControl2Item7: TdxLayoutItem;
    dxDBEdit8: TdxDBEdit;
    dxLayoutControl2Item8: TdxLayoutItem;
    dxLayoutControl2Group5: TdxLayoutGroup;
    dxDBMemo2: TdxDBMemo;
    dxLayoutControl2Item9: TdxLayoutItem;
    dxLayoutControl2Group6: TdxLayoutGroup;
    dxLayoutControl2Group8: TdxLayoutGroup;
    tabHesoDikemHopdong: TElTabSheet;
    dxLayoutControl10: TdxLayoutControl;
    gridFormalParam: TdxDBGrid;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    ImageList1: TImageList;
    gridFormalParamPARAM_NO: TdxDBGridColumn;
    gridFormalParamPARAM_NAME: TdxDBGridColumn;
    gridFormalParamPARAM_VALUE: TdxDBGridCalcColumn;
    gridFormalParamNOTE: TdxDBGridColumn;
    acChitietHesoDikem: TAction;
    acPhatsinhHesoDikem: TAction;
    dxLayoutControl2Group4: TdxLayoutGroup;
    qryGenerateFormalParam: TIBOQuery;
    dxLayoutControl10Group1: TdxLayoutGroup;
    dxCHANGE_NO: TdxDBEdit;
    dxLayoutControl10Item1: TdxLayoutItem;
    dxDBEdit9: TdxDBEdit;
    dxLayoutControl10Item2: TdxLayoutItem;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxLayoutControl10Item3: TdxLayoutItem;
    dxDBSpinEdit2: TdxDBSpinEdit;
    dxLayoutControl10Item4: TdxLayoutItem;
    dxDBSpinEdit3: TdxDBSpinEdit;
    dxLayoutControl10Item5: TdxLayoutItem;
    dxWAGE_SCALE: TdxDBPopupEdit;
    dxLayoutControl10Item6: TdxLayoutItem;
    dxDBEdit10: TdxDBEdit;
    dxLayoutControl10Item7: TdxLayoutItem;
    dxDBCalcEdit1: TdxDBCalcEdit;
    dxLayoutControl10Item8: TdxLayoutItem;
    dxDBEdit11: TdxDBEdit;
    dxLayoutControl10Item9: TdxLayoutItem;
    dxLayoutControl10Group7: TdxLayoutGroup;
    dxLayoutControl10Group2: TdxLayoutGroup;
    dxDBPopupEdit7: TdxDBPopupEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBCalcEdit2: TdxDBCalcEdit;
    dxDBEdit12: TdxDBEdit;
    dxLayoutControl10Group3: TdxLayoutGroup;
    dxLayoutControl10Item10: TdxLayoutItem;
    dxLayoutControl10Item11: TdxLayoutItem;
    dxLayoutControl10Item12: TdxLayoutItem;
    dxLayoutControl10Item13: TdxLayoutItem;
    chkViTriChinh: TdxDBCheckEdit;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    procedure dxDBPopupEdit2InitPopup(Sender: TObject);
    procedure dxDBPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit1InitPopup(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit3InitPopup(Sender: TObject);
    procedure dxDBPopupEdit3CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit5InitPopup(Sender: TObject);
    procedure dxDBPopupEdit5CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit4InitPopup(Sender: TObject);
    procedure dxDBPopupEdit4CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure pageMainChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acChitietBonhiemSETDSExecute(Sender: TObject);
    procedure acNoidungHDSETDSExecute(Sender: TObject);
    procedure dxDBPopupEdit6InitPopup(Sender: TObject);
    procedure dxDBPopupEdit6CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure acChitietDieukhoanSETDSExecute(Sender: TObject);
    procedure acChitietHesoDikemExecute(Sender: TObject);
    procedure acPhatsinhHesoDikemUpdate(Sender: TObject);
    procedure acPhatsinhHesoDikemExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frameToolbar1btnCloseClick(Sender: TObject);
    procedure pageMainChanging(Sender: TObject; NewPage: TElTabSheet;
      var AllowChange: Boolean);
    procedure dxCHANGE_NOEnter(Sender: TObject);
    procedure dxWAGE_SCALEEnter(Sender: TObject);
    procedure gridFormalParamEnter(Sender: TObject);
    procedure dxWAGE_SCALEInitPopup(Sender: TObject);
    procedure dxWAGE_SCALECloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit7Enter(Sender: TObject);
    procedure dxDBPopupEdit7InitPopup(Sender: TObject);
    procedure dxDBPopupEdit7CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContractMaker: TfrmContractMaker;

implementation

uses MainDM, ContractDataModule, PopupMainForm, SSP_Library,ShellAPI;

{$R *.dfm}

procedure TfrmContractMaker.dxDBPopupEdit2InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.SQLWhere.Text := 'where LEGAL_RIGHT=1';
  frmPopupMain.dxlcDeptListItem1.Visible := false;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmContractMaker.dxDBPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryDeptList, ContractDM.qryContract,
    'DEPT_NO;DEPT_NAME', 'EMPLOYER_NO;DEPT_NAME',
    'DEPT_NAME', Text);
  frmPopupMain.qryDeptList.Close;
  frmPopupMain.qryDeptList.SQLWhere.Clear;
  frmPopupMain.dxlcDeptListItem1.Visible := true;
end;

procedure TfrmContractMaker.dxDBPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryContractType.Open;
  InitPopupControl('dxlcContractType', frmPopupMain, sender, 2);
end;

procedure TfrmContractMaker.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryContractType, ContractDM.qryContract,
    'CONTRACT_TYPE_NO;CONTRACT_TYPE_NAME;REPORT_DEFAULT;TIME_LIMIT;TIME_UNIT',
      'CONTRACT_TYPE_NO;CONTRACT_TYPE_NAME;TEMPLATE_FILE;TIME_LIMIT;TIME_UNIT',
    'CONTRACT_TYPE_NAME', Text);
  frmPopupMain.qryContractType.Close;
end;

procedure TfrmContractMaker.dxDBPopupEdit3InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.dximOptionChange(sender); 
  InitPopupControl('dxlcEmpForSelect', frmPopupMain, sender, 2.5);
end;

procedure TfrmContractMaker.dxDBPopupEdit3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryEmpForSelect, ContractDM.qryContract,
    'EMPLOYEE_NO;FULL_NAME;EMAIL;FULL_NAME',
    'EMPLOYEE_NO;FULL_NAME;EMAIL;HOTEN_NV',
    'FULL_NAME', Text);
  frmPopupMain.qryEmpForSelect.Close;
end;

procedure TfrmContractMaker.dxDBPopupEdit5InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryContractList.SQLWhere.Text :=
    'where (EMPLOYEE_NO=:EMPLOYEE_NO) ' +
    ' and (STARTED_DATE<:STARTED_DATE)';
  frmPopupMain.qryContractList.ParamByName('EMPLOYEE_NO').Value :=
    ContractDM.qryContractEMPLOYEE_NO.Value;
  frmPopupMain.qryContractList.ParamByName('STARTED_DATE').Value :=
    ContractDM.qryContractSTARTED_DATE.Value;
  frmPopupMain.qryContractList.Open;
  InitPopupControl('dxlcContractList', frmPopupMain, sender, 2.5);
end;

procedure TfrmContractMaker.dxDBPopupEdit5CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryContractList, ContractDM.qryContract,
    'CONTRACT_NO;CONTRACT_NAME', 'PRE_CONTRACT_NO;PRE_CONTRACT_NAME',
    'CONTRACT_NAME', Text);
  frmPopupMain.qryContractList.Close;
  frmPopupMain.qryContractList.SQLWhere.Clear;
end;

procedure TfrmContractMaker.dxDBPopupEdit4InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryReportTemplateList.ParamByname('TEMPLATE_TYPE').Value := 1;
  frmPopupMain.qryReportTemplateList.Open;
  InitPopupControl('dxlcReportTemplateList', frmPopupMain, sender, 2.5);
end;

procedure TfrmContractMaker.dxDBPopupEdit4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryReportTemplateList,
    ContractDM.qryContract,
    'TEMPLATE_FILE', 'TEMPLATE_FILE',
    'TEMPLATE_FILE', Text);
  frmPopupMain.qryReportTemplateList.Close;
end;

procedure TfrmContractMaker.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  dmMain.DatasetLoadFile(sender,AbsoluteIndex);
end;

procedure TfrmContractMaker.pageMainChange(Sender: TObject);
begin
  inherited;
  if pageMain.ActivePage = tabNoidungHD then
    acNoidungHDSETDS.Execute
  else
    if pageMain.ActivePage = tabDieukhoanChitiet then
    acChitietBonhiemSETDS.Execute
  else
    if pageMain.ActivePage = tabHesoDikemHopdong then
    acChitietHesoDikem.Execute
end;

procedure TfrmContractMaker.FormCreate(Sender: TObject);
begin
  inherited;
  pageMain.ActivePage := tabNoidungHD;
end;

procedure TfrmContractMaker.acChitietBonhiemSETDSExecute(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(ContractDM.dsChitietBonhiem);
  frameToolbar1.SetListSource(nil);
  frameToolbar1.dxlctrlInsert.Visible := false;
  frameToolbar1.dxlctrlInsertCopy.Visible := false;
  frameToolbar1.dxlctrlInsertChild.Visible := false;
  frameToolbar1.dxlctrlGenerate.Visible := false;
  frameToolbar1.dxlctrlDelete.Visible:=true;
end;

procedure TfrmContractMaker.acNoidungHDSETDSExecute(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(ContractDM.dsContract);
  frameToolbar1.SetListSource(ContractDM.dsContract);
  frameToolbar1.dxlctrlInsert.Visible := true;
  frameToolbar1.dxlctrlInsertCopy.Visible := true;
  frameToolbar1.dxlctrlInsertChild.Visible := true;
  frameToolbar1.dxlctrlDelete.Visible := false;
  frameToolbar1.dxlctrlGenerate.Visible := false;
end;

procedure TfrmContractMaker.dxDBPopupEdit6InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryPosition.Open;
  InitPopupControl('dxlcPosition', frmPopupMain, sender, 2.5);
end;

procedure TfrmContractMaker.dxDBPopupEdit6CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryPosition, ContractDM.qryChitietBonhiem,
    'POSITION_NO;POSITION_TITLE', 'POSITION_NO;POSITION_TITLE',
    'POSITION_TITLE', Text);
  frmPopupMain.qryPosition.Close;
end;

procedure TfrmContractMaker.acChitietDieukhoanSETDSExecute(
  Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(ContractDM.dsChitietDieukhoan);
  frameToolbar1.SetListSource(nil);
  frameToolbar1.dxlctrlInsert.Visible := false;
  frameToolbar1.dxlctrlInsertCopy.Visible := false;
  frameToolbar1.dxlctrlInsertChild.Visible := false;
  frameToolbar1.dxlctrlDelete.Visible:=true;
  frameToolbar1.dxlctrlGenerate.Visible := false;
end;

procedure TfrmContractMaker.acChitietHesoDikemExecute(Sender: TObject);
begin
  inherited;
  if ContractDM.qryHesoDikem.Active then
    ContractDM.qryHesoDikem.Refresh
  else
    ContractDM.qryHesoDikem.Open;
  frameToolbar1.SetDataSource(ContractDM.dsHesoDikem);
  frameToolbar1.dxlctrlInsert.Visible := false;
  frameToolbar1.dxlctrlInsertCopy.Visible := false;
  frameToolbar1.dxlctrlInsertChild.Visible := false;
  frameToolbar1.dxlctrlDelete.Visible := true;
  frameToolbar1.dxlctrlGenerate.Visible := true;
end;

procedure TfrmContractMaker.acPhatsinhHesoDikemUpdate(Sender: TObject);
begin
  inherited;
  acPhatsinhHesoDikem.Enabled := (frameToolbar1.acDSInsert.DataSource =
    ContractDM.dsHesoDikem)and(ContractDM.qryContract.IsEmpty=false);
end;

procedure TfrmContractMaker.acPhatsinhHesoDikemExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  try
    qryGenerateFormalParam.ParamByName('CONTRACT_NO').Value :=
      ContractDM.qryContractCONTRACT_NO.Value;
    qryGenerateFormalParam.ParamByName('EMPLOYEE_NO').Value :=
      ContractDM.qryContractEMPLOYEE_NO.Value;
    qryGenerateFormalParam.ParamByName('APPLY_DATE').Value :=
      ContractDM.qryContractSTARTED_DATE.Value;
    dmMain.ExecuteSQL(qryGenerateFormalParam);
  except
    ShowMessageUnicode(11);
  end;
  acChitietHesoDikem.Execute;
  Screen.Cursor := crDefault;
end;

procedure TfrmContractMaker.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if dmMain.MsgChangeDataSource(ContractDM.dsContract) = false then
    Abort;
end;

procedure TfrmContractMaker.frameToolbar1btnCloseClick(Sender: TObject);
begin
  inherited;
  frameToolbar1.acCloseExecute(Sender);
end;

procedure TfrmContractMaker.pageMainChanging(Sender: TObject;
  NewPage: TElTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if pageMain.ActivePageIndex=0 then
    AllowChange:=dmMain.MsgChangeDataSource(ContractDM.dsContract)
  else
  if pageMain.ActivePageIndex=1 then
    AllowChange:=dmMain.MsgChangeDataSource(ContractDM.dsChitietBonhiem)and
                 dmMain.MsgChangeDataSource(ContractDM.dsChitietDieukhoan)
  else
  if pageMain.ActivePageIndex=0 then
      AllowChange:=dmMain.MsgChangeDataSource(ContractDM.dsHesoDikem) and
                   dmMain.MsgChangeDataSource(ContractDM.dsApdung_HesoCB)and
                   dmMain.MsgChangeDataSource(ContractDM.dsHesoCB_Canhan)

end;

procedure TfrmContractMaker.dxCHANGE_NOEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(ContractDM.dsApdung_HesoCB);
end;

procedure TfrmContractMaker.dxWAGE_SCALEEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(ContractDM.dsHesoCB_Canhan);
end;

procedure TfrmContractMaker.gridFormalParamEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(ContractDM.dsHesoDikem);
end;

procedure TfrmContractMaker.dxWAGE_SCALEInitPopup(Sender: TObject);
begin
  inherited;
   frmPopupMain.qryWageStandard.Open;
    InitPopupControl('dxlcWageStandard', frmPopupMain, sender, 2.5);
end;

procedure TfrmContractMaker.dxWAGE_SCALECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryWageStandard,
      ContractDM.qryHesoCB_Canhan,
      'WAGE_SCALE;CAREER_NAME;WAGE_COEFF;WAGE_LEVEL',
      'WAGE_SCALE;CAREER_NAME;WAGE_COEFF;WAGE_LEVEL',
      'WAGE_SCALE', Text);
    frmPopupMain.qryWageStandard.Close;
end;

procedure TfrmContractMaker.dxDBPopupEdit7Enter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(ContractDM.dsHeSo_CongTy);
end;

procedure TfrmContractMaker.dxDBPopupEdit7InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWageCompany.Open;
  InitPopupControl('dxlcWageCompany', frmPopupMain, sender, 2.5);
end;

procedure TfrmContractMaker.dxDBPopupEdit7CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryWageCompany,
      ContractDM.qryHeSo_CongTy,
      'WAGE_SCALE;WAGE_SCALE_NAME;WAGE_COEFF;WAGE_LEVEL',
      'WAGE_SCALE;WAGE_SCALE_NAME;WAGE_COEFF;WAGE_LEVEL',
      'WAGE_SCALE', Text);
    frmPopupMain.qryWageCompany.Close;
end;

end.

