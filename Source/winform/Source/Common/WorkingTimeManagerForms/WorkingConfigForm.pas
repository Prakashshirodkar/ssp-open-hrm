unit WorkingConfigForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, StdCtrls,
  ElCLabel, ElLabel, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  dxLayoutControl, ElBtnCtl, ElPopBtn, cxControls, DBActns, ActnList;

type
  TfrmWorkingConfig = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxDBCheckEdit3: TdxDBCheckEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxDBCheckEdit4: TdxDBCheckEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
    acCancel: TAction;
    procedure DataSetPost1Execute(Sender: TObject);
    procedure acCancelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWorkingConfig: TfrmWorkingConfig;

implementation

uses WorkTimeManagerForm, MainDM, DB;

{$R *.dfm}

procedure TfrmWorkingConfig.DataSetPost1Execute(Sender: TObject);
begin
  inherited;
  frmWorkTimeManager.qryConfig.Post;
  ModalResult:=mrOk;
end;

procedure TfrmWorkingConfig.acCancelExecute(Sender: TObject);
begin
  inherited;
  if frmWorkTimeManager.qryConfig.State in [dsInsert,dsEdit] then
    frmWorkTimeManager.qryConfig.cancel;
  ModalResult:=mrCancel;
end;

end.
