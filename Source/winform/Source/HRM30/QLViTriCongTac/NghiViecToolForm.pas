unit NghiViecToolForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  ElEdits, ElBtnEdit, ElMemoCombo, dxDBCtrl, ElPanel, dxDBTLCl, dxTL,
  dxCntner, dxDBTL, dxLayoutControl, dxEdLib, ElBtnCtl, ElPopBtn, dxEditor,
  ElPgCtl, ExtCtrls, cxControls, ImgList, ActnList, DB, IBODataset,
  dxmdaset, dxDBGrid, dxGrClms;

type
  TfrmNghiViecTool = class(TfrmBase)
    dxLayoutControl1: TdxLayoutControl;
    panelMain: TPanel;
    pageOrigin: TElPageControl;
    tabDSBonhiem: TElTabSheet;
    Panel1: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    dxSelectDept: TdxPopupEdit;
    dxViewChild: TdxCheckEdit;
    dxDenNgay: TdxDateEdit;
    btnXemThongTin: TElPopupButton;
    dxNgayQD: TdxDateEdit;
    dxSoQD: TdxEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl2Group3: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Group4: TdxLayoutGroup;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxLayoutControl2Item5: TdxLayoutItem;
    tlToChuc_NhanVien: TdxDBTreeList;
    tlToChuc_NhanVienITEM_NO: TdxDBTreeListColumn;
    tlToChuc_NhanVienITEM_NAME: TdxDBTreeListMRUColumn;
    tlToChuc_NhanVienPOSITION_NO: TdxDBTreeListColumn;
    tlToChuc_NhanVienDEPT_NO: TdxDBTreeListColumn;
    tlToChuc_NhanVienTITLE_NO: TdxDBTreeListColumn;
    tlToChuc_NhanVienTITLE_NAME: TdxDBTreeListMRUColumn;
    tlToChuc_NhanVienASSIGNED_DATE: TdxDBTreeListDateColumn;
    tlToChuc_NhanVienPHAN_LOAI: TdxDBTreeListColumn;
    tlToChuc_NhanVienP_ITEM_NO: TdxDBTreeListColumn;
    tlToChuc_NhanVienEMPLOYEE_NO: TdxDBTreeListColumn;
    ElPanel1: TElPanel;
    dxLayoutControl3: TdxLayoutControl;
    viewMessage: TElMemoCombo;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    ElPopupButton8: TElPopupButton;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    memToChuc_NhanVien: TdxMemData;
    memToChuc_NhanVienITEM_NAME: TWideStringField;
    memToChuc_NhanVienASSIGNED_DATE: TDateField;
    memToChuc_NhanVienITEM_NO: TWideStringField;
    memToChuc_NhanVienITEM_DISPLAY_INDEX: TSmallintField;
    memToChuc_NhanVienPOSITION_NO: TWideStringField;
    memToChuc_NhanVienDEPT_NO: TWideStringField;
    memToChuc_NhanVienDEPT_NAME: TWideStringField;
    memToChuc_NhanVienTITLE_NO: TWideStringField;
    memToChuc_NhanVienTITLE_NAME: TWideStringField;
    memToChuc_NhanVienP_ITEM_NO: TWideStringField;
    memToChuc_NhanVienPHAN_LOAI: TWideStringField;
    memToChuc_NhanVienICON_INDEX: TSmallintField;
    memToChuc_NhanVienEMPLOYEE_NO: TWideStringField;
    qryTochuc_Nhanvien: TIBOQuery;
    qryTochuc_NhanvienITEM_NO: TWideStringField;
    qryTochuc_NhanvienITEM_NAME: TWideStringField;
    qryTochuc_NhanvienITEM_DISPLAY_INDEX: TIntegerField;
    qryTochuc_NhanvienPOSITION_NO: TWideStringField;
    qryTochuc_NhanvienDEPT_NO: TWideStringField;
    qryTochuc_NhanvienDEPT_NAME: TWideStringField;
    qryTochuc_NhanvienTITLE_NO: TWideStringField;
    qryTochuc_NhanvienTITLE_NAME: TWideStringField;
    qryTochuc_NhanvienASSIGNED_DATE: TDateField;
    qryTochuc_NhanvienP_ITEM_NO: TWideStringField;
    qryTochuc_NhanvienPHAN_LOAI: TWideStringField;
    qryTochuc_NhanvienICON_INDEX: TSmallintField;
    qryTochuc_NhanvienEMPLOYEE_NO: TWideStringField;
    dsToChuc_NhanVien: TDataSource;
    ActionList1: TActionList;
    acLoadDSViTri: TAction;
    acInitFinalList: TAction;
    acChapnhan: TAction;
    acBoqua: TAction;
    acDMViTri: TAction;
    imglDeptTree: TImageList;
    qryExecute: TIBOQuery;
    qryLogData: TIBOQuery;
    qryKTSoQD: TIBOQuery;
    qryKTSoQDDECISION_NO: TWideStringField;
    gridThoiViec: TdxDBGrid;
    memViTriThoiViec: TdxMemData;
    dsViTriThoiViec: TDataSource;
    memViTriThoiViecASS_KEY_ID: TIntegerField;
    memViTriThoiViecEMPLOYEE_NO: TWideStringField;
    memViTriThoiViecFULL_NAME: TWideStringField;
    memViTriThoiViecDEPT_NAME: TWideStringField;
    memViTriThoiViecTITLE_NAME: TWideStringField;
    memViTriThoiViecASSIGNED_DATE: TDateField;
    memViTriThoiViecDISMISS_DATE: TDateField;
    gridThoiViecASS_KEY_ID: TdxDBGridColumn;
    gridThoiViecEMPLOYEE_NO: TdxDBGridColumn;
    gridThoiViecFULL_NAME: TdxDBGridColumn;
    gridThoiViecDEPT_NAME: TdxDBGridColumn;
    gridThoiViecTITLE_NAME: TdxDBGridColumn;
    gridThoiViecASSIGNED_DATE: TdxDBGridDateColumn;
    gridThoiViecDISMISS_DATE: TdxDBGridDateColumn;
    qryViTriCongTac: TIBOQuery;
    qryViTriCongTacASS_KEY_ID: TIntegerField;
    qryViTriCongTacEMPLOYEE_NO: TWideStringField;
    qryViTriCongTacFULL_NAME: TWideStringField;
    qryViTriCongTacDEPT_NO: TWideStringField;
    qryViTriCongTacDEPT_NAME: TWideStringField;
    qryViTriCongTacTITLE_NO: TWideStringField;
    qryViTriCongTacTITLE_NAME: TWideStringField;
    qryViTriCongTacASSIGNED_DATE: TDateField;
    qryKT_OFFWORK: TIBOQuery;
    qryKT_OFFWORKEMPLOYEE_NO: TWideStringField;
    procedure acLoadDSViTriExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxSelectDeptClick(Sender: TObject);
    procedure dxSelectDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectDeptInitPopup(Sender: TObject);
    procedure tlToChuc_NhanVienCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure acBoquaExecute(Sender: TObject);
    procedure InsertMessage(strLine:WideString;count:integer=0);
    procedure tlToChuc_NhanVienBeginDragNode(Sender: TObject;
      Node: TdxTreeListNode);
    procedure gridThoiViecDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure memToChuc_NhanVienBeforeDelete(DataSet: TDataSet);
    procedure acChapnhanExecute(Sender: TObject);
    procedure acChapnhanUpdate(Sender: TObject);
    procedure gridThoiViecBeginDragNode(Sender: TObject;
      Node: TdxTreeListNode);
    procedure tlToChuc_NhanVienDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure memViTriThoiViecBeforeDelete(DataSet: TDataSet);
    procedure tlToChuc_NhanVienDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure gridThoiViecDragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    { Private declarations }
    F_DEPT_NO, PHAN_LOAI,F_OLD_EMPLOYEE, F_NEW_EMPLOYEE,F_NEW_FULL_NAME : widestring;
  public
    { Public declarations }
  end;

