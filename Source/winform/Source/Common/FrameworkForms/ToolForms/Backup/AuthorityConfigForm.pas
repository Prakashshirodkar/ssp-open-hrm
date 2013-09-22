unit AuthorityConfigForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, ToolbarFrame, cxControls, dxExEdtr, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, DB, IBODataset, dxGrClEx,
  DBActns, ActnList, ElBtnCtl, ElPopBtn, dxDBTL;

type
  TfrmAuthorityConfig = class(TfrmBase)
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    gridComp: TdxDBGrid;
    dxLayoutControl1Item2: TdxLayoutItem;
    gridCompCOMP_NAME: TdxDBGridColumn;
    gridCompCOMP_CLASS: TdxDBGridColumn;
    gridCompCHECK_VIEW: TdxDBGridCheckColumn;
    gridCompCHECK_EDIT: TdxDBGridCheckColumn;
    gridCompCHECK_INSERT: TdxDBGridCheckColumn;
    gridCompCHECK_DELETE: TdxDBGridCheckColumn;
    gridCompCOMP_TITLE: TdxDBGridColumn;
    gridCompFEATURENAME: TdxDBGridPopupColumn;
    qryAuthorityConfig: TIBOQuery;
    qryAuthorityConfigFORM_NAME: TWideStringField;
    qryAuthorityConfigCOMP_NAME: TWideStringField;
    qryAuthorityConfigPARENT_COMP: TWideStringField;
    qryAuthorityConfigCOMP_CLASS: TWideStringField;
    qryAuthorityConfigSYSTEM_ID: TSmallintField;
    qryAuthorityConfigFEATURE_ID: TSmallintField;
    qryAuthorityConfigCHECK_VIEW: TSmallintField;
    qryAuthorityConfigCHECK_EDIT: TSmallintField;
    qryAuthorityConfigCHECK_INSERT: TSmallintField;
    qryAuthorityConfigCHECK_DELETE: TSmallintField;
    qryAuthorityConfigCOMP_TITLE: TWideStringField;
    qryAuthorityConfigFEATURENAME: TWideStringField;
    dsAuthorityConfig: TDataSource;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    ElPopupButton6: TElPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    ActionList1: TActionList;
    DataSetCancel1: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    acScan: TAction;
    acHelp: TAction;
    acClose: TAction;
    qryScan: TIBOQuery;
    dxlcFeatureList: TdxLayoutControl;
    ElPopupButton7: TElPopupButton;
    ElPopupButton8: TElPopupButton;
    ElPopupButton9: TElPopupButton;
    treeList: TdxDBTreeList;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    qryFeatureList: TIBOQuery;
    dsFeatureList: TDataSource;
    qryFeatureListSUBSYSTEMID: TSmallintField;
    qryFeatureListFEATUREID: TSmallintField;
    qryFeatureListFEATURENAME: TWideStringField;
    qryFeatureListP_FEATUREID: TIntegerField;
    qryFeatureListFEATURENAME_ENG: TWideStringField;
    treeListFEATURENAME: TdxDBTreeListColumn;
    treeListFEATURENAME_ENG: TdxDBTreeListColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acCloseExecute(Sender: TObject);
    procedure DataSetDelete1Execute(Sender: TObject);
    procedure qryAuthorityConfigBeforeDelete(DataSet: TDataSet);
    procedure acScanExecute(Sender: TObject);
    procedure treeListDblClick(Sender: TObject);
    procedure ElPopupButton7Click(Sender: TObject);
    procedure gridCompFEATURENAMEInitPopup(Sender: TObject);
    procedure gridCompFEATURENAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    CurForm:TfrmBase;
  public
    { Public declarations }

  end;

var
  frmAuthorityConfig: TfrmAuthorityConfig;
implementation

uses MainDM,dxBar,dxBarExtItems, SSP_Library, FeatureListForm;

{$R *.dfm}

procedure TfrmAuthorityConfig.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryAuthorityConfig.Close;
  qryFeatureList.Close;
  CurForm:=nil;
end;

procedure TfrmAuthorityConfig.acCloseExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrOk;
end;

procedure TfrmAuthorityConfig.DataSetDelete1Execute(Sender: TObject);
begin
  inherited;
  if gridComp.SelectedCount>1 then
    gridComp.DeleteSelection
  else
    qryAuthorityConfig.Delete;
end;

procedure TfrmAuthorityConfig.qryAuthorityConfigBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  //
end;

procedure TfrmAuthorityConfig.acScanExecute(Sender: TObject);
var i:integer;
   temp:TComponent;
begin
  inherited;
  if not Assigned(CurForm) then exit;
  qryAuthorityConfig.DisableControls;
  for i:=0 to CurForm.ComponentCount-1 do
  begin
    temp:=CurForm.Components[i];
    if (temp is TAction) or
       (temp is TElPopupButton) or
       (temp is TElGraphicButton) or
       (temp is TIBOQuery) or
       (temp is TdxBarSubItem) or
       (temp is TdxBarButton) or
       (temp is TdxBarLargeButton)
    then
    begin
      if not qryAuthorityConfig.Locate('COMP_NAME;COMP_CLASS',
        VarArrayOf([temp.Name,temp.ClassName]), []) then
      begin
        qryAuthorityConfig.Append;
        qryAuthorityConfigFORM_NAME.Value := CurForm.Name;
        qryAuthorityConfigPARENT_COMP.Value := CurForm.Name;
        qryAuthorityConfigCOMP_NAME.Value := temp.Name;
        qryAuthorityConfigCOMP_CLASS.Value := temp.ClassName;
        if HasProperty(temp, 'caption') then
          qryAuthorityConfigCOMP_TITLE.Value:=GetProperty(temp, 'caption')
        else
        if HasProperty(temp, 'text') then
          qryAuthorityConfigCOMP_TITLE.Value:=GetProperty(temp, 'text')
        else
          qryAuthorityConfigCOMP_TITLE.Clear;
        qryAuthorityConfig.Post;
      end;
    end;
  end;
  qryAuthorityConfig.EnableControls;
end;

procedure TfrmAuthorityConfig.treeListDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self,true,sender);
end;

procedure TfrmAuthorityConfig.ElPopupButton7Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmFeatureList,frmFeatureList);
  qryFeatureList.Refresh;
end;

procedure TfrmAuthorityConfig.gridCompFEATURENAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  if not qryFeatureList.Active then
    qryFeatureList.Open;
  treeList.FullExpand;  
  InitPopupControl('dxlcFeatureList',self,sender,2,gridComp);
end;

procedure TfrmAuthorityConfig.gridCompFEATURENAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,qryFeatureList,qryAuthorityConfig,
               'FEATUREID;FEATURENAME;SUBSYSTEMID','FEATURE_ID;FEATURENAME;SYSTEM_ID',
               'FEATURENAME',Text);
end;

procedure TfrmAuthorityConfig.FormCreate(Sender: TObject);
begin
  inherited;
  if (self.Owner is TfrmBase) then
  begin
    CurForm:=TfrmBase(self.Owner);
    qryAuthorityConfig.ParamByName('FORM_NAME').Value:=CurForm.Name;
    qryAuthorityConfig.Open;
  end;
end;

end.
