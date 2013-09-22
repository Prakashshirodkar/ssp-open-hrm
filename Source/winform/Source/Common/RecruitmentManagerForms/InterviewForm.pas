unit InterviewForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls, ElPanel, ElPgCtl, dxEdLib, dxEditor, ElBtnCtl, ElPopBtn,
  dxDBTLCl, dxGrClms, DB, IBODataset, ActnList, ImgList, DBActns, ElSplit,
  ToolbarFrame, dxmdaset, ppEndUsr, ppComm, ppRelatv, ppProd, ppClass,
  ppReport, ppTypes, ppDB, ppDBPipe;

type
  TfrmInterview = class(TfrmBase)
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
    qryInterviewList: TIBOQuery;
    dsInterviewList: TDataSource;
    gridTestListINTERVIEW_NO: TdxDBGridColumn;
    gridTestListINTERVIEW_NAME: TdxDBGridColumn;
    gridTestListINTERVIEW_DATE: TdxDBGridDateColumn;
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
    gridCheckListCHECK_MARK: TdxDBGridCalcColumn;
    chkAutoCalc: TdxCheckEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    qryExecute: TIBOQuery;
    dxLayoutControl1Group2: TdxLayoutGroup;
    qryCandidatorListPLAN_NO: TWideStringField;
    qryCandidatorListINTERVIEW_NO: TWideStringField;
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
    qryInterviewListPLAN_NO: TWideStringField;
    qryInterviewListINTERVIEW_NO: TWideStringField;
    qryInterviewListINTERVIEW_NAME: TWideStringField;
    qryInterviewListINTERVIEW_DATE: TDateField;
    qryInterviewListNOTE: TWideStringField;
    memCandidatorList: TdxMemData;
    memCandidatorListPLAN_NO: TWideStringField;
    memCandidatorListINTERVIEW_NO: TWideStringField;
    memCandidatorListPOSITION_NO: TWideStringField;
    ElSplitter2: TElSplitter;
    gridDetail: TdxDBGrid;
    qryDetail: TIBOQuery;
    dsDetail: TDataSource;
    gridDetailITEM_NAME: TdxDBGridColumn;
    gridDetailMARK: TdxDBGridCalcColumn;
    acCreateDetail: TAction;
    qryDetailPLAN_NO: TWideStringField;
    qryDetailINTERVIEW_NO: TWideStringField;
    qryDetailEMPLOYEE_NO: TWideStringField;
    qryDetailPOSITION_NO: TWideStringField;
    qryDetailITEM_NO: TWideStringField;
    qryDetailITEM_NAME: TWideStringField;
    qryDetailMARK: TIBOFloatField;
    qryDetailITEM_TYPE: TWideStringField;
    dxTinhDiem: TdxImageEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    qryTinhDiem: TIBOQuery;
    acTinhDiem: TAction;
    qryDetailITEM_RATE: TIBOFloatField;
    gridDetailITEM_RATE: TdxDBGridColumn;
    qryCandidatorListTHOIGIAN_HEN_PV: TTimeField;
    qryCandidatorListDA_PHONGVAN: TSmallintField;
    gridCheckListTHOIGIAN_HEN_PV: TdxDBGridTimeColumn;
    gridCheckListDA_PHONGVAN: TdxDBGridCheckColumn;
    dxSelectFile: TdxPopupEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    rpInterview: TppReport;
    dsnInterview: TppDesigner;
    qryCurrentCandidator: TIBOQuery;
    dsCurrentCandidator: TDataSource;
    qryCurrentCandidatorPLAN_NO: TWideStringField;
    qryCurrentCandidatorINTERVIEW_NO: TWideStringField;
    qryCurrentCandidatorINTERVIEW_DATE: TDateField;
    qryCurrentCandidatorPOSITION_NO: TWideStringField;
    qryCurrentCandidatorEMPLOYEE_NO: TWideStringField;
    qryCurrentCandidatorFULL_NAME: TWideStringField;
    qryCurrentCandidatorGENDER_TEXT: TWideStringField;
    qryCurrentCandidatorCONTACT_PHONE: TWideStringField;
    qryCurrentCandidatorCONTACT_ADDR: TWideStringField;
    qryCurrentCandidatorEMAIL: TWideStringField;
    qryCurrentCandidatorTITLE_NAME: TWideStringField;
    ppUngVienHienHanh: TppDBPipeline;
    qryThongTinUngVien: TIBOQuery;
    dsThongTinUngVien: TDataSource;
    ppThongTinUngVien: TppDBPipeline;
    qryThongTinUngVienPLAN_NAME: TWideStringField;
    qryThongTinUngVienFROM_DATE: TDateField;
    qryThongTinUngVienTO_DATE: TDateField;
    qryThongTinUngVienINTERVIEW_DATE: TDateField;
    qryThongTinUngVienTITLE_NAME: TWideStringField;
    qryThongTinUngVienEMPLOYEE_NO: TWideStringField;
    qryThongTinUngVienFULL_NAME: TWideStringField;
    qryThongTinUngVienBIRTH_DATE: TDateField;
    qryThongTinUngVienBIRTH_PLACE_ID: TWideStringField;
    qryThongTinUngVienSTATUS_NAME: TWideStringField;
    qryThongTinUngVienGENDER_TEXT: TWideStringField;
    qryThongTinUngVienCONTACT_PHONE: TWideStringField;
    qryThongTinUngVienCONTACT_ADDR: TWideStringField;
    qryThongTinUngVienEMAIL: TWideStringField;
    qryThongTinUngVienTHOIGIAN_HEN_PV: TTimeField;
    qryThongTinUngVienEDU_LEVEL: TWideStringField;
    qryThongTinUngVienWORK_HISTORY: TWideStringField;
    qryThongTinUngVienLUONG_MONGDOI: TIBOFloatField;
    qryThongTinUngVienNGAY_TIEPNHAN: TDateField;
    qryThongTinUngVienSO_UV_DUTUYEN: TIntegerField;
    qryThongTinUngVienSO_UV_MOI_PV: TIntegerField;
    qryThongTinUngVienGENDER: TSmallintField;
    qryThongTinUngVienID_CARD_NO: TWideStringField;
    qryThongTinUngVienISSUED_PLACE: TWideStringField;
    qryThongTinUngVienRESIDENT_ADDR: TWideStringField;
    qryThongTinUngVienHAND_PHONE: TWideStringField;
    qryThongTinUngVienCHIEU_CAO: TIBOFloatField;
    qryThongTinUngVienCAN_NANG: TIBOFloatField;
    qryThongTinUngVienCHUYEN_NGANH: TWideStringField;
    qryThongTinUngVienTRINH_DO: TWideStringField;
    qryThongTinUngVienNAM_TOTNGHIEP: TIntegerField;
    qryThongTinUngVienCHUYENMON_DAOTAO: TWideStringField;
    qryThongTinUngVienDIEM_TOTNGHIEP: TIBOFloatField;
    qryThongTinUngVienTRINHDO_VANHOA: TWideStringField;
    qryThongTinUngVienTINH_LIENHE: TWideStringField;
    qryThongTinUngVienSOTRUONG_CTAC: TWideStringField;
    qryThongTinUngVienNANG_KHIEU: TWideStringField;
    qryThongTinUngVienQUE_QUAN: TWideStringField;
    qryThongTinUngVienNGOAI_NGU: TWideStringField;
    qryThongTinUngVienVI_TINH: TWideStringField;
    qryThongTinUngVienNGAY_NOP_HOSO: TDateField;
    qryDanhSachPhongVan: TIBOQuery;
    dsDanhSachPhongVan: TDataSource;
    ppDanhSachPhongVan: TppDBPipeline;
    qryDanhSachPhongVanINTERVIEW_DATE: TDateField;
    qryDanhSachPhongVanEMPLOYEE_NO: TWideStringField;
    qryDanhSachPhongVanFULL_NAME: TWideStringField;
    qryDanhSachPhongVanBIRTH_DATE: TDateField;
    qryDanhSachPhongVanBIRTH_PLACE_ID: TWideStringField;
    qryDanhSachPhongVanSTATUS_NAME: TWideStringField;
    qryDanhSachPhongVanGENDER: TSmallintField;
    qryDanhSachPhongVanGENDER_TEXT: TWideStringField;
    qryDanhSachPhongVanCONTACT_PHONE: TWideStringField;
    qryDanhSachPhongVanCONTACT_ADDR: TWideStringField;
    qryDanhSachPhongVanEMAIL: TWideStringField;
    qryDanhSachPhongVanTHOIGIAN_HEN_PV: TTimeField;
    qryDanhSachPhongVanEDU_LEVEL: TWideStringField;
    qryDanhSachPhongVanWORK_HISTORY: TWideStringField;
    qryDanhSachPhongVanLUONG_MONGDOI: TIBOFloatField;
    qryDanhSachPhongVanID_CARD_NO: TWideStringField;
    qryDanhSachPhongVanISSUED_PLACE: TWideStringField;
    qryDanhSachPhongVanRESIDENT_ADDR: TWideStringField;
    qryDanhSachPhongVanHAND_PHONE: TWideStringField;
    qryDanhSachPhongVanCHIEU_CAO: TIBOFloatField;
    qryDanhSachPhongVanCAN_NANG: TIBOFloatField;
    qryDanhSachPhongVanCHUYEN_NGANH: TWideStringField;
    qryDanhSachPhongVanTRINH_DO: TWideStringField;
    qryDanhSachPhongVanNAM_TOTNGHIEP: TIntegerField;
    qryDanhSachPhongVanCHUYENMON_DAOTAO: TWideStringField;
    qryDanhSachPhongVanDIEM_TOTNGHIEP: TIBOFloatField;
    qryDanhSachPhongVanTRINHDO_VANHOA: TWideStringField;
    qryDanhSachPhongVanTINH_LIENHE: TWideStringField;
    qryDanhSachPhongVanSOTRUONG_CTAC: TWideStringField;
    qryDanhSachPhongVanNANG_KHIEU: TWideStringField;
    qryDanhSachPhongVanQUE_QUAN: TWideStringField;
    qryDanhSachPhongVanNGOAI_NGU: TWideStringField;
    qryDanhSachPhongVanVI_TINH: TWideStringField;
    qryDanhSachPhongVanNGAY_NOP_HOSO: TDateField;
    qryDanhSachPhongVanDONVI_UNGTUYEN: TWideStringField;
    qryDanhSachPhongVanCHUCDANH_UNGTUYEN: TWideStringField;
    qryDanhSachPhongVanVITRI_UNGTUYEN: TWideStringField;
    qryDanhSachPhongVanGHI_CHU: TWideStringField;
    qryDetailNOTES: TWideStringField;
    gridDetailNOTES: TdxDBGridColumn;
    qryDanhSachPhongVanKQ_NGOAINGU: TWideStringField;
    qryDanhSachPhongVanKQ_HINHTHUC: TWideStringField;
    qryDanhSachPhongVanKQ_TACPHONG: TWideStringField;
    qryDanhSachPhongVanKQ_UNGXU: TWideStringField;
    qryDanhSachPhongVanKQ_CHUYENMON: TWideStringField;
    qryDanhSachPhongVanKQ_SUCKHOE: TWideStringField;
    qryDanhSachPhongVanDEXUAT_TUYENDUNG: TWideStringField;
    qryDanhSachPhongVanKQ_KHONGDAT: TSmallintField;
    qryKetQuaPhongVan: TIBOQuery;
    DateField1: TDateField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    DateField2: TDateField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    SmallintField1: TSmallintField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    TimeField1: TTimeField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    IBOFloatField1: TIBOFloatField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    IBOFloatField2: TIBOFloatField;
    IBOFloatField3: TIBOFloatField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    IntegerField1: TIntegerField;
    WideStringField17: TWideStringField;
    IBOFloatField4: TIBOFloatField;
    WideStringField18: TWideStringField;
    WideStringField19: TWideStringField;
    WideStringField20: TWideStringField;
    WideStringField21: TWideStringField;
    WideStringField22: TWideStringField;
    WideStringField23: TWideStringField;
    WideStringField24: TWideStringField;
    DateField3: TDateField;
    WideStringField25: TWideStringField;
    WideStringField26: TWideStringField;
    WideStringField27: TWideStringField;
    WideStringField28: TWideStringField;
    WideStringField29: TWideStringField;
    WideStringField30: TWideStringField;
    WideStringField31: TWideStringField;
    WideStringField32: TWideStringField;
    WideStringField33: TWideStringField;
    WideStringField34: TWideStringField;
    WideStringField35: TWideStringField;
    SmallintField2: TSmallintField;
    dsKetQuaPhongVan: TDataSource;
    ppKetQuaPhongVan: TppDBPipeline;
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
    procedure dxSelectFileInitPopup(Sender: TObject);
    procedure dxSelectFileCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectFileChange(Sender: TObject);
    function PrepareReport(type_prepare:integer=0): boolean;
    procedure frameToolbar1acPreviewExecute(Sender: TObject);
    procedure frameToolbar1acDesignExecute(Sender: TObject);
    procedure frameToolbar1acPrintExecute(Sender: TObject);
  private
    { Private declarations }
    TYPE_NO : Widestring;
    TEMPLATE_FILE:String;
  public
    { Public declarations }
  end;
