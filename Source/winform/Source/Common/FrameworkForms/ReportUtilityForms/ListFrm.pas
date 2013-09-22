unit ListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  dxLayoutControl, ToolbarFrame, jpeg, ExtCtrls, jzExtCtrls, jzGrids,
  jzMonth, TeeProcs, TeEngine, Chart, DBChart, TeeComma, ElPgCtl, ElBtnCtl,
  ElPopBtn, StdCtrls, ElCLabel, ElLabel, ElPanel, ElSplit, dxTL, dxDBCtrl,
  dxCntner, dxDBTLCl, dxDBTL, dxGrClms, dxGrClEx, cxControls, dxDBGrid,
  ActnList, dxBar, DB, IBODataset, dxmdaset, TypInfo, SSP_Library, StrUtils;

type
  TReportInfo = class
  private
    // giu lai toan bo tham so va sql
    FDataset: TIBODataset;
    FColumnDef: TdxMemdata;
  public
    FReportName: widestring;
    FKeyField: string;
    FPKeyField: string;
    FColorField: string;
    FMarkField: string;
    constructor Create;
    destructor Destroy;
  end;
  TfrmList = class(TfrmBase)
    frameToolbar1: TframeToolbar;
    dsList: TDataSource;
    memData: TdxMemData;
    qryReportDef: TIBOQuery;
    dsReportDef: TDataSource;
    qryTmp: TIBOQuery;
    qryReportCaption: TIBOQuery;
    dsReportCaption: TDataSource;
    pmMultiSelect: TdxBarPopupMenu;
    dxpmMain: TdxBarPopupMenu;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    piInsertChild: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    ActionList1: TActionList;
    acSelectAll: TAction;
    acDeseclectAll: TAction;
    acRevertSelect: TAction;
    dxLayoutControl1: TdxLayoutControl;
    dxdbgMain: TdxDBGrid;
    dxdbtlMain: TdxDBTreeList;
    dxLayoutGroup2: TdxLayoutGroup;
    dxlctrlGrid: TdxLayoutItem;
    dxlctrlTree: TdxLayoutItem;
    qryReportDefMOD_ID: TSmallintField;
    qryReportDefP_KEYFIELD: TWideStringField;
    qryReportDefSQL_SELECT: TBlobField;
    qryReportDefSQL_SUB1: TBlobField;
    qryReportDefSQL_SUB2: TBlobField;
    qryReportDefSQL_SUB3: TBlobField;
    qryReportDefKEYFIELD: TWideStringField;
    qryReportDefCOLOR_FIELD: TWideStringField;
    qryReportDefMARK_FIELD: TWideStringField;
    dxLayoutControl1Item1: TdxLayoutItem;
    qryReportCaptionMOD_ID: TSmallintField;
    qryReportCaptionOBJ_ID: TWideStringField;
    qryReportCaptionREL_CLASS: TSmallintField;
    qryReportCaptionCOLUMN_WIDTH: TSmallintField;
    qryReportCaptionCOLUMN_GROUP: TSmallintField;
    qryReportCaptionCOLUMN_ALIGN: TSmallintField;
    qryReportCaptionCOLUMN_FILTER: TSmallintField;
    qryReportCaptionCOLUMN_FOOTER: TSmallintField;
    qryReportCaptionCOLUMN_INDEX: TSmallintField;
    qryReportCaptionCOLUMN_READONLY: TSmallintField;
    qryReportCaptionCOLUMN_SORTED: TSmallintField;
    qryReportCaptionVISIBLE: TSmallintField;
    qryReportCaptionCOLUMN_CLASS: TSmallintField;
    qryReportCaptionDISPLAY_FIELD: TWideStringField;
    qryReportCaptionCOLUMN_IMAGE: TBlobField;
    qryReportCaptionLOOKUP_ID: TSmallintField;
    qryReportCaptionCOLUMN_CAPTION: TWideStringField;
    procedure WMReloadData(var msg: TMessage); message
      WM_USER_REFRESH;
    procedure WMFilter(var msg: TMessage); message
      WM_USER_FILTER;
    procedure WMGroup(var msg: TMessage); message
      WM_USER_GROUP;
    procedure WMShowGrid(var msg: TMessage); message
      WM_USER_SHOWGRID;
    procedure WMSummaryFooter(var msg: TMessage); message
      WM_USER_SUMMARYFOOTER;
    procedure dxdbgMainDblClick(Sender: TObject);
    procedure qryListDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryListPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryListBeforeDelete(DataSet: TDataSet);
    procedure qryListBeforeEdit(DataSet: TDataSet);
    procedure qryListBeforeInsert(DataSet: TDataSet);
    procedure qryListBeforePost(DataSet: TDataSet);
    procedure qryListAfterDelete(DataSet: TDataSet);
    procedure qryListAfterPost(DataSet: TDataSet);
    procedure dxdbgMainKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxdbtlMainKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxdbtlMainDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dxdbtlMainDblClick(Sender: TObject);
    procedure dxdbgMainMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxdbtlMainMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryListBeforeOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure qryReportCaptionBeforeOpen(DataSet: TDataSet);
    procedure qryListAfterScroll(DataSet: TDataSet);
    procedure acSelectAllExecute(Sender: TObject);
    procedure acDeseclectAllExecute(Sender: TObject);
    procedure acRevertSelectExecute(Sender: TObject);
    procedure acSelectUpdate(Sender: TObject);
    procedure OnCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure OnPrepareSQL(Sender: TObject);
    procedure OnGridMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FOnGetParamValue: TGetParamValueEvent;
    FUseMem: boolean;
    FBeTree: boolean;
    FPopup: boolean;
    FCachedReports: TStringList;
    FDataset: TDataset;
    FGetParamValueEvent: TGetParamValueEvent;
    procedure SetBeTree(AValue: boolean);
    procedure InitReport;
    procedure InitGrid;
    procedure InitTree;
    property BeTree: boolean read FBeTree write SetBeTree;
    procedure UpdatePermission;
    function GetPermission: smallint;
    procedure SetPermission(const Value: smallint);
    procedure SetModuleID(const Value: smallint); override;
    procedure SetCachedReports(const Value: TStringList);
    function GetCachedReports: TStringList;
    function GetReportInfo(index: integer): TReportInfo;
    procedure SetReportInfo(reportid: integer; const Value: TReportInfo);
    function GetDataset: TDataset;
    procedure SetOnAfterScroll(const Value: TDatasetNotifyEvent);
    property CachedReports: TStringList read GetCachedReports write
      SetCachedReports;
    property CachedItems[reportid: integer]: TReportInfo read GetReportInfo write
    SetReportInfo;
    function GetCurReportInfo: TReportInfo;
    procedure InitForm; override;
    procedure OnBeforePrint(Sender: TObject);
  public
    { Public declarations }
    property ReportInfo: TReportInfo read GetCurReportInfo;
    property Permission: smallint read GetPermission write SetPermission;
    property Dataset: TDataset read GetDataset;
    property OnAfterScroll: TDatasetNotifyEvent write SetOnAfterScroll;
    procedure RefreshData;
    procedure PrepareChangeData;
    class procedure ShowForm(AOwner: TComponent; AModuleID: smallint; APopup:
      boolean = false; AUseMem: boolean = false; AOnGetParamValue:
      TGetParamValueEvent = nil; ARefObj:
      TfrmList = nil);
    class procedure ShowFormEx(AOwner: TComponent; AModuleID: smallint; var
      ARefObj: TfrmList; APopup: boolean = false; AUseMem: boolean = false;
      AOnGetParamValue:
      TGetParamValueEvent = nil);
    constructor Create(AOwner: TComponent; AModuleID: smallint; APopup: boolean
      = false; AUseMem: boolean = false; AOnGetParamValue: TGetParamValueEvent =
      nil; AListSource: TDatasource = nil);
  end;

