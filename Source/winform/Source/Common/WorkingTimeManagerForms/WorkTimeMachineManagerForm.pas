unit WorkTimeMachineManagerForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ExcelXP,
  OleServer, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, dxCntner, ElBtnCtl,
  ElPopBtn, XLSReadWriteII, XLSDbRead, dxLayoutControl, cxControls,MainDM,
  dxmdaset, ElPgCtl, dxEditor, dxEdLib, StdCtrls, ElCLabel, ElLabel,
  ExtCtrls, ElPanel, ActnList, ToolbarFrame, dxDBTLCl, dxGrClms, IBODataset,
  dxGrClEx, dxDBELib, ElACtrls, ElSplit, IB_Components, XDOM_2_3, DBActns,
  ElCheckCtl, ElEdits, ElBtnEdit, ElMemoCombo;

type
  TfrmWorkTimeMachineManager = class(TfrmBase)
    gridChiTietExcel: TdxDBGrid;
    dsChiTietExcel: TDataSource;
    pbConfig: TElPopupButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    memChiTietExcel: TdxMemData;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    pageWorkTimeControl: TElPageControl;
    tabExcelControl: TElTabSheet;
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    ActionList1: TActionList;
    acReadExcelFile: TAction;
    acConfig: TAction;
    tabConfig: TElTabSheet;
    dsConfig: TDataSource;
    qryConfig: TIBOQuery;
    dxlcExcelFieldGroup_Root: TdxLayoutGroup;
    dxlcExcelField: TdxLayoutControl;
    gridExcelField: TdxDBGrid;
    dxlcExcelFieldItem1: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxlcExcelFieldItem2: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxlcExcelFieldItem3: TdxLayoutItem;
    dxlcExcelFieldGroup1: TdxLayoutGroup;
    dsExcelField: TDataSource;
    memExcelField: TdxMemData;
    memExcelFieldEXCEL_ID: TWideStringField;
    memExcelFieldEXCEL_NAME: TWideStringField;
    gridExcelFieldRecId: TdxDBGridColumn;
    gridExcelFieldEXCEL_ID: TdxDBGridMaskColumn;
    gridExcelFieldEXCEL_NAME: TdxDBGridMaskColumn;
    dsMachineStyle: TDataSource;
    qryMachineStyle: TIBOQuery;
    pbInsertDuLieu: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    acInsertDuLieu: TAction;
    ElPanel1: TElPanel;
    ElPanel2: TElPanel;
    ElPanel3: TElPanel;
    ElPanel4: TElPanel;
    splitterLeft: TElSplitter;
    ElSplitter2: TElSplitter;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    gridConfigField: TdxDBGrid;
    gridTableName: TdxDBGrid;
    gridFieldName: TdxDBGrid;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl3Item1: TdxLayoutItem;
    frameToolbar1: TframeToolbar;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dsTableName: TDataSource;
    dsFieldName: TDataSource;
    qryTableName: TIBOQuery;
    qryFieldName: TIBOQuery;
    qryTableNameRDBRELATION_NAME: TWideStringField;
    gridTableNameRDBRELATION_NAME: TdxDBGridMaskColumn;
    qryFieldNameRDBFIELD_NAME: TWideStringField;
    gridFieldNameRDBFIELD_NAME: TdxDBGridMaskColumn;
    memoSQLText: TdxDBMemo;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxseFormRow: TdxDBSpinEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    splitterRight: TElSplitter;
    gridDSTable: TdxDBGrid;
    dsSQLConfigList: TDataSource;
    qrySQLConfigList: TIBOQuery;
    qryExecute: TIBOQuery;
    qryConfigFIELD_ID: TIntegerField;
    qryConfigFIELD_NAME: TWideStringField;
    qryConfigMACHINE_MODEL: TWideStringField;
    qryConfigEXCEL_FIELD_NAME: TWideStringField;
    qryConfigPLUS_INFOR: TWideStringField;
    gridConfigFieldFIELD_ID: TdxDBGridMaskColumn;
    gridConfigFieldFIELD_NAME: TdxDBGridMaskColumn;
    gridConfigFieldPLUS_INFOR: TdxDBGridMaskColumn;
    gridConfigFieldEXCEL_FIELD_NAME: TdxDBGridPopupColumn;
    tabResult: TElTabSheet;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    tranExecute: TIB_Transaction;
    acCheckSQL: TAction;
    acGenSQL: TAction;
    qrySQLConfigListCONFIG_NO: TIntegerField;
    qrySQLConfigListCONFIG_NAME: TWideStringField;
    qrySQLConfigListMACHINE_MODEL: TWideStringField;
    qrySQLConfigListSQL_STATEMENT: TWideStringField;
    gridDSTableCONFIG_NO: TdxDBGridMaskColumn;
    gridDSTableCONFIG_NAME: TdxDBGridMaskColumn;
    XmlReader: TXmlStandardDocReader;
    dxseToRow: TdxDBSpinEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    qryMachineStyleMACHINE_MODEL: TWideStringField;
    qryMachineStyleMACHINE_NAME: TWideStringField;
    qryMachineStyleVALUE_ROW_AREA_BEGIN: TIntegerField;
    qryMachineStyleVALUE_ROW_AREA_END: TIntegerField;
    qryMachineStyleFILE_STYLE: TSmallintField;
    qryMachineStyleFILE_INFOR: TWideStringField;
    dsXoaChiTiet: TDataSetDelete;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    gridChiTietExcelRecId: TdxDBGridColumn;
    acSystemFunction: TAction;
    beTenTapTin: TdxButtonEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    acOpenFile: TAction;
    memoErrorrReport: TElMemoCombo;
    dxLayoutControl4Item2: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    elcbSystemFuction: TdxCheckEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    xslRWChanCong: TXLSReadWriteII;
    procedure pbConfigClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acReadExcelFileExecute(Sender: TObject);
    procedure acConfigExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frameToolbar1btnCloseClick(Sender: TObject);
    procedure qryMachineStyleVALUE_ROW_AREAChange(Sender: TField);
    procedure gridConfigFieldEnter(Sender: TObject);
    procedure gridFieldNameDblClick(Sender: TObject);
    procedure qryConfigAfterPost(DataSet: TDataSet);
    procedure gridConfigFieldEXCEL_FIELD_NAMEInitPopup(Sender: TObject);
    procedure gridConfigFieldEXCEL_FIELD_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure acInsertDuLieuExecute(Sender: TObject);
    procedure acCheckSQLExecute(Sender: TObject);
    procedure acGenSQLExecute(Sender: TObject);
    procedure memoSQLTextChange(Sender: TObject);
    procedure qryExecuteError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure gridDSTableEnter(Sender: TObject);
    procedure qrySQLConfigListAfterPost(DataSet: TDataSet);
    procedure qrySQLConfigListNewRecord(DataSet: TDataSet);
    procedure dxseToRowEnter(Sender: TObject);
    procedure dxseFormRowEnter(Sender: TObject);
    procedure acSystemFunctionExecute(Sender: TObject);
    procedure beTenTapTinButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure gridExcelFieldDblClick(Sender: TObject);
  private
    { Private declarations }
    function GetFieldByName(field_name : string):string;
    function ProcessDateTime(inputValue : Variant):TDateTime;
    function ProcessRecord(inputValue : string;default : string):TStrings;
    function ReadExcelFile():integer;
    function ReadTextFile():integer;
  public
    { Public declarations }
    varFileType : WideString;
    varFileName : WideString;
    varMachineModel : WideString;
    procedure ProcessData();
  end;

