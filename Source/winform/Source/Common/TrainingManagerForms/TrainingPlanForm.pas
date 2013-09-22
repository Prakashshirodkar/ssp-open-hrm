unit TrainingPlanForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, ImgList, ElPgCtl,
  ElPanel, ElSplit, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, dxEditor,
  dxEdLib, dxDBELib, jzExtCtrls, jzGrids, jzTaskViewCtrl, jzDayBook, DB,
  IBODataset, dxDBTLCl, dxGrClms, ActnList, jzCalendarMgr, jzDayViewCtrl,
  dxGrClEx, EditorForm, ElBtnCtl, ElPopBtn;

type
  TfrmTrainingPlan = class(TfrmEditBase)
    Panel1: TPanel;
    dxlcMainItem2: TdxLayoutItem;
    gridPlan: TdxDBGrid;
    pageMain: TElPageControl;
    ImageList1: TImageList;
    tabPlanInfo: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxTEN_KEHOACH: TdxDBEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxMA_KEHOACH: TdxDBEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxTAPTIN_DINHKEO: TdxDBButtonEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dsTrainingPlan: TDataSource;
    qryTrainingPlan: TIBOQuery;
    gridPlanPLAN_NO: TdxDBGridColumn;
    gridPlanPLAN_NAME: TdxDBGridColumn;
    dsClass: TDataSource;
    gridClass: TdxDBGrid;
    dxLayoutControl1Item7: TdxLayoutItem;
    OpenDialog1: TOpenDialog;
    ActionList1: TActionList;
    tabWord: TElTabSheet;
    panelShowEditor: TPanel;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLOAIHINH_DAOTAO: TdxDBPopupEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxHINHTHUC_DAOTAO: TdxDBPopupEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxNGUON_KINHPHI: TdxDBPopupEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    qryClass: TIBOQuery;
    qryClassPLAN_NO: TWideStringField;
    qryClassCLASS_NO: TWideStringField;
    qryClassEDU_FIELD_NAME: TWideStringField;
    qryClassSTUDENT_COUNT: TIntegerField;
    qryClassLEVEL_RESULT: TWideStringField;
    qryClassFIELD_LEVEL_NAME: TWideStringField;
    qryClassSTART_DATE: TDateField;
    qryClassEND_DATE: TDateField;
    qryClassCOST: TIBOFloatField;
    qryClassCURRENCY: TWideStringField;
    gridClassCLASS_NO: TdxDBGridColumn;
    gridClassEDU_FIELD_NAME: TdxDBGridPopupColumn;
    gridClassSTUDENT_COUNT: TdxDBGridSpinColumn;
    gridClassFIELD_LEVEL_NAME: TdxDBGridPopupColumn;
    gridClassSTART_DATE: TdxDBGridDateColumn;
    gridClassEND_DATE: TdxDBGridDateColumn;
    gridClassCOST: TdxDBGridCalcColumn;
    qryClassCURRENCY_NAME: TWideStringField;
    gridClassCURRENCY_NAME: TdxDBGridPopupColumn;
    dxCREATE_DATE: TdxDBDateEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxNGUON_DAOTAO: TdxDBPopupEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    qryTrainingPlanPLAN_NO: TWideStringField;
    qryTrainingPlanPLAN_NAME: TWideStringField;
    qryTrainingPlanPLAN_CONTENT: TBlobField;
    qryTrainingPlanPLAN_SOURCE: TWideStringField;
    qryTrainingPlanPLAN_FORM: TWideStringField;
    qryTrainingPlanPLAN_TYPE: TWideStringField;
    qryTrainingPlanFILE_NAME: TWideStringField;
    qryTrainingPlanSOURCE_NAME: TWideStringField;
    qryTrainingPlanFORM_NAME: TWideStringField;
    qryTrainingPlanTYPE_NAME: TWideStringField;
    qryTrainingPlanCREATE_DATE: TDateField;
    qryTrainingPlanPLAN_SUPPLY: TWideStringField;
    qryTrainingPlanSUPPLY_NAME: TWideStringField;
    qryClassTEACHER: TWideStringField;
    gridClassTEACHER: TdxDBGridColumn;
    qryTrainingPlanCREATE_BY: TWideStringField;
    qryTrainingPlanDUTY: TWideStringField;
    qryTrainingPlanAT_PERIOD: TIntegerField;
    qryTrainingPlanAT_YEAR: TIntegerField;
    qryTrainingPlanREASON: TWideStringField;
    qryTrainingPlanPLAN_COST: TIBOFloatField;
    dxlcMainItem3: TdxLayoutItem;
    dxlcMainItem4: TdxLayoutItem;
    dxlcMainItem5: TdxLayoutItem;
    dxlcMainItem6: TdxLayoutItem;
    dxlcMainItem7: TdxLayoutItem;
    dxlcMainItem9: TdxLayoutItem;
    dxlcMainItem10: TdxLayoutItem;
    dxlcMainItem11: TdxLayoutItem;
    dxlcMainGroup1: TdxLayoutGroup;
    dxlcGroupPlan: TdxLayoutGroup;
    dxlcMainGroup3: TdxLayoutGroup;
    dxDBEdit1: TdxDBEdit;
    dxlcMainItem14: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxlcMainItem15: TdxLayoutItem;
    dxlcMainGroup4: TdxLayoutGroup;
    dxlcMainGroup5: TdxLayoutGroup;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxlcMainItem12: TdxLayoutItem;
    dxDBSpinEdit2: TdxDBSpinEdit;
    dxlcMainItem13: TdxLayoutItem;
    dxlcMainGroup7: TdxLayoutGroup;
    dxlcMainGroup6: TdxLayoutGroup;
    dxlcMainGroup8: TdxLayoutGroup;
    dxlcMainGroup10: TdxLayoutGroup;
    dxlcMainGroup11: TdxLayoutGroup;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    tabPlanFee: TElTabSheet;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Item1: TdxLayoutItem;
    gridClassFree: TdxDBGrid;
    gridClassFreeCONTENT_NAME: TdxDBGridColumn;
    gridClassFreeCLASS_NO: TdxDBGridColumn;
    gridClassFreeSTUDENT_COUNT: TdxDBGridColumn;
    gridClassFreeCURRENCY_NAME: TdxDBGridPopupColumn;
    gridFee: TdxDBGrid;
    dxLayoutControl3Item2: TdxLayoutItem;
    acGenerateFee: TAction;
    qryClassFee: TIBOQuery;
    dsClassFee: TDataSource;
    qryClassFeePLAN_NO: TWideStringField;
    qryClassFeeCLASS_NO: TWideStringField;
    qryClassFeeFEE_NO: TWideStringField;
    qryClassFeeFEE_NAME: TWideStringField;
    qryClassFeeTOTAL_VALUE: TIBOFloatField;
    gridFeeFEE_NAME: TdxDBGridColumn;
    gridFeeTOTAL_VALUE: TdxDBGridCalcColumn;
    qryExecute: TIBOQuery;
    qryTrainingPlanFILE_CONTENT: TBlobField;
    qryTrainingPlanAT_MONTH: TIntegerField;
    dxDBSpinEdit3: TdxDBSpinEdit;
    dxlcMainItem8: TdxLayoutItem;
    dxlcMainGroup9: TdxLayoutGroup;
    qryClassCLASS_CODE: TWideStringField;
    gridClassCLASS_CODE: TdxDBGridPopupColumn;
    qryClassIS_PLANNED: TIntegerField;
    gridClassIS_PLANNED: TdxDBGridImageColumn;
    qryClassCLASS_CONTENT: TWideStringField;
    gridClassCONTENT_NAME: TdxDBGridMemoColumn;
    qryClassEDU_FIELD: TWideStringField;
    acGeneratePlan: TAction;
    gridClassFreeCOST: TdxDBGridCalcColumn;
    ElPopupButton1: TElPopupButton;
    dxlcZoomOut: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    acZoomOut: TAction;
    qryClassPHAN_LOAI: TSmallintField;
    qryClassQUOC_GIA: TWideStringField;
    qryClassTP_TINH: TWideStringField;
    qryClassNATION_NAME: TWideStringField;
    gridClassTP_TINH: TdxDBGridColumn;
    gridClassNATION_NAME: TdxDBGridPopupColumn;
    qryClassTG_CAMKET_LAMVIEC: TIBOFloatField;
    qryClassDV_CAMKET_LAMVIEC: TSmallintField;
    gridClassTG_CAMKET_LAMVIEC: TdxDBGridCalcColumn;
    gridClassDV_CAMKET_LAMVIEC: TdxDBGridImageColumn;
    qryClassPHAN_NHOM_TEN: TWideStringField;
    gridClassPHAN_NHOM_TEN: TdxDBGridMRUColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxTAPTIN_DINHKEOButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure gridNeedInfoColumn4CustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure gridNeedRequestColumn4CustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure qryTrainingPlanSOURCE_NAMEChange(Sender: TField);
    procedure qryTrainingPlanFORM_NAMEChange(Sender: TField);
    procedure qryTrainingPlanTYPE_NAMEChange(Sender: TField);
    procedure qryClassEDU_FIELD_NAMEChange(Sender: TField);
    procedure qryClassFIELD_LEVEL_NAMEChange(Sender: TField);
    procedure qryClassCURRENCY_NAMEChange(Sender: TField);
    procedure dxLOAIHINH_DAOTAOInitPopup(Sender: TObject);
    procedure dxLOAIHINH_DAOTAOCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxHINHTHUC_DAOTAOCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxHINHTHUC_DAOTAOInitPopup(Sender: TObject);
    procedure dxNGUON_KINHPHIInitPopup(Sender: TObject);
    procedure dxNGUON_KINHPHICloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure gridClassCURRENCY_NAMEInitPopup(Sender: TObject);
    procedure gridClassCURRENCY_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridClassFIELD_LEVEL_NAMEInitPopup(Sender: TObject);
    procedure gridClassFIELD_LEVEL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridClassEDU_FIELD_NAMEInitPopup(Sender: TObject);
    procedure gridClassEDU_FIELD_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryTrainingPlanNewRecord(DataSet: TDataSet);
    procedure dxNGUON_DAOTAOInitPopup(Sender: TObject);
    procedure dxNGUON_DAOTAOCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryTrainingPlanAfterPost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryClassCONTENT_NAMEChange(Sender: TField);
    procedure gridClassCONTENT_NAMEInitPopup(Sender: TObject);
    procedure gridClassCONTENT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridClassFreeCURRENCY_NAMEInitPopup(Sender: TObject);
    procedure gridClassFreeCURRENCY_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure acGenerateFeeExecute(Sender: TObject);
    procedure qryClassAfterPost(DataSet: TDataSet);
    procedure acGenerateFeeUpdate(Sender: TObject);
    procedure qryClassNewRecord(DataSet: TDataSet);
    procedure gridClassCLASS_CODEInitPopup(Sender: TObject);
    procedure gridClassCLASS_CODECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryClassCLASS_CODEChange(Sender: TField);
    procedure acGeneratePlanUpdate(Sender: TObject);
    procedure pageMainChange(Sender: TObject);
    procedure acGeneratePlanExecute(Sender: TObject);
    procedure acZoomOutExecute(Sender: TObject);
    procedure pageMainChanging(Sender: TObject; NewPage: TElTabSheet;
      var AllowChange: Boolean);
    procedure gridClassNATION_NAMEInitPopup(Sender: TObject);
    procedure gridClassNATION_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
  private
    { Private declarations }
    wordEditor: TfrmEditor;
    STATE,F_ZoomState: string;

  public
    { Public declarations }
  end;

