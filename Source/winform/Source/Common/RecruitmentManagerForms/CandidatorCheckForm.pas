unit CandidatorCheckForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls, ElPanel, ElPgCtl, dxEdLib, dxEditor, ElBtnCtl, ElPopBtn,
  dxDBTLCl, dxGrClms, DB, IBODataset, ActnList, ImgList, DBActns, ppEndUsr,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ppDB, ppDBPipe, ppTypes;

type
  TfrmCandidatorCheck = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    gridCheckList: TdxDBGrid;
    gridRecruitingPlan: TdxDBGrid;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    chkCandidator: TdxCheckEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    chkEmployee: TdxCheckEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    pageMain: TElPageControl;
    ElPanel1: TElPanel;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxFontColorCandidator: TdxButtonEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxFontColorEmployee: TdxButtonEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    chkInvalidCandidator: TdxCheckEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
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
    dxColorValidCandidator: TdxButtonEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxColorInvalidCandidator: TdxButtonEdit;
    dxLayoutControl1Group10: TdxLayoutGroup;
    ColorDialog1: TColorDialog;
    qryDeleteData: TIBOQuery;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item12: TdxLayoutItem;
    DataSetCancel1: TDataSetCancel;
    DataSetPost1: TDataSetPost;
    qryCandidatorListPLAN_NO: TWideStringField;
    qryCandidatorListPOSITION_NO: TWideStringField;
    qryCandidatorListEMPLOYEE_NO: TWideStringField;
    qryCandidatorListFULL_NAME: TWideStringField;
    qryCandidatorListGENDER: TSmallintField;
    qryCandidatorListBIRTH_DATE: TDateField;
    qryCandidatorListCONTACT_PHONE: TWideStringField;
    qryCandidatorListCONTACT_ADDR: TWideStringField;
    qryCandidatorListEMAIL: TWideStringField;
    qryCandidatorListSTATE: TSmallintField;
    qryCandidatorListNOTE: TWideStringField;
    qryCandidatorListIS_CANDIDATE: TSmallintField;
    gridCheckListSTATE: TdxDBGridCheckColumn;
    qry: TIBOQuery;
    qryCheckCandidator: TIBOQuery;
    dxLayoutControl1Item13: TdxLayoutItem;
    chkTheoBangCap: TdxCheckEdit;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Item14: TdxLayoutItem;
    chkTheoKinhNghiem: TdxCheckEdit;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxDK_KETHOP: TdxImageEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxDK_UngVien: TdxImageEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    DataSetDelete1: TDataSetDelete;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxSelectFile: TdxPopupEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl1Item20: TdxLayoutItem;
    ElPopupButton6: TElPopupButton;
    dxLayoutControl1Item21: TdxLayoutItem;
    ElPopupButton7: TElPopupButton;
    dxLayoutControl1Group14: TdxLayoutGroup;
    acPreview: TAction;
    acDesign: TAction;
    acPrint: TAction;
    rpCheck: TppReport;
    dsnCheck: TppDesigner;
    qryDSUngVien: TIBOQuery;
    qryDSUngVienKEHOACH_TUYENDUNG: TWideStringField;
    qryDSUngVienNGAY_BD_TUYENDUNG: TDateField;
    qryDSUngVienNGAY_KT_TUYENDUNG: TDateField;
    qryDSUngVienMA_UNGVIEN: TWideStringField;
    qryDSUngVienHOTEN_UNGVIEN: TWideStringField;
    qryDSUngVienNGAY_SINH: TDateField;
    qryDSUngVienGIOI_TINH: TIntegerField;
    qryDSUngVienTINHTRANG_HONNHAN: TWideStringField;
    qryDSUngVienSO_CMND: TWideStringField;
    qryDSUngVienNOICAP_CMND: TWideStringField;
    qryDSUngVienNOI_SINH: TWideStringField;
    qryDSUngVienQUE_QUAN: TWideStringField;
    qryDSUngVienDIACHI_LIENHE: TWideStringField;
    qryDSUngVienDIACHI_THUONGTRU: TWideStringField;
    qryDSUngVienSO_DIENTHOAI: TWideStringField;
    qryDSUngVienSO_DIDONG: TWideStringField;
    qryDSUngVienEMAIL: TWideStringField;
    qryDSUngVienTINH_LIENHE: TWideStringField;
    qryDSUngVienCHIEU_CAO: TIBOFloatField;
    qryDSUngVienCAN_NANG: TIBOFloatField;
    qryDSUngVienTRINHDO_VANHOA: TWideStringField;
    qryDSUngVienTRINH_DO: TWideStringField;
    qryDSUngVienCHUYEN_NGANH: TWideStringField;
    qryDSUngVienCHUYENMON_DAOTAO: TWideStringField;
    qryDSUngVienNAM_TOTNGHIEP: TIntegerField;
    qryDSUngVienDIEM_TOTNGHIEP: TIBOFloatField;
    qryDSUngVienNANG_KHIEU: TWideStringField;
    qryDSUngVienSOTRUONG_CTAC: TWideStringField;
    qryDSUngVienCHUCDANH_UNGTUYEN: TWideStringField;
    qryDSUngVienDONVI_UNGTUYEN: TWideStringField;
    qryDSUngVienVITRI_UNGTUYEN: TWideStringField;
    qryDSUngVienNGAY_NOP_HOSO: TDateField;
    qryDSUngVienNGOAI_NGU: TWideStringField;
    qryDSUngVienVI_TINH: TWideStringField;
    dsDSUngVien: TDataSource;
    ppDSUngVien: TppDBPipeline;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acInitTabInterfaceExecute(Sender: TObject);
    procedure gridRecruitingPlanChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure pageMainChange(Sender: TObject);
    procedure acCheckListRefreshExecute(Sender: TObject);
    procedure acCreateCheckListExecute(Sender: TObject);
    procedure gridCheckListCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxFontColorCandidatorButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDK_KETHOPCloseUp(Sender: TObject; var Value: WideString;
      var Accept: Boolean);
    procedure dxDK_UngVienCloseUp(Sender: TObject; var Value: WideString;
      var Accept: Boolean);
    function PrepareReport(type_prepare:integer=0): boolean;
    procedure dxSelectFileInitPopup(Sender: TObject);
    procedure dxSelectFileCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectFileChange(Sender: TObject);
    procedure acPreviewExecute(Sender: TObject);
    procedure acDesignExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
  private
    { Private declarations }
    DK_KETHOP, DK_UNGVIEN: String;
    TEMPLATE_FILE:String;
  public
    { Public declarations }
  end;
