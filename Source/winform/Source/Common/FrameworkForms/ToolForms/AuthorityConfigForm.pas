unit AuthorityConfigForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, ToolbarFrame, cxControls, dxExEdtr, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, DB, IBODataset, dxGrClEx,
  DBActns, ActnList, ElBtnCtl, ElPopBtn, dxDBTL, dxEdLib, dxEditor,
  dxDBELib, dxmdaset, ExtCtrls, dxsbar;

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
    dxFeatureSelected: TdxPopupEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxSelectInsert: TdxCheckEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxSelectDelete: TdxCheckEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxSelectView: TdxCheckEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxSelectEdit: TdxCheckEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    ElPopupButton10: TElPopupButton;
    dxLayoutControl1Item13: TdxLayoutItem;
    acNhapnhanh: TAction;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dsHelpIndex: TDataSource;
    qryHelpIndex: TIBOQuery;
    ElPopupButton11: TElPopupButton;
    dxLayoutControl1Item14: TdxLayoutItem;
    acCapnhatIndex: TDataSetPost;
    ElPopupButton12: TElPopupButton;
    dxLayoutControl1Item16: TdxLayoutItem;
    acTestHelpIndex: TAction;
    qryHelpIndexFORM_NAME: TWideStringField;
    qryHelpIndexHELP_INDEX: TWideStringField;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    edtRoot: TdxEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    dlgOpen: TOpenDialog;
    qryKiemTraScan: TIBOQuery;
    qryKiemTraScanFORM_NAME: TWideStringField;
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
    procedure dxFeatureSelectedChange(Sender: TObject);
    procedure acNhapnhanhUpdate(Sender: TObject);
    procedure acNhapnhanhExecute(Sender: TObject);
    procedure dxFeatureSelectedInitPopup(Sender: TObject);
    procedure dxFeatureSelectedCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryHelpIndexNewRecord(DataSet: TDataSet);
    procedure acTestHelpIndexUpdate(Sender: TObject);
    procedure acTestHelpIndexExecute(Sender: TObject);
    procedure qryHelpIndexAfterPost(DataSet: TDataSet);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    CurForm:TComponent;
    F_FEATURE:integer;
    F_FEATURE_NAME:widestring;
    F_HELP_INDEX:string;
  public
    { Public declarations }
  property HelpIndex:string read F_HELP_INDEX;
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
  if qryHelpIndex.State in [dsInsert,dsEdit] then
    qryHelpIndex.Post;
  qryHelpIndex.Close;
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
var i,j,k:integer;
   temp:TComponent;
   sidebar_group,sidebar_item:integer;
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
       (temp is TdxBarLargeButton) or
       (temp is TdxCheckEdit) or
       (temp is TdxMemData)
    then
    begin
      if not qryAuthorityConfig.Locate('COMP_NAME;COMP_CLASS',
        VarArrayOf([temp.Name,temp.ClassName]), []) then
      begin
        if qryKiemTraScan.Active then qryKiemTraScan.Close;
        qryKiemTraScan.ParamByName('FORM_NAME').Value := CurForm.Name;
        qryKiemTraScan.ParamByName('COMP_NAME').Value := temp.Name;
        qryKiemTraScan.ParamByName('PARENT_COMP').Value := CurForm.Name;
        qryKiemTraScan.Open;

        if (qryKiemTraScan.RecordCount =0) then
        begin
          qryAuthorityConfig.Append;
          qryAuthorityConfigSYSTEM_ID.Value:=sysConfig.SubSystemID;
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
    end
    else
    if (temp is TdxSideBar) then
    begin
      for j:= 0 to (temp as TdxSideBar).GroupCount-1 do
        for k:=0 to (temp as TdxSideBar).Groups[j].ItemCount-1 do
        begin
          if not qryAuthorityConfig.Locate('COMP_NAME;COMP_CLASS',
          VarArrayOf([temp.Name+'|'+IntToStr(j*100+k),temp.ClassName]), []) then
          begin
              if qryKiemTraScan.Active then qryKiemTraScan.Close;
              qryKiemTraScan.ParamByName('FORM_NAME').Value := CurForm.Name;
              qryKiemTraScan.ParamByName('COMP_NAME').Value := temp.Name+'|'+IntToStr(j*100+k);
              qryKiemTraScan.ParamByName('PARENT_COMP').Value := CurForm.Name;
              qryKiemTraScan.Open;

              if (qryKiemTraScan.RecordCount =0) then
              begin
                qryAuthorityConfig.Append;
                qryAuthorityConfigSYSTEM_ID.Value:=sysConfig.SubSystemID;
                qryAuthorityConfigFORM_NAME.Value := CurForm.Name;
                qryAuthorityConfigPARENT_COMP.Value := CurForm.Name;
                qryAuthorityConfigCOMP_NAME.Value := temp.Name+'|'+IntToStr(j*100+k);
                qryAuthorityConfigCOMP_CLASS.Value := temp.ClassName;
                qryAuthorityConfigCOMP_TITLE.Value:=(temp as TdxSideBar).Groups[j].Items[k].Caption;
                qryAuthorityConfig.Post;
              end;
          end;
        end;//for
    end
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
    if (self.Owner is TForm) then
      CurForm:=TForm(self.Owner)
    else
     if (self.Owner is TDataModule) then
      CurForm:=TDataModule(self.Owner);
    if Assigned(CurForm) then
    begin
      qryAuthorityConfig.ParamByName('FORM_NAME').Value:=CurForm.Name;
      qryAuthorityConfig.Open;
      if (CurForm is TForm) then
      begin
        qryHelpIndex.ParamByName('FORM_NAME').Value:=CurForm.Name;
        qryHelpIndex.Open;
        F_HELP_INDEX:=qryHelpIndexHELP_INDEX.Value;
      end;  
    end;