var
  frmInterview: TfrmInterview;
implementation
uses MainDM, EmpInfoDataModule, CreateCandidatorList, PopupMainForm,
     SSP_Library;

{$R *.dfm}

procedure TfrmInterview.FormCreate(Sender: TObject);
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
  qryInterviewList.Open;
  frameToolbar1.SetDataSource(dsInterviewList);
  acInitTabInterface.Execute;
end;

procedure TfrmInterview.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if qryDetail.State in [dsEdit] then
    qryDetail.Post;
  qryNeedInfo.Close;
  qryDetail.Close;
  qryCandidatorList.Close;
  qryInterviewList.Close;
  qryRecruitmentPlan.Close;
  qryCurrentCandidator.Close;
  qryThongTinUngVien.Close;
  qryDanhSachPhongVan.Close;
  qryKetQuaPhongVan.Close;   
end;

procedure TfrmInterview.acInitTabInterfaceExecute(Sender: TObject);
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
    if qryCurrentCandidator.Active then
      qryCurrentCandidator.Close;
    if qryThongTinUngVien.Active then
      qryThongTinUngVien.Close;
  end;
end;

procedure TfrmInterview.pageMainChange(Sender: TObject);

begin
  inherited;
  acCheckListRefresh.Execute;
end;

procedure TfrmInterview.acCheckListRefreshExecute(Sender: TObject);
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
    qryInterviewListPLAN_NO.Value;
  qryCandidatorList.ParamByName('INTERVIEW_NO').Value :=
    qryInterviewListINTERVIEW_NO.Value;

  if pageMain.PageCount > 0 then
    qryCandidatorList.ParamByName('POSITION_NO').Value :=
      pageMain.ActivePage.Caption
  else
    qryCandidatorList.ParamByName('POSITION_NO').Clear;
  qryCandidatorList.Open;
  qryCurrentCandidator.Open;
  qryDetail.Open;                        
  qryCandidatorList.EnableControls;

  if qryThongTinUngVien.Active then
    qryThongTinUngVien.Close;
  qryThongTinUngVien.ParamByName('PLAN_NO').Value :=
    qryInterviewListPLAN_NO.Value;
  qryThongTinUngVien.ParamByName('INTERVIEW_NO').Value :=
    qryInterviewListINTERVIEW_NO.Value;

  if pageMain.PageCount > 0 then
    qryThongTinUngVien.ParamByName('POSITION_NO').Value :=
      pageMain.ActivePage.Caption
  else
    qryThongTinUngVien.ParamByName('POSITION_NO').Clear;
  qryThongTinUngVien.Open;
