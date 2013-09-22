unit WarningWorkTimeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, ElBtnCtl, ElPopBtn, ExtCtrls, StdCtrls,
  ElCLabel, ElLabel, ActnList;

type
  TfrmWarningWorkTime = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElLabel1: TElLabel;
    dxLayoutControl1Item2: TdxLayoutItem;
    labelFULL_NAME: TElLabel;
    dxLayoutControl1Item4: TdxLayoutItem;
    labelTITLE_NAME: TElLabel;
    dxLayoutControl1Item5: TdxLayoutItem;
    labelDEPT_NAME: TElLabel;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    ElLabel3: TElLabel;
    dxLayoutControl1Item7: TdxLayoutItem;
    ElLabel4: TElLabel;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    labelFIELD_NAME: TElLabel;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    Bevel1: TBevel;
    ElLabel6: TElLabel;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ActionList1: TActionList;
    acDongy: TAction;
    dxLayoutControl1Item15: TdxLayoutItem;
    Bevel2: TBevel;
    dxLayoutControl1Item16: TdxLayoutItem;
    labelWORK_DATE: TElLabel;
    dxLayoutControl1Item17: TdxLayoutItem;
    ElLabel10: TElLabel;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    ElLabel2: TElLabel;
    dxLayoutControl1Item3: TdxLayoutItem;
    procedure acDongyExecute(Sender: TObject);
    procedure acBoquaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWarningWorkTime: TfrmWarningWorkTime;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmWarningWorkTime.acDongyExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrOK;
end;

procedure TfrmWarningWorkTime.acBoquaExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;

end.
