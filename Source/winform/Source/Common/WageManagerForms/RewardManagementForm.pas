unit RewardManagementForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, cxControls,
  ExtCtrls, ElPanel, ElSplit, dxEdLib, ElBtnCtl, ElPopBtn, dxEditor, DB,
  IBODataset, ActnList, dxDBELib, DBActns, dxDBTLCl, dxGrClEx, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppTypes, ppEndUsr,
  dxGrClms;

type
  TfrmRewardManagement = class(TfrmBase)
    PanelBackground: TElPanel;
    LeftPanel: TElPanel;
    RightPanel: TElPanel;
    ElSplitter1: TElSplitter;
    gridRewardResion: TdxDBGrid;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    qryResion: TIBOQuery;
    dsREsion: TDataSource;
    qryResionDetail: TIBOQuery;
    dsResionDetail: TDataSource;
    chkViewAll: TdxCheckEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxSoTien: TdxCalcEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    gridResionDetail: TdxDBGrid;
    dxLayoutControl1Item10: TdxLayoutItem;
    ActionList1: TActionList;
    acXem: TAction;
    acNhapNhanh: TAction;
    acXemTruoc: TAction;
    acThietKe: TAction;
    acIn: TAction;
    qryDeptList: TIBOQuery;
    dsDeptList: TDataSource;
    qryDeptListDEPT_NO: TWideStringField;
    qryDeptListDEPT_NAME: TWideStringField;
    qryDeptListP_DEPT_NO: TWideStringField;
    cmbDeptList: TdxPopupEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    qryResionRESION_NO: TIntegerField;
    qryResionLY_DO: TWideStringField;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl2Item1: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl2Item2: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    ElPopupButton6: TElPopupButton;
    dxLayoutControl2Item4: TdxLayoutItem;
    ElPopupButton7: TElPopupButton;
    dxLayoutControl2Item5: TdxLayoutItem;
    ElPopupButton8: TElPopupButton;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxPopupEdit1: TdxPopupEdit;
    dxLayoutControl2Item7: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    ElPopupButton9: TElPopupButton;
    dxLayoutControl2Item8: TdxLayoutItem;
    DataSetInsert1: TDataSetInsert;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    qryResionDetailEMPLOYEE_NO: TWideStringField;
    qryResionDetailFULL_NAME: TWideStringField;
    qryResionDetailRESION_NO: TIntegerField;
    qryResionDetailSO_TIEN: TIBOFloatField;
    gridResionDetailRESION_NO: TdxDBGridMaskColumn;
    acChonNhanh: TAction;
    gridResionDetailEMPLOYEE_NO: TdxDBGridMaskColumn;
    gridResionDetailFULL_NAME: TdxDBGridPopupColumn;
    qryExecute: TIBOQuery;
    ppResionDetail: TppDBPipeline;
    rpResionDetail: TppReport;
    dsnResionDetail: TppDesigner;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    qryResionDetailTITLE_NAME: TWideStringField;
    qryResionDetailDEPT_NAME: TWideStringField;
    gridResionDetailTITLE_NAME: TdxDBGridMaskColumn;
    gridResionDetailDEPT_NAME: TdxDBGridMaskColumn;
    gridResionDetailSO_TIEN: TdxDBGridCalcColumn;
    qryResionDetailLY_DO: TWideStringField;
    gridRewardResionRESION_NO: TdxDBGridColumn;
    gridRewardResionLY_DO: TdxDBGridColumn;
    qryResionTHANG: TSmallintField;
    qryResionNAM: TSmallintField;
    qryResionCO_TINH_THUE: TSmallintField;
    gridRewardResionTHANG: TdxDBGridSpinColumn;
    gridRewardResionNAM: TdxDBGridSpinColumn;
    gridRewardResionCO_TINH_THUE: TdxDBGridCheckColumn;
    qryThuongLe: TIBOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    IntegerField1: TIntegerField;
    IBOFloatField1: TIBOFloatField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    dsThuongLe: TDataSource;
    procedure cmbDeptListInitPopup(Sender: TObject);
    procedure cmbDeptListCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure acXemExecute(Sender: TObject);
    procedure dxPopupEdit1InitPopup(Sender: TObject);
    procedure gridRewardResionEnter(Sender: TObject);
    procedure gridResionDetailEnter(Sender: TObject);
    procedure acXemUpdate(Sender: TObject);
    procedure gridResionDetailFULL_NAMEInitPopup(Sender: TObject);
    procedure gridResionDetailFULL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure acChonNhanhExecute(Sender: TObject);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    function PrepareReport: boolean;
    procedure acXemTruocExecute(Sender: TObject);
    procedure acThietKeExecute(Sender: TObject);
    procedure gridResionDetailSO_TIENChange(Sender: TObject);
    procedure acInExecute(Sender: TObject);
    procedure acNhapNhanhExecute(Sender: TObject);
    procedure qryResionDetailBeforePost(DataSet: TDataSet);
    procedure acNhapNhanhUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    DEPT_NO : string;
    F_TEMPLATE_PATH : string;
    temp : string;
  end;

