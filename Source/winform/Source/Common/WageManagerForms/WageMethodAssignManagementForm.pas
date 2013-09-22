unit WageMethodAssignManagementForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  ImgList, DB, IBODataset, ExtCtrls, ElPanel, ElSplit, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, ElPgCtl, dxLayoutControl, ElBtnCtl, ElPopBtn,
  cxControls, ToolbarFrame, ActnList, dxDBTLCl, dxGrClms, dxDBTL, dxEditor,
  dxEdLib;

type
  TfrmWageMethodAssignManager = class(TfrmBase)
    pageMain: TElPageControl;
    tabWageMethod: TElTabSheet;
    ElSplitter1: TElSplitter;
    frameToolbar1: TframeToolbar;
    gridChangeLog: TdxDBGrid;
    qryWageAssignChange: TIBOQuery;
    dsWageAssignChange: TDataSource;
    qryWageAssignDetail: TIBOQuery;
    dsWageAssignDetail: TDataSource;
    ActionList1: TActionList;
    acPhatsinh: TAction;
    qryWageAssignChangeCHANGE_NO: TWideStringField;
    qryWageAssignChangeCHANGE_NAME: TWideStringField;
    gridChangeLogCHANGE_NO: TdxDBGridColumn;
    gridChangeLogCHANGE_NAME: TdxDBGridColumn;
    qryWageAssignChangeCHANGE_MONTH: TIntegerField;
    qryWageAssignChangeCHANGE_YEAR: TIntegerField;
    qryWageAssignChangeCHANGE_PERIOD: TSmallintField;
    qryWageAssignChangePERIOD_NAME: TWideStringField;
    gridChangeLogCHANGE_MONTH: TdxDBGridSpinColumn;
    gridChangeLogCHANGE_YEAR: TdxDBGridSpinColumn;
    gridChangeLogCHANGE_PERIOD: TdxDBGridSpinColumn;
    gridChangeLogPERIOD_NAME: TdxDBGridColumn;
    tlWageAssignDetail: TdxDBTreeList;
    qryWageAssignDetailOBJECT_NO: TWideStringField;
    qryWageAssignDetailP_OBJECT_NO: TWideStringField;
    qryWageAssignDetailOBJECT_NAME: TWideStringField;
    qryWageAssignDetailOBJECT_DETAIL: TWideStringField;
    qryWageAssignDetailOBJECT_INDEX: TIntegerField;
    tlWageAssignDetailOBJECT_NAME: TdxDBTreeListColumn;
    tlWageAssignDetailOBJECT_DETAIL: TdxDBTreeListColumn;
    tlWageAssignDetailOBJECT_INDEX: TdxDBTreeListColumn;
    imlDetail: TImageList;
    tabSummary: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    panelMain: TElPanel;
    dxYear: TdxSpinEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxPeriod: TdxSpinEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxDBGrid1: TdxDBGrid;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    qryReport: TIBOQuery;
    dsReport: TDataSource;
    qryReportEMPLOYEE_NO: TWideStringField;
    qryReportFULL_NAME: TWideStringField;
    qryReportTITLE_NAME: TWideStringField;
    qryReportDEPT_NAME: TWideStringField;
    qryReportWAGE_GROUP_NAME: TWideStringField;
    qryReportMETHOD_NO: TWideStringField;
    qryReportMETHOD_NAME: TWideStringField;
    qryReportAPPLY_MONTH: TIntegerField;
    qryReportAPPLY_YEAR: TIntegerField;
    qryReportAPPLY_PERIOD: TIntegerField;
    acXem: TAction;
    acBack: TAction;
    acNext: TAction;
    dxDBGrid1EMPLOYEE_NO: TdxDBGridColumn;
    dxDBGrid1FULL_NAME: TdxDBGridColumn;
    dxDBGrid1TITLE_NAME: TdxDBGridColumn;
    dxDBGrid1DEPT_NAME: TdxDBGridColumn;
    dxDBGrid1WAGE_GROUP_NAME: TdxDBGridColumn;
    dxDBGrid1METHOD_NAME: TdxDBGridColumn;
    dxDBGrid1APPLY_MONTH: TdxDBGridColumn;
    dxDBGrid1APPLY_YEAR: TdxDBGridColumn;
    dxDBGrid1APPLY_PERIOD: TdxDBGridColumn;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxMonth: TdxImageEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    imOption: TdxImageEdit;
    qryReportWAGE_GROUP_NO: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure qryWageAssignChangeCHANGE_MONTHChange(Sender: TField);
    procedure qryWageAssignChangeCHANGE_YEARChange(Sender: TField);
    procedure qryWageAssignChangeCHANGE_PERIODChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acPhatsinhExecute(Sender: TObject);
    procedure acPhatsinhUpdate(Sender: TObject);
    procedure acXemExecute(Sender: TObject);
    procedure acBackExecute(Sender: TObject);
    procedure acNextExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWageMethodAssignManager: TfrmWageMethodAssignManager;

implementation

uses WageMethodAssignForm, SSP_Library, MainDM, DateUtils;

{$R *.dfm}

