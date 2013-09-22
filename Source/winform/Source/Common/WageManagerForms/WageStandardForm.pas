unit WageStandardForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ImgList,
  ElPgCtl, dxLayoutControl, ToolbarFrame, cxControls, dxExEdtr, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxGrClEx, DB, IBODataset,
  ElPanel, ElSplit, ExtCtrls, ActnList;

type
  TfrmWageStandard = class(TfrmBase)
    pageMain: TElPageControl;
    tabWageStandard: TElTabSheet;
    tabEmpWageStandard: TElTabSheet;
    ImageList1: TImageList;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    frameToolbar1: TframeToolbar;
    gridWageStandard: TdxDBGrid;
    dxLayoutControl1Item2: TdxLayoutItem;
    dsWageStandard: TDataSource;
    qryWageStandard: TIBOQuery;
    qryWageStandardWAGE_SCALE: TWideStringField;
    qryWageStandardCAREER_NAME: TWideStringField;
    qryWageStandardWAGE_LEVEL: TIntegerField;
    qryWageStandardWAGE_COEFF: TIBOFloatField;
    qryWageStandardPROMOTION: TIntegerField;
    qryWageStandardNOTE: TWideStringField;
    gridWageStandardCAREER_NAME: TdxDBGridPopupColumn;
    gridWageStandardWAGE_LEVEL: TdxDBGridSpinColumn;
    gridWageStandardWAGE_COEFF: TdxDBGridCalcColumn;
    gridWageStandardPROMOTION: TdxDBGridSpinColumn;
    gridWageStandardNOTE: TdxDBGridColumn;
    gridWageStandardWAGE_SCALE: TdxDBGridColumn;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    frameToolbar2: TframeToolbar;
    Panel1: TPanel;
    dxLayoutControl2Item2: TdxLayoutItem;
    pageLeft: TElPageControl;
    tabChangeHistory: TElTabSheet;
    ElSplitter1: TElSplitter;
    gridEmpChange: TdxDBGrid;
    gridHistoryChange: TdxDBGrid;
    qryHistoryChange: TIBOQuery;
    dsHistoryChange: TDataSource;
    qryEmpChange: TIBOQuery;
    dsEmpChange: TDataSource;
    qryHistoryChangeCHANGE_NO: TWideStringField;
    qryHistoryChangeCHANGE_NAME: TWideStringField;
    qryHistoryChangeDEFAULT_MONTH: TIntegerField;
    qryHistoryChangeDEFAULT_YEAR: TIntegerField;
    qryHistoryChangeDEFAULT_PERIOD: TIntegerField;
    gridHistoryChangeCHANGE_NO: TdxDBGridColumn;
    gridHistoryChangeCHANGE_NAME: TdxDBGridColumn;
    gridHistoryChangeDEFAULT_MONTH: TdxDBGridSpinColumn;
    gridHistoryChangeDEFAULT_YEAR: TdxDBGridSpinColumn;
    gridHistoryChangeDEFAULT_PERIOD: TdxDBGridSpinColumn;
    qryEmpChangeCHANGE_NO: TWideStringField;
    qryEmpChangeEMPLOYEE_NO: TWideStringField;
    qryEmpChangeFULL_NAME: TWideStringField;
    qryEmpChangeDEPT_NAME: TWideStringField;
    qryEmpChangeTITLE_NAME: TWideStringField;
    qryEmpChangeWAGE_SCALE: TWideStringField;
    qryEmpChangeWAGE_LEVEL: TIntegerField;
    qryEmpChangeWAGE_COEFF: TIBOFloatField;
    qryEmpChangeAPPLY_MONTH: TIntegerField;
    qryEmpChangeAPPLY_YEAR: TIntegerField;
    qryEmpChangeAPPLY_PERIOD: TIntegerField;
    gridEmpChangeEMPLOYEE_NO: TdxDBGridColumn;
    gridEmpChangeFULL_NAME: TdxDBGridPopupColumn;
    gridEmpChangeDEPT_NAME: TdxDBGridColumn;
    gridEmpChangeTITLE_NAME: TdxDBGridColumn;
    gridEmpChangeWAGE_LEVEL: TdxDBGridColumn;
    gridEmpChangeWAGE_COEFF: TdxDBGridCalcColumn;
    gridEmpChangeAPPLY_MONTH: TdxDBGridSpinColumn;
    gridEmpChangeAPPLY_YEAR: TdxDBGridSpinColumn;
    qryEmpChangeCAREER_NAME: TWideStringField;
    gridEmpChangeCAREER_NAME: TdxDBGridPopupColumn;
    ActionList1: TActionList;
    acTaonhanh: TAction;
    qryExecute: TIBOQuery;
    gridEmpChangeAPPLY_PERIOD: TdxDBGridSpinColumn;
    qryWageStandardKEY_ID: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure gridWageStandardCAREER_NAMEInitPopup(Sender: TObject);
    procedure gridWageStandardCAREER_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryWageStandardCAREER_NAMEChange(Sender: TField);
    procedure qryWageStandardAfterScroll(DataSet: TDataSet);
    procedure qryWageStandardNewRecord(DataSet: TDataSet);
    procedure gridHistoryChangeEnter(Sender: TObject);
    procedure gridEmpChangeEnter(Sender: TObject);
    procedure qryHistoryChangeNewRecord(DataSet: TDataSet);
    procedure acTaonhanhUpdate(Sender: TObject);
    procedure acTaonhanhExecute(Sender: TObject);
    procedure gridEmpChangeFULL_NAMEInitPopup(Sender: TObject);
    procedure gridEmpChangeFULL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridEmpChangeCAREER_NAMEInitPopup(Sender: TObject);
    procedure gridEmpChangeCAREER_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryWageStandardWAGE_SCALEChange(Sender: TField);
  private
    { Private declarations }
    WAGE_SCALE, CAREER_NAME: WideString;
  public
    { Public declarations }
  end;

