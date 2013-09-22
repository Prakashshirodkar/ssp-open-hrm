unit WorkTimeCheckForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, ActnList, ElBtnCtl, ElPopBtn, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms, DB, IBODataset, dxGrClEx, ToolbarFrame, IB_Components;

type
  TfrmWorkTimeCheck = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    deToDate: TdxDateEdit;
    deFromDate: TdxDateEdit;
    pbCheck: TElPopupButton;
    ActionList1: TActionList;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    acCheck: TAction;
    gridErrorList: TdxDBGrid;
    dxLayoutControl1Item4: TdxLayoutItem;
    ceAutoUpdate: TdxCheckEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    peMaPhongBan: TdxPopupEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dsErrorList: TDataSource;
    qryErrorList: TIBOQuery;
    gridErrorListEMPLOYEE_NO: TdxDBGridMaskColumn;
    gridErrorListWORK_DATE: TdxDBGridDateColumn;
    gridErrorListSTART_TIME: TdxDBGridTimeColumn;
    gridErrorListSTART_TIME_CHANGE: TdxDBGridTimeColumn;
    gridErrorListEND_TIME: TdxDBGridTimeColumn;
    gridErrorListMAIN_END_TIME: TdxDBGridTimeColumn;
    gridErrorListFULL_NAME: TdxDBGridMaskColumn;
    gridErrorListIF_FIX: TdxDBGridImageColumn;
    gridErrorListEND_DATE: TdxDBGridImageColumn;
    gridErrorListMAIN_END_DATE: TdxDBGridImageColumn;
    qryExecuteStore: TIBOQuery;
    gridErrorListWHT_NAME: TdxDBGridPopupColumn;
    gridErrorListTOTAL_TIME: TdxDBGridMaskColumn;
    gridErrorListMAIN_TOTAL_TIME: TdxDBGridMaskColumn;
    dxLayoutControl1Item5: TdxLayoutItem;
    frameToolbar1: TframeToolbar;
    gridErrorListWTES_NAME: TdxDBGridMaskColumn;
    pbCapNhat: TElPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    acCapNhat: TAction;
    qryUpdateDatabase: TIBOQuery;
    peLoaiGioCong: TdxPopupEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    qrySynWorkingTime: TIBOQuery;
    tranSynWorkingTime: TIBOTransaction;
    acInitWorkingTimeCheck: TAction;
    dxLayoutControl1Item10: TdxLayoutItem;
    imgeLoaiKiemTra: TdxImageEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    pbQuayLui: TElPopupButton;
    qryErrorListKEY_FIELD: TWideStringField;
    qryErrorListEMPLOYEE_NO: TWideStringField;
    qryErrorListWORK_DATE: TDateField;
    qryErrorListSTART_TIME: TTimeField;
    qryErrorListSTART_TIME_CHANGE: TTimeField;
    qryErrorListEND_TIME: TTimeField;
    qryErrorListEND_DATE: TIntegerField;
    qryErrorListWHT_NO: TWideStringField;
    qryErrorListIF_FIX: TSmallintField;
    qryErrorListTOTAL_TIME: TIBOFloatField;
    qryErrorListWTES_NO: TIntegerField;
    qryErrorListWTES_NAME: TWideStringField;
    qryErrorListMAIN_WHT_NAME: TWideStringField;
    qryErrorListMAIN_WHT_COLOR: TIntegerField;
    qryErrorListWHT_NAME: TWideStringField;
    qryErrorListWHT_COLOR: TIntegerField;
    qryErrorListFULL_NAME: TWideStringField;
    qryErrorListMAIN_END_TIME: TTimeField;
    qryErrorListMAIN_END_DATE: TIntegerField;
    qryErrorListMAIN_WHT_NO: TWideStringField;
    qryErrorListMAIN_TOTAL_TIME: TIBOFloatField;
    gridErrorListMAIN_WHT_COLOR: TdxDBGridMaskColumn;
    gridErrorListWHT_COLOR: TdxDBGridMaskColumn;
    gridErrorListMAIN_WHT_NAME: TdxDBGridPopupColumn;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    gridErrorListWTES_NO: TdxDBGridMaskColumn;
    imgEditTuyChon: TdxImageEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    gridErrorListKEY_FIELD: TdxDBGridMaskColumn;
    peFilterNgayCong: TdxPopupEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    procedure acCheckExecute(Sender: TObject);
    procedure peMaPhongBanInitPopup(Sender: TObject);
    procedure peMaPhongBanCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure gridErrorListWHT_NAMEInitPopup(Sender: TObject);
    procedure gridErrorListWHT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure acCapNhatExecute(Sender: TObject);
    procedure qryExecuteStoreAfterOpen(DataSet: TDataSet);
    procedure qryUpdateDatabaseAfterOpen(DataSet: TDataSet);
    procedure peLoaiGioCongInitPopup(Sender: TObject);
    procedure peLoaiGioCongCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qrySynWorkingTimeAfterOpen(DataSet: TDataSet);
    procedure qryErrorListBeforeDelete(DataSet: TDataSet);
    procedure acInitWorkingTimeCheckExecute(Sender: TObject);
    procedure imgeLoaiKiemTraChange(Sender: TObject);
    procedure gridErrorListMAIN_WHT_NAMECustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure gridErrorListWHT_NAMECustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure peLoaiGioCongChange(Sender: TObject);
    procedure qryErrorListAfterPost(DataSet: TDataSet);
    procedure imgEditTuyChonChange(Sender: TObject);
    procedure frameToolbar1btnDeleteClick(Sender: TObject);
    procedure peFilterNgayCongInitPopup(Sender: TObject);
    procedure peFilterNgayCongCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure peFilterNgayCongChange(Sender: TObject);
    procedure qryErrorListAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
    varMaGioCong: WideString;
  public
    { Public declarations }
    varMaPhongBan: WideString;
  end;

