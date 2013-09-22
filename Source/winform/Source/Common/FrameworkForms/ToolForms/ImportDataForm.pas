unit ImportDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ElPgCtl,
  ImgList, dxLayoutControl, cxControls, dxCntner, dxEditor, dxExEdtr,
  dxEdLib, ElBtnCtl, ElPopBtn, dxDBELib, DB, dxTL, dxDBCtrl, dxDBGrid,
  ActnList, XLSReadWriteII, dxmdaset, ExtCtrls, ElPanel, ElSplit,
  IBODataset, dxDBTLCl, dxGrClms, dxBar, ElEdits, ElBtnEdit, ElMemoCombo,
  dxfProgressBar, StdCtrls;

type
  TfrmImportTool = class(TfrmBase)
    pageImportData: TElPageControl;
    tabData: TElTabSheet;
    ImageList1: TImageList;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    gridData: TdxDBGrid;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dsData: TDataSource;
    ActionList1: TActionList;
    acReadExcelData: TAction;
    dlgOpen: TOpenDialog;
    dxFileName: TdxButtonEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    xlsReader: TXLSReadWriteII;
    memData: TdxMemData;
    dxSplitter: TElSplitter;
    pageControl: TElPageControl;
    dsScript: TDataSource;
    qryScript: TIBOQuery;
    gridScript: TdxDBGrid;
    tabControl: TElTabSheet;
    tabScript: TElTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    gridParam: TdxDBGrid;
    dxLayoutControl2Item2: TdxLayoutItem;
    qryParam: TIBOQuery;
    dsParam: TDataSource;
    qryScriptSCRIPT_ID: TIntegerField;
    qryScriptFORM_NAME: TWideStringField;
    qryScriptGRID_NAME: TWideStringField;
    qryScriptSCRIPT_TEXT: TWideStringField;
    qryScriptSCRIPT_NAME: TWideStringField;
    qryScriptSCRIPT_ORDER: TIntegerField;
    gridScriptSCRIPT_NAME: TdxDBGridColumn;
    gridScriptSCRIPT_ORDER: TdxDBGridSpinColumn;
    qryParamSCRIPT_ID: TIntegerField;
    qryParamSOURCE_COL: TWideStringField;
    qryParamSOURCE_NAME: TWideStringField;
    qryParamPARAM_NO: TWideStringField;
    qryParamPARAM_NAME: TWideStringField;
    qryParamFUNC_NO: TWideStringField;
    gridParamPARAM_NAME: TdxDBGridColumn;
    acEditImportRule: TAction;
    dxBarManager1: TdxBarManager;
    dxPopupMenu: TdxBarPopupMenu;
    dxDefineRule: TdxBarButton;
    gridParamSOURCE_NAME: TdxDBGridPickColumn;
    gridParamSOURCE_COL: TdxDBGridPickColumn;
    acImportProcess: TAction;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl3Group1: TdxLayoutGroup;
    ElPopupButton2: TElPopupButton;
    ElPopupButton3: TElPopupButton;
    acClose: TAction;
    memoInfo: TElMemoCombo;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxProgress: TdxfProgressBar;
    dxLayoutControl3Item4: TdxLayoutItem;
    qryExecute: TIBOQuery;
    gridParamFUNC_NO: TdxDBGridImageColumn;
    memDataERROR_FLAG: TIntegerField;
    gridDataERROR_FLAG: TdxDBGridColumn;
    tabErrorMessage: TElTabSheet;
    dxDBMemo1: TdxDBMemo;
    memDataERROR_MSG: TWideStringField;
    chkCanEdit: TdxCheckEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    qryScriptIS_USED: TIntegerField;
    gridScriptIS_USED: TdxDBGridCheckColumn;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutControl4Item1: TdxLayoutItem;
    dxLayoutControl4Group1: TdxLayoutGroup;
    panelControl: TPanel;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    dxLayoutControl5Item1: TdxLayoutItem;
    dxLayoutControl5Item2: TdxLayoutItem;
    dxLayoutControl5Group1: TdxLayoutGroup;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl5Item3: TdxLayoutItem;
    acCommit: TAction;
    dxAutoCommit: TdxCheckEdit;
    dxLayoutControl5Item4: TdxLayoutItem;
    dxLayoutControl5Item5: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl5Item6: TdxLayoutItem;
    acRollback: TAction;
    mainPanel: TPanel;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxSelectType: TdxImageEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    acReadTextData: TAction;
    acReadData: TAction;
    dxDelimiterChar: TdxEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    procedure dxFileNameButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure acReadExcelDataExecute(Sender: TObject);
    procedure acReadExcelDataUpdate(Sender: TObject);
    procedure acEditImportRuleExecute(Sender: TObject);
    procedure gridScriptMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure gridParamMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryScriptNewRecord(DataSet: TDataSet);
    procedure acCloseExecute(Sender: TObject);
    procedure acImportProcessExecute(Sender: TObject);
    procedure acImportProcessUpdate(Sender: TObject);
    procedure qryParamSOURCE_NAMEChange(Sender: TField);
    procedure acEditImportRuleUpdate(Sender: TObject);
    procedure qryParamNewRecord(DataSet: TDataSet);
    procedure qryExecuteError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure memDataNewRecord(DataSet: TDataSet);
    procedure gridDataCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: WideString; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure chkCanEditChange(Sender: TObject);
    procedure acCommitUpdate(Sender: TObject);
    procedure acCommitExecute(Sender: TObject);
    procedure acRollbackExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acReadTextDataExecute(Sender: TObject);
    procedure acReadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxSelectTypeChange(Sender: TObject);
  private
    { Private declarations }
    F_Grid: TdxDBGrid;
    F_StrList: TStringList;
    F_CurrentError: string;
    F_CurrentIndex: integer;
  public
    { Public declarations }
    FGrid: TCustomdxDBTreeListControl;
    constructor Create(AOwner: TComponent; AGrid: TCustomdxDBTreeListControl);
  end;

