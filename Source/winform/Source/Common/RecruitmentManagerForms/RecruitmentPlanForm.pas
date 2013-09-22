unit RecruitmentPlanForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, ImgList, ElPgCtl,
  ElPanel, ElSplit, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, dxEditor,
  dxEdLib, dxDBELib, jzExtCtrls, jzGrids, jzTaskViewCtrl, jzDayBook, DB,
  IBODataset, dxDBTLCl, dxGrClms, ActnList, jzCalendarMgr, jzDayViewCtrl,
  dxGrClEx, EditorForm, ppEndUsr, ppModule, daDataModule, ppBands,
  ppPrnabl, ppClass, ppCtrls, myChkBox, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, ppDB, ppDBPipe, ppTypes;

type
  TfrmRecruitmentPlan = class(TfrmEditBase)
    Panel1: TPanel;
    dxlcMainItem2: TdxLayoutItem;
    gridPlan: TdxDBGrid;
    ElSplitter1: TElSplitter;
    pageMain: TElPageControl;
    ImageList1: TImageList;
    tabPlanInfo: TElTabSheet;
    tabNeedInfo: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxPLAN_NO: TdxDBEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDBDateEdit1: TdxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxDBDateEdit2: TdxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dsRecruitmentPlan: TDataSource;
    qryRecruitmentPlan: TIBOQuery;
    qryRecruitmentPlanPLAN_NO: TWideStringField;
    qryRecruitmentPlanPLAN_NAME: TWideStringField;
    qryRecruitmentPlanFROM_DATE: TDateField;
    qryRecruitmentPlanTO_DATE: TDateField;
    qryRecruitmentPlanFILE_NAME: TWideStringField;
    qryRecruitmentPlanFILE_CONTENT: TBlobField;
    qryRecruitmentPlanRECRUITING_FORM: TWideStringField;
    gridPlanPLAN_NO: TdxDBGridColumn;
    gridPlanPLAN_NAME: TdxDBGridColumn;
    qryRecruitingBoard: TIBOQuery;
    dsRecruitingBoard: TDataSource;
    qryRecruitingBoardKEY_INDEX: TIntegerField;
    qryRecruitingBoardMEMBER_NAME: TWideStringField;
    qryRecruitingBoardMEMBER_ROLE: TWideStringField;
    qryRecruitingBoardNOTE: TWideStringField;
    qryRecruitingBoardPLAN_NO: TWideStringField;
    gridRecruitingBoard: TdxDBGrid;
    dxLayoutControl1Item7: TdxLayoutItem;
    gridRecruitingBoardKEY_INDEX: TdxDBGridSpinColumn;
    gridRecruitingBoardMEMBER_NAME: TdxDBGridColumn;
    gridRecruitingBoardMEMBER_ROLE: TdxDBGridColumn;
    gridRecruitingBoardNOTE: TdxDBGridColumn;
    OpenDialog1: TOpenDialog;
    qryRecruitmentPlanNOTE: TWideStringField;
    dxDBMemo1: TdxDBMemo;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    gridNeedInfo: TdxDBGrid;
    dsNeedInfo: TDataSource;
    gridNeedInfoDEPT_NAME: TdxDBGridPopupColumn;
    qryNeedInfo: TIBOQuery;
    gridNeedInfoNEED_COUNT: TdxDBGridSpinColumn;
    ElSplitter2: TElSplitter;
    qryNeedInfoPLAN_NO: TWideStringField;
    qryNeedInfoPOSITION_NO: TWideStringField;
    qryNeedInfoNEED_COUNT: TSmallintField;
    qryNeedInfoNOTE: TWideStringField;
    qryNeedInfoTITLE_NAME: TWideStringField;
    qryNeedInfoDEPT_NAME: TWideStringField;
    gridNeedRequest: TdxDBGrid;
    qryNeedRequest: TIBOQuery;
    dsNeedRequest: TDataSource;
    qryNeedRequestPLAN_NO: TWideStringField;
    qryNeedRequestPOSITION_NO: TWideStringField;
    qryNeedRequestEDU_FIELD_NO: TWideStringField;
    qryNeedRequestEDU_FIELD_NAME: TWideStringField;
    qryNeedRequestEDU_LEVEL_NO: TWideStringField;
    qryNeedRequestFIELD_LEVEL_NAME: TWideStringField;
    qryNeedRequestNOTE: TWideStringField;
    gridNeedRequestEDU_FIELD_NAME: TdxDBGridPopupColumn;
    gridNeedRequestFIELD_LEVEL_NAME: TdxDBGridPopupColumn;
    gridNeedRequestNOTE: TdxDBGridColumn;
    gridNeedInfoTITLE_NAME: TdxDBGridColumn;
    gridNeedInfoColumn4: TdxDBGridColumn;
    gridNeedRequestColumn4: TdxDBGridColumn;
    gridNeedInfoPOSITION_NO: TdxDBGridColumn;
    tabWord: TElTabSheet;
    panelShowEditor: TPanel;
    qryRecruitmentPlanCONTENT: TBlobField;
    dxDBPopupEdit1: TdxDBPopupEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    qryRecruitmentPlanRECRUITMENT_SOURCE: TWideStringField;
    qryRecruitmentPlanSOURCE_NAME: TWideStringField;
    qryNeedRequestMANDATORY: TSmallintField;
    gridNeedRequestMANDATORY: TdxDBGridCheckColumn;
    Panel2: TPanel;
    ElSplitter3: TElSplitter;
    gridDetail: TdxDBGrid;
    qryDetail: TIBOQuery;
    dsDetail: TDataSource;
    qryDetailPLAN_NO: TWideStringField;
    qryDetailPOSITION_NO: TWideStringField;
    qryDetailITEM_NO: TWideStringField;
    qryDetailITEM_NAME: TWideStringField;
    qryDetailAMOUNT: TIBOFloatField;
    qryDetailITEM_TYPE: TWideStringField;
    gridDetailITEM_NAME: TdxDBGridColumn;
    ActionList1: TActionList;
    acPhatSinh: TAction;
    qryExecute: TIBOQuery;
    pageDetail: TElPageControl;
    tabChiPhi: TElTabSheet;
    tabKenhTuyenDung: TElTabSheet;
    gridNeedSource: TdxDBGrid;
    qryNeedSorce: TIBOQuery;
    dsNeedSorce: TDataSource;
    qryNeedSorceSOURCE_NO: TWideStringField;
    qryNeedSorceSOURCE_NAME: TWideStringField;
    qryNeedSorcePLAN_NO: TWideStringField;
    qryNeedSorcePOSITION_NO: TWideStringField;
    gridNeedSourceSOURCE_NO: TdxDBGridColumn;
    gridNeedSourceSOURCE_NAME: TdxDBGridPopupColumn;
    qryNeedInfoNGAY_NHAN_YEUCAU: TDateField;
    gridNeedInfoNGAY_NHAN_YEUCAU: TdxDBGridDateColumn;
    qryNeedInfoSONAM_KINHNGHIEM: TIBOFloatField;
    gridNeedInfoSONAM_KINHNGHIEM: TdxDBGridCalcColumn;
    gridDetailAMOUNT: TdxDBGridCalcColumn;
    rpTuyenDung: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    myDBCheckBox1: TmyDBCheckBox;
    ppFooterBand1: TppFooterBand;
    daDataModule1: TdaDataModule;
    dsnTuyenDung: TppDesigner;
    ppThongtin_Hopdong: TppDBPipeline;
    ppDBPipeline1: TppDBPipeline;
    dsThongtinTochuc: TDataSource;
    ppThongtinTochuc: TppDBPipeline;
    ppThongtinTochucppField1: TppField;
    ppThongtinTochucppField2: TppField;
    ppThongtinTochucppField3: TppField;
    ppThongtinTochucppField4: TppField;
    ppThongtinTochucppField5: TppField;
    ppThongtinTochucppField6: TppField;
    ppThongtinTochucppField7: TppField;
    ppThongtinTochucppField8: TppField;
    ppThongtinTochucppField9: TppField;
    ppThongtinTochucppField10: TppField;
    ppThongtinTochucppField11: TppField;
    ppThongtinTochucppField12: TppField;
    ppThongtinTochucppField13: TppField;
    ppThongtinTochucppField14: TppField;
    ppThongtinTochucppField15: TppField;
    ppThongtinTochucppField16: TppField;
    ppThongtinTochucppField17: TppField;
    ppThongtinTochucppField18: TppField;
    ppThongtinTochucppField19: TppField;
    ppThongtinTochucppField20: TppField;
    ppThongtinTochucppField21: TppField;
    ppThongtinTochucppField22: TppField;
    ppThongtinTochucppField23: TppField;
    ppThongtinTochucppField24: TppField;
    ppThongtinTochucppField25: TppField;
    ppThongtinTochucppField26: TppField;
    ppThongtinTochucppField27: TppField;
    qryCurrentPlan: TIBOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    WideStringField3: TWideStringField;
    BlobField1: TBlobField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    BlobField2: TBlobField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    dsCurrentPlan: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryRecruitmentPlanNewRecord(DataSet: TDataSet);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qryRecruitingBoardNewRecord(DataSet: TDataSet);
    procedure qryNeedInfoDEPT_NAMEChange(Sender: TField);
    procedure gridNeedInfoDEPT_NAMEInitPopup(Sender: TObject);
    procedure gridNeedInfoDEPT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridNeedRequestEDU_FIELD_NAMEInitPopup(Sender: TObject);
    procedure gridNeedRequestEDU_FIELD_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridNeedRequestFIELD_LEVEL_NAMEInitPopup(Sender: TObject);
    procedure gridNeedRequestFIELD_LEVEL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
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
    procedure qryRecruitmentPlanAfterPost(DataSet: TDataSet);
    procedure dxDBPopupEdit1InitPopup(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryNeedRequestNewRecord(DataSet: TDataSet);
    procedure acPhatSinhExecute(Sender: TObject);
    procedure acPhatSinhUpdate(Sender: TObject);
    procedure gridNeedSourceSOURCE_NAMEInitPopup(Sender: TObject);
    procedure gridNeedSourceSOURCE_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryNeedInfoNewRecord(DataSet: TDataSet);
    function PrepareReport(type_prepare: integer = 0): boolean;
    procedure frameToolbar1acPreviewExecute(Sender: TObject);
    procedure frameToolbar1acDesignExecute(Sender: TObject);
    procedure frameToolbar1acPrintExecute(Sender: TObject);
  private
    { Private declarations }
    wordEditor: TfrmEditor;
    STATE: string;
  public
    { Public declarations }
  end;

var
  frmRecruitmentPlan: TfrmRecruitmentPlan;

implementation

uses MainDM, DateUtils, ShellAPI, PopupMainForm, SSP_Library;

{$R *.dfm}

procedure TfrmRecruitmentPlan.FormCreate(Sender: TObject);
begin
  inherited;
  wordEditor := TfrmEditor.Create(panelShowEditor, qryRecruitmentPlan,
    'CONTENT');
  with wordEditor do
  begin
    ApplyOption(TControl(wordEditor));
    BorderStyle := bsNone;
    Parent := panelShowEditor;
    Align := alClient;
    Visible := true;
  end;

  qryRecruitmentPlan.Open;
  qryRecruitingBoard.Open;
  qryNeedInfo.Open;
  qryNeedRequest.Open;
  qryDetail.Open;
  qryCurrentPlan.Open;
  qryNeedSorce.Open;
  frameToolbar1.SetDataSource(dsRecruitmentPlan);
  pageMain.ActivePage := tabPlanInfo;
end;

procedure TfrmRecruitmentPlan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if qryDetail.State in [dsEdit] then
    qryDetail.Post;
  qryDetail.Close;      
  qryNeedRequest.Close;
  qryNeedInfo.Close;
  qryRecruitingBoard.Close;
  qryRecruitmentPlan.Close;
  qryNeedSorce.Close;
  qryCurrentPlan.Close;
  wordEditor.Free;
end;

procedure TfrmRecruitmentPlan.qryRecruitmentPlanNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  qryRecruitmentPlanFROM_DATE.Value := Today;
  STATE := 'insert';
  qryRecruitmentPlanPLAN_NO.Value := dmMain.GenerateKeyData(203);
end;

procedure TfrmRecruitmentPlan.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  dmMain.DatasetLoadFile(sender, AbsoluteIndex);
end;

procedure TfrmRecruitmentPlan.qryRecruitingBoardNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  qryRecruitingBoardKEY_INDEX.Value := qryRecruitingBoard.RecordCount;
end;

procedure TfrmRecruitmentPlan.qryNeedInfoDEPT_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet, Sender.FieldName, 'POSITION_NO');
  SetNullLink(Sender.DataSet, Sender.FieldName, 'TITLE_NAME');