var
  frmList: TfrmList;

implementation

uses MainDM, StringConst;

{$R *.dfm}

{ TfrmList }

constructor TfrmList.Create(AOwner: TComponent; AModuleID: smallint; APopup:
  boolean; AUseMem: boolean; AOnGetParamValue: TGetParamValueEvent; AListSource:
  TDatasource);
begin
  FOnGetParamValue := AOnGetParamValue;
  FPopup := APopup;
  FUseMem := AUseMem;
  FBeTree := false;
  inherited Create(AOwner, AModuleID);

  frameToolbar1.SetListSource(AListSource);
  dxLayoutControl1.BeginUpdate;
  dxLayoutControl1Item1.Visible := (dxLayoutControl1Item1.Visible and not
    FUseMem);
  dxLayoutControl1.EndUpdate;
end;

procedure TfrmList.InitForm;
var
  i: integer;
  pp: PPropInfo;
  ds: TDatasource;
begin
  //khoi tao luoi du lieu + cac cot du lieu o day
  InitReport;
  ApplyOption(self);
  for i := 0 to ComponentCount - 1 do
  begin
    // add datalink
    pp := GetPropInfo(Components[i], 'DataSource', [tkClass]);
    if Assigned(pp) then
    try
      ds := TDatasource(GetOrdProp(Components[i], pp));
      if frameToolbar1.DataLinkCount = 0 then
        frameToolbar1.SetDataSource(ds)
      else
        frameToolbar1.AddDataLink(ds);
    except
    end;
  end;
end;

class procedure TfrmList.ShowForm(AOwner: TComponent; AModuleID: smallint;
  APopup: boolean; AUseMem: boolean; AOnGetParamValue: TGetParamValueEvent;
  ARefObj: TfrmList);
begin
  ShowFormEx(AOwner, AModuleID, ARefObj, APopup, AUseMem, AOnGetParamValue);
end;

class procedure TfrmList.ShowFormEx(AOwner: TComponent;
  AModuleID: smallint; var ARefObj: TfrmList; APopup: boolean; AUseMem: boolean;
  AOnGetParamValue: TGetParamValueEvent);