end;

procedure TfrmAuthorityConfig.dxFeatureSelectedChange(Sender: TObject);
begin
  inherited;
  if Length(Trim(dxFeatureSelected.Text))=0 then
  begin
    F_FEATURE:=-1;
    F_FEATURE_NAME:='';
  end;
end;

procedure TfrmAuthorityConfig.acNhapnhanhUpdate(Sender: TObject);
begin
  inherited;
  acNhapnhanh.Enabled:=(gridComp.SelectedCount>1) and
       (F_FEATURE>0);
end;

procedure TfrmAuthorityConfig.acNhapnhanhExecute(Sender: TObject);
var i:integer;
begin
  inherited;
  qryAuthorityConfig.DisableControls;
  for i:=0 to gridComp.SelectedCount-1 do
  begin
    if qryAuthorityConfig.Locate('COMP_NAME',gridComp.SelectedNodes[i].Values[gridCompCOMP_NAME.Index],[]) then
    begin
      if not (qryAuthorityConfig.State in [dsInsert,dsEdit]) then
       qryAuthorityConfig.Edit;
        if F_FEATURE<0 then
        begin
          qryAuthorityConfigFEATURE_ID.Clear;
          qryAuthorityConfigFEATURENAME.Clear;
        end
        else
        begin
          qryAuthorityConfigFEATURE_ID.Value:=F_FEATURE;
          qryAuthorityConfigFEATURENAME.Value:=F_FEATURE_NAME;
        end;

        if dxSelectView.Checked then
          qryAuthorityConfigCHECK_VIEW.Value:=1
        else
          qryAuthorityConfigCHECK_VIEW.Value:=0;
        if dxSelectInsert.Checked then
          qryAuthorityConfigCHECK_INSERT.Value:=1
        else
          qryAuthorityConfigCHECK_INSERT.Value:=0;
        if dxSelectEdit.Checked then
          qryAuthorityConfigCHECK_EDIT.Value:=1
        else
          qryAuthorityConfigCHECK_EDIT.Value:=0;
        if dxSelectDelete.Checked then
          qryAuthorityConfigCHECK_DELETE.Value:=1
        else
          qryAuthorityConfigCHECK_DELETE.Value:=0;
        qryAuthorityConfig.Post;
    end;
  end;
  qryAuthorityConfig.EnableControls;
end;

procedure TfrmAuthorityConfig.dxFeatureSelectedInitPopup(Sender: TObject);
begin
  inherited;
  if not qryFeatureList.Active then
    qryFeatureList.Open;
  treeList.FullExpand;
  InitPopupControl('dxlcFeatureList',self,sender,2);
end;

procedure TfrmAuthorityConfig.dxFeatureSelectedCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    F_FEATURE:=qryFeatureListFEATUREID.Value;
    F_FEATURE_NAME:=qryFeatureListFEATURENAME.Value;
    Text:=F_FEATURE_NAME;
  end;
end;

procedure TfrmAuthorityConfig.qryHelpIndexNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryHelpIndexFORM_NAME.Value:=CurForm.Name;
end;

procedure TfrmAuthorityConfig.acTestHelpIndexUpdate(Sender: TObject);
begin
  inherited;
  acTestHelpIndex.Enabled:=not qryHelpIndexHELP_INDEX.IsNull;
end;

procedure TfrmAuthorityConfig.acTestHelpIndexExecute(Sender: TObject);
begin
  inherited;
  ShowHelpContext(qryHelpIndexHELP_INDEX.Value);
end;

procedure TfrmAuthorityConfig.qryHelpIndexAfterPost(DataSet: TDataSet);
begin
  inherited;
  F_HELP_INDEX:=qryHelpIndexHELP_INDEX.Value;
end;

procedure TfrmAuthorityConfig.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var i:integer;
begin
  inherited;
  if dlgOpen.Execute then
  begin
    if not (qryHelpIndex.State in [dsInsert,dsEdit]) then
    begin
      if qryHelpIndex.IsEmpty then
        qryHelpIndex.Insert
      else
        qryHelpIndex.Edit;
    end;
    if edtRoot.Text<>'' then
    begin
      i:=Pos(String(edtRoot.Text),dlgOpen.FileName);
      if (i>0) then
        qryHelpIndexHELP_INDEX.Value:=
        StringReplace(Copy(dlgOpen.FileName,i,length(dlgOpen.FileName)-i+1),'\','/',[rfReplaceAll])
      else
        qryHelpIndexHELP_INDEX.Value:=
           StringReplace(dlgOpen.FileName,'\','/',[rfReplaceAll]);

    end
    else
    begin
       qryHelpIndexHELP_INDEX.Value:=
         StringReplace(dlgOpen.FileName,'\','/',[rfReplaceAll]);
    end;
  end;
end;

end.
