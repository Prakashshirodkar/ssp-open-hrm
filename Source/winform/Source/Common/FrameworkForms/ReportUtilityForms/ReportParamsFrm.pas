unit ReportParamsFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, dxLayoutControl, cxControls, ElCaption, dxmdaset, IBODataset,
  dxExEdtr, dxDBGrid, dxTL, dxDBCtrl, dxCntner, dxDBTL, dxEditor, dxEdLib,
  dxDBELib, StdCtrls, Buttons, ElXPThemedControl, ElBtnCtl, ElPopBtn,
  dxfLabel, ElCGControl, ElGraphs, MAth, SSP_Script;

type
  TColumnInfo = class
    ColumnWith: integer;
    ColumnCaption: widestring;
    ColumnGroup: bool;
    ColumnFormat: string;
    ColumnFilter: Smallint;
    ColumnVisible: boolean;
    ColumnAlign: TAlignment;
  end;
  TReportParam = class
    FParamName: string;
    FLookupValue: variant;
    FParamControl: TControl;
    FRecID: integer;
    FDataType: smallint;
    FIsLookup: boolean;
  public
    function GetParamValue: Variant;
    function GetParamDisplayValue: Variant;
    procedure SetParamValue(AValue: Variant);
  end;
  TfrmReportParams = class(TForm)
    ElFormCaption1: TElFormCaption;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    memComponents: TdxMemData;
    memComponentsCOMP_NAME: TStringField;
    memComponentsPARAM_NAME: TStringField;
    memComponentsDATA_TYPE: TSmallintField;
    memComponentsCOMP_LOOKUP: TStringField;
    memComponentsDISPLAY_FIELD: TStringField;
    memComponentsLOOKUP_FIELD: TStringField;
    memComponentsCOMP_CAPTION: TWideStringField;
    memComponentsLAYOUT_NAME: TStringField;
    memComponentsACTIVED: TBooleanField;
    memComponentsLOOKUP_ID: TIntegerField;
    qryReportCaption: TIBOQuery;
    dsReportCaption: TDataSource;
    memComponentsLAYOUT_GROUP_NAME: TWideStringField;
    memComponentsREPORTID: TIntegerField;
    memComponentsWIDTH: TIntegerField;
    memComponentsPARAM_INDEX: TIntegerField;
    qryReportCaptionREPORTID: TIntegerField;
    qryReportCaptionSUBSYSTEMID: TIntegerField;
    qryReportCaptionCOLUMN_ID: TWideStringField;
    qryReportCaptionCOLUMN_CAPTION: TWideStringField;
    qryReportCaptionCOLUMN_WIDTH: TIntegerField;
    qryReportCaptionCOLUMN_GROUP: TIntegerField;
    qryReportCaptionCOLUMN_ALIGN: TIntegerField;
    qryReportCaptionCOLUMN_FORMAT: TWideStringField;
    qryReportCaptionCOLUMN_FILTER: TIntegerField;
    qryReportCaptionCOLUMN_INDEX: TIntegerField;
    qryReportCaptionCOLUMN_FOOTER: TIntegerField;
    qryReportCaptionINVISIBLE: TIntegerField;
    qryReportCaptionLOOKUP_ID: TIntegerField;
    qryReportCaptionCOLUMN_CLASS: TIntegerField;
    qryReportCaptionDISPLAYFIELD: TWideStringField;
    qryReportCaptionREQUIRED: TSmallintField;
    qryReportCaptionGENERATOR_ID: TWideStringField;
    qryReportCaptionRES_ID: TIntegerField;
    memComponentsDEF_VALUE: TWideStringField;
    memComponentsKEYFIELD: TStringField;
    memComponentsP_KEYFIELD: TStringField;
    memComponentsSQLSELECT: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure InitComponentList;
    procedure InitComponents;
    procedure FreeComponents;
    procedure OnParamCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure OnParamInitPopup(Sender: TObject);
    procedure OnParamChange(Sender: TObject);
    procedure OnParamKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PopupDblClick(Sender: TObject);
    procedure PopupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FReportID: integer;
    FParamset: TIBODataset;
    FParamEditEvent: TNotifyEvent;
    FActivedParams: TStringList;
    F_SCriptter: TSSP_Script;
    procedure InitParams();

    function InitPopupControl(APopReportID: integer; Lookup_Field, Display_Field, Key_Field, P_Key_field, SQLSelect, ReportID: string;
      var APopOwner: TObject; AEditor: TControl = nil): boolean;
    function InitPopupColumnFormats: TStringList;
    procedure SetParamValue(AParam: string; AValue: Variant);
    function CURRENT_YEAR: Variant;
    function CURRENT_MONTH: Variant;
    function CURRENT_DATE: Variant;
    function CURRENT_QUARTER: Variant;
    function DATE_OF(NGAY, THANG, NAM: Variant): Variant;
  public
    { Public declarations }
    procedure SetReportID(AValue: integer);
    property ReportID: integer read FReportID write SetReportID;
    property Paramset: TIBODataset read FParamset write FParamset;
    property OnParamEdit: TNotifyEvent read FParamEditEvent write
      FParamEditEvent;
    function GetParamValue(Aparam: string): Variant;
    function GetParamDisplayValue(Aparam: string): Variant;
  published
    procedure OnBeforePopupOpen(Dataset: TDataset);
    //    procedure ChangeFormat(AComp: TComponent);
  end;
procedure ChangeFormat(AComp: TComponent);
procedure InitDataset(var ADataset: TIBODataset);