begin
  if not Assigned(ARefObj) then
  begin
    ARefObj := Self.Create(AOwner, AModuleID, APopup, AUseMem,
      AOnGetParamValue);
    if ARefObj.FormStyle = fsMDIChild then
    begin
      ARefObj.FPSelf := @ARefObj;
      ARefObj.Show;
    end
    else
    begin
      ARefObj.ShowModal;
      ARefObj.Free;
    end;
  end
  else
  begin
    if (ARefObj.FormStyle = fsMDIChild) and
      (ARefObj.WindowState = wsMinimized) then
      ARefObj.WindowState := wsMaximized;
    ARefObj.BringToFront;
  end;
end;

procedure TfrmList.dxdbgMainDblClick(Sender: TObject);
begin
  ProcessGridOnDblClickEvent(Self, Sender, FPopup, frameToolbar1.acView);
end;

procedure TfrmList.qryListDeleteError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  dmMain.DefOnDeleteError(DataSet, E, Action);
end;

procedure TfrmList.qryListPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  dmMain.DefOnPostError(DataSet, E, Action);
end;

procedure TfrmList.qryListBeforeDelete(DataSet: TDataSet);
begin
  dmMain.DefOnBeforeDelete(DataSet);
end;

procedure TfrmList.qryListBeforeEdit(DataSet: TDataSet);
begin
  dmMain.DefOnBeforeEdit(DataSet);
end;

procedure TfrmList.qryListBeforeInsert(DataSet: TDataSet);
begin
  dmMain.DefOnBeforeInsert(DataSet);
end;

procedure TfrmList.qryListBeforePost(DataSet: TDataSet);
begin
  dmMain.DefOnBeforePost(DataSet);
end;

procedure TfrmList.qryListAfterDelete(DataSet: TDataSet);
var
  i: smallint;
begin
  if not FPopup then
    SendMsgbroadcast(WM_USER_SYNC_LIST, ModuleID,
      LongInt(StrNew(PChar(DataSet.Name))));
end;

procedure TfrmList.qryListAfterPost(DataSet: TDataSet);
begin
  if not FPopup then
    SendMsgbroadcast(WM_USER_SYNC_LIST, ModuleID,
      LongInt(StrNew(PChar(DataSet.Name))));
end;

procedure TfrmList.InitReport;
var
  i: integer;
  rpinfo: TReportInfo;
  OldEvent: TDatasetNotifyEvent;
  procedure OnSQLError;
  begin
    dxdbgMain.Enabled := false;
    dxdbtlMain.Enabled := false;
    dxLayoutControl1.BeginUpdate;
    dxlctrlTree.Visible := false;
    //        dxlctrlGrid.Visible := false;
    dxLayoutControl1.EndUpdate;
  end;
begin
  Self.Enabled := true;
  // cap nhat toolbar
  dsList.DataSet := nil;
  frameToolbar1.SetDataSource(dsList);

  dxdbgMain.DataSource := nil;
  dxdbtlMain.DataSource := nil;

  {chuan bi meta}
  rpInfo := CachedItems[ModuleID];
  if not Assigned(rpInfo) then
  begin
    qryReportDef.Close;
    qryReportDef.ParamByName('REPORT_ID').Value := FModuleID;
    qryReportDef.Open;

    if qryReportDef.RecordCount > 0 then
    begin
      rpinfo := TReportInfo.Create;
      with rpinfo.FDataset do
      begin
        IB_Connection := dmMain.connMain;
        IB_Transaction := dmMain.trCommited;
        Unicode := true;
        CheckRequired := false;
        Prepared := false;
        SQL.Text := qryReportDefSQL_SELECT.AsString;
        InsertSQL.Text := qryReportDefSQL_SUB1.AsString;
        EditSQL.Text := qryReportDefSQL_SUB2.AsString;
        DeleteSQL.Text := qryReportDefSQL_SUB3.AsString;
        AfterDelete := qryListAfterDelete;
        AfterPost := qryListAfterPost;
        //        AfterPrepare := Self.OnAfterPrepare;
        BeforeDelete := qryListBeforeDelete;
        BeforeEdit := qryListBeforeEdit;
        BeforeInsert := qryListBeforeInsert;
        BeforeOpen := qryListBeforeOpen;
        BeforePost := qryListBeforePost;
        BeforeRefresh := qryListBeforeOpen;
        OnDeleteError := qryListDeleteError;
        OnPostError := qryListPostError;
        // bo di vi khong can nua
//        OnPrepareSQL := Self.OnPrepareSQL;
      end;
      rpinfo.FKeyField := qryReportDefKEYFIELD.AsString;
      rpinfo.FPKeyField := qryReportDefP_KEYFIELD.AsString;
      rpinfo.FColorField := qryReportDefCOLOR_FIELD.AsString;
      rpinfo.FMarkField := qryReportDefMARK_FIELD.AsString;
      qryReportDef.Close;

      qryReportCaption.ParamByName('MOD_ID').Value := FModuleID;
      qryReportCaption.Open;
      rpinfo.FColumnDef.LoadFromDataSet(qryReportCaption);
      qryReportCaption.Close;
    end;
    CachedItems[ModuleID] := rpinfo;
  end;

  if not Assigned(rpinfo) then
    rpinfo := CachedItems[ModuleID];
  if Assigned(rpinfo) then
  begin
    if FUseMem then
    begin
      memData.Close;
      dsList.DataSet := memData;
    end
    else
      dsList.DataSet := rpinfo.FDataset;

    frameToolbar1.SetDataSource(dsList);
    with rpinfo.FDataset do
    begin
      if Active = true then Close;
      for i := 0 to ParamCount - 1 do
        ParamByName(Params[i].Name).Value := null;
      try
        // bo di vi khong can nua