var
  frmImportTool: TfrmImportTool;
implementation

uses MainDM, EditBaseFrm, EditImportRule, SSP_Library, UnicodeConvert,
  IB_Components, MainUnit, Registry;

{$R *.dfm}

constructor TfrmImportTool.Create(AOwner: TComponent; AGrid: TCustomdxDBTreeListControl);
begin
  inherited Create(AOwner);
  FGrid := AGrid;
  qryScript.ParamByName('FORM_NAME').Value := FGrid.Owner.Name;
  qryScript.ParamByName('GRID_NAME').Value := FGrid.Name;
  qryScript.Open;
  qryParam.Open;
  if qryScript.IsEmpty then ShowMessageUnicode(77);
  pageControl.ActivePageIndex := 0;
  F_StrList := TStringList.Create;
end;

procedure TfrmImportTool.dxFileNameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if dxSelectType.Text = 'XLS' then
    dlgOpen.Filter := 'Excel file (*.xls)|*.xls'
  else
    dlgOpen.Filter := 'Text file (*.txt)|*.txt';
  if dlgOpen.Execute then
    dxFileName.Text := dlgOpen.FileName;
end;

procedure TfrmImportTool.acReadExcelDataExecute(Sender: TObject);
var i, j: integer;
  field: TWideStringField;
  key_field: TIntegerField;
  col: TdxDBTreeListColumn;
begin
  try
    xlsReader.Clear;
    xlsReader.Filename := dxFileName.Text;
    xlsReader.Read;
  except
    ShowMessageUnicode(74);
    Exit;
  end;
  gridParamSOURCE_NAME.Items.Clear;
  gridParamSOURCE_COL.Items.Clear;
  memData.DisableControls;
  memData.Close;
  for i := memData.FieldCount - 1 downto 3 do
    memData.Fields[i].Free;
  for i := gridData.ColumnCount - 1 downto 1 do
    gridData.Columns[i].Free;
  try
    for i := xlsReader.Sheets[0].FirstCol to xlsReader.Sheets[0].LastCol do
    begin
      field := TWideStringField.Create(memData);
      field.FieldName := 'COL' + IntToStr(i);
      field.Size := 1024;
      field.FieldKind := fkData;
      field.DataSet := memData;
      field.SetFieldType(ftVariant);
      //tao grid
      col := gridData.CreateColumn(TdxDBGridColumn);
      col.Name := 'gridData' + field.FieldName;
      col.FieldName := field.FieldName;
      col.Caption := 'Column ' + IntTostr(i);
      col.Width := 100;
      col.HeaderAlignment := taCenter;
      gridParamSOURCE_NAME.Items.Add(col.Caption);
      gridParamSOURCE_COL.Items.Add(field.FieldName);
    end;
  except
    ShowMessageUnicode(76);
    memData.EnableControls;
    Exit;
  end;

  try
    memData.Open;
    memData.First;
    for i := xlsReader.Sheets[0].FirstRow to xlsReader.Sheets[0].LastRow do
    begin
      memData.Append;
      for j := xlsReader.Sheets[0].FirstCol to xlsReader.Sheets[0].LastCol do
      begin
        memData.FieldByName('COL' + IntToStr(j)).Value :=
          xlsReader.Sheets[0].AsWideString[j, i] + '';
      end;
      memData.Post;
    end;
  except
    memData.Cancel;
    ShowMessageUnicode(76);
    memData.EnableControls;
    Exit;
  end;
  memData.EnableControls;
  // calFromRow.Text:='0';
 //  calToRow.Text:=IntToStr(memData.RecordCount-1);
  gridData.Columns[0].SummaryFooterType := cstCount;
  gridData.ShowHeader := true;
  gridParamSOURCE_COL.TreeList.CancelEditor;
  gridParamSOURCE_NAME.TreeList.CancelEditor;
  ShowMessageUnicode(75);