var
  frmWorkTimeCheck: TfrmWorkTimeCheck;

implementation
uses MainDm, PopupMainForm, SSP_Library, Math, MainUnit;
{$R *.dfm}

procedure TfrmWorkTimeCheck.acCheckExecute(Sender: TObject);
begin
  inherited;
  //////////////
  Screen.Cursor := crSQLWait;
  if qryExecuteStore.Active then
    qryExecuteStore.Close;
  qryExecuteStore.SQL.Clear;
  if imgeLoaiKiemTra.Text = '0' then
  begin
    qryExecuteStore.SQL.Text := 'execute procedure hr_sp_working_time_check_0' +
      '(:USER_NAME,:DEPT_NO,:WHT_NO,:FROM_DATE,:TO_DATE,0,:AUTO_FIX)';
  end
  else
    if imgeLoaiKiemTra.Text = '1' then
  begin
    qryExecuteStore.SQL.Text := 'execute procedure hr_sp_working_time_check_1' +
      '(:USER_NAME,:DEPT_NO,:WHT_NO,:FROM_DATE,:TO_DATE,0,:AUTO_FIX)';
  end
  else
    if imgeLoaiKiemTra.Text = '2' then
  begin
    qryExecuteStore.SQL.Text := 'execute procedure hr_sp_working_time_check_2' +
      '(:USER_NAME,:DEPT_NO,:WHT_NO,:FROM_DATE,:TO_DATE,0,:AUTO_FIX)';
  end
  else
  begin
    Exit;
  end;
  if qryExecuteStore.Active then
    qryExecuteStore.Close;
  qryExecuteStore.ParamByName('DEPT_NO').Value := Trim(varMaPhongBan);
  qryExecuteStore.ParamByName('WHT_NO').Value := Trim(varMaGioCong);
  qryExecuteStore.ParamByName('FROM_DATE').Value := deFromDate.Date;
  qryExecuteStore.ParamByName('TO_DATE').Value := deToDate.Date;
  if ceAutoUpdate.Checked = true then
    qryExecuteStore.ParamByName('AUTO_FIX').Value := 1
  else
    qryExecuteStore.ParamByName('AUTO_FIX').Value := 0;
  qryExecuteStore.Open;
  if qryErrorList.Active then
    qryErrorList.Close;
  qryErrorList.ParamByName('DEPT_NO').Value := Trim(varMaPhongBan);
  qryErrorList.ParamByName('FROM_DATE').Value := deFromDate.Date;
  qryErrorList.ParamByName('TO_DATE').Value := deToDate.Date;
  qryErrorList.Open;
  gridErrorList.FullExpand;
  pbCheck.Enabled := false;
  pbCapNhat.Enabled := true;
  pbQuayLui.Enabled := true;
  Screen.Cursor := crDefault;
end;

procedure TfrmWorkTimeCheck.peMaPhongBanInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 0.5, peMaPhongBan);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmWorkTimeCheck.peMaPhongBanCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryDeptListDEPT_NAME.Value;
    varMaPhongBan := frmPopupMain.qryDeptListDEPT_NO.Value;
    qryExecuteStore.ParamByName('DEPT_NO').Value :=
      frmPopupMain.qryDeptListDEPT_NO.Value;
  end;
  frmPopupMain.qryDeptList.Close;
  frmPopupMain.qryDeptList.SQLWhere.Clear;
end;

