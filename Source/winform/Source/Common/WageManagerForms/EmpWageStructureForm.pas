unit EmpWageStructureForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  ImgList, ElSplit, dxDBCtrl, dxTL, dxCntner, dxDBTL, ElPgCtl, ExtCtrls,
  ElPanel, DB, IBODataset, ActnList, ElBtnCtl, ElPopBtn, dxLayoutControl,
  dxDBGrid, cxControls, dxDBTLCl, dxGrClms, dxEditor, dxEdLib;

type
  TfrmEmpWageStructure = class(TfrmBase)
    panelBackground: TElPanel;
    pageControl: TElPageControl;
    tabOperationInfo: TElTabSheet;
    dxtlWageStructure: TdxDBTreeList;
    imgIcon: TImageList;
    pageMain: TElPageControl;
    tabNhanvienCocau: TElTabSheet;
    tabTongket: TElTabSheet;
    qryWageStructure: TIBOQuery;
    dsWageStructure: TDataSource;
    Splitter1: TSplitter;
    dxtlWageStructureSTRUCTURE_NAME: TdxDBTreeListColumn;
    dxlcTopGroup_Root: TdxLayoutGroup;
    dxlcTop: TdxLayoutControl;
    gridEmpInWageGroup: TdxDBGrid;
    dxlcTopItem1: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxlcTopItem2: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxlcTopItem3: TdxLayoutItem;
    dxlcTopGroup1: TdxLayoutGroup;
    ActionList1: TActionList;
    acChuyenlen: TAction;
    acChuyenxuong: TAction;
    Splitter2: TSplitter;
    dsEmpWageGroup: TDataSource;
    qryEmpNoGroup: TIBOQuery;
    dsEmpNoGroup: TDataSource;
    gridEmpInWageGroupEMPLOYEE_NO: TdxDBGridColumn;
    gridEmpInWageGroupFULL_NAME: TdxDBGridColumn;
    gridEmpInWageGroupDEPT_NAME: TdxDBGridColumn;
    gridEmpInWageGroupTITLE_NAME: TdxDBGridColumn;
    gridEmpInWageGroupIS_DISMISSED: TdxDBGridCheckColumn;
    gridEmpInWageGroupDISMISS_DATE: TdxDBGridDateColumn;
    dxLayoutControl1: TdxLayoutControl;
    gridEmpNoGroup: TdxDBGrid;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    qryEmpNoGroupEMPLOYEE_NO: TWideStringField;
    qryEmpNoGroupFULL_NAME: TWideStringField;
    qryEmpNoGroupDEPT_NAME: TWideStringField;
    qryEmpNoGroupTITLE_NAME: TWideStringField;
    qryEmpNoGroupIS_DISMISSED: TIntegerField;
    qryEmpNoGroupDISMISS_DATE: TDateField;
    acViewData: TAction;
    imOption: TdxImageEdit;
    dxlcTopItem4: TdxLayoutItem;
    qryExecute: TIBOQuery;
    gridEmpNoGroupEMPLOYEE_NO: TdxDBGridColumn;
    gridEmpNoGroupFULL_NAME: TdxDBGridColumn;
    gridEmpNoGroupDEPT_NAME: TdxDBGridColumn;
    gridEmpNoGroupTITLE_NAME: TdxDBGridColumn;
    gridEmpNoGroupIS_DISMISSED: TdxDBGridCheckColumn;
    gridEmpNoGroupDISMISS_DATE: TdxDBGridDateColumn;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxSelectDept: TdxPopupEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    gridSummary: TdxDBGrid;
    dxLayoutControl2Item2: TdxLayoutItem;
    qrySummary: TIBOQuery;
    dsSummary: TDataSource;
    dxlc: TdxLayoutItem;
    imOptionPage2: TdxImageEdit;
    dxLayoutControl2Group1: TdxLayoutGroup;
    chkViewAll: TdxCheckEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    gridSummaryEMPLOYEE_NO: TdxDBGridColumn;
    gridSummaryFULL_NAME: TdxDBGridColumn;
    gridSummaryDEPT_NAME: TdxDBGridColumn;
    gridSummaryTITLE_NAME: TdxDBGridColumn;
    gridSummaryIS_DISMISSED: TdxDBGridCheckColumn;
    gridSummarySTRUCTURE_NAME: TdxDBGridColumn;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Group4: TdxLayoutGroup;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxtlWageStructureEMP_COUNT: TdxDBTreeListColumn;
    qryWageStructureSTRUCTURE_NO: TWideStringField;
    qryWageStructureSTRUCTURE_NAME: TWideStringField;
    qryWageStructureEMP_COUNT: TIntegerField;
    qryWageStructureP_STRUCTURE_NO: TWideStringField;
    qryWageStructureITEM_HEIGHT: TIntegerField;
    qryWageStructureITEM_WIDTH: TIntegerField;
    qryWageStructureITEM_SHAPE: TSmallintField;
    qryWageStructureITEM_COLOR: TIntegerField;
    qryWageStructureITEM_ALIGN: TSmallintField;
    qryEmpWageGroup: TIBOQuery;
    qryEmpWageGroupEMPLOYEE_NO: TWideStringField;
    qryEmpWageGroupFULL_NAME: TWideStringField;
    qryEmpWageGroupDEPT_NAME: TWideStringField;
    qryEmpWageGroupTITLE_NAME: TWideStringField;
    qryEmpWageGroupIS_DISMISSED: TIntegerField;
    qryEmpWageGroupDISMISS_DATE: TDateField;
    qrySummaryEMPLOYEE_NO: TWideStringField;
    qrySummaryFULL_NAME: TWideStringField;
    qrySummaryDEPT_NAME: TWideStringField;
    qrySummaryTITLE_NAME: TWideStringField;
    qrySummaryIS_DISMISSED: TIntegerField;
    qrySummarySTRUCTURE_NAME: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acViewDataExecute(Sender: TObject);
    procedure acChuyenlenExecute(Sender: TObject);
    procedure acChuyenlenUpdate(Sender: TObject);
    procedure acChuyenxuongExecute(Sender: TObject);
    procedure acChuyenxuongUpdate(Sender: TObject);
    procedure dxSelectDeptInitPopup(Sender: TObject);
    procedure dxSelectDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectDeptChange(Sender: TObject);
    procedure dxtlWageStructureSTRUCTURE_NAMECustomDrawCell(
      Sender: TObject; ACanvas: TCanvas; ARect: TRect;
      ANode: TdxTreeListNode; AColumn: TdxTreeListColumn; ASelected,
      AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxtlWageStructureChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure pageMainChanging(Sender: TObject; NewPage: TElTabSheet;
      var AllowChange: Boolean);
  private
    { Private declarations }
    SELECT_DEPT_NO:WideString;
    something_change:boolean;
    VIEW_DATA:string;
  public
    { Public declarations }
  end;

var
  frmEmpWageStructure: TfrmEmpWageStructure;

implementation

uses MainDM, MainUnit, PopupMainForm, SSP_Library;

{$R *.dfm}

procedure TfrmEmpWageStructure.FormCreate(Sender: TObject);
begin
  imOption.Descriptions.Add(Utf8Decode('Đang làm việc'));
  imOption.Descriptions.Add(Utf8Decode('Đã thôi việc'));
  imOption.Descriptions.Add(Utf8Decode('Tất cả'));

  imOption.Values.Add('0');
  imOption.Values.Add('1');
  imOption.Values.Add('2');

  imOptionPage2.Descriptions.Add(Utf8Decode('Đang làm việc'));
  imOptionPage2.Descriptions.Add(Utf8Decode('Đã thôiviệc'));
  imOptionPage2.Descriptions.Add(Utf8Decode('Tất cả'));

  imOptionPage2.Values.Add('0');
  imOptionPage2.Values.Add('1');
  imOptionPage2.Values.Add('2');

  inherited;
  qryWageStructure.Open;
  dxtlWageStructure.FullExpand;
  pageMain.ActivePage := tabNhanvienCocau;
  imOptionPage2.Text := '0';
  imOption.Text := '0';
  gridEmpInWageGroup.Bands[0].Caption:=WideUpperCase(qryWageStructureSTRUCTURE_NAME.Value);
end;

procedure TfrmEmpWageStructure.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryWageStructure.Close;
end;

procedure TfrmEmpWageStructure.acViewDataExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if VIEW_DATA='DETAIL' then
  begin

    qryEmpWageGroup.DisableControls;
    qryEmpNoGroup.DisableControls;
    if qryEmpWageGroup.Active then
        qryEmpWageGroup.Close;
    qryEmpWageGroup.ParamByName('IS_DISMISSED').Value:=StrToInt(imOption.Text);
    qryEmpWageGroup.Open;
    //================================================
    if qryEmpNoGroup.Active then
      qryEmpNoGroup.Close;
    qryEmpNoGroup.ParamByName('IS_DISMISSED').Value:=StrToInt(imOption.Text);
    qryEmpNoGroup.Open;

    qryEmpWageGroup.EnableControls;
    qryEmpNoGroup.EnableControls;
  end
  else
  if VIEW_DATA='SUMMARY' then
  begin
    qrySummary.DisableControls;
    if qrySummary.Active then
      qrySummary.Close;
    qrySummary.ParamByName('IS_DISMISSED').Value:=StrToInt(imOptionPage2.Text);

    if Length(SELECT_DEPT_NO)=0 then
    begin
      qrySummary.ParamByName('IN_DEPT_NO').Clear;
      qrySummary.ParamByName('VIEW_ALL').Value:=0;
    end
    else
    begin
      qrySummary.ParamByName('IN_DEPT_NO').Value:=SELECT_DEPT_NO;
      if chkViewAll.Checked then
        qrySummary.ParamByName('VIEW_ALL').Value:=1
      else
        qrySummary.ParamByName('VIEW_ALL').Value:=0
    end;
    qrySummary.Open;
    qrySummary.EnableControls;
    gridSummary.FullExpand;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmEmpWageStructure.acChuyenlenExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;

  qryExecute.SQL.Text :=
    'insert into hr_emp_wage_group( employee_no,structure_no)' +
    ' values(:employee_no,:structure_no)';
  frmMain.SetStatusBarPrgDisplay(0, gridEmpNoGroup.SelectedCount);
  for i := 0 to gridEmpNoGroup.SelectedCount - 1 do
  begin
    qryExecute.ParamByName('STRUCTURE_NO').Value :=
      qryWageStructureSTRUCTURE_NO.Value;
    qryExecute.ParamByName('EMPLOYEE_NO').Value :=
      gridEmpNoGroup.SelectedNodes[i].Values[gridEmpNoGroupEMPLOYEE_NO.Index];
    try
      frmMain.BarPrgStepIt;
      dmMain.ExecuteSQL(qryExecute);
    except
    end;
  end;

  qryEmpWageGroup.Close;
  qryEmpNoGroup.Close;
  qryWageStructure.RefreshRows;
  qryEmpWageGroup.Open;
  qryEmpNoGroup.Open;

  Screen.Cursor := crDefault;
  something_change:=true;
end;

procedure TfrmEmpWageStructure.acChuyenlenUpdate(Sender: TObject);
begin
  inherited;
  acChuyenlen.Enabled := (qryEmpNoGroup.RecordCount > 0) and
    (gridEmpNoGroup.SelectedCount > 0);
end;

procedure TfrmEmpWageStructure.acChuyenxuongExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;

  qryExecute.SQL.Text := 'delete from hr_emp_wage_group ' +
    ' where (employee_no=:employee_no) and (structure_no=:structure_no)';
  frmMain.SetStatusBarPrgDisplay(0, gridEmpInWageGroup.SelectedCount);
  for i := 0 to gridEmpInWageGroup.SelectedCount - 1 do
  begin
    qryExecute.ParamByName('STRUCTURE_NO').Value :=
      qryWageStructureSTRUCTURE_NO.Value;
    qryExecute.ParamByName('EMPLOYEE_NO').Value :=
      gridEmpInWageGroup.SelectedNodes[i].Values[gridEmpInWageGroupEMPLOYEE_NO.Index];
    try
      frmMain.BarPrgStepIt;
      dmMain.ExecuteSQL(qryExecute);
    except
    end;
  end;

  qryEmpWageGroup.Close;
  qryEmpNoGroup.Close;
  qryWageStructure.RefreshRows;
  qryEmpWageGroup.Open;
  qryEmpNoGroup.Open;

  Screen.Cursor := crDefault;
  something_change:=true;
end;

procedure TfrmEmpWageStructure.acChuyenxuongUpdate(Sender: TObject);
begin
  inherited;
  acChuyenxuong.Enabled := (qryEmpWageGroup.RecordCount > 0) and
    (gridEmpInWageGroup.SelectedCount > 0);
end;

procedure TfrmEmpWageStructure.dxSelectDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList',frmPopupMain,sender,2);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmEmpWageStructure.dxSelectDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text:=frmPopupMain.qryDeptListDEPT_NAME.Value;
    SELECT_DEPT_NO:=frmPopupMain.qryDeptListDEPT_NO.Value;
  end;
  frmPopupMain.qryDeptList.Close;

end;

procedure TfrmEmpWageStructure.dxSelectDeptChange(Sender: TObject);
begin
  inherited;
  if Length(dxSelectDept.Text)=0 then
    SELECT_DEPT_NO:='';
end;

procedure TfrmEmpWageStructure.dxtlWageStructureSTRUCTURE_NAMECustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AText:=AText+'  ('+VarToStr(ANode.Values[dxtlWageStructureEMP_COUNT.Index])+')';
end;

procedure TfrmEmpWageStructure.dxtlWageStructureChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  gridEmpInWageGroup.Bands[0].Caption:=WideUpperCase(qryWageStructureSTRUCTURE_NAME.Value);
end;

procedure TfrmEmpWageStructure.pageMainChanging(Sender: TObject;
  NewPage: TElTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if NewPage=tabTongket then
  begin
    if (qrySummary.Active=false)or(something_change=true) then
    begin
      VIEW_DATA:='SUMMARY';
      acViewData.Execute;
      something_change:=false;
    end;
  end
  else
  if NewPage=tabNhanvienCocau then
  begin
    VIEW_DATA:='DETAIL';
    acViewData.Execute;
  end;
end;

end.

