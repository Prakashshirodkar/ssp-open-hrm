unit WageDataGenerateForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxExEdtr, dxEdLib, dxCntner, dxEditor,
  ActnList, ElBtnCtl, ElPopBtn, IB_Components, IB_Process, IB_Script, DB,
  IBODataset;

type
  TfrmWageDataGenerate = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxMonth: TdxSpinEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxYear: TdxSpinEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxPeriod: TdxSpinEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ActionList1: TActionList;
    acDongy: TAction;
    acBoqua: TAction;
    qryExecute: TIBOQuery;
    procedure acDongyExecute(Sender: TObject);
    procedure acBoquaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FOR_MONTH,FOR_YEAR,FOR_PERIOD:integer;
    FOR_WHAT:string;
  public
    { Public declarations }
    constructor Create(AOwner:TComponent;Month,Year,Period:integer;What:string);
  end;

var
  frmWageDataGenerate: TfrmWageDataGenerate;

implementation

uses MainDM;

{$R *.dfm}
constructor TfrmWageDataGenerate.Create(AOwner:TComponent;Month,Year,Period:integer;What:string);
begin
  inherited Create(AOwner);
  FOR_MONTH:=Month;
  FOR_YEAR:=Year;
  FOR_PERIOD:=Period;
  FOR_WHAT:=What;

end;
procedure TfrmWageDataGenerate.acDongyExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  try
    qryExecute.ParamByName('FROM_MONTH').Value:=dxMonth.IntValue;
    qryExecute.ParamByName('FROM_YEAR').Value:=dxYear.IntValue;
    qryExecute.ParamByName('FROM_PERIOD').Value:=dxPeriod.IntValue;
    qryExecute.ParamByName('TO_MONTH').Value:=FOR_MONTH;
    qryExecute.ParamByName('TO_YEAR').Value:=FOR_YEAR;
    qryExecute.ParamByName('TO_PERIOD').Value:=FOR_PERIOD;
    qryExecute.ParamByName('DATA_TYPE').Value:=FOR_WHAT;
    dmMain.ExecuteSQL(qryExecute);
    ModalResult:=mrOk;
  except
    ModalResult:=mrCancel;
  end;
  Screen.Cursor:=crDefault;
end;

procedure TfrmWageDataGenerate.acBoquaExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;

procedure TfrmWageDataGenerate.FormShow(Sender: TObject);
begin
  inherited;
  if FOR_MONTH<=1 then
  begin
    dxMonth.IntValue:=12;
    dxYear.IntValue:=FOR_YEAR-1;
  end
  else
  begin
    dxMonth.IntValue:=FOR_MONTH-1;
    dxYear.IntValue:=FOR_YEAR;
  end;
  dxPeriod.IntValue:=FOR_PERIOD;
end;

end.
