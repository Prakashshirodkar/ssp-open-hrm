unit CanhbaoVitriCTForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, ElBtnCtl, ElPopBtn, ExtCtrls, StdCtrls,
  ElCLabel, ElLabel, ActnList;

type
  TfrmCanhbaoVitriCT = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElLabel1: TElLabel;
    dxLayoutControl1Item2: TdxLayoutItem;
    labelFULL_NAME: TElLabel;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElLabel2: TElLabel;
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
    ElLabel5: TElLabel;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    Bevel1: TBevel;
    dxLayoutControl1Item10: TdxLayoutItem;
    ElLabel6: TElLabel;
    dxLayoutControl1Item11: TdxLayoutItem;
    ElLabel7: TElLabel;
    dxLayoutControl1Item12: TdxLayoutItem;
    ElLabel8: TElLabel;
    dxLayoutControl1Group3: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item13: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ActionList1: TActionList;
    acDongy: TAction;
    acBoqua: TAction;
    dxLayoutControl1Item15: TdxLayoutItem;
    Bevel2: TBevel;
    dxLayoutControl1Item16: TdxLayoutItem;
    labelASSIGNED_DATE: TElLabel;
    dxLayoutControl1Item17: TdxLayoutItem;
    ElLabel10: TElLabel;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    procedure acDongyExecute(Sender: TObject);
    procedure acBoquaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCanhbaoVitriCT: TfrmCanhbaoVitriCT;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmCanhbaoVitriCT.acDongyExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrOK;
end;

procedure TfrmCanhbaoVitriCT.acBoquaExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;

end.
