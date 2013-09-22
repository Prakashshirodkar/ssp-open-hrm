unit Luong_ThietkePAForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxExEdtr, dxCntner, dxTL, dxDBTLCl,
  dxGrClms, dxDBCtrl, dxDBGrid, ElPgCtl, ImgList, dxEdLib, dxDBELib,
  dxEditor, ElBtnCtl, ElPopBtn, StdCtrls, ElCLabel, ElLabel, ExtCtrls,
  ElPanel, DB, IBODataset, ToolbarFrame, ActnList, dxBar, dxBarExtItems,
  DBActns, IB_Components, dxGrClEx, SSP_Script, ElEdits, ElBtnEdit,
  ElMemoCombo, ElSplit;

type
  TfrmLuong_ThietkePA = class(TfrmBase)
    dxlcMainGroup_Root: TdxLayoutGroup;
    dxlcMain: TdxLayoutControl;
    gridDemo: TdxTreeList;
    gridDemoEMPLOYEE_NO: TdxTreeListColumn;
    gridDemoFULL_NAME: TdxTreeListColumn;
    imlIcon: TImageList;
    dsCongthuc: TDataSource;
    qryCongthuc: TIBOQuery;
    qryExecute: TIBOQuery;
    ActionList1: TActionList;
    acInitGridColumn: TAction;
    acInitBandColumn: TAction;
    dxCT_KYHIEU: TdxDBEdit;
    dxCT_TIEUDE: TdxDBEdit;
    dxlcMainGroup3: TdxLayoutGroup;
    dxCT_BIEUTHUC: TdxDBMemo;
    dxBarManager1: TdxBarManager;
    dxAddColumn: TdxBarButton;
    dxDeleteColumn: TdxBarButton;
    dxCheckSyntax: TdxBarButton;
    dxMathFunction: TdxBarButton;
    dxSystemFunction: TdxBarButton;
    dxIFStatement: TdxBarButton;
    dxSQLStatement: TdxBarButton;
    dxOtherFormular: TdxBarButton;
    acInsertColumn: TAction;
    acCheckSyntax: TAction;
    acOtherFormular: TAction;
    acMathFunction: TAction;
    acSystemFunction: TAction;
    acIFStatement: TAction;
    acSQLStatement: TAction;
    dxlcMainItem2: TdxLayoutItem;
    dxlcMainItem3: TdxLayoutItem;
    dxlcMainItem5: TdxLayoutItem;
    dxCT_KieuDuLieu: TdxDBImageEdit;
    dxlcMainItem6: TdxLayoutItem;
    dxlcMainGroup4: TdxLayoutGroup;
    dxlcMainGroup5: TdxLayoutGroup;
    dxCT_KieuNhapLieu: TdxDBImageEdit;
    dxlcMainItem7: TdxLayoutItem;
    dxlcMainGroup6: TdxLayoutGroup;
    pageUtility: TElPageControl;
    tabMathFunction: TElTabSheet;
    tabFormular: TElTabSheet;
    tabSystemFunction: TElTabSheet;
    tabMessage: TElTabSheet;
    acAppendColumn: TAction;
    dxInsertColumn: TdxBarButton;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    dxCommit: TdxBarButton;
    dxCancel: TdxBarButton;
    acDelete: TDataSetDelete;
    dxlcTopGroup_Root: TdxLayoutGroup;
    dxlcTop: TdxLayoutControl;
    dxlcTopItem1: TdxLayoutItem;
    dxlcTopGroup1: TdxLayoutGroup;
    dxBarDockControl1: TdxBarDockControl;
    transaction: TIB_Transaction;
    gridMathFunction: TdxDBGrid;
    qryMathFunction: TIBOQuery;
    dsMathFunction: TDataSource;
    qryMathFunctionHAMSO_ID: TWideStringField;
    qryMathFunctionHAMSO_TIEUDE: TWideStringField;
    qryMathFunctionHAMSO_KYHIEU: TWideStringField;
    qryMathFunctionHAMSO_HUONGDAN: TWideStringField;
    gridMathFunctionHAMSO_ID: TdxDBGridColumn;
    gridMathFunctionHAMSO_KYHIEU: TdxDBGridColumn;
    gridMathFunctionHAMSO_TIEUDE: TdxDBGridPopupColumn;
    dxHSHuongdan: TdxDBMemo;
    acDinhnghiaHamso: TAction;
    CopyMemo: TdxMemo;
    memoInfo: TElMemoCombo;
    gridCongthuc: TdxDBGrid;
    dsCongthucKhac: TDataSource;
    gridCongthucCT_KYHIEU: TdxDBGridColumn;
    gridCongthucCT_TIEUDE: TdxDBGridColumn;
    gridCongthucCT_BIEUTHUC: TdxDBGridColumn;
    gridSysFunction: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridPopupColumn1: TdxDBGridPopupColumn;
    qrySysFunction: TIBOQuery;
    dsSysFunction: TDataSource;
    qrySysFunctionHAMSO_ID: TWideStringField;
    qrySysFunctionHAMSO_TIEUDE: TWideStringField;
    qrySysFunctionHAMSO_KYHIEU: TWideStringField;
    qrySysFunctionHAMSO_HUONGDAN: TWideStringField;
    dxDinhnghiaHeader: TdxBarButton;
    dxXoaHeader: TdxBarButton;
    acDinhnghiaHeader: TAction;
    qrySession: TIBOQuery;
    dsSession: TDataSource;
    qrySessionPA_MA: TIntegerField;
    qrySessionS_MA: TIntegerField;
    qrySessionS_TIEUDE: TWideStringField;
    qryCongthucPA_MA: TIntegerField;
    qryCongthucCT_MA: TIntegerField;
    qryCongthucCT_KYHIEU: TWideStringField;
    qryCongthucCT_TIEUDE: TWideStringField;
    qryCongthucCT_KIEUDULIEU: TWideStringField;
    qryCongthucCT_BIEUTHUC: TWideStringField;
    qryCongthucCT_HINHTHUC_NHAPLIEU: TWideStringField;
    qryCongthucCT_TUDONG_CAPNHAT: TIntegerField;
    qryCongthucCT_THUTU_TINH: TIntegerField;
    qryCongthucCT_THUTU_HIENTHI: TIntegerField;
    qryCongthucCT_SESSION: TIntegerField;
    qryCongthucCT_WIDTH: TIntegerField;
    panelMain: TPanel;
    panelRight: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    ElSplitter1: TElSplitter;
    panelLeft: TPanel;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxlcUtility: TdxLayoutGroup;
    acSaochepPALuong: TAction;
    dxSaochepPALuong: TdxBarButton;
    qrySessionS_BEFORE_SCRIPT: TWideStringField;
    qrySessionS_AFTER_SCRIPT: TWideStringField;
    qrySessionS_REFRESH: TIntegerField;
    qrySessionS_EXEC_BSCRIPT: TIntegerField;
    qrySessionS_EXEC_AFTER: TIntegerField;
    qryCongthucKhac: TIBOQuery;
    qryCongthucKhacPA_MA: TIntegerField;
    qryCongthucKhacCT_MA: TIntegerField;
    qryCongthucKhacCT_KYHIEU: TWideStringField;
    qryCongthucKhacCT_TIEUDE: TWideStringField;
    qryCongthucKhacCT_KIEUDULIEU: TWideStringField;
    qryCongthucKhacCT_BIEUTHUC: TWideStringField;
    qryCongthucKhacCT_HINHTHUC_NHAPLIEU: TWideStringField;
    qryCongthucKhacCT_TUDONG_CAPNHAT: TIntegerField;
    qryCongthucKhacCT_THUTU_TINH: TIntegerField;
    qryCongthucKhacCT_THUTU_HIENTHI: TIntegerField;
    qryPhanQuyen: TIBOQuery;
    qryPhanQuyenALLOW_ADD: TSmallintField;
    qryPhanQuyenALLOW_EDIT: TSmallintField;
    qryPhanQuyenALLOW_DELETE: TSmallintField;
    qryPhanQuyenKEY_ID: TIntegerField;
    acDeleteColumn: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryCongthucNewRecord(DataSet: TDataSet);
    procedure qryCongthucBeforePost(DataSet: TDataSet);
    procedure qryCongthucAfterPost(DataSet: TDataSet);
    procedure qryCongthucBeforeDelete(DataSet: TDataSet);
    procedure qryCongthucAfterDelete(DataSet: TDataSet);
    procedure acInitGridColumnExecute(Sender: TObject);
    procedure gridDemoChangeColumn(Sender: TObject; Node: TdxTreeListNode;
      Column: Integer);
    procedure gridDemoColumnClick(Sender: TObject;
      Column: TdxTreeListColumn);
    procedure acInitBandColumnExecute(Sender: TObject);
    procedure acCheckSyntaxExecute(Sender: TObject);
    function CheckSyntax: boolean;
    procedure acInsertColumnUpdate(Sender: TObject);
    procedure acInsertColumnExecute(Sender: TObject);
    procedure acAppendColumnUpdate(Sender: TObject);
    procedure acAppendColumnExecute(Sender: TObject);
    procedure gridDemoCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      const AText: WideString; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure gridMathFunctionHAMSO_TIEUDEInitPopup(Sender: TObject);
    procedure acDinhnghiaHamsoExecute(Sender: TObject);
    procedure PasteString(str: string);
    procedure gridMathFunctionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    procedure gridSysFunctionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridDemoBandClick(Sender: TObject; ABand: TdxTreeListBand);
    procedure gridDemoCustomDrawBand(Sender: TObject;
      ABand: TdxTreeListBand; ACanvas: TCanvas; ARect: TRect;
      var AText: WideString; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure acDinhnghiaHeaderExecute(Sender: TObject);
    procedure gridDemoChangedColumnsWidth(Sender: TObject);
    procedure gridDemoDragEndHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; P: TPoint;
      var NewPosInfo: TdxHeaderPosInfo; var Accept: Boolean);
    procedure qryCongthucBeforeEdit(DataSet: TDataSet);
    procedure gridDemoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acSaochepPALuongExecute(Sender: TObject);
    procedure RefreshDemoGrid;
    procedure qrySessionNewRecord(DataSet: TDataSet);
    procedure acSaochepPALuongUpdate(Sender: TObject);
    procedure gridMathFunctionDblClick(Sender: TObject);
    procedure acDinhnghiaHeaderUpdate(Sender: TObject);
    procedure acDeleteColumnExecute(Sender: TObject);
    procedure acDeleteColumnUpdate(Sender: TObject);
    procedure acOtherFormularUpdate(Sender: TObject);
    procedure acMathFunctionUpdate(Sender: TObject);
    procedure acSystemFunctionUpdate(Sender: TObject);
    procedure acIFStatementUpdate(Sender: TObject);
    procedure acSQLStatementUpdate(Sender: TObject);
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
    PA_MA: integer;
    PA_KYHIEU: widestring;
    { Public declarations }
    constructor Create(AOwner: TComponent);
    procedure AlterFieldDomain(field_name, new_domain: widestring);
    procedure AlterFieldName(old_name, new_name: widestring);
    procedure CreateField(field,domain: string);

  end;

