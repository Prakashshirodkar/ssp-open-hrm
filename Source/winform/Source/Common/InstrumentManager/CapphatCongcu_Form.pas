unit CapphatCongcu_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, DB, IBODataset, dxGrClEx,
  dxEdLib, dxEditor, ElBtnCtl, ElPopBtn, ActnList, ppDB, ppDBPipe,
  ppEndUsr, ppComm, ppRelatv, ppProd, ppClass, ppReport;

type
  TfrmCongcuCapphat = class(TfrmEditBase)
    dxlcMainGroup1: TdxLayoutGroup;
    gridDotCapphat: TdxDBGrid;
    dxlcMainItem2: TdxLayoutItem;
    dxlcMainGroup2: TdxLayoutGroup;
    dsDotCapphat: TDataSource;
    qryDotCapphat: TIBOQuery;
    qryDotCapphatMA_DOT: TWideStringField;
    qryDotCapphatTEN_DOT: TWideStringField;
    qryDotCapphatNGAY_CAP: TDateField;
    qryDotCapphatNGAY_HETHAN: TDateField;
    qryDotCapphatGHI_CHU: TWideStringField;
    gridDotCapphatMA_DOT: TdxDBGridColumn;
    gridDotCapphatTEN_DOT: TdxDBGridColumn;
    gridDotCapphatNGAY_CAP: TdxDBGridDateColumn;
    gridDotCapphatNGAY_HETHAN: TdxDBGridDateColumn;
    gridDotCapphatGHI_CHU: TdxDBGridColumn;
    dxlcMainGroup3: TdxLayoutGroup;
    dxlcMainGroup4: TdxLayoutGroup;
    dsChitiet: TDataSource;
    qryChitiet: TIBOQuery;
    qryChitietMA_DOT: TWideStringField;
    qryChitietMA_NHANVIEN: TWideStringField;
    qryChitietHO_TEN: TWideStringField;
    qryChitietCHUC_VU: TWideStringField;
    qryChitietDON_VI: TWideStringField;
    qryChitietMA_CONGCU: TIntegerField;
    qryChitietMA_LOAI: TWideStringField;
    qryChitietTEN_CONGCU: TWideStringField;
    qryChitietNGAY_CAP: TDateField;
    qryChitietNGAY_HETHAN: TDateField;
    qryChitietTRANG_THAI: TWideStringField;
    qryChitietTEN_TRANGTHAI: TWideStringField;
    qryChitietSO_LUONG: TIntegerField;
    gridChitiet: TdxDBGrid;
    dxlcMainItem3: TdxLayoutItem;
    gridChitietMA_NHANVIEN: TdxDBGridColumn;
    gridChitietHO_TEN: TdxDBGridPopupColumn;
    gridChitietCHUC_VU: TdxDBGridColumn;
    gridChitietDON_VI: TdxDBGridColumn;
    gridChitietTEN_CONGCU: TdxDBGridPopupColumn;
    gridChitietNGAY_CAP: TdxDBGridDateColumn;
    gridChitietNGAY_HETHAN: TdxDBGridDateColumn;
    gridChitietTEN_TRANGTHAI: TdxDBGridPopupColumn;
    gridChitietSO_LUONG: TdxDBGridSpinColumn;
    dxCongcu: TdxPopupEdit;
    dxlcMainItem4: TdxLayoutItem;
    dxTrangthai: TdxPopupEdit;
    dxlcMainItem5: TdxLayoutItem;
    dxNgaycap: TdxDateEdit;
    dxlcMainItem6: TdxLayoutItem;
    dxNgayhethan: TdxDateEdit;
    dxlcMainItem7: TdxLayoutItem;
    dxlcMainGroup5: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxlcMainItem8: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxlcMainItem9: TdxLayoutItem;
    dxlcMainGroup7: TdxLayoutGroup;
    ActionList1: TActionList;
    acChonhnhanhNV: TAction;
    acCapnhatNhanh: TAction;
    qryExecute: TIBOQuery;
    dxSelectFile: TdxPopupEdit;
    dxlcMainGroup6: TdxLayoutGroup;
    dxlcMainGroup8: TdxLayoutGroup;
    dxlcMainItem10: TdxLayoutItem;
    rpBaoCao: TppReport;
    dsnBaoCao: TppDesigner;
    qryBCCapPhat: TIBOQuery;
    ppChiTietCapPhat: TppDBPipeline;
    dsBCCapPhat: TDataSource;
    qryBCCapPhatTEN_DOT: TWideStringField;
    qryBCCapPhatNGAY_CAP: TDateField;
    qryBCCapPhatMA_NV_NHAN: TWideStringField;
    qryBCCapPhatHOTEN_NV_NHAN: TWideStringField;
    qryBCCapPhatCHUCVU_NV_NHAN: TWideStringField;
    qryBCCapPhatDONVI_NV_NHAN: TWideStringField;
    qryBCCapPhatVITRI_NV_NHAN: TWideStringField;
    qryBCCapPhatMA_CONGCU: TWideStringField;
    qryBCCapPhatMA_LOAI_CONGCU: TWideStringField;
    qryBCCapPhatTEN_CONGCU: TWideStringField;
    qryBCCapPhatSO_LUONG: TIntegerField;
    qryBCCapPhatTHUOC_TINH: TWideStringField;
    qryBCCapPhatCT_THUOCTINH: TWideStringField;
    qryBCCapPhatTRANG_THAI: TWideStringField;
    qryBCCapPhatKEY_FIELD: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridChitietHO_TENInitPopup(Sender: TObject);
    procedure gridChitietHO_TENCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryChitietNewRecord(DataSet: TDataSet);
    procedure gridChitietTEN_CONGCUInitPopup(Sender: TObject);
    procedure gridChitietTEN_CONGCUCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridChitietTEN_TRANGTHAIInitPopup(Sender: TObject);
    procedure gridChitietTEN_TRANGTHAICloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxCongcuInitPopup(Sender: TObject);
    procedure dxCongcuCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxCongcuChange(Sender: TObject);
    procedure dxTrangthaiInitPopup(Sender: TObject);
    procedure dxTrangthaiCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxTrangthaiChange(Sender: TObject);
    procedure acCapnhatNhanhUpdate(Sender: TObject);
    procedure acChonhnhanhNVUpdate(Sender: TObject);
    procedure acChonhnhanhNVExecute(Sender: TObject);
    procedure qryExecuteError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure dxNgaycapChange(Sender: TObject);
    procedure dxNgayhethanChange(Sender: TObject);
    procedure acCapnhatNhanhExecute(Sender: TObject);
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
     MA_CONGCU:Integer;
     MA_LOAI,MA_TRANGTHAI: WideString;
     NGAY_CAP,NGAY_HETHAN:TDate;
     TEMPLATE_FILE:String;
  public
    { Public declarations }
  end;

