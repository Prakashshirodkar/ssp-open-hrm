unit InitHolidayTemplateForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, ActnList, ElBtnCtl, ElPopBtn, dxExEdtr,
  dxEdLib, dxCntner, dxEditor, DB, IBODataset;

type
  TfrmInitHolidayTemplate = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    spInYear: TdxSpinEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    chkDeleteOldData: TdxCheckEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ActionList1: TActionList;
    acOK: TAction;
    acCancel: TAction;
    qrySetHolidateTemplate: TIBOQuery;
    procedure acCancelExecute(Sender: TObject);
    procedure acOKExecute(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    CALENDAR_NO:WideString;
  end;

var
  frmInitHolidayTemplate: TfrmInitHolidayTemplate;

implementation

uses MainDM, PopupMainForm, SSP_Library, CalendarForm;

{$R *.dfm}

procedure TfrmInitHolidayTemplate.acCancelExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;

procedure TfrmInitHolidayTemplate.acOKExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  qrySetHolidateTemplate.ParamByName('CALENDAR_NO').Value:=CALENDAR_NO;
  qrySetHolidateTemplate.ParamByName('IN_YEAR').Value:=spInYear.IntValue;
  if chkDeleteOldData.Checked then
    qrySetHolidateTemplate.ParamByName('DELETE_OLD_DATA').Value:=1
  else
    qrySetHolidateTemplate.ParamByName('DELETE_OLD_DATA').Value:=0;
  try
    dmMain.ExecuteSQL(qrySetHolidateTemplate);
  except
    Screen.Cursor:=crDefault;
    Exit;
  end;
  Screen.Cursor:=crDefault;
  ModalResult:=mrOk;
end;

end.
