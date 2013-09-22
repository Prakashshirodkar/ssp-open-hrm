unit UserWebForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxExEdtr, dxBar, DB, IBODataset, dxTL,
  dxDBCtrl, dxDBGrid, dxCntner, ElBtnCtl, ElPopBtn, ActnList;

type
  TfrmUserWeb = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxdbgMain: TdxDBGrid;
    dxdbgMainUSERNAME: TdxDBGridColumn;
    dxdbgMainHO_TEN: TdxDBGridColumn;
    dsList: TDataSource;
    qryList: TIBOQuery;
    qryListUSERNAME: TWideStringField;
    qryListHO_TEN: TWideStringField;
    bmMain: TdxBarManager;
    miInsert: TdxBarButton;
    miDelete: TdxBarButton;
    miSave: TdxBarButton;
    miCancel: TdxBarButton;
    pmMain: TdxBarPopupMenu;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    ActionList1: TActionList;
    acResetpass: TAction;
    qryExecute: TIBOQuery;
    qryListPASS: TWideStringField;
    qryListCHECK_: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acResetpassExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUserWeb: TfrmUserWeb;

implementation

uses MainDM, SSP_Library, InserUserForm, SecurityForm;

{$R *.dfm}

procedure TfrmUserWeb.FormCreate(Sender: TObject);
begin
  inherited;
  qryList.Open;
end;

procedure TfrmUserWeb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  qryList.Close;     
end;

procedure TfrmUserWeb.acResetpassExecute(Sender: TObject);
begin
  inherited;
  begin
     if (ShowMessageUnicode(203)=mrYes) then
     begin    
          qryExecute.SQL.Text:='UPDATE LOGIN SET '+
                        'PASS = :PASS '+
                        'WHERE USERNAME = :PASS';
          qryExecute.ParamByName('PASS').Value :=
                 dxdbgMain.SelectedNodes[0].Values[dxdbgMainUSERNAME.Index];
          qryExecute.Open;
     end
     else
          Exit;
  end;
end;
end.