end;

procedure TfrmInterview.gridCheckListCustomDrawCell(Sender: TObject;
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
      (AColumn <> gridCheckListTHOIGIAN_HEN_PV) and
      (AColumn <> gridCheckListDA_PHONGVAN) and
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

procedure TfrmInterview.dxFontColorCandidatorButtonClick(
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

procedure TfrmInterview.gridTestListEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsInterviewList);
end;

procedure TfrmInterview.gridCheckListEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsCandidatorList);
end;

procedure TfrmInterview.gridTestListChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  acCheckListRefresh.Execute;
end;

procedure TfrmInterview.gridRecruitingPlanChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  acInitTabInterface.Execute;
end;

procedure TfrmInterview.acCreateCheckListExecute(Sender: TObject);
begin
  inherited;
  frmCreateCandidatorList :=
    TfrmCreateCandidatorList.Create(Self,
      qryInterviewList.FieldByName('PLAN_NO').Value,
    qryInterviewList.FieldByname('INTERVIEW_NO').Value, 'PHONGVAN_TUYENDUNG');
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

procedure TfrmInterview.acCreateCheckListUpdate(Sender: TObject);
begin
  inherited;
  acCreateCheckList.Enabled := (qryInterviewList.RecordCount > 0);
end;

procedure TfrmInterview.qryCandidatorListAfterPost(
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
        ' update hr_candidator_interview ' +
        ' set state=0 ' +
        ' where plan_no=:plan_no and ' +
        ' position_no=:position_no and ' +
        ' interview_no=:interview_no and ' +
        ' ((check_mark<=:check_mark)or(check_mark is null))'
    else
      if qryCandidatorListSTATE.Value = 1 then
      qryExecute.SQL.Text :=
        ' update hr_candidator_interview ' +
        ' set state=1' +
        ' where plan_no=:plan_no and ' +
        ' position_no=:position_no and ' +
        ' interview_no=:interview_no and ' +
        ' (check_mark is not null)and(check_mark>=:check_mark)';
    qryExecute.ParamByName('PLAN_NO').Value := qryInterviewListPLAN_NO.Value;
    qryExecute.ParamByName('INTERVIEW_NO').Value :=
      qryInterviewListINTERVIEW_NO.Value;
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

procedure TfrmInterview.acCreateDetailExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  qryExecute.SQL.Text:=
  'execute procedure HR_CAN_INT_DETAIL_CREATE(:PLAN_NO,:INTERVIEW_NO)';
  qryExecute.Prepare;
  qryExecute.ParamByName('PLAN_NO').Value:=qryCandidatorListPLAN_NO.Value;
  qryExecute.ParamByName('INTERVIEW_NO').Value:=qryCandidatorListINTERVIEW_NO.Value;

  dmMain.ExecuteSQL(qryExecute);
  if qryDetail.Active then qryDetail.Refresh
  else qryExecute.Open;
  Screen.Cursor:=crDefault;
end;

procedure TfrmInterview.acTinhDiemExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  qryTinhDiem.Prepare;
  qryTinhDiem.ParamByName('PLAN_NO').Value:=qryRecruitmentPlanPLAN_NO.Value;
  qryTinhDiem.ParamByName('INTERVIEW_NO').Value:=qryInterviewListINTERVIEW_NO.Value;
  qryTinhDiem.ParamByName('TYPE_NO').Value:=TYPE_NO;

  dmMain.ExecuteSQL(qryTinhDiem);
  if qryCandidatorList.Active then qryCandidatorList.Refresh
  else qryCandidatorList.Open;
  Screen.Cursor:=crDefault;
end;

procedure TfrmInterview.dxTinhDiemCloseUp(Sender: TObject;
  var Value: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then TYPE_NO := Value;
end;

procedure TfrmInterview.dxSelectFileInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryReportTemplateList.ParamByname('TEMPLATE_TYPE').Value:=5;//Phong van
  frmPopupMain.qryReportTemplateList.Open;
  InitPopupControl('dxlcReportTemplateList',frmPopupMain,sender,2);

end;

procedure TfrmInterview.dxSelectFileCloseUp(Sender: TObject;
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

procedure TfrmInterview.dxSelectFileChange(Sender: TObject);
begin
  inherited;
  if dxSelectFile.Text='' then
    TEMPLATE_FILE:='';
end;

function TfrmInterview.PrepareReport(type_prepare:integer): boolean;
var
  pathName, pathDirectory: string;
begin
 try
    if qryDanhSachPhongVan.Active then qryDanhSachPhongVan.Close;
    qryDanhSachPhongVan.ParamByName('PLAN_NO').Value :=
      qryInterviewListPLAN_NO.Value;
    qryDanhSachPhongVan.ParamByName('INTERVIEW_NO').Value :=
      qryInterviewListINTERVIEW_NO.Value;
    qryDanhSachPhongVan.Open;

    if qryKetQuaPhongVan.Active then qryKetQuaPhongVan.Close;
    qryKetQuaPhongVan.ParamByName('PLAN_NO').Value :=
      qryInterviewListPLAN_NO.Value;
    qryKetQuaPhongVan.ParamByName('INTERVIEW_NO').Value :=
      qryInterviewListINTERVIEW_NO.Value;
    qryKetQuaPhongVan.Open;


    pathDirectory := ExtractFilePath(Application.ExeName) + 'Reports\RecruitmentReport';
    case sysConfig.Language of
    0,1:
       pathName := pathDirectory + '\Vn\'+TEMPLATE_FILE;
    2:
       pathName := pathDirectory + '\Eng\'+TEMPLATE_FILE;
    end;
    if (FileExists(pathName)) then
    begin
      rpInterview.Template.FileName := pathName;
      rpInterview.Template.Load;
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

procedure TfrmInterview.frameToolbar1acPreviewExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;

  dmMain.DefOnBeforePrint(true, qryRecruitmentPlan,self);
  rpInterview.AllowPrintToFile := True;
  rpInterview.DeviceType := dtScreen;
  rpInterview.Print;
end;

procedure TfrmInterview.frameToolbar1acDesignExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;

  dmMain.DefOnBeforePrint(false, qryRecruitmentPlan,self);
  dsnInterview.ShowModal;
end;

procedure TfrmInterview.frameToolbar1acPrintExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;

  dmMain.DefOnBeforePrint(true, qryRecruitmentPlan,self);
  rpInterview.AllowPrintToFile := True;
  rpInterview.DeviceType := dtPrinter;
  rpInterview.Print;
end;

end.