var
  frmLuong_ThietkePA: TfrmLuong_ThietkePA;

implementation

uses MainDM, SSP_Library, Luong_SessionForm, Luong_DinhnghiaForm,
  Luong_HamsoForm, SSP_Luong, Math, LuongDataModule, Luong_SapchepPAForm,
  UnicodeConvert, StrUtils;

{$R *.dfm}

procedure TfrmLuong_ThietkePA.AlterFieldDomain(field_name, new_domain:
  widestring);
begin
  try
    qryExecute.SQL.Text := 'update RDB$RELATION_FIELDS set ' +
      ' RDB$FIELD_SOURCE = ''' + new_domain + ''' where ' +
      ' (RDB$FIELD_NAME = ''' + field_name + ''') and ' +
      ' (RDB$RELATION_NAME = ''WB_' + UpperCase(PA_KYHIEU) + ''')';
    qryExecute.ExecSQL;
    qryExecute.SQL.Text := 'update RDB$RELATION_FIELDS set ' +
      ' RDB$FIELD_SOURCE = ''' + new_domain + ''' where ' +
      ' (RDB$FIELD_NAME = ''' + field_name + ''') and ' +
      ' (RDB$RELATION_NAME = ''WD_' + UpperCase(PA_KYHIEU) + ''')';
    qryExecute.ExecSQL;
    qryExecute.SQL.Text := 'update RDB$RELATION_FIELDS set ' +
      ' RDB$FIELD_SOURCE = ''' + new_domain + ''' where ' +
      ' (RDB$FIELD_NAME = ''' + field_name + ''') and ' +
      ' (RDB$RELATION_NAME = ''WT_' + UpperCase(PA_KYHIEU) + ''')';
    qryExecute.ExecSQL;
    qryExecute.SQL.Text := 'update RDB$RELATION_FIELDS set ' +
      ' RDB$FIELD_SOURCE = ''' + new_domain + ''' where ' +
      ' (RDB$FIELD_NAME = ''' + field_name + ''') and ' +
      ' (RDB$RELATION_NAME = ''WP_' + UpperCase(PA_KYHIEU) + ''')';
    qryExecute.ExecSQL;
    qryExecute.SQL.Text := 'update RDB$RELATION_FIELDS set ' +
      ' RDB$FIELD_SOURCE = ''' + new_domain + ''' where ' +
      ' (RDB$FIELD_NAME = ''' + field_name + ''') and ' +
      ' (RDB$RELATION_NAME = ''WE_' + UpperCase(PA_KYHIEU) + ''')';
    qryExecute.ExecSQL;
  except
    ShowMessage('Error: can not alter field domain');
  end;