end;

procedure TfrmImportTool.acReadExcelDataUpdate(Sender: TObject);
begin
  inherited;
  acReadData.Enabled := FileExists(dxFileName.Text);
end;

procedure TfrmImportTool.acEditImportRuleExecute(Sender: TObject);
begin
  inherited;
  if sysConfig.AdminRight then
    ShowModalForm(TfrmEditImportRule, frmEditImportRule);
end;

procedure TfrmImportTool.gridScriptMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Button = mbRight then dxPopupMenu.PopupFromCursorPos;
end;

procedure TfrmImportTool.gridParamMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Button = mbRight then dxPopupMenu.PopupFromCursorPos;
end;

procedure TfrmImportTool.qryScriptNewRecord(DataSet: TDataSet);
var qry: TIBOQuery;
begin
  inherited;
  qryScriptSCRIPT_ORDER.Value := qryScript.RecordCount;
  qryScriptFORM_NAME.Value := FGrid.Owner.Name;
  qryScriptGRID_NAME.Value := FGrid.Name;
  qryScriptIS_USED.Value := 1;
  //phat sinh cau lenh SQL
  if FGrid.DataSource.DataSet is TIBOQuery
    then
  begin
    qry := TIBOQuery(FGrid.DataSource.DataSet);
    qryScriptSCRIPT_TEXT.Value :=
      qry.InsertSQL.Text + #10#13 +
      qry.EditSQL.Text;
  end
end;

procedure TfrmImportTool.acCloseExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOK;
end;

