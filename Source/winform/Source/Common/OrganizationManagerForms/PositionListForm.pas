unit PositionListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, ElBtnCtl, ElPopBtn, dxExEdtr,
  dxEdLib, dxCntner, dxEditor, dxTL, dxDBCtrl, dxDBTL, DB, IBODataset,
  dxGrClEx, dxDBTLCl, ActnList, dxDBGrid, IB_Components, IB_Events;

type
  TfrmPositionList = class(TfrmEditBase)
    dxppSelectDept: TdxPopupEdit;
    dxlcMainItem2: TdxLayoutItem;
    chkViewChild: TdxCheckEdit;
    dxlcMainItem3: TdxLayoutItem;
    dxlcMainGroup1: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxlcMainItem4: TdxLayoutItem;
    dxtlPosition: TdxDBTreeList;
    dxlcMainItem5: TdxLayoutItem;
    dsPosition: TDataSource;
    qryPosition: TIBOQuery;
    dxtlPositionPOS_NOTE: TdxDBTreeListColumn;
    dxtlPositionPOS_ALLOWANCE: TdxDBTreeListCalcColumn;
    dxtlPositionWORK_TYPE_NAME: TdxDBTreeListPopupColumn;
    dxtlPositionTITLE_NAME: TdxDBTreeListPopupColumn;
    dxtlPositionDEPT_NAME: TdxDBTreeListPopupColumn;
    ActionList1: TActionList;
    acRefreshData: TAction;
    IB_Events1: TIB_Events;
    qryPositionPOSITION_NO: TWideStringField;
    qryPositionDEPT_NO: TWideStringField;
    qryPositionDEPT_NAME: TWideStringField;
    qryPositionTITLE_NO: TWideStringField;
    qryPositionTITLE_NAME: TWideStringField;
    qryPositionWORK_TYPE_NO: TWideStringField;
    qryPositionWORK_TYPE_NAME: TWideStringField;
    qryPositionP_POSITION_NO: TWideStringField;
    qryPositionPOS_NOTE: TWideStringField;
    qryPositionPOS_ALLOWANCE: TIBOFloatField;
    procedure FormCreate(Sender: TObject);
    procedure BeforeInsertChild(Sender: TObject);
    procedure BeforeInsert(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acRefreshDataExecute(Sender: TObject);
    procedure dxppSelectDeptInitPopup(Sender: TObject);
    procedure dxppSelectDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxtlPositionDEPT_NAMEInitPopup(Sender: TObject);
    procedure dxtlPositionDEPT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxtlPositionTITLE_NAMEInitPopup(Sender: TObject);
    procedure dxtlPositionTITLE_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxtlPositionWORK_TYPE_NAMEInitPopup(Sender: TObject);
    procedure dxtlPositionWORK_TYPE_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryPositionNewRecord(DataSet: TDataSet);
    procedure qryPositionDEPT_NOChange(Sender: TField);
    procedure qryPositionTITLE_NOChange(Sender: TField);
    procedure qryPositionDEPT_NAMEChange(Sender: TField);
    procedure qryPositionTITLE_NAMEChange(Sender: TField);
    procedure qryPositionWORK_TYPE_NAMEChange(Sender: TField);
    procedure IB_Events1EventAlert(Sender: TObject; AEventName: String;
      AEventCount: Integer);
    procedure qryPositionBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    FParentPos,FDeptParam,FDeptParam_Name: WideString;
  end;

procedure ViewPositionInDept(DEPT_NO,DEPT_NAME:WideString);

var
  frmPositionList: TfrmPositionList;

implementation

uses MainDM, PopupMainForm, SSP_Library, SSP_Menus;

{$R *.dfm}
procedure ViewPositionInDept(DEPT_NO,DEPT_NAME:WideString);
begin
  try
    Application.CreateForm(TfrmPositionList, frmPositionList);
    frmPositionList.FDeptParam:=DEPT_NO;
    frmPositionList.FDeptParam_Name:=DEPT_NAME;
    frmPositionList.dxppSelectDept.Text:=DEPT_NAME;
    frmPositionList.acRefreshData.Execute;
    frmPositionList.ShowModal;
  finally
    frmPositionList.Free;
  end;
end;

procedure TfrmPositionList.BeforeInsertChild(Sender: TObject);
begin
  FParentPos:= qryPositionPOSITION_NO.Value;
end;

procedure TfrmPositionList.BeforeInsert(Sender: TObject);
begin
  FParentPos := qryPositionP_POSITION_NO.Value;
end;

procedure TfrmPositionList.FormCreate(Sender: TObject);
begin
  inherited;
  IB_Events1.RegisterEvents;
  frameToolbar1.SetDataSource(dsPosition);
  frameToolbar1.OnBeforeInsert:= BeforeInsert;
  frameToolbar1.OnBeforeInsertChild := BeforeInsertChild;
  acRefreshData.Execute;
end;

procedure TfrmPositionList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmMain.MsgChangeDataSource(dsPosition);
  qryPosition.Close;
end;

procedure TfrmPositionList.acRefreshDataExecute(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crSQLWait;
    qryPosition.DisableControls;
    if qryPosition.Active then
      qryPosition.Close;
    if chkViewChild.Checked then
    begin
      qryPosition.SQLWhere.Text := 'where HR_POSITION.DEPT_NO in (select dept_no from hr_mask_dept_list(:USER_NAME,:DEPT_NO,1))';
      qryPosition.ParamByName('DEPT_NO').Value := VarToWideStr(FDeptParam);
    end
    else
    begin
      if Length(VarToWideStr(FDeptParam)) > 0 then
      begin
        qryPosition.SQLWhere.Text := 'where HR_POSITION.DEPT_NO=:DEPT_NO';
        qryPosition.ParamByName('DEPT_NO').Value := VarToWideStr(FDeptParam);
      end
      else
        qryPosition.SQLWhere.Clear;
    end;
    qryPosition.Open;
  finally
    qryPosition.EnableControls;
    dxtlPosition.FullExpand;
    Screen.Cursor := crDefault;
  end
end;

procedure TfrmPositionList.dxppSelectDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList',frmPopupMain,Sender,2);
  frmPopupMain.dxtlDeptList.FullExpand;
end;

procedure TfrmPositionList.dxppSelectDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text:=frmPopupMain.qryDeptListDEPT_NAME.Value;
    FDeptParam:=frmPopupMain.qryDeptListDEPT_NO.Value;
    FDeptParam_Name:=frmPopupMain.qryDeptListDEPT_NAME.Value;
  end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmPositionList.dxtlPositionDEPT_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList',frmPopupMain,Sender,2,dxtlPosition);
  frmPopupMain.dxtlDeptList.FullExpand;
end;

procedure TfrmPositionList.dxtlPositionDEPT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryDeptList,qryPosition,
           'DEPT_NO;DEPT_NAME','DEPT_NO;DEPT_NAME','DEPT_NAME',Text);
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmPositionList.dxtlPositionTITLE_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryTitleList.Open;
  InitPopupControl('dxlcTitleList',frmPopupMain,Sender,2,dxtlPosition);
end;

procedure TfrmPositionList.dxtlPositionTITLE_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryTitleList,qryPosition,
           'TITLE_NO;TITLE_NAME','TITLE_NO;TITLE_NAME','TITLE_NAME',Text);
  frmPopupMain.qryTitleList.Close;
