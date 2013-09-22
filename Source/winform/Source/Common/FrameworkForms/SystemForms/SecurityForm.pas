unit SecurityForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, ExtCtrls, ElPanel, ElSplit, dxExEdtr,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, ElBtnCtl, ElPopBtn, ElPgCtl,
  ActnList, ImgList, dxEdLib, DB, IBODataset, dxmdaset, DBActns, dxDBTLCl,
  dxGrClms, dxDBTL;

type
  TfrmSecurity = class(TfrmBase)
    ElSplitter1: TElSplitter;
    pageLeft: TElPageControl;
    pageRight: TElPageControl;
    tabUserList: TElTabSheet;
    tabGroupList: TElTabSheet;
    tabFeatureList: TElTabSheet;
    tabReportList: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxDBGrid1: TdxDBGrid;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    ElPopupButton5: TElPopupButton;
    ElPopupButton6: TElPopupButton;
    ElPopupButton7: TElPopupButton;
    ElPopupButton8: TElPopupButton;
    dxDBGrid2: TdxDBGrid;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    gridUnselectedUser: TdxDBGrid;
    dxLayoutControl2Item1: TdxLayoutItem;
    ElPopupButton9: TElPopupButton;
    dxLayoutControl2Item2: TdxLayoutItem;
    ElPopupButton10: TElPopupButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    ElPopupButton11: TElPopupButton;
    dxLayoutControl2Item4: TdxLayoutItem;
    ElPopupButton12: TElPopupButton;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl2Group3: TdxLayoutGroup;
    gridGroupUser: TdxDBGrid;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    ckFDel: TdxCheckEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    ckFEdt: TdxCheckEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    ckFIns: TdxCheckEdit;
    dxLayoutControl3Item5: TdxLayoutItem;
    ckFView: TdxCheckEdit;
    dxLayoutControl3Item6: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    ckRDel: TdxCheckEdit;
    ckREdt: TdxCheckEdit;
    ckRIns: TdxCheckEdit;
    ckRView: TdxCheckEdit;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    ActionList1: TActionList;
    navigatorImageList: TImageList;
    acAdd: TAction;
    acRemove: TAction;
    acRemoveAll: TAction;
    acAddAll: TAction;
    qryUserList: TIBOQuery;
    qryGroupList: TIBOQuery;
    qryUserFeatureList: TIBOQuery;
    qryUserReportList: TIBOQuery;
    dsUserList: TDataSource;
    dsUserReportList: TDataSource;
    dsUserFeatureList: TDataSource;
    dsGroupList: TDataSource;
    qryGroupUser: TIBOQuery;
    dsGroupUser: TDataSource;
    memUnselectedUser: TdxMemData;
    dsUnselectedUser: TDataSource;
    memUnselectedUserUSERACCOUNTID: TWideStringField;
    qryUserListUSERACCID: TWideStringField;
    qryUserListDISPLAYNAME: TWideStringField;
    qryUserListUSERACCPASS: TWideStringField;
    dxDBGrid1USERACCID: TdxDBGridColumn;
    dxDBGrid1DISPLAYNAME: TdxDBGridColumn;
    dxDBGrid1LAST_ACCESS: TdxDBGridColumn;
    acUserListCanCel: TDataSetCancel;
    acUserListDelete: TDataSetDelete;
    acUserListPost: TDataSetPost;
    acUserListInsert: TAction;
    qryUserListLASTACCESS: TDateTimeField;
    acUserDetail: TAction;
    qryGroupFeatureList: TIBOQuery;
    dsGroupFeatureList: TDataSource;
    qryGroupReportList: TIBOQuery;
    dsGroupReportList: TDataSource;
    qryUserFeatureListUSERACCID: TWideStringField;
    qryUserFeatureListSUBSYSTEMID: TSmallintField;
    qryUserFeatureListFEATUREID: TSmallintField;
    qryUserFeatureListALLOWREAD: TSmallintField;
    qryUserFeatureListALLOWINSERT: TSmallintField;
    qryUserFeatureListALLOWUPDATE: TSmallintField;
    qryUserFeatureListALLOWDELETE: TSmallintField;
    qryUserReportListUSERACCID: TWideStringField;
    qryUserReportListSUBSYSTEMID: TSmallintField;
    qryUserReportListREPORTID: TSmallintField;
    qryUserReportListALLOWREAD: TSmallintField;
    qryUserReportListALLOWINSERT: TSmallintField;
    qryUserReportListALLOWUPDATE: TSmallintField;
    qryUserReportListALLOWDELETE: TSmallintField;
    qryUserFeatureListFEATURENAME: TWideStringField;
    qryGroupListSUBSYSTEMID: TSmallintField;
    qryGroupListGROUPID: TWideStringField;
    qryGroupListGROUPNAME: TWideStringField;
    dxDBGrid2GROUPID: TdxDBGridColumn;
    dxDBGrid2GROUPNAME: TdxDBGridColumn;
    acGroupDelete: TDataSetDelete;
    acGroupInsert: TDataSetInsert;
    acGroupPost: TDataSetPost;
    acGroupCancel: TDataSetCancel;
    qryGroupFeatureListGROUPID: TWideStringField;
    qryGroupFeatureListSUBSYSTEMID: TSmallintField;
    qryGroupFeatureListFEATUREID: TSmallintField;
    qryGroupFeatureListALLOWREAD: TSmallintField;
    qryGroupFeatureListALLOWINSERT: TSmallintField;
    qryGroupFeatureListALLOWUPDATE: TSmallintField;
    qryGroupFeatureListALLOWDELETE: TSmallintField;
    qryGroupFeatureListFEATURENAME: TWideStringField;
    qryGroupReportListGROUPID: TWideStringField;
    qryGroupReportListSUBSYSTEMID: TSmallintField;
    qryGroupReportListREPORTID: TSmallintField;
    qryGroupReportListALLOWREAD: TSmallintField;
    qryGroupReportListALLOWINSERT: TSmallintField;
    qryGroupReportListALLOWUPDATE: TSmallintField;
    qryGroupReportListALLOWDELETE: TSmallintField;
    qryGroupUserSUBSYSTEMID: TSmallintField;
    qryGroupUserGROUPID: TWideStringField;
    qryGroupUserUSERACCID: TWideStringField;
    qryGroupUserDISPLAYNAME: TWideStringField;
    gridGroupUserDISPLAYNAME: TdxDBGridColumn;
    memUnselectedUserDISPLAYNAME: TWideStringField;
    gridUnselectedUserDISPLAYNAME: TdxDBGridColumn;
    acCreateUnselectedUser: TAction;
    gridUnselectedUserUSERACCOUNTID: TdxDBGridColumn;
    qryFastUpdate: TIBOQuery;
    SmallintField1: TSmallintField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    acUpdateUserData: TAction;
    acUpdateGroupData: TAction;
    ElPopupButton13: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    ElPopupButton14: TElPopupButton;
    dxLayoutControl2Item7: TdxLayoutItem;
    qryUserReportListREPORT_NAME: TWideStringField;
    qryUserReportListREPORT_NAME_ENG: TWideStringField;
    qryGroupReportListREPORT_NAME: TWideStringField;
    qryGroupReportListREPORT_NAME_ENG: TWideStringField;
    qryUserFeatureListP_FEATUREID: TIntegerField;
    qryUserReportListPREPORTID: TSmallintField;
    qryGroupFeatureListP_FEATUREID: TIntegerField;
    qryGroupReportListPREPORTID: TSmallintField;
    treeListFeatureList: TdxDBTreeList;
    dxLayoutControl3Item3: TdxLayoutItem;
    treeListFeatureListALLOWREAD: TdxDBTreeListCheckColumn;
    treeListFeatureListALLOWINSERT: TdxDBTreeListCheckColumn;
    treeListFeatureListALLOWUPDATE: TdxDBTreeListCheckColumn;
    treeListFeatureListALLOWDELETE: TdxDBTreeListCheckColumn;
    treeListFeatureListFEATURENAME: TdxDBTreeListMaskColumn;
    dxLayoutControl4Item1: TdxLayoutItem;
    treelistReportList: TdxDBTreeList;
    dxDBTreeListCheckColumn1: TdxDBTreeListCheckColumn;
    dxDBTreeListCheckColumn2: TdxDBTreeListCheckColumn;
    dxDBTreeListCheckColumn3: TdxDBTreeListCheckColumn;
    dxDBTreeListCheckColumn4: TdxDBTreeListCheckColumn;
    dxLayoutControl4Group1: TdxLayoutGroup;
    qryInitUserData: TIBOQuery;
    qryInitGroupData: TIBOQuery;
    qryUserListSUBSYSTEMID: TSmallintField;
    qryGroupFeatureListFEATURENAME_ENG: TWideStringField;
    qryUserFeatureListFEATURENAME_ENG: TWideStringField;
    treeListFeatureListFEATURENAME_ENG: TdxDBTreeListColumn;
    treelistReportListREPORT_NAME: TdxDBTreeListColumn;
    treelistReportListREPORT_NAME_ENG: TdxDBTreeListColumn;
    tabViewDeptList: TElTabSheet;
    dxLayoutControl5: TdxLayoutControl;
    ckDView: TdxCheckEdit;
    treeListViewDeptList: TdxDBTreeList;
    treeListViewDeptListDEPT_NAME: TdxDBTreeListMaskColumn;
    treeListViewDeptListALLOW_READ: TdxDBTreeListCheckColumn;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    qryUserDeptView: TIBOQuery;
    dsUserDeptView: TDataSource;
    qryGroupDeptView: TIBOQuery;
    dsGroupDeptView: TDataSource;
    qryUserDeptViewUSERACCID: TWideStringField;
    qryUserDeptViewSUBSYSTEMID: TSmallintField;
    qryUserDeptViewDEPT_NO: TWideStringField;
    qryUserDeptViewDEPT_NAME: TWideStringField;
    qryUserDeptViewALLOWREAD: TSmallintField;
    qryUserDeptViewP_DEPT_NO: TWideStringField;
    qryGroupDeptViewGROUPID: TWideStringField;
    qryGroupDeptViewSUBSYSTEMID: TSmallintField;
    qryGroupDeptViewDEPT_NO: TWideStringField;
    qryGroupDeptViewP_DEPT_NO: TWideStringField;
    qryGroupDeptViewDEPT_NAME: TWideStringField;
    qryGroupDeptViewALLOWREAD: TSmallintField;
    procedure acAddExecute(Sender: TObject);
    procedure acRemoveExecute(Sender: TObject);
    procedure acRemoveAllExecute(Sender: TObject);
    procedure acUserListInsertExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acUserDetailUpdate(Sender: TObject);
    procedure acUserDetailExecute(Sender: TObject);
    procedure pageLeftChange(Sender: TObject);
    procedure acGroupInsertExecute(Sender: TObject);
    procedure qryGroupListAfterPost(DataSet: TDataSet);
    procedure qryGroupListNewRecord(DataSet: TDataSet);
    procedure acCreateUnselectedUserExecute(Sender: TObject);
    procedure acAddAllUpdate(Sender: TObject);
    procedure acRemoveAllUpdate(Sender: TObject);
    procedure acAddUpdate(Sender: TObject);
    procedure acRemoveUpdate(Sender: TObject);
    procedure acAddAllExecute(Sender: TObject);
    procedure qryGroupUserAfterOpen(DataSet: TDataSet);
    procedure qryGroupListAfterScroll(DataSet: TDataSet);
    procedure qryGroupUserBeforeDelete(DataSet: TDataSet);
    procedure UpdateRight(update_query: TIBOQuery; table, field, where_field:
      string; state: boolean);
    procedure ckFViewChange(Sender: TObject);
    procedure ckFInsChange(Sender: TObject);
    procedure ckFEdtChange(Sender: TObject);
    procedure ckFDelChange(Sender: TObject);
    procedure ckRViewChange(Sender: TObject);
    procedure ckRInsChange(Sender: TObject);
    procedure ckREdtChange(Sender: TObject);
    procedure ckRDelChange(Sender: TObject);
    procedure acUpdateUserDataUpdate(Sender: TObject);
    procedure acUpdateGroupDataUpdate(Sender: TObject);
    procedure acUpdateUserDataExecute(Sender: TObject);
    procedure acUpdateGroupDataExecute(Sender: TObject);
    procedure treeListFeatureListCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure treelistReportListCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure qryUserListNewRecord(DataSet: TDataSet);
    procedure ckDViewChange(Sender: TObject);
    procedure treeListViewDeptListCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
  private
    { Private declarations }
    isInsertGroup: boolean;
  public
    { Public declarations }
  end;