end;

procedure TfrmRecruitmentPlan.gridNeedInfoDEPT_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryPosition.Open;
  InitPopupControl('dxlcPosition', frmPopupMain, sender, 2, gridNeedInfo);
end;

procedure TfrmRecruitmentPlan.gridNeedInfoDEPT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryPosition, qryNeedInfo,
    'POSITION_NO;DEPT_NAME;TITLE_NAME', 'POSITION_NO;DEPT_NAME;TITLE_NAME',
    'DEPT_NAME', Text);
  frmPopupMain.qryPosition.Close;
end;

procedure TfrmRecruitmentPlan.gridNeedRequestEDU_FIELD_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryEduFieldList.Open;
  InitPopupControl('dxlcEduFieldList', frmPopupMain, sender, 2,
    gridNeedRequest);
end;

procedure TfrmRecruitmentPlan.gridNeedRequestEDU_FIELD_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryEduFieldList, qryNeedRequest,
    'EDU_FIELD_NO;EDU_FIELD_NAME', 'EDU_FIELD_NO;EDU_FIELD_NAME',
    'EDU_FIELD_NAME', Text);
  frmPopupMain.qryEduFieldList.Close;
end;

procedure TfrmRecruitmentPlan.gridNeedRequestFIELD_LEVEL_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryFieldLevelList.ParamByName('EDU_FIELD_NO').Value :=
    qryNeedRequestEDU_FIELD_NO.Value;
  frmPopupMain.qryFieldLevelList.Open;
  InitPopupControl('dxlcFieldLevelList', frmPopupMain, sender, 2,
    gridNeedRequest);
