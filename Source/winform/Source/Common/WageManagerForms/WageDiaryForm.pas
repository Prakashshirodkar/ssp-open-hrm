unit WageDiaryForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxExEdtr, dxEdLib, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, ElBtnCtl, ElPopBtn, dxEditor, ExtCtrls, ElPgCtl, ImgList,
  ElPanel, ElSplit, dxDBTL, DB, IBODataset, ActnList;

type
  TfrmWageDiary = class(TfrmBase)
    dxLayoutControl1: TdxLayoutControl;
    dxInMonth: TdxImageEdit;
    dxInYear: TdxSpinEdit;
    dxInPeriod: TdxSpinEdit;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    ElPopupButton3: TElPopupButton;
    ElPopupButton4: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    mainPanel: TPanel;
    dxLayoutControl1Item1: TdxLayoutItem;
    pageLeft: TElPageControl;
    ImageList1: TImageList;
    tabDeptList: TElTabSheet;
    ElSplitter1: TElSplitter;
    tlDeptList: TdxDBTreeList;
    panelMain: TPanel;
    gridEmpList: TdxDBGrid;
    ElSplitter2: TElSplitter;
    gridHistory: TdxDBGrid;
    dsDeptList: TDataSource;
    qryDeptList: TIBOQuery;
    qryDeptListDEPT_NO: TWideStringField;
    qryDeptListP_DEPT_NO: TWideStringField;
    qryDeptListDEPT_NAME: TWideStringField;
    tlDeptListDEPT_NAME: TdxDBTreeListColumn;
    qryEmpList: TIBOQuery;
    dsEmpList: TDataSource;
    qryHistory: TIBOQuery;
    dsHistory: TDataSource;
    qryEmpListEMPLOYEE_NO: TWideStringField;
    qryEmpListFULL_NAME: TWideStringField;
    qryEmpListTITLE_NAME: TWideStringField;
    gridEmpListEMPLOYEE_NO: TdxDBGridColumn;
    gridEmpListFULL_NAME: TdxDBGridColumn;
    gridEmpListTITLE_NAME: TdxDBGridColumn;
    qryHistoryWAGE_FORMULAR: TWideStringField;
    qryHistoryFORMULAR_NAME: TWideStringField;
    qryHistoryWAGE_VALUE: TIBOFloatField;
    qryHistoryLOG_DATA: TWideStringField;
    qryHistoryERROR_POSITION: TIntegerField;
    gridHistoryFORMULAR_NAME: TdxDBGridColumn;
    gridHistoryWAGE_VALUE: TdxDBGridColumn;
    gridHistoryLOG_DATA: TdxDBGridColumn;
    gridHistoryERROR_POSITION: TdxDBGridColumn;
    ActionList1: TActionList;
    acXem: TAction;
    acBack: TAction;
    acNext: TAction;
    imOption: TdxImageEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    constructor Create(AOwner: TComponent; At_Month: integer = 0;
      At_Year: integer = 0; At_Period: integer = 0);
    procedure acXemExecute(Sender: TObject);
    procedure acBackExecute(Sender: TObject);
    procedure acNextExecute(Sender: TObject);
    procedure gridHistoryCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: WideString; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWageDiary: TfrmWageDiary;

implementation

uses MainDM, SSP_Library, DateUtils;

{$R *.dfm}

constructor TfrmWageDiary.Create(AOwner: TComponent; At_Month, At_Year,
  At_Period: integer);
begin
  inherited Create(AOwner);
  if At_Year > 0 then
    dxInYear.IntValue := At_Year
  else
    dxInYear.IntValue := YearOf(Now);
  if At_Month > 0 then
    dxInMonth.Text := IntToStr(At_Month)
  else
    dxInMonth.Text := IntToStr(MOnthOf(Now));
  if At_Period > 0 then
    dxInPeriod.IntValue := At_Period
  else
    dxInPeriod.IntValue := 1;
  acXem.Execute;
end;

procedure TfrmWageDiary.FormCreate(Sender: TObject);
begin
  InitMonthControl(dxInMonth);
  InitEmpOptionControl(imOption);
  imOption.Text := '0';
  inherited;

end;

procedure TfrmWageDiary.acXemExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  qryEmpList.DisableControls;
  qryHistory.DisableControls;
  if qryEmpList.Active then
    qryEmpList.Close;
  if qryHistory.Active then
    qryHistory.Close;

  if qryDeptList.Active = false then
  begin
    qryDeptList.Open;
    CustomExpand(tlDeptList);
  end;

  qryEmpList.ParamByName('IS_DISMISSED').Value := StrToInt(imOption.Text);
  qryEmpList.Open;
  qryHistory.ParamByName('PERIOD_ID').Value :=
    10 * (StrToInt(dxInMonth.Text) - 1 + 12 * dxInYear.IntValue) +
      dxInPeriod.IntValue;
  qryHistory.Open;
  qryHistory.EnableControls;
  qryEmpList.EnableControls;
  Screen.Cursor := crDefault;
end;

procedure TfrmWageDiary.acBackExecute(Sender: TObject);
begin
  inherited;
  if dxInMonth.Text = '1' then
  begin
    dxInMonth.Text := '12';
    dxInYear.IntValue := dxInYear.IntValue - 1;
  end
  else
    dxInMonth.Text := IntToStr(StrToInt(dxInMonth.Text) - 1);
  acXem.Execute;
end;

procedure TfrmWageDiary.acNextExecute(Sender: TObject);
begin
  inherited;
  if dxInMonth.Text = '12' then
  begin
    dxInMonth.Text := '1';
    dxInYear.IntValue := dxInYear.IntValue + 1;
  end
  else
    dxInMonth.Text := IntToStr(StrToInt(dxInMonth.Text) + 1);
  acXem.Execute;
end;

procedure TfrmWageDiary.gridHistoryCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: WideString; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
begin
  inherited;
  try
    if Anode.Values[gridHistoryERROR_POSITION.Index] > 0 then
      AColor := $008080FF;
  except
  end
end;

end.

