unit ToolbarFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxLayoutControl, StdCtrls, cxControls, DBActns, ActnList,
  dxLayoutLookAndFeels, ImgList, IBODataset, DB, ExtCtrls, DBCtrls,
  ElXPThemedControl, ElBtnCtl, ElPopBtn, Variants, dxTL, dxInspct, Menus,
  ElMenus, dxmdaset;

type
  TOnExport = procedure(operation_type: integer) of object;
  TOnGenerate = procedure of
    object;
  THackTreeList = class(TCustomdxTreeList);
  TframeToolbar = class(TFrame)
    ActionList1: TActionList;
    acDSInsert: TDataSetInsert;
    acDSPost: TDataSetPost;
    acDSCancel: TDataSetCancel;
    acClose: TAction;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    acHelp: TAction;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    StyleToolBar: TdxLayoutWebLookAndFeel;
    acChoose: TAction;
    acOpen: TAction;
    acDSDelete: TDataSetDelete;
    acDSRefresh: TDataSetRefresh;
    btnDelete: TElPopupButton;
    dxlctrlDelete: TdxLayoutItem;
    btnInsert: TElPopupButton;
    dxlctrlInsert: TdxLayoutItem;
    btnSave: TElPopupButton;
    dxlctrlSave: TdxLayoutItem;
    btnCancel: TElPopupButton;
    dxlctrlCancel: TdxLayoutItem;
    btnClose: TElPopupButton;
    dxLayoutControl1Item14: TdxLayoutItem;
    btnHelp: TElPopupButton;
    dxlctrlHelp: TdxLayoutItem;
    btnChoose: TElPopupButton;
    dxlctrlChoose: TdxLayoutItem;
    btnCopy: TElPopupButton;
    dxlctrlInsertCopy: TdxLayoutItem;
    acPrint: TAction;
    acDesign: TAction;
    acPreview: TAction;
    acSendmail: TAction;
    btnFirst: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    btnLast: TElPopupButton;
    btnNext: TElPopupButton;
    btnPrevious: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    btnDesign: TElPopupButton;
    btnPrint: TElPopupButton;
    btnPreview: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    acDSFirst: TDataSetFirst;
    acDSPrior: TDataSetPrior;
    acDSNext: TDataSetNext;
    acDSLast: TDataSetLast;
    acDSInsertCopy: TDataSetInsert;
    btnInsertEx: TElPopupButton;
    dxlctrlInsertChild: TdxLayoutItem;
    acDSInsertChild: TDataSetInsert;
    btnSendMail: TElPopupButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    acView: TAction;
    ElPopupMenu1: TElPopupMenu;
    dxlctrlGenerate: TdxLayoutItem;
    btnGenerate: TElPopupButton;
    ElPopupMenu2: TElPopupMenu;
    dxLayoutControl1Group4: TdxLayoutGroup;
    btnRelation: TElPopupButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxlctrlViewLog: TdxLayoutItem;
    acLogView: TAction;
    dxLayoutControl1Group3: TdxLayoutGroup;
    procedure acDSPostUpdate(Sender: TObject);
    procedure acDSCancelUpdate(Sender: TObject);
    procedure acDSPostExecute(Sender: TObject);
    procedure acDSCancelExecute(Sender: TObject);
    procedure acChooseUpdate(Sender: TObject);
    procedure acDSFirstUpdate(Sender: TObject);
    procedure acDSPriorUpdate(Sender: TObject);
    procedure acDSNextUpdate(Sender: TObject);
    procedure acDSLastUpdate(Sender: TObject);
    procedure acDSFirstExecute(Sender: TObject);
    procedure acDSPriorExecute(Sender: TObject);
    procedure acDSNextExecute(Sender: TObject);
    procedure acDSLastExecute(Sender: TObject);
    procedure acDSInsertCopyExecute(Sender: TObject);
    procedure acDSInsertExecute(Sender: TObject);
    procedure acDSInsertUpdate(Sender: TObject);
    procedure acDSDeleteUpdate(Sender: TObject);
    procedure acDSInsertCopyUpdate(Sender: TObject);
    procedure acDSInsertChildExecute(Sender: TObject);
    procedure acDSInsertChildUpdate(Sender: TObject);
    procedure acDSRefreshExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acDSDeleteExecute(Sender: TObject);
    procedure acViewUpdate(Sender: TObject);
    procedure acSendmailExecute(Sender: TObject);
    procedure OnGeneratePopup(Sender: TObject);
    procedure OnExportPopup(Sender: TObject);
    procedure acLogViewUpdate(Sender: TObject);
    procedure FrameConstrainedResize(Sender: TObject; var MinWidth,
      MinHeight, MaxWidth, MaxHeight: Integer);
    procedure DisableDatasetAction(disable: boolean);
    procedure acHelpUpdate(Sender: TObject);
    procedure acHelpExecute(Sender: TObject);
  private
    FDataLinks: TStringList;
    FDataClosed: TStringList;
    FActiveControl: TWinControl;
    FActiveDatasource: TDatasource;
    FKeyField: string;
    FOldID: variant;
    FBeforeInsertEvent: TNotifyEvent;
    FBeforeInsertChildEvent: TNotifyEvent;
    FOldSource: TDatasource;
    FLinkSrc: TDatasource;
    FOnExport: TOnExport;
    FPrintAction: smallint;
    FOnBeforeExport: TNotifyEvent;
    FOnGenerate: TOnGenerate;
    FModuleId: smallint;
    FCheckPermission: boolean;
    FReadyDataset: smallint;
    FTemplateType: smallint;
    procedure SetBeforeInsertChild(AValue: TNotifyEvent);
    procedure SetControlActive(AEditting: boolean);
    procedure SendScrollMessage;
    procedure SetOnExport(const Value: TOnExport);
    procedure OnPrintClick(Sender: TObject);
    procedure OnGeneratorClick(Sender: TObject);
    procedure SetOnBeforeExport(const Value: TNotifyEvent);
    procedure SetOnGenerate(const Value: TOnGenerate);
    procedure SetModuleId(const Value: smallint);
    procedure SetCheckPermission(const Value: boolean);
    function GetDataLinkCount: smallint;
    { Private declarations }
  public
    { Public declarations }
    property ReadyDataset: smallint read FReadyDataset;
    property TemplateType: smallint read FTemplateType write FTemplateType;
    procedure SetListSource(ADatasource: TDataSource);
    function SetDataSource(ADatasource: TDataSource): boolean;
    procedure SetPostSource(ADatasource: TDataSource);
    procedure AddDataLink(ADataSource: TDataSource; AClose: boolean = true);
    procedure RemoveDataLink(ADataSource: TDataSource);
    procedure SetActiveControl(AActiveControl: TWinControl);
    procedure SetKeyField(AKeyField: string);
    property OnBeforeInsert: TNotifyEvent read FBeforeInsertEvent write
      FBeforeInsertEvent;
    property OnBeforeInsertChild: TNotifyEvent read FBeforeInsertChildEvent write
      SetBeforeInsertChild;
    property OnBeforeExport: TNotifyEvent read FOnBeforeExport write
      SetOnBeforeExport;
    property OnExport: TOnExport read FOnExport write
      SetOnExport;

    property ModuleId: smallint read FModuleId write SetModuleId;
    property DataLinkCount: smallint read GetDataLinkCount;
    property OnGenerate: TOnGenerate read FOnGenerate write SetOnGenerate;
    function GetOldID: variant;
    destructor Destroy; override;
    procedure CloseDatasets(caActive: boolean = true);
    procedure OpenDatasets;
    procedure SetLinkSource(ADatasource: TDatasource);
    procedure AddExportItem(AModuleID: smallint; AModuleName: widestring);
    procedure AddGenerateItem(AModuleID: smallint; AModuleName: widestring);
    procedure InitGenerateMenu(var AMenu: TElPopupMenu);
    procedure InitExportMenu(var AMenu: TElPopupMenu);
    procedure UpdateInterface;
  protected
    isManualResized: boolean;
  end;