var
  frmWorkTimeMachineManager: TfrmWorkTimeMachineManager;

implementation

uses SSP_Library,MainUnit;

{$R *.dfm}

procedure TfrmWorkTimeMachineManager.pbConfigClick(Sender: TObject);
begin
  inherited;
  //ExcelQueryTable1.
end;

procedure TfrmWorkTimeMachineManager.FormCreate(Sender: TObject);
begin
  inherited;
  pageWorkTimeControl.ActivePage := tabExcelControl;
  pageWorkTimeControl.ShowTabs := false;
  acCheckSQL.Enabled := false;
  gridChiTietExcel.OptionsBehavior := gridChiTietExcel.OptionsBehavior - [edgoStoreToIniFile];
  acSystemFunction.Execute;
end;

procedure TfrmWorkTimeMachineManager.ProcessData();
begin
  beTenTapTin.Text := varFileName;
  acReadExcelFile.Execute;
end;

function TfrmWorkTimeMachineManager.ReadExcelFile():integer;
var i,j,gridWidth:integer;
    field:TWideStringField;
    col:TdxDBTreeListColumn;
    varTemp:Boolean;

begin
  //init INI File///
  varTemp := true;
  gridChiTietExcel.IniFileName := '.\GridConfig' + varMachineModel + '.ini';
  try
    xslRWChanCong.Filename := varFileName;
    xslRWChanCong.Read;
  except
    ShowMessageUnicode(53);
    result := 0;
    
    Exit;
  end;
  gridWidth := 100;

  memChiTietExcel.DisableControls;
  memChiTietExcel.Close;

  if (memChiTietExcel.FieldCount>1) then
  begin
    for i:=memChiTietExcel.Fields.Count-1 downto 1 do
    begin
      if memChiTietExcel.Fields[i].FieldName='RedId' then showmessage('aaa');
      memChiTietExcel.Fields[i].Free;
    end;
  end;
  for i:=gridChiTietExcel.ColumnCount-1 downto 1 do
    gridChiTietExcel.Columns[i].Free;
  memExcelField.DisableControls;
  memExcelField.Close;
  memExcelField.Open;
  try
    frmMain.SetStatusBarPrgDisplay(xslRWChanCong.Sheets[0].FirstCol,xslRWChanCong.Sheets[0].LastCol);
    for i:=xslRWChanCong.Sheets[0].FirstCol to xslRWChanCong.Sheets[0].LastCol do
    begin
      field := TWideStringField.Create(memChiTietExcel);
      field.FieldName := 'COL'+IntToStr(i + 1);
      field.Size:=1024;
      field.FieldKind := fkData;
      field.DataSet := memChiTietExcel;
      field.SetFieldType(ftVariant);
      //tao grid
      col := gridChiTietExcel.CreateColumn(TdxDBGridColumn);
      col.Name := 'gridImportData'+field.FieldName;
      col.FieldName := field.FieldName;
      col.Caption := UTF8Decode('Cột ')+IntToStr(i + 1);
      col.Width:=80;
      col.DisableEditor := true;
      gridWidth := gridWidth + col.Width;
      memExcelField.Append;
      memExcelFieldEXCEL_ID.Value := 'COL'+IntToStr(i + 1);
      memExcelFieldEXCEL_NAME.Value := UTF8Decode('Cột ')+IntToStr(i + 1);
      memExcelField.Post;
      frmMain.BarPrgStepIt;
    end;
  except
     gridChiTietExcel.OptionsBehavior := gridChiTietExcel.OptionsBehavior - [edgoStoreToIniFile];
     ShowMessageUnicode(53);
     memChiTietExcel.EnableControls;
     memExcelField.EnableControls;
     result := 0;
     
     Exit;
  end;
  gridChiTietExcel.OptionsBehavior := gridChiTietExcel.OptionsBehavior + [edgoStoreToIniFile];
  gridChiTietExcel.LoadFromIniFile(gridChiTietExcel.IniFileName);
  memExcelField.EnableControls;
  try
    memChiTietExcel.Open;
    frmMain.SetStatusBarPrgDisplay(xslRWChanCong.Sheets[0].FirstRow,xslRWChanCong.Sheets[0].LastRow);
    for i:=xslRWChanCong.Sheets[0].FirstRow to xslRWChanCong.Sheets[0].LastRow do
    begin
      memChiTietExcel.Append;
      varTemp := false;
      for j:=xslRWChanCong.Sheets[0].FirstCol to xslRWChanCong.Sheets[0].LastCol do
      begin
        if xslRWChanCong.Sheets[0].AsWideString[j,i] <> '' then
          varTemp := true;
        memChiTietExcel.FieldByName('COL'+IntToStr(j + 1)).Value:=
          xslRWChanCong.Sheets[0].AsWideString[j,i]+'';
      end;
      memChiTietExcel.Post;
      frmMain.BarPrgStepIt;
    end;
  except
    memChiTietExcel.Cancel;
    ShowMessageUnicode(50);
    memChiTietExcel.EnableControls;
    result := 0;
    
    Exit;
  end;

  memChiTietExcel.EnableControls;
  gridChiTietExcel.Columns[0].SummaryFooterType:=cstCount;
  if gridWidth < gridChiTietExcel.Width then
  begin
    gridChiTietExcel.OptionsView := gridChiTietExcel.OptionsView + [edgoAutoWidth];
  end
  else
  begin
    gridChiTietExcel.OptionsView := gridChiTietExcel.OptionsView - [edgoAutoWidth];
  end;
  ShowMessageUnicode(39);
  result := 1;
  dsChiTietExcel.DataSet:=memChiTietExcel;
  gridChitietExcel.DataSource:=dsChiTietExcel;
  gridChiTietExcel.Refresh;
