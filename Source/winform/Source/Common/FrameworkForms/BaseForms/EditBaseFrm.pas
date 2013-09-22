unit EditBaseFrm;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, dxLayoutControl, cxControls, ToolbarFrame, ElCaption,
  ElXPThemedControl, ElStatBar, TypInfo, DB, dxTL, dxCntner, dxEditor,
  dxEdLib, dxInspct, IB_Components;

type
  TfrmEditBase = class(TfrmBase)
    frameToolbar1: TframeToolbar;
    dxlcMainGroup_Root: TdxLayoutGroup;
    dxlcMain: TdxLayoutControl;
    dxlcMainItem1: TdxLayoutItem;
    procedure FormDestroy(Sender: TObject);
    procedure frameToolbar1acDSRefreshExecute(Sender: TObject);
  private
    FUpdatedCount: integer;
    procedure OnAfterDelete(Dataset: TDataset);
    { Private declarations }
  protected
    FPopup: boolean;
    FOnGetParamValue: TGetParamValueEvent;
    procedure InitForm; override;
    procedure UpdateOnPopup; virtual;
    procedure OnBeforePrint(Sender: TObject); virtual;
    procedure OnControlEnter(Sender: TObject); virtual;
    procedure OnGridMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer); virtual;
    procedure OnGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      virtual;
    procedure DefOnBeforeOpen(Dataset: TDataset);
  public
    { Public declarations }
    property ModuleID;
    property UpdatedCount: integer read FUpdatedCount;
    procedure RefreshData(AParamChange: boolean = true); virtual;
    procedure OnGenerate; virtual;
    constructor Create(AOwner: TComponent; AModuleID: smallint = 0;
      APopup: boolean = false; AOnGetParamValue: TGetParamValueEvent = nil);
  end;

var
  frmEditBase: TfrmEditBase;

implementation

uses MainDM, SSP_Library, IBODataset;

{$R *.dfm}

{ TfrmEditBase }

constructor TfrmEditBase.Create(AOwner: TComponent; AModuleID: smallint;
  APopup: boolean; AOnGetParamValue: TGetParamValueEvent);
var
  old: smallint;
begin
  FPopup := APopup;
  FOnGetParamValue := AOnGetParamValue;
  inherited Create(AOwner, AModuleID);

  old := FModuleID;
  FModuleID := -1;
  ModuleID := old;
  InitForm;
  UpdateOnPopup;
  frameToolbar1.ModuleID := ModuleID;
  frameToolbar1.OnGenerate := OnGenerate;
  ApplyOption(TControl(self));
end;

procedure TfrmEditBase.InitForm;
var
  pp: PPropInfo;
  i: integer;
  Method: TMethod;
  pe: ^TNotifyEvent;
  me: ^TMouseEvent;
  ke: ^TKeyEvent;
  ds: TDatasource;
  f: boolean;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    pp := GetPropInfo(Components[i], 'DataSource', [tkClass]);
    if Assigned(pp) then
    try
      ds := TDatasource(GetOrdProp(Components[i], pp));
      if Assigned(ds) and (ds.Tag <> -1) then
      begin
        if frameToolbar1.DataLinkCount = 0 then
          frameToolbar1.SetDataSource(ds)
        else
          frameToolbar1.AddDataLink(ds);
      end
    except
    end;
    // gan event OnEnter
    if Assigned(pp) and ((Components[i].InheritsFrom(TdxInplaceEdit) or
      Components[i].InheritsFrom(TCustomdxTreeListControl)
      or Components[i].InheritsFrom(TCustomdxInspectorControl))) then
    begin
      pp := GetPropInfo(Components[i], 'OnEnter', [tkMethod]);
      if Assigned(pp) then
      try
        Method := GetMethodProp(Components[i], pp);
        if not Assigned(Method.Code) then
        begin
          pe := @Method.Code;
          pe^ := Self.OnControlEnter;
          Method.Data := Self;
          SetMethodProp(Components[i], pp, Method);
        end;
      except
      end;
    end;
  end;
end;

