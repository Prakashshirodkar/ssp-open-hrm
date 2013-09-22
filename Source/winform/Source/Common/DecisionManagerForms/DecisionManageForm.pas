unit DecisionManageForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxLayoutControl, ExtCtrls, cxControls,
  dxPageControl, ElPanel, ElSplit, ElPgCtl, ImgList, dxEditor, dxEdLib,
  ElBtnCtl, ElPopBtn, ActnList, EditorForm, ppViewr, DB, IBODataset, ppTypes,
  ppClass, ppCtrls, dxDBTLCl, dxGrClms, Grids, DBGrids, DBActns, dxDBELib,
  StdCtrls, ElCLabel, ElLabel, SendMailFrame, ppDB, ppDBPipe, ppEndUsr,
  ppComm, ppRelatv, ppProd, ppReport;

type
  TfrmDecisionManager = class(TfrmBase)
    mainPanel: TPanel;
    pageMain: TElPageControl;
    tabWordEditor: TElTabSheet;
    tabReportDesign: TElTabSheet;
    dxTodate: TdxDateEdit;
    dxFromDate: TdxDateEdit;
    ElPopupButton1: TElPopupButton;
    ActionList1: TActionList;
    acLayDanhsachQD: TAction;
    panelWordEditor: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    viewDecision: TppViewer;
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
    ElPopupButton2: TElPopupButton;
    ElPopupButton3: TElPopupButton;
    acThietlapQD: TAction;
    acChitietQD: TAction;
    gridDecisionList: TdxDBGrid;
    gridDecisionListDECISION_NO: TdxDBGridColumn;
    gridDecisionListDCS_TYPE_NAME: TdxDBGridColumn;
    gridDecisionListDECISION_TITLE: TdxDBGridColumn;
    gridDecisionListDECISION_DATE: TdxDBGridDateColumn;
    acQDDelete_old: TDataSetDelete;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxDBPopupEdit1: TdxDBPopupEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    acViewReport: TAction;
    dxLayoutControl2Group4: TdxLayoutGroup;
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    Panel1: TPanel;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl3Item1: TdxLayoutItem;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxLayoutControl3Item4: TdxLayoutItem;
    dxLayoutControl3Item5: TdxLayoutItem;
    dxLayoutControl3Item7: TdxLayoutItem;
    dxLayoutControl3Item8: TdxLayoutItem;
    dxLayoutControl3Item9: TdxLayoutItem;
    ElSplitter1: TElSplitter;
    dxLayoutControl3Group2: TdxLayoutGroup;
    ppDecisionType: TdxPopupEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Group4: TdxLayoutGroup;
    dxLayoutControl3Group1: TdxLayoutGroup;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl3Item6: TdxLayoutItem;
    dxLayoutControl3Group5: TdxLayoutGroup;
    tabSendmail: TElTabSheet;
    mailReport: TppReport;
    mailDesign: TppDesigner;
    frameSendMail1: TframeSendMail;
    mainPipeline: TppDBPipeline;
    ppCanhan_ChiutrachNhiem: TppDBPipeline;
    ppChitietBonhiem: TppDBPipeline;
    ppChitietThoiChucvu: TppDBPipeline;
    ppChuyentuVitri: TppDBPipeline;
    ppChuyendenVitri: TppDBPipeline;
    ppChitietThoiviec: TppDBPipeline;
    ppChuyenPhongbanTu: TppDBPipeline;
    ppChuyenPhongbanDen: TppDBPipeline;
    ppDanhsachKhenthuong: TppDBPipeline;
    ppDanhsachKyluat: TppDBPipeline;
    imgList: TImageList;
    acQDDelete: TAction;
    dxLayoutControl3Item10: TdxLayoutItem;
    ElPopupButton7: TElPopupButton;
    dxLayoutControl3Group3: TdxLayoutGroup;
    acChuyenThanhQDThat: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dxImageEdit1Change(Sender: TObject);
    procedure acZoomOutExecute(Sender: TObject);
    procedure acZoomInExecute(Sender: TObject);
    procedure acDesignExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    function PrepareReport(type_prepare: integer = 0): boolean;
    procedure acPreviewExecute(Sender: TObject);
    procedure ppDecisionTypeInitPopup(Sender: TObject);
    procedure ppDecisionTypeCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure Splitter1Moved(Sender: TObject);
    procedure acLayDanhsachQDExecute(Sender: TObject);
    procedure chkAllChange(Sender: TObject);
    procedure acThietlapQDExecute(Sender: TObject);
    procedure acChitietQDExecute(Sender: TObject);
    procedure acChitietQDUpdate(Sender: TObject);
    procedure acXoaboQDUpdate(Sender: TObject);
    procedure acQDDelete_oldExecute(Sender: TObject);
    procedure dxDBPopupEdit1InitPopup(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure pageMainChange(Sender: TObject);
    procedure acViewReportExecute(Sender: TObject);
    procedure gridDecisionListChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure FormActivate(Sender: TObject);
    procedure dxTodateChange(Sender: TObject);
    procedure dxFromDateChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acQDDeleteUpdate(Sender: TObject);
    procedure acQDDeleteExecute(Sender: TObject);
    procedure acChuyenThanhQDThatExecute(Sender: TObject);
    procedure frameSendMail1ElPopupButton1Click(Sender: TObject);

  private
    { Private declarations }
    wordEditor: TfrmEditor;
  public
    { Public declarations }
  protected
    CurDecisionType, CurDecisionTypeName, CurReportTemplate: WideString;
  end;
  // cac ham dung chung

var
  frmDecisionManager: TfrmDecisionManager;

implementation

uses MainDM, DecisionDataModule, SSP_Library, PopupMainForm, DateUtils,
  DecisionMakerForm, DanhSachQDAoForm;

{$R *.dfm}

procedure TfrmDecisionManager.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: integer;
begin
  inherited;
  frameSendMail1.FreeComponent;
  DecisionDM.acFreeMem.Execute;   
  dmMain.MsgChangeDataSource(DecisionDM.dsDecisions);
  DecisionDM.CloseDecisionData;
  wordEditor.Free;
  action := caFree;
  frmDecisionManager := nil;
end;

procedure TfrmDecisionManager.FormCreate(Sender: TObject);
var
  i: integer;
begin
  inherited;
  wordEditor := TfrmEditor.Create(panelWordEditor, DecisionDM.qryDecisions,
    'DECISION_CONTENT');
  with wordEditor do
  begin
    ApplyOption(TControl(wordEditor));
    BorderStyle := bsNone;
    Parent := panelWordEditor;
    Align := alClient;
    Visible := true;
  end;
  try
    viewDecision.Report := DecisionDM.rpDecision;
  except
  end;
  dxFromDate.Date := EncodeDate(YearOf(now), 1, 1);
  dxToDate.Date := Today;
  DecisionDM.acCreateMem.Execute;   
  acLayDanhsachQD.Execute;

  DecisionDM.OpenDecisionData;
  dxImageEdit1.Text := '0';
  pageMain.ActivePage := tabWordEditor;
  // khoi tao frame send mail
  frameSendMail1.InitData;
  frameSendMail1.RegisterReport(mailReport, mailDesign,
    ExtractFileDir(Application.ExeName) + '\Reports\MailTemplate\Decision',
    'mail_Decision.rtm');
  frameSendMail1.CreateMasterFromControl(gridDecisionList, '');
  frameSendMail1.RegisterRecipientList(frameSendMail1.CreateDetailFromDataset(DecisionDM.qryDecision_Emp, ppCanhan_ChiutrachNhiem), 'EMAIL');

  frameSendMail1.CreateDetailFromDataset(DecisionDM.qryChitietBonhiem,
    ppChitietBonhiem);
  frameSendMail1.CreateDetailFromDataset(DecisionDM.qryChitietThoiCV,
    ppChitietThoiChucvu);
//TODO : Xem lai cach lay du lieu bao cao chuyen ctac
//  frameSendMail1.CreateDetailFromDataset(DecisionDM.qryFromPositions,
//    ppChuyentuVitri);
  frameSendMail1.CreateDetailFromDataset(DecisionDM.qryOffWork,
    ppChitietThoiviec);
  frameSendMail1.CreateDetailFromDataset(DecisionDM.qryFromDept,
    ppChuyenPhongbanTu);
  frameSendMail1.CreateDetailFromDataset(DecisionDM.qryToDept,
    ppChuyenPhongbanDen);
  frameSendMail1.CreateDetailFromDataset(DecisionDM.qryRewardDecision,
    ppDanhsachKhenthuong);
  frameSendMail1.CreateDetailFromDataset(DecisionDM.qryDisciplineDecision,
    ppDanhsachKyluat);

  frameSendMail1.dxSelectTemplate.Text := 'mail_Decision.rtm';
  frameSendMail1.dxSenderName.Text := sysConfig.Username;
end;

procedure TfrmDecisionManager.dxImageEdit1Change(Sender: TObject);
begin
  inherited;
  case StrToIntDef(string(dxImageEdit1.Text), 3) of
    0: viewDecision.ZoomSetting := zs100Percent;
    1: viewDecision.ZoomSetting := zsPageWidth;
    2: viewDecision.ZoomSetting := zsPercentage;
    3: viewDecision.ZoomSetting := zsWholePage;
  end;
end;

procedure TfrmDecisionManager.acZoomOutExecute(Sender: TObject);
begin
  inherited;
  viewDecision.ZoomPercentage := viewDecision.ZoomPercentage + 5;
end;

procedure TfrmDecisionManager.acZoomInExecute(Sender: TObject);
begin
  inherited;
  if viewDecision.ZoomPercentage > 5 then
    viewDecision.ZoomPercentage := viewDecision.ZoomPercentage - 5;
end;

function TfrmDecisionManager.PrepareReport(type_prepare: integer): boolean;
var
  pathName, pathDirectory: string;
begin
  try
    pathDirectory := ExtractFilePath(Application.ExeName) +
      'Reports\DecisionReport';
    case sysConfig.Language of
      0, 1:
        pathName := pathDirectory + '\Vn\' +
          DecisionDM.qryDecisionsTEMPLATE_FILE.AsString;
      2:
        pathName := pathDirectory + '\Eng\' +
          DecisionDM.qryDecisionsTEMPLATE_FILE.AsString;
    end;
    if (FileExists(pathName)) then
    begin
      DecisionDM.rpDecision.Template.FileName := pathName;
      DecisionDM.rpDecision.Template.Load;
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

procedure TfrmDecisionManager.acDesignExecute(Sender: TObject);
begin
  inherited;
  try
    if PrepareReport = false then exit;
    dmMain.DefOnBeforePrint(false, DecisionDM.qryDecisions, DecisionDM);
    DecisionDM.dsgDecision.ShowModal;
    DecisionDM.rpDecision.PrintToDevices;
  except
  end;
end;

procedure TfrmDecisionManager.acPrintExecute(Sender: TObject);
begin
  inherited;
  try
    if PrepareReport = false then exit;
    dmMain.DefOnBeforePrint(true, DecisionDM.qryDecisions, DecisionDM);
    DecisionDM.rpDecision.AllowPrintToFile := True;
    DecisionDM.rpDecision.DeviceType := dtPrinter;
    DecisionDM.rpDecision.Print;
  except
  end;
end;

procedure TfrmDecisionManager.acPreviewExecute(Sender: TObject);
begin
  inherited;
  DecisionDM.acRefreshMem.Execute;    
  try
    if PrepareReport = false then exit;
    dmMain.DefOnBeforePrint(true, DecisionDM.qryDecisions, DecisionDM);
    DecisionDM.rpDecision.AllowPrintToFile := True;
    DecisionDM.rpDecision.DeviceType := dtScreen;
    DecisionDM.rpDecision.Print;
  except
  end;
end;

procedure TfrmDecisionManager.ppDecisionTypeInitPopup(Sender: TObject);
begin
  inherited;
  //NXHop modified and notified
  //  frmPopupMain.qryDecisionType.ParamByName('USER_NAME').Value:=sysConfig.User;
  //  frmPopupMain.qryDecisionType.ParamByName('LANGUAGE_ID').Value:=sysConfig.Language;
  frmPopupMain.qryDecisionType.Open;
  InitPopupControl('dxlcDecisionType', frmPopupMain, sender, 2);
end;

procedure TfrmDecisionManager.ppDecisionTypeCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryDecisionTypeSTT.AsString + ' - ' +
      frmPopupMain.qryDecisionTypeDCS_TYPE_NAME.Value;
    CurDecisionType := frmPopupMain.qryDecisionTypeDCS_TYPE_NO.Value;
    CurDecisionTypeName := frmPopupMain.qryDecisionTypeDCS_TYPE_NAME.Value;
    CurReportTemplate :=
      frmPopupMain.qryDecisionTypeREPORT_TEMPLATE_DEFAULT.Value;
  end;
  frmPopupMain.qryDecisionType.Close;
end;

procedure TfrmDecisionManager.Splitter1Moved(Sender: TObject);
var
  grid_width, i, j: integer;
begin
  inherited;
  i := 0;
  j := 0;
  gridDecisionList.OptionsView := gridDecisionList.OptionsView -
    [edgoAutoWidth];
  grid_width := gridDecisionList.Width;
  repeat
    gridDecisionList.Columns[j].Visible := (i <= grid_width);
    i := i + gridDecisionList.Columns[j].Width;
    j := j + 1;
  until (j >= gridDecisionList.ColumnCount);
  gridDecisionList.OptionsView := gridDecisionList.OptionsView +
    [edgoAutoWidth];
end;

procedure TfrmDecisionManager.acLayDanhsachQDExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  begin
    //DecisionDM.qryDecisions.DisableControls;
    if DecisionDM.qryDecisions.Active then
      DecisionDM.qryDecisions.Close;
    if chkAll.Checked then
    begin
      DecisionDM.qryDecisions.SQLWhere.Text :=
        'where DECISION_DATE between :FROM_DATE and :TO_DATE ' +
        'and QD_THAT = 1';
    end
    else
    begin
      DecisionDM.qryDecisions.SQLWhere.Text :=
        'where (DECISION_TYPE_NO=:DCS_TYPE_NO) and ' +
        ' (DECISION_DATE between :FROM_DATE and :TO_DATE) ' +
        'and QD_THAT = 1';
      DecisionDM.qryDecisions.ParamByName('DCS_TYPE_NO').Value :=
        CurDecisionType;
    end;
    DecisionDM.qryDecisions.ParamByName('FROM_DATE').Value := dxFromDate.Date;
    DecisionDM.qryDecisions.ParamByName('TO_DATE').Value := dxTodate.Date;
    DecisionDM.qryDecisions.Open;
   // DecisionDM.qryDecisions.EnableControls;
  end;
  acViewReport.Execute;

  Screen.Cursor := crDefault;
end;

procedure TfrmDecisionManager.chkAllChange(Sender: TObject);
begin
  inherited;
  ppDecisionType.Enabled := not chkAll.Checked;
end;

procedure TfrmDecisionManager.acThietlapQDExecute(Sender: TObject);
var
  dcs_type_no, dcs_type_name, report_template: WideString;
  stream: TStream;
begin
  inherited;
  if chkAll.Checked then
  begin
    if DecisionDM.qryDecisions.RecordCount > 0 then
    begin
      dcs_type_no := DecisionDM.qryDecisionsDECISION_TYPE_NO.Value;
      dcs_type_name := DecisionDM.qryDecisionsDCS_TYPE_NAME.Value;
      report_template := DecisionDM.qryDecisionsTEMPLATE_FILE.Value;
    end;
  end
  else
  begin
    if Length(CurDecisionType) > 0 then
    begin
      dcs_type_no := CurDecisionType;
      dcs_type_name := CurDecisionTypeName;
      report_template := CurReportTemplate;
    end;
  end;
  if Length(dcs_type_no) = 0 then
    ShowMessageUnicode(37)
  else
  begin
    DecisionDM.qryDecisions.Append;
    DecisionDM.qryDecisionsDECISION_TYPE_NO.Value := dcs_type_no;
    DecisionDM.qryDecisionsDCS_TYPE_NAME.Value := dcs_type_name;
    DecisionDM.qryDecisionsTEMPLATE_FILE.Value := report_template;

    with TfrmDecisionMaker.Create(Self) do
    try
      if ShowModal = mrOK then
      begin
        frmPopupMain.qryDecisionType.Open;
        if frmPopupMain.qryDecisionType.Locate('DCS_TYPE_NO',
          DecisionDM.qryDecisionsDECISION_TYPE_NO.Value, []) then
        begin
          if not (DecisionDM.qryDecisions.State in [dsInsert, dsEdit]) then
            DecisionDM.qryDecisions.Edit;
          stream := TMemoryStream.Create;
          frmPopupMain.qryDecisionTypeDOC_TEMPLATE_CONTENT.SaveToStream(stream);
          DecisionDM.qryDecisionsDECISION_CONTENT.LoadFromStream(stream);
          DecisionDM.qryDecisions.Post;
          stream.Free;
        end;
      end
    finally
      Free;
    end;
  end;
  acViewReport.Execute;
end;

procedure TfrmDecisionManager.acChitietQDExecute(Sender: TObject);
var
  book_mark: string;
begin
  inherited;
  ShowModalForm(TfrmDecisionMaker, frmDecisionMaker);
  acViewReport.Execute;
end;

procedure TfrmDecisionManager.acChitietQDUpdate(Sender: TObject);
begin
  inherited;
  acChitietQD.Enabled := (DecisionDM.qryDecisions.RecordCount > 0);
end;

procedure TfrmDecisionManager.acXoaboQDUpdate(Sender: TObject);
begin
  inherited;
  acChitietQD.Enabled := (DecisionDM.qryDecisions.RecordCount > 0);
end;

procedure TfrmDecisionManager.acQDDelete_oldExecute(Sender: TObject);
begin
  inherited;
  dmMain.DeleteExecute(DecisionDM.qryDecisions);
  acViewReport.Execute;
end;

procedure TfrmDecisionManager.dxDBPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryReportTemplateList.ParamByname('TEMPLATE_TYPE').Value := 0;
    //quyet dinh
  frmPopupMain.qryReportTemplateList.Open;
  InitPopupControl('dxlcReportTemplateList', frmPopupMain, sender, 2.5);
end;

procedure TfrmDecisionManager.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryReportTemplateList,
    DecisionDM.qryDecisions,
    'TEMPLATE_FILE', 'TEMPLATE_FILE',
    'TEMPLATE_FILE', Text);
  frmPopupMain.qryReportTemplateList.Close;
  dmMain.MsgChangeDataSource(DecisionDM.dsDecisions, false);