var
  frmWageStandard: TfrmWageStandard;

implementation

uses MainDM, PopupMainForm, SSP_Library, DateUtils, DBActns,
  EmpForSelectForm, MainUnit, EmpListForm;

{$R *.dfm}

procedure TfrmWageStandard.FormCreate(Sender: TObject);
begin
  inherited;
  qryWageStandard.Open;
  frameToolbar1.SetDataSource(dsWageStandard);
  qryHistoryChange.Open;
  qryEmpChange.Open;
  frameToolbar2.SetDataSource(dsHistoryChange);
  gridWageStandard.FullExpand;
  pageMain.ActivePage := tabWageStandard;
end;

procedure TfrmWageStandard.gridWageStandardCAREER_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryCareerList.Open;
  InitPopupControl('dxlcCareerList', frmPopupMain, sender, 2, gridWageStandard);
end;

procedure TfrmWageStandard.gridWageStandardCAREER_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryCareerList, qryWageStandard,
    'CAREER_NO;CAREER_NAME', 'WAGE_SCALE;CAREER_NAME',
    'CAREER_NAME', Text);
  frmPopupMain.qryCareerList.Close;
end;

procedure TfrmWageStandard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryWageStandard.Close;
  qryEmpChange.Close;
  qryHistoryChange.Close;
end;

procedure TfrmWageStandard.qryWageStandardCAREER_NAMEChange(
  Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet, Sender.FieldName, 'WAGE_SCALE');
end;

procedure TfrmWageStandard.qryWageStandardAfterScroll(DataSet: TDataSet);
begin
  inherited;
  WAGE_SCALE := qryWageStandardWAGE_SCALE.Value;
  CAREER_NAME := qryWageStandardCAREER_NAME.Value;
end;

procedure TfrmWageStandard.qryWageStandardNewRecord(DataSet: TDataSet);
begin
  inherited;
  if Length(WAGE_SCALE) > 0 then
  begin
    qryWageStandardWAGE_SCALE.Value := WAGE_SCALE;
    qryWageStandardCAREER_NAME.Value := CAREER_NAME;
  end;
end;

procedure TfrmWageStandard.gridHistoryChangeEnter(Sender: TObject);
begin
  inherited;
  frameToolbar2.SetDataSource(dsHistoryChange);
end;

procedure TfrmWageStandard.gridEmpChangeEnter(Sender: TObject);
begin
  inherited;
  frameToolbar2.SetDataSource(dsEmpChange);
end;

procedure TfrmWageStandard.qryHistoryChangeNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryHistoryChangeDEFAULT_MONTH.Value := MOnthOf(Now);
  qryHistoryChangeDEFAULT_YEAR.Value := YearOf(Now);
  qryHistoryChangeDEFAULT_PERIOD.Value := 1;
end;

procedure TfrmWageStandard.acTaonhanhUpdate(Sender: TObject);
begin
  inherited;
  acTaonhanh.Enabled := (frameToolbar2.acDSInsert.DataSource = dsEmpChange)and
                        (qryHistoryChange.RecordCount>0);