end;

procedure TfrmRecruitmentPlan.gridNeedRequestFIELD_LEVEL_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryFieldLevelList, qryNeedRequest,
    'FIELD_LEVEL_NO;FIELD_LEVEL_NAME', 'EDU_LEVEL_NO;FIELD_LEVEL_NAME',
    'FIELD_LEVEL_NAME', Text);
  frmPopupMain.qryFieldLevelList.Close;
end;

procedure TfrmRecruitmentPlan.gridNeedInfoColumn4CustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AText := IntToStr(ANode.AbsoluteIndex + 1);
end;

procedure TfrmRecruitmentPlan.gridNeedRequestColumn4CustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AText := IntToStr(ANode.AbsoluteIndex + 1);
end;

procedure TfrmRecruitmentPlan.qryRecruitmentPlanAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  if STATE = 'insert' then
  begin

    dmMain.IncreaseKeyData(203);
  end;
  STATE := '';
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TfrmRecruitmentPlan.dxDBPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryRecruitmentSource.Open;
  InitPopupControl('dxlcRecruitmentSource', frmPopupMain, sender, 2);
end;

procedure TfrmRecruitmentPlan.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryRecruitmentSource, qryRecruitmentPlan,
    'SOURCE_NO;SOURCE_NAME', 'RECRUITMENT_SOURCE;SOURCE_NAME',
    'SOURCE_NAME', Text);
  frmPopupMain.qryRecruitmentSource.Close;
