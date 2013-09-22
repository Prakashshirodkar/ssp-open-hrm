unit InitHolidayTimeTemplateForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, ActnList, ElBtnCtl, ElPopBtn, dxExEdtr,
  dxEdLib, dxCntner, dxEditor, DB, IBODataset;

type
  TfrmInitHolidayTimeTemplate = class(TfrmBase)
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
    tStartTime: TdxTimeEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    tEndTime: TdxTimeEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dtEndDate: TdxImageEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxPopupEdit1: TdxPopupEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    qrySetHolidateTimeTemplate: TIBOQuery;
    procedure acCancelExecute(Sender: TObject);
    procedure acOKExecute(Sender: TObject);
    procedure dxPopupEdit1InitPopup(Sender: TObject);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    WHT_NO,CALENDAR_NO:WideString;
  end;

var
  frmInitHolidayTimeTemplate: TfrmInitHolidayTimeTemplate;

implementation

uses MainDM, PopupMainForm, SSP_Library, CalendarForm;

{$R *.dfm}

procedure TfrmInitHolidayTimeTemplate.acCancelExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;

procedure TfrmInitHolidayTimeTemplate.acOKExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  
  if tStartTime.Time=0 then
  begin
     HintBox(38,self,tStartTime);
      Screen.Cursor:=crDefault;
     exit;
  end;
  if tEndTime.Time=0 then
  begin
     HintBox(38,self,tEndTime);
      Screen.Cursor:=crDefault;
     exit;
  end;
  if Length(WHT_NO)=0 then
  begin
     HintBox(38,self,dxPopupEdit1);
      Screen.Cursor:=crDefault;
     exit;
  end;

  qrySetHolidateTimeTemplate.ParamByName('CALENDAR_NO').Value:=CALENDAR_NO;
  qrySetHolidateTimeTemplate.ParamByName('IN_YEAR').Value:=spInYear.IntValue;
  if chkDeleteOldData.Checked then
    qrySetHolidateTimeTemplate.ParamByName('DELETE_OLD_DATA').Value:=1
  else
    qrySetHolidateTimeTemplate.ParamByName('DELETE_OLD_DATA').Value:=0;
    qrySetHolidateTimeTemplate.ParamByName('START_TIME_DEFAULT').Value:=tStartTime.Time;
    qrySetHolidateTimeTemplate.ParamByName('END_TIME_DEFAULT').Value:=tEndTime.Time;
    qrySetHolidateTimeTemplate.ParamByName('END_DATE_DEFAULT').Value:=StrToInt(dtEndDate.Text);
    qrySetHolidateTimeTemplate.ParamByName('WORK_HOUR_TYPE').Value:=WHT_NO;
  try
    dmMain.ExecuteSQL(qrySetHolidateTimeTemplate);
  except
    Screen.Cursor:=crDefault;
    Exit;
  end;
  Screen.Cursor:=crDefault;
  ModalResult:=mrOk;
end;

procedure TfrmInitHolidayTimeTemplate.dxPopupEdit1InitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWorkHourType.Open;
    InitPopupControl('dxlcWorkHourType',frmPopupMain,sender,2);
end;

procedure TfrmInitHolidayTimeTemplate.dxPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text:=frmPopupMain.qryWorkHourTypeWHT_NAME.Value;
    WHT_NO:=frmPopupMain.qryWorkHourTypeWHT_NO.Value;
  end;
  frmPopupMain.qryWorkHourType.Close;
end;

procedure TfrmInitHolidayTimeTemplate.FormCreate(Sender: TObject);
begin
  dtEndDate.Descriptions.Add(Utf8Decode('Cùng ngày'));
  dtEndDate.Descriptions.Add(Utf8Decode('Hôm sau'));
  dtEndDate.Values.Add(Utf8Decode('0'));
  dtEndDate.Values.Add(Utf8Decode('1'));
  dtEndDate.Text:='0';

  inherited;
end;

end.
