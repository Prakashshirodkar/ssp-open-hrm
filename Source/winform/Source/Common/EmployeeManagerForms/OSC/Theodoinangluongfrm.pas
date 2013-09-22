unit Theodoinangluongfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, ElBtnCtl, ElPopBtn, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, ElPanel,
  ElSplit, DateTimeFrame, DB, IBODataset, dxDBTLCl, dxGrClms, ComCtrls,
  dxGrClEx, ppEndUsr, ppComm, ppRelatv, ppProd, ppClass, ppReport,ppTypes,
  dxDBELib, ppDB, ppDBPipe, ActnList, ElPgCtl ;

type
  TfrmTheodoinangluong = class(TfrmEditBase)
    dxlcMainGroup1: TdxLayoutGroup;
    dxlcMainGroup2: TdxLayoutGroup;
    gridTest: TdxDBGrid;
    gridEmployee: TdxDBGrid;
    dxlcMainGroup3: TdxLayoutGroup;
    dxSelectFile: TdxPopupEdit;
    dxlcMainItem7: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxlcMainItem8: TdxLayoutItem;
    ElSplitter1: TElSplitter;
    dxlcMainItem11: TdxLayoutItem;
    frameDateTime1: TframeDateTime;
    dxlcMainItem2: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxlcMainItem3: TdxLayoutItem;
    qryDSDotthi: TIBOQuery;
    dsDSDotthi: TDataSource;
    qryDSThamgia: TIBOQuery;
    dsDSThamgia: TDataSource;
    qryDSDotthiKEY_ID: TIntegerField;
    qryDSDotthiMA_DOT: TWideStringField;
    qryDSDotthiTEN_DOT: TWideStringField;
    qryDSDotthiNGAY_THI: TDateField;
    qryDSDotthiSL_COMAT: TIntegerField;
    qryDSDotthiGHI_CHU: TWideStringField;
    qryDSDotthiSL_VANG: TIntegerField;
    gridTestMA_DOT: TdxDBGridColumn;
    gridTestNGAY_THI: TdxDBGridDateColumn;
    gridTestSL_COMAT: TdxDBGridColumn;
    gridTestGHI_CHU: TdxDBGridColumn;
    gridTestSL_VANG: TdxDBGridColumn;
    gridEmployeeMA_NHANVIEN: TdxDBGridColumn;
    gridEmployeeTITLE_NAME: TdxDBGridColumn;
    gridEmployeeBAC_LUONG_HT: TdxDBGridColumn;
    gridEmployeeNGACH_BAC_HT: TdxDBGridColumn;
    gridEmployeeNGAY_NHAN_BAC_HT: TdxDBGridDateColumn;
    gridEmployeeNGAY_DENGHI_NANGBAC: TdxDBGridDateColumn;
    gridEmployeeFULLNAME: TdxDBGridPopupColumn;
    rpTheodoinangluong: TppReport;
    dsnTheodoinangluong: TppDesigner;
    gridEmployeeNGACH_LUONG_DENGHI: TdxDBGridPopupColumn;
    dxlcMainItem9: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxlcMainItem12: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    gridEmployeeXEP_LOAI: TdxDBGridColumn;
    gridEmployeeY_KIEN: TdxDBGridColumn;
    gridEmployeeGHI_CHU: TdxDBGridColumn;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxDBSpinEdit2: TdxDBSpinEdit;
    dxDBEdit3: TdxDBEdit;
    dxlcMainGroup10: TdxLayoutGroup;
    dxlcMainGroup12: TdxLayoutGroup;
    ppChiTietDotNangLCB: TppDBPipeline;
    panelMain: TPanel;
    dxlcMainItem18: TdxLayoutItem;
    PanelLeft: TPanel;
    PanelRight: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    qryDSThamgiaNANGLUONG_CBNN_ID: TIntegerField;
    qryDSThamgiaDOTTHI_ID: TIntegerField;
    qryDSThamgiaMA_DOT: TWideStringField;
    qryDSThamgiaTEN_DOT: TWideStringField;
    qryDSThamgiaNGAY_THI: TDateField;
    qryDSThamgiaSL_COMAT: TIntegerField;
    qryDSThamgiaSL_VANG: TIntegerField;
    qryDSThamgiaGHICHU_DOTTHI: TWideStringField;
    qryDSThamgiaMA_NHANVIEN: TWideStringField;
    qryDSThamgiaFULL_NAME: TWideStringField;
    qryDSThamgiaGIOI_TINH: TWideStringField;
    qryDSThamgiaBIRTH_DATE: TDateField;
    qryDSThamgiaTITLE_NAME: TWideStringField;
    qryDSThamgiaDEPT_NAME: TWideStringField;
    qryDSThamgiaPOSITION_NAME: TWideStringField;
    qryDSThamgiaNGACH_LUONG_HT: TWideStringField;
    qryDSThamgiaBAC_LUONG_HT: TIntegerField;
    qryDSThamgiaHESO_LUONG_HT: TIBOFloatField;
    qryDSThamgiaNGAY_NHAN_BAC_HT: TDateField;
    qryDSThamgiaNGACH_LUONG_DENGHI: TWideStringField;
    qryDSThamgiaBAC_LUONG_DENGHI: TIntegerField;
    qryDSThamgiaHESO_LUONG_DENGHI: TIBOFloatField;
    qryDSThamgiaNGAY_DENGHI_NANGBAC: TDateField;
    qryDSThamgiaVANG: TSmallintField;
    qryDSThamgiaLY_THUYET: TIBOFloatField;
    qryDSThamgiaTHUC_HANH: TIBOFloatField;
    qryDSThamgiaMON_KHAC: TIBOFloatField;
    qryDSThamgiaDIEM_TB: TIBOFloatField;
    qryDSThamgiaXEP_LOAI: TWideStringField;
    qryDSThamgiaY_KIEN: TWideStringField;
    qryDSThamgiaGHI_CHU: TWideStringField;
    gridEmployeeHESO_LUONG_HT: TdxDBGridCalcColumn;
    gridEmployeeBAC_LUONG_DENGHI: TdxDBGridCalcColumn;
    gridEmployeeHESO_LUONG_DENGHI: TdxDBGridCalcColumn;
    gridEmployeeLY_THUYET: TdxDBGridCalcColumn;
    gridEmployeeTHUC_HANH: TdxDBGridCalcColumn;
    gridEmployeeMON_KHAC: TdxDBGridCalcColumn;
    gridEmployeeDIEM_TB: TdxDBGridCalcColumn;
    gridEmployeeVANG: TdxDBGridCheckColumn;
    ActionList1: TActionList;
    acXemDS: TAction;
    acDesign: TAction;
    acPreview: TAction;
    acPrint: TAction;
    qryLuongHienTai: TIBOQuery;
    qryLuongHienTaiWAGE_SCALE: TWideStringField;
    qryLuongHienTaiWAGE_LEVEL: TIntegerField;
    qryLuongHienTaiWAGE_COEFF: TIBOFloatField;
    qryLuongHienTaiAPPLY_DATE: TDateField;
    qryDanhSachDotNangLCB: TIBOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    DateField1: TDateField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    IntegerField1: TIntegerField;
    IBOFloatField1: TIBOFloatField;
    DateField2: TDateField;
    WideStringField8: TWideStringField;
    IntegerField2: TIntegerField;
    IBOFloatField2: TIBOFloatField;
    DateField3: TDateField;
    SmallintField1: TSmallintField;
    IBOFloatField3: TIBOFloatField;
    IBOFloatField4: TIBOFloatField;
    IBOFloatField5: TIBOFloatField;
    IBOFloatField6: TIBOFloatField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    DateField4: TDateField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    ppDanhSachDotNangLCB: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    ppField11: TppField;
    ppField12: TppField;
    ppField13: TppField;
    ppField14: TppField;
    ppField15: TppField;
    ppField16: TppField;
    ppField17: TppField;
    ppField18: TppField;
    ppField19: TppField;
    ppField20: TppField;
    ppField21: TppField;
    ppField22: TppField;
    ppField23: TppField;
    ppField24: TppField;
    ppField25: TppField;
    ppField26: TppField;
    dsDanhSachDotNangLCB: TDataSource;
    pageMain: TElPageControl;
    dxLayoutControl1Item7: TdxLayoutItem;
    tabLCBNN: TElTabSheet;
    tabLCDCV: TElTabSheet;
    gridLuongCongTy: TdxDBGrid;
    gridLuongCongTyMA_NHANVIEN: TdxDBGridColumn;
    gridLuongCongTyFULL_NAME: TdxDBGridPopupColumn;
    gridLuongCongTyTITLE_NAME: TdxDBGridColumn;
    gridLuongCongTyNGACH_LUONG_HT: TdxDBGridColumn;
    gridLuongCongTyBAC_LUONG_HT: TdxDBGridColumn;
    gridLuongCongTyHESO_LUONG_HT: TdxDBGridCalcColumn;
    gridLuongCongTyNGAY_NHAN_BAC_HT: TdxDBGridDateColumn;
    gridLuongCongTyNGACH_LUONG_DENGHI: TdxDBGridPopupColumn;
    gridLuongCongTyBAC_LUONG_DENGHI: TdxDBGridCalcColumn;
    gridLuongCongTyHESO_LUONG_DENGHI: TdxDBGridCalcColumn;
    gridLuongCongTyNGAY_DENGHI_NANGBAC: TdxDBGridDateColumn;
    gridLuongCongTyVANG: TdxDBGridCheckColumn;
    gridLuongCongTyLY_THUYET: TdxDBGridCalcColumn;
    gridLuongCongTyTHUC_HANH: TdxDBGridCalcColumn;
    gridLuongCongTyMON_KHAC: TdxDBGridCalcColumn;
    gridLuongCongTyDIEM_TB: TdxDBGridCalcColumn;
    gridLuongCongTyXEP_LOAI: TdxDBGridColumn;
    gridLuongCongTyY_KIEN: TdxDBGridColumn;
    gridLuongCongTyGHI_CHU: TdxDBGridColumn;
    dsLuongCDCV: TDataSource;
    qryLuongCDCV: TIBOQuery;
    ppChiTietDotNangLCDCV: TppDBPipeline;
    ppField27: TppField;
    ppField28: TppField;
    ppField29: TppField;
    ppField30: TppField;
    ppField31: TppField;
    ppField32: TppField;
    ppField33: TppField;
    ppField34: TppField;
    ppField35: TppField;
    ppField36: TppField;
    ppField37: TppField;
    ppField38: TppField;
    ppField39: TppField;
    ppField40: TppField;
    ppField41: TppField;
    ppField42: TppField;
    ppField43: TppField;
    ppField44: TppField;
    ppField45: TppField;
    ppField46: TppField;
    ppField47: TppField;
    ppField48: TppField;
    ppField49: TppField;
    ppField50: TppField;
    ppField51: TppField;
    ppField52: TppField;
    qryLCDCVHienHanh: TIBOQuery;
    qryLuongCDCVNANGLUONG_CONGTY_ID: TIntegerField;
    qryLuongCDCVDOTTHI_ID: TIntegerField;
    qryLuongCDCVMA_DOT: TWideStringField;
    qryLuongCDCVTEN_DOT: TWideStringField;
    qryLuongCDCVNGAY_THI: TDateField;
    qryLuongCDCVSL_COMAT: TIntegerField;
    qryLuongCDCVSL_VANG: TIntegerField;
    qryLuongCDCVGHICHU_DOTTHI: TWideStringField;
    qryLuongCDCVMA_NHANVIEN: TWideStringField;
    qryLuongCDCVFULL_NAME: TWideStringField;
    qryLuongCDCVGIOI_TINH: TWideStringField;
    qryLuongCDCVBIRTH_DATE: TDateField;
    qryLuongCDCVTITLE_NAME: TWideStringField;
    qryLuongCDCVDEPT_NAME: TWideStringField;
    qryLuongCDCVPOSITION_NAME: TWideStringField;
    qryLuongCDCVNGACH_LUONG_HT: TWideStringField;
    qryLuongCDCVBAC_LUONG_HT: TIntegerField;
    qryLuongCDCVHESO_LUONG_HT: TIBOFloatField;
    qryLuongCDCVNGAY_NHAN_BAC_HT: TDateField;
    qryLuongCDCVNGACH_LUONG_DENGHI: TWideStringField;
    qryLuongCDCVBAC_LUONG_DENGHI: TIntegerField;
    qryLuongCDCVHESO_LUONG_DENGHI: TIBOFloatField;
    qryLuongCDCVNGAY_DENGHI_NANGBAC: TDateField;
    qryLuongCDCVVANG: TSmallintField;
    qryLuongCDCVLY_THUYET: TIBOFloatField;
    qryLuongCDCVTHUC_HANH: TIBOFloatField;
    qryLuongCDCVMON_KHAC: TIBOFloatField;
    qryLuongCDCVDIEM_TB: TIBOFloatField;
    qryLuongCDCVXEP_LOAI: TWideStringField;
    qryLuongCDCVY_KIEN: TWideStringField;
    qryLuongCDCVGHI_CHU: TWideStringField;
    qryLCDCVHienHanhWAGE_SCALE: TWideStringField;
    qryLCDCVHienHanhWAGE_LEVEL: TIntegerField;
    qryLCDCVHienHanhWAGE_COEFF: TIBOFloatField;
    qryLCDCVHienHanhAPPLY_DATE: TDateField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    
    function PrepareReport(type_prepare:integer=0): boolean;

    procedure gridEmployeeFULLNAMEInitPopup(Sender: TObject);
    procedure gridEmployeeFULLNAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxSelectFileInitPopup(Sender: TObject);
    procedure dxSelectFileCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectFileChange(Sender: TObject);
    procedure frameToolbar1btnCloseClick(Sender: TObject);
    procedure gridEmployeeNGACH_LUONG_DENGHIInitPopup(Sender: TObject);
    procedure gridEmployeeNGACH_LUONG_DENGHICloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure acXemDSExecute(Sender: TObject);
    procedure acDesignExecute(Sender: TObject);
    procedure acPreviewExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure qryDSThamgiaMA_NHANVIENChange(Sender: TField);
    procedure qryLuongCDCVNewRecord(DataSet: TDataSet);
    procedure qryLuongCDCVMA_NHANVIENChange(Sender: TField);
    procedure gridLuongCongTyFULL_NAMEInitPopup(Sender: TObject);
    procedure gridLuongCongTyFULL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridLuongCongTyNGACH_LUONG_DENGHIInitPopup(Sender: TObject);
    procedure gridLuongCongTyNGACH_LUONG_DENGHICloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
  private
    { Private declarations }
    TEMPLATE_FILE:String;
  public
    { Public declarations }
  end;