const
  WM_USER_COPY_NOTE = WM_USER + 107;
  WM_USER_SCROLLLIST = WM_USER + 112;
  WM_USER_MULTIDELETION = WM_USER + 114;
implementation
uses MainDM;

{$R *.dfm}

procedure TframeToolbar.acDSPostUpdate(Sender: TObject);
var
  i: integer;
  f: boolean;
begin
  //============================================================//
  //  PostAction enable khi DataSource hoac DataLink co' 1 ds hop le//
  //============================================================//
  f := Assigned(acDSPost.DataSource) and Assigned(acDSPost.DataSource.DataSet)
    and
    (acDSPost.DataSource.DataSet.State in [dsInsert, dsEdit]);
  if Assigned(FDataLinks) then
    for i := 0 to FDataLinks.Count - 1 do
    begin
      f := f or (Assigned(TDatasource(FDataLinks.Objects[i]).DataSet) and
        (TDatasource(FDataLinks.Objects[i]).DataSet.State in [dsEdit,
        dsInsert]));
      if f then Break;
    end;
  acDSPost.Enabled := f;
end;

procedure TframeToolbar.acDSCancelUpdate(Sender: TObject);
var
  i: integer;
  f: boolean;
begin
  //============================================================//
  //  PostAction enable khi DataSource hoac DataLink co' 1 ds hop le//
  //============================================================//
  f := Assigned(acDSCancel.DataSource) and
    Assigned(acDSCancel.DataSource.DataSet)
    and (acDSCancel.DataSource.DataSet.State in [dsInsert, dsEdit]);
  if Assigned(FDataLinks) then
    for i := 0 to FDataLinks.Count - 1 do
    begin
      f := f or (Assigned(TDatasource(FDataLinks.Objects[i]).DataSet) and
        (TDatasource(FDataLinks.Objects[i]).DataSet.State in [dsEdit,
        dsInsert]));
      if f then Break;
    end;
  acDSCancel.Enabled := f;
end;

procedure TframeToolbar.acDSPostExecute(Sender: TObject);
var
  i: integer;
