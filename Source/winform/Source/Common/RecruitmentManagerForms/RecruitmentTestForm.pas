unit RecruitmentTestForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls, ElPanel, ElPgCtl, dxEdLib, dxEditor, ElBtnCtl, ElPopBtn,
  dxDBTLCl, dxGrClms, DB, IBODataset, ActnList, ImgList, DBActns, ElSplit,
  ToolbarFrame;

type
  TfrmRecruitmentTest = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    gridCheckList: TdxDBGrid;
    gridRecruitingPlan: TdxDBGrid;
    pageMain: TElPageControl;
    panelMain: TElPanel;
    dxLayoutControl1Item6: TdxLayoutItem;
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
    qryCandidatorList: TIBOQuery;
    dsCandidatorList: TDataSource;
    gridCheckListEMPLOYEE_NO: TdxDBGridColumn;
    gridCheckListFULL_NAME: TdxDBGridColumn;
    gridCheckListGENDER: TdxDBGridImageColumn;
    gridCheckListBIRTH_DATE: TdxDBGridDateColumn;
    gridCheckListCONTACT_PHONE: TdxDBGridColumn;
    gridCheckListCONTACT_ADDR: TdxDBGridColumn;
    gridCheckListEMAIL: TdxDBGridHyperLinkColumn;
    gridCheckListNOTE: TdxDBGridColumn;
    gridCheckListIS_CADIDATE: TdxDBGridCheckColumn;
    acCheckListRefresh: TAction;
    ColorDialog1: TColorDialog;
    DataSetCancel1: TDataSetCancel;
    DataSetPost1: TDataSetPost;
    gridCheckListSTATE: TdxDBGridCheckColumn;
    dxLayoutControl1Item13: TdxLayoutItem;
    frameToolbar1: TframeToolbar;
    panelTop: TPanel;
    dxLayoutControl1Item14: TdxLayoutItem;
    ElSplitter1: TElSplitter;
    gridTestList: TdxDBGrid;
    qryTestList: TIBOQuery;
    dsTestList: TDataSource;
    qryTestListPLAN_NO: TWideStringField;
    qryTestListTEST_NO: TWideStringField;
    qryTestListTEST_NAME: TWideStringField;
    qryTestListTEST_DATE: TDateField;
    qryTestListNOTE: TWideStringField;
    gridTestListTEST_NO: TdxDBGridColumn;
    gridTestListTEST_NAME: TdxDBGridColumn;
    gridTestListTEST_DATE: TdxDBGridDateColumn;
    gridTestListNOTE: TdxDBGridColumn;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxFontColorCandidator: TdxButtonEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxFontColorEmployee: TdxButtonEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxColorValidCandidator: TdxButtonEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxColorInvalidCandidator: TdxButtonEdit;
    dxLayoutControl1Group5: TdxLayoutGroup;
    qryCandidatorListPLAN_NO: TWideStringField;
    qryCandidatorListTEST_NO: TWideStringField;
    qryCandidatorListPOSITION_NO: TWideStringField;
    qryCandidatorListEMPLOYEE_NO: TWideStringField;
    qryCandidatorListFULL_NAME: TWideStringField;
    qryCandidatorListGENDER: TSmallintField;
    qryCandidatorListBIRTH_DATE: TDateField;
    qryCandidatorListCONTACT_PHONE: TWideStringField;
    qryCandidatorListCONTACT_ADDR: TWideStringField;
    qryCandidatorListEMAIL: TWideStringField;
    qryCandidatorListCHECK_MARK: TIBOFloatField;
    qryCandidatorListSTATE: TSmallintField;
    qryCandidatorListNOTE: TWideStringField;
    qryCandidatorListIS_CANDIDATE: TSmallintField;
    gridCheckListCHECK_MARK: TdxDBGridCalcColumn;
    chkAutoCalc: TdxCheckEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    qryExecute: TIBOQuery;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ElSplitter2: TElSplitter;
    gridDetail: TdxDBGrid;
    gridDetailITEM_NAME: TdxDBGridColumn;
    gridDetailMARK: TdxDBGridCalcColumn;
    qryDetail: TIBOQuery;
    dsDetail: TDataSource;
    qryDetailPLAN_NO: TWideStringField;
    qryDetailTEST_NO: TWideStringField;
    qryDetailEMPLOYEE_NO: TWideStringField;
    qryDetailPOSITION_NO: TWideStringField;
    qryDetailITEM_NO: TWideStringField;
    qryDetailITEM_NAME: TWideStringField;
    qryDetailMARK: TIBOFloatField;
    qryDetailITEM_TYPE: TWideStringField;
    acCreateDetail: TAction;
    dxTinhDiem: TdxImageEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    acTinhDiem: TAction;
    qryTinhDiem: TIBOQuery;
    qryDetailITEM_RATE: TIBOFloatField;
    gridDetailITEM_RATE: TdxDBGridCalcColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acInitTabInterfaceExecute(Sender: TObject);
    procedure pageMainChange(Sender: TObject);
    procedure acCheckListRefreshExecute(Sender: TObject);
    procedure gridCheckListCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxFontColorCandidatorButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure gridTestListEnter(Sender: TObject);
    procedure gridCheckListEnter(Sender: TObject);
    procedure gridTestListChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure gridRecruitingPlanChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure acCreateCheckListExecute(Sender: TObject);
    procedure acCreateCheckListUpdate(Sender: TObject);
    procedure qryCandidatorListAfterPost(DataSet: TDataSet);
    procedure acCreateDetailExecute(Sender: TObject);
    procedure acTinhDiemExecute(Sender: TObject);
    procedure dxTinhDiemCloseUp(Sender: TObject; var Value: WideString;
      var Accept: Boolean);
  private
    { Private declarations }
    TYPE_NO : Widestring;
  public
    { Public declarations }
  end;