end;

procedure TfrmPositionList.dxtlPositionWORK_TYPE_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWorkTypeList.Open;
  InitPopupControl('dxlcWorkType',frmPopupMain,Sender,2,dxtlPosition);
end;

procedure TfrmPositionList.dxtlPositionWORK_TYPE_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryWorkTypeList,qryPosition,
           'WORK_TYPE_NO;WORK_TYPE_NAME','WORK_TYPE_NO;WORK_TYPE_NAME',
           'WORK_TYPE_NAME',Text);
  frmPopupMain.qryWorkTypeList.Close;
end;

procedure TfrmPositionList.qryPositionNewRecord(DataSet: TDataSet);
begin
  inherited;
  if Length(FParentPos)>0 then
  qryPositionP_POSITION_NO.Value:=FParentPos;
  if Length(FDeptParam)>0 then
  begin
    qryPositionDEPT_NO.Value:=FDeptParam;
    qryPositionDEPT_NAME.Value:=FDeptParam_Name;
  end;
end;

procedure TfrmPositionList.qryPositionDEPT_NOChange(Sender: TField);
begin
  inherited;
  if not (qryPositionDEPT_NO.IsNull and qryPositionTITLE_NO.IsNull)
  then
  begin
  qryPositionPOSITION_NO.Value:=qryPositionTITLE_NO.Value+'-'+
                                qryPositionDEPT_NO.Value;
  end;
end;

procedure TfrmPositionList.qryPositionTITLE_NOChange(Sender: TField);
begin
  inherited;
  if not (qryPositionDEPT_NO.IsNull and qryPositionTITLE_NO.IsNull)
  then
  begin
    qryPositionPOSITION_NO.Value:=qryPositionTITLE_NO.Value+'-'+
                                qryPositionDEPT_NO.Value;
  end;
end;
procedure TfrmPositionList.qryPositionDEPT_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,Sender.FieldName,'DEPT_NO');
end;

procedure TfrmPositionList.qryPositionTITLE_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,Sender.FieldName,'TITLE_NO');
end;

procedure TfrmPositionList.qryPositionWORK_TYPE_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,Sender.FieldName,'WORK_TYPE_NO');
end;

procedure TfrmPositionList.IB_Events1EventAlert(Sender: TObject;
  AEventName: String; AEventCount: Integer);
var POSITION_NO :WideString;
begin
  inherited;
  if AEventName='POSITION_NO CHANGE' then
  begin
    POSITION_NO:=qryPositionPOSITION_NO.Value;
    qryPosition.DisableControls;
    qryPosition.Refresh;
    qryPosition.LOcate('POSITION_NO',POSITION_NO,[]);
    qryPosition.EnableControls;
  end
  else
  if AEventName='POSITION_NO DELETE' then
  begin
    qryPosition.DisableControls;
    qryPosition.Refresh;
    qryPosition.EnableControls;
  end
end;

procedure TfrmPositionList.qryPositionBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryPositionPOSITION_NO.Value:=qryPositionTITLE_NO.Value+'-'+qryPositionDEPT_NO.Value;
  dmMain.DefOnBeforePost(Dataset);
end;

end.

