unit EmpForSelectForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, dxmdaset, DB, IBODataset, ElCaption, ElXPThemedControl,
  ElStatBar, dxLayoutControl, cxControls, dxExEdtr, dxDBTLCl, dxGrClms,
  dxDBCtrl, dxDBGrid, dxTL, dxCntner, ElBtnCtl, ElPopBtn, ActnList, dxBar,
  dxEditor, dxEdLib;

type
  TfrmEmpForSelect = class(TfrmBase)
    dsList: TDataSource;
    qryList: TIBOQuery;
    qryListEMPLOYEE_NO: TWideStringField;
    qryListFULL_NAME: TWideStringField;
    qryListGENDER: TSmallintField;
    qryListBIRTH_DATE: TDateField;
    qryListEDU_LEVEL_NAME: TWideStringField;
    qryListCAREER_NAME: TWideStringField;
    memList: TdxMemData;
    memListEMPLOYEE_NO: TWideStringField;
    memListFULL_NAME: TWideStringField;
    memListGENDER: TIntegerField;
    memListBIRTH_DATE: TDateField;
    memListEDU_LEVEL_NAME: TWideStringField;
    memListCAREER_NAME: TWideStringField;
    memListSELECTED: TIntegerField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    gridEmpSelect: TdxDBGrid;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    gridEmpSelectRecId: TdxDBGridColumn;
    gridEmpSelectEMPLOYEE_NO: TdxDBGridMaskColumn;
    gridEmpSelectFULL_NAME: TdxDBGridMaskColumn;
    gridEmpSelectBIRTH_DATE: TdxDBGridDateColumn;
    gridEmpSelectEDU_LEVEL_NAME: TdxDBGridMaskColumn;
    gridEmpSelectCAREER_NAME: TdxDBGridMaskColumn;
    gridEmpSelectSELECTED: TdxDBGridCheckColumn;
    gridEmpSelectGENDER: TdxDBGridImageColumn;
    ActionList1: TActionList;
    acChon: TAction;
    acBoqua: TAction;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    acChonTatca: TAction;
    acKhongchontatca: TAction;
    dxBarPopupMenu1: TdxBarPopupMenu;
    qryListTITLE_NAME: TWideStringField;
    qryListDEPT_NAME: TWideStringField;
    memListDEPT_NAME: TWideStringField;
    memListTITLE_NAME: TWideStringField;
    gridEmpSelectDEPT_NAME: TdxDBGridColumn;
    gridEmpSelectTITLE_NAME: TdxDBGridColumn;
    qryListSTATE: TWideStringField;
    dximOption: TdxImageEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    acGetEmployees: TAction;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure memListBeforeInsert(DataSet: TDataSet);
    procedure acChonExecute(Sender: TObject);
    procedure acBoquaExecute(Sender: TObject);
    procedure gridEmpSelectMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acChonTatcaExecute(Sender: TObject);
    procedure acKhongchontatcaExecute(Sender: TObject);
    procedure acChonTatcaUpdate(Sender: TObject);
    procedure dximOptionChange(Sender: TObject);
    procedure acGetEmployeesExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpForSelect: TfrmEmpForSelect;

implementation

uses MainDM, EmpInfoDataModule, Math,SSP_Menus, MainUnit;

{$R *.dfm}

procedure TfrmEmpForSelect.FormDestroy(Sender: TObject);
begin
  memList.Close;
  qryList.Close;
  inherited;
end;

procedure TfrmEmpForSelect.FormCreate(Sender: TObject);
begin
  dximOption.Tag := 1;
  dximOption.Descriptions.Add(Utf8Decode('Đang làm việc'));
  dximOption.Descriptions.Add(Utf8Decode('Đã thôi việc'));
  dximOption.Descriptions.Add(Utf8Decode('Tất cả'));
  dximOption.Values.Add('WORK');
  dximOption.Values.Add('OUT');
  dximOption.Values.Add('ALL');

  dximOption.Text := 'ALL';
  dximOption.Tag := 0;
  inherited;
  acGetEmployees.Execute;
end;

procedure TfrmEmpForSelect.memListBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if memList.Tag<>1 then Abort;
end;

procedure TfrmEmpForSelect.acChonExecute(Sender: TObject);
begin
  inherited;
  if (memList.State in [dsEdit]) then
    memList.Post;
  ModalResult:=mrOK;
end;

procedure TfrmEmpForSelect.acBoquaExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;

procedure TfrmEmpForSelect.gridEmpSelectMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (Button = mbRight) then
  begin
    if frmMain.ShowGridMenus(TdxDBGrid(Sender)) then exit else
    dxBarPopupMenu1.PopupFromCursorPos;
  end;
end;

procedure TfrmEmpForSelect.acChonTatcaExecute(Sender: TObject);
var i:integer;
    bookmark:TBookmark;