var
  frmReportParams: TfrmReportParams;
  Container_Width: integer;
implementation

uses TypInfo, SSP_Library, MainDM, PopupMainForm, DateUtils;

{$R *.dfm}

{ TfrmReportParams }

procedure TfrmReportParams.InitParams;
var
  comp: TComponent;
  ppi: PPropInfo;
  ANewParam: Variant;
  rp: TReportParam;
begin
  if not memComponents.Active then exit;
  with memComponents do
  begin
    First;
    while not Eof do
    begin
      comp := Self.FindComponent('dxReportGroup' + memComponentsREPORTID.AsString);
      if Assigned(comp) then
      begin
        ppi := getPropInfo(comp.classInfo, 'visible');
        if Assigned(ppi) then
          SetOrdProp(comp, ppi, Integer(False));
      end;
      Next;
    end;
  end;
  if not Assigned(FActivedParams) then
    FActivedParams := TStringList.Create
  else
    FActivedParams.Clear;
  if not Assigned(FParamset) then Exit;
  with FParamset do
  begin
    if not Active then
      Open;
    First;
    dxLayoutControl1.BeginUpdate;
    while not Eof do
    begin
      ANewParam := VarArrayOf([FieldByName('REPORTID').Value, FieldByName('PARAM_NAME').Value,
        //  VarToWideStr(FieldByName('PARAM_CAPTION').Value),
        VarToStr(FieldByName('DISPLAYFIELD').Value),
          VarToStr(FieldByName('LOOKUPFIELD').Value),
          FieldByName('LOOKUP_ID').AsInteger,
          FieldByName('DATA_TYPE').AsInteger]);

      if memComponents.Locate('REPORTID;PARAM_NAME;' +
        //  'COMP_CAPTION;' +
        'DISPLAY_FIELD;LOOKUP_FIELD;LOOKUP_ID;DATA_TYPE', ANewParam, []) then
      begin
        comp := Self.FindComponent('dxReportGroup' + memComponentsREPORTID.AsString);
        if Assigned(comp) then
        begin
          //NXHop modified and notified          dxLayoutControl1.BeginUpdate;
          ppi := getPropInfo(comp.classInfo, 'Visible');
          if Assigned(ppi) then
            SetOrdProp(TControl(comp), ppi, Integer(True));
          //NXHop modified and notified          dxLayoutControl1.EndUpdate;
        end;
        comp := Self.FindComponent(memComponentsLAYOUT_NAME.Value);
        if Assigned(comp) then
        begin
          //NXHop modified and notified          dxLayoutControl1.BeginUpdate;
          ppi := getPropInfo(comp.classInfo, 'Visible');
          if Assigned(ppi) then
            SetOrdProp(TControl(comp), ppi, Integer(True));
          ppi := getPropInfo(comp.classInfo, 'Caption');
          if Assigned(ppi) then
            SetWideStrProp(TControl(comp), ppi,
              memComponentsCOMP_CAPTION.Value);
          //   tdxLayoutItem(comp).Index := FieldByName('PARAM_INDEX').AsInteger;
   //NXHop modified and notified          dxLayoutControl1.EndUpdate;
          rp := TReportParam.Create;
          rp.FParamName := memComponentsPARAM_NAME.Value;
          rp.FRecID := memComponents.Fields[0].AsInteger;
          rp.FDataType := memComponentsDATA_TYPE.Value;
          rp.FParamControl := TdxLayOutItem(comp).Control;

          ppi := getPropInfo(TdxLayOutItem(comp).Control.classInfo, 'Text');
          if Assigned(ppi) then
            SetStrProp(TControl(TdxLayOutItem(comp).Control), ppi, '');

          rp.FIsLookup := (memComponentsLOOKUP_ID.Value <> 0);
          FActivedParams.AddObject(memComponentsPARAM_NAME.Value, rp);
        end;
      end;
      Next;
    end;
    dxLayoutControl1.EndUpdate;
  end;
  //  ApplyUserInterface(TControl(Self));
end;

procedure TfrmReportParams.SetReportID(AValue: integer);
begin
  if FReportID <> AValue then
  begin
    FReportID := AValue;
    {init param}
    InitParams;
  end;
end;

procedure TfrmReportParams.FormCreate(Sender: TObject);
var
  qry: TIBODataset;
begin
  F_SCriptter := TSSP_Script.Create(self);
  F_SCriptter.AddMethod0Param('CURRENT_DATE', CURRENT_DATE);
  F_SCriptter.AddMethod0Param('CURRENT_MONTH', CURRENT_MONTH);
  F_SCriptter.AddMethod0Param('CURRENT_YEAR', CURRENT_YEAR);
  F_SCriptter.AddMethod0Param('CURRENT_QUARTER', CURRENT_QUARTER);
  F_SCriptter.AddMethod3Param('DATE_OF', DATE_OF);

  //=============================================================
  InitComponentList;
  InitComponents;
end;

procedure TfrmReportParams.InitComponentList;
var
  qry: TIBODataset;