var
  frmNghiViecTool: TfrmNghiViecTool;

implementation

uses PopupMainForm, FastOM_ToolForm, MainDM, SSP_Library, DateUtils;

{$R *.dfm}

procedure TfrmNghiViecTool.acLoadDSViTriExecute(Sender: TObject);
var
  i : Integer;
  AField : TField;

  function CanAssignTo(ASource, ADestination: TFieldType): Boolean;
  begin
    Result := ASource = ADestination;
    if not Result then
      Result := (ASource = ftAutoInc) and (ADestination = ftInteger);
  end;
begin
  inherited;
  if memToChuc_NhanVien.Active then memToChuc_NhanVien.Close;
  memToChuc_NhanVien.Open;
  if qryToChuc_NhanVien.Active then qryToChuc_NhanVien.Close;

  qryToChuc_NhanVien.ParamByName('DEN_NGAY').Value := dxDenNgay.Date;
  qryToChuc_NhanVien.ParamByName('USER_NAME').Value := sysConfig.User;
  if F_DEPT_NO = '' then
    qryToChuc_NhanVien.ParamByName('IN_DEPT_NO').Clear
  else
    qryToChuc_NhanVien.ParamByName('IN_DEPT_NO').Value := F_DEPT_NO ;
  if dxViewChild.Checked then
    qryToChuc_NhanVien.ParamByName('VIEW_CHILD').Value := 1
  else
    qryToChuc_NhanVien.ParamByName('VIEW_CHILD').Value := 0;

  qryToChuc_NhanVien.open;
  qryToChuc_NhanVien.DisableControls;
  if not qryToChuc_NhanVien.IsEmpty then
  begin
    //Locked by THUYPTP - 05/04/2009
    //Cai thien toc do load du lieu
    if (qryToChuc_NhanVien = nil) or (qryToChuc_NhanVien.FieldCount = 0) or not qryToChuc_NhanVien.Active then exit;
    qryToChuc_NhanVien.DisableControls;
    qryToChuc_NhanVien.First;
    memToChuc_NhanVien.DisableControls;
    memToChuc_NhanVien.Open;
    while not qryToChuc_NhanVien.EOF do
    begin
      if (not memViTriThoiViec.Locate('EMPLOYEE_NO',qryTochuc_NhanvienEMPLOYEE_NO.Value,[]))
        or (qryTochuc_NhanvienPHAN_LOAI.Value = 'Department') then
      begin
        memToChuc_NhanVien.Append;
        for i := 0 to qryToChuc_NhanVien.FieldCount - 1 do
        begin
          AField := memToChuc_NhanVien.FindField(qryToChuc_NhanVien.Fields[i].FieldName);
          if(AField <> nil) and CanAssignTo(qryToChuc_NhanVien.Fields[i].DataType, AField.DataType) then
          begin
              if (AField.DataType = ftLargeInt) and (qryToChuc_NhanVien.Fields[i].DataType = ftLargeInt) then
                TLargeintField(AField).AsLargeInt := TLargeintField(qryToChuc_NhanVien.Fields[i]).AsLargeInt
              else
                AField.Value := qryToChuc_NhanVien.Fields[i].Value;
          end;
        end;
        memToChuc_NhanVien.Post;
      end;                      
      qryToChuc_NhanVien.Next;
    end;
    qryToChuc_NhanVien.EnableControls;
    memToChuc_NhanVien.EnableControls;
  end;
  tlToChuc_NhanVien.FullCollapse;