var
  frmTrainingPlan: TfrmTrainingPlan;

implementation

uses MainDM, DateUtils, ShellAPI, PopupMainForm, SSP_Library,
  TrainingAlertForm, ReviewTrainingPlanForm,TrainingPhanLoaiForm;

{$R *.dfm}

procedure TfrmTrainingPlan.FormCreate(Sender: TObject);
begin
  inherited;
  qryTrainingPlan.Open;
  frameToolbar1.SetDataSource(dsTrainingPlan);
  qryClass.Open;
  qryClassFee.Open;
  pageMain.ActivePage := tabPlanInfo;
  wordEditor := TfrmEditor.Create(panelShowEditor, qryTrainingPlan,
    'PLAN_CONTENT');
  with wordEditor do
  begin
    ApplyOption(TControl(wordEditor));
    BorderStyle := bsNone;
    Parent := panelShowEditor;
    Align := alClient;
    Visible := true;
  end;
  frmTrainingPlan:=self;
  gridClass.FullExpand;
  F_ZoomState:='ZoomIn';

  RegisterLookupControl(gridClassPHAN_NHOM_TEN,'PHAN_LOAI','PHAN_NHOM_TEN',
    'SELECT PHAN_NHOM_ID, PHAN_NHOM_TEN FROM HR_TRAINING_PHANNHOM;', TfrmTrainingPhanLoai);