end;

procedure TfrmRecruitmentPlan.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F10 then
    dmMain.ScanForm(self)
  else
    if Key = VK_F11 then
    dmMain.ScanForm(wordEditor);
end;

procedure TfrmRecruitmentPlan.qryNeedRequestNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryNeedRequestMANDATORY.Value:=0;
end;

procedure TfrmRecruitmentPlan.acPhatSinhExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  qryExecute.SQL.Text:=
  'execute procedure HR_RECRUIT_NEED_DETAIL_CREATE(:PLAN_NO)';
  qryExecute.Prepare;
  qryExecute.ParamByName('PLAN_NO').Value:=qryRecruitmentPlanPLAN_NO.Value;

  dmMain.ExecuteSQL(qryExecute);
  if qryDetail.Active then qryDetail.Refresh
  else qryDetail.Open;
  Screen.Cursor:=crDefault;
end;

procedure TfrmRecruitmentPlan.acPhatSinhUpdate(Sender: TObject);
begin
  inherited;
  acPhatSinh.Enabled := (qryRecruitmentPlan.RecordCount >0);
end;

procedure TfrmRecruitmentPlan.gridNeedSourceSOURCE_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryRecruitmentSource.Open;
  InitPopupControl('dxlcRecruitmentSource', frmPopupMain, sender, 2, gridNeedSource);