procedure TfrmImportTool.acImportProcessExecute(Sender: TObject);
  procedure InsertMsg(str: WideString);
  begin
    if memoInfo.LinesCount > 0 then
      memoInfo.Lines.Insert(1, str)
    else
      memoInfo.Lines.Insert(0, str);
  end;
  procedure ReadParam(param_no: string; source_no: string; function_no: string);
  var str_temp, str_res: string;
    i, count: integer;
  begin
    function_no := Trim(function_no);
    if (function_no = '') or (function_no = 'DONT_CARE') then
    begin
      try
        if (source_no = '') or (source_no = 'X') then
          qryExecute.ParamByName(param_no).Clear
        else
          qryExecute.ParamByName(param_no).Value := memData.FieldByName(source_no).Value;
      except
        qryExecute.ParamByName(param_no).Clear;
      end;
    end
    else
      if function_no = 'GEN_ID' then
    begin
      // thu tuc nay phat sinh ma bang cach lay cac ky tu dau cua moi tu va UPPPER
      UnicodeToASCCII(VarToWideStr(memData.FieldByName(source_no).Value), str_temp);
      F_StrList.Clear;
      F_StrList.Delimiter := '_';
      F_StrList.DelimitedText := string(str_temp);
      str_res := '';
      for i := 0 to F_StrList.Count - 1 do
      begin
        str_temp := F_StrList.Strings[i];
        if (Length(str_temp) > 0) then
          str_res := str_res + UpCase(str_temp[1]);
      end;
      try
        qryExecute.ParamByName(param_no).Value := str_res;
      except
        qryExecute.ParamByName(param_no).Clear;
      end;
    end
    else
      if function_no = 'GEN_INDEX' then
    begin
      try
        qryExecute.ParamByName(param_no).Value := F_CurrentIndex;
        Inc(F_CurrentIndex);
      except
        qryExecute.ParamByName(param_no).Clear;
      end;
    end
    else
      if function_no = 'UNI_CONVERT' then
    begin
      UnicodeToASCCII(VarToWideStr(memData.FieldByName(source_no).Value),
        str_temp);
      //ChuoiSangKyHieu(VarToWideStr(memData.FieldByName(source_no).Value),
      //  str_temp);
      try
        qryExecute.ParamByName(param_no).Value := str_temp;
      except
        qryExecute.ParamByName(param_no).Clear;
      end;
    end
    else
      if function_no = 'MIDDLE_WORD' then
    begin
      F_StrList.Clear;
      F_StrList.Delimiter := ' ';
      F_StrList.DelimitedText := Trim(UTF8Encode(VarToWideStr(memData.FieldByName(source_no).Value)));
      count := F_StrList.Count;
      if count > 2 then
      begin
        for i := 1 to count - 2 do
          str_temp := str_temp + ' ' + Trim(F_StrList.Strings[i]);
      end
      else
      begin
        str_temp := '';
      end;
      try
        qryExecute.ParamByName(param_no).Value := UTF8Decode(str_temp);
      except
        qryExecute.ParamByName(param_no).Clear;
      end;
    end
    else
      if function_no = 'FIRST_WORD' then
    begin
      F_StrList.Clear;
      F_StrList.Delimiter := ' ';
      F_StrList.DelimitedText := Trim(UTF8Encode(VarToWideStr(memData.FieldByName(source_no).Value)));
      count := F_StrList.Count;
      if count > 1 then
      begin
        str_temp := Trim(F_StrList.Strings[0]);
      end
      else
      begin
        str_temp := '';
      end;
      try
        qryExecute.ParamByName(param_no).Value := UTF8Decode(str_temp);
      except
        qryExecute.ParamByName(param_no).Clear;
      end;
    end
    else
      if function_no = 'LAST_WORD' then
    begin
      F_StrList.Clear;
      F_StrList.Delimiter := ' ';
      F_StrList.DelimitedText := Trim(UTF8Encode(VarToWideStr(memData.FieldByName(source_no).Value)));
      count := F_StrList.Count;
      if count > 1 then
      begin
        str_temp := Trim(F_StrList.Strings[count - 1]);
      end
      else
      begin
        str_temp := '';
      end;
      try
        qryExecute.ParamByName(param_no).Value := UTF8Decode(str_temp);
      except
        qryExecute.ParamByName(param_no).Clear;
      end;
    end
    else
  end;