end;

procedure TfrmNghiViecTool.FormCreate(Sender: TObject);
begin
  inherited;
  dxDenNgay.Date := Today;
  dxNgayQD.Date := Today;
  acLoadDSViTri.Execute;
  viewMessage.Lines.Insert(0,Utf8Decode('============ GHI NHẬN THAO TÁC THÔI VIỆC CNV ============'));
  viewMessage.Repaint;
  memViTriThoiViec.Open;  
end;

procedure TfrmNghiViecTool.dxSelectDeptClick(Sender: TObject);
begin
  inherited;
  if Length(dxSelectDept.Text) = 0 then
    F_DEPT_NO := '';
end;

procedure TfrmNghiViecTool.dxSelectDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryDeptListDEPT_NAME.Value;
    F_DEPT_NO := frmPopupMain.qryDeptListDEPT_NO.Value;
  end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmNghiViecTool.dxSelectDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmNghiViecTool.tlToChuc_NhanVienCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    if VarToStr(ANode.Values[tlToChuc_NhanVienPHAN_LOAI.Index]) = 'Department' then
      AFont.Style := AFont.Style + [fsBold]
    else
      AFont.Style := AFont.Style - [fsBold];

  except
  end
end;

procedure TfrmNghiViecTool.InsertMessage(strLine:WideString;count:integer);
begin
  viewMessage.Lines.Insert(1,Utf8Decode(strLine));
  viewMessage.Repaint;
