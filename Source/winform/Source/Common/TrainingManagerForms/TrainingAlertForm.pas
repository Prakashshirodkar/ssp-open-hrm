unit TrainingAlertForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, dxEdLib, dxCntner,
  dxEditor, ActnList, ElBtnCtl, ElPopBtn, DB, IBODataset, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms,Registry, dxBar, ElPgCtl, dxmdaset;

type
  TfrmTrainingAlert = class(TfrmEditBase)
    dxlcMainGroup1: TdxLayoutGroup;
    dxDept: TdxPopupEdit;
    dxlcMainItem2: TdxLayoutItem;
    dxViewAll: TdxCheckEdit;
    dxlcMainItem3: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxlcMainItem4: TdxLayoutItem;
    ActionList1: TActionList;
    acXem: TAction;
    dxAtDate: TdxDateEdit;
    dxlcMainItem5: TdxLayoutItem;
    dxlcMainGroup2: TdxLayoutGroup;
    dsData: TDataSource;
    qryData: TIBOQuery;
    gridData: TdxDBGrid;
    gridDataEMPLOYEE_NO: TdxDBGridColumn;
    gridDataFULL_NAME: TdxDBGridColumn;
    gridDataDEPT_NAME: TdxDBGridColumn;
    gridDataTITLE_NAME: TdxDBGridColumn;
    gridDataASSIGNED_DATE: TdxDBGridDateColumn;
    gridDataCOURSE_CODE: TdxDBGridColumn;
    gridDataCOURSE_NAME: TdxDBGridColumn;
    gridDataCLASS_CODE: TdxDBGridColumn;
    gridDataCLASS_NAME: TdxDBGridColumn;
    gridDataTIME_PERIOD: TdxDBGridColumn;
    gridDataTIME_UNIT: TdxDBGridImageColumn;
    gridDataEXPIRED_DATE: TdxDBGridDateColumn;
    gridDataOVER_DUE: TdxDBGridColumn;
    gridDataSELECTED: TdxDBGridCheckColumn;
    dxClass: TdxPopupEdit;
    dxlcMainItem7: TdxLayoutItem;
    dxlcMainGroup3: TdxLayoutGroup;
    dxlcMainGroup4: TdxLayoutGroup;
    dxSelectAll: TdxCheckEdit;
    dxlcMainItem8: TdxLayoutItem;
    dxlcMainGroup5: TdxLayoutGroup;
    qryDataEMPLOYEE_NO: TWideStringField;
    qryDataFULL_NAME: TWideStringField;
    qryDataPOSITION_NO: TWideStringField;
    qryDataDEPT_NO: TWideStringField;
    qryDataDEPT_NAME: TWideStringField;
    qryDataTITLE_NO: TWideStringField;
    qryDataTITLE_NAME: TWideStringField;
    qryDataASSIGNED_DATE: TDateField;
    qryDataCOURSE_CODE: TWideStringField;
    qryDataCOURSE_NAME: TWideStringField;
    qryDataCLASS_CODE: TWideStringField;
    qryDataCLASS_NAME: TWideStringField;
    qryDataTIME_PERIOD: TIntegerField;
    qryDataTIME_UNIT: TIntegerField;
    qryDataEXPIRED_DATE: TDateField;
    qryDataOVER_DUE: TIntegerField;
    qryDataDAY_COUNT: TIntegerField;
    qryDataSELECTED: TIntegerField;
    dxFromDate: TdxDateEdit;
    dxlcMainItem10: TdxLayoutItem;
    dxlcMainGroup6: TdxLayoutGroup;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    acSelectAll: TAction;
    acUnSelectAll: TAction;
    dxSelectMenu: TdxBarPopupMenu;
    dxlcMainItem6: TdxLayoutItem;
    acSelectAllForDept: TAction;
    acUnselectAllForDept: TAction;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    acXemTruocKehoach: TAction;
    acChon: TAction;
    qryDataKEY_ID: TWideStringField;
    qryDataTEACHER: TWideStringField;
    qryDataCLASS_PLACE: TWideStringField;
    procedure acXemExecute(Sender: TObject);
    procedure dxDeptInitPopup(Sender: TObject);
    procedure dxDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDeptChange(Sender: TObject);
    procedure dxClassInitPopup(Sender: TObject);
    procedure dxClassCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxClassChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxSelectAllChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridDataMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acSelectAllExecute(Sender: TObject);
    procedure acSelectAllUpdate(Sender: TObject);
    procedure acUnSelectAllExecute(Sender: TObject);
    procedure acSelectAllForDeptExecute(Sender: TObject);
    procedure acUnselectAllForDeptExecute(Sender: TObject);
  private
    { Private declarations }
    F_DEPT_NO,F_CLASS_NO:WideString;
    F_STYLE:string;
  public
    { Public declarations }
    constructor Create(AOwner:TComponent;style:String='ViewAlert');
  end;