var
  frmCongcuCapphat: TfrmCongcuCapphat;

implementation

uses MainDM, PopupMainForm, SSP_Library, EmpForSelectForm, DateUtils,
  MainUnit, ppTypes;

{$R *.dfm}

procedure TfrmCongcuCapphat.FormCreate(Sender: TObject);
begin
  inherited;
  qryDotCapphat.Open;
  qryChitiet.Open;
  frameToolbar1.SetDataSource(dsDotCapphat);
  dxNgaycap.Date:=Today;
  MA_CONGCU:=-1;
end;

procedure TfrmCongcuCapphat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryChitiet.Close;
  qryDotCapphat.Close;
end;

procedure TfrmCongcuCapphat.gridChitietHO_TENInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryEmp_Position.ParamByName('IS_MAIN_POSITION').Value:=1;
  frmPopupMain.qryEmp_Position.Open;
  InitPopupControl('dxlcEmp_Position',frmPopupMain,sender,2,gridChitiet);
end;

procedure TfrmCongcuCapphat.gridChitietHO_TENCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
    OnPopupCloseUp(Accept,frmPopupMain.qryEmp_Position,qryChitiet,
                 'EMPLOYEE_NO;FULL_NAME;TITLE_NAME;DEPT_NAME',
                 'MA_NHANVIEN;HO_TEN;CHUC_VU;DON_VI',
                 'FULL_NAME',Text);
    frmPopupMain.qryEmp_Position.Close;