begin
  if memComponents.Active then
    memComponents.Close;
  memComponents.Open;
  qry := TIBODataset.Create(Self);
  InitDataset(qry);
  with qry do
  begin
    SQL.Text :=
      'SELECT PARAM_INDEX, PARAM_NAME , PARAM_CAPTION, PARAM_CAPTION_ENG , DATA_TYPE, LOOKUP_ID,' +
      ' DISPLAYFIELD, LOOKUPFIELD, LAYOUT_GROUP_NAME, SYS_REPORT_PARAMS.reportid, WIDTH, DEF_VALUE, ' +
      ' sys_report_list.keyfield, sys_report_list.p_keyfield, sys_report_list.sqlselect ' +
      ' FROM SYS_REPORT_PARAMS left join sys_report_list on SYS_REPORT_PARAMS.LOOKUP_ID=sys_report_list.reportid ' +
      ' where SYS_REPORT_PARAMS.SUBSYSTEMID=:SUBSYSTEMID order by PARAM_INDEX DESC ';
    Prepare;
    ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
    Open;
    while not Eof do
    begin
      memComponents.Insert;
      memComponents.FieldByName('PARAM_INDEX').Value := FieldByName('PARAM_INDEX').AsInteger;
      memComponents.FieldByName('PARAM_NAME').Value := FieldByName('PARAM_NAME').Value;
      if sysConfig.Language <> 2 then
        memComponents.FieldByName('COMP_CAPTION').Value :=
          VarToWideStr(FieldByName('PARAM_CAPTION').Value)
      else
        memComponents.FieldByName('COMP_CAPTION').Value :=
          VarToWideStr(FieldByName('PARAM_CAPTION_ENG').Value);

      memComponents.FieldByName('DATA_TYPE').Value := FieldByName('DATA_TYPE').AsInteger;
      memComponents.FieldByName('DISPLAY_FIELD').Value :=
        VarToStr(FieldByName('DISPLAYFIELD').Value);
      memComponents.FieldByName('LOOKUP_FIELD').Value :=
        VarToStr(FieldByName('LOOKUPFIELD').Value);
      memComponents.FieldByName('LOOKUP_ID').Value := FieldByName('LOOKUP_ID').AsInteger;
      memComponents.FieldByName('LAYOUT_GROUP_NAME').Value := FieldByName('LAYOUT_GROUP_NAME').Value;
      memComponents.FieldByName('REPORTID').Value := FieldByName('REPORTID').AsInteger;
      memComponents.FieldByName('WIDTH').Value := FieldByName('WIDTH').AsInteger;
      memComponents.FieldByName('DEF_VALUE').Value := FieldByName('DEF_VALUE').Value;
      memComponents.FieldByName('KEYFIELD').Value := FieldByName('KEYFIELD').AsString;
      memComponents.FieldByName('P_KEYFIELD').Value := FieldByName('P_KEYFIELD').AsString;
      memComponents.FieldByName('SQLSELECT').Value := FieldByName('SQLSELECT').AsString;
      memComponents.Post;
      Next;
    end;
  end;
  qry.Free;
end;

procedure TfrmReportParams.FreeComponents;
var
  i, j: integer;
  AControl: TControl;
  item: TdxLayoutItem;
  item_group: TdxLayoutGroup;
begin
  dxLayoutGroup1.DestroyComponents;
  for i := self.ComponentCount - 1 downto 0 do
  begin
    if (self.Components[i] is TdxInplaceEdit) or
      (self.Components[i] is TdxLayoutItem)
      then
      self.Components[i].Free
  end;
end;

procedure TfrmReportParams.InitComponents;
var
  i: integer;
  AControl, PopControl: TControl;
  item: TdxLayoutItem;
  report_group, item_group: TdxLayoutGroup;
  ret: boolean;
