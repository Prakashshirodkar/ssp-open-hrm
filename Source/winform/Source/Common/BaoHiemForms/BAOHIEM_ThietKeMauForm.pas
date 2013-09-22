//******************************************************************//
//************** Create form by THUYPTP - 04/09/2009 ***************//
//******************************************************************//
unit BAOHIEM_ThietKeMauForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  dxLayoutControl, dxTL, dxCntner, cxControls, dxBar, DBActns, ActnList,
  IB_Components, ImgList, dxEditor, dxEdLib, dxDBELib, ElPanel, ElSplit,
  dxDBTLCl, dxGrClEx, dxDBCtrl, dxDBGrid, ElEdits, ElBtnEdit, ElMemoCombo,
  ElPgCtl, ExtCtrls, SSP_Script, DB, IBODataset;

type
  TfrmBAOHIEM_ThietKeMau = class(TfrmBase)
    dxlcTopGroup_Root: TdxLayoutGroup;
    dxlcTop: TdxLayoutControl;
    dxlcTopGroup1: TdxLayoutGroup;
    gridDemo: TdxTreeList;
    gridDemoEMPLOYEE_NO: TdxTreeListColumn;
    gridDemoFULL_NAME: TdxTreeListColumn;
    dxlcTopItem1: TdxLayoutItem;
    imlIcon: TImageList;
    transaction: TIB_Transaction;
    dxBarManager1: TdxBarManager;
    dxAddColumn: TdxBarButton;
    dxDeleteColumn: TdxBarButton;
    dxCheckSyntax: TdxBarButton;
    dxMathFunction: TdxBarButton;
    dxSystemFunction: TdxBarButton;
    dxIFStatement: TdxBarButton;
    dxSQLStatement: TdxBarButton;
    dxOtherFormular: TdxBarButton;
    dxInsertColumn: TdxBarButton;
    dxCommit: TdxBarButton;
    dxCancel: TdxBarButton;
    dxDinhnghiaHeader: TdxBarButton;
    dxXoaHeader: TdxBarButton;
    dxSaochepPALuong: TdxBarButton;
    ActionList1: TActionList;
    acInitGridColumn: TAction;
    acAppendColumn: TAction;
    acInitBandColumn: TAction;
    acInsertColumn: TAction;
    acCheckSyntax: TAction;
    acOtherFormular: TAction;
    acMathFunction: TAction;
    acSystemFunction: TAction;
    acIFStatement: TAction;
    acSQLStatement: TAction;
    acCancel: TDataSetCancel;
    acPost: TDataSetPost;
    acDelete: TDataSetDelete;
    acDinhnghiaHeader: TAction;
    acDinhnghiaHamso: TAction;
    acSaochepMau: TAction;
    dxBarDockControl1: TdxBarDockControl;
    panelMain: TPanel;
    panelRight: TPanel;
    dxLayoutControl1: TdxLayoutControl;
    pageUtility: TElPageControl;
    tabMessage: TElTabSheet;
    memoInfo: TElMemoCombo;
    tabMathFunction: TElTabSheet;
    gridMathFunction: TdxDBGrid;
    gridMathFunctionHAMSO_ID: TdxDBGridColumn;
    gridMathFunctionHAMSO_KYHIEU: TdxDBGridColumn;
    gridMathFunctionHAMSO_TIEUDE: TdxDBGridPopupColumn;
    tabFormular: TElTabSheet;
    gridCongthuc: TdxDBGrid;
    gridCongthucCT_KYHIEU: TdxDBGridColumn;
    gridCongthucCT_TIEUDE: TdxDBGridColumn;
    gridCongthucCT_BIEUTHUC: TdxDBGridColumn;
    tabSystemFunction: TElTabSheet;
    gridSysFunction: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridPopupColumn1: TdxDBGridPopupColumn;
    dxLayoutGroup1: TdxLayoutGroup;
    dxlcUtility: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    ElSplitter1: TElSplitter;
    panelLeft: TPanel;
    dxlcMain: TdxLayoutControl;
    dxCT_TIEUDE: TdxDBEdit;
    dxCT_BIEUTHUC: TdxDBMemo;
    dxCT_KYHIEU: TdxDBEdit;
    dxCT_KieuDuLieu: TdxDBImageEdit;
    dxCT_KieuNhapLieu: TdxDBImageEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    dxlcMainGroup3: TdxLayoutGroup;
    dxlcMainGroup4: TdxLayoutGroup;
    dxlcMainGroup5: TdxLayoutGroup;
    dxlcMainItem5: TdxLayoutItem;
    dxlcMainItem2: TdxLayoutItem;
    dxlcMainGroup6: TdxLayoutGroup;
    dxlcMainItem6: TdxLayoutItem;
    dxlcMainItem7: TdxLayoutItem;
    dxlcMainItem3: TdxLayoutItem;
    qryExecute: TIBOQuery;
    qryCongthuc: TIBOQuery;
    dsCongthuc: TDataSource;
    qrySession: TIBOQuery;
    dsSession: TDataSource;
    qrySessionMAU_ID: TIntegerField;
    qrySessionS_MA: TIntegerField;
    qrySessionS_TIEUDE: TWideStringField;
    qrySessionS_BEFORE_SCRIPT: TWideStringField;
    qrySessionS_AFTER_SCRIPT: TWideStringField;
    qrySessionS_REFRESH: TIntegerField;
    qrySessionS_EXEC_BEFORE: TIntegerField;
    qrySessionS_EXEC_AFTER: TIntegerField;
    qryCongthucMAU_ID: TIntegerField;
    qryCongthucCT_MA: TIntegerField;
    qryCongthucCT_KYHIEU: TWideStringField;
    qryCongthucCT_TIEUDE: TWideStringField;
    qryCongthucCT_KIEUDULIEU: TWideStringField;
    qryCongthucCT_BIEUTHUC: TWideStringField;
    qryCongthucCT_HINHTHUC_NHAPLIEU: TWideStringField;
    qryCongthucCT_THUTU_TINH: TIntegerField;
    qryCongthucCT_THUTU_HIENTHI: TIntegerField;
    qryCongthucCT_SESSION: TIntegerField;
    qryCongthucCT_WIDTH: TIntegerField;
    qryMathFunction: TIBOQuery;
    qryMathFunctionHAMSO_ID: TWideStringField;
    qryMathFunctionHAMSO_TIEUDE: TWideStringField;
    qryMathFunctionHAMSO_KYHIEU: TWideStringField;
    qryMathFunctionHAMSO_HUONGDAN: TWideStringField;
    dsMathFunction: TDataSource;
    qryCongthucKhac: TIBOQuery;
    dsCongthucKhac: TDataSource;
    qrySysFunction: TIBOQuery;
    qrySysFunctionHAMSO_ID: TWideStringField;
    qrySysFunctionHAMSO_TIEUDE: TWideStringField;
    qrySysFunctionHAMSO_KYHIEU: TWideStringField;
    qrySysFunctionHAMSO_HUONGDAN: TWideStringField;
    dsSysFunction: TDataSource;
    qryCongthucKhacMAU_ID: TIntegerField;
    qryCongthucKhacCT_MA: TIntegerField;
    qryCongthucKhacCT_KYHIEU: TWideStringField;
    qryCongthucKhacCT_TIEUDE: TWideStringField;
    qryCongthucKhacCT_KIEUDULIEU: TWideStringField;
    qryCongthucKhacCT_BIEUTHUC: TWideStringField;
    qryCongthucKhacCT_HINHTHUC_NHAPLIEU: TWideStringField;
    qryCongthucKhacCT_THUTU_TINH: TIntegerField;
    qryCongthucKhacCT_THUTU_HIENTHI: TIntegerField;
    CopyMemo: TdxMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acInitBandColumnExecute(Sender: TObject);
    procedure acInitGridColumnExecute(Sender: TObject);
    procedure RefreshDemoGrid;
    procedure acDinhnghiaHeaderExecute(Sender: TObject);
    procedure acDinhnghiaHeaderUpdate(Sender: TObject);
    procedure qryCongthucBeforePost(DataSet: TDataSet);
    procedure acCheckSyntaxExecute(Sender: TObject);
    function CheckSyntax: boolean;
    procedure qryCongthucAfterPost(DataSet: TDataSet);
    procedure qryCongthucBeforeDelete(DataSet: TDataSet);
    procedure qryCongthucAfterDelete(DataSet: TDataSet);
    procedure gridDemoColumnClick(Sender: TObject;
      Column: TdxTreeListColumn);
    procedure acInsertColumnExecute(Sender: TObject);
    procedure acInsertColumnUpdate(Sender: TObject);
    procedure acAppendColumnUpdate(Sender: TObject);
    procedure acAppendColumnExecute(Sender: TObject);
    procedure gridDemoCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      const AText: WideString; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure PasteString(str: string);
    procedure gridSysFunctionDblClick(Sender: TObject);
    procedure qryCongthucBeforeCancel(DataSet: TDataSet);
    procedure qryCongthucAfterCancel(DataSet: TDataSet);
    procedure acIFStatementExecute(Sender: TObject);
    procedure acSQLStatementExecute(Sender: TObject);
    procedure gridDemoHeaderMoved(Sender: TObject;
      Column: TdxTreeListColumn);
    procedure gridCongthucDblClick(Sender: TObject);
    procedure acMathFunctionExecute(Sender: TObject);
    procedure acSystemFunctionExecute(Sender: TObject);
    procedure acOtherFormularExecute(Sender: TObject);
    procedure pageUtilityChange(Sender: TObject);
    procedure gridDemoBandClick(Sender: TObject; ABand: TdxTreeListBand);
    procedure gridDemoCustomDrawBand(Sender: TObject;
      ABand: TdxTreeListBand; ACanvas: TCanvas; ARect: TRect;
      var AText: WideString; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure gridDemoChangedColumnsWidth(Sender: TObject);
    procedure gridDemoDragEndHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; P: TPoint;
      var NewPosInfo: TdxHeaderPosInfo; var Accept: Boolean);
    procedure qryCongthucBeforeEdit(DataSet: TDataSet);
    procedure gridDemoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure gridMathFunctionDblClick(Sender: TObject);
    procedure qryCongthucNewRecord(DataSet: TDataSet);
    procedure gridSysFunctionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridMathFunctionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    CT_KYHIEU_OLD, CT_KYHIEU_NEW: WideString;
    CT_KIEUDULIEU_OLD, CT_KIEUDULIEU_NEW: WideString;
    ActionState: string;
    F_CurColumn: TdxTreeListColumn;
    F_CurBand: TdxTreeListBand;
    FScript: TSSP_Script;
    previous_col_index : integer;
  public
    { Public declarations }
    MAU_KYHIEU: widestring;
    MAU_ID: integer;
    procedure AlterFieldDomain(field_name, new_domain: widestring);
    procedure AlterFieldName(old_name, new_name: widestring);
    procedure CreateField(field,domain: string);
    constructor Create(AOwner: TComponent);
  end;

