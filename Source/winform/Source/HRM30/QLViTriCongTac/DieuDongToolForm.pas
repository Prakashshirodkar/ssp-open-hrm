unit DieuDongToolForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, dxExEdtr, DB, ActnList, IBODataset, dxmdaset, dxCntner,
  dxEditor, dxEdLib, dxGrClms, dxDBGrid, ElPgCtl, dxDBCtrl, dxDBTLCl, dxTL,
  dxDBTL, dxLayoutControl, ElBtnCtl, ElPopBtn, ExtCtrls, cxControls,
  ElCaption, ElXPThemedControl, ElStatBar, ImgList, ElEdits, ElBtnEdit,
  ElMemoCombo, ElPanel, IB_Components;

type
  TfrmDieuDongTool = class(TfrmBase)
    ElStatusBar1: TElStatusBar;
    ElFormCaption1: TElFormCaption;
    dxLayoutControl1: TdxLayoutControl;
    panelMain: TPanel;
    treeFinal: TdxDBTreeList;
    treeFinalITEM_NAME: TdxDBTreeListColumn;
    treeFinalASSIGNED_DATE: TdxDBTreeListDateColumn;
    treeFinalENDED_DATE: TdxDBTreeListDateColumn;
    treeFinalIS_EMP: TdxDBTreeListColumn;
    treeFinalEMPLOYEE_NO: TdxDBTreeListMaskColumn;
    treeFinalDEPT_NO: TdxDBTreeListMaskColumn;
    treeFinalDEPT_NAME: TdxDBTreeListMaskColumn;
    treeFinalTITLE_NO: TdxDBTreeListMaskColumn;
    treeFinalTITLE_NAME: TdxDBTreeListMaskColumn;
    treeFinalPOSITION_NO: TdxDBTreeListMaskColumn;
    treeFinalOLD_DEPT_NO: TdxDBTreeListMaskColumn;
    treeFinalOLD_DEPT_NAME: TdxDBTreeListMaskColumn;
    treeFinalOLD_TITLE_NO: TdxDBTreeListMaskColumn;
    treeFinalOLD_TITLE_NAME: TdxDBTreeListMaskColumn;
    treeFinalOLD_POSITION_NO: TdxDBTreeListMaskColumn;
    treeFinalOLD_ASSIGNED_DATE: TdxDBTreeListDateColumn;
    treeFinalOLD_ENDED_DATE: TdxDBTreeListDateColumn;
    treeFinalITEM_NO: TdxDBTreeListMaskColumn;
    treeFinalP_ITEM_NO: TdxDBTreeListMaskColumn;
    pageOrigin: TElPageControl;
    tabDSBonhiem: TElTabSheet;
    ElPopupButton5: TElPopupButton;
    ElPopupButton8: TElPopupButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dsToChuc_NhanVien: TDataSource;
    memFinal: TdxMemData;
    memFinalITEM_NO: TWideStringField;
    memFinalP_ITEM_NO: TWideStringField;
    memFinalITEM_NAME: TWideStringField;
    memFinalIS_EMP: TIntegerField;
    memFinalEMPLOYEE_NO: TWideStringField;
    memFinalDEPT_NO: TWideStringField;
    memFinalDEPT_NAME: TWideStringField;
    memFinalTITLE_NO: TWideStringField;
    memFinalTITLE_NAME: TWideStringField;
    memFinalPOSITION_NO: TWideStringField;
    memFinalASSIGNED_DATE: TDateField;
    memFinalENDED_DATE: TDateField;
    memFinalOLD_DEPT_NO: TWideStringField;
    memFinalOLD_TITLE_NO: TWideStringField;
    memFinalOLD_POSITION_NO: TWideStringField;
    memFinalOLD_ASSIGNED_DATE: TDateField;
    dsFinal: TDataSource;
    qryDeptList: TIBOQuery;
    qryDeptListDEPT_NO: TWideStringField;
    qryDeptListP_DEPT_NO: TWideStringField;
    qryDeptListDEPT_NAME: TWideStringField;
    qryDeptListPOSITION_NO: TWideStringField;
    qryDeptListTITLE_NO: TWideStringField;
    qryDeptListTITLE_NAME: TWideStringField;
    ActionList1: TActionList;
    acLoadDSViTri: TAction;
    acInitFinalList: TAction;
    acChapnhan: TAction;
    acBoqua: TAction;
    qryTochuc_Nhanvien: TIBOQuery;
    qryExecute: TIBOQuery;
    Panel1: TPanel;
    dxSelectDept: TdxPopupEdit;
    dxViewChild: TdxCheckEdit;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxDenNgay: TdxDateEdit;
    btnXemThongTin: TElPopupButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Item4: TdxLayoutItem;
    qryTochuc_NhanvienITEM_NO: TWideStringField;
    qryTochuc_NhanvienITEM_NAME: TWideStringField;
    qryTochuc_NhanvienITEM_DISPLAY_INDEX: TIntegerField;
    qryTochuc_NhanvienPOSITION_NO: TWideStringField;
    qryTochuc_NhanvienDEPT_NO: TWideStringField;
    qryTochuc_NhanvienTITLE_NO: TWideStringField;
    qryTochuc_NhanvienTITLE_NAME: TWideStringField;
    qryTochuc_NhanvienASSIGNED_DATE: TDateField;
    qryTochuc_NhanvienP_ITEM_NO: TWideStringField;
    qryTochuc_NhanvienPHAN_LOAI: TWideStringField;
    qryTochuc_NhanvienICON_INDEX: TSmallintField;
    qryTochuc_NhanvienEMPLOYEE_NO: TWideStringField;
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
    memToChuc_NhanVien: TdxMemData;
    memToChuc_NhanVienITEM_NAME: TWideStringField;
    memToChuc_NhanVienASSIGNED_DATE: TDateField;
    memToChuc_NhanVienITEM_NO: TWideStringField;
    memToChuc_NhanVienITEM_DISPLAY_INDEX: TSmallintField;
    memToChuc_NhanVienPOSITION_NO: TWideStringField;
    memToChuc_NhanVienDEPT_NO: TWideStringField;
    memToChuc_NhanVienTITLE_NO: TWideStringField;
    memToChuc_NhanVienTITLE_NAME: TWideStringField;
    memToChuc_NhanVienP_ITEM_NO: TWideStringField;
    memToChuc_NhanVienPHAN_LOAI: TWideStringField;
    memToChuc_NhanVienICON_INDEX: TSmallintField;
    memToChuc_NhanVienEMPLOYEE_NO: TWideStringField;
    imglDeptTree: TImageList;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    acDMViTri: TAction;
    ElPanel1: TElPanel;
    viewMessage: TElMemoCombo;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl3Item1: TdxLayoutItem;
    dxLayoutControl2Group3: TdxLayoutGroup;
    dxLayoutControl2Group4: TdxLayoutGroup;
    qryTochuc_NhanvienDEPT_NAME: TWideStringField;
    memToChuc_NhanVienDEPT_NAME: TWideStringField;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxNgayQD: TdxDateEdit;
    dxSoQD: TdxEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    memFinalOLD_ITEM_NO: TIntegerField;
    treeFinalOLD_ITEM_NO: TdxDBTreeListMaskColumn;
    qryLogData: TIBOQuery;
    memFinalOLD_TITLE_NAME: TWideStringField;
    memFinalOLD_DEPT_NAME: TWideStringField;
    qryKTSoQD: TIBOQuery;
    qryKTSoQDDECISION_NO: TWideStringField;
    memFinalIS_MAIN_POSITION: TSmallintField;
    treeFinalIS_MAIN_POSITION: TdxDBTreeListCheckColumn;
    acLamMoiDSViTriDieuDong: TAction;
    procedure acInitFinalListExecute(Sender: TObject);
    procedure treeFinalCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure acLoadDSViTriExecute(Sender: TObject);
    procedure dxSelectDeptChange(Sender: TObject);
    procedure dxSelectDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectDeptInitPopup(Sender: TObject);
    procedure tlToChuc_NhanVienCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure acDMViTriExecute(Sender: TObject);
    procedure tlToChuc_NhanVienBeginDragNode(Sender: TObject;
      Node: TdxTreeListNode);
    procedure treeFinalDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure InsertMessage(strLine:WideString;count:integer=0);
    procedure treeFinalDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure memToChuc_NhanVienBeforeDelete(DataSet: TDataSet);
    procedure treeFinalBeginDragNode(Sender: TObject;
      Node: TdxTreeListNode);
    procedure treeFinalEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure memFinalBeforePost(DataSet: TDataSet);
    procedure acChapnhanExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acBoquaExecute(Sender: TObject);
    procedure tlToChuc_NhanVienDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure tlToChuc_NhanVienDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure memFinalBeforeDelete(DataSet: TDataSet);
    procedure acLamMoiDSViTriDieuDongExecute(Sender: TObject);
  private
    { Private declarations }
    F_CUR_ITEM_NO,F_CUR_DEPT_NO,F_CUR_DEPT_NAME, F_CUR_TITLE_NO,F_CUR_TITLE_NAME,F_CUR_POSITION_NO:WideString;
    F_Size:integer;
    F_DEPT_NO, PHAN_LOAI : widestring;
    F_OLD_ITEM_NO,F_OLD_EMPLOYEE, F_OLD_DEPT_NO, F_OLD_TITLE_NO, F_OLD_TITLE_NAME,F_OLD_POSITION_NO, F_OLD_DEPT_NAME, F_OLD_FULL_NAME : Widestring;
    F_OLD_ASSIGNED_DATE : TDate;
  public
    { Public declarations }
  end;