var
  frmRewardManagement: TfrmRewardManagement;

implementation

uses MainDM, PopupMainForm, SSP_Library, MainUnit, EmpForSelectForm;

{$R *.dfm}

procedure TfrmRewardManagement.cmbDeptListInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList',frmPopupMain,Sender,2.5);
  frmPopupMain.dxtlDeptList.FullExpand;
end;

procedure TfrmRewardManagement.cmbDeptListCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryDeptListDEPT_NAME.Value;
    DEPT_NO := frmPopupMain.qryDeptListDEPT_NO.Value;
  end;
  frmPopupMain.qryDeptList.Close;
  //qryResionDetail.Close;
end;

procedure TfrmRewardManagement.FormCreate(Sender: TObject);
begin
  inherited;
  qryResion.open;
end;

procedure TfrmRewardManagement.acXemExecute(Sender: TObject);
begin
  inherited;
  //
  if qryResionDetail.active then
    qryResionDetail.close;
  qryResionDetail.ParamByName('DEPT_NO').Value := DEPT_NO;
  qryResionDetail.ParamByName('USER_NAME').Value := sysConfig.Username ;
  qryResionDetail.ParamByName('RESION_NO').Value := qryResionRESION_NO.Value;
  if chkViewAll.Checked then
    qryResionDetail.ParamByName('VIEW_ALL').Value := 1
  else
    qryResionDetail.ParamByName('VIEW_ALL').Value := 0;


  qryResionDetail.Open;
  //ShowMessage(qryResionDetail.SQL.Text);
end;

procedure TfrmRewardManagement.dxPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryReportTemplateList.ParamByname('TEMPLATE_TYPE').Value := 2;
    //Bang luong
  frmPopupMain.qryReportTemplateList.Open;
  InitPopupControl('dxlcReportTemplateList', frmPopupMain, sender, 2.5);
end;

procedure TfrmRewardManagement.gridRewardResionEnter(Sender: TObject);
begin
  inherited;
  DataSetInsert1.datasource := dsREsion;
  DataSetPost1.datasource := dsREsion;
  DataSetCancel1.datasource := dsREsion;
  DataSetDelete1.datasource := dsREsion;
end;

procedure TfrmRewardManagement.gridResionDetailEnter(Sender: TObject);
begin
  inherited;
//  DataSetInsert1.datasource := dsResionDetail;
  DataSetPost1.datasource := dsResionDetail;
  DataSetCancel1.datasource := dsResionDetail;
//  DataSetDelete1.datasource := dsResionDetail;
end;

procedure TfrmRewardManagement.acXemUpdate(Sender: TObject);
begin
  inherited;
  if DEPT_NO <> '' then acXem.Enabled := true
  else acXem.Enabled := false;