end;

function TfrmWorkTimeMachineManager.ProcessRecord(inputValue : string;default : string):TStrings;
var
  txtRWRecord: TStrings;
  varTemp:string;
  varIndex:integer;
  varLength:integer;
begin
  txtRWRecord := TStringList.Create;
  inputValue := Trim(inputValue);
  varIndex := Pos(default,inputValue);
  while varIndex > 0 do
  begin
    varLength := Length(inputValue);
    varTemp := Trim(Copy(inputValue,1,varIndex-1));
    inputValue := Trim(Copy(inputValue,varIndex+1,varLength-1));
    txtRWRecord.Add(varTemp);
    varIndex := Pos(default,inputValue);
  end;
  varLength := Length(inputValue);
  if ((varIndex <= 0) and (varLength > 0)) then
  begin
    txtRWRecord.Add(inputValue);
  end;
  result := txtRWRecord;
end;

function TfrmWorkTimeMachineManager.ReadTextFile():integer;
var i,j,gridWidth:integer;
    field:TWideStringField;
    col:TdxDBTreeListColumn;
    txtRWChamCong: TStrings;
    txtRWRecord: TStrings;
    varTemp:Boolean;
begin
  //init INI File///
  varTemp := true;
  gridChiTietExcel.IniFileName := '.\GridConfig' + varMachineModel + '.ini';
  try
    txtRWChamCong := TStringList.Create;
    txtRWChamCong.Clear;
    txtRWChamCong.LoadFromFile(varFileName);
    txtRWRecord := ProcessRecord(txtRWChamCong.Strings[0],#9);
  except
    ShowMessageUnicode(53);
    result := 0;
    Exit;
  end;
  gridWidth := 100;
  memChiTietExcel.DisableControls;
  memChiTietExcel.Close;
  if (memChiTietExcel.State in [dsEdit,dsInsert]) then
  begin
    for i:=memChiTietExcel.Fields.Count-1 downto 1 do
      memChiTietExcel.Fields[i].Clear;
  end;
  for i:=gridChiTietExcel.ColumnCount-1 downto 1 do
    gridChiTietExcel.Columns[i].Free;
  memExcelField.DisableControls;
  memExcelField.Open;
  memExcelField.First;
  gridChiTietExcel.KeyField:= 'RecID';
  try
    frmMain.SetStatusBarPrgDisplay(0,txtRWRecord.Count - 1 );
    for i:=0 to txtRWRecord.Count - 1 do
    begin
      field := TWideStringField.Create(memChiTietExcel);
      field.FieldName := 'COL'+IntToStr(i + 1);
      field.Size:=1024;
      field.FieldKind := fkData;
      field.DataSet := memChiTietExcel;
      field.SetFieldType(ftVariant);
      //tao grid
      col := gridChiTietExcel.CreateColumn(TdxDBGridColumn);
      col.Name := 'gridImportData'+field.FieldName;
      col.FieldName := field.FieldName;
      col.Caption := UTF8Decode('Cột ')+IntToStr(i + 1);
      col.Width:=80;
      col.DisableEditor := true;
      gridWidth := gridWidth + col.Width;
      memExcelField.Append;
      memExcelFieldEXCEL_ID.Value := 'COL'+IntToStr(i + 1);
      memExcelFieldEXCEL_NAME.Value := UTF8Decode('Cột ')+IntToStr(i + 1);
      memExcelField.Post;
      frmMain.BarPrgStepIt;
    end;
  except
     gridChiTietExcel.OptionsBehavior := gridChiTietExcel.OptionsBehavior - [edgoStoreToIniFile];
     ShowMessageUnicode(53);
     memChiTietExcel.EnableControls;
     memExcelField.EnableControls;
     result := 0;
     Exit;
  end;
  gridChiTietExcel.OptionsBehavior := gridChiTietExcel.OptionsBehavior + [edgoStoreToIniFile];
  gridChiTietExcel.LoadFromIniFile(gridChiTietExcel.IniFileName);
  memExcelField.EnableControls;
  try
    memChiTietExcel.Open;
    memChiTietExcel.First;
    frmMain.SetStatusBarPrgDisplay(0,txtRWChamCong.Count - 1);
    for i:=0 to txtRWChamCong.Count - 1 do
    begin
      if varTemp = true then
      begin
        memChiTietExcel.Append;
      end;
      varTemp := false;
      txtRWRecord := ProcessRecord(txtRWChamCong.Strings[i],#9);
      for j:=0 to txtRWRecord.Count - 1 do
      begin
        if txtRWRecord.Strings[j] <> '' then
          varTemp := true;
        memChiTietExcel.FieldByName('COL'+IntToStr(j + 1)).Value:= txtRWRecord.Strings[j];
      end;
      if varTemp = true then
      begin
        memChiTietExcel.Post;
      end;
      frmMain.BarPrgStepIt;
    end;
  except
    memChiTietExcel.Cancel;
    ShowMessageUnicode(50);
    memChiTietExcel.EnableControls;
    result := 0;
    Exit;
  end;
  memChiTietExcel.EnableControls;
  gridChiTietExcel.Columns[0].SummaryFooterType:=cstCount;
  if gridWidth < gridChiTietExcel.Width then
  begin
    gridChiTietExcel.OptionsView := gridChiTietExcel.OptionsView + [edgoAutoWidth];
  end
  else
  begin
    gridChiTietExcel.OptionsView := gridChiTietExcel.OptionsView - [edgoAutoWidth];
  end;
  ShowMessageUnicode(39);
  result := 1;
end;

procedure TfrmWorkTimeMachineManager.acReadExcelFileExecute(
  Sender: TObject);
begin
  inherited;
  if varFileType = '0' then
  begin
    ReadExcelFile();
  end
  else if varFileType ='1' then
  begin
    ReadTextFile();
  end;
end;

procedure TfrmWorkTimeMachineManager.acConfigExecute(Sender: TObject);
begin
  inherited;
  //lblListCaption.Caption := '';
  pageWorkTimeControl.ActivePage := tabConfig;
  if qryMachineStyle.Active then
    qryMachineStyle.Close;
  qryMachineStyle.ParamByName('VAR_MACHINE_MODEL').Value := varMachineModel;
  qryMachineStyle.Open;
  if qryTableName.Active then
    qryTableName.Close;
  qryTableName.Open;
  if qryFieldName.Active then
    qryFieldName.Close;
  qryFieldName.Open;
  if qryConfig.Active then
    qryConfig.Close;
  qryConfig.Open;
  if qrySQLConfigList.Active then
    qrySQLConfigList.Close;
  qrySQLConfigList.Open;
  //frameToolbar1.SetDataSource(dsConfig);
end;

procedure TfrmWorkTimeMachineManager.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmWorkTimeMachineManager := nil;
end;

procedure TfrmWorkTimeMachineManager.frameToolbar1btnCloseClick(
  Sender: TObject);
begin
  pageWorkTimeControl.ActivePage := tabExcelControl;
end;

procedure TfrmWorkTimeMachineManager.qryMachineStyleVALUE_ROW_AREAChange(
  Sender: TField);
begin
  inherited;
  qryMachineStyle.Post;
end;

procedure TfrmWorkTimeMachineManager.gridConfigFieldEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsConfig);
  frameToolbar1.dxlctrlDelete.Visible := true;
end;

procedure TfrmWorkTimeMachineManager.gridFieldNameDblClick(Sender: TObject);
begin
  inherited;
  //frameToolbar1.SetDataSource(dsConfig);
  qryConfig.Insert;
  qryConfigFIELD_NAME.Value := qryFieldNameRDBFIELD_NAME.Value;
  qryConfig.Post;

end;

procedure TfrmWorkTimeMachineManager.qryConfigAfterPost(DataSet: TDataSet);
begin
  inherited;
  dmMain.DefOnAfterPost(Dataset);
  qryConfig.Refresh;
end;

procedure TfrmWorkTimeMachineManager.gridConfigFieldEXCEL_FIELD_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  InitPopupControl('dxlcExcelField',self, sender,1, gridConfigField);
end;

procedure TfrmWorkTimeMachineManager.gridConfigFieldEXCEL_FIELD_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,memExcelField,qryConfig,
    'EXCEL_ID','EXCEL_FIELD_NAME','EXCEL_ID', Text);