var
  frmCandidatorCheck: TfrmCandidatorCheck;
implementation
uses MainDM, EmpInfoDataModule, PopupMainForm, SSP_Library;

{$R *.dfm}

procedure TfrmCandidatorCheck.FormCreate(Sender: TObject);
begin
  dxDK_KETHOP.Values.Add('AND');
  dxDK_KETHOP.Values.Add('OR');

  dxDK_KETHOP.Descriptions.Add(UTF8Decode('Và'));
  dxDK_KETHOP.Descriptions.Add(UTF8Decode('Hoặc'));

  dxDK_UngVien.Values.Add('DOT');
  dxDK_UngVien.Values.Add('ALL');

  dxDK_UngVien.Descriptions.Add(UTF8Decode('Nộp đơn trong đợt'));
  dxDK_UngVien.Descriptions.Add(UTF8Decode('Tất cả ứng viên'));

  inherited;
  qryRecruitmentPlan.Open;
  qryNeedInfo.Open;
  acInitTabInterface.Execute;
  dxDK_KETHOP.Text := 'AND';
  DK_KETHOP:= 'AND';
  dxDK_UngVien.TEXT := 'DOT';
  DK_UNGVIEN := 'DOT';

end;

procedure TfrmCandidatorCheck.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryNeedInfo.Close;
  qryCandidatorList.Close;
  qryRecruitmentPlan.Close;
