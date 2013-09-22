unit CauHinh_DangKy_PhepForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxCntner, dxEditor, dxExEdtr,
  dxEdLib, dxDBELib, ElPgCtl, StdCtrls, ElCLabel, ElLabel, ExtCtrls,
  ImgList, dxTL, dxDBCtrl, dxDBGrid, DB, IBODataset, dxDBTLCl, dxGrClms,
  ElBtnCtl, ElPopBtn, ActnList, dxmdaset;

type
  TfrmCauHinh_DangKy_Phep = class(TfrmEditBase)
    pageMain: TElPageControl;
    dxlcMainItem21: TdxLayoutItem;
    pageMail_sever: TElTabSheet;
    pagePhanQuyen: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Item7: TdxLayoutItem;
    dxLayoutControl2Group3: TdxLayoutGroup;
    dxLayoutControl2Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    ImageList1: TImageList;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl2Group5: TdxLayoutGroup;
    dxLayoutControl2Group6: TdxLayoutGroup;
    dxLayoutControl2Group7: TdxLayoutGroup;
    dxMailServer: TdxDBEdit;
    dxUserName: TdxDBEdit;
    dxAccount: TdxDBEdit;
    dxPass: TdxDBEdit;
    gridEmployeeList: TdxDBGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    gridDanhSachNhanVien: TdxDBGrid;
    dxLayoutControl2Item1: TdxLayoutItem;
    gridPhanQuyen: TdxDBGrid;
    dxLayoutControl2Item2: TdxLayoutItem;
    qryDanhSachNhanVien: TIBOQuery;
    qryMail_Server: TIBOQuery;
    dsDanhSachNhanVien: TDataSource;
    dsMail_Server: TDataSource;
    gridDanhSachNhanVienEMPLOYEE_NO: TdxDBGridColumn;
    gridDanhSachNhanVienFULL_NAME: TdxDBGridColumn;
    gridDanhSachNhanVienGENDER: TdxDBGridColumn;
    gridDanhSachNhanVienBIRTH_DATE: TdxDBGridDateColumn;
    gridDanhSachNhanVienID_CARD_NO: TdxDBGridColumn;
    gridDanhSachNhanVienRESIDENT_ADDR: TdxDBGridColumn;
    gridDanhSachNhanVienEMAIL: TdxDBGridColumn;
    gridDanhSachNhanVienRECEIVE_MAIL: TdxDBGridColumn;
    gridDanhSachNhanVienTITLE_NAME: TdxDBGridColumn;
    gridDanhSachNhanVienDEPT_NAME: TdxDBGridColumn;
    gridEmployeeListEMPLOYEE_NO: TdxDBGridColumn;
    gridEmployeeListFULL_NAME: TdxDBGridColumn;
    gridEmployeeListGENDER: TdxDBGridColumn;
    gridEmployeeListBIRTH_DATE: TdxDBGridDateColumn;
    gridEmployeeListID_CARD_NO: TdxDBGridColumn;
    gridEmployeeListRESIDENT_ADDR: TdxDBGridColumn;
    gridEmployeeListEMAIL: TdxDBGridColumn;
    gridEmployeeListTITLE_NAME: TdxDBGridColumn;
    gridEmployeeListDEPT_NAME: TdxDBGridColumn;
    gridEmployeeListRECEIVE_MAIL: TdxDBGridCheckColumn;
    qryDanhSachNhanVienEMPLOYEE_NO: TWideStringField;
    qryDanhSachNhanVienFULL_NAME: TWideStringField;
    qryDanhSachNhanVienGENDER: TSmallintField;
    qryDanhSachNhanVienBIRTH_DATE: TDateField;
    qryDanhSachNhanVienID_CARD_NO: TWideStringField;
    qryDanhSachNhanVienRESIDENT_ADDR: TWideStringField;
    qryDanhSachNhanVienEMAIL: TWideStringField;
    qryDanhSachNhanVienRECEIVE_MAIL: TSmallintField;
    qryDanhSachNhanVienTITLE_NAME: TWideStringField;
    qryDanhSachNhanVienDEPT_NAME: TWideStringField;
    qryMail_ServerID: TIntegerField;
    qryMail_ServerMAIL_SERVER: TWideStringField;
    qryMail_ServerUSERNAME: TWideStringField;
    qryMail_ServerACCOUNT_NAME: TWideStringField;
    qryMail_ServerPASS: TWideStringField;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    ElPopupButton3: TElPopupButton;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxLayoutControl2Item8: TdxLayoutItem;
    dxLayoutControl2Item9: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    ActionList1: TActionList;
    AcAddall: TAction;
    AcAdd: TAction;
    AcRemove: TAction;
    AcRemoveAll: TAction;
    qryCauHinh: TIBOQuery;
    dsCauHinh: TDataSource;
    dxPopupEdit1: TdxPopupEdit;
    dxPopupEdit2: TdxPopupEdit;
    gridPhanQuyenID: TdxDBGridColumn;
    gridPhanQuyenSO_NGAY: TdxDBGridColumn;
    gridPhanQuyenMANV_DANGKY: TdxDBGridColumn;
    gridPhanQuyenTEN_NHANVIEN: TdxDBGridColumn;
    gridPhanQuyenDON_VI: TdxDBGridColumn;
    gridPhanQuyenCHUC_VU: TdxDBGridColumn;
    gridPhanQuyenMANV_DUYETCAP1: TdxDBGridColumn;
    gridPhanQuyenTENNV_DUYETCAP1: TdxDBGridColumn;
    gridPhanQuyenMANV_DUYETCAP2: TdxDBGridColumn;
    gridPhanQuyenTENNV_DUYETCAP2: TdxDBGridColumn;
    qryCauHinhID: TIntegerField;
    qryCauHinhSO_NGAY: TIntegerField;
    qryCauHinhMANV_DANGKY_PHEP: TWideStringField;
    qryCauHinhTEN_NHANVIEN: TWideStringField;
    qryCauHinhDON_VI: TWideStringField;
    qryCauHinhCHUC_VU: TWideStringField;
    qryCauHinhMANV_DUYET_CAP1: TWideStringField;
    qryCauHinhTENNV_DUYETCAP1: TWideStringField;
    qryCauHinhMANV_DUYET_CAP2: TWideStringField;
    qryCauHinhTENNV_DUYETCAP2: TWideStringField;
    qryEXE: TIBOQuery;
    dxSoNgay: TdxSpinEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dsReciveMail: TDataSource;
    QryReciveMail: TIBOQuery;
    QryReciveMailEMPLOYEE_NO: TWideStringField;
    QryReciveMailFULL_NAME: TWideStringField;
    QryReciveMailGENDER: TSmallintField;
    QryReciveMailBIRTH_DATE: TDateField;
    QryReciveMailID_CARD_NO: TWideStringField;
    QryReciveMailRESIDENT_ADDR: TWideStringField;
    QryReciveMailEMAIL: TWideStringField;
    QryReciveMailRECEIVE_MAIL: TSmallintField;
    QryReciveMailTITLE_NAME: TWideStringField;
    QryReciveMailDEPT_NAME: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AcAddallExecute(Sender: TObject);
    procedure AcAddExecute(Sender: TObject);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxPopupEdit1InitPopup(Sender: TObject);
    procedure dxPopupEdit2InitPopup(Sender: TObject);
    procedure dxPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure AcRemoveExecute(Sender: TObject);
    procedure AcRemoveAllExecute(Sender: TObject);
    procedure qryCauHinhBeforeDelete(DataSet: TDataSet);
    procedure AcAddUpdate(Sender: TObject);
    procedure AcAddallUpdate(Sender: TObject);
    procedure AcRemoveAllUpdate(Sender: TObject);
    procedure AcRemoveUpdate(Sender: TObject);
    procedure pageMainChange(Sender: TObject);
    procedure dxPopupEdit2Change(Sender: TObject);
    procedure dxPopupEdit1Change(Sender: TObject);
   private
    { Private declarations }
    MANV_DUYET_CAP1,MANV_DUYET_CAP2:WideString;
    TEN_NV_DUYET_CAP1,TEN_NV_DUYET_CAP2:WideString;

  public
    { Public declarations }
  end;

