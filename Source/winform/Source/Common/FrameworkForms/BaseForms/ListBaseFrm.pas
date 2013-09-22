unit ListBaseFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ElCaption, dxLayoutControl, ToolbarFrame, cxControls, ElXPThemedControl,
  ElStatBar, DB, IBODataset, dxEditor, dxEdLib, dxBar;

type
  TfrmListBase = class(TfrmEditBase)
    dxdbgMain: TdxDBGrid;
    qryList: TIBOQuery;
    dsList: TDataSource;
    bmMain: TdxBarManager;
    miInsert: TdxBarButton;
    miDelete: TdxBarButton;
    miSave: TdxBarButton;
    miCancel: TdxBarButton;
    pmMain: TdxBarPopupMenu;
    procedure FormCreate(Sender: TObject);
    procedure dxdbgMainMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxdbgMainKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxdbgMainDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryListBeforeDelete(DataSet: TDataSet);
    procedure qryListAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure UpdateOnPopup; override;
    procedure OnControlEnter(Sender: TObject); override;
  public
    { Public declarations }
    plListKeyValue: Variant;
    // ------ tyntb : bien kiem soat Xoa Du lieu nhieu dong-------------
    Count_Del: integer;
    Selected_Rows: integer;
    // ---------------------------------------------------------------- //
  end;

var
  frmListBase: TfrmListBase;

implementation

uses MainDM, SSP_Library, PopupMainForm;

{$R *.dfm}

{ TfrmListBase }

procedure TfrmListBase.OnControlEnter(Sender: TObject);
begin
  if not qryList.Active then
    qryList.Open;
end;

procedure TfrmListBase.FormCreate(Sender: TObject);
var
  il: TdxBarItemLink;
begin
  Count_Del :=0;
  Selected_Rows:=0;

  with frameToolbar1 do
  begin
    SetDataSource(dxdbgMain.DataSource);
    SetActiveControl(dxdbgMain);
  end;
  with pmMain.ItemLinks do
  begin
    il := Add;
    il.Item := miInsert;
    il := Add;
    il.Item := miDelete;
    il := Add;
    il.Item := miSave;
    il := Add;
    il.Item := miCancel;
  end;
  inherited;
  qryList.Open;  
end;

procedure TfrmListBase.dxdbgMainMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ProcessGridOnMouseUpEvent(Sender, Button, Shift, X, Y, pmMain);
end;

procedure TfrmListBase.dxdbgMainKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownOnGrid(Sender, Key, Shift, frameToolbar1.acDSInsert, Self,
    FPopup);
end;

procedure TfrmListBase.UpdateOnPopup;
begin
  SSP_Library.UpdateOnPopup(dxdbgMain, frameToolbar1, FPopup);
end;

procedure TfrmListBase.dxdbgMainDblClick(Sender: TObject);
begin
  ProcessGridOnDblClickEvent(Self, dxdbgMain, FPopup, frameToolbar1.acView);
end;

procedure TfrmListBase.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  plListKeyValue := qryList.Fields[0].Value;
  frmPopupMain.ListKeyField := plListKeyValue;
end;

// -------------------------- TyNTB 20/03/2009 ----------------------------------- //
procedure TfrmListBase.qryListBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if (Count_Del=0) then
  begin
    if dxdbgMain.SelectedCount>1 then
    begin
      if ShowMessageUnicode(103) <> mrYes then
        Abort
      else
      begin
          dmmain.LogDeleteDataProcess(qryList);
          Count_Del := Count_Del+1;
          Selected_Rows:= dxdbgMain.SelectedCount;
      end;
    end
    else
      dmMain.DefOnBeforeDelete(qryList);
  end
  else
  begin
        Count_Del := Count_Del+1;
        dmmain.LogDeleteDataProcess(qryList);
  end;
end;

procedure TfrmListBase.qryListAfterDelete(DataSet: TDataSet);
begin
  inherited;
  if Count_Del = Selected_Rows then
    Count_Del := 0;
  dmmain.DefOnAfterDelete(qryList);
end;

// ------------------------------------------------------------------- //

end.