begin
  if Assigned(FDataLinks) then
    for i := 0 to FDataLinks.Count - 1 do
    begin
      if Assigned(TDatasource(FDataLinks.Objects[i]).DataSet) and
        (TDatasource(FDataLinks.Objects[i]).DataSet.State in [dsEdit, dsInsert])
          then
      try
        TDatasource(FDataLinks.Objects[i]).DataSet.Post;
      except
        on
          E: Exception do
        begin
          if not(TDatasource(FDataLinks.Objects[i]).DataSet is TdxMemData) then
          SSP_HandleException(e);
        end;
      end;
    end;
  if (FDataLinks.Count = 0) and Assigned(acDSPost.DataSource) and
    Assigned(acDSPost.DataSource.DataSet) then
  begin
    try
      acDSPost.DataSource.DataSet.Post;
    except
      on
        E: Exception do
      begin
        SSP_HandleException(e);
      end;
    end;
  end;
end;

procedure TframeToolbar.acDSCancelExecute(Sender: TObject);
var
  i: integer;
begin
  if Assigned(FDataLinks) then
    for i := FDataLinks.Count - 1 downto 0 do
    begin
      if (TDatasource(FDataLinks.Objects[i]).DataSet <> nil) and
        (TDatasource(FDataLinks.Objects[i]).DataSet.State in [dsEdit, dsInsert])
          then
        TDatasource(FDataLinks.Objects[i]).DataSet.Cancel;
    end;
  if (FDataLinks.Count = 0) and Assigned(acDSCancel.DataSource) and
    Assigned(acDSCancel.DataSource.DataSet) then
    acDSCancel.DataSource.DataSet.Cancel;
  if (FOldSource <> nil) then
  begin
    acDSDelete.DataSource := FOldSource;
    FOldSource := nil;
  end;
end;

procedure TframeToolbar.acChooseUpdate(Sender: TObject);
begin
  if acDSCancel.DataSource <> nil then
    acChoose.Enabled := (not (acDSCancel.DataSource.Dataset.State in [dsEdit,
      dsInsert]))
      and (acDSCancel.DataSource.Dataset.RecordCount > 0)
  else
    acChoose.Enabled := false;
end;

procedure TframeToolbar.acDSFirstUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := (Assigned(acDSFirst.DataSource)) and (not
    acDSFirst.DataSource.DataSet.Bof);
end;

procedure TframeToolbar.acDSPriorUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := (Assigned(acDSPrior.DataSource)) and (not
    acDSPrior.DataSource.DataSet.Bof);
end;

procedure TframeToolbar.acDSNextUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := (Assigned(acDSNext.DataSource)) and (not
    acDSNext.DataSource.DataSet.Eof);
end;

procedure TframeToolbar.acDSLastUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := (Assigned(acDSLast.DataSource)) and (not
    acDSLast.DataSource.DataSet.Eof);
end;

procedure TframeToolbar.acDSFirstExecute(Sender: TObject);
begin
  acDSFirst.DataSource.DataSet.First;
  FOldSource := nil;
  SendScrollMessage;
end;

procedure TframeToolbar.acDSPriorExecute(Sender: TObject);
begin
  acDSPrior.DataSource.DataSet.Prior;
  FOldSource := nil;
  SendScrollMessage;
end;

procedure TframeToolbar.acDSNextExecute(Sender: TObject);
begin
  acDSNext.DataSource.DataSet.Next;
  FOldSource := nil;
  SendScrollMessage;
end;

procedure TframeToolbar.acDSLastExecute(Sender: TObject);
begin
  acDSLast.DataSource.DataSet.Last;
  FOldSource := nil;
  SendScrollMessage;
end;

procedure TframeToolbar.SetListSource(ADatasource: TDataSource);
begin
  acDSFirst.DataSource := ADatasource;
  acDSPrior.DataSource := ADatasource;
  acDSNext.DataSource := ADatasource;
  acDSLast.DataSource := ADatasource;
  dxLayoutControl1.BeginUpdate;
  dxLayoutControl1Group2.Visible := (Assigned(ADatasource));
  dxLayoutControl1.EndUpdate;
end;

procedure TframeToolbar.AddDataLink(ADataSource: TDataSource; AClose: boolean =
  true);
var
  i: smallint;
begin
  if not Assigned(ADataSource) then Exit;
  if not Assigned(FDataLinks) then
  begin
    FDataLinks := TStringList.Create;
    FDataLinks.Duplicates := dupIgnore;
    FDataClosed := TStringList.Create;
    FDataClosed.Duplicates := dupAccept;
  end;
  i := FDataLinks.IndexOf(ADataSource.Name);
  if i = -1 then
  begin
    i := FDataLinks.AddObject(ADataSource.Name, ADataSource);
    if i > (FDataClosed.Count - 1) then
      FDataClosed.Add('0');
    if AClose and Assigned(ADataSource.DataSet)
      and (not ADataSource.DataSet.Active) then
      FDataClosed.Strings[i] := '1'
    else
      FDataClosed.Strings[i] := '0';
  end;
