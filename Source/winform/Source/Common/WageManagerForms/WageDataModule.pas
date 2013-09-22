unit WageDataModule;

interface

uses
  Forms, SysUtils, Classes, StBase, StExpr, DB, IBODataset, Controls,
    SSP_Script, LuongDacthu;
const
  MaxParamAmount = 1024;
type
  TWageDM = class(TDataModule)
    qryGetValue: TIBOQuery;
    qryGetParamList: TIBOQuery;
    qryGetParamListPARAM_NO: TWideStringField;
    qryGetParamListPARAM_TYPE: TWideStringField;
    qryGetParamValues: TIBOQuery;
    qryGetParamValuesEMPLOYEE_NO: TWideStringField;
    qryGetParamValuesFULL_NAME: TWideStringField;
    qryGetParamValuesPOSITION_NO: TWideStringField;
    qryGetParamValuesTITLE_NO: TWideStringField;
    qryGetParamValuesTITLE_NAME: TWideStringField;
    qryGetParamValuesDEPT_NO: TWideStringField;
    qryGetParamValuesDEPT_NAME: TWideStringField;
    qryGetParamValuesPARAM_NO: TWideStringField;
    qryGetParamValuesPARAM_NAME: TWideStringField;
    qryGetParamValuesPARAM_TYPE: TWideStringField;
    qryGetParamValuesPARAM_VALUE: TIBOFloatField;
    qryGetParamValuesPARAM_EXPRESSION: TWideStringField;
    qryExecute: TIBOQuery;
    qryGetParamValuesPARAM_FLAG: TSmallintField;
    qryGetParamValuesWAGE_METHOD: TWideStringField;
    qryGetParamValuesRESULT_TYPE: TSmallintField;
    procedure qryGetValueBeforeOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryExecuteBeforeOpen(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryGetValueError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);

  private
    { Private declarations }
      CUR_EMPLOYEE,
      CUR_DEPARTMENT,
      CUR_DUTY,
      CUR_POSITION,
      CUR_ASSIGNED_DATE,
      CUR_MONTH,
      CUR_YEAR,
      CUR_PERIOD,
      CUR_PERIOD_ID,
      CUR_FROM_DATE,
      CUR_WAGE_GROUP,
      CUR_WAGE_METHOD,
      CUR_TO_DATE, CUR_DATE: Variant;
    F_IS_TESTING: boolean;
    FOR_DEPT_NO: Boolean;

    paramList: array[0..MaxParamAmount] of Variant; // TStFloat;
    paramNameList: array[0..MaxParamAmount] of string;

  public
    expMain: TSSP_Script;
    { Public declarations }
    property IsTesting: boolean read F_IS_TESTING write F_IS_TESTING;

    function GetSysValue(sp_name: string): Variant;
    //====================================================
    function THUETHUNHAP(maso_khung, sotien: Variant): Variant;
    function TONG_NGAY(MALOAI_NGAY: Variant): Variant;
    function TONG_GIO(MALOAI_GIO: Variant): Variant;
    function TONG_NGAY_CHUAN(MALOAI_NGAY: Variant): Variant;
    function TONG_GIO_CHUAN(MALOAI_GIO: Variant): Variant;
    function TONGGIO_CCTONGGIO(MALOAI_GIO: Variant): Variant;

    function TILE_NGAY(MALOAI_NGAY: Variant): Variant;
    function TILE_GIO(MALOAI_GIO: Variant): Variant;

    function LUONG_CANHAN(THANG, NAM, KY: Variant): Variant;
    function KHOANLUONG_CANHAN(KHOANLUONG, THANGNAM, KY: VARIANT): Variant;

    function THANGNAM(THANG, NAM: Variant): Variant;
    function THANGNAM_HIENTAI: Variant;
    function THANG_HIENTAI: Variant;
    function NAM_HIENTAI: Variant;
    function KY_HIENTAI: Variant;
    function NGAY(NGAY, THANG, NAM: Variant): Variant;
    function SOSANH(val1,val2:variant):Variant;
    function HESO_CBNN: Variant;
    function TAIKHOAN_CANHAN: Variant;
    function HESO_QUYETDINH(MA_HESO: Variant): Variant;
    function TONG_KHOANLUONG_DV(MA_KHOANLUONG, THANG_NAM, KY: Variant): Variant;
    function TONG_KHOANLUONG(MA_KHOANLUONG, MA_PA_LUONG,THANG_NAM, KY: Variant):variant;    
    function SO_NV_TRONG_KY(THANG_NAM, KY,PA_LUONG: Variant): Variant;

    function SO_CA_CC_GIO(MALOAI_GIO,SOGIO_TOITHIEU: Variant): Variant;
    function SO_CA_CC_TONG_GIO(MALOAI_GIO,SOGIO_TOITHIEU: Variant): Variant;
    function BAC_LUONG: Variant;
    function TONG_KHOANLUONG_LUYKE(MA_KHOANLUONG: Variant):Variant;
    function SOTHANG_DA_TINHLUONG(): Variant;
    function TIEN_THUONG(): Variant;
    function SO_CANHAN_GIAMTRU(): Variant;
    function CANHAN_KHONG_CUTRU(): Variant;  

    //====================================================
    function TestExpression(expression: string; order_index: integer): integer;
    procedure CalculatingProcess(User_name, Dept_No: variant; View_All,
      Emp_State, At_Month, At_Year, At_Period: integer; At_Date: TDate);

  private

    procedure ClearParamList;
    procedure RegisterFunctionList;
    function FindParamIndex(param_name: string): integer;
    procedure InitTestProcess(order_index: integer);
    procedure RegisterParamListForTest(order_index: integer);
    function EvaluateExpression(expression: string; var ErrorPosition: integer;
      var ErrorString: WideString):
      Variant;

  end;

var
  WageDM: TWageDM;

implementation

uses MainDM, Graphics, SSP_Math, Variants, DateUtils, MainUnit, Dialogs,
WagePlanForm, WageProgressForm;

{$R *.dfm}