end;

procedure TfrmRecruitmentPlan.gridNeedSourceSOURCE_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryRecruitmentSource, qryNeedSorce,
    'SOURCE_NO;SOURCE_NAME', 'SOURCE_NO;SOURCE_NAME',
    'SOURCE_NAME', Text);
  frmPopupMain.qryRecruitmentSource.Close;
end;

procedure TfrmRecruitmentPlan.qryNeedInfoNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryNeedInfoNGAY_NHAN_YEUCAU.Value := Today;
end;
function TfrmRecruitmentPlan.PrepareReport(type_prepare: integer): boolean;
var
  pathName, pathDirectory: string;
begin
  try
    pathDirectory := ExtractFilePath(Application.ExeName) +
      'Reports\RecruitmentReport';
    case sysConfig.Language of
      0, 1:
        pathName := pathDirectory + '\Vn\bc_KeHoachTuyenDung.rtm';
      2:
        pathName := pathDirectory + '\Eng\bc_KeHoachTuyenDung.rtm';
    end;
    if (FileExists(pathName)) then
    begin
      rpTuyenDung.Template.FileName := pathName;
      rpTuyenDung.Template.Load;
    end
    else
    begin
      if type_prepare = 0 then
        ShowMessageUnicode(24);
      Result := false;
      exit;
    end;
  except
    result := false;
    exit;
  end;
  result := true;
end;

procedure TfrmRecruitmentPlan.frameToolbar1acPreviewExecute(
  Sender: TObject);
begin
  inherited;
  try
    if PrepareReport = false then exit;
    dmMain.DefOnBeforePrint(true, qryRecruitmentPlan , self);
    rpTuyenDung.AllowPrintToFile := True;
    rpTuyenDung.DeviceType := dtScreen;
    rpTuyenDung.Print;
  except
  end
end;

procedure TfrmRecruitmentPlan.frameToolbar1acDesignExecute(
  Sender: TObject);
begin
  inherited;
  try
    if PrepareReport = false then exit;
    dmMain.DefOnBeforePrint(false, qryRecruitmentPlan, self);
    dsnTuyenDung.ShowModal;
    rpTuyenDung.PrintToDevices;
  except
  end;
end;
 procedure TfrmRecruitmentPlan.frameToolbar1acPrintExecute(Sender: TObject);
begin
  inherited;
  try
    if PrepareReport = false then exit;
    dmMain.DefOnBeforePrint(true, qryRecruitmentPlan, self);
    rpTuyenDung.AllowPrintToFile := True;
    rpTuyenDung.DeviceType := dtPrinter;
    rpTuyenDung.Print;
  except
  end;
end;


end.