var
  frmTheodoinangluong: TfrmTheodoinangluong;

implementation

uses PopupMainForm, SSP_Library, MainDM;

{$R *.dfm}

procedure TfrmTheodoinangluong.FormCreate(Sender: TObject);
begin
  inherited;
   frameDateTime1.InitViewData;
   frameDateTime1.SetPeriod('NAM_NAY');
   acXemDS.Execute;
end;

procedure TfrmTheodoinangluong.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryDSDotthi.Close;
  qryDSThamgia.Close;
  Action := caFree;
  frmTheodoinangluong := nil;
end;

procedure TfrmTheodoinangluong.gridEmployeeFULLNAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.dximOptionChange(sender);
  InitPopupControl('dxlcEmpForSelect', frmPopupMain, sender, 2.5,
  gridEmployee);
end;

procedure TfrmTheodoinangluong.gridEmployeeFULLNAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryEmpForSelect, qryDSThamgia,
    'EMPLOYEE_NO;FULL_NAME;TITLE_NAME',
    'MA_NHANVIEN;FULL_NAME;TITLE_NAME',
    'FULL_NAME', Text);
  frmPopupMain.qryEmpForSelect.Close;
end;

function TfrmTheodoinangluong.PrepareReport(type_prepare:integer): boolean;
var
  pathName, pathDirectory: string;