end;

procedure TfrmCongcuCapphat.qryChitietNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryChitietMA_DOT.Value:=qryDotCapphatMA_DOT.Value;
  qryChitietNGAY_CAP.Value:=qryDotCapphatNGAY_CAP.Value;
  if not qryDotCapphatNGAY_HETHAN.IsNull then
    qryChitietNGAY_HETHAN.Value:=qryDotCapphatNGAY_HETHAN.Value;
  qryChitietSO_LUONG.Value:=1;  
end;

procedure TfrmCongcuCapphat.gridChitietTEN_CONGCUInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryCongcu.Open;
  InitPopupControl('dxlcCongcu',frmPopupMain,sender,2,gridChitiet);
end;

procedure TfrmCongcuCapphat.gridChitietTEN_CONGCUCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryCongcu,qryChitiet,
               'MA_CONGCU;TEN_CONGCU;MA_LOAI',
               'MA_CONGCU;TEN_CONGCU;MA_LOAI',
               'TEN_CONGCU',Text);
  frmPopupMain.qryCongcuTrangthai.Close;
end;

procedure TfrmCongcuCapphat.gridChitietTEN_TRANGTHAIInitPopup(
  Sender: TObject);
begin
  inherited;
    frmPopupMain.qryCongcuTrangthai.Open;
    InitPopupControl('dxlcCongcuTrangthai',frmPopupMain,sender,2,gridChitiet);
end;

procedure TfrmCongcuCapphat.gridChitietTEN_TRANGTHAICloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
    OnPopupCloseUp(Accept,frmPopupMain.qryCongcuTrangthai,qryChitiet,
                 'MA_TRANGTHAI;TEN_TRANGTHAI',
                 'TRANG_THAI;TEN_TRANGTHAI',
                 'TEN_TRANGTHAI',Text);
    frmPopupMain.qryCongcuTrangthai.Close;
end;

procedure TfrmCongcuCapphat.dxCongcuInitPopup(Sender: TObject);
begin
  inherited;
    frmPopupMain.qryCongcu.Open;
    InitPopupControl('dxlcCongcu',frmPopupMain,sender,2);
end;

procedure TfrmCongcuCapphat.dxCongcuCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text:=frmPopupMain.qryCongcuTEN_CONGCU.Value;
    MA_CONGCU:=frmPopupMain.qryCongcuMA_CONGCU.Value;
    MA_LOAI:=frmPopupMain.qryCongcuMA_LOAI.Value;
  end;
end;

procedure TfrmCongcuCapphat.dxCongcuChange(Sender: TObject);
begin
  inherited;
 if dxCongcu.Text='' then
 begin
   MA_LOAI:='';
   MA_CONGCU:=-1;
 end;
end;

procedure TfrmCongcuCapphat.dxTrangthaiInitPopup(Sender: TObject);
begin
  inherited;
    frmPopupMain.qryCongcuTrangthai.Open;
    InitPopupControl('dxlcCongcuTrangthai',frmPopupMain,sender,2);
end;

procedure TfrmCongcuCapphat.dxTrangthaiCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    TEXT:=frmPopupMain.qryCongcuTrangthaiTEN_TRANGTHAI.Value;
    MA_TRANGTHAI:=frmPopupMain.qryCongcuTrangthaiMA_TRANGTHAI.Value;
  end;
end;

procedure TfrmCongcuCapphat.dxTrangthaiChange(Sender: TObject);
begin
  inherited;
  if dxTrangthai.Text='' then
  begin
    MA_TRANGTHAI:='';
  end;
end;