var
  frmBAOHIEM_ThietKeMau: TfrmBAOHIEM_ThietKeMau;

implementation

uses BAOHIEM_DinhNghiaForm, BAOHIEM_SessionForm, SSP_Library, MainDM,
  Math, UnicodeConvert, StrUtils, BAOHIEM_DataModule, BAOHIEM_HamSoForm;

{$R *.dfm}

procedure TfrmBAOHIEM_ThietKeMau.AlterFieldDomain(field_name, new_domain:
  widestring);
begin
  try
    qryExecute.SQL.Text := 'update RDB$RELATION_FIELDS set ' +
      ' RDB$FIELD_SOURCE = ''' + new_domain + ''' where ' +
      ' (RDB$FIELD_NAME = ''' + field_name + ''') and ' +
      ' (RDB$RELATION_NAME = ''HR_BAOHIEM_' + UpperCase(MAU_KYHIEU) + ''')';
    qryExecute.ExecSQL;
  except
    ShowMessage('Error: can not alter field domain');
  end;
end;

procedure TfrmBAOHIEM_ThietKeMau.AlterFieldName(old_name, new_name: widestring);
begin
  try
    qryExecute.SQL.Text := 'ALTER TABLE HR_BAOHIEM_' + UpperCase(MAU_KYHIEU) + ' ALTER ' +
      CT_KYHIEU_OLD + ' TO ' + CT_KYHIEU_NEW;
    qryExecute.ExecSQL;

    F_CurColumn.Name := new_name;
  except
    ShowMessage('Error: can not rename field');
  end;