end;

procedure TfrmLuong_ThietkePA.AlterFieldName(old_name, new_name: widestring);
begin
  try
    qryExecute.SQL.Text := 'ALTER TABLE WB_' + UpperCase(PA_KYHIEU) + ' ALTER ' +
      CT_KYHIEU_OLD + ' TO ' + CT_KYHIEU_NEW;
    qryExecute.ExecSQL;
    {      qryExecute.SQL.Text := 'ALTER TABLE WF_' + PA_KYHIEU + ' ALTER ' +
            CT_KYHIEU_OLD + ' TO ' + CT_KYHIEU_NEW;
          qryExecute.ExecSQL;
          qryExecute.SQL.Text := 'ALTER TABLE LG_' + PA_KYHIEU + ' ALTER ' +
            CT_KYHIEU_OLD + ' TO ' + CT_KYHIEU_NEW;
          qryExecute.ExecSQL;
     }
          //=====================================================================
    qryExecute.SQL.Text := 'ALTER TABLE WD_' + UpperCase(PA_KYHIEU) + ' ALTER ' +
      CT_KYHIEU_OLD + ' TO ' + CT_KYHIEU_NEW;
    qryExecute.ExecSQL;
    qryExecute.SQL.Text := 'ALTER TABLE WT_' + UpperCase(PA_KYHIEU) + ' ALTER ' +
      CT_KYHIEU_OLD + ' TO ' + CT_KYHIEU_NEW;
    qryExecute.ExecSQL;
    qryExecute.SQL.Text := 'ALTER TABLE WP_' + UpperCase(PA_KYHIEU) + ' ALTER ' +
      CT_KYHIEU_OLD + ' TO ' + CT_KYHIEU_NEW;
    qryExecute.ExecSQL;
    qryExecute.SQL.Text := 'ALTER TABLE WE_' + UpperCase(PA_KYHIEU) + ' ALTER ' +
      CT_KYHIEU_OLD + ' TO ' + CT_KYHIEU_NEW;
    qryExecute.ExecSQL;
    F_CurColumn.Name := new_name;
  except
    ShowMessage('Error: can not rename field');
  end;