begin
 try
    pathDirectory := ExtractFilePath(Application.ExeName) + 'Reports\DecisionReport';
    case sysConfig.Language of
    0,1:
       pathName := pathDirectory + '\Vn\'+TEMPLATE_FILE;
    2:
       pathName := pathDirectory + '\Eng\'+TEMPLATE_FILE;
    end;
    if (FileExists(pathName)) then
    begin
      rpTheodoinangluong.Template.FileName := pathName;
      rpTheodoinangluong.Template.Load;
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

procedure TfrmTheodoinangluong.dxSelectFileInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryReportTemplateList.ParamByname('TEMPLATE_TYPE').Value:=9;
  frmPopupMain.qryReportTemplateList.Open;
  InitPopupControl('dxlcReportTemplateList',frmPopupMain,sender,2);
end;

procedure TfrmTheodoinangluong.dxSelectFileCloseUp(Sender: TObject;
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

procedure TfrmTheodoinangluong.dxSelectFileChange(Sender: TObject);
begin
  inherited;
  if dxSelectFile.Text='' then
    TEMPLATE_FILE:='';
end;

procedure TfrmTheodoinangluong.frameToolbar1btnCloseClick(Sender: TObject);
begin
  inherited;
  frmTheodoinangluong.Close;
end;

procedure TfrmTheodoinangluong.gridEmployeeNGACH_LUONG_DENGHIInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWageStandard.Open;
  InitPopupControl('dxlcWageStandard', frmPopupMain, sender, 2.5,
  gridEmployee);
end;

procedure TfrmTheodoinangluong.gridEmployeeNGACH_LUONG_DENGHICloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
     OnPopupCloseUp(Accept, frmPopupMain.qryWageStandard,
    qryDSThamgia,
    'WAGE_SCALE; WAGE_LEVEL; WAGE_COEFF',
    'NGACH_LUONG_DENGHI; BAC_LUONG_DENGHI; HESO_LUONG_DENGHI',
    'WAGE_SCALE', Text);
  frmPopupMain.qryWageStandard.Close;
end;

procedure TfrmTheodoinangluong.acXemDSExecute(Sender: TObject);
begin
  inherited;
  if qryDSDotthi.Active then qryDSDotthi.Close;
    qryDSDotthi.ParamByName('TU_NGAY').Value := frameDateTime1.dxFromDate.Date;
    qryDSDotthi.ParamByName('DEN_NGAY').Value := frameDateTime1.dxToDate.Date;
  qryDSDotthi.Open;

  if qryDSThamgia.Active then qryDSThamgia.Close;
  qryDSThamgia.Open;

  if qryLuongCDCV.Active then qryLuongCDCV.Close;
  qryLuongCDCV.Open;

  if qryDanhSachDotNangLCB.Active then qryDanhSachDotNangLCB.Close;
    qryDanhSachDotNangLCB.ParamByName('TU_NGAY').Value := frameDateTime1.dxFromDate.Date;
    qryDanhSachDotNangLCB.ParamByName('DEN_NGAY').Value := frameDateTime1.dxToDate.Date;
  qryDanhSachDotNangLCB.Open;
  
end;

procedure TfrmTheodoinangluong.acDesignExecute(Sender: TObject);
begin
  inherited;
   if PrepareReport = false then exit;
  dmMain.DefOnBeforePrint(false, qryDSThamgia,self);
  dsnTheodoinangluong.ShowModal;

end;

procedure TfrmTheodoinangluong.acPreviewExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  dmMain.DefOnBeforePrint(true, qryDSThamgia,self);
  rpTheodoinangluong.AllowPrintToFile := True;
  rpTheodoinangluong.DeviceType := dtScreen;
  rpTheodoinangluong.Print;
end;

procedure TfrmTheodoinangluong.acPrintExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  dmMain.DefOnBeforePrint(true, qryDSThamgia,self);
  rpTheodoinangluong.AllowPrintToFile := True;
  rpTheodoinangluong.DeviceType := dtPrinter;
  rpTheodoinangluong.Print;
end;

procedure TfrmTheodoinangluong.qryDSThamgiaMA_NHANVIENChange(
  Sender: TField);
begin
  inherited;
  if qryLuongHienTai.Active then qryLuongHienTai.Close;
  qryLuongHienTai.ParamByName('MA_NHANVIEN').Value := qryDSThamgiaMA_NHANVIEN.Value;
  qryLuongHienTai.ParamByName('XEM_DENNGAY').Value := qryDSDotthiNGAY_THI.Value;
  qryLuongHienTai.Open;

  qryDSThamgiaNGACH_LUONG_HT.Value := qryLuongHienTaiWAGE_SCALE.Value;
  qryDSThamgiaBAC_LUONG_HT.Value := qryLuongHienTaiWAGE_LEVEL.Value;
  qryDSThamgiaHESO_LUONG_HT.Value := qryLuongHienTaiWAGE_COEFF.Value;
  qryDSThamgiaNGAY_NHAN_BAC_HT.Value := qryLuongHienTaiAPPLY_DATE.Value;
end;

procedure TfrmTheodoinangluong.qryLuongCDCVNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryLuongCDCVDOTTHI_ID.Value := qryDSDotthiKEY_ID.Value;
end;

procedure TfrmTheodoinangluong.qryLuongCDCVMA_NHANVIENChange(
  Sender: TField);
begin
  inherited;
  if qryLCDCVHienHanh.Active then qryLCDCVHienHanh.Close;
  qryLCDCVHienHanh.ParamByName('MA_NHANVIEN').Value := qryDSThamgiaMA_NHANVIEN.Value;
  qryLCDCVHienHanh.ParamByName('XEM_DENNGAY').Value := qryDSDotthiNGAY_THI.Value ;
  qryLCDCVHienHanh.Open;

  qryLuongCDCVNGACH_LUONG_HT.Value := qryLCDCVHienHanhWAGE_SCALE.Value;
  qryLuongCDCVBAC_LUONG_HT.Value := qryLCDCVHienHanhWAGE_LEVEL.Value;
  qryLuongCDCVHESO_LUONG_HT.Value := qryLCDCVHienHanhWAGE_COEFF.Value;
  qryLuongCDCVNGAY_NHAN_BAC_HT.Value := qryLCDCVHienHanhAPPLY_DATE.Value;
end;

procedure TfrmTheodoinangluong.gridLuongCongTyFULL_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.dximOptionChange(sender);
  InitPopupControl('dxlcEmpForSelect', frmPopupMain, sender, 2.5, gridLuongCongTy);
end;

procedure TfrmTheodoinangluong.gridLuongCongTyFULL_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryEmpForSelect, qryLuongCDCV,
    'EMPLOYEE_NO;FULL_NAME;TITLE_NAME',
    'MA_NHANVIEN;FULL_NAME;TITLE_NAME',
    'FULL_NAME', Text);
  frmPopupMain.qryEmpForSelect.Close;
end;

procedure TfrmTheodoinangluong.gridLuongCongTyNGACH_LUONG_DENGHIInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWageCompany.Open;
  InitPopupControl('dxlcWageCompany', frmPopupMain, sender, 2.5,
  gridLuongCongTy);
end;

procedure TfrmTheodoinangluong.gridLuongCongTyNGACH_LUONG_DENGHICloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryWageCompany,
    qryLuongCDCV,
    'WAGE_SCALE; WAGE_LEVEL; WAGE_COEFF',
    'NGACH_LUONG_DENGHI; BAC_LUONG_DENGHI; HESO_LUONG_DENGHI',
    'WAGE_SCALE', Text);
  frmPopupMain.qryWageCompany.Close;
end;

end.
