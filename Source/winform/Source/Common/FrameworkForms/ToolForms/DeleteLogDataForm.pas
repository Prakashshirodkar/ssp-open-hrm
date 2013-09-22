unit DeleteLogDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ActnList,
  ElBtnCtl, ElPopBtn, dxLayoutControl, dxCntner, dxEditor, dxExEdtr,
  dxEdLib, cxControls, DB, IBODataset;

type
  TfrmDeleteLogData = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxAtDate: TdxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    ActionList1: TActionList;
    acDongy: TAction;
    acBoqua: TAction;
    qryDelete: TIBOQuery;
    procedure acBoquaExecute(Sender: TObject);
    procedure acDongyExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDeleteLogData: TfrmDeleteLogData;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmDeleteLogData.acBoquaExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;

procedure TfrmDeleteLogData.acDongyExecute(Sender: TObject);
begin
  inherited;
  qryDelete.ParamByName('AT_DATE').Value:=dxAtDate.Date;
  qryDelete.ExecSQL;
  ModalResult:=mrOk;
end;

end.