end;

procedure TfrmBAOHIEM_ThietKeMau.CreateField(field,domain: string);
begin
  try
    qryExecute.SQL.Text := 'ALTER TABLE HR_BAOHIEM_' + UpperCase(MAU_KYHIEU) + ' ADD ' +
      field + ' ' + domain;
    qryExecute.ExecSQL;
  except
    ShowMessage('Error: Can not create field ');
    //added by THUYPTP - 19/03/2009
    //ShowMessageUnicode(102);
    qryCongthuc.Cancel;
    abort;
  end;
end;
//=============================================================

constructor TfrmBAOHIEM_ThietKeMau.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  gridDemo.Items[0].Values[gridDemoEMPLOYEE_NO.Index] := 'NV-001';
  gridDemo.Items[1].Values[gridDemoEMPLOYEE_NO.Index] := 'NV-002';
  gridDemo.Items[2].Values[gridDemoEMPLOYEE_NO.Index] := 'NV-003';
  gridDemo.Items[3].Values[gridDemoEMPLOYEE_NO.Index] := 'NV-004';
  gridDemo.Items[4].Values[gridDemoEMPLOYEE_NO.Index] := 'NV-005';

  gridDemo.Items[0].Values[gridDemoFULL_NAME.Index] :=
    UTF8Decode('Trần Mạnh Hùng');
  gridDemo.Items[1].Values[gridDemoFULL_NAME.Index] :=
    UTF8Decode('Lê Nguyễn Lan Phương');
  gridDemo.Items[2].Values[gridDemoFULL_NAME.Index] :=
    UTF8Decode('Hoàng Quốc Thảo');
  gridDemo.Items[3].Values[gridDemoFULL_NAME.Index] :=
    UTF8Decode('Nguyễn Trọng Nhân');
  gridDemo.Items[4].Values[gridDemoFULL_NAME.Index] :=
    UTF8Decode('Lê Đình Nghĩa');

  //Added by THUYPTP - 17/04/2009
  previous_col_index := 1;
  //Het


  MAU_KYHIEU := frmBAOHIEM_DinhNghia.memMenuListMENU_ID.Value;
  MAU_ID := frmBAOHIEM_DinhNghia.memMenuListMAUBHXH_MA.Value;
  acInitBandColumn.Execute;
  acInitGridColumn.Execute;
  qryMathFunction.Open;
  qrySysFunction.Open;
  qryCongthucKhac.Open;

  gridMathfunction.OptionsBehavior := gridMathfunction.OptionsBehavior +
    [edgoEditing];
  gridMathFunctionHAMSO_TIEUDE.DisableEditor := false;

  FScript := TSSP_Script.Create(self);

  pageUtility.ShowTabs := FALSE;
  pageUtility.ActivePage := tabMessage;