procedure TfrmEditBase.OnControlEnter(Sender: TObject);
var
  pp: PPropInfo;
  ds: TDatasource;
  f: boolean;
begin

  pp := GetPropInfo(Sender, 'DataSource', [tkClass]);
  ds := TDatasource(GetOrdProp(Sender, pp));
  if (ds <> frameToolbar1.acDSInsert.DataSource) then
  begin
    if frameToolbar1.acDSPost.Enabled then
      frameToolbar1.acDSPost.Execute;
    if not (frameToolbar1.acDSInsert.DataSource.State in [dsInsert, dsEdit])
      then
      f := frameToolbar1.SetDataSource(ds)
    else
      (Sender as TControl).ControlState := (Sender as TControl).ControlState -
        [csFocusing];
  end
    {
      if Sender.InheritsFrom(TCustomdxTreeListControl) then
      begin
        frameToolbar1.SetActiveControl(TWinControl(Sender));
        if f then
          ProcessGridEnterEvent(Sender, frameToolbar1.acDSInsert,
            frameToolbar1.acDSPost)
        else
          ProcessGridEnterEvent(Sender, frameToolbar1.acDSInsert);
      end
      else
        if Sender.InheritsFrom(TCustomdxInspectorControl) then
        frameToolbar1.SetActiveControl(TWinControl(Sender));
    }
end;

procedure TfrmEditBase.UpdateOnPopup;
begin
  //UpdateButtonBarOnPopup(frameToolbar1, FPopup);
end;

procedure TfrmEditBase.OnAfterDelete(Dataset: TDataset);
begin
  Inc(FUpdatedCount);
end;

procedure TfrmEditBase.DefOnBeforeOpen(Dataset: TDataset);
var
  ret: variant;
  i: integer;
begin
  if Assigned(FOnGetParamValue) then
    with TIBODataset(Dataset) do
    begin
      if not Prepared then
        Prepare;
      for i := 0 to ParamCount - 1 do
      begin
        FOnGetParamValue(ModuleID, UpperCase(Params[i].Name), ret);
        if (ret = null) and (UpperCase(Params[i].Name) = 'MOD_ID') then
          ret := ModuleID;
        ParamByName(Params[i].Name).Value := ret;
      end;
    end;
end;

procedure TfrmEditBase.RefreshData(AParamChange: boolean);
  procedure RefreshOnParamChange(Dataset: TDataset);
  var
    ret: variant;
    i: integer;
  begin
    if Assigned(Dataset) and Dataset.InheritsFrom(TIBODataset) then
      if Assigned(TIBODataset(Dataset).OnPrepareSQL) then
      begin
        TIBODataset(Dataset).InvalidateSQL;
        TIBODataset(Dataset).Refresh;
      end;
    if Assigned(FOnGetParamValue) then
      with TIBODataset(Dataset) do
      begin
        for i := 0 to ParamCount - 1 do
        begin
          FOnGetParamValue(ModuleID, UpperCase(Params[i].Name), ret);
          if VarCompare(ParamByName(Params[i].Name).Value, ret) <> 0 then
            break;
        end;
        if i <> ParamCount then
          Dataset.Refresh;
      end
    else
      Dataset.Refresh;
  end;
begin
  if AParamChange and
    Assigned(frameToolbar1.acDSInsert.DataSource) then
    RefreshOnParamChange(frameToolbar1.acDSInsert.DataSource.DataSet)
  else
    frameToolbar1.acDSRefresh.Execute;
end;

procedure TfrmEditBase.OnBeforePrint(Sender: TObject);
begin
end;

procedure TfrmEditBase.OnGridMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
end;

procedure TfrmEditBase.OnGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
end;

procedure TfrmEditBase.OnGenerate;
begin
end;

procedure TfrmEditBase.FormDestroy(Sender: TObject);
begin
  inherited;
  frameToolbar1.CloseDatasets;
end;

procedure TfrmEditBase.frameToolbar1acDSRefreshExecute(Sender: TObject);
begin
  inherited;
  frameToolbar1.acDSRefreshExecute(Sender);

end;

end.