procedure TWageDM.qryGetValueBeforeOpen(DataSet: TDataSet);
begin
  if Assigned(TIBOQuery(DataSet).FindParam('EMPLOYEE_NO')) then
    TIBOQuery(DataSet).ParamByName('EMPLOYEE_NO').Value := CUR_EMPLOYEE;

  if Assigned(TIBOQuery(DataSet).FindParam('DEPT_NO')) then
    TIBOQuery(DataSet).ParamByName('DEPT_NO').Value := CUR_DEPARTMENT;

  if Assigned(TIBOQuery(DataSet).FindParam('POSITION_NO')) then
    TIBOQuery(DataSet).ParamByName('POSITION_NO').Value := CUR_POSITION;

  if Assigned(TIBOQuery(DataSet).FindParam('DUTY_NO')) then
    TIBOQuery(DataSet).ParamByName('DUTY_NO').Value := CUR_DUTY;

  if Assigned(TIBOQuery(DataSet).FindParam('ASSIGNED_DATE')) then
    TIBOQuery(DataSet).ParamByName('ASSIGNED_DATE').Value := CUR_ASSIGNED_DATE;

  if Assigned(TIBOQuery(DataSet).FindParam('IN_MONTH')) then
    TIBOQuery(DataSet).ParamByName('IN_MONTH').Value := CUR_MONTH;

  if Assigned(TIBOQuery(DataSet).FindParam('IN_YEAR')) then
    TIBOQuery(DataSet).ParamByName('IN_YEAR').Value := CUR_YEAR;

  if Assigned(TIBOQuery(DataSet).FindParam('IN_PERIOD')) then
    TIBOQuery(DataSet).ParamByName('IN_PERIOD').Value := CUR_PERIOD;

  if Assigned(TIBOQuery(DataSet).FindParam('PERIOD_ID')) then
    TIBOQuery(DataSet).ParamByName('PERIOD_ID').Value := CUR_PERIOD_ID;
end;

function TWageDM.GetSysValue(sp_name: string): Variant;
begin
  if IsTesting then //  dang o che do Testing
    result := 1
  else
    with qryGetValue do
    begin
      SQL.Clear;
      SQL.Text := 'select RESULT_VALUE from HR_GET_SYS_VALUE' +
        '(:SP_NAME,:EMPLOYEE_NO,:POSITION_NO,:ASSIGNED_DATE,:IN_MONTH,:IN_YEAR,:IN_PERIOD)';
      Prepare;
      Params.ParamByName('SP_NAME').Value := sp_name;
      Open;
      if RecordCount = 0 then
        Result := 0
      else
        Result := FieldByName('RESULT_VALUE').AsFloat;
      Close;
    end;
end;

function TWageDM.THUETHUNHAP(maso_khung, sotien: Variant): Variant;
begin
  if IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with qryGetValue do
  begin
    SQL.Clear;
    SQL.Text := 'select tax from hr_get_tax(:tax_group_no,:income)';
    Prepare;
    ParamByName('tax_group_no').Value := maso_khung;
    ParamByName('income').Value := sotien;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('TAX').AsFloat;
    Close;
  end;
end;

function TWageDM.TONG_NGAY(MALOAI_NGAY: Variant): Variant;
begin
  if IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      'select result_value from hr_macro_total_workday(:employee_no,:in_month,:in_year,:wdt_no)';
    Prepare;
    ParamByName('wdt_no').Value := MALOAI_NGAY;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('RESULT_VALUE').AsFloat;
    Close;
  end;
end;

function TWageDM.SO_CA_CC_GIO(MALOAI_GIO,SOGIO_TOITHIEU: Variant): Variant;
begin
  if IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      'select result_value from HR_MACRO_SO_CA_CC_GIO(:employee_no,:in_month,:in_year,:wht_no,:so_gio_toi_thieu)';
    Prepare;
    ParamByName('wht_no').Value := MALOAI_GIO;
    ParamByName('so_gio_toi_thieu').Value := SOGIO_TOITHIEU;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('RESULT_VALUE').AsFloat;
    Close;
  end;
end;

function TWageDM.SO_CA_CC_TONG_GIO(MALOAI_GIO,SOGIO_TOITHIEU: Variant): Variant;
begin
  if IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      'select result_value from HR_MACRO_SO_CA_CC_TONG_GIO(:employee_no,:in_month,:in_year,:wht_no,:so_gio_toi_thieu)';
    Prepare;
    ParamByName('wht_no').Value := MALOAI_GIO;
    ParamByName('so_gio_toi_thieu').Value := SOGIO_TOITHIEU;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('RESULT_VALUE').AsFloat;
    Close;
  end;
end;

function TWageDM.TONG_GIO(MALOAI_GIO: Variant): Variant;
begin
  if IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      'select result_value from hr_macro_total_workhour(:employee_no,:in_month,:in_year,:wht_no)';
    Prepare;
    ParamByName('wht_no').Value := MALOAI_GIO;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('RESULT_VALUE').AsFloat;
    Close;
  end;
end;

function TWageDM.TONGGIO_CCTONGGIO(MALOAI_GIO: Variant): Variant;
begin
  if IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      'select result_value from HR_MACRO_TONGGIO_CCTONGGIO(:employee_no,:in_month,:in_year,:wht_no)';
    Prepare;
    ParamByName('wht_no').Value := MALOAI_GIO;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('RESULT_VALUE').AsFloat;
    Close;
  end;
end;
//===========================================================


function TWageDM.TONG_NGAY_CHUAN(MALOAI_NGAY: Variant): Variant;
begin
  if IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      'select result_value from hr_macro_calendar_workday(:employee_no,:wdt_no,:in_month,:in_year)';
    Prepare;
    ParamByName('wdt_no').Value := MALOAI_NGAY;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('RESULT_VALUE').AsFloat;
    Close;
  end;
end;

function TWageDM.TONG_GIO_CHUAN(MALOAI_GIO: Variant): Variant;
begin
  if IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      'select result_value from hr_macro_calendar_workhour(:employee_no,:wht_no,:in_month,:in_year)';
    Prepare;
    ParamByName('wht_no').Value := MALOAI_GIO;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('RESULT_VALUE').AsFloat;
    Close;
  end;
end;

function TWageDM.TILE_NGAY(MALOAI_NGAY: Variant): Variant;
begin
  if IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      'select wdt_rate from hr_work_date_type where upper(wdt_no)=upper(:WDT_NO)';
    Prepare;
    ParamByName('WDT_NO').Value := MALOAI_NGAY;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('WDT_RATE').AsFloat;
    Close;
  end;
end;