var
  frmCauHinh_DangKy_Phep: TfrmCauHinh_DangKy_Phep;

implementation

uses MainDM, SSP_Library, PopupMainForm;

{$R *.dfm}

procedure TfrmCauHinh_DangKy_Phep.FormCreate(Sender: TObject);
begin
  inherited;
  qryDanhSachNhanVien.Open;
  QryReciveMail.Open;
  qryMail_Server.Open;
  qryCauHinh.Open;
  frameToolbar1.SetDataSource (dsDanhSachNhanVien);
  frameToolbar1.SetListSource(dsDanhSachNhanVien);
  MANV_DUYET_CAP1:='';
  MANV_DUYET_CAP2:='';
  TEN_NV_DUYET_CAP1:='';
  TEN_NV_DUYET_CAP2:='';
  gridDanhSachNhanVien.FullExpand;
  gridPhanQuyen.FullExpand;    
end;

procedure TfrmCauHinh_DangKy_Phep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryDanhSachNhanVien.Close;
  QryReciveMail.Close;
  qryMail_Server.Close;
  qryCauHinh.Close;
  Action := caFree;
  frmCauHinh_DangKy_Phep := nil;
end;  

procedure TfrmCauHinh_DangKy_Phep.AcAddallExecute(Sender: TObject);
begin
  inherited;
  gridDanhSachNhanVienDEPT_NAME.GroupIndex := -1;
  gridDanhSachNhanVien.SelectAll;
  AcAdd.Execute;
  gridDanhSachNhanVienDEPT_NAME.GroupIndex := 0;