var
  frmDieuDongTool: TfrmDieuDongTool;

implementation

uses MainDM,  SSP_Library, DateUtils, PopupMainForm, PositionListForm, FastOM_ToolForm;

{$R *.dfm}

procedure TfrmDieuDongTool.acInitFinalListExecute(Sender: TObject);
begin
  inherited;
  inherited;
  memFinal.DisableControls;
  if memFinal.Active then memFinal.Close;
  qryDeptList.Open;
  if not qryDeptList.IsEmpty then
  begin
    memFinal.Open;
    qryDeptList.First;
    while not qryDeptList.Eof do
    begin
      if F_CUR_DEPT_NO<>qryDeptListDEPT_NO.Value then
      begin
        memFinal.Append;
        memFinalITEM_NO.Value:='D_'+qryDeptListDEPT_NO.Value;
        if not qryDeptListP_DEPT_NO.IsNull then
          memFinalP_ITEM_NO.Value:='D_'+qryDeptListP_DEPT_NO.Value;
        memFinalITEM_NAME.Value:=qryDeptListDEPT_NAME.Value;
        memFinalDEPT_NO.Value:=qryDeptListDEPT_NO.Value;
        memFinalDEPT_NAME.Value:=qryDeptListDEPT_NAME.Value;
        memFinalIS_EMP.Value:=3;
        memFinal.Post;
        F_CUR_DEPT_NO:=qryDeptListDEPT_NO.Value;
        F_CUR_TITLE_NO:='';
      end;
      if (not qryDeptListTITLE_NO.IsNull) and
         (F_CUR_TITLE_NO<>qryDeptListTITLE_NO.Value) then
      begin
        memFinal.Append;
        memFinalITEM_NO.Value:='D_'+qryDeptListDEPT_NO.Value+'_T_'+qryDeptListTITLE_NO.Value;
        memFinalP_ITEM_NO.Value:='D_'+qryDeptListDEPT_NO.Value;
        memFinalITEM_NAME.Value:=qryDeptListTITLE_NAME.Value;
        memFinalDEPT_NO.Value:=qryDeptListDEPT_NO.Value;
        memFinalDEPT_NAME.Value:=qryDeptListDEPT_NAME.Value;
        memFinalTITLE_NO.Value:=qryDeptListTITLE_NO.Value;
        memFinalTITLE_NAME.Value:=qryDeptListTITLE_NAME.Value;
        memFinalPOSITION_NO.Value:=qryDeptListPOSITION_NO.Value;
        memFinalIS_EMP.Value:=2;
        memFinal.Post;
        F_CUR_TITLE_NO:=qryDeptListTITLE_NO.Value
      end;
      qryDeptList.Next;
    end;
  end;
  qryDeptList.Close;
  memFinal.EnableControls;
  F_Size:=memFinal.RecordCount;
  treeFinal.FullCollapse;  