end;

procedure TfrmBAOHIEM_ThietKeMau.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryCongthuc.Close;
  qrySession.Close;
  Action := caFree;
  frmBAOHIEM_ThietKeMau := nil;
  if Assigned(FScript) then
    FScript.Free;
end;

procedure TfrmBAOHIEM_ThietKeMau.acInitBandColumnExecute(Sender: TObject);
begin
  inherited;
  if qrySession.Active then
    qrySession.Close;
  qrySession.ParamByName('MAU_ID').Value := MAU_ID;
  qrySession.Open;
  if qrySession.IsEmpty then
    exit;
  ActionState := 'InitBand';
  qrySession.First;
  while not qrySession.Eof do
  begin
    F_CurBand := gridDemo.Bands.Add;
    F_CurBand.Caption := qrySessionS_TIEUDE.Value;
    F_CurBand.Alignment := taCenter;
    qrySession.Next;
  end;
  ActionState := '';
end;

procedure TfrmBAOHIEM_ThietKeMau.acInitGridColumnExecute(Sender: TObject);
begin
  inherited;
  if qryCongthuc.Active then
    qryCongthuc.Close;
  qryCongthuc.ParamByName('MAU_ID').Value := MAU_ID;
  qryCongthuc.Open;
  if qryCongthuc.IsEmpty then
    exit;
  ActionState := 'InitGridColumn';
  qryCongthuc.First;
  while not qryCongthuc.Eof do
  begin
    F_CurColumn := gridDemo.CreateColumn(TdxTreeListColumn);
    F_CurColumn.Caption := qryCongthucCT_TIEUDE.Value;
    F_CurColumn.Name := qryCongthucCT_KYHIEU.AsString;
    F_CurColumn.HeaderAlignment := taCenter;
    F_CurColumn.BandIndex := qryCongthucCT_SESSION.Value;
    F_CurColumn.Width := qryCongthucCT_WIDTH.Value;
    F_CurBand := gridDemo.Bands[qryCongthucCT_SESSION.Value];
    if qryCongthucCT_HINHTHUC_NHAPLIEU.Value = 'TUDONG_CAPNHAT' then
      F_CurColumn.Tag := 1
    else if qryCongthucCT_HINHTHUC_NHAPLIEU.Value = 'TINHTOAN' then
      F_CurColumn.Tag := 2
    else
      F_CurColumn.Tag := 0;

    //Added by THUYPTP - 17/04/2009
    try
      previous_col_index := F_CurColumn.Index;
    finally
    end;
    //Het
    qryCongthuc.Next;

  end;

  ActionState := '';
end;

procedure TfrmBAOHIEM_ThietKeMau.RefreshDemoGrid;
var
  i: integer;
begin
  for i := gridDemo.Bands.Count - 1 downto 1 do
    gridDemo.Bands.Delete(i);
  acInitBandColumn.Execute;
  acInitGridColumn.Execute;
end;

procedure TfrmBAOHIEM_ThietKeMau.acDinhnghiaHeaderExecute(Sender: TObject);
var
  i: integer;  
begin
  inherited;
  ShowModalForm(TfrmBAOHIEM_Session, frmBAOHIEM_Session);
  for i := gridDemo.ColumnCount - 1 downto 0 do
  begin
    if gridDemo.Columns[i].Tag <> -1 then
      gridDemo.Columns[i].Free;
  end;
  RefreshDemoGrid;
end;

procedure TfrmBAOHIEM_ThietKeMau.acDinhnghiaHeaderUpdate(Sender: TObject);
begin
  inherited;
  acDinhnghiaHeader.Enabled :=  not (qryCongthuc.State in [dsEdit, dsInsert]); 
end;

function TfrmBAOHIEM_ThietKeMau.CheckSyntax: boolean;
var
  i: integer;
