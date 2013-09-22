unit SelectEmployeeBaseForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxExEdtr, DB, IBODataset, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxmdaset, ActnList, dxEditor,
  dxEdLib, ElBtnCtl, ElPopBtn, StdCtrls, ElCLabel, ElLabel;

type
  TfrmSelectEmployee = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    gridData: TdxDBGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    dsNhanvien: TDataSource;
    qryData: TIBOQuery;
    qryDataEMP_NO: TWideStringField;
    qryDataFULL_NAME: TWideStringField;
    qryDataDEPT_NO: TWideStringField;
    qryDataDEPT_NAME: TWideStringField;
    qryDataTITLE_NO: TWideStringField;
    qryDataTITLE_NAME: TWideStringField;
    qryDataPOSITION_NO: TWideStringField;
    qryDataASSIGNED_DATE: TDateField;
    qryDataIS_MAIN_POSITION: TIntegerField;
    qryDataIS_DISMISSED: TIntegerField;
    qryDataWORK_TYPE_NO: TWideStringField;
    qryDataWORK_TYPE_NAME: TWideStringField;
    qryDataEND_DATE: TDateField;
    qryDataDISMISS_DATE: TDateField;
    qryDataCONTRACT_NO: TWideStringField;
    qryDataDECISION_NO: TWideStringField;
    qryDataEMAIL: TWideStringField;
    gridDataEMP_NO: TdxDBGridColumn;
    gridDataFULL_NAME: TdxDBGridColumn;
    gridDataDEPT_NO: TdxDBGridColumn;
    gridDataDEPT_NAME: TdxDBGridColumn;
    gridDataTITLE_NO: TdxDBGridColumn;
    gridDataTITLE_NAME: TdxDBGridColumn;
    gridDataPOSITION_NO: TdxDBGridColumn;
    gridDataASSIGNED_DATE: TdxDBGridDateColumn;
    gridDataWORK_TYPE_NO: TdxDBGridColumn;
    gridDataWORK_TYPE_NAME: TdxDBGridColumn;
    gridDataEND_DATE: TdxDBGridDateColumn;
    gridDataDISMISS_DATE: TdxDBGridDateColumn;
    gridDataCONTRACT_NO: TdxDBGridColumn;
    gridDataDECISION_NO: TdxDBGridColumn;
    gridDataEMAIL: TdxDBGridColumn;
    gridDataIS_MAIN_POSITION: TdxDBGridCheckColumn;
    gridDataIS_DISMISSED: TdxDBGridCheckColumn;
    memData: TdxMemData;
    ActionList1: TActionList;
    acXem: TAction;
    dxDept: TdxPopupEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxViewAll: TdxCheckEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    acDong: TAction;
    dxLayoutControl1Item6: TdxLayoutItem;
    dximOption: TdxImageEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxCVHienTai: TdxCheckEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    ElLabel1: TElLabel;
    dxLayoutControl1Group3: TdxLayoutGroup;
    qryDataMASO_BHXH: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridDataBeginDragNode(Sender: TObject;
      Node: TdxTreeListNode);
    procedure gridDataEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dxDeptInitPopup(Sender: TObject);
    procedure dxDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure acXemExecute(Sender: TObject);
    procedure dxDeptChange(Sender: TObject);
    procedure acDongExecute(Sender: TObject);
  private
    { Private declarations }
    F_FocusForm:TfrmBase;
    F_DEPTNO, SQL_BANDAU:WideString;
  public
    { Public declarations }
    procedure SetFocusForm(form:TfrmBase);
  end;

var
  frmSelectEmployee: TfrmSelectEmployee;

implementation

uses MainDM, Luong_TaoPAForm, PopupMainForm, SSP_Library;

{$R *.dfm}

procedure TfrmSelectEmployee.FormCreate(Sender: TObject);
begin
  dximOption.Tag := 1;
  dximOption.Descriptions.Add(Utf8Decode('Đang làm việc'));
  dximOption.Descriptions.Add(Utf8Decode('Đã thôi việc'));
  dximOption.Descriptions.Add(Utf8Decode('Tất cả'));
  dximOption.Values.Add('WORK');
  dximOption.Values.Add('OUT');
  dximOption.Values.Add('ALL');

  dximOption.Text := 'WORK';
  dximOption.Tag := 0;

  inherited;
  memData.CreateFieldsFromDataSet(qryData);
//  acXem.Execute;
  gridData.FullExpand;
  SQL_BANDAU := qryData.SQLWhere.Text;
end;

procedure TfrmSelectEmployee.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
//  frmSelectEmployee := nil;
end;
procedure TfrmSelectEmployee.SetFocusForm(form:TfrmBase);
begin
  F_FocusForm:=form;
