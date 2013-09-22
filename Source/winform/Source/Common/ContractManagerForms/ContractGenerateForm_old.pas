unit ContractGenerateForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ExtCtrls,
  dxsbar, Menus, ImgList, ElPgCtl, dxLayoutControl, cxControls, DB,
  IBODataset, dxExEdtr, dxEdLib, dxDBELib, dxEditor, dxCntner, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, dxGrClEx, dxTL, dxmdaset, ToolbarFrame,
  ActnList, dxBar, ElBtnCtl, ElPopBtn, ElEdits, ElBtnEdit, ElMemoCombo;

type
  TfrmContractGenerate = class(TfrmBase)
    dxsidebarMenu: TdxSideBar;
    ImageList1: TImageList;
    pageMain: TElPageControl;
    tabHopdongMau: TElTabSheet;
    tabChonDSNhanvien: TElTabSheet;
    tabKetqua: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dsTemplate: TDataSource;
    qryTemplate: TIBOQuery;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBPopupEdit1: TdxDBPopupEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxDBPopupEdit2: TdxDBPopupEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxDBDateEdit1: TdxDBDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxDBDateEdit2: TdxDBDateEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxDBPopupEdit3: TdxDBPopupEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    pageTemplate: TElPageControl;
    dxLayoutControl1Item8: TdxLayoutItem;
    tabVitriCongtac: TElTabSheet;
    tabLuong: TElTabSheet;
    ImageList2: TImageList;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutControl5: TdxLayoutControl;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutControl4Group1: TdxLayoutGroup;
    dxLayoutControl4Group2: TdxLayoutGroup;
    dxDBPopupEdit4: TdxDBPopupEdit;
    dxLayoutControl4Item1: TdxLayoutItem;
    dxDBDateEdit3: TdxDBDateEdit;
    dxLayoutControl4Item2: TdxLayoutItem;
    dxDBDateEdit4: TdxDBDateEdit;
    dxLayoutControl4Item3: TdxLayoutItem;
    dxLayoutControl4Group4: TdxLayoutGroup;
    dxDBEdit3: TdxDBEdit;
    dxLayoutControl4Item4: TdxLayoutItem;
    dxDBEdit4: TdxDBEdit;
    dxLayoutControl4Item5: TdxLayoutItem;
    dxDBEdit5: TdxDBEdit;
    dxLayoutControl4Item6: TdxLayoutItem;
    dxLayoutControl4Group3: TdxLayoutGroup;
    dxDBMemo1: TdxDBMemo;
    dxLayoutControl4Item7: TdxLayoutItem;
    qryTemplateTEMPLATE_NO: TIntegerField;
    qryTemplateCONTRACT_TYPE_NO: TWideStringField;
    qryTemplateCONTRACT_NAME: TWideStringField;
    qryTemplateREPRESENTATIVE: TWideStringField;
    qryTemplateEMPLOYER_NO: TWideStringField;
    qryTemplateDEPT_NAME: TWideStringField;
    qryTemplateSTARTED_DATE: TDateField;
    qryTemplateEXPIRED_DATE: TDateField;
    qryTemplateFILE_CONTENT: TBlobField;
    qryTemplateFILE_NAME: TWideStringField;
    qryTemplateTEMPLATE_FILE: TWideStringField;
    qryTemplateCONTRACT_NOTE: TWideStringField;
    qryTemplateCONGVIEC_PHAILAM: TWideStringField;
    qryTemplateTHOIGIAN_LAMCHINH: TWideStringField;
    qryTemplateTHOIGIAN_LAMTHEM: TWideStringField;
    qryTemplateGHICHU: TWideStringField;
    qryTemplatePOSITION_NO: TWideStringField;
    qryTemplatePOSITION_NAME: TWideStringField;
    qryTemplateASSIGNED_DATE: TDateField;
    qryTemplateENDED_DATE: TDateField;
    qryTemplateCONTRACT_TYPE_NAME: TWideStringField;
    qryTemplateTIME_LIMIT: TIntegerField;
    qryTemplateTIME_UNIT: TIntegerField;
    memEmployee: TdxMemData;
    memEmployeeEMPLOYEE_NO: TWideStringField;
    memEmployeeFULL_NAME: TWideStringField;
    memEmployeeGENDER: TIntegerField;
    memEmployeeBIRTH_DATE: TDateField;
    memEmployeeEDU_LEVEL_NAME: TWideStringField;
    memEmployeeCAREER_NAME: TWideStringField;
    memEmployeeDEPT_NAME: TWideStringField;
    memEmployeeTITLE_NAME: TWideStringField;
    dsEmployee: TDataSource;
    gridEmp: TdxDBGrid;
    gridEmpEMPLOYEE_NO: TdxDBGridColumn;
    gridEmpFULL_NAME: TdxDBGridPopupColumn;
    gridEmpBIRTH_DATE: TdxDBGridDateColumn;
    gridEmpGENDER: TdxDBGridImageColumn;
    gridEmpCAREER_NAME: TdxDBGridMaskColumn;
    gridEmpEDU_LEVEL_NAME: TdxDBGridMaskColumn;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    frameToolbar1: TframeToolbar;
    ActionList1: TActionList;
    acChonnhanh: TAction;
    dxLayoutControl5Group1: TdxLayoutGroup;
    gridFormal: TdxDBGrid;
    dxLayoutControl5Item1: TdxLayoutItem;
    qryFormal: TIBOQuery;
    dsFormal: TDataSource;
    qryFormalTEMPLATE_NO: TIntegerField;
    qryFormalFORMAL_PARAM: TWideStringField;
    qryFormalPARAM_NAME: TWideStringField;
    qryFormalFORMAL_VALUE: TIBOFloatField;
    gridFormalPARAM_NAME: TdxDBGridColumn;
    gridFormalFORMAL_VALUE: TdxDBGridCalcColumn;
    qryExecute: TIBOQuery;
    acRefreshFormal: TAction;
    gridFormalFORMAL_PARAM: TdxDBGridColumn;
    dxBarManager1: TdxBarManager;
    menuFormal: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl3Item2: TdxLayoutItem;
    acCreateContract: TAction;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Item3: TdxLayoutItem;
    viewMessage: TElMemoCombo;
    memEmployeeRESULT: TIntegerField;
    dxLayoutControl3Item4: TdxLayoutItem;
    gridResult: TdxDBGrid;
    memEmployeeCONTRACT_NO: TWideStringField;
    gridResultEMPLOYEE_NO: TdxDBGridColumn;
    gridResultFULL_NAME: TdxDBGridColumn;
    gridResultCONTRACT_NO: TdxDBGridColumn;
    gridResultRESULT: TdxDBGridImageColumn;
    memEmployeeMESSAGE: TWideStringField;
    gridResultMESSAGE: TdxDBGridColumn;
    qryCreateContract: TIBOQuery;
    qryAssignPosition: TIBOQuery;
    qryUpdateParam: TIBOQuery;
    qryContractItem: TIBOQuery;
    procedure FormCreate(Sender: TObject);
    procedure dxsidebarMenuItemClick(Sender: TObject;
      Item: TdxSideBarItem);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBPopupEdit1InitPopup(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit2InitPopup(Sender: TObject);
    procedure dxDBPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit3CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit3InitPopup(Sender: TObject);
    procedure dxDBPopupEdit4InitPopup(Sender: TObject);
    procedure dxDBPopupEdit4CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryTemplateSTARTED_DATEChange(Sender: TField);
    procedure qryTemplateTIME_LIMITChange(Sender: TField);
    procedure d(DataSet: TDataSet);
    procedure gridEmpFULL_NAMEInitPopup(Sender: TObject);
    procedure gridEmpFULL_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure acChonnhanhExecute(Sender: TObject);
    procedure acRefreshFormalExecute(Sender: TObject);
    procedure gridFormalMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure memEmployeeNewRecord(DataSet: TDataSet);
    procedure InsertMessage(strLine:WideString;count:integer=0);
    procedure acCreateContractUpdate(Sender: TObject);
    procedure acCreateContractExecute(Sender: TObject);
    procedure qryTemplateCONTRACT_TYPE_NAMEChange(Sender: TField);
    procedure qryTemplatePOSITION_NAMEChange(Sender: TField);
    procedure qryCreateContractError(Sender: TObject;
      const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
      const SQLCODE: Integer; SQLMessage, SQL: TStringList;
      var RaiseException: Boolean);
    procedure qryAssignPositionError(Sender: TObject;
      const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
      const SQLCODE: Integer; SQLMessage, SQL: TStringList;
      var RaiseException: Boolean);
    procedure qryUpdateParamError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure pageMainChanging(Sender: TObject; NewPage: TElTabSheet;
      var AllowChange: Boolean);
    procedure gridResultCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: WideString; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
  private
    { Private declarations }
    F_STATE:String;
  public
    { Public declarations }
  end;

var
  frmContractGenerate: TfrmContractGenerate;

implementation

uses MainDM, SSP_Library, PopupMainForm,DateUtils, EmpForSelectForm,
  MainUnit;

{$R *.dfm}

procedure TfrmContractGenerate.FormCreate(Sender: TObject);
begin
  inherited;
  dxsidebarMenu.ShowGroups:=false;
  pageMain.ShowTabs:=false;
  pageMain.ActivePageIndex:=0;
  pageTemplate.ActivePageIndex:=0;
  qryTemplate.Open;
  qryFormal.Open;
  memEmployee.Open;
  frameToolbar1.SetDataSource(dsEmployee);
end;

procedure TfrmContractGenerate.dxsidebarMenuItemClick(Sender: TObject;
  Item: TdxSideBarItem);
begin
  inherited;
  if Item.CustomData='HD_M' then pageMain.ActivePage:=tabHopdongMau else
  if Item.CustomData='HD_DS' then pageMain.ActivePage:=tabChonDSNhanvien else
  if Item.CustomData='HD_KQ' then pageMain.ActivePage:=tabKetqua else
end;

procedure TfrmContractGenerate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qryFormal.State in [dsInsert,dsEdit] then
    qryFormal.Post;
  qryFormal.Close;  
  if qryTemplate.State in [dsInsert,dsEdit] then
    qryTemplate.Post;
  qryTemplate.Close;

  inherited;
end;

procedure TfrmContractGenerate.dxDBPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
    frmPopupMain.qryDeptList.Open;
    InitPopupControl('dxlcDeptList',frmPopupMain,sender,2);

end;

procedure TfrmContractGenerate.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryDeptList,qryTemplate,
        'DEPT_NO;DEPT_NAME','EMPLOYER_NO;DEPT_NAME','DEPT_NAME',Text);
    frmPopupMain.qryDeptList.Close;
