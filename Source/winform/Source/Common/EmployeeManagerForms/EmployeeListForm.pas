unit EmployeeListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElCaption, ElXPThemedControl, ElStatBar, ExtCtrls,
  ElPanel, ElHTMLPanel, ElAdvPanel, ElExpBar, ElScrollBox, dxExEdtr,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, ElSplit, dxGrClEx, dxDBTLCl, dxGrClms,
  ActnList, dxsbar, BaseFrm, ImgList, dxLayoutControl,
  StdCtrls, ElCLabel, ElLabel, cxControls, dxEditor, dxEdLib;

type
  TfrmEmployees = class(TfrmBase)
    gridEmpList: TdxDBGrid;
    mainPanel: TPanel;
    panelCenter: TPanel;
    gridEmpListEMPLOYEE_NO: TdxDBGridColumn;
    gridEmpListFIRST_NAME: TdxDBGridColumn;
    gridEmpListMIDDLE_NAME: TdxDBGridColumn;
    gridEmpListLAST_NAME: TdxDBGridColumn;
    gridEmpListFULL_NAME: TdxDBGridColumn;
    gridEmpListGENDER: TdxDBGridImageColumn;
    gridEmpListBIRTH_DATE: TdxDBGridDateColumn;
    gridEmpListMARRIAL_STATUS: TdxDBGridImageColumn;
    gridEmpListID_CARD_NO: TdxDBGridColumn;
    gridEmpListISSUED_DATE: TdxDBGridDateColumn;
    gridEmpListISSUED_PLACE: TdxDBGridColumn;
    gridEmpListRACE_NO: TdxDBGridColumn;
    gridEmpListRACE_NAME: TdxDBGridPopupColumn;
    gridEmpListCURRENCY_NO: TdxDBGridColumn;
    gridEmpListCURRENCY_NAME: TdxDBGridPopupColumn;
    gridEmpListNATIONAL_NO: TdxDBGridColumn;
    gridEmpListNATIONAL_NAME: TdxDBGridPopupColumn;
    gridEmpListRELIGION_NO: TdxDBGridColumn;
    gridEmpListRELIGION_NAME: TdxDBGridPopupColumn;
    gridEmpListBIRTH_PLACE_ID: TdxDBGridColumn;
    gridEmpListBIRTH_PLACE_NAME: TdxDBGridPopupColumn;
    gridEmpListNATIVE_PLACE_ID: TdxDBGridColumn;
    gridEmpListNATIVE_PLACE_NAME: TdxDBGridPopupColumn;
    gridEmpListCONTACT_ADDR: TdxDBGridColumn;
    gridEmpListPROVISION_ADDR: TdxDBGridColumn;
    gridEmpListRESIDENT_ADDR: TdxDBGridColumn;
    gridEmpListCONTACT_PHONE: TdxDBGridColumn;
    gridEmpListHAND_PHONE: TdxDBGridColumn;
    gridEmpListEMAIL: TdxDBGridColumn;
    gridEmpListFAX: TdxDBGridColumn;
    gridEmpListWEBSITE: TdxDBGridColumn;
    gridEmpListNOTES: TdxDBGridColumn;
    mainActionList: TActionList;
    dxsidebarMenu: TdxSideBar;
    acGetEmpList: TAction;
    imgLargeIcon: TImageList;
    panelShowForm: TPanel;
    dximOption: TdxImageEdit;
    panelLeft: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    panelHeader: TPanel;
    dxLayoutControl1: TdxLayoutControl;
    lblReportCaption: TElLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    ElSplitter1: TElSplitter;
    gridEmpListEMPLOYEE_ID: TdxDBGridColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ShowDetail(form_class: TFormClass);
    procedure acGetEmpListExecute(Sender: TObject);
    procedure dxsidebarMenuItemClick(Sender: TObject;
      Item: TdxSideBarItem);
    procedure ShowHeader(item_title: WideString);
    procedure spSpliterPositionChanging(Sender: TObject;
      var NewPos: Integer; var Accept: Boolean);
    procedure dximOptionChange(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
    procedure gridEmpListChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    CustomForm: TfrmBase;
    LeftGridSize:integer;
  protected

  end;
procedure ViewEmployeeInfo(EMPLOYEE_NO, INFO_AREA: Variant);
var
  frmEmployees: TfrmEmployees;

implementation

uses EmpInfoDataModule, EmpInfoForm, MainDM, SSP_Library,
  EmpAbility, DB, IBODataset, WorkHistoryForm, EditBaseFrm,
  EmpDocumentForm, ToolbarFrame, EmpWageStandardForm,
  EmpRewardDisciplineForm, EmpHistoryForm, EmpMissionForm, EmpEstimateForm,
  EmpDocPrintForm, EmpListInputForm, EmpMoreInputForm, LaborLicenseForm;
{$R *.dfm}

procedure ViewEmployeeInfo(EMPLOYEE_NO, INFO_AREA: Variant);
begin
  ShowMDIForm(TfrmEmployees, frmEmployees);

  if EmpInfoDM.qryEmpList.Locate('EMPLOYEE_NO', EMPLOYEE_NO, []) = false then
    ShowMessageUnicode(43);
  if INFO_AREA = 'TT_CHUNG' then
  begin
    frmEmployees.ShowDetail(TfrmEmpInfo);
    frmEmployees.ShowHeader(frmEmployees.dxsidebarMenu.Groups[0].Items[0].Caption);
  end;

end;

procedure TfrmEmployees.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  EmpInfoDM.acHuymemHesoHD_QD.Execute;
  EmpInfoDM.CloseData;
  if (FormStyle = fsMDIChild) then
  begin
    Action := caFree;
    frmEmployees := nil;
  end;
end;

procedure TfrmEmployees.FormCreate(Sender: TObject);
begin
  dximOption.Tag := 1;
  dximOption.Descriptions.Add(Utf8Decode('Đang làm việc'));
  dximOption.Descriptions.Add(Utf8Decode('Đã thôi việc'));
  dximOption.Descriptions.Add(Utf8Decode('Tất cả'));
  dximOption.Values.Add('WORK');
  dximOption.Values.Add('OUT');
  dximOption.Values.Add('ALL');

  dximOption.Text := 'ALL';
  dximOption.Tag := 0;
  inherited;
  LeftGridSize:=panelLeft.Width;

  EmpInfoDM.acTaomemHesoHD_QD.Execute;
  acGetEmpList.Execute;
  ShowDetail(TfrmEmpInfo);
  ShowHeader(dxsidebarMenu.Groups[0].Items[0].Caption);
end;

procedure TfrmEmployees.ShowHeader(item_title: WideString);
begin
  lblReportCaption.Caption :=
    WideUpperCase(
//   fcMain.Texts[0].Caption+' - '+
    item_title);
end;

procedure TfrmEmployees.ShowDetail(form_class: TFormClass);
var frame: TComponent;
  old_form: TfrmBase;
begin
  old_form := nil;
  if Assigned(CustomForm) then
  begin
    if (CustomForm is form_class) then
      Exit
    else
      old_form := CustomForm;
  end;
  if form_class = TfrmEmpInfo then
    CustomForm := TfrmEmpInfo.Create(panelShowForm)
  else
    Application.CreateForm(form_class, CustomForm);

  frame := CustomForm.FindComponent('frameToolbar1');
  if Assigned(frame) and (frame is TframeToolbar) then
    TframeToolbar(frame).dxLayoutControl1Item14.Visible := false;

  with CustomForm do
  try
    ApplyOption(TControl(CustomForm));
    BorderStyle := bsNone;
    Align := alClient;
    Parent := panelShowForm;
    Visible := true;
  finally
  end;
  if Assigned(old_form) then
  begin
    old_form.Close;
    old_form.Free;
  end;
end;

procedure TfrmEmployees.acGetEmpListExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  with EmpInfoDM.qryEmpList do
  begin
    DisableControls;
    if Active then Close;
    if dximOption.Text = 'ALL' then
      SQLWhere.Text := ' where (IS_CADIDATE is null) or (IS_CADIDATE=0) '
    else
      if dximOption.Text = 'WORK' then
        SQLWhere.Text := ' where ((IS_CADIDATE is null) or (IS_CADIDATE=0)) and ((STATE is null) or (STATE=''WORK''))'
      else
        if dximOption.Text = 'OUT' then
          SQLWhere.Text := ' where ((IS_CADIDATE is null) or (IS_CADIDATE=0)) and STATE=''OUT''';

    Open;
    EnableControls;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmEmployees.dxsidebarMenuItemClick(Sender: TObject;
  Item: TdxSideBarItem);
begin
  inherited;
  ShowHeader(item.Caption);
  panelLeft.Visible:=(item.Group.Index<2);
  ElSplitter1.Visible:=(item.Group.Index<2);
  if item.CustomData = 'TT_CHUNG' then
    ShowDetail(TfrmEmpInfo)
  else
    if item.CustomData = 'TD_NANGLUC' then
    ShowDetail(TfrmEmpAbility)
  else
    if item.CustomData = 'QT_CONGTAC' then
    ShowDetail(TfrmWorkHistory)
  else
    if item.CustomData = 'HOPDONG_HS' then
    ShowDetail(TfrmEmpDocument)
  else
    if item.CustomData = 'LUONG_CBNN' then
    ShowDetail(TfrmEmpWageStandard)
  else
    if item.CustomData = 'KHENTHUONG_KL' then
    ShowDetail(TfrmEmpRewardDiscipline)
  else
    if item.CustomData = 'TIEUSU_QH' then
    ShowDetail(TfrmEmpHistory)
  else
    if item.CustomData = 'CONGTAC' then
    ShowDetail(TfrmEmpMission)
  else
    if item.CustomData = 'DANHGIA_THIDUA' then
    ShowDetail(TfrmEmpEstimate)
  else
    if item.CustomData = 'IN_HOSO' then
    ShowDetail(TfrmEmpDocPrint)
  else
    if item.CustomData = 'DANHSACH_NHANVIEN' then
    ShowDetail(TfrmEmpListInput)
  else
  if item.CustomData = 'THONGTIN_THEM' then
    ShowDetail(TfrmEmpMoreInput)
  else
  if item.CustomData = 'LABOR_LICENSE' then
    ShowDetail(TfrmLaborlicense)
  else
end;

procedure TfrmEmployees.spSpliterPositionChanging(Sender: TObject;
  var NewPos: Integer; var Accept: Boolean);
begin
  inherited;
  gridEmpList.OptionsView := gridEmpList.OptionsView - [edgoAutoWidth];
end;

procedure TfrmEmployees.dximOptionChange(Sender: TObject);
begin
  inherited;
  if dximOption.Tag = 1 then exit
  else
    acGetEmpList.Execute;
end;

procedure TfrmEmployees.Splitter1Moved(Sender: TObject);
var grid_width, i, j: integer;
begin
  inherited;
  i := 0;
  j := 0;
  gridEmpList.OptionsView := gridEmpList.OptionsView - [edgoAutoWidth];
  grid_width := gridEmpList.Width;
  repeat
    gridEmpList.Columns[j].Visible := (i <= grid_width);
    i := i + gridEmpList.Columns[j].Width;
    j := j + 1;
  until (j >= gridEmpList.ColumnCount);
  gridEmpList.OptionsView := gridEmpList.OptionsView + [edgoAutoWidth];
end;

procedure TfrmEmployees.gridEmpListChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  inherited;
  if (CustomForm is TfrmEmpDocPrint) then
  begin
    (CustomForm as TfrmEmpDocPrint).acRefreshMemHesoHD_QD.Execute;
    (CustomForm as TfrmEmpDocPrint).acViewReport.Execute;
 end
  else
    if (CustomForm is TfrmEmpWageStandard) then
    EmpInfoDM.acRefreshMemHesoHD_QD.execute;
end;

procedure TfrmEmployees.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F10 then
  begin
    if Assigned(CustomForm) then
      dmMain.ScanForm(CustomForm)
    else
      dmMain.ScanForm(self);
  end
  else
    if Key = VK_F11 then
    dmMain.ScanForm(self)
   else
  if (Key = VK_F12) and (Shift=[ssCtrl,ssShift]) then
    AuthorityConfig(self)
  else
  if (Key = VK_F12) and (Shift=[ssCtrl]) then
    AuthorityConfig(CustomForm)
  else
  if (Key = VK_F12) then
    AuthorityConfig(EmpInfoDM)
  else
  if (Key = VK_F1) and (Shift=[ssCtrl]) then
    ShowHelpContext(CustomForm.HelpFile)else
  if (Key = VK_F9) and (Shift=[ssCtrl]) then
    LogConfig(EmpInfoDM)
  else
end;

end.