function TWageDM.TILE_GIO(MALOAI_GIO: Variant): Variant;
begin
  if IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      'select wht_rate from hr_work_hour_type where upper(wht_no)=upper(:WHT_NO)';
    Prepare;
    ParamByName('WHT_NO').Value := MALOAI_GIO;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('WHT_RATE').AsFloat;
    Close;
  end;
end;

function TWageDM.TAIKHOAN_CANHAN: Variant;
begin
  if IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      ' SELECT ACCOUNT_ID ' +
      ' FROM HR_EMPLOYEE ' +
      ' where EMPLOYEE_NO=:EMPLOYEE_NO';
    Prepare;
    ParamByName('EMPLOYEE_NO').Value := CUR_EMPLOYEE;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('ACCOUNT_ID').Value;
    Close;
  end;
end;
function TWageDM.HESO_CBNN: Variant;
begin
  if IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      ' SELECT FIRST 1 WAGE_COEFF ' +
      ' FROM HR_WAGE_STANDARD_DETAIL ' +
      ' where EMPLOYEE_NO=:EMPLOYEE_NO and PERIOD_ID<=:WAGE_PERIOD_ID ' +
      ' order by PERIOD_ID desc';
    Prepare;
    ParamByName('EMPLOYEE_NO').Value := CUR_EMPLOYEE;
    ParamByName('WAGE_PERIOD_ID').Value := 10 * (CUR_MONTH + 12 * CUR_YEAR) +
      CUR_PERIOD;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('WAGE_COEFF').AsFloat;
    Close;
  end;
end;

function TWageDM.BAC_LUONG: Variant;
begin
  if IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      ' select result_value from hr_macro_bacluong (:employee_no,:WAGE_PERIOD_ID)';
    Prepare;
    ParamByName('EMPLOYEE_NO').Value := CUR_EMPLOYEE;
    ParamByName('WAGE_PERIOD_ID').Value := 10 * (CUR_MONTH + 12 * CUR_YEAR) +
      CUR_PERIOD;
    Open;
    if RecordCount = 0 then
      Result := null
    else
      Result := FieldByName('result_value').AsVariant;
    Close;
  end;
end;

function TWageDM.HESO_QUYETDINH(MA_HESO: Variant): Variant;
begin
  if IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      ' SELECT RESULT_VALUE ' +
      ' FROM HR_MACRO_FORMAL_COEFF(:EMPLOYEE_NO,:FORMAL_PARAM_NO,:GET_DATE)';
    Prepare;
    ParamByName('FORMAL_PARAM_NO').Value := MA_HESO;
    ParamByName('GET_DATE').Value := CUR_DATE;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('RESULT_VALUE').AsFloat;
    Close;
  end;
end;

function TWageDM.TONG_KHOANLUONG_DV(MA_KHOANLUONG, THANG_NAM, KY: Variant):
  Variant;
begin
  if WageDM.IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with WageDM.qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      'select sum(wage_value) result_value from hr_wage_book ' +
      ' where (wage_period=:thang_nam*10+:ky) and ' +
      ' (wage_formular=:ma_khoanluong) and (dept_no=:dept_no)';
    Prepare;
    ParamByName('MA_KHOANLUONG').Value := MA_KHOANLUONG;
    ParamByName('THANG_NAM').Value := THANG_NAM;
    ParamByName('KY').Value := KY;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('result_value').AsFloat;
    Close;
  end;
end;

function TWageDM.TONG_KHOANLUONG(MA_KHOANLUONG, MA_PA_LUONG,THANG_NAM, KY: Variant):
  Variant;
begin
  if WageDM.IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with WageDM.qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      'select sum(wage_value) result_value from hr_wage_book ' +
      ' where (wage_period=:thang_nam*10+:ky) and ' +
      ' (wage_formular=:ma_khoanluong) and ' +
      ' (wage_method = :ma_pa_luong)';
    Prepare;
    ParamByName('MA_KHOANLUONG').Value := MA_KHOANLUONG;
    ParamByName('ma_pa_luong').Value := MA_PA_LUONG;
    ParamByName('THANG_NAM').Value := THANG_NAM;
    ParamByName('KY').Value := KY;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('result_value').AsFloat;
    Close;
  end;
end;

function TWageDM.TONG_KHOANLUONG_LUYKE(MA_KHOANLUONG: Variant): Variant;
begin
  if WageDM.IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with WageDM.qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      'select result_value ' +
      'from hr_macro_tong_khoanluong_luyke(:ma_khoanluong,:employee_no,:in_month,:in_year,:in_period)';
    Prepare;
    ParamByName('MA_KHOANLUONG').Value := MA_KHOANLUONG;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('result_value').AsFloat;
    Close;
  end;
end;

function TWageDM.SOTHANG_DA_TINHLUONG(): Variant;
begin
  if WageDM.IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with WageDM.qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      'select result_value ' +
      'from hr_macro_sothang_da_tinhluong(:employee_no,:in_month,:in_year)';
    Prepare;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('result_value').AsFloat;
    Close;
  end;
end;

function TWageDM.TIEN_THUONG(): Variant;
begin
  if WageDM.IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with WageDM.qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      'select result_value ' +
      'from HR_MACRO_TIENTHUONG(:in_month,:in_year,:employee_no)';
    Prepare;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('result_value').AsFloat;
    Close;
  end;
end;

//======= Added by ThuyPTP - 28112008 */
function TWageDM.SO_CANHAN_GIAMTRU(): Variant;
begin
  if WageDM.IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with WageDM.qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      'SELECT COUNT(distinct KEY_INDEX) result_value ' +
      'FROM HR_EMP_RELATIONSHIP ' +
      'WHERE duoc_giamtru_giacanh =1 ' +
      'AND employee_no = :EMPLOYEE_NO ' +
      'AND (giamtru_tuthang + 12*giamtru_tunam)<=(:IN_MONTH + 12* :IN_YEAR) ' +
      'AND (giamtru_denthang + 12* giamtru_dennam)>=(:IN_MONTH + 12* :IN_YEAR)';
    Prepare;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('result_value').AsFloat;
    Close;
  end;
end;

function TWageDM.CANHAN_KHONG_CUTRU(): Variant;
begin
  if WageDM.IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with WageDM.qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      'select result_value from hr_macro_canhan_khong_cutru(:EMPLOYEE_NO,:IN_MONTH,:IN_YEAR);';
    Prepare;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('result_value').AsFloat;
    Close;
  end;