end;

procedure TframeToolbar.RemoveDataLink(ADataSource: TDataSource);
var
  index: integer;
begin
  if not Assigned(FDataLinks) then Exit;
  index := FDataLinks.IndexOf(ADataSource.Name);
  if index > -1 then
  begin
    FDataLinks.Delete(index);
    FDataClosed.Delete(index);
  end;
end;

procedure TframeToolbar.acDSInsertCopyExecute(Sender: TObject);
var
  varCopyData: Variant;
  i, j: Integer;
  AAppend: boolean;
  f: TField;
  stream: TStream;
  li: TList;
begin
  AAppend := (acDSInsertCopy.tag = 3);
  if not Assigned(acDSInsertCopy.DataSource.DataSet) then Exit;

  if Assigned(FBeforeInsertEvent) then
    FBeforeInsertEvent(nil);
  if TIBOQuery(acDSInsert.DataSource.DataSet).State in [dsInsert, dsEdit] then
    TIBOQuery(acDSInsert.DataSource.DataSet).Post;

  with TIBODataset(acDSInsertCopy.DataSource.DataSet) do
  begin
    varCopyData := VarArrayCreate([0, FieldCount - 1], varVariant);
    f := FindField(FKeyField);
    if Assigned(f) then
    begin
      FOldID := FieldByName(FKeyField).Value;
      SendMessage(Application.MainForm.Handle, WM_USER_COPY_NOTE, 0,
        longint(@FOldID));
    end;
    try
      li := TList.Create;
      for i := 0 to FieldCount - 1 do
      begin
        if Fields[i].IsBlob then
        begin
          stream := CreateBlobStream(Fields[i], bmRead);
          stream.Position := 0;
          li.Add(stream);
        end
        else
          varCopyData[i] := FieldByName(Fields[i].FieldName).Value;
      end;
      if AAppend then
        Append
      else
        Insert;
      j := 0;
      for i := 0 to FieldCount - 1 do
        if Fields[i].Tag=-1 then Continue
        else
        if Fields[i].IsNull then
          if Fields[i].IsBlob then
          begin
            stream := CreateBlobStream(Fields[i], bmReadWrite);
            stream.CopyFrom(TStream(li[j]), TStream(li[j]).Size);
            TStream(li[j]).Free;
            Inc(j);
          end
          else
            FieldByName(Fields[i].FieldName).Value := VarCopyData[i];
      {
      if Assigned(f) then
        Post;
      }
      if FLinkSrc = acDSInsertCopy.DataSource then
      begin
        FOldSource := acDSDelete.DataSource;
        acDSDelete.DataSource := acDSInsertCopy.DataSource;
      end;
      SetControlActive(true);
    finally
      li.Free;
    end;
  end;
end;

procedure TframeToolbar.acDSInsertExecute(Sender: TObject);
begin
  if Assigned(FBeforeInsertEvent) then
    FBeforeInsertEvent(nil);

  if TIBOQuery(acDSInsert.DataSource.DataSet).State in [dsInsert, dsEdit] then
    TIBOQuery(acDSInsert.DataSource.DataSet).Post;
  if acDSInsert.DataSource.DataSet.RecNo =
    acDSInsert.DataSource.DataSet.RecordCount then
    acDSInsert.DataSource.DataSet.Append
  else
    if TAction(Sender).Tag = 0 then
    acDSInsert.DataSource.DataSet.Insert
  else
    if TAction(Sender).Tag = 1 then
    acDSInsert.DataSource.DataSet.Append
  else
  begin
    acDSInsertCopy.Tag := TAction(Sender).Tag;
    acDSInsertCopy.Execute;
  end;
  if (FLinkSrc = acDSInsert.DataSource) then
  begin
    FOldSource := acDSDelete.DataSource;
    acDSDelete.DataSource := acDSInsert.DataSource;
  end;

  SetControlActive(true);
end;