end;
procedure TfrmCauHinh_DangKy_Phep.AcAddExecute(Sender: TObject);
var i:integer;
begin
  inherited;     
      if(MANV_DUYET_CAP1='') then
      begin
          ShowMessageUnicode(202);
          dxPopupEdit1.SetFocus;
      end
      else
      begin
       for i:=0 to gridDanhSachNhanVien.SelectedCount-1 do
        begin

          if qryDanhSachNhanVien.Locate('EMPLOYEE_NO',
            gridDanhSachNhanVien.SelectedNodes[i].Values[gridDanhSachNhanVienEMPLOYEE_NO.Index],[]) then
          begin
            if not (qryCauHinh.State in [dsInsert]) then
              qryCauHinh.Append;
            qryCauHinh.FieldByName('MANV_DANGKY_PHEP').Value:=
            gridDanhSachNhanVien.SelectedNodes[i].Values[gridDanhSachNhanVienEMPLOYEE_NO.Index];
            qryCauHinh.FieldByName('MANV_DUYET_CAP1').Value:=MANV_DUYET_CAP1;
            if MANV_DUYET_CAP2 = '' then
              qryCauHinh.FieldByName('MANV_DUYET_CAP2').clear
            else
              qryCauHinh.FieldByName('MANV_DUYET_CAP2').Value:=MANV_DUYET_CAP2;
            qryCauHinh.FieldByName('SO_NGAY').Value:=dxSoNgay.Value;
            qryCauHinh.Post;
          end;
        end;
        qryCauHinh.Refresh;
       qryDanhSachNhanVien.Refresh;
      end;
    {gridDanhSachNhanVien.DeleteSelection;
    qryCauHinh.Refresh;}

end;

procedure TfrmCauHinh_DangKy_Phep.dxPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryEmpForSelectFULL_NAME.Value;
    MANV_DUYET_CAP1:=frmPopupMain.qryEmpForSelectEMPLOYEE_NO.Value;
    TEN_NV_DUYET_CAP1:=frmPopupMain.qryEmpForSelectFULL_NAME.Value;
  end;
end;

