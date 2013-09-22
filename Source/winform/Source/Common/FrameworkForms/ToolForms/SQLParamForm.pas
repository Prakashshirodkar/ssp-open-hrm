unit SQLParamForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, ActnList, ElBtnCtl, ElPopBtn;

type
  TfrmSQLParam = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    ActionList1: TActionList;
    acDongy: TAction;
    acBoqua: TAction;
    dxParamGroup: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    procedure acBoquaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acDongyExecute(Sender: TObject);
  private
    { Private declarations }
    procedure InitComponents;
    procedure OnParamChange(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmSQLParam: TfrmSQLParam;

implementation

uses MainDM, SQLToolForm,dxEdLib,dxExEdtr, dxEditor;

{$R *.dfm}
procedure TfrmSQLParam.OnParamChange(Sender: TObject);
begin
  if (sender is TdxDateEdit) then
   frmSQLTool.qryExecute.ParamByName((sender as TControl).Name).Value:=
      (sender as TdxDateEdit).Date
  else
  if (sender is TdxTimeEdit) then
  begin
     frmSQLTool.qryExecute.ParamByName((sender as TControl).Name).Value:=
      StrToTime((sender as TdxTimeEdit).GetEditingText);
  end
  else
  if (sender is TdxCheckEdit) then
  begin
    if (sender as TdxCheckEdit).Checked then
      frmSQLTool.qryExecute.ParamByName((sender as TControl).Name).Value:=1
    else
      frmSQLTool.qryExecute.ParamByName((sender as TControl).Name).Value:=0;
  end
  else
  if (sender is TdxSpinEdit) then
   frmSQLTool.qryExecute.ParamByName((sender as TControl).Name).Value:=
      (sender as TdxSpinEdit).IntValue
  else
  if (sender is TdxCalcEdit) then
   frmSQLTool.qryExecute.ParamByName((sender as TControl).Name).Value:=
      (sender as TdxCalcEdit).Text
  else
  if (sender is TdxEdit) then
   frmSQLTool.qryExecute.ParamByName((sender as TControl).Name).Value:=
      (sender as TdxEdit).Text;
end;
procedure TfrmSQLParam.InitComponents;
var
  i: integer;
  param_name:string;
  AControl: TControl;
  item: TdxLayoutItem;
  report_group,item_group:TdxLayoutGroup;
  ret: boolean;
begin
  if frmSQLTool.qryExecute.ParamCount<=0 then exit;
  for i:=0 to frmSQLTool.qryExecute.ParamCount-1 do
  begin
    param_name:=frmSQLTool.qryExecute.Params[i].Name;
    if Pos('TIME_',param_name)=1 then
    begin
      AControl := TdxTimeEdit.Create(Self);
      TdxTimeEdit(AControl).Name := param_name;
      TdxTimeEdit(AControl).Width:=100;
      TdxTimeEdit(AControl).OnChange := OnParamChange;
      TdxTimeEdit(AControl).StyleController:= dmMain.StyleController;
    end
    else
    if Pos('DATE_',param_name)=1 then
    begin
      AControl := TdxDateEdit.Create(Self);
      TdxDateEdit(AControl).Name := param_name;
      TdxDateEdit(AControl).Width:=100;
      TdxDateEdit(AControl).OnChange := OnParamChange;
      TdxDateEdit(AControl).StyleController:= dmMain.StyleController;
    end
    else
    if Pos('BOOL_',param_name)=1 then
    begin
       AControl := TdxCheckEdit.Create(Self);
       TdxCheckEdit(AControl).Name := param_name;
       TdxCheckEdit(AControl).NullStyle := nsUnchecked;
       TdxCheckEdit(AControl).OnChange := OnParamChange;
       TdxCheckEdit(AControl).Width := 23;
       TdxCheckEdit(AControl).StyleController := dmMain.StyleController;
    end
    else
    if Pos('INT_',param_name)=1 then
    begin
       AControl := TdxSpinEdit.Create(Self);
       AControl.Width := 100;
       TdxSpinEdit(AControl).MinValue := 0;
       TdxSpinEdit(AControl).MaxValue :=0;
       TdxSpinEdit(AControl).Name := param_name;
       TdxSpinEdit(AControl).OnChange := OnParamChange;
       TdxSpinEdit(AControl).Alignment := taCenter;
       TdxSpinEdit(AControl).StyleController := dmMain.StyleController;
    end
    else
    if Pos('DOUBLE_',param_name)=1 then
    begin
       AControl := TdxCalcEdit.Create(Self);
       AControl.Width := 100;
       TdxCalcEdit(AControl).Name := param_name;
       TdxCalcEdit(AControl).OnChange := OnParamChange;
       TdxCalcEdit(AControl).Alignment := taRightJustify;
       TdxCalcEdit(AControl).StyleController := dmMain.StyleController;
    end
    else
    begin
      AControl := TdxEdit.Create(Self);
      AControl.Width := 200;
      TdxEdit(AControl).Name := param_name;
      TdxEdit(AControl).OnChange := OnParamChange;
      TdxEdit(AControl).StyleController := dmMain.StyleController;
    end;

    dxLayoutControl1.BeginUpdate;
    //===============================
    item := dxParamGroup.CreateItemForControl(AControl);
    item.Caption := AControl.Name;
    item.ControlOptions.AutoColor := true;
    if (AControl is TdxEdit) then
      item.AlignHorz := ahClient
    else
      item.AlignHorz := ahLeft;
    item.AlignVert := avTop;
    item.CaptionOptions.AlignHorz:=taRightJustify;
    item.Visible := true;
    item.ControlOptions.AutoAlignment:=true;
    item.ControlOptions.Opaque := false;
    item.Name := 'dxlctrl'+AControl.Name;
    dxLayoutControl1.EndUpdate;
  end;
  ApplyOption(TControl(self));
end;

procedure TfrmSQLParam.acBoquaExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;

procedure TfrmSQLParam.FormCreate(Sender: TObject);
begin
  inherited;
  InitComponents;
end;

procedure TfrmSQLParam.FormShow(Sender: TObject);
begin
  inherited ;
  self.Height:=dxLayoutControl1.ViewInfo.ItemsViewInfo.CalculateHeight+40;
end;

procedure TfrmSQLParam.acDongyExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrOk;
end;

end.