end;

procedure TfrmDieuDongTool.treeFinalCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if ANode.Values[treeFinalIS_EMP.Index]=3 then
  begin
    AFont.Style:=AFont.Style+[fsBold,fsUnderline];
    AFont.Color:=clBlue;
  end
  else
  if ANode.Values[treeFinalIS_EMP.Index]=2 then
  begin
    AFont.Style:=AFont.Style+[fsItalic];
    AFont.Color:=clRed;
  end
end;

procedure TfrmDieuDongTool.FormCreate(Sender: TObject);
begin
  inherited;
  dxDenNgay.Date := Today;
  dxNgayQD.Date := Today;
  acInitFinalList.Execute;
  acLoadDSViTri.Execute;
  viewMessage.Lines.Insert(0,Utf8Decode('============ GHI NHẬN THAO TÁC ĐIỀU ĐỘNG CNV ============'));
  viewMessage.Repaint;
end;

procedure TfrmDieuDongTool.acLoadDSViTriExecute(Sender: TObject);
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
      if (not memFinal.Locate('EMPLOYEE_NO',qryTochuc_NhanvienEMPLOYEE_NO.Value,[]))
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

  //edit by THUYPTP - 24/4/2009 - bug 1252
end;

procedure TfrmDieuDongTool.dxSelectDeptChange(Sender: TObject);
begin
  inherited;
  if Length(dxSelectDept.Text) = 0 then
    F_DEPT_NO := '';
