unit CheckPackageForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElCaption, dxLayoutControl, cxControls, StdCtrls, ElCLabel,
  ElLabel, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, dxDBTLCl,
  dxGrClms, ActnList, DBActns, dxBar, IBODataset, IB_Components, IB_Events;

type
  TfrmCheckPackage = class(TForm)
    ElFormCaption1: TElFormCaption;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElLabel3: TElLabel;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElLabel4: TElLabel;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElLabel1: TElLabel;
    gridConnection: TdxDBGrid;
    dxLayoutControl1Item2: TdxLayoutItem;
    gridConnectionCONNECTION_ID: TdxDBGridColumn;
    gridConnectionHOST_NAME: TdxDBGridColumn;
    gridConnectionUSER_ID: TdxDBGridColumn;
    gridConnectionUSER_NAME: TdxDBGridColumn;
    gridConnectionTIME_LOGGIN: TdxDBGridDateColumn;
    ActionList1: TActionList;
    dxBarManager1: TdxBarManager;
    dxGridPopup: TdxBarPopupMenu;
    dxStopConnection: TdxBarButton;
    acYeucauNgatketnoi: TAction;
    qryRequest: TIBOQuery;
    mainEvent: TIB_Events;
    procedure gridConnectionMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acYeucauNgatketnoiExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mainEventEventAlert(Sender: TObject; AEventName: String;
      AEventCount: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCheckPackage: TfrmCheckPackage;

implementation

uses Login, MainDM, DateUtils;

{$R *.dfm}

procedure TfrmCheckPackage.gridConnectionMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if button=mbRight then
    dxGridPopup.PopupFromCursorPos;
end;

procedure TfrmCheckPackage.acYeucauNgatketnoiExecute(Sender: TObject);
begin
  qryRequest.ParamByName('REQUEST_ID').Value:=1;
  qryRequest.ParamByName('FROM_USER').Value:=frmLogin.User_name;
  qryRequest.ParamByName('FROM_CONNECTION').Value:=sysConfig.IP_Addr;
  qryRequest.ParamByName('AT_DATE').Value:=Today;
  qryRequest.ParamByName('AT_TIME').Value:=TTime(Now);
  qryRequest.ParamByName('TO_CONNECTION').Value:=frmLogin.qryCheckConnectionCONNECTION_ID.Value;
  qryRequest.ParamByName('TO_USER').Value:=frmLogin.qryCheckConnectionUSER_ID.Value;
  qryRequest.ParamByName('ACCEPTED').Value:=0;
  qryRequest.ExecSQL;
end;

procedure TfrmCheckPackage.FormCreate(Sender: TObject);
begin
  mainEvent.RegisterEvents;
end;

procedure TfrmCheckPackage.mainEventEventAlert(Sender: TObject;
  AEventName: String; AEventCount: Integer);
begin
  if AEventName='REQUEST_OUT_ACCEPTED' then
  begin
    if frmLogin.qryCheckConnection.Active then
      frmLogin.qryCheckConnection.Refresh
    else
      frmLogin.qryCheckConnection.Open;
  end;
end;

procedure TfrmCheckPackage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryRequest.Close;
end;

end.