end;

procedure TfrmRewardManagement.gridResionDetailFULL_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  if frmPopupMain.qryEmpForSelect.Active then
    frmPopupMain.qryEmpForSelect.close;
{  frmPopupMain.qryEmpForSelect.SQLWhere.Text :=
        frmPopupMain.qryEmpForSelect.SQLWhere.Text + ' and HR_MASK_EMPLOYEE.DEPT_NO=:DEPT_NO';
}
  temp := frmPopupMain.qryEmpForSelect.SQL.Text;
  frmPopupMain.qryEmpForSelect.SQL.Clear;
  frmPopupMain.qryEmpForSelect.SQL.Text := 
    'SELECT '+
        'HR_MASK_EMPLOYEE.EMPLOYEE_NO '+
      ', FULL_NAME '+
      ', GENDER '+
      ', BIRTH_DATE '+
      ', EDU_LEVEL_NAME '+
      ', CAREER_NAME '+
      ', EMAIL '+
    'FROM HR_MASK_EMPLOYEE(:USER_NAME) '+
    'LEFT JOIN HR_EMP_PRIVATE_INFO '+
      'on HR_MASK_EMPLOYEE.EMPLOYEE_NO=HR_EMP_PRIVATE_INFO.EMPLOYEE_NO '+
    'LEFT JOIN HR_EDU_LEVEL on TRINH_DO=EDU_LEVEL_NO '+
    'LEFT JOIN HR_CAREER on NGHE_NGHIEP=CAREER_NO '+
    'LEFT JOIN HR_ASSIGNMENT ON HR_MASK_EMPLOYEE.EMPLOYEE_NO=HR_ASSIGNMENT.EMPLOYEE_NO AND '+
    '  IS_MAIN_POSITION=1 AND '+
    '  DISMISS_DATE IS NULL '+
    'LEFT JOIN HR_POSITION ON HR_ASSIGNMENT.POSITION_NO=HR_POSITION.POSITION_NO '+
    'LEFT JOIN HR_TITLE ON HR_POSITION.TITLE_NO=HR_TITLE.TITLE_NO '+
    'LEFT JOIN HR_DEPARTMENT ON HR_POSITION.DEPT_NO=HR_DEPARTMENT.DEPT_NO '+
    'where IS_CADIDATE=0  and '+
    '  (( '+
    '    :view_child=0 and hr_department.dept_no=:DEPT_NO '+
    '  ) or '+
    '  ( '+
    '    :view_child=1 '+
    '    and hr_department.dept_left_index>=(select hr_department.dept_left_index '+
    '                                     from hr_department '+
    '                                     where hr_department.dept_no = :DEPT_NO) '+
    '    and hr_department.dept_right_index<=(select hr_department.dept_right_index '+
    '                                     from hr_department '+
    '                                     where hr_department.dept_no = :DEPT_NO) '+
    '  )) and '+
    '  (hr_department.ended_date is null)';


  frmPopupMain.qryEmpForSelect.ParamByName('DEPT_NO').Value := DEPT_NO;
  if chkViewAll.Checked then
    frmPopupMain.qryEmpForSelect.ParamByName('VIEW_CHILD').Value := 1
  else
    frmPopupMain.qryEmpForSelect.ParamByName('VIEW_CHILD').Value := 0;
  //Edited by THUYPTP - 28/4/2009
  //frmPopupMain.qryEmpForSelect.Open;
  frmPopupMain.dximOptionChange(sender);
  //Het
  InitPopupControl('dxlcEmpForSelect', frmPopupMain, sender, 2.5,
    gridResionDetail);
end;

procedure TfrmRewardManagement.gridResionDetailFULL_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryEmpForSelect,
    qryResionDetail,
    'EMPLOYEE_NO;FULL_NAME',
    'EMPLOYEE_NO;FULL_NAME',
    'FULL_NAME', Text);
  frmPopupMain.qryEmpForSelect.Close;
  frmPopupMain.qryEmpForSelect.SQL.Text := temp;
  temp := '';