var
  frmSecurity: TfrmSecurity;

implementation

uses MainDM, SSP_Library, InserUserForm;

{$R *.dfm}

procedure TfrmSecurity.acAddExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  for i := 0 to gridUnselectedUser.SelectedCount - 1 do
  begin
    qryGroupUser.Append;
    qryGroupUserGROUPID.Value := qryGroupListGROUPID.Value;
    qryGroupUserSUBSYSTEMID.Value := sysConfig.SubSystemID;
    qryGroupUser.FieldByName('DISPLAYNAME').Value :=
      gridUnselectedUser.SelectedNodes[i].Values[gridUnselectedUserDISPLAYNAME.Index];
    qryGroupUser.FieldByName('USERACCID').Value :=
      gridUnselectedUser.SelectedNodes[i].Values[gridUnselectedUserUSERACCOUNTID.Index];
    qryGroupUser.Post;
  end;
  acCreateUnselectedUser.Execute;
end;

procedure TfrmSecurity.acRemoveExecute(Sender: TObject);
begin
  inherited;
  gridGroupUser.DeleteSelection;
  acCreateUnselectedUser.Execute;
end;

procedure TfrmSecurity.acRemoveAllExecute(Sender: TObject);
begin
  inherited;
  gridGroupUser.SelectAll;
  acRemove.Execute;