procedure TfrmWageMethodAssignManager.FormCreate(Sender: TObject);
begin
  imOption.Descriptions.Add(Utf8Decode('Đang làm việc'));
  imOption.Descriptions.Add(Utf8Decode('Đã thôi việc'));
  imOption.Descriptions.Add(Utf8Decode('Tất cả'));

  imOption.Values.Add('0');
  imOption.Values.Add('1');
  imOption.Values.Add('2');

  imOption.Text:='0';

  dxMonth.Descriptions.Add(Utf8Decode('Tháng 1'));
  dxMonth.Descriptions.Add(Utf8Decode('Tháng 2'));
  dxMonth.Descriptions.Add(Utf8Decode('Tháng 3'));
  dxMonth.Descriptions.Add(Utf8Decode('Tháng 4'));
  dxMonth.Descriptions.Add(Utf8Decode('Tháng 5'));
  dxMonth.Descriptions.Add(Utf8Decode('Tháng 6'));
  dxMonth.Descriptions.Add(Utf8Decode('Tháng 7'));
  dxMonth.Descriptions.Add(Utf8Decode('Tháng 8'));
  dxMonth.Descriptions.Add(Utf8Decode('Tháng 9'));
  dxMonth.Descriptions.Add(Utf8Decode('Tháng 10'));
  dxMonth.Descriptions.Add(Utf8Decode('Tháng 11'));
  dxMonth.Descriptions.Add(Utf8Decode('Tháng 12'));

  dxMonth.Values.Add('1');
  dxMonth.Values.Add('2');
  dxMonth.Values.Add('3');
  dxMonth.Values.Add('4');
  dxMonth.Values.Add('5');
  dxMonth.Values.Add('6');
  dxMonth.Values.Add('7');
  dxMonth.Values.Add('8');
  dxMonth.Values.Add('9');
  dxMonth.Values.Add('10');
  dxMonth.Values.Add('11');
  dxMonth.Values.Add('12');

  dxMonth.Text := IntToStr(Integer(MonthOf(Now)));
  dxYear.IntValue:=YearOf(Now);
  inherited;
  pageMain.ActivePageIndex:=0;
  qryWageAssignChange.Open;
  frameToolbar1.SetDataSource(dsWageAssignChange);
  qryWageAssignDetail.Open;
  CustomExpand(tlWageAssignDetail);
  acXem.Execute;
end;

procedure TfrmWageMethodAssignManager.qryWageAssignChangeCHANGE_MONTHChange(
  Sender: TField);
begin
  inherited;
  qryWageAssignChangePERIOD_NAME.Value:=
    qryWageAssignChangeCHANGE_MONTH.AsString+'/'+
    qryWageAssignChangeCHANGE_YEAR.AsString+'-'+
    qryWageAssignChangeCHANGE_PERIOD.AsString;
end;

procedure TfrmWageMethodAssignManager.qryWageAssignChangeCHANGE_YEARChange(
  Sender: TField);
begin
  inherited;
qryWageAssignChangePERIOD_NAME.Value:=
    qryWageAssignChangeCHANGE_MONTH.AsString+'/'+
    qryWageAssignChangeCHANGE_YEAR.AsString+'-'+
    qryWageAssignChangeCHANGE_PERIOD.AsString;
end;

procedure TfrmWageMethodAssignManager.qryWageAssignChangeCHANGE_PERIODChange(
  Sender: TField);
begin
  inherited;
qryWageAssignChangePERIOD_NAME.Value:=
    qryWageAssignChangeCHANGE_MONTH.AsString+'/'+
    qryWageAssignChangeCHANGE_YEAR.AsString+'-'+
    qryWageAssignChangeCHANGE_PERIOD.AsString;
end;

procedure TfrmWageMethodAssignManager.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryWageAssignDetail.Close;
  qryWageAssignChange.Close;
  qryReport.Close;
end;

procedure TfrmWageMethodAssignManager.acPhatsinhExecute(Sender: TObject);
begin
  inherited;
  with TfrmWageMethodAssign.Create(self,qryWageAssignChangeCHANGE_NO.Value) do
  try
    if ShowModal=mrOk then
    begin
      qryWageAssignDetail.DisableControls;
      qryWageAssignDetail.Close;
      qryWageAssignDetail.Open;
      qryWageAssignDetail.EnableControls;
      CustomExpand(tlWageAssignDetail);
    end;
  finally
    Free;
  end;

end;

procedure TfrmWageMethodAssignManager.acPhatsinhUpdate(Sender: TObject);
begin
  inherited;
  acPhatsinh.Enabled:=(qryWageAssignChange.RecordCount>0)and
  (not(qryWageAssignChange.State in [dsEdit,dsInsert]));
end;

procedure TfrmWageMethodAssignManager.acXemExecute(Sender: TObject);
begin
  inherited;
  qryReport.ParamByName('STATE').Value:=StrToInt(imOption.Text);
  qryReport.ParamByName('AT_MONTH').Value:=StrToInt(dxMonth.Text);
  qryReport.ParamByName('AT_YEAR').Value:=dxYear.IntValue;
  qryReport.ParamByName('AT_PERIOD').Value:=dxPeriod.IntValue;
  if qryReport.Active then
    qryReport.Refresh
  else
    qryReport.Open;

end;

procedure TfrmWageMethodAssignManager.acBackExecute(Sender: TObject);
begin
  inherited;
  if dxMonth.Text = '1' then
  begin
    dxMonth.Text := '12';
    dxYear.IntValue := dxYear.IntValue - 1;
  end
  else
    dxMonth.Text := IntToStr(StrToInt(dxMonth.Text) - 1);
  acXem.Execute;
end;

procedure TfrmWageMethodAssignManager.acNextExecute(Sender: TObject);
begin
  inherited;
  if dxMonth.Text = '12' then
  begin
    dxMonth.Text := '1';
    dxYear.IntValue := dxYear.IntValue + 1;
  end
  else
    dxMonth.Text := IntToStr(StrToInt(dxMonth.Text) + 1);
  acXem.Execute;
end;

end.