begin
  memComponents.First;
  i := 0;
  while not memComponents.Eof do
  begin
    i := i + 1;
    case memComponentsDATA_TYPE.Value of
      0:
        begin
          AControl := TdxDateEdit.Create(Self);
          AControl.Width := max(80, memComponentsWIDTH.AsInteger);
          TdxDateEdit(AControl).Name := 'dxdbdedt' +
            memComponentsREPORTID.AsString +
            memComponentsPARAM_NAME.Value + '_' + InttoStr(i);
          TdxDateEdit(AControl).OnChange := OnParamChange;
          TdxDateEdit(AControl).StyleController := dmMain.StyleController;

        end;
      1:
        begin
          AControl := TdxCheckEdit.Create(Self);
          TdxCheckEdit(AControl).Name := 'dxdbchkedt' +
            memComponentsREPORTID.AsString +
            memComponentsPARAM_NAME.Value + '_' + InttoStr(i);
          TdxCheckEdit(AControl).NullStyle := nsUnchecked;
          TdxCheckEdit(AControl).OnChange := OnParamChange;
          TdxCheckEdit(AControl).Width := max(20, memComponentsWIDTH.AsInteger);
          TdxCheckEdit(AControl).StyleController := dmMain.StyleController;
        end;
      2:
        begin
          AControl := TdxSpinEdit.Create(Self);
          AControl.Width := max(80, memComponentsWIDTH.AsInteger);
          TdxSpinEdit(AControl).MinValue := 0;
          TdxSpinEdit(AControl).MaxValue := 9999999;
          TdxSpinEdit(AControl).Name := 'dxdbspedt' +
            memComponentsREPORTID.AsString +
            memComponentsPARAM_NAME.Value + '_' + InttoStr(i);
          TdxSpinEdit(AControl).OnChange := OnParamChange;
          TdxSpinEdit(AControl).Alignment := taCenter;
          TdxSpinEdit(AControl).StyleController := dmMain.StyleController;
        end;
      3:
        begin
          AControl := TdxCalcEdit.Create(Self);
          AControl.Width := max(80, memComponentsWIDTH.AsInteger);
          ;
          TdxCalcEdit(AControl).Name := 'dxdbcedt' +
            memComponentsREPORTID.AsString +
            memComponentsPARAM_NAME.Value + '_' + InttoStr(i);
          TdxCalcEdit(AControl).OnChange := OnParamChange;
          TdxCalcEdit(AControl).Alignment := taRightJustify;
          TdxCalcEdit(AControl).StyleController := dmMain.StyleController;
        end;
      4:
        begin
          if (memComponentsLOOKUP_ID.Value <> 0) then
          begin
            AControl := TdxPopupEdit.Create(Self);
            AControl.Width := max(150, memComponentsWIDTH.AsInteger);
            TdxPopupEdit(AControl).Name := 'dxdbpedt' +
              memComponentsREPORTID.AsString +
              memComponentsPARAM_NAME.Value + '_' + InttoStr(i);
            TdxPopupEdit(AControl).StyleController :=
              dmMain.StyleController;
            InitPopupControl(memComponentsLOOKUP_ID.Value,
              memComponentsLOOKUP_FIELD.Value,
              memComponentsDISPLAY_FIELD.Value,
              memComponentsKEYFIELD.Value,
              memComponentsP_KEYFIELD.Value,
              memComponentsSQLSELECT.Value,
              memComponentsREPORTID.AsString,
              TObject(AControl));
          end
          else
          begin
            AControl := TdxEdit.Create(Self);
            AControl.Width := max(80, memComponentsWIDTH.AsInteger);
            ;
            TdxEdit(AControl).Name := 'dxdbedt' +
              memComponentsREPORTID.AsString +
              memComponentsPARAM_NAME.Value + '_' + InttoStr(i);
            TdxEdit(AControl).OnChange := OnParamChange;
            TdxEdit(AControl).StyleController := dmMain.StyleController;
          end
        end;
      5:
        begin
          AControl := TdxTimeEdit.Create(Self);
          AControl.Width := max(80, memComponentsWIDTH.AsInteger);
          ;
          TdxTimeEdit(AControl).Name := 'dxdbtimedt' +
            memComponentsREPORTID.AsString +
            memComponentsPARAM_NAME.Value + '_' + InttoStr(i);
          TdxTimeEdit(AControl).OnChange := OnParamChange;
          TdxTimeEdit(AControl).Alignment := taCenter;
          TdxTimeEdit(AControl).StyleController := dmMain.StyleController;
        end;
    end;

    dxLayoutControl1.BeginUpdate;
    //===============================
    //   kiem tra tao group cho Report
    report_group := TdxLayoutGroup(self.FindComponent('dxReportGroup' + memComponentsREPORTID.AsString));
    if not Assigned(report_group) then
    begin
      report_group := dxLayoutGroup1.CreateGroup();
      report_group.Name := 'dxReportGroup' + memComponentsREPORTID.AsString;
      report_group.LayoutDirection := ldVertical;
      report_group.AlignVert := avTop;
      report_group.AlignHorz := ahClient;
      report_group.Hidden := true;
      //  report_group.Caption:='Report :'+ memComponentsREPORTID.AsString;
      report_group.Visible := false;
    end;
    //===============================
    // kiem tra tao group cho item
    item_group := TdxLayoutGroup(self.FindComponent('dxItemGroup' + memComponentsREPORTID.AsString
      + memComponentsLAYOUT_GROUP_NAME.AsString));
    if not Assigned(item_group) then
    begin
      item_group := report_group.CreateGroup();
      item_group.Name := 'dxItemGroup' + memComponentsREPORTID.AsString
        + memComponentsLAYOUT_GROUP_NAME.AsString;
      item_group.LayoutDirection := ldHorizontal;
      item_group.AlignVert := avBottom;
      item_group.AlignHorz := ahLeft;
      item_group.Hidden := true;
      //item_group.Caption:='Item group :'+memComponentsLAYOUT_GROUP_NAME.AsString;
      item_group.Visible := true;
    end;
    //===============================
    item := item_group.CreateItemForControl(AControl);
    item.Caption := memComponentsCOMP_CAPTION.Value;
    item.ControlOptions.AutoColor := true;
    item.AlignHorz := ahLeft;
    item.AlignVert := avTop;
    item.CaptionOptions.AlignHorz := taRightJustify;
    item.Visible := true;
    item.ControlOptions.AutoAlignment := true;
    item.ControlOptions.Opaque := false;
    item.Name := 'dxlctrl' + memComponentsREPORTID.AsString + memComponentsLAYOUT_GROUP_NAME.AsString
      + AControl.Name;
    dxLayoutControl1.EndUpdate;
    memComponents.Edit;
    memComponentsCOMP_NAME.Value := AControl.Name;
    memComponentsLAYOUT_NAME.Value := item.Name;
    memComponents.Post;
    // cap nhat DEFAULT VALUE
    if memComponentsDEF_VALUE.isNull = false then
    begin
      F_SCriptter.Script := memComponentsDEF_VALUE.AsString;
      case memComponentsDATA_TYPE.Value of
        0:
          try
            TdxDateEdit(AControl).Date := VarToDateTime(F_SCriptter.AnalyzeScript);
          except
          end;
        1:
          TdxCheckEdit(AControl).Checked := (memComponentsDEF_VALUE.Value = 'CHECK');
        2:
          try
            TdxSpinEdit(AControl).IntValue := StrToInt(VarToStr(F_SCriptter.AnalyzeScript));
          except
          end;
        3:
          try
            TdxCalcEdit(AControl).Text := VarToWideStr(F_SCriptter.AnalyzeScript);
          except
          end;
        4, 5:
      end;
    end;
    //=============================================================
    memComponents.Next;
  end;
  ApplyOption(TControl(self));