end;

procedure TfrmDecisionManager.pageMainChange(Sender: TObject);
begin
  inherited;
  if pageMain.ActivePage = tabReportDesign then
    acViewReport.Execute;
end;

procedure TfrmDecisionManager.acViewReportExecute(Sender: TObject);
begin
  inherited;
  try
    if not (DecisionDM.qryDecisions.State in [dsBrowse]) then exit;
    if pageMain.ActivePage = tabReportDesign then
    begin
      if PrepareReport(1) = false then exit;
      dmMain.DefOnBeforePrint(true, DecisionDM.qryDecisions, DecisionDM);
      DecisionDM.rpDecision.PrintToDevices;
    end;
  except
  end;
end;

procedure TfrmDecisionManager.gridDecisionListChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  acViewReport.Execute;
  {frameSendMail1.InitData;
  frameSendMail1.RegisterReport(mailReport, mailDesign,
    ExtractFileDir(Application.ExeName) + '\Reports\MailTemplate\Decision',
    'mail_Decision.rtm');
  frameSendMail1.CreateMasterFromControl(gridDecisionList, '');
  frameSendMail1.RegisterRecipientList(frameSendMail1.CreateDetailFromDataset(DecisionDM.qryDecision_Emp, ppCanhan_ChiutrachNhiem), 'EMAIL');

  frameSendMail1.CreateDetailFromDataset(DecisionDM.qryChitietBonhiem,
    ppChitietBonhiem);
  frameSendMail1.CreateDetailFromDataset(DecisionDM.qryChitietThoiCV,
    ppChitietThoiChucvu);
  frameSendMail1.CreateDetailFromDataset(DecisionDM.qryFromPositions,
    ppChuyentuVitri);
  frameSendMail1.CreateDetailFromDataset(DecisionDM.qryToPositions,
    ppChuyendenVitri);
  frameSendMail1.CreateDetailFromDataset(DecisionDM.qryOffWork,
    ppChitietThoiviec);
  frameSendMail1.CreateDetailFromDataset(DecisionDM.qryFromDept,
    ppChuyenPhongbanTu);
  frameSendMail1.CreateDetailFromDataset(DecisionDM.qryToDept,
    ppChuyenPhongbanDen);
  frameSendMail1.CreateDetailFromDataset(DecisionDM.qryRewardDecision,
    ppDanhsachKhenthuong);
  frameSendMail1.CreateDetailFromDataset(DecisionDM.qryDisciplineDecision,
    ppDanhsachKyluat);

  frameSendMail1.dxSelectTemplate.Text := 'mail_Decision.rtm';
  frameSendMail1.dxSenderName.Text := sysConfig.Username;} 