//        InvalidateSQL;
        if Trim(SQL.Text) <> '' then
        begin
          Prepare;
          if FUseMem then
          begin
            memData.Close;
            memData.CreateFieldsFromDataSet(rpinfo.FDataset);
          end;
        end
        else
        begin
          OnSQLError;
          Exit;
        end;
      except
        OnSQLError;
        Exit;
      end;
      if rpinfo.FPKeyField <> '' then
      begin
        BeTree := true;
        InitTree;
      end
      else
      begin
        BeTree := false;
        InitGrid;
      end;
      OldEvent := AfterScroll;
      AfterScroll := nil;
      Open;
      ChangeFormat(rpinfo.FDataset);
      AfterScroll := OldEvent;

      if Assigned(OldEvent) then
        OldEvent(rpinfo.FDataset);
      if FUseMem then
      begin
        memData.LoadFromDataSet(rpinfo.FDataset);
        ChangeFormat(memData);
        Close;
      end;
    end;
  end
  else
  begin
    Self.Enabled := false;
  end;
end;

procedure TfrmList.InitGrid;
var
  col: TdxDBTreeListColumn;
  iTotalWidth: integer;
  f: TField;
  rpInfo: TReportInfo;
  bm: TBitmap;
  stream: TStream;
  s: string;
begin
  try
    dxdbgMain.BeginUpdate;
    dxdbgMain.Enabled := true;
    while dxdbgMain.GroupColumnCount > 0 do
      dxdbgMain.DeleteGroupColumn(0);
    dxdbgMain.DestroyColumns;
    dxdbgMain.Refresh;
    rpInfo := CachedItems[ModuleID];
    if not Assigned(rpInfo) then Exit;

    dxdbgMain.KeyField := rpInfo.FKeyField;
    if ReportInfo.FColorField <> '' then
      dxdbgMain.OnCustomDrawCell := Self.OnCustomDrawCell
    else
      dxdbgMain.OnCustomDrawCell := nil;
    dxdbgMain.DataSource := dsList;

    with rpInfo.FColumnDef do
    begin
      iTotalWidth := 0;
      First;
      while not eof do
      begin
        case FieldByName('COLUMN_CLASS').AsInteger of
          1:
            col := dxdbgMain.CreateColumn(TdxDBGridCalcColumn);
          2:
            col := dxdbgMain.CreateColumn(TdxDBGridSpinColumn);
          3:
            col := dxdbgMain.CreateColumn(TdxDBGridDateColumn);
          6:
            begin
              col := dxdbgMain.CreateColumn(TdxDBGridCheckColumn);
              TdxDBGridCheckColumn(col).ValueChecked := '1';
              TdxDBGridCheckColumn(col).ValueUnchecked := '0';
            end;
          7:
            begin
              col := dxdbgMain.CreateColumn(TdxDBGridImageColumn);
              BuildDayOfWeekList(col);
            end;
          8:
            begin
              col := dxdbgMain.CreateColumn(TdxDBGridImageColumn);
              BuildMonthList(col);
            end;
          9:
            begin
              col := dxdbgMain.CreateColumn(TdxDBGridImageColumn);
              BuildGenderList(col);
              (col as TdxDBGridImageColumn).ShowDescription := true;
            end;
        else
          col := dxdbgMain.CreateColumn(TdxDBGridColumn);
        end;

        if not FieldByName('COLUMN_FOOTER').IsNull then
        begin
          col.SummaryFooterType :=
            TdxSummaryType(FieldByName('COLUMN_FOOTER').value);
        end;
        col.Caption := VarToWideStr(FieldByName('COLUMN_CAPTION').Value);
        col.Alignment := TAlignment(FieldByName('COLUMN_ALIGN').AsInteger);
        col.FieldName := FieldByName('OBJ_ID').AsString;
        col.HeaderAlignment := taCenter;
        col.Width := FieldByName('COLUMN_WIDTH').AsInteger;
        col.Visible := (FieldByName('VISIBLE').AsInteger = 1);
        //     col.Tag := ExLang;

        col.Sorted :=
          TdxTreeListColumnSort(FieldByName('COLUMN_SORTED').AsInteger);
        col.DisableEditor := (FieldByName('COLUMN_READONLY').AsInteger = 1);

        if not FieldByName('COLUMN_IMAGE').IsNull then
        begin
          try
            bm := TBitmap.Create;
            stream := CreateBlobStream(FieldByName('COLUMN_IMAGE'), bmRead);
            stream.Position := 0;
            bm.LoadFromStream(stream);
            col.HeaderGlyph.Assign(bm);
            col.DisableCaption := true;
            bm.Free;
            stream.Free;
          except
          end;
        end;

        if FieldByName('COLUMN_GROUP').AsInteger = 1 then
          dxdbgMain.AddGroupColumn(col);
        if col.Visible then
          iTotalWidth := iTotalWidth + col.Width;
        Next;
      end;
      if iTotalWidth < (dxdbgMain.Width + 50) then
        dxdbgMain.OptionsView := dxdbgMain.OptionsView + [edgoAutoWidth]
      else
        dxdbgMain.OptionsView := dxdbgMain.OptionsView - [edgoAutoWidth];
    end;
    dxdbgMain.ShowSummaryFooter := sysConfig.ShowSummary;
    dxdbgMain.Filter.Active := sysConfig.ShowFilter;
    // thiet lap ban dau de co the dung group footer
    dxdbgMain.SummaryGroups.Items[0].SummaryItems.Items[0].ColumnName :=
      dxdbgMain.Columns[0].Name;
    dxdbgMain.SummaryGroups.Items[0].SummaryItems.Items[0].SummaryField :=
      dxdbgMain.Columns[0].FieldName;
    TdxDBGridColumn(dxdbgMain.Columns[0]).SummaryGroupName :=
      dxdbgMain.SummaryGroups.Items[0].Name;
    TdxDBGridColumn(dxdbgMain.Columns[0]).SummaryType := cstCount;
    TdxDBGridColumn(dxdbgMain.Columns[0]).SummaryField :=
      dxdbgMain.Columns[0].FieldName;
    dxdbgMain.EndUpdate;
  except
    dxdbgMain.EndUpdate;
    ShowMessageUnicode(MsgTexts[icFailInit]);
  end;