end;

procedure TfrmContractGenerate.dxDBPopupEdit2InitPopup(Sender: TObject);
begin
  inherited;
    frmPopupMain.qryContractType.Open;
    InitPopupControl('dxlcContractType',frmPopupMain,sender,2);

end;

procedure TfrmContractGenerate.dxDBPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryContractType, qryTemplate,
    'CONTRACT_TYPE_NO;CONTRACT_TYPE_NAME;REPORT_DEFAULT;TIME_LIMIT;TIME_UNIT',
      'CONTRACT_TYPE_NO;CONTRACT_TYPE_NAME;TEMPLATE_FILE;TIME_LIMIT;TIME_UNIT',
    'CONTRACT_TYPE_NAME', Text);
  frmPopupMain.qryContractType.Close;
end;

procedure TfrmContractGenerate.dxDBPopupEdit3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryReportTemplateList,
    qryTemplate,
    'TEMPLATE_FILE', 'TEMPLATE_FILE',
    'TEMPLATE_FILE', Text);
  frmPopupMain.qryReportTemplateList.Close;
end;

procedure TfrmContractGenerate.dxDBPopupEdit3InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryReportTemplateList.ParamByname('TEMPLATE_TYPE').Value := 1;
  frmPopupMain.qryReportTemplateList.Open;
  InitPopupControl('dxlcReportTemplateList', frmPopupMain, sender, 2.5);