end;

procedure TfrmRewardManagement.acChonNhanhExecute(Sender: TObject);
begin
  inherited;
  acXem.Execute;
  with TfrmEmpForSelect.Create(self) do
  try
    if qryList.active then
      qryList.close;
    qryList.SQL.Clear;
    qryList.SQL.Text :=
      'SELECT '+
            'HR_MASK_EMPLOYEE.EMPLOYEE_NO '+
          ', FULL_NAME '+
          ', GENDER '+
          ', BIRTH_DATE '+
          ', EDU_LEVEL_NAME '+
          ', CAREER_NAME '+
          ', HR_MASK_EMPLOYEE.TITLE_NAME '+
          ', HR_MASK_EMPLOYEE.DEPT_NAME '+

      'FROM HR_MASK_EMPLOYEE(:USER_NAME) '+
      'left JOIN HR_EMP_PRIVATE_INFO '+
        'on HR_MASK_EMPLOYEE.EMPLOYEE_NO=HR_EMP_PRIVATE_INFO.EMPLOYEE_NO '+
      'LEFT JOIN HR_EDU_LEVEL on TRINH_DO=EDU_LEVEL_NO '+
      'LEFT JOIN HR_CAREER on NGHE_NGHIEP=CAREER_NO '+
      'LEFT JOIN HR_ASSIGNMENT ON HR_MASK_EMPLOYEE.EMPLOYEE_NO=HR_ASSIGNMENT.EMPLOYEE_NO AND '+
        'IS_MAIN_POSITION=1 AND '+
        'DISMISS_DATE IS NULL '+
      'LEFT JOIN HR_POSITION ON HR_ASSIGNMENT.POSITION_NO=HR_POSITION.POSITION_NO '+
      'LEFT JOIN HR_TITLE ON HR_POSITION.TITLE_NO=HR_TITLE.TITLE_NO '+
      'LEFT JOIN HR_DEPARTMENT ON HR_POSITION.DEPT_NO=HR_DEPARTMENT.DEPT_NO '+
      'where IS_CADIDATE=0  and '+
      '(( '+
      '  :view_child=0 and hr_department.dept_no=:DEPT_NO '+
      ') or '+
      '( '+
        ':view_child=1 '+
        'and hr_department.dept_left_index>=(select hr_department.dept_left_index '+
                                         'from hr_department '+
                                         'where hr_department.dept_no = :DEPT_NO) '+
        'and hr_department.dept_right_index<=(select hr_department.dept_right_index '+
                                         'from hr_department '+
                                         'where hr_department.dept_no = :DEPT_NO) '+
      ')) and '+
      '(hr_department.ended_date is null)';


    qryList.SQLWhere.text :=  qryList.SQLWhere.text+{' and HR_MASK_EMPLOYEE.DEPT_NO=:DEPT_NO '+}
        ' and HR_MASK_EMPLOYEE.EMPLOYEE_NO not in (select EMPLOYEE_NO from HR_REWARD_RESION_DETAIL '
        +' where HR_REWARD_RESION_DETAIL.RESION_NO =:RESION_NO)';

    qryList.ParamByName('DEPT_NO').Value := DEPT_NO;
    if chkViewAll.Checked then
      qryList.ParamByName('VIEW_CHILD').Value := 1
    else
      qryList.ParamByName('VIEW_CHILD').Value := 0;
    qryList.ParamByName('RESION_NO').Value := qryResionRESION_NO.Value;
    qryList.open;

    memList.Close;
    memList.Open;
    If qryList.RecordCount>0 then
    begin
      memList.DisableControls;
      memList.Tag:=1;
      qryList.Last;
      while not qryList.Bof do
      begin
        memList.Insert;
        memListEMPLOYEE_NO.Value:=qryListEMPLOYEE_NO.Value;
        memListFULL_NAME.Value:=qryListFULL_NAME.Value;
        if not qryListGENDER.IsNull then
          memListGENDER.Value:=qryListGENDER.Value
        else
          memListGENDER.Clear;
        if not qryListBIRTH_DATE.IsNull then
          memListBIRTH_DATE.Value:=qryListBIRTH_DATE.Value
        else
          memListBIRTH_DATE.Clear;
        if not qryListEDU_LEVEL_NAME.IsNull then
          memListEDU_LEVEL_NAME.Value:=qryListEDU_LEVEL_NAME.Value
        else
          memListEDU_LEVEL_NAME.Clear;
        if not qryListCAREER_NAME.IsNull then
          memListCAREER_NAME.Value:=qryListCAREER_NAME.Value
        else
          memListCAREER_NAME.Clear;
        if not qryListTITLE_NAME.IsNull then
          memListTITLE_NAME.Value:=qryListTITLE_NAME.Value
        else
          memListTITLE_NAME.Clear;
        if not qryListDEPT_NAME.IsNull then
          memListDEPT_NAME.Value:=qryListDEPT_NAME.Value
        else
          memListDEPT_NAME.Clear;
        memListSELECTED.Value:=0;
        memList.Post;
        qryList.Prior;
      end;
      memList.Tag:=0;
      memList.EnableControls;
    end;
    /////////////////////////////////////////////
    if ShowModal = mrOk then
    begin
      Screen.Cursor := crSQLWait;
      if qryResionDetail.State in [dsInsert,dsEdit] then
        qryResionDetail.Cancel;
      qryResionDetail.DisableControls;
      if (memList.IsEmpty = false) then
      begin
        qryExecute.SQL.Text := 'INSERT INTO HR_REWARD_RESION_DETAIL(EMPLOYEE_NO, RESION_NO) ' +
          ' VALUES (:EMPLOYEE_NO, :RESION_NO)';
        frmMain.SetStatusBarPrgDisplay(0, memList.RecordCount);
        memList.First;
        while not memList.Eof do
        begin
          if memListSELECTED.Value = 1 then
            if not qryResionDetail.Locate('EMPLOYEE_NO',
              memListEMPLOYEE_NO.Value, []) then
            begin
              qryExecute.ParamByName('RESION_NO').Value := qryResionRESION_NO.Value;
              qryExecute.ParamByName('EMPLOYEE_NO').Value := memListEMPLOYEE_NO.Value;
              try
                dmMain.ExecuteSQL(qryExecute);
              except
              end;
            end;
          memList.Next;
          frmMain.BarPrgStepIt;
        end;
        dmMain.CommitTransaction;
        qryResionDetail.Refresh;
      end;
      qryResionDetail.EnableControls;
      //if State <> 'NEW' then State := 'EDIT';
      Screen.Cursor := crDefault;
    end;
  finally
    Free;
  end;
