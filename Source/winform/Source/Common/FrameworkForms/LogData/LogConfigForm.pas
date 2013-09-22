unit LogConfigForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  dxLayoutControl, dxEdLib, dxDBELib, dxCntner, dxEditor, ElBtnCtl,
  ElPopBtn, dxDBTLCl, dxGrClms, dxGrClEx, dxTL, dxDBCtrl, dxDBGrid,
  cxControls, DB, IBODataset, ElPgCtl, dxmdaset, ActnList, DBActns, dxDBTL,
  ElToolbar, ExtCtrls, ElPanel, ImgList;

type
  TfrmLogConfig = class(TfrmBase)
    dsLogConfig: TDataSource;
    dxLayoutControl1: TdxLayoutControl;
    gridComp: TdxDBGrid;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    ElPopupButton3: TElPopupButton;
    ElPopupButton4: TElPopupButton;
    ElPopupButton5: TElPopupButton;
    ElPopupButton6: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    gridCompDATASET_NAME: TdxDBGridColumn;
    gridFieldList: TdxDBGrid;
    dxLayoutControl1Group3: TdxLayoutGroup;
    mainPage: TElPageControl;
    dxLayoutControl1Item8: TdxLayoutItem;
    tabInsert: TElTabSheet;
    tabEdit: TElTabSheet;
    tabDelete: TElTabSheet;
    dxInsertFormat: TdxDBMemo;
    dxEditFormat: TdxDBMemo;
    dxDeleteFormat: TdxDBMemo;
    memFieldList: TdxMemData;
    memFieldListFIELD_NAME: TStringField;
    dsFieldList: TDataSource;
    gridFieldListFIELD_NAME: TdxDBGridColumn;
    ActionList1: TActionList;
    acScan: TAction;
    acCancel: TDataSetCancel;
    acDelete: TDataSetDelete;
    acPost: TDataSetPost;
    acClose: TAction;
    CopyMemo: TdxMemo;
    memParamList: TdxMemData;
    dsParamList: TDataSource;
    leftPage: TElPageControl;
    dxLayoutControl1Item9: TdxLayoutItem;
    tabData: TElTabSheet;
    tabParam: TElTabSheet;
    gridParamList: TdxDBGrid;
    memParamListPARAM_NAME: TStringField;
    gridParamListPARAM_NAME: TdxDBGridColumn;
    gridCompFEATURENAME: TdxDBGridPopupColumn;
    dxlcFeatureList: TdxLayoutControl;
    ElPopupButton7: TElPopupButton;
    ElPopupButton8: TElPopupButton;
    ElPopupButton9: TElPopupButton;
    treeList: TdxDBTreeList;
    treeListFEATURENAME: TdxDBTreeListColumn;
    treeListFEATURENAME_ENG: TdxDBTreeListColumn;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    qryFeatureList: TIBOQuery;
    qryFeatureListSUBSYSTEMID: TSmallintField;
    qryFeatureListFEATUREID: TSmallintField;
    qryFeatureListFEATURENAME: TWideStringField;
    qryFeatureListP_FEATUREID: TIntegerField;
    qryFeatureListFEATURENAME_ENG: TWideStringField;
    dsFeatureList: TDataSource;
    qryLogConfig: TIBOQuery;
    qryLogConfigFORM_NAME: TWideStringField;
    qryLogConfigDATASET_NAME: TWideStringField;
    qryLogConfigLOG_INSERT_FORMAT: TWideStringField;
    qryLogConfigLOG_DELETE_FORMAT: TWideStringField;
    qryLogConfigLOG_EDIT_FORMAT: TWideStringField;
    qryLogConfigFIELD_LIST: TWideStringField;
    qryLogConfigPARAM_LIST: TWideStringField;
    qryLogConfigFEATURENAME: TWideStringField;
    qryLogConfigFEATURE_ID: TSmallintField;
    qryLogConfigSYSTEM_ID: TSmallintField;
    ActionList2: TActionList;
    acInsertNewField: TAction;
    acInsertOldField: TAction;
    acInsertIfStatement: TAction;
    acInsertParam: TAction;
    ElPopupButton10: TElPopupButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElPopupButton11: TElPopupButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    ElPopupButton12: TElPopupButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    ElPopupButton13: TElPopupButton;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    ImageList1: TImageList;
    procedure qryLogConfigAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryLogConfigBeforeDelete(DataSet: TDataSet);
    procedure acScanExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure StrCopyToStream(Str: WideString);
    procedure PasteValue(ctrl:TdxDBMemo;value:string);
    procedure gridFieldListDblClick(Sender: TObject);
    procedure gridParamListDblClick(Sender: TObject);
    procedure treeListDblClick(Sender: TObject);
    procedure ElPopupButton7Click(Sender: TObject);
    procedure gridCompFEATURENAMEInitPopup(Sender: TObject);
    procedure gridCompFEATURENAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure acInsertNewFieldExecute(Sender: TObject);
    procedure acInsertOldFieldExecute(Sender: TObject);
    procedure acInsertIfStatementExecute(Sender: TObject);
    procedure acInsertParamExecute(Sender: TObject);
    procedure acInsertIfStatementUpdate(Sender: TObject);
  private
    { Private declarations }
    CurForm: TComponent;
  public
    { Public declarations }
  end;