end;
//===================================================

function TWageDM.LUONG_CANHAN(THANG, NAM, KY: Variant): Variant;
begin
  if IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      'select result_value from hr_macro_wage(:employee_no,:at_month,:at_year,:at_period)';
    Prepare;
    ParamByName('AT_MONTH').Value := THANG;
    ParamByName('AT_YEAR').Value := NAM;
    ParamByName('AT_PERIOD').Value := KY;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('RESULT_VALUE').AsFloat;
    Close;
  end;
end;

function TWageDM.SO_NV_TRONG_KY(THANG_NAM, KY,PA_LUONG: Variant): Variant;
begin
  if IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      'select result_value from hr_macro_so_nv_trong_ky(:at_month_year,:at_period,:PA_LUONG)';
    Prepare;
    ParamByName('at_month_year').Value := THANG_NAM;
    ParamByName('at_period').Value := Ky;
    ParamByName('PA_LUONG').Value := PA_LUONG;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('RESULT_VALUE').AsFloat;
    Close;
  end;
end;

function TWageDM.KHOANLUONG_CANHAN(KHOANLUONG, THANGNAM, KY: Variant): Variant;
begin
  if IsTesting then
  begin
    result := 1;
    Exit;
  end;
  with qryGetValue do
  begin
    SQL.Clear;
    SQL.Text :=
      'select wage_value result_value from hr_wage_book ' +
      ' where ' +
      ' (wage_period=:thang_nam*10+:ky) and ' +
      ' (wage_formular=:ma_khoanluong) and ' +
      '(employee_no=:employee_no)';
    Prepare;
    ParamByName('ma_khoanluong').Value := KHOANLUONG;
    ParamByName('THANG_NAM').Value := THANGNAM;
    ParamByName('KY').Value := KY;
    Open;
    if RecordCount = 0 then
      Result := 0
    else
      Result := FieldByName('RESULT_VALUE').AsFloat;
    Close;
  end;
end;

function TWageDM.THANGNAM(THANG, NAM: Variant): Variant;
begin
  if IsTesting then
    result := 1
  else
    result := Integer(THANG) - 1 + Integer(NAM) * 12;
end;

function TWageDM.THANGNAM_HIENTAI: Variant;
begin
  if IsTesting then
    result := 1
  else
    result := CUR_MONTH - 1 + CUR_YEAR * 12;
end;

function TWageDM.THANG_HIENTAI: Variant;
begin
  if IsTesting then
    result := 1
  else
    result := CUR_MONTH;
end;

function TWageDM.NAM_HIENTAI: Variant;
begin
  if IsTesting then
    result := 1
  else
    result := CUR_YEAR;
end;

function TWageDM.KY_HIENTAI: Variant;
begin
  if IsTesting then
    result := 1
  else
    result := CUR_PERIOD;
end;

function TWageDM.NGAY(NGAY, THANG, NAM: Variant): Variant;
begin
  if IsTesting then
    result := 1
  else
    result := EncodeDate(Integer(NAM), Integer(THANG),
      Integer(NGAY));
end;

function TWageDM.SOSANH(val1,val2:variant):Variant;
begin
  if VarToStr(val1)=VarToStr(val2) then
    result:=1
  else
    result:=0;
end;


//================================================================

procedure TWageDM.InitTestProcess(order_index: integer);
begin
  IsTesting := true;
  //Xoa dang ky thong so tinh toan truoc do
  expMain.ClearIdentifiers;
  //Dang ky cac ham he thong
  RegisterFunctionList;
  //Dang ky danh sach tat ca cac tham so ma mot bieu thuc co the co
  RegisterParamListForTest(order_index);
end;

procedure TWageDM.RegisterFunctionList;
begin
  // dang ky cac ham toan hoc co ban
  expMain.AddFunction2Param('Mod', _Mod);
  expMain.AddFunction2Param('Div', _Div);
  expMain.AddFunction1Param('Abs', _Abs);
  expMain.AddFunction1Param('Sqrt', _Sqrt);
  expMain.AddFunction1Param('Exp', _Exp);
  expMain.AddFunction1Param('Ln', _Ln);
  expMain.AddFunction1Param('Sqr', _Sqr);
  expMain.AddFunction2Param('Round', _Round);
  expMain.AddFunction2Param('Min', _Min);
  expMain.AddFunction2Param('Max', _Max);

  expMain.AddMethod1Param('TILE_NGAY', TILE_NGAY);
  expMain.AddMethod1Param('TILE_GIO', TILE_GIO);

  expMain.AddMethod2Param('SOSANH', SOSANH);
  expMain.AddMethod2Param('THUETHUNHAP', THUETHUNHAP);
  expMain.AddMethod1Param('TONG_NGAY', TONG_NGAY);
  expMain.AddMethod1Param('TONG_NGAY_CHUAN', TONG_NGAY_CHUAN);
  expMain.AddMethod1Param('TONG_GIO', TONG_GIO);
  expMain.AddMethod1Param('TONGGIO_CCTONGGIO', TONGGIO_CCTONGGIO);
  expMain.AddMethod1Param('TONG_GIO_CHUAN', TONG_GIO_CHUAN);
  expMain.AddMethod3Param('LUONG_CANHAN', LUONG_CANHAN);
  expMain.AddMethod3Param('KHOANLUONG_CANHAN', KHOANLUONG_CANHAN);
  expMain.AddMethod3Param('SO_NV_TRONG_KY', SO_NV_TRONG_KY);  
  expMain.AddMethod3Param('NGAY', NGAY);
  expMain.AddMethod2Param('THANGNAM', THANGNAM);
  expMain.AddMethod0Param('THANGNAM_HIENTAI', THANGNAM_HIENTAI);
  expMain.AddMethod0Param('THANG_HIENTAI', THANG_HIENTAI);
  expMain.AddMethod0Param('NAM_HIENTAI', NAM_HIENTAI);
  expMain.AddMethod0Param('KY_HIENTAI', KY_HIENTAI);
  expMain.AddMethod2Param('SO_CA_CC_GIO', SO_CA_CC_GIO);
  expMain.AddMethod2Param('SO_CA_CC_TONG_GIO', SO_CA_CC_TONG_GIO);  

  expMain.AddMethod0Param('HESO_CBNN', HESO_CBNN);
  expMain.AddMethod0Param('BAC_LUONG', BAC_LUONG);
  expMain.AddMethod1Param('HESO_QUYETDINH', HESO_QUYETDINH);
  expMain.AddMethod3Param('TONG_KHOANLUONG_DV', TONG_KHOANLUONG_DV);
  expMain.AddMethod4Param('TONG_KHOANLUONG', TONG_KHOANLUONG);  
  expMain.AddMethod0Param('TAIKHOAN_CANHAN', TAIKHOAN_CANHAN);
  expMain.AddMethod1Param('TONG_KHOANLUONG_LUYKE', TONG_KHOANLUONG_LUYKE);
  expMain.AddMethod0Param('SOTHANG_DA_TINHLUONG', SOTHANG_DA_TINHLUONG);
  expMain.AddMethod0Param('TIEN_THUONG', TIEN_THUONG);
  expMain.AddMethod0Param('SO_CANHAN_GIAMTRU', SO_CANHAN_GIAMTRU);
  expMain.AddMethod0Param('CANHAN_KHONG_CUTRU', CANHAN_KHONG_CUTRU);
  //dang ky cac ham he thong - thay doi theo tung khach hang
  DangkyLuongDacthu;