end;

procedure TfrmNghiViecTool.acBoquaExecute(Sender: TObject);
begin
  inherited;
  close;
  if Assigned(frmFastOM_Tool) then
    frmFastOM_Tool.Close;
end;

procedure TfrmNghiViecTool.tlToChuc_NhanVienBeginDragNode(Sender: TObject;
  Node: TdxTreeListNode);
begin
  inherited;
  if memToChuc_NhanVienPHAN_LOAI.Value  = 'Employee' then
  begin
    F_OLD_EMPLOYEE := memToChuc_NhanVienEMPLOYEE_NO.Value;
    PHAN_LOAI := 'THEM';
    F_NEW_EMPLOYEE := '';
  end;
end;

procedure TfrmNghiViecTool.gridThoiViecDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
//
end;

procedure TfrmNghiViecTool.memToChuc_NhanVienBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TfrmNghiViecTool.acChapnhanExecute(Sender: TObject);
var
  decision_no,log_data : WideString; 
begin
  inherited;
  //Kiem tra chua nhap so QD ao
  if dxSoQD.Text = '' then
  begin
    //Thong bao chua co So QD ao
    if ShowMessageUnicode('Số QĐ ảo chưa được nhập.' + #10 + #13 +
      'Bạn có muốn tiếp tục thực hiện việc thôi việc không',3,'Thông báo') = mrYes then
    begin
      //Tiep tuc ma khong can so QD, de chuong trinh tu phat sinh
      memViTriThoiViec.DisableControls;
      memViTriThoiViec.First;
      while not memViTriThoiViec.Eof do
      begin
        // Them chi tiet vao HR_OFF_WORK
        IF qryKT_OFFWORK.Active then qryKT_OFFWORK.close;
        qryKT_OFFWORK.ParamByName('EMPLOYEE_NO').Value := memViTriThoiViecEMPLOYEE_NO.Value;
        qryKT_OFFWORK.ParamByName('OFF_DATE').Value := memViTriThoiViecDISMISS_DATE.Value;
        qryKT_OFFWORK.Open;

        if qryKT_OFFWORK.RecordCount =0 then
        begin
          qryExecute.SQL.Clear;
          qryExecute.SQL.Text := 'INSERT INTO HR_OFF_WORK (EMPLOYEE_NO, OFF_DATE) ' +
              'VALUES (:EMPLOYEE_NO, :OFF_DATE);';
          qryExecute.ParamByName('EMPLOYEE_NO').Value := memViTriThoiViecEMPLOYEE_NO.Value;
          qryExecute.ParamByName('OFF_DATE').Value := memViTriThoiViecDISMISS_DATE.Value;
          try
            qryExecute.ExecSQL;
            dmMain.CommitTransaction;
          except
            ShowMessageUnicode(113);
            dmMain.RollbackTransaction;
            ShowMessageUnicode(71);
            exit;
          end;
        end;

        //Ghi nhat ky du lieu vao SYS_LOG_DATA
        log_data := '* Thôi việc cho CNV: ' + UTF8Encode(memViTriThoiViecFULL_NAME.Value) +
        #13 + #10 + 'Ở vị trí công tác: ' + UTF8Encode(memViTriThoiViecTITLE_NAME.Value) + ' - ' + UTF8Encode(memViTriThoiViecDEPT_NAME.Value) +
        #13 + #10 + 'Ngày BĐ: ' + memViTriThoiViecASSIGNED_DATE.AsString +
        #13 + #10 + 'Ngày KT: ' + memViTriThoiViecDISMISS_DATE.AsString;

        qryLogData.ParamByName('CONNECTIONID').Value := sysConfig.IP_Addr;
        qryLogData.ParamByName('HOST_NAME').Value := sysConfig.Host_Name;
        qryLogData.ParamByName('TIME_ID').Value := Now ;
        if (sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') then
          qryLogData.ParamByName('USER_ID').Clear
        else
          qryLogData.ParamByName('USER_ID').Value := sysConfig.User;
        qryLogData.ParamByName('LOG_DATA').Value := UTF8Decode(log_data) ;
        try
          dmMain.ExecuteSQL(qryLogData);
        except
        end;

        memViTriThoiViec.Next; 
      end;
      dmMain.CommitTransaction;
      memViTriThoiViec.EnableControls;
      ShowMessageUnicode(39);
    end
    else
      ShowMessageUnicode(112);
  end
  //Da co So QD ao
  else
  begin
    //Kiem tra coi So QD ao nay da duoc lap QD that chua?
    if qryKTSoQD.Active then qryKTSoQD.Close;
    qryKTSoQD.ParamByName('DECISION_NO').Value := dxSoQD.Text;
    qryKTSoQD.Open;
    if qryKTSoQD.RecordCount > 0 then
    begin
      ShowMessageUnicode(100); 
      exit;
    end;

    memViTriThoiViec.DisableControls;
    memViTriThoiViec.First;
    while not memViTriThoiViec.Eof do
    begin
        // Them chi tiet vao HR_OFF_WORK
        IF qryKT_OFFWORK.Active then qryKT_OFFWORK.close;
        qryKT_OFFWORK.ParamByName('EMPLOYEE_NO').Value := memViTriThoiViecEMPLOYEE_NO.Value;
        qryKT_OFFWORK.ParamByName('OFF_DATE').Value := memViTriThoiViecDISMISS_DATE.Value;
        qryKT_OFFWORK.Open;

        if qryKT_OFFWORK.RecordCount =0 then
        begin
          qryExecute.SQL.Clear;
          qryExecute.SQL.Text := 'INSERT INTO HR_OFF_WORK (DECISION_NO,EMPLOYEE_NO, OFF_DATE) ' +
              'VALUES (:DECISION_NO,:EMPLOYEE_NO, :OFF_DATE);';
          qryExecute.ParamByName('EMPLOYEE_NO').Value := memViTriThoiViecEMPLOYEE_NO.Value;
          qryExecute.ParamByName('OFF_DATE').Value := memViTriThoiViecDISMISS_DATE.Value;
          qryExecute.ParamByName('DECISION_NO').Value := dxSoQD.Text;
          try
            qryExecute.ExecSQL;
            dmMain.CommitTransaction;
          except
            ShowMessageUnicode(113);
            dmMain.RollbackTransaction;
            ShowMessageUnicode(71);
            exit;
          end;
        end;

        //Ghi nhat ky du lieu vao SYS_LOG_DATA
        log_data := '* Thôi việc cho CNV: ' + UTF8Encode(memViTriThoiViecFULL_NAME.Value) +
        #13 + #10 + 'Ở vị trí công tác: ' + UTF8Encode(memViTriThoiViecTITLE_NAME.Value) + ' - ' + UTF8Encode(memViTriThoiViecDEPT_NAME.Value) +
        #13 + #10 + 'Ngày BĐ: ' + memViTriThoiViecASSIGNED_DATE.AsString +
        #13 + #10 + 'Ngày KT: ' + memViTriThoiViecDISMISS_DATE.AsString +
        #13 + #10 + 'Số QĐ: ' + dxSoQD.Text  ;

        qryLogData.ParamByName('CONNECTIONID').Value := sysConfig.IP_Addr;
        qryLogData.ParamByName('HOST_NAME').Value := sysConfig.Host_Name;
        qryLogData.ParamByName('TIME_ID').Value := Now ;
        if (sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') then
          qryLogData.ParamByName('USER_ID').Clear
        else
          qryLogData.ParamByName('USER_ID').Value := sysConfig.User;
        qryLogData.ParamByName('LOG_DATA').Value := UTF8Decode(log_data) ;
        try
          dmMain.ExecuteSQL(qryLogData);
        except
        end;

        memViTriThoiViec.Next;
    end;
    dmMain.CommitTransaction;
    memViTriThoiViec.EnableControls;
    ShowMessageUnicode(39);
  end;
  close;
  if Assigned(frmFastOM_Tool) then
    frmFastOM_Tool.Close;
end;

procedure TfrmNghiViecTool.acChapnhanUpdate(Sender: TObject);
begin
  inherited;
  acChapnhan.Enabled := (memViTriThoiViec.RecordCount > 0)
end;

procedure TfrmNghiViecTool.gridThoiViecBeginDragNode(Sender: TObject;
  Node: TdxTreeListNode);
begin
  inherited;
  F_NEW_EMPLOYEE := memViTriThoiViecEMPLOYEE_NO.Value;
  F_NEW_FULL_NAME := memViTriThoiViecFULL_NAME.Value;
  F_OLD_EMPLOYEE := '';
end;

procedure TfrmNghiViecTool.tlToChuc_NhanVienDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  bookmark : TBookmark;
begin
  inherited;
  InsertMessage('* Xóa bỏ quyết định thôi việc của CNV: ' + UTF8Encode(F_NEW_FULL_NAME) + ' *' +
        #13 + #10 + '----------------------------------------------------------------------');
        
  memViTriThoiViec.First;
  while not memViTriThoiViec.Eof do
  begin
    if memViTriThoiViecEMPLOYEE_NO.Value = F_NEW_EMPLOYEE then
    begin

      memViTriThoiViec.Delete;
      memViTriThoiViec.Prior;  
    end
    else
      memViTriThoiViec.Next;
  end; 

  bookmark := memToChuc_NhanVien.GetBookmark;
  acLoadDSViTri.Execute;
  memToChuc_NhanVien.GotoBookmark(bookmark );
  F_NEW_EMPLOYEE := ''; 
end;

procedure TfrmNghiViecTool.memViTriThoiViecBeforeDelete(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TfrmNghiViecTool.tlToChuc_NhanVienDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
//
end;

procedure TfrmNghiViecTool.gridThoiViecDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  inherited;
  if (PHAN_LOAI = 'THEM') and (F_OLD_EMPLOYEE <> '')  then
  begin
    if qryViTriCongTac.Active then qryViTriCongTac.Close;
    qryViTriCongTac.ParamByName('EMPLOYEE_NO').Value := F_OLD_EMPLOYEE;
    qryViTriCongTac.ParamByName('DEN_NGAY').Value := dxDenNgay.Date ;
    qryViTriCongTac.Open;

    qryViTriCongTac.First;
    while not qryViTriCongTac.Eof do
    begin
      memViTriThoiViec.Append;

      memViTriThoiViecASS_KEY_ID.Value := qryViTriCongTacASS_KEY_ID.Value;
      memViTriThoiViecEMPLOYEE_NO.Value := qryViTriCongTacEMPLOYEE_NO.Value;
      memViTriThoiViecFULL_NAME.Value := qryViTriCongTacFULL_NAME.Value;
      memViTriThoiViecDEPT_NAME.Value := qryViTriCongTacDEPT_NAME.Value;
      memViTriThoiViecTITLE_NAME.Value := qryViTriCongTacTITLE_NAME.Value;
      memViTriThoiViecASSIGNED_DATE.Value := qryViTriCongTacASSIGNED_DATE.Value;
      memViTriThoiViecDISMISS_DATE.Value := dxNgayQD.Date;

      memViTriThoiViec.Post;

      if memToChuc_NhanVien.Locate('ITEM_NO',qryViTriCongTacASS_KEY_ID.Value,[]) then
        memToChuc_NhanVien.Delete;      

      InsertMessage('* Thôi việc cho CNV: ' + UTF8Encode(qryViTriCongTacFULL_NAME.Value) + ' *' +
        #13 + #10 + 'Ở vị trí công tác: ' + UTF8Encode(qryViTriCongTacTITLE_NAME.Value) + ' - ' + UTF8Encode(qryViTriCongTacDEPT_NAME.Value) +
        #13 + #10 + '----------------------------------------------------------------------');

      qryViTriCongTac.Next;  
    end;


    F_OLD_EMPLOYEE := '';
    PHAN_LOAI := '';
  end;
end;

end.