procedure TfrmCongcuCapphat.acCapnhatNhanhUpdate(Sender: TObject);
begin
  inherited;
  acCapnhatNhanh.Enabled:=
  ((MA_LOAI<>'')and (MA_CONGCU>=0))
  or
  (MA_TRANGTHAI<>'')
  or
  (NGAY_CAP>0)
  or
  (NGAY_HETHAN>0);
  acCapnhatNhanh.Enabled:=acCapnhatNhanh.Enabled and (gridChitiet.SelectedCount>1);
end;

procedure TfrmCongcuCapphat.acChonhnhanhNVUpdate(Sender: TObject);
begin
  inherited;
  acChonhnhanhNV.Enabled:=
  (MA_LOAI<>'')and (MA_CONGCU>=0)and(NGAY_CAP>0)and(qryDotCapphat.IsEmpty=false)and
  (not(qryDotCapphat.State in [dsInsert,dsEdit]));
end;

procedure TfrmCongcuCapphat.acChonhnhanhNVExecute(Sender: TObject);
begin
  inherited;
   with TfrmEmpForSelect.Create(self) do
  try
    if ShowModal = mrOk then
    begin
      Screen.Cursor := crSQLWait;
      if qryChitiet.State in [dsInsert,dsEdit] then
        qryChitiet.Cancel;
      qryChitiet.DisableControls;
      if (memList.IsEmpty = false) then
      begin
        qryExecute.SQL.Text :=
         ' INSERT INTO HR_CONGCU_NHANVIEN( '+
         '  MA_CONGCU, MA_DOT, MA_LOAI, MA_NHANVIEN, NGAY_CAP, NGAY_HETHAN, TRANG_THAI, SO_LUONG) '+
         ' VALUES ( '+
         ' :MA_CONGCU,:MA_DOT,:MA_LOAI,:MA_NHANVIEN,:NGAY_CAP,:NGAY_HETHAN,:TRANG_THAI,:SO_LUONG)';
        qryExecute.Prepare;
        frmMain.SetStatusBarPrgDisplay(0, memList.RecordCount);
        memList.First;
        while not memList.Eof do
        begin
          if memListSELECTED.Value = 1 then
            if not qryChitiet.Locate('MA_NHANVIEN',
              memListEMPLOYEE_NO.Value, []) then
            begin
              qryExecute.ParamByName('MA_CONGCU').Value :=MA_CONGCU ;
              qryExecute.ParamByName('MA_DOT').Value :=qryDotCapphatMA_DOT.Value;
              qryExecute.ParamByName('MA_LOAI').Value :=MA_LOAI ;
              qryExecute.ParamByName('MA_NHANVIEN').Value :=memListEMPLOYEE_NO.Value ;
              qryExecute.ParamByName('NGAY_CAP').Value :=NGAY_CAP ;
              if ngay_hethan>0 then
              qryExecute.ParamByName('NGAY_HETHAN').Value :=NGAY_HETHAN ;
              if MA_TRANGTHAI<>'' then
                qryExecute.ParamByName('TRANG_THAI').Value :=MA_TRANGTHAI ;
              qryExecute.ParamByName('SO_LUONG').Value :=1 ;
              try
                dmMain.ExecuteSQL(qryExecute);
              except
              end;
            end;
          memList.Next;
          frmMain.BarPrgStepIt;
        end;
        dmMain.CommitTransaction;
        qryChitiet.Refresh;
      end;
      qryChitiet.EnableControls;
      Screen.Cursor := crDefault;
    end;
  finally
    Free;
  end;

end;

procedure TfrmCongcuCapphat.qryExecuteError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  inherited;
  RaiseException:=false;
end;

procedure TfrmCongcuCapphat.dxNgaycapChange(Sender: TObject);
begin
  inherited;
  NGAY_CAP:=dxNgaycap.Date;
end;

procedure TfrmCongcuCapphat.dxNgayhethanChange(Sender: TObject);
begin
  inherited;
  NGAY_HETHAN:=dxNgayHethan.Date;
end;

