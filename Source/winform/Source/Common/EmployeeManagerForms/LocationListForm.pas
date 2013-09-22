unit LocationListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TreeBaseFrm, dxExEdtr, ElBtnCtl, ElPopBtn, dxCntner, dxEditor,
  dxEdLib, dxBar, DB, IBODataset, ElCaption, dxLayoutControl, dxTL,
  dxDBCtrl, dxDBTL, ToolbarFrame, cxControls, ElXPThemedControl, ElStatBar,
  ActnList, dxDBTLCl, dxGrClEx;

type
  TfrmLocationList = class(TfrmTreeBase)
    dxPopupEdit1: TdxPopupEdit;
    ElPopupButton1: TElPopupButton;
    qryListITEM_ID: TWideStringField;
    qryListP_ITEM_ID: TWideStringField;
    qryListNATION_NO: TWideStringField;
    qryListLOCATION_NO: TWideStringField;
    qryListLOCATION_NAME: TWideStringField;
    qryListLOCATION_FULL_NAME: TWideStringField;
    qryListLOCATION_NOTE: TWideStringField;
    qryListLOCATION_TYPE: TWideStringField;
    ActionList1: TActionList;
    acRefreshData: TAction;
    qryListNATION_NAME: TWideStringField;
    dxdbtlMainLOCATION_NO: TdxDBTreeListColumn;
    dxdbtlMainLOCATION_NAME: TdxDBTreeListColumn;
    dxdbtlMainLOCATION_NOTE: TdxDBTreeListColumn;
    dxdbtlMainNATION_NAME: TdxDBTreeListPopupColumn;
    qryListLOCATION_TYPE_NAME: TWideStringField;
    dxdbtlMainLOCATION_TYPE_NAME: TdxDBTreeListPopupColumn;
    procedure dxPopupEdit1InitPopup(Sender: TObject);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure acRefreshDataExecute(Sender: TObject);
    procedure qryListNewRecord(DataSet: TDataSet);
    procedure qryListNATION_NOChange(Sender: TField);
    procedure qryListLOCATION_NOChange(Sender: TField);
    procedure dxdbtlMainLOCATION_TYPE_NAMEInitPopup(Sender: TObject);
    procedure dxdbtlMainLOCATION_TYPE_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxdbtlMainNATION_NAMEInitPopup(Sender: TObject);
    procedure dxdbtlMainNATION_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryListNATION_NAMEChange(Sender: TField);
    procedure qryListLOCATION_TYPE_NAMEChange(Sender: TField);
    procedure qryListBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    FParamNation,FParamNation_Name:WideString;

  end;

var
  frmLocationList: TfrmLocationList;

implementation

uses MainDM, PopupMainForm, EditBaseFrm, SSP_Library;

{$R *.dfm}


procedure TfrmLocationList.dxPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryNationList.Open;
  InitPopupControl('dxlcNationList',frmPopupMain,Sender,2);
end;

procedure TfrmLocationList.dxPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
     Text:=frmPopupMain.qryNationListNATION_NAME.Value;
     FParamNation:=frmPopupMain.qryNationListNATION_NO.Value;
     FParamNation_Name:=frmPopupMain.qryNationListNATION_NAME.Value;
     acRefreshData.Execute;
  end;
  frmPopupMain.qryNationList.Close;
end;

procedure TfrmLocationList.acRefreshDataExecute(Sender: TObject);
begin
  inherited;
  try
   Screen.Cursor:=crSQLWait;
   qryList.DisableControls;
   if qryList.Active then qryList.Close;
   qryList.ParamByName('NATION_NO').Value:=FParamNation;
   qryList.Open;
  finally
    qryList.EnableControls;
    dxdbtlMain.FullExpand;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TfrmLocationList.qryListNewRecord(DataSet: TDataSet);
begin
  inherited;
  if Length(FParamNation)>0 then
  begin
    qryListNATION_NO.Value:=FParamNation;
    qryListNATION_NAME.Value:=FParamNation_Name;
  end;
end;

procedure TfrmLocationList.qryListNATION_NOChange(Sender: TField);
begin
  inherited;
  qryListITEM_ID.Value:=qryListNATION_NO.Value+qryListLOCATION_NO.Value;
end;
procedure TfrmLocationList.qryListLOCATION_NOChange(Sender: TField);
begin
  inherited;
  qryListITEM_ID.Value:=qryListNATION_NO.Value+qryListLOCATION_NO.Value;
end;

procedure TfrmLocationList.dxdbtlMainLOCATION_TYPE_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryLocationType.Open;
  InitPopupControl('dxlcLocationTypeList',frmPopupMain,Sender,2,dxdbtlMain);
end;

procedure TfrmLocationList.dxdbtlMainLOCATION_TYPE_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryLocationType,qryList,
           'LOCATION_TYPE_NO;LOCATION_TYPE_NAME','LOCATION_TYPE;LOCATION_TYPE_NAME',
           'LOCATION_TYPE_NAME',Text);
  frmPopupMain.qryLocationType.Close;
end;

procedure TfrmLocationList.dxdbtlMainNATION_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryNationList.Open;
  InitPopupControl('dxlcNationList',frmPopupMain,Sender,2,dxdbtlMain);
  
end;

procedure TfrmLocationList.dxdbtlMainNATION_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryNationList,qryList,
  'NATION_NO;NATION_NAME','NATION_NO;NATION_NAME',
  'NATION_NAME',Text);
end;

procedure TfrmLocationList.qryListNATION_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,Sender.FieldName,'NATION_NO');
end;

procedure TfrmLocationList.qryListLOCATION_TYPE_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,Sender.FieldName,'LOCATION_TYPE_NO');
end;

procedure TfrmLocationList.qryListBeforePost(DataSet: TDataSet);
begin
  inherited;
  dmMain.DefOnBeforePost(dataset);
  if qryListLOCATION_TYPE.IsNull then
  begin
    ShowHintBoxInTreeGrid(dxdbtlMain, dxdbtlMain.FocusedNode,'LOCATION_TYPE_NAME',68);
    abort;
  end;
  if qryListNATION_NO.IsNull then
  begin
    ShowHintBoxInTreeGrid(dxdbtlMain, dxdbtlMain.FocusedNode,'NATION_NAME',68);
    abort;
  end;
end;

end.
