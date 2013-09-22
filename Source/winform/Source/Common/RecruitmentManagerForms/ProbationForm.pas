unit ProbationForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls, ElPanel, ElPgCtl, dxEdLib, dxEditor, ElBtnCtl, ElPopBtn,
  dxDBTLCl, dxGrClms, DB, IBODataset, ActnList, ImgList, DBActns, ElSplit,
  ToolbarFrame, dxGrClEx, dxDBELib, ppDB, ppDBPipe, ppEndUsr, ppComm,
  ppRelatv, ppProd, ppClass, ppReport;

type
  TfrmProbation = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    gridCheckList: TdxDBGrid;
    gridRecruitingPlan: TdxDBGrid;
    pageMain: TElPageControl;
    qryRecruitmentPlan: TIBOQuery;
    qryRecruitmentPlanPLAN_NO: TWideStringField;
    qryRecruitmentPlanPLAN_NAME: TWideStringField;
    qryRecruitmentPlanFROM_DATE: TDateField;
    qryRecruitmentPlanTO_DATE: TDateField;
    dsRecruitmentPlan: TDataSource;
    gridRecruitingPlanPLAN_NAME: TdxDBGridColumn;
    gridRecruitingPlanFROM_DATE: TdxDBGridDateColumn;
    gridRecruitingPlanTO_DATE: TdxDBGridDateColumn;
    qryNeedInfo: TIBOQuery;
    dsNeedInfo: TDataSource;
    qryNeedInfoPOSITION_NO: TWideStringField;
    qryNeedInfoDEPT_NAME: TWideStringField;
    qryNeedInfoTITLE_NAME: TWideStringField;
    ActionList1: TActionList;
    acInitTabInterface: TAction;
    gridRecruitingPlanPLAN_NO: TdxDBGridColumn;
    ImageList1: TImageList;
    acCreateCheckList: TAction;
    acCheckListRefresh: TAction;
    ColorDialog1: TColorDialog;
    DataSetCancel1: TDataSetCancel;
    DataSetPost1: TDataSetPost;
    dxLayoutControl1Item13: TdxLayoutItem;
    frameToolbar1: TframeToolbar;
    panelMain: TPanel;
    dxLayoutControl1Item14: TdxLayoutItem;
    qryExecute: TIBOQuery;
    panelLeft: TPanel;
    ElSplitter1: TElSplitter;
    ElSplitter2: TElSplitter;
    pageDetail: TElPageControl;
    tabPhieuDanhgia: TElTabSheet;
    acBonhiem: TAction;
    acKyHopdong: TAction;
    qryProbationer: TIBOQuery;
    dsProbationer: TDataSource;
    dxLayoutControl2: TdxLayoutControl;
    panelPortrait: TPanel;
    dbimGENDER: TdxDBImageEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit11: TdxDBEdit;
    gridProbationResult: TdxDBGrid;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxProbationerDATE: TdxDBDateEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxDBDateEdit3: TdxDBDateEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxDBPopupEdit2: TdxDBPopupEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    qryProbationResult: TIBOQuery;
    dsProbationResult: TDataSource;
    qryProbationResultPROBATION_NO: TWideStringField;
    qryProbationResultITEM_INDEX: TIntegerField;
    qryProbationResultITEM_CONTENT: TWideStringField;
    qryProbationResultITEM_MARK: TIBOFloatField;
    qryProbationResultITEM_NOTE: TWideStringField;
    gridCheckListEMPLOYEE_NO: TdxDBGridMaskColumn;
    gridCheckListFULL_NAME: TdxDBGridMaskColumn;
    gridProbationResultITEM_INDEX: TdxDBGridSpinColumn;
    gridProbationResultITEM_CONTENT: TdxDBGridColumn;
    gridProbationResultITEM_MARK: TdxDBGridCalcColumn;
    gridProbationResultITEM_NOTE: TdxDBGridColumn;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    imglGender: TImageList;
    qryProbationerEMPLOYEE_NO: TWideStringField;
    qryProbationerFULL_NAME: TWideStringField;
    qryProbationerGENDER: TSmallintField;
    qryProbationerBIRTH_DATE: TDateField;
    qryProbationerPORTRAIT: TBlobField;
    qryProbationerIMG_TYPE: TWideStringField;
    qryProbationerPROBATION_NO: TWideStringField;
    qryProbationerPOSITION_MAIN_NO: TWideStringField;
    qryProbationerPOSITION_NAME: TWideStringField;
    qryProbationerPOSITION_NO: TWideStringField;
    qryProbationerCHECK_MARK: TIBOFloatField;
    qryProbationerSTART_DATE: TDateField;
    qryProbationerEND_DATE: TDateField;
    qryProbationerCONTRACT_NO: TWideStringField;
    qryProbationerDECISION_NO: TWideStringField;
    qryProbationerIS_CADIDATE: TSmallintField;
    qryProbationerSTATE: TSmallintField;
    gridCheckListIS_CADIDATE: TdxDBGridCheckColumn;
    gridCheckListSTATE: TdxDBGridCheckColumn;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxLayoutControl2Item5: TdxLayoutItem;
    qryProbationerCUR_POSITION_TITLE: TWideStringField;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    rpProbation: TppReport;
    dsnProbation: TppDesigner;
    ppKehoachTuyendung: TppDBPipeline;
    ppKetquaThuviec: TppDBPipeline;
    ppDanhsachUngvien: TppDBPipeline;
    ActionList2: TActionList;
    acXem: TAction;
    acThietke: TAction;
    acIn: TAction;
    dxSelectFile: TdxPopupEdit;
    dxLayoutControl2Item7: TdxLayoutItem;
    qryProbationerLUONG_KHOIDIEM: TIBOFloatField;
    dxDBCalcEdit1: TdxDBCalcEdit;
    dxLayoutControl2Group5: TdxLayoutGroup;
    dxLayoutControl2Group7: TdxLayoutGroup;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl2Item8: TdxLayoutItem;
    qryCurrenrProbationer: TIBOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    SmallintField1: TSmallintField;
    DateField1: TDateField;
    BlobField1: TBlobField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    IBOFloatField1: TIBOFloatField;
    DateField2: TDateField;
    DateField3: TDateField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    WideStringField10: TWideStringField;
    IBOFloatField2: TIBOFloatField;
    dsCurrenrProbationer: TDataSource;
    ppUngVienHienHanh: TppDBPipeline;
    qryCurrenrProbationerRESIDENT_ADDR: TWideStringField;
    qryCurrenrProbationerCONTACT_ADDR: TWideStringField;
    qryCurrenrProbationerGENDER_TEXT: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acInitTabInterfaceExecute(Sender: TObject);
    procedure pageMainChange(Sender: TObject);
    procedure acCheckListRefreshExecute(Sender: TObject);
    procedure gridRecruitingPlanChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure acCreateCheckListExecute(Sender: TObject);
    procedure acCreateCheckListUpdate(Sender: TObject);
    procedure dxDBPopupEdit2InitPopup(Sender: TObject);
    procedure dxDBPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxProbationerDATEEnter(Sender: TObject);
    procedure gridProbationResultEnter(Sender: TObject);
    procedure qryProbationResultNewRecord(DataSet: TDataSet);
    procedure qryProbationerAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure acKyHopdongExecute(Sender: TObject);
    procedure acKyHopdongUpdate(Sender: TObject);
    function PrepareReport(type_prepare:integer=0): boolean;
    procedure acXemExecute(Sender: TObject);
    procedure acThietkeExecute(Sender: TObject);
    procedure acInExecute(Sender: TObject);
    procedure dxSelectFileInitPopup(Sender: TObject);
    procedure dxSelectFileCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectFileChange(Sender: TObject);
  private
    { Private declarations }
    TEMPLATE_FILE:String;
  public
    { Public declarations }
  end;