end;

procedure TfrmLuong_ThietkePA.CreateField(field,domain: string);
begin
  try
    qryExecute.SQL.Text := 'ALTER TABLE WB_' + UpperCase(PA_KYHIEU) + ' ADD ' +
      field + ' ' + domain;
    qryExecute.ExecSQL;
    qryExecute.SQL.Text := 'ALTER TABLE WD_' + UpperCase(PA_KYHIEU) + ' ADD ' +
      field + ' ' + domain;
    qryExecute.ExecSQL;
    qryExecute.SQL.Text := 'ALTER TABLE WT_' + UpperCase(PA_KYHIEU) + ' ADD ' +
      field + ' ' + domain;
    qryExecute.ExecSQL;
    qryExecute.SQL.Text := 'ALTER TABLE WP_' + UpperCase(PA_KYHIEU) + ' ADD ' +
      field + ' ' + domain;
    qryExecute.ExecSQL;
    qryExecute.SQL.Text := 'ALTER TABLE WE_' + UpperCase(PA_KYHIEU) + ' ADD ' +
      field + ' ' + domain;
    qryExecute.ExecSQL;
  except
    //ShowMessage('Error: Can not create field ');
    //added by THUYPTP - 19/03/2009
    ShowMessageUnicode(102);
    qryCongthuc.Cancel;
    abort;
  end;
end;
//=============================================================

constructor TfrmLuong_ThietkePA.Create(AOwner: TComponent);
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


  PA_KYHIEU := frmLuong_Dinhnghia.memMenuListMENU_ID.Value;
  PA_MA := frmLuong_Dinhnghia.memMenuListPA_MA.Value;
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

  //added by THUYPTP - 23/2/2010
  if qryPhanQuyen.Active then qryPhanQuyen.Close;
  qryPhanQuyen.ParamByName('PA_MA').Value := PA_MA;
  qryPhanQuyen.Open;
  //Het added