var step: integer;
begin
  inherited;
  //init global data
  F_CurrentIndex := 1;
  memoInfo.Lines.Clear;
  //======================
  dmMain.RollbackTransaction;
  Screen.Cursor := crSQLWait;
  pageControl.ActivePageIndex := 1;
  self.Repaint;
  step := memData.RecordCount;
  dxProgress.Max := step * qryScript.RecordCount;
  dxProgress.Position := 0;
  dxProgress.ShowText := true;
  qryScript.DisableControls;
  qryParam.DisableControls;
  memData.DisableControls;
  // xoa het nhat ky loi
  if memData.State in [dsEdit, dsInsert] then memData.Post;
  memData.First;
  while not memData.Eof do
  begin
    if memDataERROR_FLAG.Value = 1 then
    begin
      if not (memData.State in [dsEdit, dsInsert]) then
        memData.Edit;
      memDataERROR_FLAG.Value := 0;
      memDataERROR_MSG.Clear;
      memData.Post;
    end;
    memData.Next;
  end;
  self.Repaint;
  if qryParam.State in [dsInsert, dsEdit] then qryParam.Post;
  if qryScript.State in [dsInsert, dsEdit] then qryScript.Post;
  qryScript.First;
  while not qryScript.Eof do
  begin
    if qryScriptIS_USED.Value = 0 then
    begin
      dxProgress.Position := dxProgress.Position + step;
      qryScript.Next;
      Continue;
    end;
    InsertMsg('* ' + qryScriptSCRIPT_NAME.Value);
    try
      qryExecute.SQL.Text := qryScriptSCRIPT_TEXT.AsString;
      qryExecute.Prepare;
    except
      InsertMsg(UTF8Decode(' (-) Lỗi câu lệnh SQL:    ') + qryScriptSCRIPT_TEXT.AsString);
      dxProgress.Position := dxProgress.Position + step;
      qryScript.Next;
      Continue;
    end;
    qryParam.Refresh;
    if qryParam.IsEmpty then
    begin
      qryExecute.ExecSQL;
      InsertMsg(UTF8Decode(' (*) Thực hiện câu lệnh thành công'));
      dxProgress.Position := dxProgress.Position + step;
      qryScript.Next;
      Continue;
    end;
    memData.First;
    while not memData.Eof do
    begin
      // xu li truyen tham so vao cau lenh SQL
      qryParam.First;
      while not qryParam.Eof do
      begin
        ReadParam(qryParamPARAM_NO.AsString, qryParamSOURCE_COL.AsString, qryParamFUNC_NO.AsString);
        qryParam.Next;
      end;
      // thuc hien viec import du lieu
      try
        qryExecute.ExecSQL;
        if not (memData.State in [dsInsert, dsEdit]) then
          memData.Edit;
        memData.Post;
        InsertMsg(UTF8Decode(' (+) Đọc dữ liệu thành công - Dòng: ') + IntToStr(memData.RecNo));
      except
        if not (memData.State in [dsInsert, dsEdit]) then
          memData.Edit;
        memDataERROR_FLAG.Value := 1;
        memDataERROR_MSG.Value := memDataERROR_MSG.Value + #13#10 + F_CurrentError;
        memData.Post;
        InsertMsg(UTF8Decode('  (-) Lỗi khi đọc dữ liệu dòng: ') + IntToStr(memData.RecNo));
      end;
      memData.Next;
      dxProgress.StepIt;
      self.Repaint;
    end;
    if dxAutoCommit.Checked then
      dmMain.CommitTransaction;
    qryScript.Next;
  end;
  ShowMessageUnicode(78);
  dxProgress.Position := 0;
  dxProgress.Max := 1;
  dxProgress.ShowText := false;
  qryScript.EnableControls;
  qryParam.EnableControls;
  memData.EnableControls;
  Screen.Cursor := crDefault;
end;

procedure TfrmImportTool.acImportProcessUpdate(Sender: TObject);
begin
  inherited;
  acImportProcess.Enabled :=

  (not (memData.IsEmpty or qryScript.IsEmpty)) and
    (dxProgress.Min = 0) and (dxProgress.Max = 1) and (dxProgress.Position = 0);
end;

procedure TfrmImportTool.qryParamSOURCE_NAMEChange(Sender: TField);
var i: integer;
begin
  inherited;
  for i := 0 to gridData.ColumnCount - 1 do
  begin
    if gridData.Columns[i].Caption = qryParamSOURCE_NAME.Value then
    begin
      qryParamSOURCE_COL.Value := gridData.Columns[i].FieldName;
      Exit;
    end;
  end;
end;

procedure TfrmImportTool.acEditImportRuleUpdate(Sender: TObject);
begin
  inherited;
  acEditImportRule.Enabled := sysConfig.AdminRight
end;

procedure TfrmImportTool.qryParamNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryParamSCRIPT_ID.Value := qryScriptSCRIPT_ID.Value;
end;

procedure TfrmImportTool.qryExecuteError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  inherited;
  F_CurrentError := ErrorMessage.Text;
end;

procedure TfrmImportTool.FormClose(Sender: TObject;
  var Action: TCloseAction);
  var reg :TRegistry;