var
  frmProbation: TfrmProbation;
implementation
uses MainDM, EmpInfoDataModule, CreateCandidatorList, PopupMainForm,
  SSP_Library, ContractDataModule,ppTypes;

{$R *.dfm}

procedure TfrmProbation.FormCreate(Sender: TObject);
begin
  dbimGENDER.Descriptions.Add(Utf8Decode('Nữ'));
  dbimGENDER.Descriptions.Add(Utf8Decode('Nam'));
  dbimGENDER.Values.Add('0');
  dbimGENDER.Values.Add('1');
  dbimGENDER.Images:=imglGender;
  dbimGENDER.ImageIndexes.Add('0');
  dbimGENDER.ImageIndexes.Add('1');
{
  dxResult.Descriptions.Add(Utf8Decode(''));
  dxResult.Descriptions.Add(Utf8Decode('Chưa được tuyển dụng'));
  dxResult.Descriptions.Add(Utf8Decode('Đã được bổ nhiệm - Chưa ký hợp đồng'));
  dxResult.Descriptions.Add(Utf8Decode('Đã ký hợp đồng lao động'));

  dxResult.Values.Add('NULL');
  dxResult.Values.Add('CHUA_TUYENDUNG');
  dxResult.Values.Add('DA_BONHIEM');
  dxResult.Values.Add('DA_KYHOPDONG');
}
  inherited;
  qryRecruitmentPlan.Open;
  qryNeedInfo.Open;
  acInitTabInterface.Execute;
  qryProbationResult.Open;