procedure TfrmCauHinh_DangKy_Phep.dxPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  if frmPopupMain.qryEmpForSelect.Active then frmPopupMain.qryEmpForSelect.Close;
  frmPopupMain.qryEmpForSelect.Open;
  InitPopupControl('dxlcEmpForSelect', frmPopupMain, sender, 2.5);
end;

procedure TfrmCauHinh_DangKy_Phep.dxPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
   if Accept then
  begin
    Text := frmPopupMain.qryEmpForSelectFULL_NAME.Value;
    MANV_DUYET_CAP2:=frmPopupMain.qryEmpForSelectEMPLOYEE_NO.Value;
    TEN_NV_DUYET_CAP2:=frmPopupMain.qryEmpForSelectFULL_NAME.Value;
  end;
end;

procedure TfrmCauHinh_DangKy_Phep.dxPopupEdit2InitPopup(Sender: TObject);
begin
  inherited;
  if frmPopupMain.qryEmpForSelect.Active then frmPopupMain.qryEmpForSelect.Close;
  frmPopupMain.qryEmpForSelect.Open;
  InitPopupControl('dxlcEmpForSelect', frmPopupMain, sender, 2.5);
end;   

procedure TfrmCauHinh_DangKy_Phep.AcRemoveExecute(Sender: TObject);
var i :integer;
begin
  inherited;
  gridPhanQuyen.DeleteSelection;
  qryDanhSachNhanVien.Refresh;
end;

procedure TfrmCauHinh_DangKy_Phep.AcRemoveAllExecute(Sender: TObject);
begin
  inherited;
  gridPhanQuyenTENNV_DUYETCAP1.GroupIndex := -1;
  gridPhanQuyenTENNV_DUYETCAP2.GroupIndex := -1;
  gridPhanQuyen.SelectAll;
  AcRemove.Execute;
  gridPhanQuyenTENNV_DUYETCAP1.GroupIndex := 0;
  gridPhanQuyenTENNV_DUYETCAP2.GroupIndex := 1;
end;

procedure TfrmCauHinh_DangKy_Phep.qryCauHinhBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TfrmCauHinh_DangKy_Phep.AcAddUpdate(Sender: TObject);
begin
  inherited;
  acAdd.Enabled := gridDanhSachNhanVien.SelectedCount > 0 ;
end;

procedure TfrmCauHinh_DangKy_Phep.AcAddallUpdate(Sender: TObject);
begin
  inherited;
  AcAddall.Enabled := (qryDanhSachNhanVien.IsEmpty = false );
end;

procedure TfrmCauHinh_DangKy_Phep.AcRemoveAllUpdate(Sender: TObject);
begin
  inherited;
  AcRemoveAll.Enabled := (qryCauHinh.IsEmpty = false);
end;

procedure TfrmCauHinh_DangKy_Phep.AcRemoveUpdate(Sender: TObject);
begin
  inherited;
  AcRemove.Enabled := gridPhanQuyen.SelectedCount > 0 ;
end;

procedure TfrmCauHinh_DangKy_Phep.pageMainChange(Sender: TObject);
begin
  inherited;
  if(pageMain.ActivePage=pagePhanQuyen) then
  begin
      frameToolbar1.dxlctrlSave.Visible:=False;
      frameToolbar1.dxlctrlCancel.Visible:=False;
  end
  else
  begin
      frameToolbar1.dxlctrlSave.Visible:=True;
      frameToolbar1.dxlctrlCancel.Visible:=True;
  end
end;
procedure TfrmCauHinh_DangKy_Phep.dxPopupEdit2Change(Sender: TObject);
begin
  inherited;
  if(Length(dxPopupEdit2.Text)=0)then
    MANV_DUYET_CAP2:='';
end;

procedure TfrmCauHinh_DangKy_Phep.dxPopupEdit1Change(Sender: TObject);
begin
  inherited;
  if(Length(dxPopupEdit1.Text)=0)then
    MANV_DUYET_CAP1:='';
end;

end.