end;

procedure TfrmLuong_ThietkePA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryCongthuc.Close;
  qrySession.Close;
  qryPhanQuyen.Close;  
  Action := caFree;
  frmLuong_ThietkePA := nil;
  if Assigned(FScript) then
    FScript.Free;
end;

procedure TfrmLuong_ThietkePA.qryCongthucNewRecord(DataSet: TDataSet);
var
  col: integer;
begin
  inherited;
  //ActionState := 'CreateNewColumn';
  qryCongthucPA_MA.Value := PA_MA;
  F_CurColumn := gridDemo.CreateColumn(TdxTreeListColumn);
  F_CurColumn.HeaderAlignment := taCenter;

  if not Assigned(frmLuong_SaochepPA) then
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

procedure TfrmLuong_ThietkePA.qryCongthucBeforePost(DataSet: TDataSet);
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
      if not Assigned(frmLuong_SaochepPA) then
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
        else if CT_KIEUDULIEU_NEW = 'MEMO' then
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
          else if CT_KIEUDULIEU_NEW = 'MEMO' then
            AlterFieldDomain(CT_KYHIEU_NEW, 'DM_NOTATION')
        end;
      end;
    except
      ActionState := '';
      transaction.RollbackRetaining;
      Abort;
    end;
  end;
end;

procedure TfrmLuong_ThietkePA.qryCongthucAfterPost(DataSet: TDataSet);

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
      qryExecute.SQL.Text  := 'update HR_LUONG_CONGTHUC ' +
                        'Set CT_THUTU_HIENTHI = CT_THUTU_HIENTHI + 1 ' +
                        'where CT_THUTU_HIENTHI >= :CT_THUTU_HIENTHI ' +
                        'and CT_SESSION = :CT_SESSION ' +
                        'and CT_KYHIEU <> :CT_KYHIEU ' +
                        'and PA_MA = :PA_MA';
      qryExecute.ParamByName('CT_THUTU_HIENTHI').Value := qryCongthucCT_THUTU_HIENTHI.Value;
      qryExecute.ParamByName('CT_SESSION').Value := qryCongthucCT_SESSION.Value;
      qryExecute.ParamByName('CT_KYHIEU').Value := qryCongthucCT_KYHIEU.Value;
      qryExecute.ParamByName('PA_MA').Value := qryCongthucPA_MA.Value;
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


procedure TfrmLuong_ThietkePA.qryCongthucBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CT_KYHIEU_OLD := Trim(qryCongthucCT_KYHIEU.AsString);
  dmMain.DefOnBeforeDelete(Dataset);
  try
    qryExecute.SQL.Text := ' alter table "WB_' + UpperCase(PA_KYHIEU) + '" drop "' +
      CT_KYHIEU_OLD + '"';
    qryExecute.ExecSQL;
    qryExecute.SQL.Text := ' alter table "WT_' + UpperCase(PA_KYHIEU) + '" drop "' +
      CT_KYHIEU_OLD + '"';
    qryExecute.ExecSQL;
    qryExecute.SQL.Text := ' alter table "WD_' + UpperCase(PA_KYHIEU) + '" drop "' +
      CT_KYHIEU_OLD + '"';
    qryExecute.ExecSQL;
    qryExecute.SQL.Text := ' alter table "WP_' + UpperCase(PA_KYHIEU) + '" drop "' +
      CT_KYHIEU_OLD + '"';
    qryExecute.ExecSQL;
    qryExecute.SQL.Text := ' alter table "WE_' + UpperCase(PA_KYHIEU) + '" drop "' +
      CT_KYHIEU_OLD + '"';
    qryExecute.ExecSQL;
    {   qryExecute.SQL.Text := ' alter table "WF_' + PA_KYHIEU + '" drop "' +
          CT_KYHIEU_OLD + '"';
        qryExecute.ExecSQL;
        qryExecute.SQL.Text := ' alter table "LG_' + PA_KYHIEU + '" drop "' +
          CT_KYHIEU_OLD + '"';
        qryExecute.ExecSQL;
    };
  except
    //    ShowMessage('Error: can not drop field');
    transaction.RollbackRetaining;
    Abort;
  end;
end;

procedure TfrmLuong_ThietkePA.qryCongthucAfterDelete(DataSet: TDataSet);
var
  col: TdxTreeListColumn;