end;

procedure TfrmProbation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryProbationResult.Close;
  qryNeedInfo.Close;
  qryProbationer.Close;
  qryRecruitmentPlan.Close;
end;

procedure TfrmProbation.acInitTabInterfaceExecute(Sender: TObject);
var i,page_count:integer;
begin
  inherited;
  page_count:=qryNeedInfo.RecordCount;
  if (pageMain.PageCount>page_count)then
  begin
    for i:=pageMain.PageCount-1 downto page_count do
      pageMain.Pages[i].Free;
  end
  else
  if (pageMain.PageCount<page_count)then
  begin
    for i:=pageMain.PageCount to page_count-1 do
      pageMain.NewPage;
  end;
  //============================================
  if page_count>0 then
  begin
    qryNeedInfo.First;
    i:=0;
    while not qryNeedInfo.Eof do
    begin
      if i<pageMain.PageCount then
       pageMain.Pages[i].Caption:=qryNeedInfoPOSITION_NO.Value;
      qryNeedInfo.Next;
      i:=i+1;
    end;
    pageMain.ActivePageIndex:=0;
    acCheckListRefresh.Execute;
  end
  else
  begin
    if qryProbationer.Active then
      qryProbationer.Close;
  end;
end;

procedure TfrmProbation.pageMainChange(Sender: TObject);

begin
  inherited;
  acCheckListRefresh.Execute;
end;

procedure TfrmProbation.acCheckListRefreshExecute(Sender: TObject);
var rec_no:Integer;
begin
  inherited;
  rec_no:=pageMain.ActivePageIndex;
  qryNeedInfo.First;
  qryNeedInfo.MoveBy(rec_no);
  gridCheckList.Bands[0].Caption:=WideUpperCase( qryNeedInfoTITLE_NAME.Value+' - '+
    qryNeedInfoDEPT_NAME.Value);

  qryProbationer.DisableControls;
  if qryProbationer.Active then
    qryProbationer.Close;
  qryProbationer.ParamByName('PLAN_NO').Value:=
     qryRecruitmentPlanPLAN_NO.Value;

  if pageMain.PageCount>0 then
    qryProbationer.ParamByName('POSITION_NO').Value:=pageMain.ActivePage.Caption
  else
    qryProbationer.ParamByName('POSITION_NO').Clear;
  qryProbationer.Open;
  qryProbationer.EnableControls;
end;

procedure TfrmProbation.gridRecruitingPlanChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  acInitTabInterface.Execute;
end;

procedure TfrmProbation.acCreateCheckListExecute(Sender: TObject);
begin
  inherited;
  frmCreateCandidatorList:=
    TfrmCreateCandidatorList.Create(Self,qryRecruitmentPlan.FieldByName('PLAN_NO').Value,
         '','THU_VIEC');
  with frmCreateCandidatorList do
  try
    if ShowModal=mrOk then
      acCheckListRefresh.Execute;
  finally
    Free;
  end;
  frmCreateCandidatorList:=nil;
end;

procedure TfrmProbation.acCreateCheckListUpdate(Sender: TObject);
begin
  inherited;
  acCreateCheckList.Enabled:=(qryRecruitmentPlan.RecordCount>0);
end;

procedure TfrmProbation.dxDBPopupEdit2InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryPosition .Open;
  InitPopupControl('dxlcPosition',frmPopupMain,sender,2);
end;

procedure TfrmProbation.dxDBPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryPosition,qryProbationer,
               'POSITION_NO;POSITION_TITLE','POSITION_MAIN_NO;POSITION_NAME',
               'POSITION_TITLE',Text);
    frmPopupMain.qryPosition.Close;
end;