var
  frmLogConfig: TfrmLogConfig;

implementation

uses MainDM, SSP_Library, FeatureListForm;

{$R *.dfm}

procedure TfrmLogConfig.qryLogConfigAfterScroll(DataSet: TDataSet);
var strFields: TStrings;
  i: integer;
begin
  inherited;
  memFieldList.DisableControls;
  memFIeldList.Close;

  strFields := TStringList.Create;
  strFields.Delimiter := ';';
  strFields.DelimitedText := qryLogConfigFIELD_LIST.AsString;

  if strFields.Count > 0 then
  begin
    memFieldList.Open;
    for i := 0 to strFields.Count - 1 do
    begin
      memFieldList.Append;
      memFieldListFIELD_NAME.Value := strFields.Strings[i];
      memFieldList.Post;
    end;
  end;
  strFields.Free;
  memFieldList.EnableControls;

//====tao danh sach param
  memParamList.DisableControls;
  memParamList.Close;

  strFields := TStringList.Create;
  strFields.Delimiter := ';';
  strFields.DelimitedText := qryLogConfigPARAM_LIST.AsString;

  if strFields.Count > 0 then
  begin
    memParamList.Open;
    for i := 0 to strFields.Count - 1 do
    begin
      memParamList.Append;
      memParamListPARAM_NAME.Value := strFields.Strings[i];
      memParamList.Post;
    end;
  end;
  strFields.Free;
  memParamList.EnableControls;
end;

procedure TfrmLogConfig.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryLogConfig.Close;
  qryFeatureList.Close;
  CurForm := nil;
end;

procedure TfrmLogConfig.qryLogConfigBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  //
end;

procedure TfrmLogConfig.acScanExecute(Sender: TObject);
var i, j, max_count: integer;
  temp: TComponent;
  param_name:string;
begin
  inherited;
  if not Assigned(CurForm) then exit;

  qryLogConfig.DisableControls;
  for i := 0 to CurForm.ComponentCount - 1 do
  begin
    temp := CurForm.Components[i];
    if (temp is TIBOQuery)
    then
    begin
      if TIBOQuery(temp).Prepared=false then
      try
        TIBOQuery(temp).Prepare;
      except

      end;
      if TIBOQuery(temp).Prepared=false then Continue;
      
      if not qryLogConfig.Locate('FORM_NAME;DATASET_NAME',
        VarArrayOf([CurForm.Name, temp.Name]), []) then
      begin
        qryLogConfig.Append;
        qryLogConfigFORM_NAME.Value := CurForm.Name;
        qryLogConfigDATASET_NAME.Value := temp.Name;
        qryLogConfigFIELD_LIST.Value := CurForm.Name;
      end
      else
        qryLogConfig.Edit;

      qryLogConfigFIELD_LIST.Clear;
      qryLogConfigPARAM_LIST.Clear;

      max_count := TIBOQuery(temp).FieldCount;
      for j := 0 to max_count - 1 do
      begin
        qryLogConfigFIELD_LIST.Value := qryLogConfigFIELD_LIST.Value +
          TIBOQuery(temp).Fields[j].FieldName;
        if (j < (max_count - 1)) then
          qryLogConfigFIELD_LIST.Value := qryLogConfigFIELD_LIST.Value + ';';
      end;

      max_count := TIBODataset(temp).Params.Count;
      for j := 0 to max_count - 1 do
      begin
        param_name:='';
        param_name:=TParam(TIBOQuery(temp).Params[j]).Name;
        qryLogConfigPARAM_LIST.Value := qryLogConfigPARAM_LIST.AsString +
          param_name;
        if (j < (max_count - 1)) then
          qryLogConfigPARAM_LIST.Value := qryLogConfigPARAM_LIST.Value + ';';
      end;
      qryLogConfig.Post;
    end;
  end;
  qryLogConfig.EnableControls;
end;

procedure TfrmLogConfig.FormCreate(Sender: TObject);
begin
  inherited;
  leftPage.ActivePageIndex:=0;
  if (self.Owner is TForm) then
    CurForm := TForm(self.Owner)
  else
    if (self.Owner is TDataModule) then
    CurForm := TDataModule(self.Owner);
  if Assigned(CurForm) then
  begin
    qryLogConfig.ParamByName('FORM_NAME').Value := CurForm.Name;
    qryLogConfig.Open;
  end;
end;

procedure TfrmLogConfig.acDeleteExecute(Sender: TObject);
begin
  inherited;
  if gridComp.SelectedCount > 1 then
    gridComp.DeleteSelection
  else
    qryLogConfig.Delete;
end;

procedure TfrmLogConfig.acCloseExecute(Sender: TObject);
begin
  inherited;
  MOdalResult := mrOk;
end;
procedure TfrmLogConfig.StrCopyToStream(Str: WideString);
begin
  CopyMemo.Text := Str;
  CopyMemo.SelectAll;
  CopyMemo.CopyToClipboard;
