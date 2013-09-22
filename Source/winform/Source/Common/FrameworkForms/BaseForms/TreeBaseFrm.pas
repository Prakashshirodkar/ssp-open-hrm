unit TreeBaseFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, dxCntner, dxTL,
  dxDBCtrl, dxDBTL, DB, IBODataset, dxBar;

type
  TfrmTreeBase = class(TfrmEditBase)
    dxdbtlMain: TdxDBTreeList;
    dxLayoutControl1Item2: TdxLayoutItem;
    dsList: TDataSource;
    qryList: TIBOQuery;
    bmMain: TdxBarManager;
    pmMain: TdxBarPopupMenu;
    miInsert: TdxBarButton;
    miInsertChild: TdxBarButton;
    miDelete: TdxBarButton;
    miSave: TdxBarButton;
    miCancel: TdxBarButton;
    procedure qryListNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dxdbtlMainKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxdbtlMainMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxdbtlMainDblClick(Sender: TObject);
  private
    { Private declarations }
  protected
    FParentValue: Variant;
    procedure OnBeforeInsert(Sender: TObject); virtual;
    procedure OnBeforeInsertChild(Sender: TObject); virtual;
    procedure OnExNewRecord(Dataset: TDataset); virtual;
    procedure OnControlEnter(Sender: TObject);override;
    procedure UpdateOnPopup;override;
  public
    { Public declarations }
  end;

var
  frmTreeBase: TfrmTreeBase;

implementation

uses SSP_Library;

{$R *.dfm}

{ TfrmTreeBase }

procedure TfrmTreeBase.OnBeforeInsert(Sender: TObject);
begin
  if dxdbtlMain.ParentField <> '' then
    FParentValue :=
      dxdbtlMain.DataSource.DataSet.FieldByName(dxdbtlMain.ParentField).Value;
end;

procedure TfrmTreeBase.OnBeforeInsertChild(Sender: TObject);
begin
  if dxdbtlMain.KeyField <> '' then
    FParentValue :=
      dxdbtlMain.DataSource.DataSet.FieldByName(dxdbtlMain.KeyField).Value;
end;

procedure TfrmTreeBase.OnExNewRecord(Dataset: TDataset);
begin
  with TIBODataset(Dataset) do
  if Length(VarToWideStr(FParentValue))>0 then
    FieldByName(dxdbtlMain.ParentField).Value := FParentValue
  else
    FieldByName(dxdbtlMain.ParentField).Clear;
end;

procedure TfrmTreeBase.qryListNewRecord(DataSet: TDataSet);
begin
  OnExNewRecord(Dataset);
end;

procedure TfrmTreeBase.FormCreate(Sender: TObject);
var il:TdxBarItemLink;
begin
  with frameToolbar1 do
  begin
    SetDataSource(dxdbtlMain.DataSource);
    SetActiveControl(dxdbtlMain);

    OnBeforeInsert := Self.OnBeforeInsert;
    OnBeforeInsertChild := Self.OnBeforeInsertChild;
  end;
  with pmMain.ItemLinks do
  begin
    il:=Add;
    il.Item := miInsert;
    il:=Add;
    il.Item := miInsertChild;
    il:=Add;
    il.Item := miDelete;
    il:=Add;
    il.Item := miSave;
    il:=Add;
    il.Item := miCancel;
  end;
  inherited;
  qryList.Open;
end;

procedure TfrmTreeBase.OnControlEnter(Sender: TObject);
begin
// to do nothing
end;

procedure TfrmTreeBase.dxdbtlMainKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownOnGrid(Sender,Key,Shift,frameToolbar1.acDSInsert,Self,FPopup);
end;

procedure TfrmTreeBase.dxdbtlMainMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ProcessGridOnMouseUpEvent(Sender,Button,Shift,X,Y,pmMain);
end;

procedure TfrmTreeBase.UpdateOnPopup;
begin
  SSP_Library.UpdateOnPopup(dxdbtlMain,frameToolbar1,FPopup);
end;

procedure TfrmTreeBase.dxdbtlMainDblClick(Sender: TObject);
begin
  ProcessGridOnDblClickEvent(Self,dxdbtlMain,FPopup, frameToolbar1.acView);
end;

end.