end;

function TfrmWorkTimeMachineManager.GetFieldByName(field_name : string):string;
var
  return_name :string;
begin
  return_name := '';
  if qryConfig.Active then
    qryConfig.Close;
  qryConfig.Open;
  qryConfig.First;
  while not qryConfig.Eof do
  begin
    if qryConfigFIELD_NAME.Value = field_name then
    begin
      return_name := qryConfigEXCEL_FIELD_NAME.Value;
    end;
    qryConfig.Next;
  end;
  result:= return_name;
end;

function TfrmWorkTimeMachineManager.ProcessDateTime(inputValue : Variant):TDateTime;
var
  varDateTime : TDateTime;
  varStrTemp : String;
  varStrLen :Integer;
  varIndex : Integer;
  formatSettings:TFormatSettings;
begin
  formatSettings.ShortTimeFormat := 'HH:NN:SS';
  formatSettings.DecimalSeparator := '.';
  formatSettings.ThousandSeparator := '.';
  formatSettings.TimeSeparator := ':';
  formatSettings.ShortDateFormat := 'DD-MM-YYYY';
  formatSettings.DateSeparator := '-';

  varStrTemp := VarToStr(inputValue);
  //process Data datetime//
  //Case 1 DD/MM/YY PM HH:MM:SS
  varStrLen := Length(varStrTemp);
  if varStrLen <= 0 then
  begin
    Result := 0.0;
    Exit;
  end;
  varIndex := Pos('AM',varStrTemp);
  if (varIndex > 1) and (varIndex < varStrLen-2) then
  begin
    Delete(varStrTemp,varIndex,2);
    varStrTemp := varStrTemp + ' AM';
    //Insert(varStrTemp,' AM',varStrLen-2);
  end;
  varIndex := Pos('PM',varStrTemp);
  if (varIndex > 1) and (varIndex < varStrLen-2) then
  begin
    Delete(varStrTemp,varIndex,2);
    varStrTemp := varStrTemp + ' PM';
    //Insert(varStrTemp,' PM',varStrLen-2);
  end;
  //process Data datetime//
  try
    varDateTime := StrToDateTime(varStrTemp,formatSettings);
  Except
    varDateTime := 0.0;
  end;
  Result := varDateTime;
