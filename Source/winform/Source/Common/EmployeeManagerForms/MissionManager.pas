unit MissionManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, dxExEdtr, ElPanel, ElSplit, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, ExtCtrls, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxEdLib, dxDBELib, dxEditor,
  DB, IBODataset, dxDBTLCl, dxGrClms, dxGrClEx;

type
  TfrmMissionManager = class(TfrmEditBase)
    panelMain: TPanel;
    dxlcMainItem2: TdxLayoutItem;
    gridMission: TdxDBGrid;
    ElSplitter1: TElSplitter;
    panelRight: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxMissionType: TdxDBImageEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxDBPopupEdit1: TdxDBPopupEdit;
    dxlcNation: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    dxlcToPlace: TdxLayoutItem;
    dxDBDateEdit1: TdxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxDBDateEdit2: TdxDBDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxDBMemo1: TdxDBMemo;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    gridMember: TdxDBGrid;
    dxLayoutControl1Item7: TdxLayoutItem;
    dsMission: TDataSource;
    qryMission: TIBOQuery;
    qryMember: TIBOQuery;
    dsMember: TDataSource;
    qryMissionMISSION_NO: TWideStringField;
    qryMissionMISSION_NAME: TWideStringField;
    qryMissionMISSION_TYPE: TSmallintField;
    qryMissionTO_NATION: TWideStringField;
    qryMissionNATION_NAME: TWideStringField;
    qryMissionTO_PLACE: TWideStringField;
    qryMissionFROM_DATE: TDateField;
    qryMissionTO_DATE: TDateField;
    qryMissionNOTE: TWideStringField;
    gridMissionMISSION_NAME: TdxDBGridColumn;
    gridMissionFROM_DATE: TdxDBGridDateColumn;
    gridMissionTO_DATE: TdxDBGridDateColumn;
    qryMemberMISSION_NO: TWideStringField;
    qryMemberEMPLOYEE_NO: TWideStringField;
    qryMemberFULL_NAME: TWideStringField;
    qryMemberMISSION_DUTY: TWideStringField;
    qryMemberPOSITION_TITLE: TWideStringField;
    qryMemberBUSSINESS_EXPENSE: TIBOFloatField;
    qryMemberCURRENCY_NO: TWideStringField;
    qryMemberCURRENCY_NAME: TWideStringField;
    gridMemberEMPLOYEE_NO: TdxDBGridColumn;
    gridMemberFULL_NAME: TdxDBGridPopupColumn;
    gridMemberMISSION_DUTY: TdxDBGridColumn;
    gridMemberPOSITION_TITLE: TdxDBGridColumn;
    gridMemberBUSSINESS_EXPENSE: TdxDBGridCalcColumn;
    gridMemberCURRENCY_NAME: TdxDBGridPopupColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBPopupEdit1InitPopup(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure gridMemberFULL_NAMEInitPopup(Sender: TObject);
    procedure gridMemberFULL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridMemberCURRENCY_NAMEInitPopup(Sender: TObject);
    procedure gridMemberCURRENCY_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryMissionMISSION_TYPEChange(Sender: TField);
    procedure qryMissionAfterScroll(DataSet: TDataSet);
    procedure qryMissionNewRecord(DataSet: TDataSet);
    procedure qryMissionNATION_NAMEChange(Sender: TField);
    procedure qryMemberCURRENCY_NAMEChange(Sender: TField);
    procedure qryMemberFULL_NAMEChange(Sender: TField);
    procedure qryMissionAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    STATE:string;
  public
    { Public declarations }
  end;

var
  frmMissionManager: TfrmMissionManager;

implementation

uses MainDM, SSP_Library, PopupMainForm;

{$R *.dfm}

procedure TfrmMissionManager.FormCreate(Sender: TObject);
begin
  dxMissionType.Descriptions.Add(UTF8Decode('Trong nước'));
  dxMissionType.Descriptions.Add(UTF8Decode('Nước ngoài'));
  dxMissionType.Values.Add('0');
  dxMissionType.Values.Add('1');
  inherited;
  qryMission.Open;
  qryMember.Open;
end;

procedure TfrmMissionManager.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryMember.Close;
  qryMission.Close;
end;

procedure TfrmMissionManager.dxDBPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryNationList.Open;
  InitPopupControl('dxlcNationList',frmPopupMain,sender,2);
end;

procedure TfrmMissionManager.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupMain.qryNationList,qryMission,
               'NATION_NO;NATION_NAME','TO_NATION;NATION_NAME',
               'NATION_NAME',Text);
    frmPopupMain.qryNationList.Close;
end;

procedure TfrmMissionManager.gridMemberFULL_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryEmp_Position.Open;
  InitPopupControl('dxlcEmp_Position',frmPopupMain,sender,2,gridMember);
end;

procedure TfrmMissionManager.gridMemberFULL_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupMain.qryEmp_Position,qryMember,
               'EMPLOYEE_NO;FULL_NAME;POSITION_TITLE','EMPLOYEE_NO;FULL_NAME;POSITION_TITLE',
               'FULL_NAME',Text);
    frmPopupMain.qryEmp_Position.Close;
end;

procedure TfrmMissionManager.gridMemberCURRENCY_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryCurrencyList.Open;
  InitPopupControl('dxlcCurrencyList',frmPopupMain,sender,2,gridMember);
end;

procedure TfrmMissionManager.gridMemberCURRENCY_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryCurrencyList,qryMember,
               'CURRENCY_NO;CURRENCY_NAME','CURRENCY_NO;CURRENCY_NAME',
               'CURRENCY_NAME',Text);
  frmPopupMain.qryCurrencyList.Close;
end;

procedure TfrmMissionManager.qryMissionMISSION_TYPEChange(Sender: TField);
begin
  inherited;
  if qryMissionMISSION_TYPE.IsNull or ( qryMissionMISSION_TYPE.Value=0) then
    dxlcNation.Enabled:=false
  else
    dxlcNation.Enabled:=true
end;

procedure TfrmMissionManager.qryMissionAfterScroll(DataSet: TDataSet);
begin
  inherited;
   if qryMissionMISSION_TYPE.IsNull or ( qryMissionMISSION_TYPE.Value=0) then
    dxlcNation.Enabled:=false
  else
    dxlcNation.Enabled:=true
end;

procedure TfrmMissionManager.qryMissionNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryMissionMISSION_TYPE.Value:=0;
  STATE:='insert';
  qryMissionMISSION_NO.Value:=dmMain.GenerateKeyData(205)
end;

procedure TfrmMissionManager.qryMissionNATION_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,Sender.FieldName,'TO_NATION');
end;

procedure TfrmMissionManager.qryMemberCURRENCY_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,Sender.FieldName,'CURRENCY_NO');
end;

procedure TfrmMissionManager.qryMemberFULL_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,Sender.FieldName,'EMPLOYEE_NO');
  SetNullLink(Sender.DataSet,Sender.FieldName,'POSITION_TITLE');
end;

procedure TfrmMissionManager.qryMissionAfterPost(DataSet: TDataSet);
begin
  inherited;
   if STATE='insert' then
  begin
    dmMain.IncreaseKeyData(205);
  end;
   STATE:='';
   dmMain.DefOnAfterPost(Dataset);
end;

end.