end;
procedure TfrmLogConfig.PasteValue(ctrl:TdxDBMemo;value:string);
begin
  StrCopyToStream(value);
  ctrl.PasteFromClipboard;
  ctrl.SetFocus;
end;
procedure TfrmLogConfig.gridFieldListDblClick(Sender: TObject);
begin
  inherited;
  if mainPage.ActivePage=tabInsert then
    PasteValue(dxInsertFormat,'[:'+memFieldListFIELD_NAME.Value+'|NEW]')
  else
  if mainPage.ActivePage=tabEdit then
    PasteValue(dxEditFormat,'[:'+memFieldListFIELD_NAME.Value+'|NEW]')
  else
  if mainPage.ActivePage=tabDelete then
    PasteValue(dxDeleteFormat,'[:'+memFieldListFIELD_NAME.Value+'|NEW]')
  else
end;

procedure TfrmLogConfig.gridParamListDblClick(Sender: TObject);
begin
  inherited;
  if mainPage.ActivePage=tabInsert then
    PasteValue(dxInsertFormat,'[:'+memParamListPARAM_NAME.Value+'|PRM]')
  else
  if mainPage.ActivePage=tabEdit then
    PasteValue(dxEditFormat,'[:'+memParamListPARAM_NAME.Value+'|PRM]')
  else
  if mainPage.ActivePage=tabDelete then
    PasteValue(dxDeleteFormat,'[:'+memParamListPARAM_NAME.Value+'|PRM]')
  else
end;

procedure TfrmLogConfig.treeListDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self,true,sender);
end;

procedure TfrmLogConfig.ElPopupButton7Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmFeatureList,frmFeatureList);
  qryFeatureList.Refresh;
end;

procedure TfrmLogConfig.gridCompFEATURENAMEInitPopup(Sender: TObject);
begin
  inherited;
  if not qryFeatureList.Active then
    qryFeatureList.Open;
  treeList.FullExpand;
  InitPopupControl('dxlcFeatureList',self,sender,2,gridComp);
end;

procedure TfrmLogConfig.gridCompFEATURENAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,qryFeatureList,qryLogConfig,
               'FEATUREID;FEATURENAME;SUBSYSTEMID','FEATURE_ID;FEATURENAME;SYSTEM_ID',
               'FEATURENAME',Text);
end;

procedure TfrmLogConfig.acInsertNewFieldExecute(Sender: TObject);
begin
  inherited;
  if mainPage.ActivePage=tabInsert then
    PasteValue(dxInsertFormat,'[:'+memFieldListFIELD_NAME.Value+'|NEW]')
  else
  if mainPage.ActivePage=tabEdit then
    PasteValue(dxEditFormat,'[:'+memFieldListFIELD_NAME.Value+'|NEW]')
  else
  if mainPage.ActivePage=tabDelete then
    PasteValue(dxDeleteFormat,'[:'+memFieldListFIELD_NAME.Value+'|NEW]')
  else
end;

procedure TfrmLogConfig.acInsertOldFieldExecute(Sender: TObject);
begin
  inherited;
  if mainPage.ActivePage=tabInsert then
    PasteValue(dxInsertFormat,'[:'+memFieldListFIELD_NAME.Value+'|OLD]')
  else
  if mainPage.ActivePage=tabEdit then
    PasteValue(dxEditFormat,'[:'+memFieldListFIELD_NAME.Value+'|OLD]')
  else
  if mainPage.ActivePage=tabDelete then
    PasteValue(dxDeleteFormat,'[:'+memFieldListFIELD_NAME.Value+'|OLD]')
  else
end;

procedure TfrmLogConfig.acInsertIfStatementExecute(Sender: TObject);
var i:integer;
 field_name:string;
begin
  inherited;
  if mainPage.ActivePage=tabEdit then
  begin
    if gridFieldList.SelectedCount>0 then
    begin
      for i:=0 to gridFieldList.SelectedCount-1 do
      begin
        field_name:=VarToStr(gridFieldList.SelectedNodes[i].Values[gridFieldListFIELD_NAME.Index]);
        PasteValue(dxEditFormat,'[IF :'+field_name+']'+#13+'[:'+field_name+'|OLD] --> [:'+field_name+'|NEW] [END_IF]');
      end;
    end
  end
end;

procedure TfrmLogConfig.acInsertParamExecute(Sender: TObject);
begin
  inherited;
  if mainPage.ActivePage=tabInsert then
    PasteValue(dxInsertFormat,'[:'+memParamListPARAM_NAME.Value+'|PRM]')
  else
  if mainPage.ActivePage=tabEdit then
    PasteValue(dxEditFormat,'[:'+memParamListPARAM_NAME.Value+'|PRM]')
  else
  if mainPage.ActivePage=tabDelete then
    PasteValue(dxDeleteFormat,'[:'+memParamListPARAM_NAME.Value+'|PRM]')
  else
end;

procedure TfrmLogConfig.acInsertIfStatementUpdate(Sender: TObject);
begin
  inherited;
  acInsertIfStatement.Enabled:=(mainPage.ActivePage=tabEdit) and
        (gridFieldList.SelectedCount>0);
end;

end.