function TframeToolbar.SetDataSource(ADatasource: TDataSource): boolean;
begin
  //=======================================================================
  // FReadyDataset : kiem tra cac dieu kien thuc hien Insert-Edit-Delete
  // cua 1 dataset theo 3 bit dau : I-E-D
  // vi du : 100 la` insert duoc
  //         110 la Insert va Edit duoc
  //         111 la Insert-Edit-Delete duoc
  //=======================================================================
  // neu DataSource.Dataset <> acDSInsert.Datasource.Dataset
  //=======================================================================
  if (ADatasource <> acDSInsert.Datasource)
    or (Assigned(ADatasource.DataSet) xor
    Assigned(acDSInsert.Datasource.Dataset))
    or (ADatasource.DataSet <> acDSInsert.Datasource.Dataset) then
  begin
    if Assigned(ADatasource) and Assigned(ADatasource.DataSet) then
    begin
      if (ADatasource.DataSet is TIBOQuery) then
      begin
        FReadyDataset := 0;
        if (TIBOQuery(ADatasource.DataSet).InsertSQL.Text <> '') then
          FReadyDataset := 1;
        FReadyDataset := FReadyDataset shl 1;
        if (TIBOQuery(ADatasource.DataSet).EditSQL.Text <> '') then
          FReadyDataset := (FReadyDataset or 1);
        FReadyDataset := FReadyDataset shl 1;
        if (TIBOQuery(ADatasource.DataSet).DeleteSQL.Text <> '') then
          FReadyDataset := FReadyDataset or 1;
      end
      else
        FReadyDataset := $FF
    end
    else
      FReadyDataset := 0;
  end;
  //================================================================
  if (acDSInsert.DataSource <> ADatasource) then
  begin
    if Assigned(acDSInsert.DataSource) then
    begin
      FOldID := null;
      FKeyField := '';
      FActiveControl := nil;
      OnBeforeInsert := nil;
      OnBeforeInsertChild := nil;
    end;
    acDSInsert.DataSource := ADatasource;
    acDSInsertCopy.DataSource := ADatasource;
    acDSPost.DataSource := ADatasource;
    acDSCancel.DataSource := ADatasource;
    acDSRefresh.DataSource := ADatasource;
    if Assigned(acDSNext.DataSource) and (FLinkSrc = ADatasource)
      and (FOldSource = nil) then
      acDSDelete.DataSource := acDSNext.DataSource
    else
      acDSDelete.DataSource := ADatasource;

    if Assigned(ADatasource) then
    begin
      FActiveDatasource := ADatasource;
      AddDataLink(ADatasource);
    end;
    Result := true;
  end
  else
    Result := false;
end;

procedure TframeToolbar.acDSInsertUpdate(Sender: TObject);
var
  dataset: TDataSet;
  enable: Boolean;
begin
  enable := Assigned(acDSInsert.DataSource);
  if enable then
    enable := enable and Assigned(acDSInsert.DataSource.DataSet);
  if enable then
  begin
    dataset := acDSInsert.DataSource.DataSet;
    if (dataset is TIBOQuery) then
      enable := enable and ((FReadyDataset and 4) = 4)
        and acDSInsert.DataSource.DataSet.Active and
        (TIBOQuery(acDSInsert.DataSource.DataSet).InsertSQL.Count > 0);
  end;
  TAction(Sender).Enabled := enable and
    (CheckPermission(acDSInsert.DataSource.DataSet, [ptMINSERT]));
end;

procedure TframeToolbar.acDSDeleteUpdate(Sender: TObject);
var
  dataset: TDataSet;
  enable: Boolean;
begin
  enable := Assigned(acDSDelete.DataSource);
  if enable then
    enable := enable and Assigned(acDSDelete.DataSource.DataSet);
  if enable then
  begin
    dataset := acDSDelete.DataSource.DataSet;
    enable := enable and (dataset.RecordCount > 0);

    if (dataset is TIBOQuery) then
      enable := enable and ((FReadyDataset and 1) = 1)
        and dataset.Active and
        (TIBOQuery(dataset).DeleteSQL.Count > 0);
  end;
  TAction(Sender).Enabled := enable and
    (CheckPermission(acDSDelete.DataSource.DataSet, [ptMDELETE]));
end;

procedure TframeToolbar.acDSInsertCopyUpdate(Sender: TObject);
var
  dataset: TDataSet;
  enable: Boolean;
begin
  enable := Assigned(acDSInsertCopy.DataSource);
  if enable then
    enable := enable and Assigned(acDSInsertCopy.DataSource.DataSet);
  if enable then
  begin
    dataset := acDSInsertCopy.DataSource.DataSet;
    if (dataset is TIBOQuery) then
      enable := enable and ((FReadyDataset and 4) = 4)
        and acDSInsertCopy.DataSource.DataSet.Active and
        (TIBOQuery(acDSInsertCopy.DataSource.DataSet).InsertSQL.Count > 0);
  end;
  TAction(Sender).Enabled := enable and
    (acDSInsertCopy.DataSource.DataSet.RecordCount > 0)
    and (CheckPermission(acDSInsertCopy.DataSource.DataSet, [ptMINSERT]));
end;

procedure TframeToolbar.SetActiveControl(AActiveControl: TWinControl);
begin
  if FActiveControl <> AActiveControl then
  begin
    FActiveControl := AActiveControl;
    SetControlActive(false);
  end;
end;

procedure TframeToolbar.SetKeyField(AKeyField: string);
begin
  FKeyField := AKeyField;
end;

function TframeToolbar.GetOldID: variant;
begin
  Result := FOldID;
end;

procedure TframeToolbar.acDSInsertChildExecute(Sender: TObject);
begin
  if Assigned(FBeforeInsertChildEvent) then
    FBeforeInsertChildEvent(nil);
  if TIBOQuery(acDSInsert.DataSource.DataSet).State in [dsInsert, dsEdit] then
    TIBOQuery(acDSInsert.DataSource.DataSet).Post;
  acDSInsertChild.DataSource.DataSet.Insert;
  if FLinkSrc = acDSInsertChild.DataSource then
  begin
    FOldSource := acDSDelete.DataSource;
    acDSDelete.DataSource := acDSInsertChild.DataSource;
  end;
  SetControlActive(true);
