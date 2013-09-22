unit DocBaseFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, DB;

type
  TfrmDocBase = class(TfrmEditBase)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  protected
    FInsert: boolean;
    FOnExNewRecord: TDatasetNotifyEvent;
    { Private declarations }
    procedure OnDocStatePutParams(AModuleID: smallint; AParam: string; var ARet:
      Variant);
    procedure OnEmployeePutParams(AModuleID: smallint; AParam: string; var ARet:
      Variant); virtual;
    procedure OnGenExNewRecord(Dataset: TDataset); virtual;
    procedure OnGenerate;
      override;
    procedure OnGenTranferRecord(AFromDataset, AToDataset: TDataset);
  public
    { Public declarations }
//    property ModuleID;
  end;
  TfrmDocBaseClass = class of TfrmDocBase;
var
  frmDocBase: TfrmDocBase;

implementation

uses MainDM;

{$R *.dfm}

{ TfrmDocBase }


procedure TfrmDocBase.OnDocStatePutParams(AModuleID: smallint;
  AParam: string; var ARet: Variant);
begin
end;

procedure TfrmDocBase.OnEmployeePutParams(AModuleID: smallint;
  AParam: string; var ARet: Variant);
begin
  if AParam = 'GETTYPE' then
    ARet := 1;
end;

procedure TfrmDocBase.OnGenExNewRecord(Dataset: TDataset);
begin
  //
end;

procedure TfrmDocBase.OnGenerate;
begin

end;

procedure TfrmDocBase.OnGenTranferRecord(AFromDataset, AToDataset: TDataset);
begin

end;


procedure TfrmDocBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(frameToolbar1.acDSPost.DataSource) then
  if dmMain.MsgChangeDataSource(frameToolbar1.acDSPost.DataSource)=false then
    Abort;
end;

end.