end;

procedure TWageDM.ClearParamList;
var
  i: integer;
begin
  for i := 1 to MaxParamAmount do
  begin
    paramNameList[i] := '';
    paramList[i] := 0;
  end;
end;

procedure TWageDM.CalculatingProcess(User_name, Dept_No: variant; View_All,
  Emp_State, At_Month, At_Year, At_Period: integer; At_Date: TDate);
var
  param_index, error_code: integer;
  temp_value: Extended;
  temp_str: string;
  ok: boolean;
  Log_Data, Error_string: WideString;
  log_file: TStrings;
  begin_Time, start_Time, real_Time, sum_Time: TTime;
  emp_begin_time, emp_Time, emp_Sum_Time, emp_Avg_Time: TTime;
  Hour, Min, Sec, MSec: Word;
  emp_num: integer;
begin

  //==================================================
  //////////time////////////
  begin_Time := Now;
  start_Time := Now;
  real_Time := (Now - begin_Time);
  sum_Time := real_Time;
  //////////time////////////

  IsTesting := false;
  log_file := TStringList.Create;
  //xoa bang luong cu
  CUR_MONTH := At_Month;
  CUR_YEAR := At_Year;
  CUR_PERIOD := At_Period;
  CUR_DATE := At_Date;
  CUR_PERIOD_ID := 10 * (CUR_MONTH - 1 + 12 * CUR_YEAR) + CUR_PERIOD;
  ok := true;

  dmMain.RollbackTransaction;
  log_file.Add('===== TINH LUONG THANG ' + IntToStr(At_Month) + ' NAM ' +
    IntToStr(At_Year) + ' KY ' + IntToStr(At_Period) + ' =========');
  frmWageProgress.InsertLine(Utf8Decode('=====  TÍNH LƯƠNG THÁNG ' +
    IntToStr(At_Month) + ' NĂM ' + IntToStr(At_Year) + ' KỲ ' +
    IntToStr(At_Period) + ' ========='));

  frmMain.SetStatusBarMsg(Utf8Decode('Đang xóa bảng lương...'));
  qryExecute.SQL.Text :=
    'execute procedure hr_delete_wagebook(:user_name,:dept_no,:view_all,:state,:period_id) ';
  qryExecute.ParamByName('DEPT_NO').Value := Dept_No;
  qryExecute.ParamByName('USER_NAME').Value := User_name;
  qryExecute.ParamByName('VIEW_ALL').Value := View_All;
  qryExecute.ParamByName('STATE').Value := Emp_State;
  qryExecute.ParamByName('PERIOD_ID').Value := 10 * (At_Month - 1 + 12 * At_Year)
    + At_Period;
  log_file.Add(' * Xoa bang luong ........... ');
  log_file.Add(' * Xoa bang luong ........... ');

  dmMain.ExecuteSQL(qryExecute); //Delete HR_WAGE_BOOK
  ///////////time///////////////
  real_Time := (Now - begin_Time);
  begin_Time := Now;
  DecodeTime(real_Time, Hour, Min, Sec, MSec);
  log_file.Add(' ========== Thoi gian xoa bang luong : ' + IntToStr(Hour) + ':'
    + IntToStr(Min) + ':'
    + IntToStr(Sec) + '.' + IntToStr(MSec) + ' giay==========');
  frmWageProgress.InsertLine(Utf8Decode(' ========== Thời gian xoá bảng lương : ' + IntToStr(Hour) + ':' + IntToStr(Min) + ':'
    + IntToStr(Sec) + '.' + IntToStr(MSec) + ' giây=========='));
  ///////////time///////////////
  qryExecute.SQL.Text := 'insert into hr_wage_book ' +
    ' ( hr_wage_book.employee_no,' +
    ' hr_wage_book.dept_no,' +
    ' hr_wage_book.title_no,' +
    ' hr_wage_book.wage_period,' +
    ' hr_wage_book.wage_formular,' +
    ' hr_wage_book.wage_value,' +
    ' hr_wage_book.wage_text_value,' +
    ' hr_wage_book.calculator,' +
    ' hr_wage_book.cal_datetime,' +
    ' hr_wage_book.log_data, ' +
    ' hr_wage_book.error_position, ' +
    ' hr_wage_book.error_string, ' +
    ' hr_wage_book.wage_method, ' +
    ' hr_wage_book.wage_flag )' +
    ' values' +
    ' ( :employee_no,' +
    ' :dept_no,  ' +
    ' :title_no,  ' +
    ' :wage_period,  ' +
    ' :wage_formular,' +
    ' :wage_value, ' +
    ' :wage_text_value, ' +
    ' :calculator, ' +
    ' :cal_datetime,' +
    ' :log_data,  ' +
    ' :error_position,  ' +
    ' :error_string,  ' +
    ' :wage_method,  ' +
    ' :param_flag)';

  if qryGetParamValues.Active then
    qryGetParamValues.Close;
  qryGetParamValues.ParamByName('DEPT_NO').Value := Dept_No;
  qryGetParamValues.ParamByName('USER_NAME').Value := User_name;
  qryGetParamValues.ParamByName('VIEW_ALL').Value := View_All;
  qryGetParamValues.ParamByName('STATE').Value := Emp_State;
  qryGetParamValues.ParamByName('AT_MONTH').Value := At_Month;
  qryGetParamValues.ParamByName('AT_YEAR').Value := At_Year;
  qryGetParamValues.ParamByName('AT_PERIOD').Value := At_Period;

  frmMain.SetStatusBarMsg(Utf8Decode('Đang nạp danh sách tính lương...'));
  qryGetParamValues.Open;
  log_file.Add(' * Mo bang luong .........');
  frmWageProgress.InsertLine(Utf8Decode(' * Mở bảng lương .........'));

  real_Time := (Now - begin_Time);
  begin_Time := Now;
  DecodeTime(real_Time, Hour, Min, Sec, MSec);
  log_file.Add(' ========== Thoi gian mo bang luong : ' + IntToStr(Hour) + ':' +
    IntToStr(Min) + ':'
    + IntToStr(Sec) + '.' + IntToStr(MSec) + ' giay ==========');
  frmWageProgress.InsertLine(Utf8Decode(' ========== Thời gian mở bảng lương : ' + IntToStr(Hour) + ':' + IntToStr(Min) + ':'
    + IntToStr(Sec) + '.' + IntToStr(MSec) + ' giây =========='));

  if qryGetParamValues.IsEmpty = false then
  begin
    frmMain.SetStatusBarPrgDisplay(0, qryGetParamValues.RecordCount);
    frmMain.SetStatusBarMsg(Utf8Decode('Đang tính lương...'));
    qryGetParamValues.First;
    expMain.ClearIdentifiers;
    RegisterFunctionList;
    ClearParamList;

    CUR_EMPLOYEE := qryGetParamValuesEMPLOYEE_NO.Value;
    CUR_DEPARTMENT := qryGetParamValuesDEPT_NO.Value;
    CUR_DUTY := qryGetParamValuesTITLE_NO.Value;
    CUR_POSITION := qryGetParamValuesPOSITION_NO.Value;
    CUR_WAGE_METHOD:=qryGetParamValuesWAGE_METHOD.Value;

    expMain.AddVariable('CUR_EMPLOYEE',@CUR_EMPLOYEE);
    expMain.AddVariable('CUR_DEPARTMENT',@CUR_DEPARTMENT);
    expMain.AddVariable('CUR_DUTY',@CUR_DUTY);
    expMain.AddVariable('CUR_POSITION',@CUR_POSITION);
    expMain.AddVariable('CUR_WAGE_METHOD',@CUR_WAGE_METHOD);
    param_index := 1;

    log_file.Add('====================================================');
    log_file.Add(' * ' + VarToStr(CUR_EMPLOYEE) + ' :' +
      qryGetParamValuesFULL_NAME.AsString);
    log_file.Add(' * ' + VarToStr(CUR_DEPARTMENT) + ' :' +
      qryGetParamValuesDEPT_NAME.AsString);
    log_file.Add('====================================================');

    frmWageProgress.InsertLine('====================================================');
    frmWageProgress.InsertLine(' * ' + VarToStr(CUR_EMPLOYEE) + ' :' +
      qryGetParamValuesFULL_NAME.Value);
    frmWageProgress.InsertLine(' * ' + VarToStr(CUR_DEPARTMENT) + ' :' +
      qryGetParamValuesDEPT_NAME.Value);
    frmWageProgress.SetNhanVien(qryGetParamValuesFULL_NAME.Value);

    emp_begin_time := Now;
    emp_Time := Now - emp_begin_time;
    emp_Sum_Time := Now - emp_begin_time;

    real_Time := (Now - begin_Time);
    begin_Time := Now;
    emp_num := 1;
    while not qryGetParamValues.Eof do
    begin
      if CUR_EMPLOYEE <> qryGetParamValuesEMPLOYEE_NO.Value then
      begin
        expMain.ClearIdentifiers;
        RegisterFunctionList;
        ClearParamList;
        CUR_EMPLOYEE := qryGetParamValuesEMPLOYEE_NO.Value;
        CUR_DEPARTMENT := qryGetParamValuesDEPT_NO.Value;
        CUR_DUTY := qryGetParamValuesTITLE_NO.Value;
        CUR_POSITION := qryGetParamValuesPOSITION_NO.Value;
        CUR_WAGE_METHOD:=qryGetParamValuesWAGE_METHOD.Value;

        expMain.AddVariable('CUR_EMPLOYEE',@CUR_EMPLOYEE);
        expMain.AddVariable('CUR_DEPARTMENT',@CUR_DEPARTMENT);
        expMain.AddVariable('CUR_DUTY',@CUR_DUTY);
        expMain.AddVariable('CUR_POSITION',@CUR_POSITION);
        expMain.AddVariable('CUR_WAGE_METHOD',@CUR_WAGE_METHOD);

        param_index := 1;

        emp_num := emp_num + 1;
        emp_Time := Now - emp_begin_time;
        emp_begin_time := Now;
        emp_Sum_Time := emp_Sum_Time + emp_Time;
        DecodeTime(emp_Time, Hour, Min, Sec, MSec);
        log_file.Add('====================================================');
        log_file.Add(' * Thoi gian cua tung nhan vien : ' + IntToStr(Hour) + ':'
          + IntToStr(Min) + ':'
          + IntToStr(Sec) + '.' + IntToStr(MSec) + ' giay');

        log_file.Add('====================================================');
        log_file.Add(' * ' + VarToStr(CUR_EMPLOYEE) + ' :' +
          qryGetParamValuesFULL_NAME.AsString);
        log_file.Add(' * ' + VarToStr(CUR_DEPARTMENT) + ' :' +
          qryGetParamValuesDEPT_NAME.AsString);
        log_file.Add('====================================================');

        frmWageProgress.InsertLine(Utf8Decode(' * Thời gian tính lương theo từng nhân viên : ' + IntToStr(Hour) + ':' + IntToStr(Min) + ':'
          + IntToStr(Sec) + '.' + IntToStr(MSec) + ' giây'));

        frmWageProgress.InsertLine('====================================================');
        frmWageProgress.InsertLine(' * ' + VarToStr(CUR_EMPLOYEE) + ' :' +
          qryGetParamValuesFULL_NAME.Value);
        frmWageProgress.InsertLine(' * ' + VarToStr(CUR_DEPARTMENT) + ' :' +
          qryGetParamValuesDEPT_NAME.Value);
        frmWageProgress.SetNhanVien(qryGetParamValuesFULL_NAME.Value);

      end;
      //dang ky ten tham so
      paramNameList[param_index] := qryGetParamValuesPARAM_NO.AsString;
      paramList[param_index] := qryGetParamValuesPARAM_VALUE.Value;
      expMain.AddVariable(qryGetParamValuesPARAM_NO.AsString,
        @paramList[param_index]);

      if qryGetParamValuesPARAM_TYPE.Value <> 'CONG_THUC' then
      begin
        log_file.Add('  + ' + qryGetParamValuesPARAM_NO.AsString + ' = ' +
          qryGetParamValuesPARAM_VALUE.AsString);
      end
      else //tinh toan neu nhu dang la bieu thuc
      begin
        CUR_WAGE_METHOD:=qryGetParamValuesWAGE_METHOD.Value;
        try
          Error_string := '';
          Log_Data := qryGetParamValuesPARAM_NO.Value + '=' +
            qryGetParamValuesPARAM_EXPRESSION.Value;

          begin_Time := Now;

          paramList[param_index] :=
            EvaluateExpression(qryGetParamValuesPARAM_EXPRESSION.AsString,
            error_code, Error_string);

          ///////////time///////////////
          real_Time := (Now - begin_Time);
          begin_Time := Now;
          DecodeTime(real_Time, Hour, Min, Sec, MSec);
          ///////////time///////////////

          if (error_code > 0) then
          begin
            //ghi nhat ky loi
            paramList[param_index] := 0;
          end;
          qryExecute.ParamByName('EMPLOYEE_NO').Value := CUR_EMPLOYEE;
          qryExecute.ParamByName('DEPT_NO').Value := CUR_DEPARTMENT;
          qryExecute.ParamByName('TITLE_NO').Value := CUR_DUTY;
          qryExecute.ParamByName('WAGE_PERIOD').Value := 10 * (CUR_MONTH - 1 + 12
            * CUR_YEAR) + CUR_PERIOD;
          qryExecute.ParamByName('WAGE_FORMULAR').Value :=
            qryGetParamValuesPARAM_NO.Value;
          qryExecute.ParamByName('CAL_DATETIME').Value := Now;
          qryExecute.ParamByName('CALCULATOR').Value := User_name;
          qryExecute.ParamByName('LOG_DATA').Value := Log_Data;
          qryExecute.ParamByName('ERROR_POSITION').Value := error_code;
          qryExecute.ParamByName('ERROR_STRING').Value := Error_string;
          qryExecute.ParamByname('PARAM_FLAG').Value :=
            qryGetParamValuesPARAM_FLAG.Value;
          qryExecute.ParamByname('WAGE_METHOD').Value :=
            qryGetParamValuesWAGE_METHOD.Value;

          // bo sung: neu gia tri tra ve khong phai la so
          temp_str := VarToStr(paramList[param_index]);
          if qryGetParamValuesRESULT_TYPE.AsInteger=0 then
          begin
            if TryStrToFloat(temp_str, temp_value) = true then
              qryExecute.ParamByName('WAGE_VALUE').Value := temp_value
            else
              qryExecute.ParamByName('WAGE_VALUE').Clear;
            qryExecute.ParamByName('WAGE_TEXT_VALUE').Clear;
          end
          else
          begin
            qryExecute.ParamByName('WAGE_VALUE').Clear;
            qryExecute.ParamByName('WAGE_TEXT_VALUE').Value :=
              paramList[param_index];
          end;
          //
          dmMain.ExecuteSQL(qryExecute);
          log_file.Add(' Cong thuc: ' + Log_Data + ' = ' +
            VarToStr(paramList[param_index]));

          log_file.Add(' ========== Thoi gian thuc thi cong thuc : ' +
            IntToStr(Hour) + ':'
            + IntToStr(Min) + ':' + IntToStr(Sec) + '.' + IntToStr(MSec) +
              ' giay ==========');

          ///////////time///////////////
          real_Time := (Now - begin_Time);
          begin_Time := Now;
          DecodeTime(real_Time, Hour, Min, Sec, MSec);
          log_file.Add(' ========== Thoi gian thuc thi cau SQL : ' +
            IntToStr(Hour) + ':'
            + IntToStr(Min) + ':' + IntToStr(Sec) + '.' + IntToStr(MSec) +
              ' giay ==========');
          ///////////time///////////////
        except
          ok := false;
        end;
      end;
      qryGetParamValues.Next;
      param_index := param_index + 1;
      frmmain.BarPrgStepIt;
    end;
    emp_Time := Now - emp_begin_time;
    emp_begin_time := Now;
    emp_Sum_Time := emp_Sum_Time + emp_Time;
    DecodeTime(emp_Time, Hour, Min, Sec, MSec);
    log_file.Add('====================================================');
    log_file.Add(' * Thoi gian cua tung nhan vien : ' + IntToStr(Hour) + ':' +
      IntToStr(Min) + ':'
      + IntToStr(Sec) + '.' + IntToStr(MSec) + ' giay');

    frmWageProgress.InsertLine(Utf8Decode(' * Thời gian của từng nhân viên : ' + IntToStr(Hour) + ':' + IntToStr(Min) + ':'
      + IntToStr(Sec) + '.' + IntToStr(MSec) + ' giây'));
    frmWageProgress.InsertLine('====================================================');
  end;

  begin_Time := Now;

  dmmain.CommitTransaction;
  frmMain.SetStatusBarMsg(Utf8Decode('Kết thúc tính lương...'));
  log_file.Add(' * Ket thuc tinh luong....');
  log_file.Add(' * Tong ket thoi gian tinh luong - SLNV: ' + IntToStr(emp_num) +
    ' Nhan vien');
  log_file.Add('================================================================');

  frmWageProgress.InsertLine(Utf8Decode(' * Tổng kết thời gian tính lương - SLNV: ' + IntToStr(emp_num) + ' nhận viên'));

  real_Time := (Now - begin_Time);
  begin_Time := Now;
  sum_Time := Now - start_Time;
  DecodeTime(real_Time, Hour, Min, Sec, MSec);
  log_file.Add(' * Thoi gian commit : ' + IntToStr(Hour) + ':' + IntToStr(Min) +
    ':'
    + IntToStr(Sec) + '.' + IntToStr(MSec) + ' giay');

  frmWageProgress.InsertLine(Utf8Decode(' * Thời gian commit : ' +
    IntToStr(Hour) + ':' + IntToStr(Min) + ':'
    + IntToStr(Sec) + '.' + IntToStr(MSec) + ' giây'));

  DecodeTime(emp_Sum_Time, Hour, Min, Sec, MSec);
  log_file.Add(' * Tong thoi gian tinh theo nhan vien : ' + IntToStr(Hour) + ':'
    + IntToStr(Min) + ':'
    + IntToStr(Sec) + '.' + IntToStr(MSec) + ' giay');

  frmWageProgress.InsertLine(Utf8Decode(' * Tổng thời gian tính theo nhân viên : ' + IntToStr(Hour) + ':' + IntToStr(Min) + ':'
    + IntToStr(Sec) + '.' + IntToStr(MSec) + ' giây'));

  if emp_num <> 0 then
    emp_Avg_Time := emp_Sum_Time / emp_num
  else
    emp_Avg_Time := emp_Sum_Time;
  DecodeTime(emp_Avg_Time, Hour, Min, Sec, MSec);
  log_file.Add(' * Thoi gian binh quan tinh theo nhan vien : ' + IntToStr(Hour) +
    ':' + IntToStr(Min) + ':'
    + IntToStr(Sec) + '.' + IntToStr(MSec) + ' giay');

  frmWageProgress.InsertLine(Utf8Decode(' * Thời gian bình quân tính theo nhân viên : ' + IntToStr(Hour) + ':' + IntToStr(Min) + ':'
    + IntToStr(Sec) + '.' + IntToStr(MSec) + ' giây'));

  DecodeTime(sum_Time, Hour, Min, Sec, MSec);
  log_file.Add(' * Tong thoi gian : ' + IntToStr(Hour) + ':' + IntToStr(Min) +
    ':'
    + IntToStr(Sec) + '.' + IntToStr(MSec) + ' giay');
  log_file.Add('================================================================');
  log_file.SaveToFile(ExtractFilePath(Application.ExeName) + '/log_data.txt');

  frmWageProgress.InsertLine(Utf8Decode(' * Tổng thời gian : ' +
    IntToStr(Hour) + ':' + IntToStr(Min) + ':'
    + IntToStr(Sec) + '.' + IntToStr(MSec) + ' giây'));
  frmWageProgress.InsertLine('====================================================');
  frmWageProgress.InsertLine(Utf8Decode(' * Kết thúc tính lương....'));
  frmWageProgress.InsertLine('====================================================');
  log_file.SaveToFile(ExtractFilePath(Application.ExeName) + '/log_data.txt');

  log_file.Free;
  qryGetParamValues.Close;
  frmWageProgress.ProgressFinish();