end;

procedure TfrmTrainingPlan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryClassFee.Close;
  qryClass.Close;
  qryTrainingPlan.Close;
  wordEditor.Free;
  
end;

procedure TfrmTrainingPlan.dxTAPTIN_DINHKEOButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  dmMain.DatasetLoadFile(sender, AbsoluteIndex);
end;

procedure TfrmTrainingPlan.gridNeedInfoColumn4CustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AText := IntToStr(ANode.AbsoluteIndex + 1);
end;

procedure TfrmTrainingPlan.gridNeedRequestColumn4CustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AText := IntToStr(ANode.AbsoluteIndex + 1);
end;

procedure TfrmTrainingPlan.qryTrainingPlanSOURCE_NAMEChange(
  Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet, Sender.FieldName, 'PLAN_SOURCE');
end;

procedure TfrmTrainingPlan.qryTrainingPlanFORM_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet, Sender.FieldName, 'PLAN_FORM');
end;

procedure TfrmTrainingPlan.qryTrainingPlanTYPE_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet, Sender.FieldName, 'PLAN_TYPE');
end;

procedure TfrmTrainingPlan.qryClassEDU_FIELD_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet, Sender.FieldName, 'EDU_FIELD');
end;

procedure TfrmTrainingPlan.qryClassFIELD_LEVEL_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet, Sender.FieldName, 'LEVEL_RESULT');
end;