begin
  inherited;
  F_StrList.Free;
  reg:=TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;
  if reg.OpenKey(REGISTRY_ROOT+'\'+self.Name, TRUE) then
  begin
    Reg.WriteString('Delimiter',String(dxDelimiterChar.Text));
  end;
  reg.CloseKey;
  reg.Free;
end;

procedure TfrmImportTool.memDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  memDataERROR_FLAG.Value := 0;
end;

procedure TfrmImportTool.gridDataCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: WideString; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
begin
  inherited;
  if ANode.Values[gridDataERROR_FLAG.Index] = 1 then
    AFont.Color := clRed;
end;

procedure TfrmImportTool.chkCanEditChange(Sender: TObject);
begin
  inherited;
  if chkCanEdit.Checked then
    gridData.OptionsBehavior := gridData.OptionsBehavior + [edgoEditing]
  else
    gridData.OptionsBehavior := gridData.OptionsBehavior - [edgoEditing]
end;

procedure TfrmImportTool.acCommitUpdate(Sender: TObject);
begin
  inherited;
  acCommit.Enabled := (qryExecute.IB_Transaction.TransactionState = tsActive);
  acRollback.Enabled := (qryExecute.IB_Transaction.TransactionState = tsActive);
end;

procedure TfrmImportTool.acCommitExecute(Sender: TObject);
begin
  inherited;
  dmMain.CommitTransaction;
end;

procedure TfrmImportTool.acRollbackExecute(Sender: TObject);
begin
  inherited;
  dmMain.RollbackTransaction;
end;

procedure TfrmImportTool.FormShow(Sender: TObject);
begin
  inherited;
  self.WindowState := wsMaximized;
  pageImportData.Height := self.Height div 2;
end;

procedure TfrmImportTool.acReadTextDataExecute(Sender: TObject);
var i, j: integer;
  field: TWideStringField;
  key_field: TIntegerField;
  col: TdxDBTreeListColumn;
  file_data, parse_text: TStrings;
begin
  file_data := TStringList.Create;
  parse_text := TStringList.Create;
  if length(dxDelimiterChar.Text)>0 then
   parse_text.Delimiter := Char(dxDelimiterChar.Text[1]);

  try
    file_data.LoadFromFile(dxFileName.Text);
  except
    ShowMessageUnicode(74);
    Exit;
  end;
  gridParamSOURCE_NAME.Items.Clear;
  gridParamSOURCE_COL.Items.Clear;
  memData.DisableControls;
  memData.Close;

  for i := memData.FieldCount - 1 downto 3 do
    memData.Fields[i].Free;
  for i := gridData.ColumnCount - 1 downto 1 do
    gridData.Columns[i].Free;
  try
    for i := 0 to file_data.Count - 1 do
    begin
      parse_text.DelimitedText := file_data.Strings[i];
      if i = 0 then // dong dau tien
      begin
        for j := 0 to parse_text.Count - 1 do
        begin
          field := TWideStringField.Create(memData);
          field.FieldName := 'COL' + IntToStr(j);
          field.Size := 1024;
          field.FieldKind := fkData;
          field.DataSet := memData;
          field.SetFieldType(ftVariant);
          //tao grid
          col := gridData.CreateColumn(TdxDBGridColumn);
          col.Name := 'gridData' + field.FieldName;
          col.FieldName := field.FieldName;
          col.Caption := 'Column ' + IntTostr(j);
          col.Width := 100;
          col.HeaderAlignment := taCenter;
          gridParamSOURCE_NAME.Items.Add(col.Caption);
          gridParamSOURCE_COL.Items.Add(field.FieldName);
        end;
      end;
      //ket thuc tao memdata
      if not memData.Active then memData.Open;
      try
        memData.Append;
        for j := 0 to parse_text.Count - 1 do
        begin
          memData.FieldByName('COL' + IntToStr(j)).Value := parse_text.Strings[j] + '';
        end;
        memData.Post;
      except
        memData.Cancel;
        ShowMessageUnicode(76);
        memData.EnableControls;
        Exit;
      end;
    end;
  except
    ShowMessageUnicode(76);
    memData.EnableControls;
    Exit;
  end;

  memData.EnableControls;
  gridData.Columns[0].SummaryFooterType := cstCount;
  gridData.ShowHeader := true;
  gridParamSOURCE_COL.TreeList.CancelEditor;
  gridParamSOURCE_NAME.TreeList.CancelEditor;
  ShowMessageUnicode(75);
end;

procedure TfrmImportTool.acReadDataExecute(Sender: TObject);
begin
  inherited;
  if Pos('.txt', dxFileName.Text) > 0 then
    acReadTextData.Execute
  else
    acReadExcelData.Execute;
end;

procedure TfrmImportTool.FormCreate(Sender: TObject);
var reg :TRegistry;
begin
  inherited;
  reg:=TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;
  if reg.OpenKey(REGISTRY_ROOT+'\'+self.Name, TRUE) then
  begin
    dxDelimiterChar.Text:=Reg.ReadString('Delimiter');
  end;
  reg.CloseKey;
  reg.Free;
  dxSelectType.Text:='XLS';
end;

procedure TfrmImportTool.dxSelectTypeChange(Sender: TObject);
begin
  inherited;
  dxLayoutControl1Item6.Visible:=(dxSelectType.Text='TXT');
end;

end.