begin
  inherited;
  {if dmLuong.PA_KYHIEU <> PA_KYHIEU then
    dmLuong.PA_KYHIEU := PA_KYHIEU;}
  result := false;
  qryCongthucCT_KYHIEU.FocusControl;
  //Khai bao cac bien
  memoInfo.Lines.Insert(0, '-------------------------');
  if (Trim(qryCongthucCT_BIEUTHUC.AsString) = '') and
    (qryCongthucCT_HINHTHUC_NHAPLIEU.Value <> 'TINHTOAN') then
  begin
    result := true;
    memoInfo.Lines.Insert(0, UTF8Decode('Biểu thức hợp lệ !'));
  end
  else
  begin
    dmBAOHIEM.InitIdentifier(FScript, true);
    for i := 0 to gridDemo.ColumnCount - 1 do
    begin
      if gridDemo.Columns[i].BandIndex > 0 then
        FScript.AddConstant(gridDemo.Columns[i].Name, 1);
    end;
    FScript.Script := qryCongthucCT_BIEUTHUC.AsString;

    try
      FScript.Test_Script
    except
    end;
    if FScript.LastError > 0 then
    begin
      memoInfo.Lines.Insert(0, utf8Decode(sts[FScript.LastError]) + ' : ' +
        FScript.ErrorToken);
      result := false;
    end
    else
    begin
      result := true;
      memoInfo.Lines.Insert(0, UTF8Decode('Biểu thức hợp lệ !'));
    end
  end;
  memoInfo.Lines.Insert(0, qryCongthucCT_KYHIEU.Value + ' = ' +
    qryCongthucCT_BIEUTHUC.Value);
  memoInfo.Lines.Insert(0, '#---' + DateTimeToText(Now) + '---');
  pageUtility.ActivePage := tabMessage;
end;

procedure TfrmBAOHIEM_ThietKeMau.qryCongthucBeforePost(DataSet: TDataSet);
var
  kitu_so : integer;
  str_temp: string;
begin
  inherited;
  if ActionState = 'UpdateWidth' then
  begin
    // Cap nhat lai do rong cua cac Column
    dmMain.DefOnBeforePost(Dataset);
  end
  else if ActionState = 'UpdateColumnIndex' then
  begin
    // Cap nhat lai thu tu hien thi cua cac Column
    dmMain.DefOnBeforePost(Dataset);
  end
  else
  begin
    UnicodeToASCCII(VarToWideStr(WideUpperCase(qryCongthucCT_KYHIEU.Value)), str_temp);

    str_temp := Copy(str_temp,1,1);
    kitu_so := StrToIntDef(str_temp,-1);
    if kitu_so >= 0 then
    begin
      ShowMessageUnicode(104);
      abort;
    end;
    try
      qryCongthucCT_KYHIEU.Value := WideUpperCase(qryCongthucCT_KYHIEU.Value);
      //if not Assigned(frmLuong_SaochepPA) then
      begin
        qryCongthucCT_SESSION.Value := F_CurColumn.BandIndex;
        qryCongthucCT_WIDTH.Value := F_CurColumn.Width;
        qryCongthucCT_THUTU_HIENTHI.Value := F_CurColumn.ColIndex;
      end;

      CT_KYHIEU_OLD := Trim(VarToStr(qryCongthucCT_KYHIEU.OldValue));
      CT_KYHIEU_NEW := Trim(VarToStr(qryCongthucCT_KYHIEU.NewValue));
      CT_KIEUDULIEU_OLD := Trim(VarToStr(qryCongthucCT_KIEUDULIEU.OldValue));
      CT_KIEUDULIEU_NEW := Trim(VarToStr(qryCongthucCT_KIEUDULIEU.NewValue));

      dmMain.DefOnBeforePost(Dataset);
      if Trim(VarToStr(qryCongthucCT_BIEUTHUC.OldValue)) <>
        Trim(VarToStr(qryCongthucCT_BIEUTHUC.NewValue)) then
        CheckSyntax;
      if (ActionState = 'CreateNewColumn') or (ActionState = 'InsertNewColumn') then  //Edited by THUYPTP - 17/04/2009
      begin
        if CT_KIEUDULIEU_NEW = 'DOUBLE' then
          CreateField(CT_KYHIEU_NEW, 'DM_DOUBLE')
        else if CT_KIEUDULIEU_NEW = 'VARCHAR' then
          CreateField(CT_KYHIEU_NEW,'DM_VARCHAR127')
        else if CT_KIEUDULIEU_NEW = 'DATE' then
          CreateField(CT_KYHIEU_NEW,'DM_DATE')
        else if CT_KIEUDULIEU_NEW = 'NOTATION' then
          CreateField(CT_KYHIEU_NEW,'DM_NOTATION')
        else
        begin
          ShowMessage('Unknown field type');
          Exit;
        end;
      end
      else if ActionState = 'EditColumn' then
      begin
        if (CT_KYHIEU_OLD <> CT_KYHIEU_NEW) then
          AlterFieldName(CT_KYHIEU_OLD, CT_KYHIEU_NEW);
        if CT_KIEUDULIEU_OLD <> CT_KIEUDULIEU_NEW then
        begin
          if CT_KIEUDULIEU_NEW = 'DOUBLE' then
            AlterFieldDomain(CT_KYHIEU_NEW, 'DM_DOUBLE')
          else if CT_KIEUDULIEU_NEW = 'VARCHAR' then
            AlterFieldDomain(CT_KYHIEU_NEW, 'DM_VARCHAR127')
          else if CT_KIEUDULIEU_NEW = 'DATE' then
            AlterFieldDomain(CT_KYHIEU_NEW, 'DM_DATE')
          else if CT_KIEUDULIEU_NEW = 'NOTATION' then
            AlterFieldDomain(CT_KYHIEU_NEW,'DM_NOTATION')
        end;
      end;
    except
      ActionState := '';
      transaction.RollbackRetaining;
      Abort;
    end;
  end;
