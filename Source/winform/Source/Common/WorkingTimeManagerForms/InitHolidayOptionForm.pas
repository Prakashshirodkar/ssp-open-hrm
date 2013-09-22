unit InitHolidayOptionForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, ElBtnCtl, ElCheckCtl, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, ElPopBtn, ActnList, DB, IBODataset;

type
  TfrmInitHolidayOption = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxspForYear: TdxSpinEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxspFromYear: TdxSpinEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    chkDeleteOldData: TdxCheckEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    chkJustChooseFixedDate: TdxCheckEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ActionList1: TActionList;
    acOK: TAction;
    acCancel: TAction;
    qryInitHoliday: TIBOQuery;
    procedure acOKExecute(Sender: TObject);
    procedure acCancelExecute(Sender: TObject);
    procedure qryInitHolidayError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInitHolidayOption: TfrmInitHolidayOption;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmInitHolidayOption.acOKExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  qryInitHoliday.ParamByName('FROM_YEAR').Value:=dxspFromYear.IntValue;
  qryInitHoliday.ParamByName('TO_YEAR').Value:=dxspForYear.IntValue;
  if chkDeleteOldData.Checked then
    qryInitHoliday.ParamByName('DELETE_OLD_DATA').Value:=1
  else
    qryInitHoliday.ParamByName('DELETE_OLD_DATA').Value:=0;
  if chkJustChooseFixedDate.Checked then
    qryInitHoliday.ParamByName('CHOOSE_FIXED_DATA').Value:=1
  else
    qryInitHoliday.ParamByName('CHOOSE_FIXED_DATA').Value:=0;
  try
    dmMain.ExecuteSQL(qryInitHoliday);
  except
    Screen.Cursor:=crDefault;
    Exit;
  end;
  Screen.Cursor:=crDefault;
  ModalResult:=mrOK;
end;

procedure TfrmInitHolidayOption.acCancelExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;


procedure TfrmInitHolidayOption.qryInitHolidayError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  inherited;
  RaiseException:=true;
  ShowMessageUnicode(23,ErrorMessage.Text);
end;

end.