end;

procedure TfrmList.InitTree;
var
  col: TdxDBTreeListColumn;
  iTotalWidth: integer;
  f: TField;
  rpInfo: TReportInfo;
  bm: TBitmap;
  stream: TStream;
  s: string;
begin
  try
    dxdbtlMain.BeginUpdate;
    dxdbtlMain.Enabled := true;
    dxdbtlMain.DestroyColumns;
    dxdbtlMain.Refresh;

    rpInfo := CachedItems[ModuleID];
    if not Assigned(rpInfo) then Exit;

    dxdbtlMain.KeyField := rpinfo.FKeyField;
    dxdbtlMain.ParentField := rpinfo.FPKeyField;
    if ReportInfo.FColorField <> '' then
      dxdbtlMain.OnCustomDrawCell := Self.OnCustomDrawCell
    else
      dxdbtlMain.OnCustomDrawCell := nil;

    dxdbtlMain.DataSource := dsList;

    with rpInfo.FColumnDef do
    begin
      iTotalWidth := 0;
      First;
      while not eof do
      begin
        case FieldByName('COLUMN_CLASS').AsInteger of
          1:
            col := dxdbtlMain.CreateColumn(TdxDBTreeListCalcColumn);
          2:
            col := dxdbtlMain.CreateColumn(TdxDBTreeListSpinColumn);
          3:
            col := dxdbtlMain.CreateColumn(TdxDBTreeListDateColumn);
          6:
            begin
              col := dxdbtlMain.CreateColumn(TdxDBTreeListCheckColumn);
              TdxDBTreeListCheckColumn(col).ValueChecked := '1';
              TdxDBTreeListCheckColumn(col).ValueUnchecked := '0';
            end;
          7:
            begin
              col := dxdbtlMain.CreateColumn(TdxDBTreeListImageColumn);
              BuildDayOfWeekList(col);
            end;
          8:
            begin
              col := dxdbtlMain.CreateColumn(TdxDBTreeListImageColumn);
              BuildMonthList(col);
            end;
          9:
            begin
              col := dxdbtlMain.CreateColumn(TdxDBTreeListImageColumn);
              TdxDBTreeListImageColumn(col).ShowDescription := true;
              BuildGenderList(col);
            end;
        else
          col := dxdbtlMain.CreateColumn(TdxDBTreeListColumn);
        end;

        if not FieldByName('COLUMN_FOOTER').IsNull then
        begin
          col.SummaryFooterType :=
            TdxSummaryType(FieldByName('COLUMN_FOOTER').value);
        end;
        col.Caption := VarToWideStr(FieldByName('COLUMN_CAPTION').Value);
        col.FieldName := FieldByName('OBJ_ID').AsString;
        col.HeaderAlignment := taCenter;
        col.Width := FieldByName('COLUMN_WIDTH').AsInteger;
        col.Visible := (FieldByName('VISIBLE').AsInteger = 1);
        //      col.Tag := ExLang;

        col.Sorted :=
          TdxTreeListColumnSort(FieldByName('COLUMN_SORTED').AsInteger);
        col.DisableEditor := (FieldByName('COLUMN_READONLY').AsInteger = 1);

        if not FieldByName('COLUMN_IMAGE').IsNull then
        begin
          try
            bm := TBitmap.Create;
            stream := CreateBlobStream(FieldByName('COLUMN_IMAGE'), bmRead);
            stream.Position := 0;
            bm.LoadFromStream(stream);
            col.HeaderGlyph.Assign(bm);
            col.DisableCaption := true;
            bm.Free;
            stream.Free;
          except
          end;
        end;

        if col.Visible then
          iTotalWidth := iTotalWidth + col.Width;
        Next;
      end;
      if iTotalWidth < (dxdbtlMain.Width + 50) then
        dxdbtlMain.OptionsView := dxdbtlMain.OptionsView + [etoAutoWidth]
      else
        dxdbtlMain.OptionsView := dxdbtlMain.OptionsView - [etoAutoWidth];
    end;
    dxdbtlMain.ShowFooter := sysConfig.ShowSummary;
    dxdbtlMain.EndUpdate;
  except
    dxdbtlMain.EndUpdate;
    ShowMessageUnicode(MsgTexts[icFailInit]);
  end;