var
  frmTrainingAlert: TfrmTrainingAlert;

implementation

uses MainDM, PopupMainForm, DateUtils, SSP_Library, MainUnit;

{$R *.dfm}
constructor TfrmTrainingAlert.Create(AOwner:TComponent;style:String);
begin
  F_STYLE:=style;
  inherited Create(AOwner);
end;
procedure TfrmTrainingAlert.acXemExecute(Sender: TObject);
begin
  inherited;
  qryData.DisableControls;
  if qryData.Active then qryData.Close;
  if F_DEPT_NO='' then
    qryData.ParamByName('VIEW_DEPT_NO').Clear
  else
    qryData.ParamByName('VIEW_DEPT_NO').Value:=F_DEPT_NO;
  if (F_CLASS_NO='') or (dxSelectAll.Checked) then
    qryData.ParamByName('VIEW_AT_CLASS').Clear
  else
    qryData.ParamByName('VIEW_AT_CLASS').Value:=F_CLASS_NO;

  if dxViewAll.Checked then
    qryData.ParamByName('VIEW_ALL').Value:=1
  else
    qryData.ParamByName('VIEW_ALL').Value:=0;
  qryData.ParamByName('VIEW_AT_DATE').Value:=dxAtDate.Date;
  qryData.ParamByName('VIEW_FROM_DATE').Value:=dxFromDate.Date;
  qryData.Open;
  qryData.EnableControls;
  gridData.FullExpand;
end;

procedure TfrmTrainingAlert.dxDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList',frmPopupMain,sender,2);
end;

procedure TfrmTrainingAlert.dxDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    F_DEPT_NO:=frmPopupMain.qryDeptListDEPT_NO.Value;
    Text:=frmPopupMain.qryDeptListDEPT_NAME.Value;
  end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmTrainingAlert.dxDeptChange(Sender: TObject);
begin
  inherited;
  if Trim(dxDept.Text)='' then F_DEPT_NO:='';
end;

procedure TfrmTrainingAlert.dxClassInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryClass.Open;
  InitPopupControl('dxlcClass',frmPopupMain,sender,2);

end;

procedure TfrmTrainingAlert.dxClassCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    F_CLASS_NO:=frmPopupMain.qryClassCLASS_CODE.Value;
    Text:=frmPopupMain.qryClassCLASS_NAME.Value+' ('+frmPopupMain.qryClassCLASS_CODE.Value+')';
  end;
  frmPopupMain.qryClass.Close;
end;

procedure TfrmTrainingAlert.dxClassChange(Sender: TObject);
begin
  inherited;
  if Trim(dxClass.Text)='' then F_CLASS_NO:='';
end;

procedure TfrmTrainingAlert.FormCreate(Sender: TObject);
var
  Reg: TRegistry;