begin
  inherited;
  memList.DisableControls;
  bookmark:=memList.GetBookmark;

  //Cach moi: Chi chon het danh sach NV dang hien thi tren luoi
  gridEmpSelect.SelectAll;
  for i := 0 to gridEmpSelect.SelectedCount - 1 do
  begin
    memList.Locate('RecID',
      gridEmpSelect.SelectedNodes[i].Values[gridEmpSelectRecID.Index],[]);
    if not (memList.State in [dsInsert, dsEdit]) then
      memList.Edit;
    memListSELECTED.Value:=1;
    memList.Post;
  end;

  //Cach cu: Chon het danh sach nhan vien
  {memList.First;
  while not memList.Eof do
  begin
    if not( memList.State in [dsEdit,dsInsert]) then
      memList.Edit;
    memListSELECTED.Value:=1;
    memList.Post;
    memList.Next;
  end;}
  memList.GotoBookmark(bookmark);
  memList.EnableControls;
end;

procedure TfrmEmpForSelect.acKhongchontatcaExecute(Sender: TObject);
var i:integer;
    bookmark:TBookmark;
begin
  inherited;
  memList.DisableControls;
  bookmark:=memList.GetBookmark;

  gridEmpSelect.SelectAll;
  for i := 0 to gridEmpSelect.SelectedCount - 1 do
  begin
    memList.Locate('RecID',
      gridEmpSelect.SelectedNodes[i].Values[gridEmpSelectRecID.Index],[]);
    if not (memList.State in [dsInsert, dsEdit]) then
      memList.Edit;
    memListSELECTED.Value:=0;
    memList.Post;
  end;

  {memList.First;
  while not memList.Eof do
  begin
    if not( memList.State in [dsEdit,dsInsert]) then
      memList.Edit;
    memListSELECTED.Value:=0;
    memList.Post;
    memList.Next;
  end;}
  memList.GotoBookmark(bookmark);
  memList.EnableControls;
end;

procedure TfrmEmpForSelect.acChonTatcaUpdate(Sender: TObject);
begin
  inherited;
  acChonTatca.Enabled:=(memList.RecordCount>0);
  acKhongchontatca.Enabled:=(memList.RecordCount>0);
end;

procedure TfrmEmpForSelect.dximOptionChange(Sender: TObject);
begin
  inherited;
  acGetEmployees.Execute;
end;

procedure TfrmEmpForSelect.acGetEmployeesExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  with qryList do
  begin
    DisableControls;
    if Active then Close;
    if dximOption.Text = 'ALL' then
      SQLWhere.Text := ' where (IS_CADIDATE is null) or (IS_CADIDATE=0) '
    else
      if dximOption.Text = 'WORK' then
        SQLWhere.Text := ' where ((IS_CADIDATE is null) or (IS_CADIDATE=0)) and ((STATE is null) or (STATE=''WORK''))'
      else
        if dximOption.Text = 'OUT' then
          SQLWhere.Text := ' where ((IS_CADIDATE is null) or (IS_CADIDATE=0)) and STATE=''OUT''';

    Open;
    EnableControls;
  end;

  if memList.Active then memList.Close;
  memList.Open;
  If qryList.RecordCount>0 then
  begin
    memList.DisableControls;
    memList.Tag:=1;
    qryList.Last;
    while not qryList.Bof do
    begin
      memList.Insert;
      memListEMPLOYEE_NO.Value:=qryListEMPLOYEE_NO.Value;
      memListFULL_NAME.Value:=qryListFULL_NAME.Value;
      if not qryListGENDER.IsNull then
        memListGENDER.Value:=qryListGENDER.Value
      else
        memListGENDER.Clear;
      if not qryListBIRTH_DATE.IsNull then
        memListBIRTH_DATE.Value:=qryListBIRTH_DATE.Value
      else
        memListBIRTH_DATE.Clear;
      if not qryListEDU_LEVEL_NAME.IsNull then
        memListEDU_LEVEL_NAME.Value:=qryListEDU_LEVEL_NAME.Value
      else
        memListEDU_LEVEL_NAME.Clear;
      if not qryListCAREER_NAME.IsNull then
        memListCAREER_NAME.Value:=qryListCAREER_NAME.Value
      else
        memListCAREER_NAME.Clear;
      if not qryListTITLE_NAME.IsNull then
        memListTITLE_NAME.Value:=qryListTITLE_NAME.Value
      else
        memListTITLE_NAME.Clear;
      if not qryListDEPT_NAME.IsNull then
        memListDEPT_NAME.Value:=qryListDEPT_NAME.Value
      else
        memListDEPT_NAME.Clear;
      memListSELECTED.Value:=0;
      memList.Post;
      qryList.Prior;
    end;
    memList.Tag:=0;
    memList.EnableControls;
  end;

  Screen.Cursor := crDefault;
end;

end.