end;

procedure TfrmCandidatorCheck.acInitTabInterfaceExecute(Sender: TObject);
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
  end;
end;

procedure TfrmCandidatorCheck.gridRecruitingPlanChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  acInitTabInterface.Execute;
end;

procedure TfrmCandidatorCheck.pageMainChange(Sender: TObject);

begin
  inherited;
  acCheckListRefresh.Execute;
end;

procedure TfrmCandidatorCheck.acCheckListRefreshExecute(Sender: TObject);
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
    qryRecruitmentPlanPLAN_NO.Value;
  if pageMain.PageCount > 0 then
    qryCandidatorList.ParamByName('POSITION_NO').Value :=
      pageMain.ActivePage.Caption
  else
    qryCandidatorList.ParamByName('POSITION_NO').Clear;
  qryCandidatorList.Open;
  qryCandidatorList.EnableControls;
end;

procedure TfrmCandidatorCheck.acCreateCheckListExecute(Sender: TObject);
var
  ket_qua : integer;
begin
  inherited;
  ket_qua := ShowMessageUnicode(47);
  if ket_qua = mrYes then
  begin
    try
      Screen.Cursor := crSQLWait;
      dmMain.ExecuteSQL(qryDeleteData);

      qryCheckCandidator.ParamByName('PLAN_NO').Value :=
        qryRecruitmentPlanPLAN_NO.Value;
      if chkCandidator.Checked then
        qryCheckCandidator.ParamByName('CHECK_CANDIDATOR').Value := 1
      else
        qryCheckCandidator.ParamByName('CHECK_CANDIDATOR').Value := 0;
      if chkEmployee.Checked then
        qryCheckCandidator.ParamByName('CHECK_EMPLOYEE').Value := 1
      else
        qryCheckCandidator.ParamByName('CHECK_EMPLOYEE').Value := 0;
      if chkInvalidCandidator.Checked then
        qryCheckCandidator.ParamByName('GET_INVALID').Value := 1
      else
        qryCheckCandidator.ParamByName('GET_INVALID').Value := 0;

      if chkTheoBangCap.Checked then
        qryCheckCandidator.ParamByName('THEO_BANGCAP').Value := 1
      else
        qryCheckCandidator.ParamByName('THEO_BANGCAP').Value := 0;

      if chkTheoKinhNghiem.Checked then
        qryCheckCandidator.ParamByName('THEO_KINHNGHIEM').Value := 1
      else
        qryCheckCandidator.ParamByName('THEO_KINHNGHIEM').Value := 0;

      qryCheckCandidator.ParamByName('TOAN_TU').Value := DK_KETHOP ;
      qryCheckCandidator.ParamByName('LOC_LAI').Value := 1 ;
      qryCheckCandidator.ParamByName('LOAI_UNGVIEN').Value := DK_UNGVIEN ;

      dmMain.ExecuteSQL(qryCheckCandidator);
      ShowMessageUnicode(39);
      acCheckListRefresh.Execute;
    except

    end;
    Screen.Cursor := crDefault;
  end
  else if ket_qua = mrNo then
  begin
    try
      Screen.Cursor := crSQLWait;
      //dmMain.ExecuteSQL(qryDeleteData);

      qryCheckCandidator.ParamByName('PLAN_NO').Value :=
        qryRecruitmentPlanPLAN_NO.Value;
      if chkCandidator.Checked then
        qryCheckCandidator.ParamByName('CHECK_CANDIDATOR').Value := 1
      else
        qryCheckCandidator.ParamByName('CHECK_CANDIDATOR').Value := 0;
      if chkEmployee.Checked then
        qryCheckCandidator.ParamByName('CHECK_EMPLOYEE').Value := 1
      else
        qryCheckCandidator.ParamByName('CHECK_EMPLOYEE').Value := 0;
      if chkInvalidCandidator.Checked then
        qryCheckCandidator.ParamByName('GET_INVALID').Value := 1
      else
        qryCheckCandidator.ParamByName('GET_INVALID').Value := 0;

      if chkTheoBangCap.Checked then
        qryCheckCandidator.ParamByName('THEO_BANGCAP').Value := 1
      else
        qryCheckCandidator.ParamByName('THEO_BANGCAP').Value := 0;

      if chkTheoKinhNghiem.Checked then
        qryCheckCandidator.ParamByName('THEO_KINHNGHIEM').Value := 1
      else
        qryCheckCandidator.ParamByName('THEO_KINHNGHIEM').Value := 0;

      qryCheckCandidator.ParamByName('TOAN_TU').Value := DK_KETHOP ;
      qryCheckCandidator.ParamByName('LOC_LAI').Value := 0;
      qryCheckCandidator.ParamByName('LOAI_UNGVIEN').Value := DK_UNGVIEN ;

      dmMain.ExecuteSQL(qryCheckCandidator);
      ShowMessageUnicode(39);
      acCheckListRefresh.Execute;
    except

    end;
    Screen.Cursor := crDefault;
  end;