end;

procedure TfrmWorkTimeMachineManager.acInsertDuLieuExecute(
  Sender: TObject);
var from_row,end_row,i,j,to_row:integer;
    param_name:string;
    value_name:string;
    error_count:integer;
    value_temp:string;
    variant_temp:Variant;
    dlg_Result :integer;
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  if qryMachineStyle.Active then
    qryMachineStyle.Close;
  qryMachineStyle.ParamByName('VAR_MACHINE_MODEL').Value := varMachineModel;
  qryMachineStyle.Open;
  if qryConfig.Active then
    qryConfig.Close;
  qryConfig.Open;
  if qrySQLConfigList.Active then
    qrySQLConfigList.Close;
  qrySQLConfigList.Open;
  try
    from_row := qryMachineStyleVALUE_ROW_AREA_BEGIN.Value - 1;
    to_row := qryMachineStyleVALUE_ROW_AREA_END.Value - 1;
  except
    from_row:=0;
    to_row:=0;
  end;
  try
    end_row:=memChiTietExcel.RecordCount-1;
  except
    end_row:=0;
  end;
  if end_row < to_row then
  begin
    to_row := end_row;
  end;
  if from_row > to_row then
  begin
    i:=from_row;
    from_row:=to_row;
    to_row:=i;
  end;

  memChiTietExcel.DisableControls;
  i:=from_row;
  error_count:=0;
  memoErrorrReport.Lines.Clear;
  frmMain.SetStatusBarPrgDisplay(0,(to_row-from_row)*(qrySQLConfigList.RecordCountAll));
  qrySQLConfigList.First;
  while not qrySQLConfigList.Eof do
  begin
    //g�n SQL statement
    if qryExecute.Active then qryExecute.Close;
       qryExecute.SQL.Text := qrySQLConfigListSQL_STATEMENT.Value;
    try
       qryExecute.Prepare;
    except
       ShowMessageUnicode(11);
       Screen.Cursor:=crDefault;
       Exit;
    end;
    if (i>=0) and (i<memChiTietExcel.RecordCount) then
    begin
      memChiTietExcel.First;
      memChiTietExcel.MoveBy(i);
      while (not memChiTietExcel.Eof) and(i <= to_row) do
      begin
        if qryExecute.ParamCount>0 then
        try
          for j:=0 to qryExecute.ParamCount-1 do
          begin
            param_name:=qryExecute.Params[j].Name;
            value_name := GetFieldByName(param_name);
            try
              variant_temp := memChiTietExcel.FieldByName(value_name).Value;
              if qryExecute.ParamByName(param_name).IsDateTime then
              begin
                qryExecute.ParamByName(param_name).Value := ProcessDateTime(variant_temp);
              end
              else
              begin
                qryExecute.ParamByName(param_name).Value := variant_temp;
              end;
            except
              value_temp := '';
            end;
          end;
          try
            dmMain.ExecuteSQL(qryExecute);
          except
            Inc(error_count);
            memoErrorrReport.Lines.Add(UTF8Decode('Lỗi thực thi câu lệnh SQL tại dòng : '+IntTostr(memChiTietExcel.RecNo)));
          end;
        except
          Inc(error_count);
          memoErrorrReport.Lines.Add(UTF8Decode('Lỗi tham số tại dòng : '+IntTostr(memChiTietExcel.RecNo)));
        end;
        i:=i+1;
        memChiTietExcel.Next;
        frmMain.BarPrgStepIt;
        self.Repaint;
      end;
    qrySQLConfigList.Next;
    end;
  end;
  dlg_Result := ShowMessageUnicode('Cập nhật hoàn tất !'+#13+#10+
       'có '+IntToStr(error_count)+' lỗi'+#13+#10+'bạn có muốn lưu dữ liệu không? ',3,'');
  if dlg_Result = mrYes then
    tranExecute.CommitRetaining
  else
    tranExecute.RollbackRetaining;
  memChiTietExcel.EnableControls;
  Screen.Cursor:=crDefault;
  pageWorkTimeControl.ActivePage := tabResult;
end;

procedure TfrmWorkTimeMachineManager.acCheckSQLExecute(Sender: TObject);
begin
  inherited;
  if qryExecute.Active then qryExecute.Close;
    qryExecute.SQL.Text := memoSQLText.Lines.Text;
  try
    qryExecute.Prepare;
    acCheckSQL.Enabled := false;
  except
    ShowMessageUnicode(11);
    //MessageDlg('Error while preparing update SQL ! ', mtError, [mbOK], 0);
    Screen.Cursor:=crDefault;
  end;
end;

procedure TfrmWorkTimeMachineManager.acGenSQLExecute(Sender: TObject);
var
  str_FieldNameList :WideString;
  str_ParamNameList :WideString;
  str_SQL  :WideString;
begin
  inherited;
  str_FieldNameList := '(';
  str_ParamNameList := '(';
  qryFieldName.First;
  while not qryFieldName.Eof do
  begin
    str_FieldNameList := str_FieldNameList + Trim(qryFieldNameRDBFIELD_NAME.Value);
    str_ParamNameList := str_ParamNameList + ':' + Trim(qryFieldNameRDBFIELD_NAME.Value);
    qryFieldName.Next;
    if not qryFieldName.Eof then
    begin
      str_FieldNameList := str_FieldNameList + ',';
      str_ParamNameList := str_ParamNameList + ',';
    end;
  end;
  str_FieldNameList := str_FieldNameList + ')';
  str_ParamNameList := str_ParamNameList + ')';
  str_SQL := 'insert into '+ Trim(qryTableNameRDBRELATION_NAME.Value) + str_FieldNameList
  + ' values' + str_ParamNameList;
  if Length(str_SQL) < qrySQLConfigListSQL_STATEMENT.Size then
  begin
    qrySQLConfigListSQL_STATEMENT.Value := str_SQL;
    acCheckSQL.Enabled := true;
  end
  else
    ShowMessageUnicode(54);
end;

procedure TfrmWorkTimeMachineManager.memoSQLTextChange(Sender: TObject);
begin
  inherited;
  if acCheckSQL.Enabled = false then
    acCheckSQL.Enabled := true;
end;

procedure TfrmWorkTimeMachineManager.qryExecuteError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
///  inherited;
//Xoa Event onError default
end;

procedure TfrmWorkTimeMachineManager.gridDSTableEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsSQLConfigList);
  frameToolbar1.dxlctrlDelete.Visible := true;