end;

procedure TfrmReportParams.OnParamChange(Sender: TObject);
begin
  if Assigned(FParamEditEvent) then
    FParamEditEvent(Sender);
end;

procedure TfrmReportParams.OnParamCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
var
  ADataset: TIBODataset;
  index: integer;
begin
  if Accept then
  begin
    ADataset :=
      TIBODataset(TCustomdxDBTreeListControl(TdxPopupEdit(Sender).PopupControl).Datasource.dataset);
    if memComponents.Locate('COMP_NAME', TControl(Sender).Name, []) then
    begin
      index := FActivedParams.IndexOf(memComponentsPARAM_NAME.Value);
      if index > -1 then
        TReportParam(FActivedParams.Objects[index]).SetParamValue(ADataset.FieldByName(memComponentsLOOKUP_FIELD.Value).Value);
      Text :=
        VarToWideStr(ADataset.FieldByName(memComponentsDISPLAY_FIELD.Value).Value);
      if Assigned(FParamEditEvent) then
        FParamEditEvent(Sender);
    end;
  end;
end;

procedure TfrmReportParams.OnParamInitPopup(Sender: TObject);
var
  ADataset: TIBODataset;
begin
  TdxPopupEdit(Sender).PopupForm.Font := Self.Font;
  try
    ADataset :=
      TIBODataset(TCustomdxDBTreeListControl(TdxPopupEdit(Sender).PopupControl).Datasource.dataset);
    if not ADataset.Active then
      ADataset.Open
    else
      ADataset.Refresh;
  except
  end;
end;

function TfrmReportParams.InitPopupControl(APopReportID: integer; Lookup_Field, Display_Field, Key_Field, P_Key_field, SQLSelect, ReportID: string;
  var APopOwner: TObject; AEditor: TControl): boolean;
var
  qryPopup: TIBODataset;
  dsPopup: TDatasource;
  i, index, iTotalwidth: integer;
  col: TdxDBTreeListColumn;
  ci: TColumnInfo;
  cf: TStringList;
  APopForm: TForm;
  APopup: TCustomdxDBTreeListControl;
  ALayoutControl: TdxLayoutControl;