end;

procedure TfrmList.SetBeTree(AValue: boolean);
begin
  if FBeTree <> AValue then
    FBeTree := AValue;
  if FBeTree then
    UpdateOnPopup(dxdbtlMain, frameToolbar1, FPopup)
  else
    UpdateOnPopup(dxdbgMain, frameToolbar1, FPopup);
  dxLayoutControl1.BeginUpdate;
  if dxlctrlTree.Visible <> FBeTree then
    dxlctrlTree.Visible := FBeTree;
  if dxlctrlTree.Visible = FBeTree then
    dxlctrlGrid.Visible := not FBeTree;
  dxLayoutControl1.EndUpdate;
  with frameToolbar1 do
  begin
    SetDataSource(dsList);
    if FBeTree then
    begin
      piInsertChild.Visible := ivAlways;
      SetActiveControl(dxdbtlMain);
    end
    else
    begin
      piInsertChild.Visible := ivNever;
      SetActiveControl(dxdbgMain);
    end;
  end;
end;

procedure TfrmList.dxdbgMainKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownOnGrid(Sender, Key, Shift, frameToolbar1.acDSInsert, Self,
    FPopup);
end;

procedure TfrmList.dxdbtlMainKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownOnGrid(Sender, Key, Shift, frameToolbar1.acDSInsert, Self,
    FPopup);
end;

procedure TfrmList.dxdbtlMainDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := true;
  if dxdbtlMain.GetNodeAt(X, Y) = nil then
    Accept := false;
end;

procedure TfrmList.dxdbtlMainDblClick(Sender: TObject);
begin
  ProcessGridOnDblClickEvent(Self, Sender, FPopup, frameToolbar1.acView);
end;

procedure TfrmList.dxdbgMainMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ShowCustomGridPopupMenu(TdxDBGrid(Sender), false, Button) = 2 then
    if not FPopup and Assigned(Dataset) and Dataset.Active
      and (Dataset.Tag > Ord(ptMREAD)) then
      if FUseMem then
        pmMultiSelect.PopupFromCursorPos
      else
        dxpmMain.PopupFromCursorPos;
end;

procedure TfrmList.dxdbtlMainMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ShowCustomGridPopupMenu(TdxDBGrid(Sender), true, Button) = 2 then
    if not FPopup and Assigned(Dataset) and (Dataset.Tag > Ord(ptMREAD)) then
      if FUseMem then
        pmMultiSelect.PopupFromCursorPos
      else
        dxpmMain.PopupFromCursorPos;
end;

procedure TfrmList.qryListBeforeOpen(DataSet: TDataSet);
var
  i: integer;
  ret: variant;
begin
  if Dataset.InheritsFrom(TIBODataset) and Assigned(FOnGetParamValue) then
    with TIBODataset(DataSet) do
      for i := 0 to ParamCount - 1 do
      begin
        FOnGetParamValue(ModuleID, Params[i].Name, ret);
        ParamByName(Params[i].Name).Value := ret;
      end;
end;

procedure TfrmList.UpdatePermission;
var
  f: boolean;