end;

procedure TfrmContractGenerate.dxDBPopupEdit4InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryPosition.Open;
  InitPopupControl('dxlcPosition', frmPopupMain, sender, 2.5);
end;

procedure TfrmContractGenerate.dxDBPopupEdit4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryPosition, qryTemplate,
    'POSITION_NO;POSITION_TITLE', 'POSITION_NO;POSITION_NAME',
    'POSITION_TITLE', Text);
  frmPopupMain.qryPosition.Close;
end;

procedure TfrmContractGenerate.qryTemplateSTARTED_DATEChange(
  Sender: TField);
begin
  inherited;
 qryTemplateEXPIRED_DATE.Value :=
 qryTemplateSTARTED_DATE.Value +
 qryTemplateTIME_LIMIT.AsInteger *qryTemplateTIME_UNIT.AsInteger;
end;

procedure TfrmContractGenerate.qryTemplateTIME_LIMITChange(Sender: TField);
begin
  inherited;
 if qryTemplateTIME_LIMIT.IsNull or qryTemplateTIME_UNIT.IsNull then exit
 else
  qryTemplateEXPIRED_DATE.Value :=
  qryTemplateSTARTED_DATE.Value +
  qryTemplateTIME_LIMIT.AsInteger *qryTemplateTIME_UNIT.AsInteger;
