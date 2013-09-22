unit ContractManageForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxLayoutControl, ExtCtrls, cxControls,
  dxPageControl, ElPanel, ElSplit, ElPgCtl, ImgList, dxEditor, dxEdLib,
  ElBtnCtl, ElPopBtn, ActnList, EditorForm, ppViewr, DB, IBODataset, ppTypes,
  ppClass, ppCtrls, dxDBTLCl, dxGrClms, Grids, DBGrids, DBActns, dxDBELib,
  StdCtrls, ElCLabel, ElLabel, ElEdits, ElBtnEdit, ElMemoCombo,
  SendMailFrame, ppEndUsr, ppComm, ppRelatv, ppProd, ppReport, ppDB,
  ppDBPipe;

type
  TfrmContractManager = class(TfrmBase)
    mainPanel: TPanel;
    pageMain: TElPageControl;
    tabWordEditor: TElTabSheet;
    tabReportDesign: TElTabSheet;
    imgList: TImageList;
    dxTodate: TdxDateEdit;
    dxFromDate: TdxDateEdit;
    ActionList1: TActionList;
    acLayDanhsachHD: TAction;
    panelWordEditor: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    viewContract: TppViewer;
    ElPopupButton49: TElPopupButton;
    ElPopupButton50: TElPopupButton;
    ElPopupButton51: TElPopupButton;
    dxImageEdit1: TdxImageEdit;
    ElPopupButton5: TElPopupButton;
    ElPopupButton6: TElPopupButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    acZoomOut: TAction;
    acZoomIn: TAction;
    acPreview: TAction;
    acDesign: TAction;
    acPrint: TAction;
    chkAll: TdxCheckEdit;
    acThietlapHD: TAction;
    acChitietHD: TAction;
    gridContractList: TdxDBGrid;
    acQDDelete: TDataSetDelete;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxDBPopupEdit1: TdxDBPopupEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    acViewReport: TAction;
    gridContractListCONTRACT_NO: TdxDBGridMaskColumn;
    gridContractListCONTRACT_NAME: TdxDBGridMaskColumn;
    gridContractListCONTRACT_TYPE_NAME: TdxDBGridMaskColumn;
    gridContractListFULL_NAME: TdxDBGridMaskColumn;
    gridContractListSTARTED_DATE: TdxDBGridDateColumn;
    ElSplitter1: TElSplitter;
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    ElPanel1: TElPanel;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl3Item1: TdxLayoutItem;
    dxLayoutControl3Item7: TdxLayoutItem;
    dxLayoutControl3Item8: TdxLayoutItem;
    dxLayoutControl3Item9: TdxLayoutItem;
    ppContractType: TdxPopupEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl3Item3: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl3Item4: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl3Item5: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl3Item6: TdxLayoutItem;
    chkFilter: TdxCheckEdit;
    dxLayoutControl3Item10: TdxLayoutItem;
    dxFilterRange: TdxSpinEdit;
    dxicItem222: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl3Group4: TdxLayoutGroup;
    gridContractListEXPIRED_DATE: TdxDBGridDateColumn;
    dxLayoutControl3Group1: TdxLayoutGroup;
    tabSendMail: TElTabSheet;
    mailReport: TppReport;
    mailDesign: TppDesigner;
    mainPipeline: TppDBPipeline;
    frameSendMail1: TframeSendMail;
    ppChitietBonhiem: TppDBPipeline;
    ppChitietDieukhoan: TppDBPipeline;
    dxLayoutControl2Item2: TdxLayoutItem;
    ElPopupButton7: TElPopupButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    ElPopupButton8: TElPopupButton;
    dxLayoutControl2Item4: TdxLayoutItem;
    ElPopupButton9: TElPopupButton;
    dxLayoutControl2Item5: TdxLayoutItem;
    ElPopupButton10: TElPopupButton;
    dxLayoutControl2Group4: TdxLayoutGroup;
    dxLayoutControl2Group5: TdxLayoutGroup;
    dxLayoutControl2Group3: TdxLayoutGroup;
    dxLayoutControl2Group6: TdxLayoutGroup;
    dxLayoutControl2Group7: TdxLayoutGroup;
    dxLayoutControl2Group8: TdxLayoutGroup;
    acFirstPage: TAction;
    acNextPage: TAction;
    acPriorPage: TAction;
    acLastPage: TAction;
    dxLayoutControl3Group3: TdxLayoutGroup;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Group6: TdxLayoutGroup;
    dxLayoutControl3Group7: TdxLayoutGroup;
    ElPopupButton11: TElPopupButton;
    dxLayoutControl3Item11: TdxLayoutItem;
    dxLayoutControl3Group8: TdxLayoutGroup;
    dxLayoutControl3Group9: TdxLayoutGroup;
    acTaonhanhHopdong: TAction;
    ppThongTinHD: TppDBPipeline;
    ppThongTinNV: TppDBPipeline;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dxImageEdit1Change(Sender: TObject);
    procedure acZoomOutExecute(Sender: TObject);
    procedure acZoomInExecute(Sender: TObject);
    procedure acDesignExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    function PrepareReport(type_prepare: integer = 0): boolean;
    procedure acPreviewExecute(Sender: TObject);
    procedure ppContractTypeInitPopup(Sender: TObject);
    procedure ppContractTypeCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure Splitter1Moved(Sender: TObject);
    procedure acLayDanhsachHDExecute(Sender: TObject);
    procedure chkAllChange(Sender: TObject);
    procedure acThietlapHDExecute(Sender: TObject);
    procedure acChitietHDExecute(Sender: TObject);
    procedure acChitietHDUpdate(Sender: TObject);
    procedure acXoaboQDUpdate(Sender: TObject);
    procedure dxDBPopupEdit1InitPopup(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure pageMainChange(Sender: TObject);
    procedure acViewReportExecute(Sender: TObject);
    procedure gridContractListChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure dxTodateChange(Sender: TObject);
    procedure dxFromDateChange(Sender: TObject);
    procedure chkFilterChange(Sender: TObject);
    procedure gridContractListCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: WideString; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure dxFilterRangeChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acFirstPageExecute(Sender: TObject);
    procedure acNextPageExecute(Sender: TObject);
    procedure acPriorPageExecute(Sender: TObject);
    procedure acLastPageExecute(Sender: TObject);
    procedure acFirstPageUpdate(Sender: TObject);
    procedure acLastPageUpdate(Sender: TObject);
    procedure acTaonhanhHopdongExecute(Sender: TObject);

  private
    { Private declarations }
    wordEditor: TfrmEditor;
  public
    { Public declarations }
  protected
    CurContractType, CurContractTypeName, CurReportTemplate: WideString;
    CurContractType_Limit,CurContractType_Unit:integer;
  end;
  // cac ham dung chung

var
  frmContractManager: TfrmContractManager;

implementation

uses MainDM, SSP_Library, PopupMainForm, DateUtils, ContractDataModule,
  ContractMakerForm, ContractGenerateForm;

{$R *.dfm}

procedure TfrmContractManager.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: integer;
begin
  inherited;
  frameSendMail1.FreeComponent;
  ContractDM.acFreeMem.Execute;
  dmMain.MsgChangeDataSource(ContractDM.dsContract);
  ContractDM.rpContract.CloseDataPipelines;
  ContractDM.CloseContractData;
  wordEditor.Free;
  action := caFree;
  frmContractManager := nil;

end;

procedure TfrmContractManager.FormCreate(Sender: TObject);
var
  i: integer;
begin
  inherited;
  CurContractType_Limit:=0;
  CurContractType_Unit:=0;
  wordEditor := TfrmEditor.Create(panelWordEditor, ContractDM.qryContract,
    'CONTRACT_CONTENT');
  with wordEditor do
  begin
    ApplyOption(TControl(wordEditor));
    BorderStyle := bsNone;
    Parent := panelWordEditor;
    Align := alClient;
    Visible := true;
  end;
  viewContract.Report := ContractDM.rpContract;

  dxFromDate.Date := EncodeDate(YearOf(now), 1, 1);
  dxToDate.Date := Today;
  ContractDM.acCreateMem.Execute;
  acLayDanhsachHD.Execute;

  ContractDM.OpenContractData;
  dxImageEdit1.Text := '0';
  pageMain.ActivePage := tabWordEditor;

  // khoi tao frame send mail
  frameSendMail1.InitData;
  frameSendMail1.RegisterReport(mailReport, mailDesign,
    ExtractFileDir(Application.ExeName) + '\Reports\MailTemplate\Contract',
    'mail_Contract.rtm');
  frameSendMail1.CreateMasterFromControl(gridContractList, 'EMAIL');
  frameSendMail1.CreateDetailFromDataset(ContractDM.qryChitietHD,
    ppThongTinHD);
  frameSendMail1.CreateDetailFromDataset(ContractDM.qryResume,
    ppThongTinNV);
  frameSendMail1.CreateDetailFromDataset(ContractDM.qryChitietBonhiem,
    ppChitietBonhiem);
  frameSendMail1.CreateDetailFromDataset(ContractDM.qryChitietDieukhoan,
    ppChitietDieukhoan);
  frameSendMail1.dxSelectTemplate.Text := 'mail_Contract.rtm';
  frameSendMail1.dxSenderName.Text := sysConfig.Username;

end;

procedure TfrmContractManager.dxImageEdit1Change(Sender: TObject);
begin
  inherited;
  case StrToIntDef(string(dxImageEdit1.Text), 3) of
    0: viewContract.ZoomSetting := zs100Percent;
    1: viewContract.ZoomSetting := zsPageWidth;
    2: viewContract.ZoomSetting := zsPercentage;
    3: viewContract.ZoomSetting := zsWholePage;
  end;
end;

procedure TfrmContractManager.acZoomOutExecute(Sender: TObject);
begin
  inherited;
  viewContract.ZoomPercentage := viewContract.ZoomPercentage + 5;
end;

procedure TfrmContractManager.acZoomInExecute(Sender: TObject);
begin
  inherited;
  if viewContract.ZoomPercentage > 5 then
    viewContract.ZoomPercentage := viewContract.ZoomPercentage - 5;
end;

function TfrmContractManager.PrepareReport(type_prepare: integer): boolean;
var
  pathName, pathDirectory: string;
begin
  try
    pathDirectory := ExtractFilePath(Application.ExeName) +
      'Reports\ContractReport';
    case sysConfig.Language of
      0, 1:
        pathName := pathDirectory + '\Vn\' +
          ContractDM.qryContractTEMPLATE_FILE.AsString;
      2:
        pathName := pathDirectory + '\Eng\' +
          ContractDM.qryContractTEMPLATE_FILE.AsString;
    end;
    if (FileExists(pathName)) then
    begin
      ContractDM.rpContract.Template.FileName := pathName;
      ContractDM.rpContract.Template.Load;
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

procedure TfrmContractManager.acDesignExecute(Sender: TObject);
begin
  inherited;
  try
    if PrepareReport = false then exit;
    dmMain.DefOnBeforePrint(false, ContractDM.qryContract, self);
    ContractDM.dsnContract.ShowModal;
    ContractDM.rpContract.PrintToDevices;
  except
  end;
end;

procedure TfrmContractManager.acPrintExecute(Sender: TObject);
begin
  inherited;
  try
    if PrepareReport = false then exit;
    dmMain.DefOnBeforePrint(true, ContractDM.qryContract, self);
    ContractDM.rpContract.AllowPrintToFile := True;
    ContractDM.rpContract.DeviceType := dtPrinter;
    ContractDM.rpContract.Print;
  except
  end;
end;

procedure TfrmContractManager.acPreviewExecute(Sender: TObject);
begin
  inherited;
  try
    if PrepareReport = false then exit;
    dmMain.DefOnBeforePrint(true, ContractDM.qryContract, self);
    ContractDM.rpContract.AllowPrintToFile := True;
    ContractDM.rpContract.DeviceType := dtScreen;
    ContractDM.rpContract.Print;
  except
  end
end;

procedure TfrmContractManager.ppContractTypeInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryContractType.Open;
  InitPopupControl('dxlcContractType', frmPopupMain, sender, 2);

end;

procedure TfrmContractManager.ppContractTypeCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryContractTypeCONTRACT_TYPE_NAME.Value;
    CurContractType := frmPopupMain.qryContractTypeCONTRACT_TYPE_NO.Value;
    CurContractTypeName := frmPopupMain.qryContractTypeCONTRACT_TYPE_NAME.Value;
    CurReportTemplate := frmPopupMain.qryContractTypeREPORT_DEFAULT.Value;
    CurContractType_Limit:=frmPopupMain.qryContractTypeTIME_LIMIT.Value;
    CurContractType_Unit:=frmPopupMain.qryContractTypeTIME_UNIT.Value;
  end;
  frmPopupMain.qryDecisionType.Close;
end;

procedure TfrmContractManager.Splitter1Moved(Sender: TObject);
var
  grid_width, i, j: integer;
begin
  inherited;
  i := 0;
  j := 0;
  gridContractList.OptionsView := gridContractList.OptionsView -
    [edgoAutoWidth];
  grid_width := gridContractList.Width;
  repeat
    gridContractList.Columns[j].Visible := (i <= grid_width);
    i := i + gridContractList.Columns[j].Width;
    j := j + 1;
  until (j >= gridContractList.ColumnCount);
  gridContractList.OptionsView := gridContractList.OptionsView +
    [edgoAutoWidth];
end;

procedure TfrmContractManager.acLayDanhsachHDExecute(Sender: TObject);
begin
  inherited;

  Screen.Cursor := crSQLWait;
  begin
    ContractDM.qryContract.DisableControls;
    if ContractDM.qryContract.Active then
      ContractDM.qryContract.Close;
    if chkAll.Checked then
    begin
      ContractDM.qryContract.SQLWhere.Text :=
        'where HR_CONTRACT.STARTED_DATE between :FROM_DATE and :TO_DATE';
    end
    else
    begin
      ContractDM.qryContract.SQLWhere.Text :=
        'where (HR_CONTRACT.CONTRACT_TYPE_NO=:CONTRACT_TYPE_NO) and ' +
        ' (HR_CONTRACT.STARTED_DATE between :FROM_DATE and :TO_DATE)';
      ContractDM.qryContract.ParamByName('CONTRACT_TYPE_NO').Value :=
        CurContractType;
    end;
    ContractDM.qryContract.ParamByName('FROM_DATE').Value := dxFromDate.Date;
    ContractDM.qryContract.ParamByName('TO_DATE').Value := dxTodate.Date;
    ContractDM.qryContract.Open;
    ContractDM.qryContract.EnableControls;
  end;
  acViewReport.Execute;

  Screen.Cursor := crDefault;
end;

procedure TfrmContractManager.chkAllChange(Sender: TObject);
begin
  inherited;
  ppContractType.Enabled := not chkAll.Checked;
end;

procedure TfrmContractManager.acThietlapHDExecute(Sender: TObject);
var
  type_no, type_name, report_template: WideString;
  type_unit,type_limit:integer;
  stream: TStream;
  Contract_no: WideString;
begin
  inherited;
  if chkAll.Checked then
  begin
    if ContractDM.qryContract.RecordCount > 0 then
    begin
      type_no := ContractDM.qryContractCONTRACT_TYPE_NO.Value;
      type_name := ContractDM.qryContractCONTRACT_TYPE_NAME.Value;
      report_template := ContractDM.qryContractTEMPLATE_FILE.Value;
      type_unit:=ContractDM.qryContractTIME_UNIT.Value;
      type_limit:=ContractDM.qryContractTIME_LIMIT.Value;
    end
    else
    begin
      type_unit:=1;
      type_limit:=1;
      type_no :='';
      type_name :='';
      report_template :='';
    end
  end
  else
  begin
    if Length(CurContractType) > 0 then
    begin
      type_no := CurContractType;
      type_name := CurContractTypeName;
      report_template := CurReportTemplate;
      type_unit:=CurContractType_Unit;
      type_limit:=CurContractType_Limit;
    end
    else
    begin
      type_unit:=1;
      type_limit:=1;
      type_no :='';
      type_name :='';
      report_template :='';
    end
  end;

  contract_no := ContractDM.CreateContract('', '', type_no, type_name,type_limit,type_unit,
    report_template);
  if Length(Contract_no) > 0 then
  begin
    frmPopupMain.qryContractType.Open;
    if frmPopupMain.qryContractType.Locate('CONTRACT_TYPE_NO',
      ContractDM.qryContractCONTRACT_TYPE_NO.Value, []) then
    begin
      if not (ContractDM.qryContract.State in [dsInsert, dsEdit]) then
        ContractDM.qryContract.Edit;
      stream := TMemoryStream.Create;
      frmPopupMain.qryContractTypeTEMPLATE_CONTENT.SaveToStream(stream);
      ContractDM.qryContractCONTRACT_CONTENT.LoadFromStream(stream);
      ContractDM.qryContract.Post;
      stream.Free;
    end;
  end;
  acViewReport.Execute;
end;

procedure TfrmContractManager.acChitietHDExecute(Sender: TObject);
var
  book_mark: string;
begin
  inherited;
  ContractDM.ViewContract();
  acViewReport.Execute;
end;

procedure TfrmContractManager.acChitietHDUpdate(Sender: TObject);
begin
  inherited;
  acChitietHD.Enabled := (ContractDM.qryContract.RecordCount > 0);
end;

procedure TfrmContractManager.acXoaboQDUpdate(Sender: TObject);
begin
  inherited;
  acChitietHD.Enabled := (ContractDM.qryContract.RecordCount > 0);
end;

procedure TfrmContractManager.dxDBPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryReportTemplateList.ParamByname('TEMPLATE_TYPE').Value := 1;
  //Hop dong
  frmPopupMain.qryReportTemplateList.Open;
  InitPopupControl('dxlcReportTemplateList', frmPopupMain, sender, 2.5);
end;

procedure TfrmContractManager.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;

  OnPopupCloseUp(Accept, frmPopupMain.qryReportTemplateList,
    ContractDM.qryContract,
    'TEMPLATE_FILE', 'TEMPLATE_FILE',
    'TEMPLATE_FILE', Text);
  frmPopupMain.qryReportTemplateList.Close;
  dmMain.MsgChangeDataSource(ContractDM.dsContract, false);
end;

procedure TfrmContractManager.pageMainChange(Sender: TObject);
begin
  inherited;
  acViewReport.Execute;
end;

procedure TfrmContractManager.acViewReportExecute(Sender: TObject);
begin
  inherited;
  ContractDM.acRefreshMem.Execute;
  try
    if not (ContractDM.qryContract.State in [dsBrowse]) then
      exit
    else
      if pageMain.ActivePage = tabReportDesign then
    begin
      if PrepareReport(1) = false then exit;
      dmMain.DefOnBeforePrint(true, ContractDM.qryContract, self);
      ContractDM.rpContract.PrintToDevices;
    end;
  except
  end
end;

procedure TfrmContractManager.gridContractListChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  acViewReport.Execute;
end;

procedure TfrmContractManager.dxTodateChange(Sender: TObject);
begin
  inherited;
  if dxTodate.Date < dxFromDate.Date then
    dxTodate.Date := dxFromDate.Date;
end;

procedure TfrmContractManager.dxFromDateChange(Sender: TObject);
begin
  inherited;
  if dxTodate.Date < dxFromDate.Date then
    dxTodate.Date := dxFromDate.Date;
end;

procedure TfrmContractManager.chkFilterChange(Sender: TObject);
begin
  inherited;
  dxFilterRange.Enabled := chkFilter.Checked;
  gridContractList.Repaint;
end;

procedure TfrmContractManager.gridContractListCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: WideString; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
var
  temp: Variant;
  expired: TDate;
  range: integer;
begin
  inherited;

  try
    if chkFilter.Checked = false then exit;
    temp := ANode.Values[gridContractListEXPIRED_DATE.Index];
    if VarToStr(temp) <> '' then
    begin
      try
        expired := VarToDateTime(temp);
      except
        exit;
      end;
      if expired <= Today then
      begin
        AColor := clBtnFace;
        AFOnt.Color := clRed;
      end
      else
      begin
        range := DaysBetween(Today, expired);
        if range <= dxFilterRange.IntValue then
        begin
          AColor := $00FBF0EA;
          AFont.Color := clGreen;
          AFont.Style := AFont.Style + [fsUnderline]
        end;
      end
    end
  except
  end
  
end;

procedure TfrmContractManager.dxFilterRangeChange(Sender: TObject);
begin
  inherited;
  gridContractList.Repaint;
end;

procedure TfrmContractManager.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F10 then
    dmMain.ScanForm(self)
  else
    if Key = VK_F11 then
    dmMain.ScanForm(wordEditor)
  else
    if (Key = VK_F12) and (Shift = [ssCtrl]) then
    AuthorityConfig(self)
  else
    if (Key = VK_F12) then
    AuthorityConfig(ContractDM)
  else
    if (Key = VK_F1) and (Shift = [ssCtrl]) then
    ShowHelpContext(HelpFile)
  else
    if (Key = VK_F9) and (Shift = [ssCtrl]) then
    LogConfig(ContractDM)
  else
end;

procedure TfrmContractManager.acFirstPageExecute(Sender: TObject);
begin
  inherited;
  viewContract.FirstPage;
end;

procedure TfrmContractManager.acNextPageExecute(Sender: TObject);
begin
  inherited;
  viewContract.NextPage;
end;

procedure TfrmContractManager.acPriorPageExecute(Sender: TObject);
begin
  inherited;
  viewContract.PriorPage;
end;

procedure TfrmContractManager.acLastPageExecute(Sender: TObject);
begin
  inherited;
  viewContract.LastPage;
end;

procedure TfrmContractManager.acFirstPageUpdate(Sender: TObject);
begin
  inherited;
  acFirstPage.Enabled:= (viewContract.ScreenDevice.Page.AbsolutePageCount>0)and(not (viewContract.ScreenDevice.Page.FirstPage));
  acPriorPage.Enabled:=acFirstPage.Enabled;
end;

procedure TfrmContractManager.acLastPageUpdate(Sender: TObject);
begin
  inherited;
  acLastPage.Enabled:= (viewContract.ScreenDevice.Page.AbsolutePageCount>0)and(not (viewContract.ScreenDevice.Page.LastPage));
  acNextPage.Enabled:=acLastPage.Enabled;
end;

procedure TfrmContractManager.acTaonhanhHopdongExecute(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmContractGenerate,frmContractGenerate);
end;

end.