end;

procedure TframeToolbar.SetBeforeInsertChild(AValue: TNotifyEvent);
begin
  FBeforeInsertChildEvent := AValue;
  if Assigned(FBeforeInsertChildEvent) then
  begin
    acDSInsertChild.OnExecute := acDSInsertChildExecute;
    if not Assigned(acDSInsertChild.OnUpdate) then
      acDSInsertChild.OnUpdate := acDSInsertChildUpdate;
    acDSInsertChild.DataSource := acDSInsert.DataSource;
  end
  else
  begin
    acDSInsertChild.OnExecute := nil;
    acDSInsertChild.DataSource := nil;
    acDSInsertChild.OnUpdate := nil;
  end;
  dxLayoutControl1.BeginUpdate;
  dxlctrlInsertChild.Visible := Assigned(FBeforeInsertChildEvent);
  dxLayoutControl1.EndUpdate;
end;

procedure TframeToolbar.acDSInsertChildUpdate(Sender: TObject);
var
  dataset: TDataSet;
  enable: Boolean;
begin
  enable := Assigned(acDSInsertChild.DataSource);
  if enable then
    enable := enable and Assigned(acDSInsertChild.DataSource.DataSet);
  if enable then
  begin
    dataset := acDSInsertChild.DataSource.DataSet;
    if (dataset is TIBOQuery) then
      enable := enable and ((FReadyDataset and 4) = 4)
        and acDSInsertChild.DataSource.DataSet.Active and
        (TIBOQuery(acDSInsertChild.DataSource.DataSet).InsertSQL.Count > 0);
  end;
  TAction(Sender).Enabled := enable and
    (acDSInsertChild.DataSource.DataSet.RecordCount > 0)
    and Assigned(OnBeforeInsertChild)
    and (CheckPermission(acDSInsertChild.DataSource.DataSet, [ptMINSERT]));
end;

procedure TframeToolbar.SetControlActive(AEditting: boolean);
var
  i: integer;
  form: TCustomForm;
  oldEnter: TNotifyEvent;
begin
  if Assigned(FActiveControl) then
  begin
    form := GetParentForm(Self);
    if Assigned(form) then
    begin
      if form.ActiveControl = FActiveControl then Exit;
      if form.Active then
      begin
        if FActiveControl.InheritsFrom(TCustomdxTreeListControl) then
          for i := 0 to
            TCustomdxTreeListControl(FActiveControl).VisibleColumnCount
            - 1 do
            if not
              TCustomdxTreeListControl(FActiveControl).VisibleColumns[i].DisableEditor then
            begin
              TCustomdxTreeListControl(FActiveControl).FocusedColumn := i;
              if AEditting then
              begin
                FActiveControl.SetFocus;
                TCustomdxTreeListControl(FActiveControl).ShowEditor;
              end;
              break;
            end;
        if FActiveControl.InheritsFrom(TCustomdxInspectorControl) then
          for i := 0 to
            TCustomdxInspectorControl(FActiveControl).TotalRowCount - 1 do
            if TCustomdxInspectorControl(FActiveControl).Rows[i].Visible
              and not
              TCustomdxInspectorControl(FActiveControl).Rows[i].IsCategory then
            begin
              TCustomdxInspectorControl(FActiveControl).Rows[i].Node.Focused :=
                true;
              if AEditting then
              begin
                FActiveControl.SetFocus;
                TCustomdxInspectorControl(FActiveControl).ShowEditor;
              end;
              break;
            end;
      end
      else
      try
        form.ActiveControl := FActiveControl;
      except
      end;
    end;
  end;
end;

destructor TframeToolbar.Destroy;
begin
  if Assigned(FDataLinks) then
  begin
    FDataLinks.Free;
    FDataClosed.Free;
  end;
  inherited;
end;

procedure TframeToolbar.CloseDatasets(caActive: boolean);
var
  i: integer;
begin
  acDSCancel.Execute;
  if Assigned(FDataLinks) then
  begin
    for i := (FDataLinks.Count - 1) downto 0 do
      if Assigned(FDataLinks.Objects[i]) and
        Assigned(TDatasource(FDataLinks.Objects[i]).DataSet) and
        (FDataClosed.Strings[i] = '1') then
      begin
        TDatasource(FDataLinks.Objects[i]).DataSet.Close;
      end;
  end;
end;

procedure TframeToolbar.acDSRefreshExecute(Sender: TObject);
var
  i: integer;
begin
  if Assigned(FDataLinks) then
  begin
    for i := 0 to (FDataLinks.Count - 1) do
      if Assigned(FDataLinks.Objects[i]) and
        Assigned(TDatasource(FDataLinks.Objects[i]).DataSet) and
        TDatasource(FDataLinks.Objects[i]).DataSet.Active and
        not Assigned(TDatasource(FDataLinks.Objects[i]).DataSet.DataSource) and
        (TDatasource(FDataLinks.Objects[i]).DataSet is TIBOQuery) then
        TIBOQuery(TDatasource(FDataLinks.Objects[i]).DataSet).Refresh;
  end;