end;

procedure TfrmSecurity.acUserListInsertExecute(Sender: TObject);
begin
  inherited;
  qryUserList.Append;
  ShowModalForm(TfrmInsertUser, frmInsertUser);
end;

procedure TfrmSecurity.FormCreate(Sender: TObject);
begin
  inherited;
  treeListFeatureListFEATURENAME.Visible := (sysConfig.Language <> 2);
  treeListFeatureListFEATURENAME_ENG.Visible := (sysConfig.Language = 2);
  treelistReportListREPORT_NAME.Visible := (sysConfig.Language <> 2);
  treelistReportListREPORT_NAME_ENG.Visible := (sysConfig.Language = 2);
  // ===============================================================}
  isInsertGroup := false;
  pageLeft.ActivePageIndex := 0;
  qryUserList.Open;
  qryUserReportList.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
  qryUserFeatureList.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
  qryUserDeptView.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
  qryUserDeptView.Open;
  qryUserReportList.Open;
  qryUserFeatureList.Open;

  qryGroupList.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
  qryGroupList.Open;
  qryGroupReportList.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
  qryGroupFeatureList.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
  qryGroupDeptView.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
  qryGroupDeptView.Open;
  qryGroupReportList.Open;
  qryGroupFeatureList.Open;
  qryGroupUser.ParamByName('SUBSYSTEMID').Value := sysConfig.SubSystemID;
  qryGroupUser.Open;