begin
  Result := false;
  if P_Key_Field <> '' then
  begin
    APopup := TdxDBTreeList.Create(Self);
    TdxDBTreeList(APopup).OptionsBehavior := TdxDBTreeList(APopup).OptionsBehavior - [etoEditing];
  end
  else
  begin
    APopup := TdxDBGrid.Create(Self);
    TdxDBGrid(APopup).OptionsBehavior := TdxDBGrid(APopup).OptionsBehavior - [edgoEditing];
  end;
  APopup.Name := 'dxdbpsource' + TComponent(APopOwner).Name + '_' +
    ReportID;
  APopup.Parent := Self;
  APopup.Visible := false;

  qryPopup := TIBODataset.Create(Self);
  qryPopup.Name := 'qry' + TComponent(APopup).Name;
  InitDataset(qryPopup);
  {
    with qryPopup do
    begin
      SQL.Text := SQLSelect;
      try
        Prepare;
        Open;
        BeforeOpen := OnBeforePopupOpen;
        BeforeRefresh := OnBeforePopupOpen;
        Result := true;
        dsPopup := TDataSource.Create(Self);
        dsPopup.Name := 'ds' + qryPopup.Name;
        dsPopup.DataSet := qryPopup;
        cf := InitPopupColumnFormats;
        if TComponent(APopup).ClassName = 'TdxDBTreeList' then
          with TdxDBTreeList(APopup) do
          begin
            DestroyColumns;
            iTotalWidth := 0;
            DataSource := dsPopup;
            KeyField := KEY_FIELD;
            ParentField := P_KEY_FIELD;
            OnKeyDown := PopupKeyDown;
            OnDblClick := PopupDblClick;

            for i := 0 to FieldCount - 1 do
            begin
              if (Fields[i].FieldName <> Lookup_Field) and
                (Fields[i].FieldName <> Display_Field)
                then continue;

              col := CreateColumn(TdxDBTreeListColumn);
              col.FieldName := Fields[i].FieldName;
              index := cf.IndexOf(Fields[i].FieldName);
              if index > -1 then
              begin
                ci := TColumnInfo(cf.Objects[index]);
                col.Width := ci.ColumnWith;
                col.Caption := ci.ColumnCaption;
                col.Visible := ci.ColumnVisible;
                col.Alignment := ci.ColumnAlign;
              end
              else
              begin
                col.Width := 120;
                col.Alignment := taLeftJustify;
              end;
              iTotalWidth := iTotalWidth + col.Width;
              col.HeaderAlignment := taCenter;
            end;

            ShowHeader := false;
            OptionsBehavior := OptionsBehavior + [etoDblClick];
            OptionsView := OptionsView + [etoRowSelect];
            OptionsDB := OptionsDB + [etoLoadAllRecords];
            TdxDBTreeList(APopup).Width := Max(MIn(iTotalwidth, 500), 300);
            TdxDBTreeList(APopup).Height := (TdxDBTreeList(APopup).Width * 2) div 3;
            if (iTotalWidth <= (TdxDBTreeList(APopup).Width + 50)) or (VisibleColumnCount = 1) then
              OptionsView := OptionsView + [etoAutoWidth]
            else
              OptionsView := OptionsView - [etoAutoWidth];
          end
        else
          with TdxDBGrid(APopup) do
          begin
            DestroyColumns;
            iTotalWidth := 0;
            DataSource := dsPopup;
            KeyField := KEY_FIELD;
            OnKeyDown := PopupKeyDown;
            OnDblClick := PopupDblClick;

            for i := 0 to FieldCount - 1 do
            begin
              col := CreateColumn(TdxDBGridColumn);
              col.FieldName := Fields[i].FieldName;
              index := cf.IndexOf(Fields[i].FieldName);
              if index > -1 then
              begin
                ci := TColumnInfo(cf.Objects[index]);
                col.Width := ci.ColumnWith;
                col.Caption := ci.ColumnCaption;
                col.Visible := ci.ColumnVisible;
                col.Alignment := ci.ColumnAlign;
                (col as TdxDBGridColumn).DisableFilter := (ci.ColumnFilter = 0);
                if ci.ColumnFormat = 'TT' then
                  Fields[i].Tag := 0;
                if ci.ColumnFormat = 'SL' then
                  Fields[i].Tag := 1;
                if ci.ColumnGroup then
                  AddGroupColumn(col)
                else
                  iTotalWidth := iTotalWidth + col.Width;
              end
              else
              begin
                col.Width := 120;
                col.Alignment := taLeftJustify;
              end;
              col.HeaderAlignment := taCenter;
            end;

            Filter.Active := False;
            OptionsView := OptionsView + [edgoRowSelect];
            ShowHeader := true;
            OptionsDB := OptionsDB + [edgoLoadAllRecords];
            TdxDBGrid(APopup).Width := Max(MIn(iTotalwidth, 500), 300);
            TdxDBGrid(APopup).Height := (TdxDBGrid(APopup).Width * 2) div 3;
            if (iTotalWidth <= TdxDBGrid(APopup).Width) or (VisibleColumnCount = 1) then
              OptionsView := OptionsView + [edgoAutoWidth]
            else
              OptionsView := OptionsView - [edgoAutoWidth];
          end;
        ChangeFormat(qryPopup);
        Close;
        cf.Free;
      except
      end;
    end;
   }
  with qryPopup do
  begin

    try
      SQL.Text := SQLSelect;
      Prepare;
      BeforeOpen := OnBeforePopupOpen;
      BeforeRefresh := OnBeforePopupOpen;
      Result := true;
      dsPopup := TDataSource.Create(Self);
      dsPopup.Name := 'ds' + qryPopup.Name;
      dsPopup.DataSet := qryPopup;
      cf := InitPopupColumnFormats;
      if TComponent(APopup).ClassName = 'TdxDBTreeList' then
        with TdxDBTreeList(APopup) do
        begin
          DestroyColumns;
          iTotalWidth := 0;
          DataSource := dsPopup;
          KeyField := KEY_FIELD;
          ParentField := P_KEY_FIELD;
          OnKeyDown := PopupKeyDown;
          OnDblClick := PopupDblClick;

          col := CreateColumn(TdxDBTreeListColumn);
          col.FieldName := Lookup_Field;
          index := cf.IndexOf(Lookup_Field);
          if index > -1 then
          begin
            ci := TColumnInfo(cf.Objects[index]);
            col.Width := ci.ColumnWith;
            col.Caption := ci.ColumnCaption;
            col.Visible := ci.ColumnVisible;
            col.Alignment := ci.ColumnAlign;
          end
          else
          begin
            col.Width := 120;
            col.Alignment := taLeftJustify;
          end;
          iTotalWidth := iTotalWidth + col.Width;
          col.HeaderAlignment := taCenter;

          col := CreateColumn(TdxDBTreeListColumn);
          col.FieldName := Display_Field;
          index := cf.IndexOf(Display_Field);
          if index > -1 then
          begin
            ci := TColumnInfo(cf.Objects[index]);
            col.Width := ci.ColumnWith;
            col.Caption := ci.ColumnCaption;
            col.Visible := ci.ColumnVisible;
            col.Alignment := ci.ColumnAlign;
          end
          else
          begin
            col.Width := 120;
            col.Alignment := taLeftJustify;
          end;
          iTotalWidth := iTotalWidth + col.Width;
          col.HeaderAlignment := taCenter;

          ShowHeader := false;
          OptionsBehavior := OptionsBehavior + [etoDblClick];
          OptionsView := OptionsView + [etoRowSelect];
          OptionsDB := OptionsDB + [etoLoadAllRecords];
          TdxDBTreeList(APopup).Width := Max(MIn(iTotalwidth, 500), 300);
          TdxDBTreeList(APopup).Height := (TdxDBTreeList(APopup).Width * 2) div 3;
          if (iTotalWidth <= (TdxDBTreeList(APopup).Width + 50)) or (VisibleColumnCount = 1) then
            OptionsView := OptionsView + [etoAutoWidth]
          else
            OptionsView := OptionsView - [etoAutoWidth];
        end
      else
        with TdxDBGrid(APopup) do
        begin
          DestroyColumns;
          iTotalWidth := 0;
          DataSource := dsPopup;
          KeyField := KEY_FIELD;
          OnKeyDown := PopupKeyDown;
          OnDblClick := PopupDblClick;

          col := CreateColumn(TdxDBGridColumn);
          col.FieldName := Lookup_Field;
          index := cf.IndexOf(Lookup_Field);
          if index > -1 then
          begin
            ci := TColumnInfo(cf.Objects[index]);
            col.Width := ci.ColumnWith;
            col.Caption := ci.ColumnCaption;
            col.Visible := ci.ColumnVisible;
            col.Alignment := ci.ColumnAlign;
            (col as TdxDBGridColumn).DisableFilter := (ci.ColumnFilter = 0);
            if ci.ColumnFormat = 'TT' then
              Fields[i].Tag := 0;
            if ci.ColumnFormat = 'SL' then
              Fields[i].Tag := 1;
            if ci.ColumnGroup then
              AddGroupColumn(col)
            else
              iTotalWidth := iTotalWidth + col.Width;
          end
          else
          begin
            col.Width := 120;
            col.Alignment := taLeftJustify;
          end;
          col.HeaderAlignment := taCenter;

          col := CreateColumn(TdxDBGridColumn);
          col.FieldName := Display_Field;
          index := cf.IndexOf(Display_Field);
          if index > -1 then
          begin
            ci := TColumnInfo(cf.Objects[index]);
            col.Width := ci.ColumnWith;
            col.Caption := ci.ColumnCaption;
            col.Visible := ci.ColumnVisible;
            col.Alignment := ci.ColumnAlign;
            (col as TdxDBGridColumn).DisableFilter := (ci.ColumnFilter = 0);
            if ci.ColumnFormat = 'TT' then
              Fields[i].Tag := 0;
            if ci.ColumnFormat = 'SL' then
              Fields[i].Tag := 1;
            if ci.ColumnGroup then
              AddGroupColumn(col)
            else
              iTotalWidth := iTotalWidth + col.Width;
          end
          else
          begin
            col.Width := 120;
            col.Alignment := taLeftJustify;
          end;
          col.HeaderAlignment := taCenter;

          Filter.Active := False;
          OptionsView := OptionsView + [edgoRowSelect];
          ShowHeader := true;
          OptionsDB := OptionsDB + [edgoLoadAllRecords];
          TdxDBGrid(APopup).Width := Max(MIn(iTotalwidth, 500), 300);
          TdxDBGrid(APopup).Height := (TdxDBGrid(APopup).Width * 2) div 3;
          if (iTotalWidth <= TdxDBGrid(APopup).Width) or (VisibleColumnCount = 1) then
            OptionsView := OptionsView + [edgoAutoWidth]
          else
            OptionsView := OptionsView - [edgoAutoWidth];
        end;
      ChangeFormat(qryPopup);
      Close;
      cf.Free;
    except
    end;
  end;

  //=============================================================
  {init luoi lookup}
  if Assigned(APopup) then
  begin
    TdxPopupEdit(APopOwner).PopupControl := APopup;
    TdxPopupEdit(APopOwner).PopupFormBorderStyle := pbsSysPanel;
    TdxPopupEdit(APopOwner).PopupWidth := APopup.Width;
    TdxPopupEdit(APopOwner).PopupHeight := (APopup.Width * 2) div 3;
    TdxPopupEdit(APopOwner).OnCloseUp := OnParamCloseUp;
    TdxPopupEdit(APopOwner).OnInitPopup := OnParamInitPopup;
  end;