end;

procedure TframeToolbar.acCloseExecute(Sender: TObject);
var
  f: TForm;
begin
  f := TForm(GetParentForm(Self));
  if Assigned(f) then
    if (f.FormStyle = fsMDIChild) or (f = Application.MainForm) then
      f.Close
    else
      f.ModalResult := mrCancel;
end;

procedure TframeToolbar.OpenDatasets;
var
  i: integer;
begin
  if Assigned(FDataLinks) then
  begin
    for i := 0 to (FDataLinks.Count - 1) do
      if Assigned(FDataLinks.Objects[i]) and
        Assigned(TDatasource(FDataLinks.Objects[i]).DataSet)
        and (not TDatasource(FDataLinks.Objects[i]).DataSet.Active) then
      begin
        TDatasource(FDataLinks.Objects[i]).DataSet.Open;
      end;
  end;
end;

procedure TframeToolbar.acDSDeleteExecute(Sender: TObject);
begin
  if Assigned(FActiveControl) and FActiveControl.InheritsFrom(TCustomdxTreeList)
    and (THackTreeList(FActiveControl).SelectedCount > 0) then
  begin
    if Assigned(THackTreeList(FActiveControl).FocusedNode) then
      THackTreeList(FActiveControl).FocusedNode.Selected := true;
    //    SendMessage(Application.MainForm.Handle, WM_USER_MULTIDELETION, 1, 0);
    if (THackTreeList(FActiveControl).SelectedCount > 1) then
      THackTreeList(FActiveControl).DeleteSelection
    else
      acDSDelete.ExecuteTarget(acDSDelete.DataSource);
  end
  else
  begin
    //    SendMessage(Application.MainForm.Handle, WM_USER_MULTIDELETION, 0, 0);
    acDSDelete.ExecuteTarget(acDSDelete.DataSource);
  end;
  //  SendMessage(Application.MainForm.Handle, WM_USER_MULTIDELETION, 0, 0);
  if (FOldSource <> nil) and Assigned(acDSNext.DataSource) then
  begin
    acDSRefresh.Execute;
    FOldSource := nil;
  end;
end;

procedure TframeToolbar.acViewUpdate(Sender: TObject);
begin
  acView.Enabled := Assigned(acDSInsert.DataSource) and
    Assigned(acDSInsert.DataSource.DataSet)
    and acDSInsert.DataSource.DataSet.Active
    and (acDSInsert.DataSource.DataSet.Recordcount > 0)
    and (CheckPermission(acDSInsert.DataSource.Dataset, [ptMREAD]));
end;

procedure TframeToolbar.SetPostSource(ADatasource: TDataSource);
begin
  if acDSPost.DataSource <> ADatasource then
  begin
    acDSPost.DataSource := ADatasource;
    acDSCancel.DataSource := ADatasource;
  end;
end;

procedure TframeToolbar.SendScrollMessage;
var
  f: TCustomForm;
begin
  f := GetParentForm(Self);
  if Assigned(f) then
    SendMessage(f.Handle, WM_USER_SCROLLLIST, 0,
      LongInt(PChar(acDSFirst.DataSource.Name)));
end;

procedure TframeToolbar.SetLinkSource(ADatasource: TDatasource);
begin
  FLinkSrc := ADatasource;
end;

procedure TframeToolbar.SetOnExport(const Value: TOnExport);
begin
  FOnExport := Value;
end;

procedure TframeToolbar.OnPrintClick(Sender: TObject);
begin

end;

procedure TframeToolbar.SetOnBeforeExport(const Value: TNotifyEvent);
begin
  FOnBeforeExport := Value;
end;

procedure TframeToolbar.AddExportItem(AModuleID: smallint;
  AModuleName: widestring);
var
  elm: TElMenuItem;
begin
  if Assigned(btnPrint.PullDownMenu) then
    with ElPopupMenu1 do
    begin
      elm := TElMenuItem.Create(Self);
      elm.Caption := AModuleName;
      elm.OnClick := OnPrintClick;
      elm.Tag := AModuleID;
      Items.Add(elm);
    end;
end;

procedure TframeToolbar.acSendmailExecute(Sender: TObject);
begin
  acDSPost.Execute;
  if Assigned(FOnBeforeExport) then
    FOnBeforeExport(Sender);
  if Assigned(FOnExport) then
    FOnExport(3);
end;

procedure TframeToolbar.SetOnGenerate(const Value: TOnGenerate);
begin
  FOnGenerate := Value;
end;

procedure TframeToolbar.OnGeneratorClick(Sender: TObject);
var
  ADocID: variant;
begin
  acDSPost.Execute;
  if Assigned(FOnGenerate) then
  begin
    ADocID := null;
    if Assigned(FLinkSrc) and (FKeyField <> '') then
      ADocID := FLinkSrc.DataSet.FieldByName(FKeyField).Value;
    FOnGenerate;
  end;
end;

procedure TframeToolbar.SetModuleId(const Value: smallint);
begin
  FModuleId := Value;
end;

procedure TframeToolbar.AddGenerateItem(AModuleID: smallint;
  AModuleName: widestring);