end;

procedure TfrmBAOHIEM_ThietKeMau.acCheckSyntaxExecute(Sender: TObject);
begin
  inherited;
  CheckSyntax;
end;

procedure TfrmBAOHIEM_ThietKeMau.qryCongthucAfterPost(DataSet: TDataSet);
begin
  inherited;
  dmMain.DefOnAfterPost(Dataset);
  if (ActionState = 'EditColumn') or
    (ActionState = 'CreateNewColumn') or
    (ActionState = 'InsertNewColumn') then //Added by THUYPTP - 17/04/2009
  begin
    transaction.CommitRetaining;
    F_CurColumn.Caption := qryCongthucCT_TIEUDE.Value;
    F_CurColumn.Name := qryCongthucCT_KYHIEU.AsString;
    if qryCongthucCT_HINHTHUC_NHAPLIEU.Value = 'TUDONG_CAPNHAT' then
      F_CurColumn.Tag := 1
    else if qryCongthucCT_HINHTHUC_NHAPLIEU.Value = 'TINHTOAN' then
      F_CurColumn.Tag := 2
    else
      F_CurColumn.Tag := 0;

    //Added by THUYPTP - 17/04/2009
    previous_col_index := F_CurColumn.Index;
    if (ActionState = 'InsertNewColumn') then
    begin
      qryExecute.SQL.Clear;
      qryExecute.SQL.Text  := 'update HR_BAOHIEM_CONGTHUC ' +
                        'Set CT_THUTU_HIENTHI = CT_THUTU_HIENTHI + 1 ' +
                        'where CT_THUTU_HIENTHI >= :CT_THUTU_HIENTHI ' +
                        'and CT_SESSION = :CT_SESSION ' +
                        'and CT_KYHIEU <> :CT_KYHIEU ' +
                        'and MAU_ID = :MAU_ID';
      qryExecute.ParamByName('CT_THUTU_HIENTHI').Value := qryCongthucCT_THUTU_HIENTHI.Value;
      qryExecute.ParamByName('CT_SESSION').Value := qryCongthucCT_SESSION.Value;
      qryExecute.ParamByName('CT_KYHIEU').Value := qryCongthucCT_KYHIEU.Value;
      qryExecute.ParamByName('MAU_ID').Value := qryCongthucMAU_ID.Value;
      qryExecute.ExecSQL;
      try
        transaction.Commit;
      except
        ShowMessageUnicode(107); 
      end;
    end;
    ActionState := '';
  end;
end;

procedure TfrmBAOHIEM_ThietKeMau.qryCongthucBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  CT_KYHIEU_OLD := Trim(qryCongthucCT_KYHIEU.AsString);
  dmMain.DefOnBeforeDelete(Dataset);
  try
    qryExecute.SQL.Text := ' alter table "HR_BAOHIEM_' + UpperCase(MAU_KYHIEU) + '" drop "' +
      CT_KYHIEU_OLD + '"';
    qryExecute.ExecSQL;
  except
    ShowMessage('Error: can not drop field');
    transaction.RollbackRetaining;
    Abort;
  end;
end;

procedure TfrmBAOHIEM_ThietKeMau.qryCongthucAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dmMain.DefOnAfterDelete(Dataset);
  transaction.CommitRetaining;
  F_CurColumn.Free;
  F_CurColumn := gridDemo.ColumnByName(qryCongthucCT_KYHIEU.Value);
end;

procedure TfrmBAOHIEM_ThietKeMau.qryCongthucBeforeCancel(
  DataSet: TDataSet);
begin
  inherited;
  if qryCongthuc.State in [dsInsert] then
  begin
    F_CurColumn.Free;
    F_CurColumn := nil;
  end;
end;

procedure TfrmBAOHIEM_ThietKeMau.qryCongthucAfterCancel(DataSet: TDataSet);
begin
  inherited;
  if not Assigned(F_CurColumn) then
    F_CurColumn := gridDemo.ColumnByName(qryCongthucCT_KYHIEU.Value)
end;

procedure TfrmBAOHIEM_ThietKeMau.gridDemoColumnClick(Sender: TObject;
  Column: TdxTreeListColumn);
begin
  inherited;
  if (not qryCongthuc.IsEmpty) and
    (ActionState <> 'InitGridColumn') then
  begin
    if qryCongthuc.Locate('CT_KYHIEU', Column.Name, [loCaseInsensitive]) then
    begin
      F_CurColumn := Column;
      F_CurBand := gridDemo.Bands[F_CurColumn.BandIndex];
      gridDemo.Repaint;
    end;
    //Added by THUYPTP - 17/04/2009
    previous_col_index := Column.Index;
    //Het
  end;
end;

procedure TfrmBAOHIEM_ThietKeMau.gridDemoHeaderMoved(Sender: TObject;
  Column: TdxTreeListColumn);