end;

procedure TWageDM.RegisterParamListForTest(order_index: integer);
begin
  // xoa danh sach param
  ClearParamList;
  //==================================================
  if qryGetParamList.Active then
    qryGetParamList.Close;
  qryGetParamList.ParamByName('ORDER_INDEX').Value := order_index;
  qryGetParamList.Open;
  if qryGetParamList.RecordCount > MaxParamAmount then
  begin
    ShowMessageUnicode(40);
    qryGetParamList.Close;
    exit;
  end;
  if not qryGetParamList.IsEmpty then
  begin
    qryGetParamList.First;
    while not qryGetParamList.Eof do
    begin
      paramNameList[qryGetParamList.RecNo] :=
        qryGetParamList.FieldByName('PARAM_TYPE').AsString + '_' +
        qryGetParamList.FieldByName('PARAM_NO').AsString;
      //dang ky ten tham so
      paramList[qryGetParamList.RecNo] := 1;
      expMain.AddVariable(qryGetParamList.FieldByName('PARAM_NO').AsString,
        @paramList[qryGetParamList.RecNo]);
      qryGetParamList.Next;
    end;
  end;
  qryGetParamList.Close;
end;

function TWageDM.FindParamIndex(param_name: string): integer;
var
  i: integer;
begin
  result := 0;
  for i := 1 to MaxParamAmount do
  begin
    if paramNameList[i] = param_name then
    begin
      result := i;
      Break;
    end;
  end;
