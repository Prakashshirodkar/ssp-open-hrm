unit BAOHIEM_DataModule;

interface

uses
  SysUtils, Classes, IB_Components, DB, IBODataset, SSP_Script, SSP_Math,
  Variants,StrUtils;

const
  sts : array [150..161] of string =
  (
   'biểu thức tính toán trống',{empty expression}
   'lỗi định dạng số thực',{error in floating point number}
   'ký tự không xác định',{unknown character}
   'thiếu ký hiệu toán hạng, số, hàm số ',{expected function, number, sign, or (}
   'lỗi số học',{numeric error}
   'biểu thức số học không hợp lệ',{invalid expression}
   'tràn bộ nhớ đệm toán hạng ( stack overflow)',{operand stack overflow}
   'hàm số chưa được định nghĩa trước',{unknown function identifier}
   'thiếu dấu ngoặc trái [(]', {left parenthesis expected}
   'thiếu dấu ngoặc phải [)]',{right parenthesis expected}
   'thiếu dấu phẩy [,]',{comma expected}
   'đăng ký ID trùng nhau'{duplicate identifier}
  );

type
  TdmBAOHIEM = class(TDataModule)
    qryExecute: TIBOQuery;
    transaction: TIB_Transaction;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryExecuteError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure qryExecuteBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    THANG,NAM,DOT:integer;
    MA_NHANVIEN,MA_DONVI,MA_CHUCVU,MA_VITRI:Variant;
    MAU_KYHIEU:string;
    expMain: TSSP_Script;
    //Ham chung
    function F_THANG:Variant;
    function F_NAM:Variant;
    function F_DOT:Variant;
    function GetMonthYear(s:string;var month,year:integer):boolean;
    function GetMonth(s:Variant):Variant;
    function GetYear(s:Variant):Variant;
    function IsNullStr(s:variant):Variant;
    function CompareString(s1,s2:variant):Variant;
    function StringPos(V_SUB_S,V_S : Variant):Variant;

    //Khai bao ham
    procedure InitIdentifier(script:TSSP_Script;test_flag:boolean);
  end;   

var
  dmBAOHIEM: TdmBAOHIEM;

implementation

{$R *.dfm}

procedure TdmBAOHIEM.DataModuleCreate(Sender: TObject);
begin
 // expMain.
end;

function TdmBAOHIEM.F_THANG:Variant;
begin
 result:=THANG;
end;

function TdmBAOHIEM.F_NAM:Variant;
begin
 result:=NAM;
end;

function TdmBAOHIEM.F_DOT:Variant;
begin
 result:=DOT;
end;

procedure TdmBAOHIEM.qryExecuteBeforeOpen(DataSet: TDataSet);
begin
  if Assigned(TIBOQuery(DataSet).FindParam('MA_NHANVIEN')) then
    TIBOQuery(DataSet).ParamByName('MA_NHANVIEN').Value := MA_NHANVIEN;

  if Assigned(TIBOQuery(DataSet).FindParam('MA_DONVI')) then
    TIBOQuery(DataSet).ParamByName('MA_DONVI').Value := MA_DONVI;

  if Assigned(TIBOQuery(DataSet).FindParam('MA_CHUCVU')) then
    TIBOQuery(DataSet).ParamByName('MA_CHUCVU').Value := MA_CHUCVU;

  if Assigned(TIBOQuery(DataSet).FindParam('MA_VITRI')) then
    TIBOQuery(DataSet).ParamByName('MA_VITRI').Value := MA_VITRI;

  if Assigned(TIBOQuery(DataSet).FindParam('THANG')) then
    TIBOQuery(DataSet).ParamByName('THANG').Value := THANG;

  if Assigned(TIBOQuery(DataSet).FindParam('NAM')) then
    TIBOQuery(DataSet).ParamByName('NAM').Value := NAM;

  if Assigned(TIBOQuery(DataSet).FindParam('DOT')) then
    TIBOQuery(DataSet).ParamByName('DOT').Value := DOT;
end;

procedure TdmBAOHIEM.InitIdentifier(script:TSSP_Script;test_flag:boolean);
begin
  if not Assigned(script) then exit;
  script.ClearIdentifiers;
  // dang ky ham so toan hoc
  script.AddFunction2Param('Mod', _Mod);
  script.AddFunction2Param('Div', _Div);
  script.AddFunction1Param('Abs', _Abs);
  script.AddFunction1Param('Sqrt', _Sqrt);
  script.AddFunction1Param('Exp', _Exp);
  script.AddFunction1Param('Ln', _Ln);
  script.AddFunction1Param('Sqr', _Sqr);
  script.AddFunction2Param('Round', _Round);
  script.AddFunction2Param('Min', _Min);
  script.AddFunction2Param('Max', _Max);
  script.AddMethod0Param('THANG',F_THANG);
  script.AddMethod0Param('NAM',F_NAM);
  script.AddMethod0Param('DOT',F_DOT);

  script.AddMethod2Param('F_STRING_POS',StringPos);
  script.AddMethod1Param('F_GET_MONTH',GetMonth);
  script.AddMethod1Param('F_GET_YEAR',GetYear);
  script.AddMethod1Param('F_IS_NULL_STRING',IsNullStr);
  script.AddMethod2Param('F_COMPARE_STRING',CompareString);


end;

//=====================================================================================

function TdmBAOHIEM.GetMonth(s:variant):Variant;
var i:integer;
   str:string;
begin
// Ham nay tra ra gia tri thang tu mot chuoi thang nam
// VI du:  chuoi la 11/2008 se tra ve gia tri la thang=11
  str:=Trim(VarToStr(s));
  i:=Pos('/',str);
  if i=0 then
   result:=-1
  else
    result:=Copy(str,1,i-1);
end;
function TdmBAOHIEM.GetYear(s:variant):Variant;
var str:string;
    i:integer;
begin
// Ham nay tra ra gia tri nam tu mot chuoi thang nam
// VI du:  chuoi la 11/2008 se tra ve gia tri la nam =2008
  str:=Trim(VartoStr(s));
  i:=Pos('/',str);
  if i=0 then
   result:=-1
  else
    result:= Copy(str,i+1,Length(str)-i);
end;
function TdmBAOHIEM.GetMonthYear(s:string;var month,year:integer):boolean;
var s_month,s_year:string;
    i:integer;
begin
// Ham nay tra ra gia tri thang/nam tu mot chuoi thang nam
// VI du:  chuoi la 11/2008 se tra ve gia tri la thang=11,nam =2008
  s:=Trim(s);
  i:=Pos('/',s);
  if i=0 then
  begin
    month:=-1;
    year:=-1;
    result:=false;
  end
  else
  begin
    s_month:=Copy(s,1,i-1);
    s_year:=Copy(s,i+1,Length(s)-i);
    month:=StrToIntDef(s_month,0);
    year:=StrToIntDef(s_year,0);
    result:=(month*year>0);
  end
end;

function TdmBAOHIEM.IsNullStr(s:variant):Variant;
begin
  if Trim(VarToStr(s))='' then
    result:=1
  else
    result:=0;
end;

function TdmBAOHIEM.CompareString(s1,s2:variant):Variant;
begin
  if Trim(VarToStr(s1))=Trim(VarToStr(s1)) then
    result:=1
  else
    result:=0;
end;

function TdmBAOHIEM.StringPos(V_SUB_S,V_S : Variant):Variant;
var s, sub_s :string;
begin
  s:=VarToStr(V_S);
  sub_s:=VarToStr(V_SUB_S);
  result:=Pos(sub_s,s);
end;


procedure TdmBAOHIEM.qryExecuteError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  RaiseException:=false;
end;



end.