end;

procedure TfrmWorkTimeMachineManager.qrySQLConfigListAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  qrySQLConfigList.RefreshKeys;
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TfrmWorkTimeMachineManager.qrySQLConfigListNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  qrySQLConfigListCONFIG_NAME.Value := qryTableNameRDBRELATION_NAME.Value;
end;

procedure TfrmWorkTimeMachineManager.dxseToRowEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsMachineStyle);
  frameToolbar1.dxlctrlDelete.Visible := false;
  frameToolbar1.dxlctrlInsert.Visible := false;
end;

procedure TfrmWorkTimeMachineManager.dxseFormRowEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsMachineStyle);
  frameToolbar1.dxlctrlDelete.Visible := false;
  frameToolbar1.dxlctrlInsert.Visible := false;
end;

procedure TfrmWorkTimeMachineManager.acSystemFunctionExecute(
  Sender: TObject);
begin
  inherited;
  if elcbSystemFuction.Checked then
  begin
    gridTableName.Enabled := true;
    gridFieldName.Enabled := true;
    gridDSTable.Enabled := true;
    memoSQLText.Enabled := true;
    splitterRight.ControlBottomRight.Show;
    splitterLeft.ControlTopLeft.Show;
  end
  else
  begin
    gridTableName.Enabled := false;
    gridFieldName.Enabled := false;
    gridDSTable.Enabled := false;
    memoSQLText.Enabled := false;
    splitterRight.ControlBottomRight.Hide;
    splitterLeft.ControlTopLeft.Hide;
  end;
end;

procedure TfrmWorkTimeMachineManager.beTenTapTinButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
 //////////// ac
end;

procedure TfrmWorkTimeMachineManager.gridExcelFieldDblClick(
  Sender: TObject);
begin
  inherited;
  PopupProcess(self,true,sender);
end;

end.