procedure TfrmTrainingPlan.qryClassCURRENCY_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet, Sender.FieldName, 'CURRENCY');
end;

procedure TfrmTrainingPlan.dxLOAIHINH_DAOTAOInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryTrainingType.Open;
  InitPopupControl('dxlcTrainingType', frmPopupMain, sender, 2);
end;

procedure TfrmTrainingPlan.dxLOAIHINH_DAOTAOCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryTrainingType, qryTrainingPlan,
    'TYPE_NO;TYPE_NAME', 'PLAN_TYPE;TYPE_NAME',
    'TYPE_NAME', Text);
  frmPopupMain.qryTrainingType.Close;
end;

procedure TfrmTrainingPlan.dxHINHTHUC_DAOTAOCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryTrainingForm, qryTrainingPlan,
    'FORM_NO;FORM_NAME', 'PLAN_FORM;FORM_NAME',
    'FORM_NAME', Text);
  frmPopupMain.qryTrainingForm.Close;
end;

procedure TfrmTrainingPlan.dxHINHTHUC_DAOTAOInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryTrainingForm.Open;
  InitPopupControl('dxlcTrainingForm', frmPopupMain, sender, 2);
end;

procedure TfrmTrainingPlan.dxNGUON_KINHPHIInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryTrainingSource.Open;
  InitPopupControl('dxlcTrainingSource', frmPopupMain, sender, 2);
end;

procedure TfrmTrainingPlan.dxNGUON_KINHPHICloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryTrainingSource, qryTrainingPlan,
    'SOURCE_NO;SOURCE_NAME', 'PLAN_SOURCE;SOURCE_NAME',
    'SOURCE_NAME', Text);
  frmPopupMain.qryTrainingSource.Close;
end;

procedure TfrmTrainingPlan.gridClassCURRENCY_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryCurrencyList.Open;
  InitPopupControl('dxlcCurrencyList', frmPopupMain, sender, 2, gridClass);
end;

procedure TfrmTrainingPlan.gridClassCURRENCY_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryCurrencyList, qryClass,
    'CURRENCY_NO;CURRENCY_NAME', 'CURRENCY;CURRENCY_NAME',
    'CURRENCY_NAME', Text);
  frmPopupMain.qryCurrencyList.Close;