end;

procedure TfrmRewardManagement.dxPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryReportTemplateListTEMPLATE_NAME.Value;
    F_TEMPLATE_PATH := frmPopupMain.qryReportTemplateListTEMPLATE_FILE.AsString;
  end;
  frmPopupMain.qryReportTemplateList.Close;
  DataSetInsert1.datasource := dsResionDetail;
  DataSetPost1.datasource := dsResionDetail;
  DataSetCancel1.datasource := dsResionDetail;
  DataSetDelete1.datasource := dsResionDetail;
end;

function TfrmRewardManagement.PrepareReport: boolean;
var
  pathName, pathDirectory: string;
begin
  try
    pathDirectory := ExtractFilePath(Application.ExeName) +
      'Reports\WageReport';
    case sysConfig.Language of
      0, 1:
        pathName := pathDirectory + '\Vn\' + F_TEMPLATE_PATH;
      2:
        pathName := pathDirectory + '\Eng\' + F_TEMPLATE_PATH;
    end;
    if (FileExists(pathName)) then
    begin
      rpResionDetail.Template.FileName := pathName;
      rpResionDetail.Template.Load;
    end
    else
    begin
      ShowMessageUnicode(24);
      Result := false;
      exit;
    end;
  except
    result := false;
    exit;
  end;
  result := true;