end;

function TfrmReportParams.InitPopupColumnFormats: TStringList;
var
  ci: TColumnInfo;
begin
  Result := TStringList.Create;
  with qryReportCaption do
  begin
    ParamByName('reportid').Value := memComponentsLOOKUP_ID.Value;
    ParamByName('subsystemid').Value := sysConfig.SubSystemID;
    Open;
    while not Eof do
    begin
      ci := TColumnInfo.Create;
      ci.ColumnCaption := VarToWideStr(FieldByName('COLUMN_CAPTION').Value);
      ci.ColumnWith := FieldByName('COLUMN_WIDTH').AsInteger;
      ci.ColumnVisible := (FieldByName('INVISIBLE').AsInteger <> 1);
      ci.ColumnGroup := (FieldByName('COLUMN_GROUP').AsInteger = 1);
      ci.ColumnFilter := FieldByName('COLUMN_FILTER').AsInteger;
      ci.ColumnFormat := VarToStr(FieldByName('COLUMN_FORMAT').Value);
      case FieldByName('COLUMN_ALIGN').AsInteger of
        1: ci.ColumnAlign := taLeftJustify;
        2: ci.ColumnAlign := taRightJustify;
        3: ci.ColumnAlign := taCenter;
      end;
      Result.AddObject(VarToStr(FieldByName('COLUMN_ID').Value), ci);
      Next;
    end;
    Close;
  end;
end;

procedure TfrmReportParams.OnParamKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if Assigned(Sender) and (not (Sender is TdxPopupEdit)) then
    begin
      SendMessage(GetParentForm(TControl(Sender)).Handle, WM_SETFOCUS, 0, 0);
      SendMessage((Sender as TdxInplaceEdit).Handle, WM_SETFOCUS, 0, 0);
    end;
    if Assigned(FParamEditEvent) then
      FParamEditEvent(Sender);
  end;
end;

procedure TfrmReportParams.PopupDblClick(Sender: TObject);
begin
  OnClickExecute(Sender);
end;

procedure TfrmReportParams.PopupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  OnPopUpKeyDown(Sender, Key, Shift);
end;

function TfrmReportParams.GetParamValue(Aparam: string): Variant;
var
  index: integer;
