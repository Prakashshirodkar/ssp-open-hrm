unit LookAndFeelDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ActnList,
  ElBtnCtl, ElPopBtn, dxLayoutControl, dxCntner, dxEditor, dxEdLib,
  dxDBELib, cxControls;

type
  TfrmLookAndFeelDetail = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ActionList1: TActionList;
    acDongy: TAction;
    acBoqua: TAction;
    procedure acDongyExecute(Sender: TObject);
    procedure acBoquaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLookAndFeelDetail: TfrmLookAndFeelDetail;

implementation

uses MainDM, UIConfigForm,DB;

{$R *.dfm}

procedure TfrmLookAndFeelDetail.acDongyExecute(Sender: TObject);
begin
  inherited;
  if frmUIConfig.qryLAFList.State in [dsInsert,dsEdit] then
    frmUIConfig.qryLAFList.Post;
  if not (frmUIConfig.qryLAFList.State in [dsInsert,dsEdit]) then
    ModalResult:=mrOK;
end;

procedure TfrmLookAndFeelDetail.acBoquaExecute(Sender: TObject);
begin
  inherited;
  if frmUIConfig.qryLAFList.State in [dsInsert,dsEdit] then
    frmUIConfig.qryLAFList.Cancel;
    ModalResult:=mrCancel;
end;

end.
