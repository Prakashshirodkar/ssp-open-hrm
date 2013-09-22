unit HolidayRegisterForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxCntner, dxEditor, dxEdLib, dxBar, DB,
  IBODataset, ElCaption, dxLayoutControl, dxTL, dxDBCtrl, dxDBGrid,
  ToolbarFrame, cxControls, ElXPThemedControl, ElStatBar, dxDBTLCl,
  dxGrClEx, dxGrClms, ActnList, ElBtnCtl, ElPopBtn;

type
  TfrmHolidayRegister = class(TfrmListBase)
    dxspInYear: TdxSpinEdit;
    dxlcMainItem3: TdxLayoutItem;
    qryListWDT_NO: TWideStringField;
    qryListWDT_NAME: TWideStringField;
    qryListHOLIDAY_NOTE: TWideStringField;
    dxdbgMainWDT_NAME: TdxDBGridPopupColumn;
    dxdbgMainHOLIDAY_NOTE: TdxDBGridColumn;
    ActionList1: TActionList;
    acRefreshData: TAction;
    qryListIS_FIXED: TSmallintField;
    dxdbgMainIS_FIXED: TdxDBGridCheckColumn;
    ElPopupButton1: TElPopupButton;
    dxlcMainItem4: TdxLayoutItem;
    dxlcMainGroup1: TdxLayoutGroup;
    acNewData: TAction;
    qryListHOLIDAY_NO: TDateField;
    dxdbgMainHOLIDAY_NO: TdxDBGridDateColumn;
    procedure dxdbgMainWDT_NAMEInitPopup(Sender: TObject);
    procedure dxdbgMainWDT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure acRefreshDataExecute(Sender: TObject);
    procedure qryListWDT_NAMEChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure acNewDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHolidayRegister: TfrmHolidayRegister;

implementation

uses MainDM, SSP_Library, PopupMainForm, DateUtils, InitHolidayOptionForm,
  EditBaseFrm;

{$R *.dfm}

procedure TfrmHolidayRegister.dxdbgMainWDT_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWorkDateType.Open;
    InitPopupControl('dxlcWorkDateType',frmPopupMain,sender,2,dxdbgMain);
end;

procedure TfrmHolidayRegister.dxdbgMainWDT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryWorkDateType,qryList,
             'WDT_NO;WDT_NAME','WDT_NO;WDT_NAME',
             'WDT_NAME',Text);
    frmPopupMain.qryWorkDateType.Close;
end;

procedure TfrmHolidayRegister.acRefreshDataExecute(Sender: TObject);
begin
  inherited;
  if qryList.Active then qryList.Close;
  qryList.ParamByName('IN_YEAR').Value:=dxspInYear.IntValue;
  qryList.Open;
end;

procedure TfrmHolidayRegister.qryListWDT_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,Sender.FieldName,'WDT_NO');
end;

procedure TfrmHolidayRegister.FormShow(Sender: TObject);
begin
  inherited;
  dxspInYear.Value:=YearOf(Now);
end;

procedure TfrmHolidayRegister.acNewDataExecute(Sender: TObject);
begin
  inherited;
  with TfrmInitHolidayOption.Create(self) do
  try
    dxspForYear.IntValue:=dxspInYear.IntValue;
    dxspFromYear.IntValue:=dxspInYear.IntValue-1;
    if ShowModal=mrOk then
      qryList.Refresh;
  finally
    Free;
  end;
end;

end.