end;

procedure TfrmContractGenerate.d(DataSet: TDataSet);
begin
  inherited;
  qryTemplateTIME_LIMIT.Value:=0;
  qryTemplateTIME_UNIT.Value:=0;
  qryTemplateSTARTED_DATE.Value:=Today;
end;

procedure TfrmContractGenerate.gridEmpFULL_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryEmpForSelect.Open;
  InitPopupControl('dxlcEmpForSelect', frmPopupMain, sender, 2.5,
    gridEmp);
end;

procedure TfrmContractGenerate.gridEmpFULL_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryEmpForSelect,memEmployee,
    'EMPLOYEE_NO;FULL_NAME;GENDER;BIRTH_DATE;EDU_LEVEL_NAME;CAREER_NAME',
    'EMPLOYEE_NO;FULL_NAME;GENDER;BIRTH_DATE;EDU_LEVEL_NAME;CAREER_NAME',
    'FULL_NAME', Text);
  frmPopupMain.qryEmpForSelect.Close;
end;

procedure TfrmContractGenerate.acChonnhanhExecute(Sender: TObject);
begin
  inherited;
  with TfrmEmpForSelect.Create(self) do
  try
    if ShowModal = mrOk then
    begin
      Screen.Cursor := crSQLWait;
      if memEmployee.State in [dsInsert,dsEdit] then
        memEmployee.Cancel;
      memEmployee.DisableControls;
      if (memList.IsEmpty = false) then
      begin
        frmMain.SetStatusBarPrgDisplay(0, memList.RecordCount);
        memList.First;
        while not memList.Eof do
        begin
          if memListSELECTED.Value = 1 then
            if not memEmployee.Locate('EMPLOYEE_NO',
              memListEMPLOYEE_NO.Value, []) then
            begin
              memEmployee.Append;
              memEmployeeEMPLOYEE_NO.Value:=memListEMPLOYEE_NO.Value;
              memEmployeeFULL_NAME.Value:=memListFULL_NAME.Value;
              memEmployeeGENDER.Value:=memListGENDER.Value;
              memEmployeeBIRTH_DATE.Value:=memListBIRTH_DATE.Value;
              memEmployeeEDU_LEVEL_NAME.Value:=memListEDU_LEVEL_NAME.Value;
              memEmployeeCAREER_NAME.Value:=memListCAREER_NAME.Value;
              memEmployeeDEPT_NAME.Value:=memListDEPT_NAME.Value;
              memEmployeeTITLE_NAME.Value:=memListTITLE_NAME.Value;
              memEmployee.Post;
            end;
          memList.Next;
          frmMain.BarPrgStepIt;
        end;
      end;
      memEmployee.EnableControls;
      Screen.Cursor := crDefault;
    end;
  finally
    Free;
  end;
end;

procedure TfrmContractGenerate.acRefreshFormalExecute(Sender: TObject);
begin
  inherited;
  qryExecute.SQL.Text:='insert into hr_contract_formal(template_no,formal_param,formal_value) '+
   'select :template_no,param_no,0 from hr_formal_param where param_no not in '+
   '(select a.formal_param from hr_contract_formal a) ';
  qryExecute.Prepare;
  qryExecute.ParamByName('TEMPLATE_NO').Value:=qryTemplateTEMPLATE_NO.Value;
  qryExecute.ExecSQL;
  if qryFormal.Active then
    qryFormal.Close;
  qryFormal.Open;  
end;

procedure TfrmContractGenerate.gridFormalMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (Button = mbRight) then
  begin
    if frmMain.ShowGridMenus(TdxDBGrid(Sender)) then exit
    else menuFormal.PopupFromCursorPos;
  end;
end;