begin
  inherited;
  dmMain.DefOnAfterDelete(Dataset);
  transaction.CommitRetaining;
  F_CurColumn.Free;
  F_CurColumn := gridDemo.ColumnByName(qryCongthucCT_KYHIEU.Value);
end;

procedure TfrmLuong_ThietkePA.acInitGridColumnExecute(Sender: TObject);
begin
  inherited;
  if qryCongthuc.Active then
    qryCongthuc.Close;
  qryCongthuc.ParamByName('PA_MA').Value := PA_MA;
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

procedure TfrmLuong_ThietkePA.gridDemoChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
  inherited;
  {  if (not qryCongthuc.IsEmpty) and
      (ActionState <> 'InitGridColumn') then
    begin
      if qryCongthuc.Locate('CT_KYHIEU', gridDemo.Columns[gridDemo.GetAbsoluteColumnIndex(Column)].Name,
        [loCaseInsensitive]) then
      begin
        F_CurColumn := gridDemo.Columns[gridDemo.GetAbsoluteColumnIndex(Column)];
        F_CurBand := gridDemo.Bands[F_CurColumn.BandIndex];
        gridDemo.Repaint;
      end;
    end
   }
end;

procedure TfrmLuong_ThietkePA.gridDemoColumnClick(Sender: TObject;
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

procedure TfrmLuong_ThietkePA.acInitBandColumnExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  if qrySession.Active then
    qrySession.Close;
  qrySession.ParamByName('PA_MA').Value := PA_MA;
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

procedure TfrmLuong_ThietkePA.acCheckSyntaxExecute(Sender: TObject);
begin
  CheckSyntax;
end;

function TfrmLuong_ThietkePA.CheckSyntax: boolean;
var
  i: integer;
  error: integer;
begin
  inherited;
  if dmLuong.PA_KYHIEU <> PA_KYHIEU then
    dmLuong.PA_KYHIEU := PA_KYHIEU;
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
    InitIdentifier(FScript, true);
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

procedure TfrmLuong_ThietkePA.acInsertColumnUpdate(Sender: TObject);
begin
  inherited;
  acInsertColumn.Enabled := qryCongthuc.Active and (qrySession.IsEmpty = false)
     and (not (qryCongthuc.State in [dsInsert, dsEdit])) and
     ((sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') or
     (qryPhanQuyenALLOW_ADD.Value = 1));
end;

procedure TfrmLuong_ThietkePA.acInsertColumnExecute(Sender: TObject);
begin
  inherited;
  ActionState := 'CreateNewColumn';
  qryCongthuc.Append;              
end;

procedure TfrmLuong_ThietkePA.acAppendColumnUpdate(Sender: TObject);
begin
  inherited;
  acAppendColumn.Enabled := qryCongthuc.Active and (qrySession.IsEmpty = false)
    and (not (qryCongthuc.State in [dsInsert, dsEdit])) and
    ((sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') or
     (qryPhanQuyenALLOW_ADD.Value = 1));
end;

procedure TfrmLuong_ThietkePA.acAppendColumnExecute(Sender: TObject);
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

procedure TfrmLuong_ThietkePA.gridDemoCustomDraw(Sender: TObject;
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

procedure TfrmLuong_ThietkePA.gridMathFunctionHAMSO_TIEUDEInitPopup(
  Sender: TObject);
begin
  inherited;
  InitPopupControl('dxHSHuongdan', self, sender, 2);
end;

procedure TfrmLuong_ThietkePA.acDinhnghiaHamsoExecute(Sender: TObject);
begin
  inherited;
  PasteString(qrySysFunctionHAMSO_KYHIEU.AsString);
end;

procedure TfrmLuong_ThietkePA.PasteString(str: string);
begin
  CopyMemo.Text := Str;
  CopyMemo.SelectAll;
  CopyMemo.CopyToClipboard;
  dxCT_BIEUTHUC.PasteFromClipboard;
  dxCT_BIEUTHUC.SetFocus;
end;

procedure TfrmLuong_ThietkePA.gridMathFunctionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  dmMain.DefOnGridKeyDown(sender, key, Shift);
  if (ssCtrl in Shift) and
    (key = VK_F2) then
  begin
    ShowModalForm(TfrmLuong_Hamso, frmLuong_Hamso);
    qryMathFunction.Refresh;
    qrySysFunction.Refresh;
  end;
end;

procedure TfrmLuong_ThietkePA.qryCongthucBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if qryCongthuc.State in [dsInsert] then
  begin
    F_CurColumn.Free;
    F_CurColumn := nil;
  end;
end;

procedure TfrmLuong_ThietkePA.qryCongthucAfterCancel(DataSet: TDataSet);
begin
  inherited;
  if not Assigned(F_CurColumn) then
    F_CurColumn := gridDemo.ColumnByName(qryCongthucCT_KYHIEU.Value)
end;

procedure TfrmLuong_ThietkePA.acIFStatementExecute(Sender: TObject);
begin
  inherited;
  PasteString('IF ' + #13#10 + 'THEN ' + #13#10 + 'ELSE');
end;

procedure TfrmLuong_ThietkePA.acSQLStatementExecute(Sender: TObject);
begin
  inherited;
  PasteString('SELECT ' + #13#10 + 'FROM' + #13#10 + 'WHERE');
end;

procedure TfrmLuong_ThietkePA.gridDemoHeaderMoved(Sender: TObject;
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

procedure TfrmLuong_ThietkePA.gridCongthucDblClick(Sender: TObject);
begin
  inherited;
  PasteString(qryCongthucKhacCT_KYHIEU.AsString);
end;

procedure TfrmLuong_ThietkePA.acMathFunctionExecute(Sender: TObject);
begin
  inherited;
  pageUtility.ActivePage := tabMathFunction;
end;

procedure TfrmLuong_ThietkePA.acSystemFunctionExecute(Sender: TObject);
begin
  inherited;
  pageUtility.ActivePage := tabSystemFunction;
end;

procedure TfrmLuong_ThietkePA.acOtherFormularExecute(Sender: TObject);
begin
  inherited;
  pageUtility.ActivePage := tabFormular;
end;

procedure TfrmLuong_ThietkePA.pageUtilityChange(Sender: TObject);
begin
  inherited;
  dxlcUtility.Caption := WideUpperCase(pageUtility.ActivePage.Caption);
end;

procedure TfrmLuong_ThietkePA.gridSysFunctionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  dmMain.DefOnGridKeyDown(sender, key, Shift);
  if (ssCtrl in Shift) and
    (key = VK_F2) then
  begin
    ShowModalForm(TfrmLuong_Hamso, frmLuong_Hamso);
    qrySysFunction.Refresh;
    qryMathFunction.Refresh;
  end;
end;

procedure TfrmLuong_ThietkePA.gridDemoBandClick(Sender: TObject;
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

procedure TfrmLuong_ThietkePA.gridDemoCustomDrawBand(Sender: TObject;
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

procedure TfrmLuong_ThietkePA.acDinhnghiaHeaderExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  ShowModalForm(TfrmLuongSession, frmLuongSession);
  for i := gridDemo.ColumnCount - 1 downto 0 do
  begin
    if gridDemo.Columns[i].Tag <> -1 then
      gridDemo.Columns[i].Free;
  end;
  RefreshDemoGrid;
end;

procedure TfrmLuong_ThietkePA.gridDemoChangedColumnsWidth(Sender: TObject);
begin
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

procedure TfrmLuong_ThietkePA.gridDemoDragEndHeader(Sender: TObject;
  AColumn: TdxTreeListColumn; P: TPoint; var NewPosInfo: TdxHeaderPosInfo;
  var Accept: Boolean);
begin
  inherited;
  if (NewPosInfo.BandIndex <> AColumn.BandIndex) or
    (NewPosInfo.ColIndex <> AColumn.ColIndex) then
    ActionState := 'UpdateColumnIndex';
end;

procedure TfrmLuong_ThietkePA.qryCongthucBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if ActionState = '' then
    ACtionState := 'EditColumn';
end;

procedure TfrmLuong_ThietkePA.gridDemoMouseDown(Sender: TObject;
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

procedure TfrmLuong_ThietkePA.acSaochepPALuongExecute(Sender: TObject);
begin
  inherited;
  ShowModalFOrm(TfrmLuong_SaochepPA, frmLuong_SaochepPA);
end;

procedure TfrmLuong_ThietkePA.RefreshDemoGrid;
var
  i: integer;
begin
  for i := gridDemo.Bands.Count - 1 downto 1 do
    gridDemo.Bands.Delete(i);
  acInitBandColumn.Execute;
  acInitGridColumn.Execute;
end;

procedure TfrmLuong_ThietkePA.qrySessionNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrySessionPA_MA.Value := PA_MA;
end;

procedure TfrmLuong_ThietkePA.acSaochepPALuongUpdate(Sender: TObject);
begin
  inherited;
  acSaochepPALuong.Enabled:= qrySession.IsEmpty and qryCongthuc.IsEmpty and
    ((sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') or
     (qryPhanQuyenALLOW_ADD.Value = 1));

  //added by ThuyPTP - 19/03/2009
  dxCT_KYHIEU.ReadOnly := (qrySession.IsEmpty or qryCongthuc.IsEmpty) or
     ((sysConfig.User <> 'smallfoot') and (sysConfig.User <> 'sspadmin') and
     (qryPhanQuyenALLOW_EDIT.Value <> 1));
  dxCT_TIEUDE.ReadOnly := (qrySession.IsEmpty or qryCongthuc.IsEmpty) or
     ((sysConfig.User <> 'smallfoot') and (sysConfig.User <> 'sspadmin') and
     (qryPhanQuyenALLOW_EDIT.Value <> 1));
  dxCT_BIEUTHUC.ReadOnly := (qrySession.IsEmpty or qryCongthuc.IsEmpty) or
     ((sysConfig.User <> 'smallfoot') and (sysConfig.User <> 'sspadmin') and
     (qryPhanQuyenALLOW_EDIT.Value <> 1));
  dxCT_KieuDuLieu.ReadOnly := (qrySession.IsEmpty or qryCongthuc.IsEmpty) or
     ((sysConfig.User <> 'smallfoot') and (sysConfig.User <> 'sspadmin') and
     (qryPhanQuyenALLOW_EDIT.Value <> 1));
  dxCT_KieuNhapLieu.ReadOnly := (qrySession.IsEmpty or qryCongthuc.IsEmpty) or
     ((sysConfig.User <> 'smallfoot') and (sysConfig.User <> 'sspadmin') and
     (qryPhanQuyenALLOW_EDIT.Value <> 1));
end;

procedure TfrmLuong_ThietkePA.gridMathFunctionDblClick(Sender: TObject);
begin
  inherited;
  PasteString(qryMathFunctionHAMSO_KYHIEU.AsString);
end;

procedure TfrmLuong_ThietkePA.acDinhnghiaHeaderUpdate(Sender: TObject);
begin
  inherited;
  acDinhnghiaHeader.Enabled :=  (not (qryCongthuc.State in [dsEdit, dsInsert])) and
    ((sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') or
     (qryPhanQuyenALLOW_ADD.Value = 1));   
end;

procedure TfrmLuong_ThietkePA.acDeleteColumnExecute(Sender: TObject);
begin
  inherited;
  qryCongthuc.Delete;   
end;

procedure TfrmLuong_ThietkePA.acDeleteColumnUpdate(Sender: TObject);
begin
  inherited;
  acDeleteColumn.Enabled := qryCongthuc.Active and (qrySession.IsEmpty = false)
     and (not (qryCongthuc.State in [dsInsert, dsEdit])) and
     ((sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') or
     (qryPhanQuyenALLOW_DELETE.Value = 1));
end;

procedure TfrmLuong_ThietkePA.acOtherFormularUpdate(Sender: TObject);
begin
  inherited;
  acOtherFormular.Enabled := qryCongthuc.Active and (qrySession.IsEmpty = false)
     and ((sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') or
     (qryPhanQuyenALLOW_ADD.Value = 1));
end;

procedure TfrmLuong_ThietkePA.acMathFunctionUpdate(Sender: TObject);
begin
  inherited;
  acMathFunction.Enabled := qryCongthuc.Active and (qrySession.IsEmpty = false)
     and ((sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') or
     (qryPhanQuyenALLOW_ADD.Value = 1));
end;

procedure TfrmLuong_ThietkePA.acSystemFunctionUpdate(Sender: TObject);
begin
  inherited;
  acSystemFunction.Enabled := qryCongthuc.Active and (qrySession.IsEmpty = false)
     and ((sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') or
     (qryPhanQuyenALLOW_ADD.Value = 1));
end;

procedure TfrmLuong_ThietkePA.acIFStatementUpdate(Sender: TObject);
begin
  inherited;
  acIFStatement.Enabled := qryCongthuc.Active and (qrySession.IsEmpty = false)
     and ((sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') or
     (qryPhanQuyenALLOW_ADD.Value = 1));
end;

procedure TfrmLuong_ThietkePA.acSQLStatementUpdate(Sender: TObject);
begin
  inherited;
  acSQLStatement.Enabled := qryCongthuc.Active and (qrySession.IsEmpty = false)
     and ((sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') or
     (qryPhanQuyenALLOW_ADD.Value = 1));
end;

end.