end;

procedure TfrmSecurity.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryUserList.Close;
  qryUserFeatureList.Close;
  qryUserReportList.Close;
  qryUserDeptView.Close;

  qryGroupList.Close;
  qryGroupFeatureList.Close;
  qryGroupReportList.Close;
  qryGroupDeptView.Close;

  LoadPermissionList;
end;

procedure TfrmSecurity.acUserDetailUpdate(Sender: TObject);
begin
  inherited;
  acUserDetail.Enabled := (qryUserList.RecordCount > 0);
end;

procedure TfrmSecurity.acUserDetailExecute(Sender: TObject);
begin
  inherited;
  qryUserList.Edit;
  ShowModalForm(TfrmInsertUser, frmInsertUser);
end;

procedure TfrmSecurity.pageLeftChange(Sender: TObject);
begin
  inherited;
  case pageLeft.ActivePageIndex of
    0:
      begin
        if (qryGroupReportList.State in [dsEdit, dsInsert]) then
          qryGroupReportList.Post;
        if (qryGroupFeatureList.State in [dsEdit, dsInsert]) then
          qryGroupFeatureList.Post;
        if (qryGroupDeptView.State in [dsEdit, dsInsert]) then
          qryGroupDeptView.Post;

        treelistReportList.DataSource := dsUserReportList;
        treelistFeatureList.DataSource := dsUserFeatureList;
        treeListViewDeptList.DataSource := dsUserDeptView;
      end;
    1:
      begin
        if (qryUserReportList.State in [dsEdit, dsInsert]) then
          qryUserReportList.Post;
        if (qryUserFeatureList.State in [dsEdit, dsInsert]) then
          qryUSerFeatureList.Post;
        if (qryUserDeptView.State in [dsEdit, dsInsert]) then
          qryUserDeptView.Post;

        treelistReportList.DataSource := dsGroupReportList;
        treelistFeatureList.DataSource := dsGroupFeatureList;
        treeListViewDeptList.DataSource := dsGroupDeptView;

        acCreateUnselectedUser.Execute;
      end;
  end;
  treelistReportList.FullExpand;
  treelistFeatureList.FullExpand;
  treeListViewDeptList.FullExpand;