end;

function TWageDM.TestExpression(expression: string; order_index: integer):
  integer;
var
  result_value: Variant;
  float_value: Extended;
begin
  result := -1;
  //Khoi tao testing process
  InitTestProcess(order_index);
  // Kiem tra bieu thuc
  expMain.Script := expression;
  try
    result_value := expMain.AnalyzeScript;
  except
  end;
  if expMain.LastError <> 0 then
    result := expMain.ErrorPosition
      {
      else
      begin
        try
          float_value := StrToFloat(VarToStr(result_value));
        except
          result := expMain.ErrorPosition;
        end;
      end;
     }
end;

function TWageDM.EvaluateExpression(expression: string; var ErrorPosition:
  integer; var ErrorString: WideString): Variant;
var
  result_value: variant;
begin
  // ham nay mac nhien tat ca cac tham so tinh toan da duoc
  // khoi tao : phan viec con lai chi la dinh gia cong thuc
  result := 0;
  ErrorPosition := 0;
  expMain.Script := expression;
  try
    result := expMain.AnalyzeScript;
  except
  end;
  if expMain.LastError <> 0 then
    ErrorPosition := expMain.ErrorPosition
      {
      else

      begin
        try
          Result := StrToFloat(VarToStr(result_value));
        except
          result := 0;
          ErrorPosition := expMain.ErrorPosition;
        end;
      end;
    }
end;

procedure TWageDM.DataModuleCreate(Sender: TObject);
begin
  ApplyOption(TControl(sender));
  expMain := TSSP_Script.Create(self);
end;

procedure TWageDM.qryExecuteBeforeOpen(DataSet: TDataSet);
begin
  // nothing do to
end;

procedure TWageDM.DataModuleDestroy(Sender: TObject);
begin
  expMain.Free;
end;

procedure TWageDM.qryGetValueError(Sender: TObject; const ERRCODE: Integer;
  ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
  SQLMessage, SQL: TStringList; var RaiseException: Boolean);
begin
  //
end;

end.