procedure TfrmContractGenerate.memEmployeeNewRecord(DataSet: TDataSet);
begin
  inherited;
  memEmployeeRESULT.Value:=0;
end;
procedure TfrmContractGenerate.InsertMessage(strLine:WideString;count:integer);
begin
  if viewMessage.LinesCount > 1 then
  begin
   viewMessage.Lines.Insert(2,UTF8Decode(strLine));
   viewMessage.Lines[1]:=Utf8Decode('Số lượng nhân viên đã xử lí: '+IntTostr(count));
  end
  else
  begin
   viewMessage.Lines.Insert(0,Utf8Decode(strLine));
   viewMessage.Lines.Insert(1,Utf8Decode('Số lượng nhân viên đã xử lí: 0'));
  end;
  viewMessage.Repaint; 
end;

procedure TfrmContractGenerate.acCreateContractUpdate(Sender: TObject);
begin
  inherited;
  acCreateContract.Enabled:=(not memEmployee.IsEmpty) and (F_STATE<>'Creating');
end;

procedure TfrmContractGenerate.acCreateContractExecute(Sender: TObject);
var OnError:Boolean;
    Contract_NO:WideString;
    count:integer;
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  OnError:=false;
  F_STATE:='Creating';
  if memEmployee.State in [dsInsert,dsEdit] then
    memEmployee.Post;
  frmMain.SetStatusBarPrgDisplay(0,memEmployee.RecordCount);
  memEmployee.DisableControls;
  memEmployee.First;
  InsertMessage('======NHẬT KÝ TIẾN TRÌNH PHÁT SINH HỢP ĐỒNG LAO ĐỘNG =======');
  count:=0;
  while not memEmployee.Eof do
  begin
    Inc(count);
    OnError:=false;
    // phat sinh hop dong lao dong
    try
      InsertMessage('* Nhân viên : '+ UTF8Encode(memEmployeeFULL_NAME.Value),count);
      Contract_NO:=dmMain.GenerateKeyData(201);
      qryCreateContract.ParamByName('CONTRACT_NO').Value:=Contract_NO;
      qryCreateContract.ParamByName('CONTRACT_NAME').Value:=qryTemplateCONTRACT_NAME.Value;
      qryCreateContract.ParamByName('CONTRACT_TYPE_NO').Value:=qryTemplateCONTRACT_TYPE_NO.Value;
      qryCreateContract.ParamByName('EMPLOYEE_NO').Value:=memEmployeeEMPLOYEE_NO.Value;
      qryCreateContract.ParamByName('EMPLOYER_NO').Value:=qryTemplateEMPLOYER_NO.Value;
      qryCreateContract.ParamByName('REPRESENTATIVE').Value:=qryTemplateREPRESENTATIVE.Value;
      qryCreateContract.ParamByName('STARTED_DATE').Value:=qryTemplateSTARTED_DATE.Value;
      qryCreateContract.ParamByName('EXPIRED_DATE').Value:=qryTemplateEXPIRED_DATE.Value;
      qryCreateContract.ParamByName('TEMPLATE_FILE').Value:=qryTemplateTEMPLATE_FILE.Value;
      qryCreateContract.ExecSQL;
      dmMain.IncreaseKeyData(201);
      qryContractItem.ParamByName('CONTRACT_NO').Value:=COntract_No;
      qryContractItem.ParamByName('CONGVIEC_PHAILAM').Value:=qryTemplateCONGVIEC_PHAILAM.Value;
      qryContractItem.ParamByName('THOIGIAN_LAMCHINH').Value:=qryTemplateTHOIGIAN_LAMCHINH.Value;
      qryContractItem.ParamByName('THOIGIAN_LAMTHEM').Value:=qryTemplateTHOIGIAN_LAMTHEM.Value;
      qryContractItem.ParamByName('GHICHU').Value:=qryTemplateGHICHU.Value;
      qryContractItem.ExecSQL;
      InsertMessage('   - Tạo nội dung hợp đồng lao động thành công !!!',count);
    except
      OnError:=true;
      InsertMessage('   - Có lỗi trong quá trình khởi tạo nội dung hợp đồng ...',count);
      if not (memEmployee.State in [dsEdit]) then
        memEmployee.Edit;
      memEmployeeRESULT.Value:=1;
    end;
    if not OnError then
    begin
    // phat sinh bo nhiem neu co
      if not (qryTemplatePOSITION_NO.IsNull or qryTemplateASSIGNED_DATE.IsNull) then
      begin
        try
          qryAssignPosition.ParamByName('CONTRACT_NO').Value:=Contract_NO;
          qryAssignPosition.ParamByName('EMPLOYEE_NO').Value:=memEmployeeEMPLOYEE_NO.Value;
          qryAssignPosition.ParamByName('POSITION_NO').Value:=qryTemplatePOSITION_NO.Value;
          qryAssignPosition.ParamByName('ASSIGNED_DATE').Value:=qryTemplateASSIGNED_DATE.Value;
          if qryTemplateENDED_DATE.IsNull then
            qryAssignPosition.ParamByName('ENDED_DATE').Clear
          else
            qryAssignPosition.ParamByName('ENDED_DATE').Value:=qryTemplateENDED_DATE.Value;
          qryAssignPosition.ParamByName('IS_MAIN_POSITION').Value:=1;
          qryAssignPosition.ExecSQL;
          InsertMessage('   - Xác định vị trí công việc:  thành công !!!',count);
        except
          InsertMessage('   - Có lỗi trong quá trình xác định vị trí làm việc ...',count);
          if not (memEmployee.State in [dsEdit]) then
            memEmployee.Edit;
            memEmployeeRESULT.Value:=1;
            OnError:=true;
        end;
      end;

    // phat sinh he so luong di kem
      if not qryFormal.IsEmpty then
      begin
        qryFormal.First;
        Onerror:=false;
        while not qryFormal.Eof do
        begin
          try
            qryUpdateParam.ParamByName('DOC_NO').Value:=Contract_NO;
            qryUpdateParam.ParamByName('DOC_TYPE').Value:='CONTRACT';
            qryUpdateParam.ParamByName('EMPLOYEE_NO').Value:=memEmployeeEMPLOYEE_NO.Value;
            qryUpdateParam.ParamByName('PARAM_NO').Value:=qryFormalFORMAL_PARAM.Value;
            qryUpdateParam.ParamByName('PARAM_VALUE').Value:=qryFormalFORMAL_VALUE.Value;
            qryUpdateParam.ExecSQL;
          except
            OnError:=true;
          end;
          qryFormal.Next;
        end;
        if Onerror then
        begin
           if not (memEmployee.State in [dsEdit]) then
              memEmployee.Edit;
           memEmployeeRESULT.Value:=1;
           InsertMessage('   - Có lỗi trong quá trình khởi tạo hệ số đi kèm hợp đồng ...',count);
        end
        else
        begin
           InsertMessage('   - Khởi tạo hệ số đi kèm hợp đồng thành công !!!',count);
        end;
      end;
    end;
    if not (memEmployee.State in [dsEdit]) then
      memEmployee.Edit;
    if memEmployeeRESULT.Value=0 then
      memEmployeeRESULT.Value:=2;
    memEmployee.Post;
    memEmployee.Next;
    frmMain.BarPrgStepIt;
  end;

  Screen.Cursor:=crDefault;
  if ShowMessageUnicode(79)=mrYes then
    dmMain.CommitTransaction
  else
    dmMain.RollbackTransaction;
    F_STATE:='';
  memEmployee.EnableControls;
end;

procedure TfrmContractGenerate.qryTemplateCONTRACT_TYPE_NAMEChange(
  Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,Sender.FieldName,'CONTRACT_TYPE_NO');
end;

procedure TfrmContractGenerate.qryTemplatePOSITION_NAMEChange(
  Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,Sender.FieldName,'POSITION_NO');
end;

procedure TfrmContractGenerate.qryCreateContractError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  inherited;
//
end;

procedure TfrmContractGenerate.qryAssignPositionError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  inherited;
//
end;

procedure TfrmContractGenerate.qryUpdateParamError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  inherited;
//
end;

procedure TfrmContractGenerate.pageMainChanging(Sender: TObject;
  NewPage: TElTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if pageMain.ActivePage=tabHopdongMau then
    AllowChange:=dmMain.MsgChangeDataSource(dsTemplate);
end;

procedure TfrmContractGenerate.gridResultCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: WideString; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
begin
  inherited;
  if ANode.Values[gridResultRESULT.Index]=1 then
    AColor:=clRed;
end;

end.