end;

procedure TfrmWageStandard.acTaonhanhExecute(Sender: TObject);
begin
  inherited;

  with TfrmEmpList.Create(self) do
  try
    if ShowModal = mrOk then
    begin
      if qryEmpChange.State in [dsEdit,dsInsert] then
        qryEmpChange.Cancel;
      qryEmpChange.DisableControls;
      if (memList.RecordCount > 0) then
      begin
        frmMain.SetStatusBarPrgDisplay(0,memList.RecordCount);
        memList.First;
        while not memList.Eof do
        begin
          if memListSELECTED.Value = 1 then
            if not qryEmpChange.Locate('EMPLOYEE_NO',
              memListEMPLOYEE_NO.Value, []) then
            begin
              qryEmpChange.Append;
              qryEmpChangeCHANGE_NO.Value :=
                qryHistoryChangeCHANGE_NO.Value;
              qryEmpChangeEMPLOYEE_NO.Value :=
                memListEMPLOYEE_NO.Value;
              qryEmpChangeFULL_NAME.Value :=
                memListFULL_NAME.Value;
              qryEmpChangeDEPT_NAME.Value:=memListDEPT_NAME.Value;
              qryEmpChangeTITLE_NAME.Value:=memListTITLE_NAME.Value;

              if qryHistoryChangeDEFAULT_MONTH.IsNull then
                qryEmpChangeAPPLY_MONTH.Value:=MonthOf(Now)
              else
                qryEmpChangeAPPLY_MONTH.Value:=qryHistoryChangeDEFAULT_MONTH.Value;
              if qryHistoryChangeDEFAULT_YEAR.IsNull then
                qryEmpChangeAPPLY_YEAR.Value:=YearOf(Now)
              else
                qryEmpChangeAPPLY_YEAR.Value:=qryHistoryChangeDEFAULT_YEAR.Value;
              if qryHistoryChangeDEFAULT_PERIOD.IsNull then
                qryEmpChangeAPPLY_PERIOD.Value:=1
              else
                qryEmpChangeAPPLY_PERIOD.Value:=qryHistoryChangeDEFAULT_PERIOD.Value;

              if Length(SELECT_WAGE_SCALE)>0 then
              begin
                qryEmpChangeWAGE_SCALE.Value:=SELECT_WAGE_SCALE;
                qryEmpChangeCAREER_NAME.Value:=SELECT_CAREER_NAME;
                qryEmpChangeWAGE_LEVEL.Value:=StrToIntDef(dxWageLevel.Text,0);
              end;
              qryEmpChangeWAGE_COEFF.Value:=StrToFloatDef(dxWageCoeff.Text,0);

              qryEmpChange.Post;
            end;
          frmMain.BarPrgStepIt;
          memList.Next;
        end;
      end;
      qryEmpChange.Refresh;
      qryEmpChange.EnableControls;
    end
  finally

  end;

end;

procedure TfrmWageStandard.gridEmpChangeFULL_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryEmp_Position .Open;
  InitPopupControl('dxlcEmp_Position',frmPopupMain,sender,2,gridEmpChange);
end;

procedure TfrmWageStandard.gridEmpChangeFULL_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupMain.qryEmp_Position,qryEmpChange,
               'EMPLOYEE_NO;FULL_NAME;DEPT_NAME;TITLE_NAME','EMPLOYEE_NO;FULL_NAME;DEPT_NAME;TITLE_NAME',
               'FULL_NAME',Text);
    frmPopupMain.qryEmp_Position.Close;
end;

procedure TfrmWageStandard.gridEmpChangeCAREER_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWageStandard.Open;
  InitPopupControl('dxlcWageStandard',frmPopupMain,sender,2,gridEmpChange);
end;

procedure TfrmWageStandard.gridEmpChangeCAREER_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupMain.qryWageStandard,qryEmpChange,
               'WAGE_SCALE;CAREER_NAME;WAGE_LEVEL;WAGE_COEFF','WAGE_SCALE;CAREER_NAME;WAGE_LEVEL;WAGE_COEFF',
               'CAREER_NAME',Text);
    frmPopupMain.qryWageStandard.Close;
end;

procedure TfrmWageStandard.qryWageStandardWAGE_SCALEChange(Sender: TField);
begin
  inherited;
  qryWageStandardKEY_ID.Value:=qryWageStandardWAGE_SCALE.Value+qryWageStandardWAGE_LEVEL.AsString;
end;

end.