end;

procedure TfrmSecurity.acGroupInsertExecute(Sender: TObject);
begin
  inherited;
  qryGroupList.Append;
  isInsertGroup := true;
end;

procedure TfrmSecurity.qryGroupListAfterPost(DataSet: TDataSet);
begin
  inherited;
  if isInsertGroup then
  begin
    try
      qryInitGroupData.ParamByName('GROUP_ID').Value :=
        qryGroupListGROUPID.Value;
      qryInitGroupData.ParamByName('SUBSYSTEM_ID').Value :=
        sysConfig.SubSystemID;
      dmMain.ExecuteSQL(qryInitGroupData);
      qryGroupFeatureList.Refresh;
      qryGroupReportList.Refresh;
    except
      ShowMessageUnicode(10);
    end;
    isInsertGroup := false;
  end;
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TfrmSecurity.qryGroupListNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryGroupListSUBSYSTEMID.Value := sysConfig.SubSystemID;
end;

procedure TfrmSecurity.acCreateUnselectedUserExecute(Sender: TObject);
var
  user_boomark, groupuser_bookmark: string;
begin
  inherited;
  if qryUserList.RecordCount <= 0 then exit;
  if qryGroupList.RecordCount <= 0 then exit;
  memUnselectedUser.DisableControls;
  qryUserList.DisableControls;
  qryGroupUser.DisableControls;

  memUnselectedUser.Close;
  memUnselectedUser.Open;
  qryUserList.First;
  while not qryUserList.Eof do
  begin
    if not qryGroupUser.Locate('USERACCID', qryUserListUSERACCID.Value, []) then
    begin
      memUnselectedUser.Append;
      memUnselectedUserUSERACCOUNTID.Value := qryUserListUSERACCID.Value;
      memUnselectedUserDISPLAYNAME.Value := qryUserListDISPLAYNAME.Value;
      memUnselectedUser.Post;
    end;
    qryUserLIst.Next;
  end;
  qryUserList.EnableControls;
  qryGroupUser.EnableControls;
  memUnselectedUser.EnableControls;
end;

procedure TfrmSecurity.acAddAllUpdate(Sender: TObject);
begin
  inherited;
  acAddAll.Enabled := (qryGroupList.RecordCount > 0) and
    (memUnselectedUser.RecordCount > 0);
end;

procedure TfrmSecurity.acRemoveAllUpdate(Sender: TObject);
begin
  inherited;
  acRemoveAll.Enabled := (qryGroupList.RecordCount > 0) and
    (qryGroupUser.RecordCount > 0);
end;

procedure TfrmSecurity.acAddUpdate(Sender: TObject);
begin
  inherited;
  acAdd.Enabled := (qryGroupList.RecordCount > 0) and
    (memUnselectedUser.RecordCount > 0);
end;

procedure TfrmSecurity.acRemoveUpdate(Sender: TObject);
begin
  inherited;
  acRemove.Enabled := (qryGroupList.RecordCount > 0) and
    (qryGroupUser.RecordCount > 0);
end;

procedure TfrmSecurity.acAddAllExecute(Sender: TObject);
begin
  inherited;
  gridUnselectedUser.SelectAll;
  acAdd.Execute;
end;

procedure TfrmSecurity.qryGroupUserAfterOpen(DataSet: TDataSet);
begin
  inherited;
  acCreateUnselectedUser.Execute;
end;

procedure TfrmSecurity.qryGroupListAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if qryGroupUser.Active then
    acCreateUnselectedUser.Execute;
end;

procedure TfrmSecurity.qryGroupUserBeforeDelete(DataSet: TDataSet);
var
  i: integer;
begin
  inherited;

end;

procedure TfrmSecurity.UpdateRight(update_query: TIBOQuery; table, field,
  where_field: string; state: boolean);
var
  allow_value: integer;