var
  frmRecruitmentTest: TfrmRecruitmentTest;
implementation
uses MainDM, EmpInfoDataModule, CreateCandidatorList;

{$R *.dfm}

procedure TfrmRecruitmentTest.FormCreate(Sender: TObject);
begin
  dxTinhDiem.Values.Add('SUM');
  dxTinhDiem.Values.Add('SUM_RATE');
  dxTinhDiem.Values.Add('AVG');
  dxTinhDiem.Values.Add('AVG_RATE');

  dxTinhDiem.Descriptions.Add(UTF8Decode('Lấy tổng'));
  dxTinhDiem.Descriptions.Add(UTF8Decode('Lấy tổng có nhân hệ số'));
  dxTinhDiem.Descriptions.Add(UTF8Decode('Lấy trung bình cộng'));
  dxTinhDiem.Descriptions.Add(UTF8Decode('Lấy trung bình cộng có nhân hệ số'));

  inherited;
  dxTinhDiem.Text := 'SUM';
  TYPE_NO := 'SUM';
  qryRecruitmentPlan.Open;
  qryNeedInfo.Open;
  qryTestList.Open;
  frameToolbar1.SetDataSource(dsTestList);
  acInitTabInterface.Execute;
end;

procedure TfrmRecruitmentTest.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if qryDetail.State in [dsEdit] then
    qryDetail.Post;
  qryDetail.Close;
  qryNeedInfo.Close;
  qryCandidatorList.Close;
  qryTestList.Close;
  qryRecruitmentPlan.Close;
end;

procedure TfrmRecruitmentTest.acInitTabInterfaceExecute(Sender: TObject);
var
  i, page_count: integer;
begin
  inherited;
  page_count := qryNeedInfo.RecordCount;
  if (pageMain.PageCount > page_count) then
  begin
    for i := pageMain.PageCount - 1 downto page_count do
      pageMain.Pages[i].Free;
  end
  else
    if (pageMain.PageCount < page_count) then
  begin
    for i := pageMain.PageCount to page_count - 1 do
      pageMain.NewPage;
  end;
  //============================================
  if page_count > 0 then
  begin
    qryNeedInfo.First;
    i := 0;
    while not qryNeedInfo.Eof do
    begin
      if i < pageMain.PageCount then
        pageMain.Pages[i].Caption := qryNeedInfoPOSITION_NO.Value;
      qryNeedInfo.Next;
      i := i + 1;
    end;
    pageMain.ActivePageIndex := 0;
    acCheckListRefresh.Execute;
  end
  else
  begin
    if qryCandidatorList.Active then
      qryCandidatorList.Close;
    if qryDetail.Active then
      qryDetail.Close;

  end;
end;

procedure TfrmRecruitmentTest.pageMainChange(Sender: TObject);

begin
  inherited;
  acCheckListRefresh.Execute;
end;

procedure TfrmRecruitmentTest.acCheckListRefreshExecute(Sender: TObject);
var
  rec_no: Integer;
begin
  inherited;
  rec_no := pageMain.ActivePageIndex;
  qryNeedInfo.First;
  qryNeedInfo.MoveBy(rec_no);
  gridCheckList.Bands[0].Caption := WideUpperCase(qryNeedInfoTITLE_NAME.Value +
    ' - ' +
    qryNeedInfoDEPT_NAME.Value);

  qryCandidatorList.DisableControls;
  if qryCandidatorList.Active then
    qryCandidatorList.Close;
  qryCandidatorList.ParamByName('PLAN_NO').Value :=
    qryTestListPLAN_NO.Value;
  qryCandidatorList.ParamByName('TEST_NO').Value :=
    qryTestListTEST_NO.Value;

  if pageMain.PageCount > 0 then
    qryCandidatorList.ParamByName('POSITION_NO').Value :=
      pageMain.ActivePage.Caption
  else
    qryCandidatorList.ParamByName('POSITION_NO').Clear;
  qryCandidatorList.Open;
  qryDetail.Open;
  qryCandidatorList.EnableControls;
end;

