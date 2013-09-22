unit RequestOutForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, StdCtrls, ElCLabel, ElLabel, cxControls, ElBtnCtl,
  ElPopBtn, ExtCtrls, ActnList, DB, IBODataset;

type
  TfrmRequestOut = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item2: TdxLayoutItem;
    lbMsg: TElLabel;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElLabel1: TElLabel;
    dxLayoutControl1Item3: TdxLayoutItem;
    Image1: TImage;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ActionList1: TActionList;
    acChapnhan: TAction;
    acTuchoi: TAction;
    qryGetRequest: TIBOQuery;
    qryGetRequestREQUEST_ID: TIntegerField;
    qryGetRequestREQUEST_MSG: TWideStringField;
    qryGetRequestFROM_USER: TWideStringField;
    qryGetRequestDISPLAYNAME: TWideStringField;
    qryGetRequestFROM_CONNECTION: TWideStringField;
    qryGetRequestAT_DATE: TDateField;
    qryGetRequestAT_TIME: TTimeField;
    qryGetRequestTO_CONNECTION: TWideStringField;
    qryGetRequestTO_USER: TWideStringField;
    qryGetRequestACCEPTED: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure acChapnhanExecute(Sender: TObject);
    procedure acTuchoiExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRequestOut: TfrmRequestOut;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmRequestOut.FormCreate(Sender: TObject);
begin
  inherited;
  qryGetRequest.ParamByName('USER_ID').Value:=sysConfig.User;
  qryGetRequest.ParamByName('CONNECTION_ID').Value:=sysConfig.IP_Addr;
  qryGetRequest.Open;

  lbMsg.Caption:=lbMsg.Caption+' '+qryGetRequestDISPLAYNAME.Value;
end;

procedure TfrmRequestOut.acChapnhanExecute(Sender: TObject);
begin
  inherited;
  qryGetRequest.Edit;
  qryGetRequestACCEPTED.Value:=1;
  qryGetRequest.Post;
  MOdalResult:=mrOK;
end;

procedure TfrmRequestOut.acTuchoiExecute(Sender: TObject);
begin
  inherited;
  qryGetRequest.Edit;
  qryGetRequestACCEPTED.Value:=-1;
  qryGetRequest.Post;
  MOdalResult:=mrCancel;
end;

end.