end;
procedure TfrmSelectEmployee.gridDataBeginDragNode(Sender: TObject;
  Node: TdxTreeListNode);
  procedure AddNode(node: TdxTreeListNode);
  var
    i: integer;
  begin
    if node.HasChildren then
    begin
      //Locked by THUYPTP - 19/01/2009
      //Khong xet cac node co cap con vi moi lan duyet cac node cha nay,
      //Cac node con se duoc them vao 1 lan
      //Sau do khi duyet toi chinh cac node con nay lai duoc them vao 1 lan nua
      //Do do xay ra tinh trang xuat hien 2 dong du lieu nhu nhau
      {for i := 0 to Node.Count - 1 do
        AddNode(node.Items[i]);}
    end
    else
    begin
      if not (memData.State in [dsInsert]) then
        memData.Append;
      for i := 0 to gridData.ColumnCount - 1 do
        memData.FieldByName(gridData.Columns[i].FieldName).Value :=
          node.Values[gridData.Columns[i].Index];
      memData.Post;
    end
  end;
var
  i: integer;
begin
  inherited;
  F_FocusForm:=nil;
  if memData.Active then
    memData.Close;
  memData.Open;
  if gridData.SelectedCount > 1 then
  begin
    for i := 0 to gridData.SelectedCount - 1 do
      AddNode(gridData.SelectedNodes[i]);
  end
  else
    AddNode(Node);
end;

procedure TfrmSelectEmployee.gridDataEndDrag(Sender, Target: TObject; X,
  Y: Integer);
var
  acGetData: TComponent;
begin
  inherited;
  if not Assigned(F_FocusForm) then exit;
  acGetData := F_FocusForm.FindComponent('acGetSelectedEmployee');
  if Assigned(acGetData) and (acGetData is TAction) then
  begin
    (acGetData as TAction).Execute;
    qryData.Refresh;
  end;
  if memData.Active then
    memData.Close;
end;

procedure TfrmSelectEmployee.dxDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList',frmPopupMain,sender,2);
  frmPopupMain.dxtlDeptList.FullExpand;
end;

procedure TfrmSelectEmployee.dxDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text:=frmPopupMain.qryDeptListDEPT_NAME.Value;
    F_DEPTNO:=frmPopupMain.qryDeptListDEPT_NO.Value;
  end;
  frmPopupMain.qryDeptList.Close;
  gridData.FullExpand;
end;

procedure TfrmSelectEmployee.acXemExecute(Sender: TObject);
var
  str_SQLwhere : widestring;
begin
  inherited;
  if qryData.Active then qryData.Close;
  if Trim(F_DEPTNO)='' then
    qryData.ParamByName('DEPT_NO').Clear
  else
    qryData.ParamByName('DEPT_NO').Value:=F_DEPTNO;
  if dxViewAll.Checked then
    qryData.ParamByName('VIEW_ALL').Value:=1
  else
    qryData.ParamByName('VIEW_ALL').Value:=0;

  // Added by THUYPTP - 03/02/2009
  str_SQLwhere := '';
  if SQL_BANDAU = '' then
    str_SQLwhere := ' WHERE '
  else
    str_SQLwhere := SQL_BANDAU + ' AND ';

  if dximOption.Text = 'ALL' then
  begin
    if dxCVHienTai.Checked then
      qryData.SQLWhere.Text := str_SQLwhere + ' IS_CADIDATE=0 and ' +
          ' ((((STATE is null) or (STATE=''WORK'')) and dismiss_date is null) or' +
          ' (STATE=''OUT''))'
    else
      qryData.SQLWhere.Text := str_SQLwhere + ' IS_CADIDATE=0 ';
  end
  else
    if dximOption.Text = 'WORK' then
    begin
      if dxCVHienTai.Checked then
        qryData.SQLWhere.Text := str_SQLwhere +  ' IS_CADIDATE=0 and ((STATE is null) or (STATE=''WORK'')) and dismiss_date is null'
      else
        qryData.SQLWhere.Text := str_SQLwhere +  ' IS_CADIDATE=0 and ((STATE is null) or (STATE=''WORK''))';        
    end
    else
      if dximOption.Text = 'OUT' then
        qryData.SQLWhere.Text := str_SQLwhere + ' IS_CADIDATE=0 and STATE=''OUT''';



  qryData.Open;
  gridData.FullExpand;
end;

procedure TfrmSelectEmployee.dxDeptChange(Sender: TObject);
begin
  inherited;
  if dxDept.Text='' then
    F_DEPTNO:='';
end;

procedure TfrmSelectEmployee.acDongExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

end.