procedure TfrmWorkTimeCheck.gridErrorListWHT_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWorkHourType.Open;
  InitPopupControl('dxlcWorkHourType', frmPopupMain, sender, 2, gridErrorList);
end;

procedure TfrmWorkTimeCheck.gridErrorListWHT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryWorkHourType, qryErrorList,
    'WHT_NO;WHT_NAME', 'WHT_NO;WHT_NAME', 'WHT_NAME', Text);
  frmPopupMain.qryWorkHourType.Close;
end;

procedure TfrmWorkTimeCheck.FormCreate(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsErrorList);
  pbCapNhat.Enabled := false;
  pbQuayLui.Enabled := false;
  imgeLoaiKiemTra.Text := '0';
  varMaGioCong := '';
  imgEditTuyChon.Text := '-1';
end;

procedure TfrmWorkTimeCheck.acCapNhatExecute(Sender: TObject);
begin
  inherited;
  /////////////////////
  Screen.Cursor := crSQLWait;
  if qryUpdateDatabase.Active then
    qryUpdateDatabase.Close;
  qryUpdateDatabase.ParamByName('DEPT_NO').Value := varMaPhongBan;
  qryUpdateDatabase.ParamByName('FROM_DATE').Value := deFromDate.Date;
  qryUpdateDatabase.ParamByName('TO_DATE').Value := deToDate.Date;
  qryUpdateDatabase.Open;
  pbCheck.Enabled := false;
  pbCapNhat.Enabled := false;
  pbQuayLui.Enabled := false;
  Screen.Cursor := crDefault;
end;

procedure TfrmWorkTimeCheck.qryExecuteStoreAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if qryExecuteStore.Active then
    qryExecuteStore.Close;
end;

procedure TfrmWorkTimeCheck.qryUpdateDatabaseAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if qryUpdateDatabase.Active then
    qryUpdateDatabase.Close;
  acCapNhat.Enabled := false;
end;

procedure TfrmWorkTimeCheck.peLoaiGioCongInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWorkHourType.Open;
  InitPopupControl('dxlcWorkHourType', frmPopupMain, sender, 2, peLoaiGioCong);
end;

procedure TfrmWorkTimeCheck.peLoaiGioCongCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryWorkHourTypeWHT_NAME.Value;
    varMaGioCong := frmPopupMain.qryWorkHourTypeWHT_NO.Value;
  end;
  frmPopupMain.qryWorkHourType.Close;
end;

procedure TfrmWorkTimeCheck.qrySynWorkingTimeAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if qrySynWorkingTime.Active then
    qrySynWorkingTime.Close;
end;

procedure TfrmWorkTimeCheck.qryErrorListBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  {  if qrySynWorkingTime.Active then
      qrySynWorkingTime.Close;
    qrySynWorkingTime.ParamByName('EMPLOYEE_NO').Value := qryErrorListEMPLOYEE_NO.Value;
    qrySynWorkingTime.ParamByName('WORK_DATE').Value := qryErrorListWORK_DATE.Value;
    qrySynWorkingTime.ParamByName('START_TIME').Value := qryErrorListSTART_TIME.Value;
    qrySynWorkingTime.ParamByName('WTES_NO').Value := qryErrorListWTES_NO.Value;
    qrySynWorkingTime.Open;}
end;

procedure TfrmWorkTimeCheck.acInitWorkingTimeCheckExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if qryExecuteStore.Active then
    qryExecuteStore.Close;
  qryExecuteStore.SQL.Clear;
  qryExecuteStore.SQL.Text := 'execute PROCEDURE HR_SP_UPDATE_WORKING_TIME_ERROR'
    +
    '(:USER_NAME,:DEPT_NO,:FROM_DATE,:TO_DATE,0);';
  qryExecuteStore.ParamByName('DEPT_NO').Value := Trim(varMaPhongBan);
  qryExecuteStore.ParamByName('FROM_DATE').Value := deFromDate.Date;
  qryExecuteStore.ParamByName('TO_DATE').Value := deToDate.Date;
  qryExecuteStore.Open;
  if qryErrorList.Active then
    qryErrorList.Close;
  qryErrorList.ParamByName('DEPT_NO').Value := Trim(varMaPhongBan);
  qryErrorList.ParamByName('FROM_DATE').Value := deFromDate.Date;
  qryErrorList.ParamByName('TO_DATE').Value := deToDate.Date;
  qryErrorList.Open;
  gridErrorList.FullExpand;
  pbCheck.Enabled := true;
  pbCapNhat.Enabled := false;
  pbQuayLui.Enabled := false;
  Screen.Cursor := crDefault;
end;

procedure TfrmWorkTimeCheck.imgeLoaiKiemTraChange(Sender: TObject);
begin
  inherited;
  pbCheck.Enabled := true;