begin
  f := Assigned(Dataset) and Dataset.Active;
  //    and (not frameToolbar1.CheckPermission or (Dataset.Tag > 0));
  dxdbgMain.ShowHeader := f;
  dxdbtlMain.ShowHeader := f;
  dxdbgMain.ShowGroupPanel := f and sysConfig.ShowGroup and
    (dxdbgMain.GroupColumnCount > 0);
  if not Assigned(Dataset) then Exit;
  if FUseMem then
  begin
    dxdbgMain.IsImportFromXLS := false;
    dxdbgMain.OptionsBehavior := dxdbgMain.OptionsBehavior + [edgoEditing];
    dxdbtlMain.OptionsBehavior := dxdbtlMain.OptionsBehavior + [etoEditing];
    dxdbgMain.OptionsDB := dxdbgMain.OptionsDB - [edgoCanInsert, edgocanAppend,
      edgoCanDelete];
    dxdbtlMain.OptionsDB := dxdbtlMain.OptionsDB - [etoCanInsert, etoCanDelete];
  end
  else
    with TIBODataset(Dataset) do
    begin
      dxdbgMain.IsImportFromXLS := (InsertSQL.Text <> '');
      if InsertSQL.Text = '' then
      begin
        dxdbgMain.OptionsDB := dxdbgMain.OptionsDB - [edgoCanInsert,
          edgocanAppend];
        dxdbgMain.OptionsBehavior := dxdbgMain.OptionsBehavior - [edgoEditing];

        dxdbtlMain.OptionsDB := dxdbtlMain.OptionsDB - [etoCanInsert];
        dxdbtlMain.OptionsBehavior := dxdbtlMain.OptionsBehavior - [etoEditing];
      end;
      if EditSQL.Text = '' then
      begin
        dxdbgMain.OptionsBehavior := dxdbgMain.OptionsBehavior - [edgoEditing];
        dxdbtlMain.OptionsBehavior := dxdbtlMain.OptionsBehavior - [etoEditing];
      end;
      if DeleteSQL.Text = '' then
      begin
        dxdbgMain.OptionsDB := dxdbgMain.OptionsDB - [edgoCanDelete];
        dxdbtlMain.OptionsDB := dxdbtlMain.OptionsDB - [etoCanDelete];
      end;
    end
end;