end;

procedure TfrmDieuDongTool.dxSelectDeptCloseUp(Sender: TObject;
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

procedure TfrmDieuDongTool.dxSelectDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmDieuDongTool.tlToChuc_NhanVienCustomDrawCell(Sender: TObject;
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

procedure TfrmDieuDongTool.acDMViTriExecute(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmPositionList,frmPositionList);
  acLamMoiDSViTriDieuDong.Execute;
end;

procedure TfrmDieuDongTool.tlToChuc_NhanVienBeginDragNode(Sender: TObject;
  Node: TdxTreeListNode);
begin
  inherited;
  if memToChuc_NhanVienPHAN_LOAI.Value  = 'Employee' then
  begin
    F_OLD_ITEM_NO :=memToChuc_NhanVienITEM_NO.Value;
    F_OLD_EMPLOYEE := memToChuc_NhanVienEMPLOYEE_NO.Value;
    F_OLD_FULL_NAME := memToChuc_NhanVienITEM_NAME.Value;
    F_OLD_DEPT_NO := memToChuc_NhanVienDEPT_NO.Value;
    F_OLD_DEPT_NAME := memToChuc_NhanVienDEPT_NAME.Value;
    F_OLD_TITLE_NO := memToChuc_NhanVienTITLE_NO.Value;
    F_OLD_TITLE_NAME := memToChuc_NhanVienTITLE_NAME.Value;
    F_OLD_POSITION_NO := memToChuc_NhanVienPOSITION_NO.Value;
    F_OLD_ASSIGNED_DATE := memToChuc_NhanVienASSIGNED_DATE.Value;
    PHAN_LOAI := 'THEM';
  end;
end;

procedure TfrmDieuDongTool.treeFinalDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := true;
  if treeFinal.GetNodeAt(X, Y) = nil then
    Accept := false;
  if Accept = true then
  begin
    if  treeFinal.getNodeAt(X,Y).Values[treeFinalIS_EMP.index] = 1 then
      F_CUR_ITEM_NO := VarToWideStr(treeFinal.getNodeAt(X,Y).Values[treeFinalP_ITEM_NO.index])
    else
      F_CUR_ITEM_NO := VarToWideStr(treeFinal.getNodeAt(X,Y).Values[treeFinalITEM_NO.index]);
    F_CUR_DEPT_NO := VarToWideStr(treeFinal.getNodeAt(X,Y).Values[treeFinalDEPT_NO.index]);
    F_CUR_DEPT_NAME := VarToWideStr(treeFinal.getNodeAt(X,Y).Values[treeFinalDEPT_NAME.index]);
    F_CUR_TITLE_NO := VarToWideStr(treeFinal.getNodeAt(X,Y).Values[treeFinalTITLE_NO.index]);
    F_CUR_TITLE_NAME := VarToWideStr(treeFinal.getNodeAt(X,Y).Values[treeFinalTITLE_NAME.index]);
    F_CUR_POSITION_NO := VarToWideStr(treeFinal.getNodeAt(X,Y).Values[treeFinalPOSITION_NO.index]);
  end
end;

procedure TfrmDieuDongTool.InsertMessage(strLine:WideString;count:integer);
begin
  viewMessage.Lines.Insert(1,Utf8Decode(strLine));
  viewMessage.Repaint;
end;

procedure TfrmDieuDongTool.treeFinalDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  inherited;
  if (PHAN_LOAI = 'THEM') and (F_OLD_EMPLOYEE <> '')  and (F_CUR_POSITION_NO <> '') then
  begin
   InsertMessage('* Điều động NV: ' + UTF8Encode(F_OLD_FULL_NAME) + ' (' + UTF8Encode(F_OLD_EMPLOYEE) + ') *' +
        #13 + #10 + 'Từ vị trí cũ: ' + UTF8Encode(F_OLD_TITLE_NAME) + ' - ' + UTF8Encode(F_OLD_DEPT_NAME) +
        #13 + #10 + 'Sang vị trí mới: ' + UTF8Encode(F_CUR_TITLE_NAME) + ' - ' + UTF8Encode(F_CUR_DEPT_NAME) +
        #13 + #10 + '----------------------------------------------------------------------');

    memFinal.Append;

    memFinalITEM_NO.Value:='E_'+ F_OLD_EMPLOYEE ;
    memFinalITEM_NAME.Value:= F_OLD_FULL_NAME ;
    memFinalP_ITEM_NO.Value:= F_CUR_ITEM_NO;
    memFinalIS_EMP.Value:=1;
    memFinal.FieldByname('EMPLOYEE_NO').Value:= F_OLD_EMPLOYEE ;
    memFinalDEPT_NO.Value:= F_CUR_DEPT_NO;
    memFinalTITLE_NO.Value:= F_CUR_TITLE_NO;
    memFinalDEPT_NAME.Value:= F_CUR_DEPT_NAME;
    memFinalTITLE_NAME.Value:= F_CUR_TITLE_NAME;
    memFinalPOSITION_NO.Value:= F_CUR_POSITION_NO;
    memFinalIS_MAIN_POSITION.Value:= 1;
    memFinalASSIGNED_DATE.Value:= dxNgayQD.Date  ;

    memFinal.FieldByname('OLD_DEPT_NO').Value:= F_OLD_DEPT_NO ;
    memFinal.FieldByname('OLD_DEPT_NAME').Value:= F_OLD_DEPT_NAME ;
    memFinal.FieldByname('OLD_TITLE_NO').Value:= F_OLD_TITLE_NO ;
    memFinal.FieldByname('OLD_TITLE_NAME').Value:= F_OLD_TITLE_NAME  ;
    memFinal.FieldByname('OLD_POSITION_NO').Value:= F_OLD_POSITION_NO ;
    memFinal.FieldByname('OLD_ASSIGNED_DATE').Value:= F_OLD_ASSIGNED_DATE;
    memFinal.FieldByname('OLD_ITEM_NO').Value:= StrToInt(F_OLD_ITEM_NO);
    memFinal.Post;

    if memToChuc_NhanVien.Locate('ITEM_NO',F_OLD_ITEM_NO,[]) then
        memToChuc_NhanVien.Delete;

    F_OLD_EMPLOYEE := '';
    F_OLD_DEPT_NO := '';
    F_OLD_TITLE_NO := '';
    F_OLD_POSITION_NO := '';
    F_CUR_ITEM_NO := '';
    F_CUR_DEPT_NO := '';
    F_CUR_DEPT_NAME := '';
    F_CUR_TITLE_NO := '';
    F_CUR_TITLE_NAME := '';
    F_CUR_POSITION_NO := '';
    PHAN_LOAI := '';
  end;
end;

procedure TfrmDieuDongTool.memToChuc_NhanVienBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TfrmDieuDongTool.treeFinalBeginDragNode(Sender: TObject;
  Node: TdxTreeListNode);
begin
  inherited;
  if memFinalIS_EMP.Value  = 1 then
  begin
    F_OLD_ITEM_NO :=memFinalITEM_NO.Value;
    F_OLD_EMPLOYEE := memFinalEMPLOYEE_NO.Value;
    F_OLD_FULL_NAME := memFinalITEM_NAME.Value;
    F_OLD_DEPT_NO := memFinalDEPT_NO.Value;
    F_OLD_DEPT_NAME := memFinalDEPT_NAME.Value;
    F_OLD_TITLE_NO := memFinalTITLE_NO.Value;
    F_OLD_TITLE_NAME := memFinalTITLE_NAME.Value;
    F_OLD_POSITION_NO := memFinalPOSITION_NO.Value;
    F_OLD_ASSIGNED_DATE := memFinalASSIGNED_DATE.Value;
    PHAN_LOAI := 'SUA';
  end;
end;

procedure TfrmDieuDongTool.treeFinalEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  inherited;
  if (PHAN_LOAI = 'SUA') and(F_OLD_EMPLOYEE <> '')  and (F_CUR_POSITION_NO <> '') then
  begin
    InsertMessage('* Thay đổi vị trí cần điều động của NV: ' + UTF8Encode(F_OLD_FULL_NAME) + ' (' + UTF8Encode(F_OLD_EMPLOYEE) + ') *' +
        #13 + #10 + 'Từ vị trí cũ: ' + UTF8Encode(F_OLD_TITLE_NAME) + ' - ' + UTF8Encode(F_OLD_DEPT_NAME) +
        #13 + #10 + 'Sang vị trí mới: ' + UTF8Encode(F_CUR_TITLE_NAME) + ' - ' + UTF8Encode(F_CUR_DEPT_NAME) +
        #13 + #10 + '----------------------------------------------------------------------');

    memFinal.Edit;

    memFinalP_ITEM_NO.Value:= F_CUR_ITEM_NO;
    memFinalDEPT_NO.Value:= F_CUR_DEPT_NO;
    memFinalTITLE_NO.Value:= F_CUR_TITLE_NO;
    memFinalDEPT_NAME.Value:= F_CUR_DEPT_NAME;
    memFinalTITLE_NAME.Value:= F_CUR_TITLE_NAME;
    memFinalPOSITION_NO.Value:= F_CUR_POSITION_NO;
    memFinalIS_MAIN_POSITION.Value:= 1;


    memFinal.Post;
    F_OLD_EMPLOYEE := '';
    F_OLD_DEPT_NO := '';
    F_OLD_TITLE_NO := '';
    F_OLD_POSITION_NO := '';
    F_CUR_ITEM_NO := '';
    F_CUR_DEPT_NO := '';
    F_CUR_DEPT_NAME := '';
    F_CUR_TITLE_NO := '';
    F_CUR_TITLE_NAME := '';
    F_CUR_POSITION_NO := '';
    PHAN_LOAI := '';
  end;

end;

procedure TfrmDieuDongTool.memFinalBeforePost(DataSet: TDataSet);
begin
  inherited;
  if memFinalASSIGNED_DATE.Value < memFinalOLD_ASSIGNED_DATE.Value  then
  begin
    ShowMessageUnicode('Vị trí mới phải có ngày bắt đầu >= ngày BĐ vị trí cũ (' + memFinalOLD_ASSIGNED_DATE.AsString + ')');
    abort;
    exit;    
  end
end;

procedure TfrmDieuDongTool.acChapnhanExecute(Sender: TObject);
var
  log_data : widestring;
begin
  inherited;
  if memFinal.State in [dsEdit, dsInsert] then
    memFinal.Post;   
  //Kiem tra chua nhap so QD ao
  if dxSoQD.Text = '' then
  begin
    //Thong bao chua co So QD ao
    if ShowMessageUnicode('Số QĐ ảo chưa được nhập.' + #10 + #13 +
      'Bạn có muốn tiếp tục điều động NV không?',3,'Thông báo') = mrYes then
    begin
      //Tiep tuc ma khong can so QD, de chuong trinh tu phat sinh
      memFinal.DisableControls;
      memFinal.First;
      while not memFinal.Eof do
      begin
        if memFinalIS_EMP.Value=1 then
        begin
          //cap nhat ngay nghi o vi tri cu
          qryExecute.SQL.Clear;
          qryExecute.SQL.Text := 'update hr_assignment set dismiss_date = :DIMISS_DATE where ass_key_id = :ASS_KEY_ID';
          if memFinalASSIGNED_DATE.Value = F_OLD_ASSIGNED_DATE then
            qryExecute.ParamByName('DIMISS_DATE').Value := memFinalASSIGNED_DATE.Value
          else
            qryExecute.ParamByName('DIMISS_DATE').Value := memFinalASSIGNED_DATE.Value -1;
          qryExecute.ParamByName('ASS_KEY_ID').Value := memFinalOLD_ITEM_NO.Value;
          try
            qryExecute.ExecSQL;
          except
          end;

          //Them dong vi tri moi vao hr_assigment
          qryExecute.SQL.Clear;
          qryExecute.SQL.Text := 'INSERT INTO HR_ASSIGNMENT (EMPLOYEE_NO, ASSIGNED_DATE, POSITION_NO, ENDED_DATE, FROM_ASS_KEY_ID, IS_MAIN_POSITION) ' +
            'VALUES (:EMPLOYEE_NO, :ASSIGNED_DATE, :POSITION_NO, :ENDED_DATE, :FROM_ASS_KEY_ID, :IS_MAIN_POSITION);';
          qryExecute.ParamByName('EMPLOYEE_NO').Value := memFinalEMPLOYEE_NO.Value;
          qryExecute.ParamByName('ASSIGNED_DATE').Value := memFinalASSIGNED_DATE.Value;
          qryExecute.ParamByName('POSITION_NO').Value := memFinalPOSITION_NO.Value;
          if memFinalENDED_DATE.IsNull then
            qryExecute.ParamByName('ENDED_DATE').Clear
          else
            qryExecute.ParamByName('ENDED_DATE').Value := memFinalENDED_DATE.Value;
          qryExecute.ParamByName('FROM_ASS_KEY_ID').Value := memFinalOLD_ITEM_NO.Value;
          qryExecute.ParamByName('IS_MAIN_POSITION').Value := memFinalIS_MAIN_POSITION.Value;
          try
            qryExecute.ExecSQL;
            dmMain.CommitTransaction;
          except
            ShowMessageUnicode(111);
            dmMain.RollbackTransaction;
            ShowMessageUnicode(71);
            exit;
          end;

          //Ghi nhat ky du lieu vao SYS_LOG_DATA
          log_data := '* Điều động NV: ' + UTF8Encode(memFinalITEM_NAME.Value) + ' (' + UTF8Encode(memFinalEMPLOYEE_NO.Value) + ')' +
          #13 + #10 + 'Từ vị trí cũ: ' + UTF8Encode(memFinalOLD_TITLE_NAME.Value)  + ' - ' + UTF8Encode(memFinalOLD_DEPT_NAME.Value)   +
          #13 + #10 + 'Sang vị trí mới: ' + UTF8Encode(memFinalTITLE_NAME.Value)  + ' - ' + UTF8Encode(memFinalDEPT_NAME.Value) +
          #13 + #10 + 'Kể từ ngày: ' + memFinalASSIGNED_DATE.AsString;

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
        end;
        memFinal.Next;
      end;
      dmMain.CommitTransaction;
      memFinal.EnableControls;
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
      memFinal.DisableControls;
      memFinal.First;
      while not memFinal.Eof do
      begin
        if memFinalIS_EMP.Value=1 then
        begin
          //cap nhat ngay nghi o vi tri cu
          qryExecute.SQL.Clear;
          qryExecute.SQL.Text := 'update hr_assignment set dismiss_date = :DIMISS_DATE where ass_key_id = :ASS_KEY_ID';
          if memFinalASSIGNED_DATE.Value = F_OLD_ASSIGNED_DATE then
            qryExecute.ParamByName('DIMISS_DATE').Value := memFinalASSIGNED_DATE.Value
          else
            qryExecute.ParamByName('DIMISS_DATE').Value := memFinalASSIGNED_DATE.Value -1;
          qryExecute.ParamByName('ASS_KEY_ID').Value := memFinalOLD_ITEM_NO.Value;
          try
            dmMain.ExecuteSQL(qryExecute);
          except
          end;

          //Them dong vi tri moi vao hr_assigment
          qryExecute.SQL.Clear;
          qryExecute.SQL.Text := 'INSERT INTO HR_ASSIGNMENT (EMPLOYEE_NO, ASSIGNED_DATE, POSITION_NO, ENDED_DATE, FROM_ASS_KEY_ID, DECISION_NO, IS_MAIN_POSITION)' +
            'VALUES (:EMPLOYEE_NO, :ASSIGNED_DATE, :POSITION_NO, :ENDED_DATE, :FROM_ASS_KEY_ID, :DECISION_NO, :IS_MAIN_POSITION);';
          qryExecute.ParamByName('EMPLOYEE_NO').Value := memFinalEMPLOYEE_NO.Value;
          qryExecute.ParamByName('ASSIGNED_DATE').Value := memFinalASSIGNED_DATE.Value;
          qryExecute.ParamByName('POSITION_NO').Value := memFinalPOSITION_NO.Value;
          if memFinalENDED_DATE.IsNull then
            qryExecute.ParamByName('ENDED_DATE').Clear
          else
            qryExecute.ParamByName('ENDED_DATE').Value := memFinalENDED_DATE.Value;
          qryExecute.ParamByName('FROM_ASS_KEY_ID').Value := memFinalOLD_ITEM_NO.Value;
          qryExecute.ParamByName('DECISION_NO').Value := dxSoQD.Text ;
          qryExecute.ParamByName('IS_MAIN_POSITION').Value := memFinalIS_MAIN_POSITION.Value;
          try
            qryExecute.ExecSQL;
            dmMain.CommitTransaction;
          except
            ShowMessageUnicode(111);
            dmMain.RollbackTransaction;
            ShowMessageUnicode(71);
            exit;
          end;

          //Ghi nhat ky du lieu vao SYS_LOG_DATA
          log_data := '* Điều động NV: ' + UTF8Encode(memFinalITEM_NAME.Value) + ' (' + UTF8Encode(memFinalEMPLOYEE_NO.Value) + ')' +
          #13 + #10 + 'Từ vị trí cũ: ' + UTF8Encode(memFinalOLD_TITLE_NAME.Value)  + ' - ' + UTF8Encode(memFinalOLD_DEPT_NAME.Value)   +
          #13 + #10 + 'Sang vị trí mới: ' + UTF8Encode(memFinalTITLE_NAME.Value)  + ' - ' + UTF8Encode(memFinalDEPT_NAME.Value) +
          #13 + #10 + 'Kể từ ngày: ' + memFinalASSIGNED_DATE.AsString;

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
        end;
        memFinal.Next;
      end;
      dmMain.CommitTransaction;
      memFinal.EnableControls;
      ShowMessageUnicode(39);
  end;
  close;
  if Assigned(frmFastOM_Tool) then
    frmFastOM_Tool.Close;
end;

procedure TfrmDieuDongTool.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryDeptList.Close;
  qryTochuc_Nhanvien.Close;  
  memFinal.Close;
  memToChuc_NhanVien.Close;
end;

procedure TfrmDieuDongTool.acBoquaExecute(Sender: TObject);
begin
  inherited;
  close;
  if Assigned(frmFastOM_Tool) then
    frmFastOM_Tool.Close;   
end;

procedure TfrmDieuDongTool.tlToChuc_NhanVienDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
//
end;

procedure TfrmDieuDongTool.tlToChuc_NhanVienDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  bookmark : TBookmark;
begin
  inherited;
  memFinal.First;
  while not memFinal.Eof do
  begin
    if memFinalITEM_NO.Value = F_OLD_ITEM_NO then
    begin
      InsertMessage('*  Xóa bỏ việc điều động CNV: ' + UTF8Encode(memFinalITEM_NAME.Value) + ' (' + UTF8Encode(memFinalEMPLOYEE_NO.Value) + ') *' +
        #13 + #10 + 'Vị trí điều động: ' + UTF8Encode(memFinalTITLE_NAME.Value) + ' - ' + UTF8Encode(memFinalDEPT_NAME.Value) +
        #13 + #10 + '----------------------------------------------------------------------');

      memFinal.Delete;
      memFinal.Prior;
    end
    else
      memFinal.Next;
  end;

  bookmark := memToChuc_NhanVien.GetBookmark;
  acLoadDSViTri.Execute;
  memToChuc_NhanVien.GotoBookmark(bookmark );
  F_OLD_ITEM_NO := '';
  F_OLD_EMPLOYEE := '';
  treeFinal.FullCollapse;    
end;

procedure TfrmDieuDongTool.memFinalBeforeDelete(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TfrmDieuDongTool.acLamMoiDSViTriDieuDongExecute(Sender: TObject);
begin
  inherited;
  //Lam moi lai danh sach vi tri dieu dong moi
  qryDeptList.Open;
  if not qryDeptList.IsEmpty then
  begin
    qryDeptList.First;
    while not qryDeptList.Eof do
    begin
      if not (memFinal.Locate('ITEM_NO','D_' + qryDeptListDEPT_NO.Value,[])) then
      begin
        memFinal.Append;
        memFinalITEM_NO.Value:='D_'+qryDeptListDEPT_NO.Value;
        if not qryDeptListP_DEPT_NO.IsNull then
          memFinalP_ITEM_NO.Value:='D_'+qryDeptListP_DEPT_NO.Value;
        memFinalITEM_NAME.Value:=qryDeptListDEPT_NAME.Value;
        memFinalDEPT_NO.Value:=qryDeptListDEPT_NO.Value;
        memFinalDEPT_NAME.Value:=qryDeptListDEPT_NAME.Value;
        memFinalIS_EMP.Value:=3;
        memFinal.Post;
        F_CUR_DEPT_NO:=qryDeptListDEPT_NO.Value;
        F_CUR_TITLE_NO:='';
      end;
      if (not qryDeptListTITLE_NO.IsNull) and
         (not (memFinal.Locate('ITEM_NO','D_' + qryDeptListDEPT_NO.Value +'_T_'+qryDeptListTITLE_NO.Value,[]))) then
      begin
        memFinal.Append;
        memFinalITEM_NO.Value:='D_'+qryDeptListDEPT_NO.Value+'_T_'+qryDeptListTITLE_NO.Value;
        memFinalP_ITEM_NO.Value:='D_'+qryDeptListDEPT_NO.Value;
        memFinalITEM_NAME.Value:=qryDeptListTITLE_NAME.Value;
        memFinalDEPT_NO.Value:=qryDeptListDEPT_NO.Value;
        memFinalDEPT_NAME.Value:=qryDeptListDEPT_NAME.Value;
        memFinalTITLE_NO.Value:=qryDeptListTITLE_NO.Value;
        memFinalTITLE_NAME.Value:=qryDeptListTITLE_NAME.Value;
        memFinalPOSITION_NO.Value:=qryDeptListPOSITION_NO.Value;
        memFinalIS_EMP.Value:=2;
        memFinal.Post;
        F_CUR_TITLE_NO:=qryDeptListTITLE_NO.Value
      end;
      qryDeptList.Next;
    end;
  end;
  qryDeptList.Close;
  treeFinal.FullCollapse;
end;

end.