begin
  inherited;
  if ActionState <> 'UpdateColumnIndex' then
    exit;

  if (qryCongthuc.State in [dsInsert, dsEdit]) then
    qryCongthuc.Post;
  if (qryCongthuc.State in [dsInsert, dsEdit]) then
    exit;

  qryCongthuc.DisableControls;
  qryCongthuc.First;
  while not qryCongthuc.Eof do
  begin
    qryCongthuc.Edit;
    qryCongthucCT_SESSION.Value :=
      gridDemo.ColumnByName(qryCongthucCT_KYHIEU.AsString).BandIndex;
    qryCongthucCT_THUTU_HIENTHI.Value :=
      gridDemo.ColumnByName(qryCongthucCT_KYHIEU.AsString).ColIndex;
    ActionState := 'UpdateColumnIndex';
    qryCongthuc.Post;
    qryCongthuc.Next;
  end;
  qryCongthuc.Locate('CT_KYHIEU', F_CurColumn.Name, []);
  qryCongthuc.EnableControls;
  ActionState := '';
end;

procedure TfrmBAOHIEM_ThietKeMau.acInsertColumnExecute(Sender: TObject);
begin
  inherited;
  ActionState := 'CreateNewColumn';
  qryCongthuc.Append;     
end;

procedure TfrmBAOHIEM_ThietKeMau.acInsertColumnUpdate(Sender: TObject);
begin
  inherited;
  acInsertColumn.Enabled := qryCongthuc.Active and (qrySession.IsEmpty = false)
     and (not (qryCongthuc.State in [dsInsert, dsEdit]));
end;

procedure TfrmBAOHIEM_ThietKeMau.acAppendColumnUpdate(Sender: TObject);
begin
  inherited;
  acAppendColumn.Enabled := qryCongthuc.Active and (qrySession.IsEmpty = false)
    and (not (qryCongthuc.State in [dsInsert, dsEdit]));
end;

procedure TfrmBAOHIEM_ThietKeMau.acAppendColumnExecute(Sender: TObject);
var
  col : integer;
  col_name : string;
begin
  inherited;
  //Added by THUYPTP - 17/04/2009
  ActionState := 'InsertNewColumn';
  qryCongthuc.Insert;
  col_name := gridDemo.Columns[gridDemo.ColumnCount -1].Name;
  col := gridDemo.ColumnCount -2;
  while col >= previous_col_index do
  begin
    gridDemo.Columns[col].Index := gridDemo.Columns[col].Index + 1;
    col := col - 1;
  end ;
  gridDemo.ColumnByName(col_name).index := previous_col_index;
  //Het
end;

procedure TfrmBAOHIEM_ThietKeMau.gridDemoCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; const AText: WideString; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
begin
  inherited;
  if AColumn.BandIndex = 0 then
    exit;
  if AColumn.Name = F_CurColumn.Name then
    AColor := clYellow
  else
  begin
    if AColumn.Tag = 1 then // TUDONG_CAPNHAT
      AColor := $00C1FFC1
    else if AColumn.Tag = 2 then // TINH TOAN
      AColor := $00A8D3FF
    else
      AColor := clWhite;
  end;
end;

procedure TfrmBAOHIEM_ThietKeMau.PasteString(str: string);
begin
  CopyMemo.Text := Str;
  CopyMemo.SelectAll;
  CopyMemo.CopyToClipboard;
  dxCT_BIEUTHUC.PasteFromClipboard;
  dxCT_BIEUTHUC.SetFocus;
end;

procedure TfrmBAOHIEM_ThietKeMau.gridSysFunctionDblClick(Sender: TObject);
begin
  inherited;
  PasteString(qrySysFunctionHAMSO_KYHIEU.AsString);
end;