begin
  inherited;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(REGISTRY_ROOT+'\TrainingAlert\', TRUE) then
    begin
      try
        dxFromDate.Date := Reg.ReadDate('FromDate');
      except
        dxFromDate.Date := StartOfTheMonth(Today);
      end;
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
  dxAtDate.Date:=Today;
  acXem.Execute;
  gridDataSELECTED.Visible:=(F_STYLE='ToolSelect');
  frameToolbar1.dxlctrlGenerate.Visible:=(F_STYLE='ToolSelect');
  frameToolbar1.dxLayoutControl1Item9.Visible:=(F_STYLE='ToolSelect');

end;

procedure TfrmTrainingAlert.dxSelectAllChange(Sender: TObject);
begin
  inherited;
  dxClass.Enabled:=not dxSelectAll.Checked;
end;

procedure TfrmTrainingAlert.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  Reg: TRegistry;
begin
  if qryData.State in [dsEdit,dsInsert] then qryData.Cancel;
  qryData.Close;
  inherited;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(REGISTRY_ROOT+'\TrainingAlert\', TRUE) then
    begin
      try
        Reg.WriteDate('FromDate',dxFromDate.Date);
      except
      end;
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

procedure TfrmTrainingAlert.gridDataMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (Button = mbRight) then
  begin
    if frmMain.ShowGridMenus(TdxDBGrid(Sender)) then exit
    else
    if (F_STYLE='ToolSelect') then dxSelectMenu.PopupFromCursorPos;
  end;
end;

procedure TfrmTrainingAlert.acSelectAllExecute(Sender: TObject);
var b:TBookmark;
begin
  inherited;
  qryData.DisableControls;
  b:=qryData.GetBookmark;
  qryData.First;
  while not qryData.Eof do
  begin
    if not (qryData.State in [dsEdit]) then
      qryData.Edit;
    qryDataSELECTED.Value:=1;
    qryData.Post;
    qryData.Next;
  end;
  qryData.GotoBookmark(b);
  qryData.EnableControls;
end;

procedure TfrmTrainingAlert.acSelectAllUpdate(Sender: TObject);
begin
  inherited;
  acSelectAll.Enabled:=not qryData.IsEmpty;
  acUnSelectAll.Enabled:=acSelectAll.Enabled;
  acSelectAllForDept.Enabled:=acSelectAll.Enabled;
  acUnselectAllForDept.Enabled:=acSelectAll.Enabled;
end;

procedure TfrmTrainingAlert.acUnSelectAllExecute(Sender: TObject);
var b:TBookmark;
begin
  inherited;
  qryData.DisableControls;
  b:=qryData.GetBookmark;
  qryData.First;
  while not qryData.Eof do
  begin
    if not (qryData.State in [dsEdit]) then
      qryData.Edit;
    qryDataSELECTED.Value:=0;
    qryData.Post;
    qryData.Next;
  end;
  qryData.GotoBookmark(b);
  qryData.EnableControls;
end;

procedure TfrmTrainingAlert.acSelectAllForDeptExecute(Sender: TObject);
var b:TBookmark;
   cur_dept:WideString;
begin
  inherited;
  qryData.DisableControls;
  b:=qryData.GetBookmark;
  cur_dept:=qryDataDEPT_NO.Value;
  qryData.First;
  while not qryData.Eof do
  begin
    if qryDataDEPT_NO.Value=cur_dept then
    begin
    if not (qryData.State in [dsEdit]) then
      qryData.Edit;
    qryDataSELECTED.Value:=1;
    qryData.Post;
    end;
    qryData.Next;
  end;
  qryData.GotoBookmark(b);
  qryData.EnableControls;
end;


procedure TfrmTrainingAlert.acUnselectAllForDeptExecute(Sender: TObject);
var b:TBookmark;
   cur_dept:WideString;
begin
  inherited;
  qryData.DisableControls;
  b:=qryData.GetBookmark;
  cur_dept:=qryDataDEPT_NO.Value;
  qryData.First;
  while not qryData.Eof do
  begin
    if qryDataDEPT_NO.Value=cur_dept then
    begin
    if not (qryData.State in [dsEdit]) then
      qryData.Edit;
    qryDataSELECTED.Value:=0;
    qryData.Post;
    end;
    qryData.Next;
  end;
  qryData.GotoBookmark(b);
  qryData.EnableControls;
end;


end.