procedure TfrmProbation.dxProbationerDATEEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsProbationer);
  frameToolbar1.dxlctrlInsert.Visible:=false;
  frameToolbar1.dxlctrlDelete.Visible:=false;
  frameToolbar1.dxlctrlInsertCopy.Visible:=false;
end;

procedure TfrmProbation.gridProbationResultEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsProbationResult);
  frameToolbar1.dxlctrlInsert.Visible:=true;
  frameToolbar1.dxlctrlDelete.Visible:=true;
  frameToolbar1.dxlctrlInsertCopy.Visible:=true;
end;

procedure TfrmProbation.qryProbationResultNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryProbationResultITEM_INDEX.Value:=qryProbationResult.RecordCount;
end;

procedure TfrmProbation.qryProbationerAfterScroll(DataSet: TDataSet);
begin
  inherited;
{
  if qryProbationerCONTRACT_NO.IsNull then
  begin
    if qryProbationerDECISION_NO.IsNull then
    begin
      if qryProbationer.RecordCount=0 then
        dxResult.Text:='NULL'
      else
        dxResult.Text:='CHUA_TUYENDUNG'
    end
    else
      dxResult.Text:='DA_BONHIEM';
  end
  else
    dxResult.Text:='DA_KYHOPDONG'
}    
end;

procedure TfrmProbation.FormShow(Sender: TObject);
begin
  inherited;
  gridCheckList.SetFocus;
end;

procedure TfrmProbation.acKyHopdongExecute(Sender: TObject);
begin
  inherited;
  ContractDM.CreateContract(qryProbationerEMPLOYEE_NO.Value,qryProbationerFULL_NAME.Value);
  qryProbationer.Refresh;
end;

procedure TfrmProbation.acKyHopdongUpdate(Sender: TObject);
begin
  inherited;
  acKyHopdong.Enabled:=(qryProbationer.RecordCount>0)and
                       (qryProbationerIS_CADIDATE.Value=1) and
                       (qryProbationerSTATE.Value=1);
end;
function TfrmProbation.PrepareReport(type_prepare:integer): boolean;
var
  pathName, pathDirectory: string;
begin
 try
    pathDirectory := ExtractFilePath(Application.ExeName) + 'Reports\RecruitmentReport';
    case sysConfig.Language of
    0,1:
       pathName := pathDirectory + '\Vn\'+TEMPLATE_FILE;
    2:
       pathName := pathDirectory + '\Eng\'+TEMPLATE_FILE;
    end;
    if (FileExists(pathName)) then
    begin
      rpProbation.Template.FileName := pathName;
      rpProbation.Template.Load;
    end
    else
    begin
       if type_prepare=0 then
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

procedure TfrmProbation.acXemExecute(Sender: TObject);
begin
  inherited;
   if PrepareReport = false then exit;
  dmMain.DefOnBeforePrint(true, qryRecruitmentPlan,self);
  rpProbation.AllowPrintToFile := True;
  rpProbation.DeviceType := dtScreen;
  rpProbation.Print;
end;

procedure TfrmProbation.acThietkeExecute(Sender: TObject);
begin
  inherited;
   if PrepareReport = false then exit;
  dmMain.DefOnBeforePrint(false, qryRecruitmentPlan,self);
  dsnProbation.ShowModal;
end;

procedure TfrmProbation.acInExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  dmMain.DefOnBeforePrint(true, qryRecruitmentPlan,self);
  rpProbation.AllowPrintToFile := True;
  rpProbation.DeviceType := dtPrinter;
  rpProbation.Print;
end;

procedure TfrmProbation.dxSelectFileInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryReportTemplateList.ParamByname('TEMPLATE_TYPE').Value:=4;//Thu viec
  frmPopupMain.qryReportTemplateList.Open;
  InitPopupControl('dxlcReportTemplateList',frmPopupMain,sender,2);
end;

procedure TfrmProbation.dxSelectFileCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text:=frmPopupMain.qryReportTemplateListTEMPLATE_NAME.Value;
    TEMPLATE_FILE:=frmPopupMain.qryReportTemplateListTEMPLATE_FILE.AsString;
  end;
  frmPopupMain.qryReportTemplateList.Close;
  
end;

procedure TfrmProbation.dxSelectFileChange(Sender: TObject);
begin
  inherited;
  if dxSelectFile.Text='' then
    TEMPLATE_FILE:='';
end;

end.