begin
  if state then
    allow_value := 1
  else
    allow_value := 0;
  try
    qryFastUpdate.SQL.Text := 'update ' + table + ' set ' + field +
      '=:allow_value ' +
      'where subsystemid=:subsystemid and ' +
      '     ' + where_field + '=:user_group_id';
    qryFastUpdate.Prepare;
    qryFastUpdate.ParamByName('ALLOW_VALUE').Value := allow_value;
    qryFastUpdate.ParamByName('SUBSYSTEMID').Value :=
      update_query.FieldByName('SUBSYSTEMID').Value;
    qryFastUpdate.ParamByName('USER_GROUP_ID').Value :=
      update_query.FieldByName(where_field).Value;
    dmMain.ExecuteSQL(qryFastUpdate);
    //edited by THUYPTP - 24/4/2009 - bug 1673
    if update_query.Active then
      update_query.Refresh
    else                                                     
    begin
      update_query.Close;
      update_query.Open;
    end

  except
    ShowMessageUnicode(11);
  end;
end;

procedure TfrmSecurity.ckFViewChange(Sender: TObject);
begin
  inherited;
  if treeListFeatureList.DataSource = dsUserFeatureList then
    UpdateRight(qryUserFeatureList, 'SYS_USERFEATURE', 'ALLOWREAD',
      'USERACCID', ckFView.Checked)
  else
    if treeListFeatureList.DataSource = dsGroupFeatureList then
    UpdateRight(qryGroupFeatureList, 'SYS_GROUPFEATURE', 'ALLOWREAD',
      'GROUPID', ckFView.Checked)
end;

procedure TfrmSecurity.ckFInsChange(Sender: TObject);
begin
  inherited;
  if treeListFeatureList.DataSource = dsUserFeatureList then
    UpdateRight(qryUserFeatureList, 'SYS_USERFEATURE', 'ALLOWINSERT',
      'USERACCID', ckFIns.Checked)
  else
    if treeListFeatureList.DataSource = dsGroupFeatureList then
    UpdateRight(qryGroupFeatureList, 'SYS_GROUPFEATURE', 'ALLOWINSERT',
      'GROUPID', ckFIns.Checked);
end;

procedure TfrmSecurity.ckFEdtChange(Sender: TObject);
begin
  inherited;
  if treeListFeatureList.DataSource = dsUserFeatureList then
    UpdateRight(qryUserFeatureList, 'SYS_USERFEATURE', 'ALLOWUPDATE',
      'USERACCID', ckFEdt.Checked)
  else
    if treeListFeatureList.DataSource = dsGroupFeatureList then
    UpdateRight(qryGroupFeatureList, 'SYS_GROUPFEATURE', 'ALLOWUPDATE',
      'GROUPID', ckFEdt.Checked);
end;

procedure TfrmSecurity.ckFDelChange(Sender: TObject);
begin
  inherited;
  if treeListFeatureList.DataSource = dsUserFeatureList then
    UpdateRight(qryUserFeatureList, 'SYS_USERFEATURE', 'ALLOWDELETE',
      'USERACCID', ckFDel.Checked)
  else
    if treeListFeatureList.DataSource = dsGroupFeatureList then
    UpdateRight(qryGroupFeatureList, 'SYS_GROUPFEATURE', 'ALLOWDELETE',
      'GROUPID', ckFDel.Checked);
end;

procedure TfrmSecurity.ckRViewChange(Sender: TObject);
begin
  inherited;
  if treeListReportList.DataSource = dsUserReportList then
    UpdateRight(qryUserReportList, 'SYS_USERREPORT', 'ALLOWREAD',
      'USERACCID', ckRView.Checked)
  else
    if treeListReportList.DataSource = dsGroupReportList then
    UpdateRight(qryGroupReportList, 'SYS_GROUPREPORT', 'ALLOWREAD',
      'GROUPID', ckRView.Checked);
end;

procedure TfrmSecurity.ckRInsChange(Sender: TObject);
begin
  inherited;
  if treeListReportList.DataSource = dsUserReportList then
    UpdateRight(qryUserReportList, 'SYS_USERREPORT', 'ALLOWINSERT',
      'USERACCID', ckRIns.Checked)
  else
    if treeListReportList.DataSource = dsGroupReportList then
    UpdateRight(qryGroupReportList, 'SYS_GROUPREPORT', 'ALLOWINSERT',
      'GROUPID', ckRIns.Checked);