end;

procedure TfrmCandidatorCheck.gridCheckListCustomDrawCell(Sender: TObject;
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

procedure TfrmCandidatorCheck.dxFontColorCandidatorButtonClick(
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

procedure TfrmCandidatorCheck.dxDK_KETHOPCloseUp(Sender: TObject;
  var Value: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
    DK_KETHOP := Value; 
end;

procedure TfrmCandidatorCheck.dxDK_UngVienCloseUp(Sender: TObject;
  var Value: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
    DK_UNGVIEN := Value;
end;

function TfrmCandidatorCheck.PrepareReport(type_prepare:integer): boolean;
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
      rpCheck.Template.FileName := pathName;
      rpCheck.Template.Load;
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

procedure TfrmCandidatorCheck.dxSelectFileInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryReportTemplateList.ParamByname('TEMPLATE_TYPE').Value:=8;//Ung vien
  frmPopupMain.qryReportTemplateList.Open;
  InitPopupControl('dxlcReportTemplateList',frmPopupMain,sender,2);
end;

procedure TfrmCandidatorCheck.dxSelectFileCloseUp(Sender: TObject;
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

procedure TfrmCandidatorCheck.dxSelectFileChange(Sender: TObject);
begin
  inherited;
  if dxSelectFile.Text='' then
    TEMPLATE_FILE:='';
end;

procedure TfrmCandidatorCheck.acPreviewExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;

  if qryDSUngVien.Active then
    qryDSUngVien.Close;
  qryDSUngVien.ParamByName('PLAN_NO').Value :=
    qryRecruitmentPlanPLAN_NO.Value;
  qryDSUngVien.Open;

  dmMain.DefOnBeforePrint(true, qryRecruitmentPlan,self);
  rpCheck.AllowPrintToFile := True;
  rpCheck.DeviceType := dtScreen;
  rpCheck.Print;
end;

procedure TfrmCandidatorCheck.acDesignExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  if qryDSUngVien.Active then
    qryDSUngVien.Close;
  qryDSUngVien.ParamByName('PLAN_NO').Value :=
    qryRecruitmentPlanPLAN_NO.Value;
  qryDSUngVien.Open;

  dmMain.DefOnBeforePrint(false, qryRecruitmentPlan,self);
  dsnCheck.ShowModal;
end;

procedure TfrmCandidatorCheck.acPrintExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  
  if qryDSUngVien.Active then
    qryDSUngVien.Close;
  qryDSUngVien.ParamByName('PLAN_NO').Value :=
    qryRecruitmentPlanPLAN_NO.Value;
  qryDSUngVien.Open;

  dmMain.DefOnBeforePrint(true, qryRecruitmentPlan,self);
  rpCheck.AllowPrintToFile := True;
  rpCheck.DeviceType := dtPrinter;
  rpCheck.Print;
end;

end.