end;

procedure TfrmTrainingPlan.gridClassFIELD_LEVEL_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryFieldLevelList.ParamByName('EDU_FIELD_NO').Value :=
    qryClassEDU_FIELD.Value;
  frmPopupMain.qryFieldLevelList.Open;
  InitPopupControl('dxlcFieldLevelList', frmPopupMain, sender, 2, gridClass);
end;

procedure TfrmTrainingPlan.gridClassFIELD_LEVEL_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryFieldLevelList, qryClass,
    'FIELD_LEVEL_NO;FIELD_LEVEL_NAME', 'LEVEL_RESULT;FIELD_LEVEL_NAME',
    'FIELD_LEVEL_NAME', Text);
  frmPopupMain.qryFieldLevelList.Close;
end;

procedure TfrmTrainingPlan.gridClassEDU_FIELD_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryEduFieldList.Open;
  InitPopupControl('dxlcEduFieldList', frmPopupMain, sender, 2, gridClass);
end;

procedure TfrmTrainingPlan.gridClassEDU_FIELD_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryEduFieldList, qryClass,
    'EDU_FIELD_NO;EDU_FIELD_NAME', 'EDU_FIELD;EDU_FIELD_NAME',
    'EDU_FIELD_NAME', Text);
  frmPopupMain.qryEduFieldList.Close;
end;

procedure TfrmTrainingPlan.qryTrainingPlanNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryTrainingPlanCREATE_DATE.Value := Today;
  STATE := 'insert';
  qryTrainingPlanPLAN_NO.Value := dmMain.GenerateKeyData(204);
  qryTrainingPlanCREATE_BY.Value:=sysConfig.Username;

end;

procedure TfrmTrainingPlan.dxNGUON_DAOTAOInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryTrainingSupply.Open;
  InitPopupControl('dxlcTrainingSupply', frmPopupMain, sender, 2);
end;

procedure TfrmTrainingPlan.dxNGUON_DAOTAOCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryTrainingSupply, qryTrainingPlan,
    'SUPPLY_NO;SUPPLY_NAME', 'PLAN_SUPPLY;SUPPLY_NAME',
    'SUPPLY_NAME', Text);
  frmPopupMain.qryTrainingSupply.Close;
end;

procedure TfrmTrainingPlan.qryTrainingPlanAfterPost(DataSet: TDataSet);
begin
  inherited;
  if STATE = 'insert' then
  begin
    dmMain.IncreaseKeyData(204);
  end;
  STATE := '';
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TfrmTrainingPlan.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F10 then
    dmMain.ScanForm(self)
  else
    if Key = VK_F11 then
    dmMain.ScanForm(wordEditor);
end;

procedure TfrmTrainingPlan.qryClassCONTENT_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,sender.FieldName,'CONTENT_NO');
end;

procedure TfrmTrainingPlan.gridClassCONTENT_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryTrainingContent.Open;
  InitPopupControl('dxlcTrainingContent',frmPopupMain,sender,2,gridClass);
end;

procedure TfrmTrainingPlan.gridClassCONTENT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryTrainingContent,qryClass,
        'CONTENT_NO;CONTENT_NAME','CONTENT_NO;CONTENT_NAME','CONTENT_NAME',Text);
    frmPopupMain.qryTrainingContent.Close;
end;

procedure TfrmTrainingPlan.gridClassFreeCURRENCY_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
   frmPopupMain.qryCurrencyList.Open;
  InitPopupControl('dxlcCurrencyList', frmPopupMain, sender, 2, gridFee);
end;

procedure TfrmTrainingPlan.gridClassFreeCURRENCY_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryCurrencyList, qryClass,
    'CURRENCY_NO;CURRENCY_NAME', 'CURRENCY;CURRENCY_NAME',
    'CURRENCY_NAME', Text);
  frmPopupMain.qryCurrencyList.Close;
end;

procedure TfrmTrainingPlan.acGenerateFeeExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  qryExecute.SQL.Text:=
  'execute procedure hr_training_class_fee_gen(:plan_no,:class_no)';
  qryExecute.Prepare;
  qryExecute.ParamByName('PLAN_NO').Value:=qryClassPLAN_NO.Value;
  qryExecute.ParamByName('CLASS_NO').Value:=qryClassCLASS_NO.Value;
  dmMain.ExecuteSQL(qryExecute);
  qryClassFee.Refresh;
  Screen.Cursor:=crDefault;