end;

procedure TfrmSecurity.ckREdtChange(Sender: TObject);
begin
  inherited;
  if treeListReportList.DataSource = dsUserReportList then
    UpdateRight(qryUserReportList, 'SYS_USERREPORT', 'ALLOWUPDATE',
      'USERACCID', ckREdt.Checked)
  else
    if treeListReportList.DataSource = dsGroupReportList then
    UpdateRight(qryGroupReportList, 'SYS_GROUPREPORT', 'ALLOWUPDATE',
      'GROUPID', ckREdt.Checked);
end;

procedure TfrmSecurity.ckRDelChange(Sender: TObject);
begin
  inherited;
  if treeListReportList.DataSource = dsUserReportList then
    UpdateRight(qryUserReportList, 'SYS_USERREPORT', 'ALLOWDELETE',
      'USERACCID', ckRDel.Checked)
  else
    if treeListReportList.DataSource = dsGroupReportList then
    UpdateRight(qryGroupReportList, 'SYS_GROUPREPORT', 'ALLOWDELETE',
      'GROUPID', ckRDel.Checked);
end;

procedure TfrmSecurity.acUpdateUserDataUpdate(Sender: TObject);
begin
  inherited;
  acUpdateUserData.Enabled := (qryUserLIst.RecordCount > 0);
end;

procedure TfrmSecurity.acUpdateGroupDataUpdate(Sender: TObject);
begin
  inherited;
  acUpdateGroupData.Enabled := (qryGroupList.RecordCount > 0);
end;

procedure TfrmSecurity.acUpdateUserDataExecute(Sender: TObject);
begin
  inherited;
  qryInitUserData.ParamByName('USER_ID').Value := qryUserListUSERACCID.Value;
  qryInitUserData.ParamByName('SUBSYSTEM_ID').Value := sysConfig.SubSystemID;
  dmMain.ExecuteSQL(qryInitUserData);
  qryUserReportList.Refresh;
  qryUSerFeatureList.Refresh;
  qryUserDeptView.Refresh;
  treeListFeatureList.FullExpand;
  treelistReportList.FullExpand;
  treeListViewDeptList.FullExpand;
end;

procedure TfrmSecurity.acUpdateGroupDataExecute(Sender: TObject);
begin
  inherited;
  qryInitGroupData.ParamByName('GROUP_ID').Value := qryGroupListGROUPID.Value;
  qryInitGroupData.ParamByName('SUBSYSTEM_ID').Value := sysConfig.SubSystemID;
  dmMain.ExecuteSQL(qryInitGroupData);
  qryGroupReportList.Refresh;
  qryGroupFeatureList.Refresh;
  qryGroupDeptView.Refresh;
  treeListFeatureList.FullExpand;
  treelistReportList.FullExpand;
  treeListViewDeptList.FullExpand;
end;

procedure TfrmSecurity.treeListFeatureListCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    if not Assigned(Anode.Parent) then
      AFont.Style := AFont.Style + [fsBold]
    else
      AFont.Style := AFont.Style - [fsBold];
  except
  end
end;

procedure TfrmSecurity.treelistReportListCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    if Anode.HasChildren then
      AFont.Style := AFont.Style + [fsBold]
    else
      AFont.Style := AFont.Style - [fsBold];
  except
  end
end;

procedure TfrmSecurity.qryUserListNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryUserListSUBSYSTEMID.Value := sysConfig.SubSystemID;
end;

procedure TfrmSecurity.ckDViewChange(Sender: TObject);
begin
  inherited;
  if treeListViewDeptList.DataSource = dsUserDeptView then
    UpdateRight(qryUserDeptView, 'SYS_USERDEPT', 'ALLOWREAD',
      'USERACCID', ckDView.Checked)
  else
    if treeListViewDeptList.DataSource = dsGroupDeptView then
    UpdateRight(qryGroupDeptView, 'SYS_GROUPDEPT', 'ALLOWREAD',
      'GROUPID', ckDView.Checked)
end;

procedure TfrmSecurity.treeListViewDeptListCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    if not Assigned(Anode.Parent) then
      AFont.Style := AFont.Style + [fsBold]
    else
      AFont.Style := AFont.Style - [fsBold];
  except
  end
end;

end.