end;


procedure TfrmRewardManagement.acXemTruocExecute(Sender: TObject);
begin
  inherited;
  if qrythuongle.Active then qrythuongle.Close;
  qrythuongle.open;
  if PrepareReport = false then exit;
  rpResionDetail.AllowPrintToFile := True;
  rpResionDetail.DeviceType := dtScreen;
  rpResionDetail.Print;
end;

procedure TfrmRewardManagement.acThietKeExecute(Sender: TObject);
begin
  inherited;
  if qrythuongle.Active then qrythuongle.Close;
  qrythuongle.open;
  if PrepareReport = false then exit;
  dsnResionDetail.ShowModal;
  rpResionDetail.PrintToDevices;
end;

procedure TfrmRewardManagement.gridResionDetailSO_TIENChange(
  Sender: TObject);
begin
  inherited;
//  (sender as TdxDBGridMaskColumn).get;
end;

procedure TfrmRewardManagement.acInExecute(Sender: TObject);
begin
  inherited;
  if qrythuongle.Active then qrythuongle.Close;
  qrythuongle.open;
  if PrepareReport = false then exit;
  rpResionDetail.AllowPrintToFile := True;
  rpResionDetail.DeviceType := dtPrinter;
  rpResionDetail.Print;
end;

procedure TfrmRewardManagement.acNhapNhanhExecute(Sender: TObject);
var
  i : integer;
begin
  inherited;
  if dxSoTien.Text = '' then
  begin
    dxSoTien.Text := '0';
    exit;
  end;
  frmMain.SetStatusBarPrgDisplay(0, gridResionDetail.SelectedCount);
  if qryExecute.Active then
    qryExecute.close;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text:= ' update hr_reward_resion_detail'+
                        ' set hr_reward_resion_detail.so_tien = :SO_TIEN'+
                        ' where hr_reward_resion_detail.employee_no = :EMPLOYEE_NO'+
                        ' and hr_reward_resion_detail.resion_no = :RESION_NO';

  qryExecute.ParamByName('SO_TIEN').Value:=
          StrToFloat(dxSoTien.Text);
  qryExecute.ParamByName('RESION_NO').Value:=
          qryResionRESION_NO.Value;        
  for i := 0 to gridResionDetail.SelectedCount-1 do
  begin

    qryExecute.ParamByName('EMPLOYEE_NO').Value:=
          gridResionDetail.SelectedNodes[i].Values[gridResionDetailEMPLOYEE_NO.Index];

    //qryExecute.Open;
    qryExecute.ExecSQL;
    frmMain.BarPrgStepIt;
  end;

  qryResionDetail.Refresh;
end;

procedure TfrmRewardManagement.qryResionDetailBeforePost(
  DataSet: TDataSet);
begin
  inherited;
 // if gridResionDetail.SelectedNodes[0].Values[gridResionDetailSO_TIEN.Index] = '' then
 // ShowMessage(VarToStr(gridResionDetail.SelectedNodes[0].Values[gridResionDetailSO_TIEN.Index]));
    //qryResionDetailSO_TIEN.Value := 0;
end;

procedure TfrmRewardManagement.acNhapNhanhUpdate(Sender: TObject);
begin
  inherited;
  if gridResionDetail.SelectedCount = 0 then
    acNhapNhanh.Enabled := false
  else
    acNhapNhanh.Enabled := true;
end;

procedure TfrmRewardManagement.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryResion.Close;
  qryResionDetail.Close;    
end;

end.