end;

procedure TfrmTrainingPlan.qryClassAfterPost(DataSet: TDataSet);
begin
  inherited;
  acGenerateFee.Execute;
  dmMain.DefOnAfterPost(dataset);
end;

procedure TfrmTrainingPlan.acGenerateFeeUpdate(Sender: TObject);
begin
  inherited;
  acGenerateFee.Enabled:=not qryClass.IsEmpty;
end;

procedure TfrmTrainingPlan.qryClassNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryClassIS_PLANNED.Value:=0;
  qryClassPLAN_NO.Value:=qryTrainingPlanPLAN_NO.Value;
end;

procedure TfrmTrainingPlan.gridClassCLASS_CODEInitPopup(Sender: TObject);
begin
  inherited;
    frmPopupMain.qryClass.Open;
    InitPopupControl('dxlcClass',frmPopupMain,sender,2,gridClass);
end;

procedure TfrmTrainingPlan.gridClassCLASS_CODECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
 if Accept then
 begin
   if not (qryClass.State in [dsEdit,dsInsert]) then
     qryClass.Edit;
   Text:=frmPopupMain.qryClassCLASS_CODE.Value;
   qryClassCLASS_CODE.Value:=frmPopupMain.qryClassCLASS_CODE.Value;
   qryClassIS_PLANNED.Value:=1;
 end;
  frmPopupMain.qryClass.Close;
end;

procedure TfrmTrainingPlan.qryClassCLASS_CODEChange(Sender: TField);
begin
  inherited;
  if qryClassCLASS_CODE.IsNull then qryClassIS_PLANNED.Value:=0;
end;

procedure TfrmTrainingPlan.acGeneratePlanUpdate(Sender: TObject);
begin
  inherited;
  acGeneratePlan.Enabled:=not(qryTrainingPlan.IsEmpty or (qryTrainingPlan.State in [dsInsert,dsEdit]));
end;

procedure TfrmTrainingPlan.pageMainChange(Sender: TObject);
begin
  inherited;
  frameToolbar1.dxLayoutControl1Item9.Visible:=(pageMain.ActivePage=tabPlanInfo);
  frameToolbar1.dxlctrlGenerate.Visible:=(pageMain.ActivePage=tabPlanFee);
end;

procedure TfrmTrainingPlan.acGeneratePlanExecute(Sender: TObject);
begin
  inherited;
  frmReviewTrainingPlan:=TfrmReviewTrainingPlan.Create(self);
  try
    if frmReviewTrainingPlan.ShowModal=mrOk then
    begin
      qryClass.Refresh;
      gridClass.FullExpand;
    end;
  finally
    frmReviewTrainingPlan.Free;
    frmReviewTrainingPlan:=nil;
  end;

end;

procedure TfrmTrainingPlan.acZoomOutExecute(Sender: TObject);
begin
  inherited;
  if F_ZoomState='ZoomIn' then
  begin
    dxlcGroupPlan.Visible:=false;
    F_ZoomState:='ZoomOut';
    acZoomOut.ImageIndex:=2;
  end
  else
  begin
    dxlcGroupPlan.Visible:=true;
    F_ZoomState:='ZoomIn';
    acZoomOut.ImageIndex:=1;
  end
end;

procedure TfrmTrainingPlan.pageMainChanging(Sender: TObject;
  NewPage: TElTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if pageMain.ActivePage=tabWord then
  begin
    if F_ZoomState='ZoomOut' then
      acZoomOut.Execute;
  end;
end;

procedure TfrmTrainingPlan.gridClassNATION_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryNationList.Open;
  InitPopupControl('dxlcNationList', frmPopupMain, sender,2, gridClass);
end;

procedure TfrmTrainingPlan.gridClassNATION_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryNationList, qryClass,
    'NATION_NO;NATION_NAME', 'QUOC_GIA;NATION_NAME',
    'NATION_NAME', Text);
  frmPopupMain.qryNationList.Close;
end;

end.