var
  elm: TElMenuItem;
begin
  if Assigned(btnGenerate.PullDownMenu) then
    with ElPopupMenu2 do
    begin
      elm := TElMenuItem.Create(Self);
      elm.Caption := AModuleName;
      elm.OnClick := OnGeneratorClick;
      elm.Tag := AModuleID;
      Items.Add(elm);
    end;
end;

procedure TframeToolbar.SetCheckPermission(const Value: boolean);
begin
  FCheckPermission := Value;
end;

function TframeToolbar.GetDataLinkCount: smallint;
begin
  if Assigned(FDataLinks) then
    Result := FDataLinks.Count
  else
    Result := 0;
end;

procedure TframeToolbar.InitGenerateMenu(var AMenu: TElPopupMenu);
begin
  if not Assigned(AMenu) then Exit;
  btnGenerate.PullDownMenu := AMenu;
  AMenu.OnPopup := OnGeneratePopup;
end;

procedure TframeToolbar.InitExportMenu(var AMenu: TElPopupMenu);
var
  i: integer;
  elm: TElMenuItem;
begin
  if not Assigned(AMenu) then Exit;
  btnSendMail.PullDownMenu := AMenu;
  btnPrint.PullDownMenu := AMenu;
  btnPreview.PullDownMenu := AMenu;
  btnDesign.PullDownMenu := AMenu;
  AMenu.OnPopup := OnExportPopup;
end;

procedure TframeToolbar.OnGeneratePopup(Sender: TObject);
var
  i: integer;
  elm: TElMenuItem;
begin
  TElPopupMenu(Sender).Items.Clear;
  for i := 0 to ElPopupMenu2.Items.Count - 1 do
  begin
    elm := TElMenuItem.Create(Self);
    elm.Caption := ElPopupMenu2.Items[i].Caption;
    elm.OnClick := ElPopupMenu2.Items[i].OnClick;
    elm.Tag := ElPopupMenu2.Items[i].Tag;
    TElPopupMenu(Sender).Items.Add(elm);
  end;
end;

procedure TframeToolbar.OnExportPopup(Sender: TObject);
var
  i: integer;
  elm: TElMenuItem;
begin
  TElPopupMenu(Sender).Items.Clear;
  for i := 0 to ElPopupMenu1.Items.Count - 1 do
  begin
    elm := TElMenuItem.Create(Self);
    elm.Caption := ElPopupMenu1.Items[i].Caption;
    elm.OnClick := ElPopupMenu1.Items[i].OnClick;
    elm.Tag := ElPopupMenu1.Items[i].Tag;
    TElPopupMenu(Sender).Items.Add(elm);
  end;
end;

procedure TframeToolbar.UpdateInterface;
var
  f: boolean;
  delta: smallint;
begin
  f := (ElPopupMenu1.Items.Count >= 2);
  if f then
    if btnSendMail.UseArrow then
      delta := 0
    else
      delta := 1
  else
    if btnSendMail.UseArrow then
    delta := -1
  else
    delta := 0;
  delta := 15 * delta;
  btnSendMail.UseArrow := f;
  btnSendMail.Width := btnSendMail.Width + delta;
  btnPrint.UseArrow := f;
  btnPrint.Width := btnPrint.Width + delta;
  btnPreview.UseArrow := f;
  btnPreview.Width := btnPreview.Width + delta;
  btnDesign.UseArrow := f;
  btnDesign.Width := btnDesign.Width + delta;

  //  dxlctrlGenerate.Visible := (ElPopupMenu2.Items.Count >= 1);
  if dxlctrlGenerate.Visible then
  begin
    btnGenerate.Tag := ElPopupMenu2.Items[0].Tag;
    btnGenerate.OnClick := OnGeneratorClick;
  end;
end;

procedure TframeToolbar.acLogViewUpdate(Sender: TObject);
begin
  acLogView.Enabled := Assigned(acDSInsert.DataSource) and
    Assigned(acDSInsert.DataSource.DataSet)
    and acDSInsert.DataSource.DataSet.Active
    and (acDSInsert.DataSource.DataSet.Recordcount > 0);
end;

procedure TframeToolbar.FrameConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
  MinHeight := 31;
end;

procedure TframeToolbar.DisableDatasetAction(disable: boolean);
begin
  dxlctrlInsert.Visible := not disable;
  dxlctrlInsertCopy.Visible := not disable;
  //  dxlctrlInsertChild.Visible:=not disable;
  dxlctrlDelete.Visible := not disable;
end;

procedure TframeToolbar.acHelpUpdate(Sender: TObject);
var
  helpIndex: string;
begin
  helpIndex := TForm(TframeToolbar(acHelp.Owner).Owner).HelpFile;
  //  acHelp.Enabled:=(helpIndex>0);
end;

procedure TframeToolbar.acHelpExecute(Sender: TObject);
var
  helpIndex: string;
begin
  helpIndex := TForm(TframeToolbar(acHelp.Owner).Owner).HelpFile;
  ShowHelpContext(helpIndex);
end;

end.