procedure TfrmCongcuCapphat.acCapnhatNhanhExecute(Sender: TObject);
var bookmark:TBookmark;
    i:integer;
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  qryChitiet.DisableControls;
  bookmark:=qryChitiet.GetBookmark;
  frmMain.SetStatusBarPrgDisplay(0,gridChitiet.SelectedCount);
  for i:=0 to gridChitiet.SelectedCount-1 do
  begin
    if qryChitiet.Locate('MA_NHANVIEN',VarToWideStr(gridChitiet.SelectedNodes[i].Values[gridChitietMA_NHANVIEN.Index]),[])
    then
    begin
      if not (qryChitiet.State in [dsEdit,dsInsert]) then
        qryChitiet.Edit;
      if MA_CONGCU>=0 then
      begin
        qryChitietMA_CONGCU.Value:=MA_CONGCU;
        qryChitietMA_LOAI.Value:=MA_LOAI;
        qryChitietTEN_CONGCU.Value:=dxCongcu.Text;
      end;
      if MA_TRANGTHAI<>'' then
      begin
        qryChitietTRANG_THAI.Value:=MA_TRANGTHAI;
        qryChitietTEN_TRANGTHAI.Value:=dxTrangthai.Text;

      end;
      if NGAY_CAP>0 then
        qryChitietNGAY_CAP.Value:=NGAY_CAP;
      if NGAY_HETHAN>0 then
        qryChitietNGAY_HETHAN.Value:=NGAY_HETHAN;
      qryChitiet.Post;
    end;
    frmMain.BarPrgStepIt;
  end;
  qryChitiet.GotoBookmark(bookmark);
  qryChitiet.EnableControls;
  Screen.Cursor:=crDefault;

end;

procedure TfrmCongcuCapphat.dxSelectFileInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryReportTemplateList.ParamByname('TEMPLATE_TYPE').Value:=6;//Cap phat Cong cu
  frmPopupMain.qryReportTemplateList.Open;
  InitPopupControl('dxlcReportTemplateList',frmPopupMain,sender,2);
end;

procedure TfrmCongcuCapphat.dxSelectFileCloseUp(Sender: TObject;
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

procedure TfrmCongcuCapphat.dxSelectFileChange(Sender: TObject);
begin
  inherited;
  if dxSelectFile.Text='' then
    TEMPLATE_FILE:='';
end;

function TfrmCongcuCapphat.PrepareReport(type_prepare:integer): boolean;
var
  pathName, pathDirectory: string;
begin
 try
    pathDirectory := ExtractFilePath(Application.ExeName) + 'Reports\CongCuReport';
    case sysConfig.Language of
    0,1:
       pathName := pathDirectory + '\Vn\'+TEMPLATE_FILE;
    2:
       pathName := pathDirectory + '\Eng\'+TEMPLATE_FILE;
    end;
    if (FileExists(pathName)) then
    begin
      rpBaoCao.Template.FileName := pathName;
      rpBaoCao.Template.Load;
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

procedure TfrmCongcuCapphat.frameToolbar1acPreviewExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  if qryBCCapPhat.Active then qryBCCapPhat.Close;
  qryBCCapPhat.Open;
  dmMain.DefOnBeforePrint(true, qryDotCapphat,self);
  rpBaoCao.AllowPrintToFile := True;
  rpBaoCao.DeviceType := dtScreen;
  rpBaoCao.Print;
end;

procedure TfrmCongcuCapphat.frameToolbar1acDesignExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  if qryBCCapPhat.Active then qryBCCapPhat.Close;
  qryBCCapPhat.Open;
  dmMain.DefOnBeforePrint(false, qryDotCapphat,self);
  dsnBaoCao.ShowModal;
end;

procedure TfrmCongcuCapphat.frameToolbar1acPrintExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  if qryBCCapPhat.Active then qryBCCapPhat.Close;
  qryBCCapPhat.Open;
  dmMain.DefOnBeforePrint(true, qryDotCapphat,self);
  rpBaoCao.AllowPrintToFile := True;
  rpBaoCao.DeviceType := dtPrinter;
  rpBaoCao.Print;
end;

end.