procedure TfrmBAOHIEM_ThietKeMau.acIFStatementExecute(Sender: TObject);
begin
  inherited;
  PasteString('IF ' + #13#10 + 'THEN ' + #13#10 + 'ELSE');
end;

procedure TfrmBAOHIEM_ThietKeMau.acSQLStatementExecute(Sender: TObject);
begin
  inherited;
  PasteString('SELECT ' + #13#10 + 'FROM' + #13#10 + 'WHERE');
end;



procedure TfrmBAOHIEM_ThietKeMau.gridCongthucDblClick(Sender: TObject);
begin
  inherited;
  PasteString(qryCongthucKhacCT_KYHIEU.AsString);
end;

procedure TfrmBAOHIEM_ThietKeMau.acMathFunctionExecute(Sender: TObject);
begin
  inherited;
  pageUtility.ActivePage := tabMathFunction;
end;

procedure TfrmBAOHIEM_ThietKeMau.acSystemFunctionExecute(Sender: TObject);
begin
  inherited;
  pageUtility.ActivePage := tabSystemFunction;
end;

procedure TfrmBAOHIEM_ThietKeMau.acOtherFormularExecute(Sender: TObject);
begin
  inherited;
  pageUtility.ActivePage := tabFormular;
end;

procedure TfrmBAOHIEM_ThietKeMau.pageUtilityChange(Sender: TObject);
begin
  inherited;
  dxlcUtility.Caption := WideUpperCase(pageUtility.ActivePage.Caption);
end;

procedure TfrmBAOHIEM_ThietKeMau.gridDemoBandClick(Sender: TObject;
  ABand: TdxTreeListBand);
begin
  inherited;
  if (not qrySession.IsEmpty) and
    (ActionState <> 'InitBand') then
  begin
    if qrySession.Locate('S_MA', ABand.Index, [loCaseInsensitive]) then
    begin
      F_CurBand := ABand;
      gridDemo.Repaint;
    end;
  end
end;

procedure TfrmBAOHIEM_ThietKeMau.gridDemoCustomDrawBand(Sender: TObject;
  ABand: TdxTreeListBand; ACanvas: TCanvas; ARect: TRect;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if ABand = F_CurBand then
    AColor := clYellow
  else
    AColor := clBtnFace;
end;

procedure TfrmBAOHIEM_ThietKeMau.gridDemoChangedColumnsWidth(
  Sender: TObject);
begin
  inherited;
  inherited;
  if (qryCongthuc.State in [dsInsert, dsEdit]) then
    qryCongthuc.Post;
  if (qryCongthuc.State in [dsInsert, dsEdit]) then
    exit;
  ActionState := 'UpdateWidth';
  qryCongthuc.DisableControls;
  qryCongthuc.First;
  while not qryCongthuc.Eof do
  begin
    qryCongthuc.Edit;
    qryCongthucCT_WIDTH.Value :=
      gridDemo.ColumnByName(qryCongthucCT_KYHIEU.AsString).Width;
    qryCongthuc.Post;
    qryCongthuc.Next;
  end;
  qryCongthuc.Locate('CT_KYHIEU', F_CurColumn.Name, []);
  qryCongthuc.EnableControls;
  ActionState := '';
end;

procedure TfrmBAOHIEM_ThietKeMau.gridDemoDragEndHeader(Sender: TObject;
  AColumn: TdxTreeListColumn; P: TPoint; var NewPosInfo: TdxHeaderPosInfo;
  var Accept: Boolean);
begin
  inherited;
  if (NewPosInfo.BandIndex <> AColumn.BandIndex) or
    (NewPosInfo.ColIndex <> AColumn.ColIndex) then
    ActionState := 'UpdateColumnIndex';
end;

procedure TfrmBAOHIEM_ThietKeMau.qryCongthucBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if ActionState = '' then
    ACtionState := 'EditColumn';
end;

procedure TfrmBAOHIEM_ThietKeMau.gridDemoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  col: TdxTreeListColumn;
begin
  inherited;
  col := gridDemo.GetColumnAt(X, Y);
  if Assigned(col) and (Button = mbRight) then
  begin
    PasteString(col.Name);
  end;
end;

procedure TfrmBAOHIEM_ThietKeMau.gridMathFunctionDblClick(Sender: TObject);
begin
  inherited;
  PasteString(qryMathFunctionHAMSO_KYHIEU.AsString);
end;

procedure TfrmBAOHIEM_ThietKeMau.qryCongthucNewRecord(DataSet: TDataSet);
var
  col: integer;
begin
  inherited;
  //ActionState := 'CreateNewColumn';
  qryCongthucMAU_ID.Value := MAU_ID;
  F_CurColumn := gridDemo.CreateColumn(TdxTreeListColumn);
  F_CurColumn.HeaderAlignment := taCenter;

  //if not Assigned(frmLuong_SaochepPA) then
  begin
    if Assigned(F_CurColumn) then
      col := F_CurColumn.Index;
    qryCongthucCT_KIEUDULIEU.Value := 'DOUBLE';
    qryCongthucCT_HINHTHUC_NHAPLIEU.Value := 'TINHTOAN';
    if qryCongthuc.Recno < qryCongthuc.RecordCount - 1 then
      F_CurColumn.Index := col + 1;
    F_CurColumn.BandIndex := F_CurBand.Index;
    F_CurColumn.Width := 70;
    qryCongthucCT_THUTU_TINH.Value := F_CurColumn.Index;
    qryCongthucCT_KYHIEU.FocusControl;
    gridDemo.Repaint;
  end;
end;

procedure TfrmBAOHIEM_ThietKeMau.gridSysFunctionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  dmMain.DefOnGridKeyDown(sender, key, Shift);
  if (ssCtrl in Shift) and
    (key = VK_F2) then
  begin
    ShowModalForm(TfrmBAOHIEM_HamSo, frmBAOHIEM_HamSo);
    qrySysFunction.Refresh;
    qryMathFunction.Refresh;
  end;
end;
procedure TfrmBAOHIEM_ThietKeMau.gridMathFunctionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  dmMain.DefOnGridKeyDown(sender, key, Shift);
  if (ssCtrl in Shift) and
    (key = VK_F2) then
  begin
    ShowModalForm(TfrmBAOHIEM_HamSo, frmBAOHIEM_HamSo);
    qryMathFunction.Refresh;
    qrySysFunction.Refresh;
  end;
end;


end.