procedure TfrmList.FormDestroy(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to CachedReports.Count - 1 do
  begin
    CachedReports.Objects[i].Free;
    CachedReports.Objects[i] := nil;
  end;
  CachedReports.Free;
  frameToolbar1.CloseDatasets;
end;

function TfrmList.GetPermission: smallint;
begin
  if Assigned(Dataset) then
    Result := Dataset.Tag
  else
    Result := 0;
end;

procedure TfrmList.SetPermission(const Value: smallint);
begin
  if Assigned(Dataset) then
    Dataset.Tag := Value;
  UpdatePermission;
end;

procedure TfrmList.SetCachedReports(const Value: TStringList);
begin
  if not Assigned(FCachedReports) then
  begin
    FCachedReports := TStringList.Create;
    FCachedReports.Sorted := true;
    FCachedReports.Duplicates := dupIgnore;
  end;
  FCachedReports.Assign(Value);
end;

function TfrmList.GetCachedReports: TStringList;
begin
  if not Assigned(FCachedReports) then
  begin
    FCachedReports := TStringList.Create;
    FCachedReports.Sorted := true;
    FCachedReports.Duplicates := dupIgnore;
  end;
  Result := FCachedReports;
end;

procedure TfrmList.OnBeforePrint(Sender: TObject);
begin
  //  dmMain.dsReport.DataSet := Dataset;
end;

{ TReportInfo }

constructor TReportInfo.Create;
begin
  inherited;
  FDataset := TIBOQuery.Create(nil);
  FColumnDef := TdxMemData.Create(nil);
end;

destructor TReportInfo.Destroy;
begin
  if Assigned(FDataset) then
  begin
    FDataset.Close;
    FDataset.Free;
  end;
  if Assigned(FColumnDef) then
  begin
    FColumnDef.Close;
    FColumnDef.Free;
  end;
  inherited;
end;

function TfrmList.GetReportInfo(index: integer): TReportInfo;
var
  i: integer;
begin
  Result := nil;
  i := CachedReports.IndexOf(IntToStr(index));
  if I > -1 then
    Result := TReportInfo(CachedReports.Objects[i]);
end;

procedure TfrmList.qryReportCaptionBeforeOpen(DataSet: TDataSet);
begin
  with TIBODataset(Dataset) do
  begin
    ParamByName('MOD_ID').Value := ModuleID;
  end;
end;

procedure TfrmList.SetModuleID(const Value: smallint);
var
  //  modinfo: TModuleInfo;
  i: integer;
begin
  if FModuleID <> Value then
  begin
    FModuleID := Value;
    {
        modinfo := curProfile.GetModuleInfo(Value);
        if Assigned(modinfo) then
     }
    begin
      if Showing then
      begin
        //init luoi du lieu o day
        PrepareChangeData;
        InitReport;
        {      if Assigned(curprofile) then
                for i := 0 to ComponentCount - 1 do
                begin
         }
        {$IFDEF USE_LANG}
        //       curProfile.ApplyLanguage(Self, Components[i], ModuleID, -1, true);
        {$ENDIF}
        {       end; }

      end;
      //     Permission := modinfo.FPermission;
      InitExportPlugIn(ModuleID, false, frameToolbar1, OnBeforePrint);
    end
    {
    else
      Exit;
     }
  end
  else
    RefreshData;
end;

procedure TfrmList.SetReportInfo(reportid: integer;
  const Value: TReportInfo);
begin
  if not Assigned(CachedItems[ModuleID]) and Assigned(Value) then
    CachedReports.AddObject(IntToStr(ModuleID), Value);
end;

procedure TfrmList.qryListAfterScroll(DataSet: TDataSet);
begin
  if not FPopup then
    SendMsgBroadcast(WM_USER_SCROLLLIST, 0,
      LongInt(StrNew(PChar(DataSet.Name))));
end;

procedure TfrmList.WMFilter(var msg: TMessage);
begin
  dxdbgMain.Filter.Active := (msg.wparam = 1);
end;

procedure TfrmList.WMGroup(var msg: TMessage);
begin
  dxdbgMain.ShowGroupPanel := (msg.wparam = 1);
end;

procedure TfrmList.WMReloadData(var msg: TMessage);
begin
  frameToolbar1.acDSRefresh.Execute;
end;

procedure TfrmList.WMShowGrid(var msg: TMessage);
begin
  dxdbgMain.ShowGrid := (msg.wparam = 1);
  dxdbtlMain.ShowGrid := (msg.wparam = 1);
end;

procedure TfrmList.WMSummaryFooter(var msg: TMessage);
begin
  dxdbgMain.ShowSummaryFooter := (msg.wparam = 1);
end;

function TfrmList.GetDataset: TDataset;
begin
  Result := nil;
  if BeTree and Assigned(dxdbtlMain.DataSource) then
    Result := dxdbtlMain.DataSource.DataSet
  else
    if Assigned(dxdbgMain.DataSource) then
    Result := dxdbgMain.DataSource.DataSet;
end;

procedure TfrmList.RefreshData;
var
  rpInfo: TReportInfo;
begin
  if Assigned(Dataset) then
  begin
    if Dataset.InheritsFrom(TIBODataset) then
    begin
      // muon dung InvalidateSQL thi' phai goi mo lai truoc khi refresh
      if Dataset.Active then
        Dataset.Refresh
      else
        Dataset.Open;
    end
    else
      if FUseMem then
    begin
      rpInfo := CachedItems[ModuleID];
      with rpInfo.FDataset do
      begin
        Open;
        memData.DisableControls;
        memData.Close;
        memData.LoadFromDataSet(rpInfo.FDataset);
        memData.EnableControls;
        Close;
      end;
    end;
  end;
end;

procedure TfrmList.SetOnAfterScroll(const Value: TDatasetNotifyEvent);
begin
  if Assigned(Dataset) then
    Dataset.AfterScroll := Value;
end;

procedure TfrmList.PrepareChangeData;
begin
  dxdbgMain.ShowGroupPanel := false;
  dxdbgMain.ShowHeader := false;
  dxdbtlMain.ShowHeader := false;
  if Assigned(Dataset) then
    Dataset.Close;
end;

procedure TfrmList.acSelectAllExecute(Sender: TObject);
begin
  if BeTree then
    Select(dxdbtlMain, 1)
  else
    Select(TdxDBTreeList(dxdbgMain), 1)
end;

procedure TfrmList.acDeseclectAllExecute(Sender: TObject);
begin
  if BeTree then
    Select(dxdbtlMain, 0)
  else
    Select(TdxDBTreeList(dxdbgMain), 0)
end;

procedure TfrmList.acRevertSelectExecute(Sender: TObject);
begin
  if BeTree then
    Select(dxdbtlMain, 2)
  else
    Select(TdxDBTreeList(dxdbgMain), 2);
end;

procedure TfrmList.acSelectUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := Assigned(Dataset) and (Dataset.RecordCount > 0);
end;

function TfrmList.GetCurReportInfo: TReportInfo;
begin
  Result := CachedItems[ModuleID];
end;

procedure TfrmList.OnCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  ACol: TdxTreeListColumn;
  ci: integer;
begin
  try
    if ReportInfo.FColorField <> '' then
    begin
      if (Sender = dxdbtlMain) then
        ACol := dxdbtlMain.FindColumnByFieldName(ReportInfo.FColorField)
      else
        ACol := dxdbgMain.FindColumnByFieldName(ReportInfo.FColorField);
      if Assigned(ACol) then
        if TryStrToInt(VarToStr(ANode.Values[ACol.Index]), ci) then
        begin
          AColor := TColor(ci);
          AFont.Color := AColor xor $FFFFFF;
        end;
    end;
    ADone := false;
  except
  end
end;

procedure TfrmList.OnPrepareSQL(Sender: TObject);
var
  i: integer;
  str: string;
  aval: variant;
begin
  with TIBODataset(Sender) do
  begin
    str := SQL.Text;
    try
      qryTmp.SQL.Text := SQL.Text;
      qryTmp.Prepare;
      for i := 0 to qryTmp.ParamCount - 1 do
      begin
        if Assigned(FGetParamValueEvent) then
          FGetParamValueEvent(ModuleID, qryTmp.Params[i].Name, aval);
        str := AnsiReplaceText(str, 'in (:' + qryTmp.Params[i].Name + ')',
          'in (' + VarToStr(aval) + ')');
      end;
      SQL.Text := str;
    except
    end;
  end;
end;

procedure TfrmList.OnGridMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ProcessMouseMoveOnGrid(Sender, Shift, X, Y);
end;

procedure TfrmList.FormCreate(Sender: TObject);
begin
  inherited;
  frameToolbar1.TemplateType := 1;
end;

end.