end;

procedure TfrmDecisionManager.FormActivate(Sender: TObject);
var
  i: integer;
begin
  inherited;
{    for i:=0 to DecisionDM.ComponentCount-1 do
    begin
      if (DecisionDM.Components[i] is TIBOQuery) then
       if not (DecisionDM.Components[i] as TIBOQuery).Active then
        (DecisionDM.Components[i] as TIBOQuery).Open
       else
        (DecisionDM.Components[i] as TIBOQuery).Refresh;
    end; }
end;

procedure TfrmDecisionManager.dxTodateChange(Sender: TObject);
begin
  inherited;
  if dxTodate.Date < dxFromDate.Date then
    dxTodate.Date := dxFromDate.Date;
end;

procedure TfrmDecisionManager.dxFromDateChange(Sender: TObject);
begin
  inherited;
  if dxTodate.Date < dxFromDate.Date then
    dxTodate.Date := dxFromDate.Date;
end;

procedure TfrmDecisionManager.FormKeyDown(Sender: TObject; var Key: Word;
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
    AuthorityConfig(DecisionDM)
  else
    if (Key = VK_F1) and (Shift = [ssCtrl]) then
    ShowHelpContext(HelpFile)
  else
    if (Key = VK_F9) and (Shift = [ssCtrl]) then
    LogConfig(DecisionDM)
  else
end;

procedure TfrmDecisionManager.acQDDeleteUpdate(Sender: TObject);
begin
  inherited;
  acQDDelete.Enabled:=not( DecisionDM.qryDecisions.IsEmpty or
       (DecisionDM.qryDecisions.State in [dsInsert,dsEdit]));
end;

procedure TfrmDecisionManager.acQDDeleteExecute(Sender: TObject);
var
  i : integer;
begin
  inherited;
  //Edit by THUYPTP - 29/4/2009 
  //dmMain.DeleteExecute(DecisionDM.qryDecisions);
  if (DecisionDM.qryDecisions.State in [dsInsert, dsEdit]) then
    exit;
  if DecisionDM.qryDecisions.IsEmpty then
    exit;
  if ShowMessageUnicode(9) = mrYes then
  begin
    for i:=0 to gridDecisionList.SelectedCount -1 do
    begin
      try
        DecisionDM.qryDecisions.Delete;
        if not DecisionDM.qryDecisions.IB_Transaction.AutoCommit then
          DecisionDM.qryDecisions.IB_Transaction.CommitRetaining;
      except
      end;
    END;
    acViewReport.Execute;
  end;
end;

procedure TfrmDecisionManager.acChuyenThanhQDThatExecute(Sender: TObject);
begin
  inherited;
  try
    frmDanhSachQDAo := TfrmDanhSachQDAo.Create(self, CurDecisionType,ppDecisionType.Text,
      chkAll.Checked,dxFromDate.Date, dxTodate.Date);   
    if frmDanhSachQDAo.ShowModal = mrOK then
      acLayDanhsachQD.Execute;
  finally
    frmDanhSachQDAo.Free;
    frmDanhSachQDAo := nil;
  end;
end;

procedure TfrmDecisionManager.frameSendMail1ElPopupButton1Click(
  Sender: TObject);
begin
  inherited;
  frameSendMail1.acSendMailExecute(Sender);

end;

end.