begin
  Result := null;
  index := FActivedParams.IndexOf(Aparam);
  if index > -1 then
    Result := TReportParam(FActivedParams.Objects[index]).GetParamValue
  else
    if UpperCase(Aparam) = 'USERNAME' then Result := sysConfig.User;
end;

function TfrmReportParams.GetParamDisplayValue(Aparam: string): Variant;
var
  index: integer;
begin
  Result := null;
  index := FActivedParams.IndexOf(Aparam);
  if index > -1 then
    Result := TReportParam(FActivedParams.Objects[index]).GetParamDisplayValue
  else
    if UpperCase(Aparam) = 'USERNAME' then Result := sysConfig.User
    else
      Result := Aparam;
end;

procedure TfrmReportParams.SetParamValue(AParam: string; AValue: Variant);
var
  index: integer;
begin
  index := FActivedParams.IndexOf(Aparam);
  if index > -1 then
    TReportParam(FActivedParams.Objects[index]).SetParamValue(AValue);
end;

procedure TfrmReportParams.OnBeforePopupOpen(Dataset: TDataset);
var
  i: integer;
begin
  with Dataset as TIBODataset do
  begin
    for i := 0 to ParamCount - 1 do
      Params[i].Value := GetParamValue(Params[i].Name);
  end;
end;

{ TReportParam }

function TReportParam.GetParamValue: Variant;
begin
  case FDataType of
    0:
      if TdxDateEdit(FParamControl).Date = -700000 then
        Result := null
      else
        Result := TdxDateEdit(FParamControl).Date;
    1:
      if TdxCheckEdit(FParamControl).Checked then
        Result := 1
      else
        Result := 0;
    2:
      if TdxSpinEdit(FParamControl).Text = '' then
        Result := null
      else
        Result := TdxSpinEdit(FParamControl).IntValue;
    3:
      if TdxCalcEdit(FParamControl).Text = '' then
        Result := null
      else
        Result := TdxCalcEdit(FParamControl).Text;
    else
      if FIsLookup then
        Result := FLookupValue
      else
        Result := TdxEdit(FParamControl).Text;
  end;
end;

function TReportParam.GetParamDisplayValue: Variant;
begin
  case FDataType of
    0:
      if TdxDateEdit(FParamControl).Date = -700000 then
        Result := null
      else
        Result := DateToStr(TdxDateEdit(FParamControl).Date);
    1:
      if TdxCheckEdit(FParamControl).Checked then
        Result := 1
      else
        Result := 0;
    2:
      if TdxSpinEdit(FParamControl).Text = '' then
        Result := null
      else
        Result := TdxSpinEdit(FParamControl).IntValue;
    3:
      if TdxCalcEdit(FParamControl).Text = '' then
        Result := null
      else
        Result := TdxCalcEdit(FParamControl).Text;
    else
      Result := TdxEdit(FParamControl).Text;
  end;
end;

procedure TReportParam.SetParamValue(AValue: Variant);
begin
  FLookupValue := AValue;
end;

procedure ChangeFormat(AComp: TComponent);
var
  i: integer;
begin
  if not Assigned(AComp) then exit;
  with AComp do
  begin
    for i := 0 to ComponentCount - 1 do
      if Components[i] is TField then
      begin
        if (Components[i] is TDateField) or (Components[i] is TDateTimeField)
          then
        begin
          (Components[i] as TDateTimeField).DisplayFormat :=
            sysConfig.DateTimeFormat;
          (Components[i] as TDateTimeField).EditMask :=
            sysConfig.DateTimeFormat;
        end
        else
          if (Components[i] is TBCDField) then
          begin
            if Components[i].Tag = 1 then //So luong
            begin
              (Components[i] as TBCDField).DisplayFormat :=
                sysConfig.FloatFormat;
              (Components[i] as TBCDField).EditFormat := '0.##';
            end
            else
            begin
              (Components[i] as TBCDField).DisplayFormat :=
                sysConfig.DateFormat;
              (Components[i] as TBCDField).EditFormat := '0.##';
            end;
          end;
        if (Components[i].InheritsFrom(TFloatField)) then
        begin
          if Components[i].Tag = -1 then
          begin
            (Components[i] as TFloatField).DisplayFormat :=
              sysConfig.FloatFormat;
          end
          else
            if Components[i].Tag = 1 then //So luong
            begin
              (Components[i] as TFloatField).DisplayFormat :=
                sysConfig.FloatFormat;
            end
            else
            begin
              (Components[i] as TFloatField).DisplayFormat :=
                sysConfig.FloatFormat;
            end;
        end;
      end;
  end;
end;

procedure InitDataset(var ADataset: TIBODataset);
begin
  with ADataset do
  begin
    IB_Connection := dmMain.connMain;
    IB_Transaction := dmMain.trCommited;
    Unicode := true;
  end;
end;

procedure TfrmReportParams.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_SCriptter.Free;
end;

function TfrmReportParams.CURRENT_YEAR: Variant;
begin
  result := YearOf(Now);
end;

function TfrmReportParams.CURRENT_MONTH: Variant;
begin
  result := MonthOf(Now);
end;

function TfrmReportParams.CURRENT_DATE: Variant;
begin
  result := Today;
end;

function TfrmReportParams.CURRENT_QUARTER: Variant;
begin
  result := (MonthOf(Now) - 1) div 3 + 1;
end;

function TfrmReportParams.DATE_OF(NGAY, THANG, NAM: Variant): Variant;
begin
  result := EncodeDate(Integer(NAM), Integer(THANG), Integer(NGAY));
end;
end.