end;

procedure TfrmWorkTimeCheck.gridErrorListMAIN_WHT_NAMECustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  col: TdxTreeListColumn;
begin
  inherited;
  if (AColumn is TdxDBGridPopupColumn) then
  begin
    col := gridErrorListMAIN_WHT_COLOR;
    if 1 = 1 then
    begin
      AColor := StrToIntDef(VarToStr(ANode.Values[col.Index]), Integer(clWhite))
    end
    else
      AColor := clWhite;
  end;
end;

procedure TfrmWorkTimeCheck.gridErrorListWHT_NAMECustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  col: TdxTreeListColumn;
begin
  inherited;
  if (AColumn is TdxDBGridPopupColumn) then
  begin
    col := gridErrorListWHT_COLOR;
    if 1 = 1 then
    begin
      AColor := StrToIntDef(VarToStr(ANode.Values[col.Index]), Integer(clWhite))
    end
    else
      AColor := clWhite;
  end;
end;

procedure TfrmWorkTimeCheck.peLoaiGioCongChange(Sender: TObject);
begin
  inherited;
  if peLoaiGioCong.Text = '' then
  begin
    varMaGioCong := '';
  end;
end;

procedure TfrmWorkTimeCheck.qryErrorListAfterPost(DataSet: TDataSet);
begin
  inherited;
  if ceAutoUpdate.Checked = true then
  begin
    if qryErrorList.Active then
      qryErrorList.Close;
    qryErrorList.Open;
    gridErrorList.FullExpand;
  end;
  if pbCapNhat.Enabled = false then
    pbCapNhat.Enabled := true;
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TfrmWorkTimeCheck.imgEditTuyChonChange(Sender: TObject);
begin
  inherited;
  //imgEditTuyChon.
  if imgEditTuyChon.Text = '-1' then
  begin
    gridErrorList.Filter.Remove(gridErrorListWTES_NO);
  end
  else
  begin

    gridErrorList.Filter.Add(gridErrorListWTES_NO, imgEditTuyChon.Text,
      imgEditTuyChon.EditText);
  end;
  gridErrorList.FullExpand;
end;

procedure TfrmWorkTimeCheck.frameToolbar1btnDeleteClick(Sender: TObject);
var
  max: Integer;
  i: Integer;
begin
  inherited;
  {frameToolbar1.acDSDeleteExecute(Sender);}
  Screen.Cursor := crSQLWait;
  max := gridErrorList.SelectedCount;
  frmMain.SetStatusBarPrgDisplay(0, max);
  for i := 0 to gridErrorList.SelectedCount - 1 do
  begin
    qryErrorList.First;
    while not qryErrorList.Eof do
    begin
      if ((qryErrorListEMPLOYEE_NO.Value =
        gridErrorList.SelectedNodes[0].Values[gridErrorListEMPLOYEE_NO.Index])
        and (qryErrorListWORK_DATE.Value =
          gridErrorList.SelectedNodes[0].Values[gridErrorListWORK_DATE.Index])
        and (qryErrorListSTART_TIME_CHANGE.Value =
          gridErrorList.SelectedNodes[0].Values[gridErrorListSTART_TIME_CHANGE.Index])) then
      begin
        try
          qryErrorList.Delete;
        except
        end;
        qryErrorList.Last;
      end;
      qryErrorList.Next;
      frmMain.BarPrgStepIt;
    end
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmWorkTimeCheck.peFilterNgayCongInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWorkHourType.Open;
  InitPopupControl('dxlcWorkHourType', frmPopupMain, sender, 2,
    peFilterNgayCong);
end;

procedure TfrmWorkTimeCheck.peFilterNgayCongCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryWorkHourTypeWHT_NAME.Value;
    gridErrorList.Filter.Add(gridErrorListWHT_NAME,
      frmPopupMain.qryWorkHourTypeWHT_NAME.Value,
      frmPopupMain.qryWorkHourTypeWHT_NAME.Value);
    gridErrorList.FullExpand;
  end;
  frmPopupMain.qryWorkHourType.Close;
end;

procedure TfrmWorkTimeCheck.peFilterNgayCongChange(Sender: TObject);
begin
  inherited;
  if peFilterNgayCong.Text = '' then
  begin
    gridErrorList.Filter.Remove(gridErrorListWHT_NAME);
    gridErrorList.FullExpand;
  end;
end;

procedure TfrmWorkTimeCheck.qryErrorListAfterDelete(DataSet: TDataSet);
begin
  inherited;
  if pbCapNhat.Enabled = false then
    pbCapNhat.Enabled := true;
end;

end.