procedure TfrmRecruitmentTest.gridCheckListCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    if ANode.Values[gridCheckListIS_CADIDATE.Index] = 1 then
      AFont.Color := dxFontColorCandidator.Color
    else
      AFont.Color := dxFontColorEmployee.Color;
    if (AColumn <> gridCheckListIS_CADIDATE) and
      (AColumn <> gridCheckListSTATE) and
      (AColumn <> gridCheckListCHECK_MARK) and
      (AColumn <> gridCheckListNOTE) then
    begin
      if ANode.Values[gridCheckListSTATE.Index] = 1 then
        AColor := dxColorValidCandidator.Color
      else
        AColor := dxColorInvalidCandidator.Color;
    end;
  except
  end
end;

procedure TfrmRecruitmentTest.dxFontColorCandidatorButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  ColorDialog1.Color := (Sender as TdxButtonEdit).Color;
  if ColorDialog1.Execute then
  begin
    (Sender as TdxButtonEdit).Color := ColorDialog1.Color;
    gridCheckList.Repaint;
  end;
end;

procedure TfrmRecruitmentTest.gridTestListEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsTestList);
end;

procedure TfrmRecruitmentTest.gridCheckListEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsCandidatorList);
end;

procedure TfrmRecruitmentTest.gridTestListChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  acCheckListRefresh.Execute;
end;

procedure TfrmRecruitmentTest.gridRecruitingPlanChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  acInitTabInterface.Execute;
end;

procedure TfrmRecruitmentTest.acCreateCheckListExecute(Sender: TObject);
begin
  inherited;
  frmCreateCandidatorList :=
    TfrmCreateCandidatorList.Create(Self,
      qryTestList.FieldByName('PLAN_NO').Value,
    qryTestList.FieldByname('TEST_NO').Value, 'KIEMTRA_THITUYEN');
  with frmCreateCandidatorList do
  try
    if ShowModal = mrOk then
    begin
      acCheckListRefresh.Execute;
      acCreateDetail.Execute;
    end;
  finally
    Free;
  end;
  frmCreateCandidatorList := nil;
end;

procedure TfrmRecruitmentTest.acCreateCheckListUpdate(Sender: TObject);
begin
  inherited;
  acCreateCheckList.Enabled := (qryTestList.RecordCount > 0);
end;

procedure TfrmRecruitmentTest.qryCandidatorListAfterPost(
  DataSet: TDataSet);
var
  mark: Double;
  bookmark: TBookmark;
begin
  inherited;
  if chkAutoCalc.Checked then
  begin
    mark := qryCandidatorListCHECK_MARK.Value;
    bookmark := qryCandidatorList.GetBookmark;
    if qryCandidatorListSTATE.Value = 0 then
      qryExecute.SQL.Text :=
        ' update hr_candidator_test ' +
        ' set state=0 ' +
        ' where plan_no=:plan_no and ' +
        ' position_no=:position_no and ' +
        ' test_no=:test_no and ' +
        ' ((check_mark<=:check_mark)or(check_mark is null))'
    else
      if qryCandidatorListSTATE.Value = 1 then
      qryExecute.SQL.Text :=
        ' update hr_candidator_test ' +
        ' set state=1' +
        ' where plan_no=:plan_no and ' +
        ' position_no=:position_no and ' +
        ' test_no=:test_no and ' +
        ' (check_mark is not null)and(check_mark>=:check_mark)';
    qryExecute.ParamByName('PLAN_NO').Value := qryTestListPLAN_NO.Value;
    qryExecute.ParamByName('TEST_NO').Value := qryTestListTEST_NO.Value;
    qryExecute.ParamByName('POSITION_NO').Value := pageMain.ActivePage.Caption;
    qryExecute.ParamByName('CHECK_MARK').Value := mark;
    try
      dmMain.ExecuteSQL(qryExecute);
      acCheckListRefresh.Execute;
      qryCandidatorList.GotoBookmark(bookmark);
    except

    end;
  end;
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TfrmRecruitmentTest.acCreateDetailExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  qryExecute.SQL.Text:=
  'execute procedure HR_CAN_TEST_DETAIL_CREATE(:PLAN_NO,:TEST_NO)';
  qryExecute.Prepare;
  qryExecute.ParamByName('PLAN_NO').Value:=qryCandidatorListPLAN_NO.Value;
  qryExecute.ParamByName('TEST_NO').Value:=qryCandidatorListTEST_NO.Value;

  dmMain.ExecuteSQL(qryExecute);
  if qryDetail.Active then qryDetail.Refresh
  else qryDetail.Open;
  Screen.Cursor:=crDefault;
end;

procedure TfrmRecruitmentTest.acTinhDiemExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  qryTinhDiem.Prepare;
  qryTinhDiem.ParamByName('PLAN_NO').Value:=qryRecruitmentPlanPLAN_NO.Value;
  qryTinhDiem.ParamByName('TEST_NO').Value:=qryTestListTEST_NO.Value;
  qryTinhDiem.ParamByName('TYPE_NO').Value:=TYPE_NO;

  dmMain.ExecuteSQL(qryTinhDiem);
  if qryCandidatorList.Active then qryCandidatorList.Refresh
  else qryCandidatorList.Open;
  Screen.Cursor:=crDefault;
end;

procedure TfrmRecruitmentTest.dxTinhDiemCloseUp(Sender: TObject;
  var Value: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then TYPE_NO := Value;
end;

end.

