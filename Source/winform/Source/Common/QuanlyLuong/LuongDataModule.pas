unit LuongDataModule;

interface

uses
  SysUtils, Classes,SSP_Script, IB_Components, DB, IBODataset;

type
  TdmLuong = class(TDataModule)
    qryExecute: TIBOQuery;
    transaction: TIB_Transaction;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryExecuteBeforeOpen(DataSet: TDataSet);
    procedure qryExecuteError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
  private
    { Private declarations }

  public
    { Public declarations }
    DOT,THANG,NAM:integer;
    MA_NHANVIEN,MA_DONVI,MA_CHUCVU,MA_VITRI:Variant;
    PA_KYHIEU:string;
    expMain: TSSP_Script;
    // Ham tinh thue thu nhap
    function THUE_THUNHAP(KHUNG_THUE,TIEN_CHIUTHUE : variant):Variant;
    // Ham so tong hop du lieu cham cong
    function TONG_NGAYCONG_CCTHANG(MA_GIOCONG : variant):Variant;
    function TONG_GIOCONG_CCTHANG(MA_GIOCONG : variant):Variant;
    function TONG_GIOCONG_CCNGAY(MA_GIOCONG : variant):Variant;
    function SO_NGAYCHUAN(MA_NGAYCONG :variant):Variant;
    function SO_GIOCHUAN(MA_GIOCONG :variant):Variant;
    function HESO_CONGNGAY(MA_NGAYCONG : variant):Variant;
    function HESO_CONGGIO(MA_GIOCONG : variant):Variant;
    function HESO_CBNN: Variant;
    function KHOAN_LUONG(CT_KYHIEU,THANG,NAM:Variant):Variant;
    function TONG_KHOANLUONG(CT_KYHIEU,TU_THANGNAM,DEN_THANGNAM:Variant):Variant;
    function IS_NULL(CT_KYHIEU:Variant):Variant;
    function SP_ROUND(INPUT_VALUE,LEN : variant):Variant;
    //function SP_ROUND(INPUT_VALUE: Double; LEN : integer):Variant;

    function F_THANG:Variant;
    function F_NAM:Variant;
    function F_DOT:Variant;
    function GetMonthYear(s:string;var month,year:integer):boolean;
    function GetMonth(s:Variant):Variant;
    function GetYear(s:Variant):Variant;
    function IsNullStr(s:variant):Variant;
    function CompareString(s1,s2:variant):Variant;
  end;

var
  dmLuong: TdmLuong;

implementation

uses DateUtils, Variants, Math;

{$R *.dfm}

procedure TdmLuong.DataModuleCreate(Sender: TObject);
begin
 // expMain.
end;
function TdmLuong.F_THANG:Variant;
begin
 result:=THANG;
end;
function TdmLuong.F_NAM:Variant;
begin
 result:=NAM;
end;
function TdmLuong.F_DOT:Variant;
begin
 result:=DOT;
end;
procedure TdmLuong.qryExecuteBeforeOpen(DataSet: TDataSet);
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
//=====================================================================================
function TdmLuong.THUE_THUNHAP(KHUNG_THUE,TIEN_CHIUTHUE : variant):Variant;
begin
  if qryExecute.Active then qryExecute.Close;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text := 'select tax from sf_thue_thunhap(:khung_thue,:tien_chiuthue)';
  qryExecute.Prepare;
  qryExecute.ParamByName('khung_thue').Value := KHUNG_THUE;
  qryExecute.ParamByName('tien_chiuthue').Value := TIEN_CHIUTHUE;
  qryExecute.Open;
  if qryExecute.RecordCount =0 then
    Result := 0
  else
    Result := qryExecute.FieldByName('TAX').AsFloat;
  qryExecute.Close;
end;
//======================================================================================
function TdmLuong.TONG_NGAYCONG_CCTHANG(MA_GIOCONG : variant):Variant;
begin
  if qryExecute.Active then qryExecute.Close;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text := 'select result_value from sf_tong_ngaycong_ccthang(:MA_NHANVIEN,:THANG,:NAM,:MA_GIOCONG)';
  qryExecute.Prepare;
  qryExecute.ParamByName('MA_GIOCONG').Value := MA_GIOCONG;
  qryExecute.Open;
  if qryExecute.RecordCount =0 then
    Result := 0
  else
    Result := qryExecute.FieldByName('RESULT_VALUE').AsFloat;
  qryExecute.Close;
end;

function TdmLuong.TONG_GIOCONG_CCTHANG(MA_GIOCONG : variant):Variant;
begin
  if qryExecute.Active then qryExecute.Close;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text := 'select result_value from sf_tong_giocong_ccthang(:MA_NHANVIEN,:THANG,:NAM,:MA_GIOCONG)';
  qryExecute.Prepare;
  qryExecute.ParamByName('MA_GIOCONG').Value := MA_GIOCONG;
  qryExecute.Open;
  if qryExecute.RecordCount =0 then
    Result := 0
  else
    Result := qryExecute.FieldByName('RESULT_VALUE').AsFloat;
  qryExecute.Close;
end;


function TdmLuong.TONG_GIOCONG_CCNGAY(MA_GIOCONG : variant):Variant;
begin
  if qryExecute.Active then qryExecute.Close;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text := 'select result_value from sf_tong_giocong_ccngay(:MA_NHANVIEN,:THANG,:NAM,:MA_GIOCONG)';
  qryExecute.Prepare;
  qryExecute.ParamByName('MA_GIOCONG').Value := MA_GIOCONG;
  qryExecute.Open;
  if qryExecute.RecordCount =0 then
    Result := 0
  else
    Result := qryExecute.FieldByName('RESULT_VALUE').AsFloat;
  qryExecute.Close;
end;
function TdmLuong.SO_NGAYCHUAN(MA_NGAYCONG : variant):Variant;
begin
  if qryExecute.Active then qryExecute.Close;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text :='select result_value from SF_TONG_NGAYCHUAN(:MA_NHANVIEN,:MA_NGAYCONG,:NGAY_DAUTHANG,:NGAY_CUOITHANG)';
  qryExecute.Prepare;
  qryExecute.ParamByName('MA_NGAYCONG').Value := MA_NGAYCONG;
  qryExecute.ParamByName('NGAY_DAUTHANG').Value:=StartOfAMonth(NAM,THANG);
  qryExecute.ParamByName('NGAY_CUOITHANG').Value:=EndOfAMonth(NAM,THANG);
  qryExecute.Open;
  if qryExecute.RecordCount =0 then
    Result := 0
  else
    Result := qryExecute.FieldByName('RESULT_VALUE').AsFloat;
  qryExecute.Close;
end;
function TdmLuong.SO_GIOCHUAN(MA_GIOCONG : variant):Variant;
begin
  if qryExecute.Active then qryExecute.Close;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text :='select result_value from SF_TONG_GIOCHUAN(:MA_NHANVIEN,:MA_GIOCONG,:NGAY_DAUTHANG,:NGAY_CUOITHANG)';
  qryExecute.Prepare;
  qryExecute.ParamByName('MA_GIOCONG').Value := MA_GIOCONG;
  qryExecute.ParamByName('NGAY_DAUTHANG').Value:=StartOfAMonth(NAM,THANG);
  qryExecute.ParamByName('NGAY_CUOITHANG').Value:=EndOfAMonth(NAM,THANG);
  qryExecute.Open;
  if qryExecute.RecordCount =0 then
    Result := 0
  else
    Result := qryExecute.FieldByName('RESULT_VALUE').AsFloat;
  qryExecute.Close;
end;
function TdmLuong.HESO_CONGNGAY(MA_NGAYCONG : variant):Variant;
begin
  if qryExecute.Active then qryExecute.Close;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text :='select wdt_rate from hr_work_date_type where upper(wdt_no)=upper(:MA_NGAYCONG)';
  qryExecute.Prepare;
  qryExecute.ParamByName('MA_NGAYCONG').Value := MA_NGAYCONG;
  qryExecute.Open;
  if qryExecute.RecordCount=0 then
      Result := 0
  else
    Result := qryExecute.FieldByName('WHT_RATE').AsFloat;
  qryExecute.Close;
end;

function TdmLuong.HESO_CONGGIO(MA_GIOCONG : variant):Variant;
begin
  if qryExecute.Active then qryExecute.Close;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text :='select wht_rate from hr_work_hour_type where upper(wht_no)=upper(:MA_GIOCONG)';
  qryExecute.Prepare;
  qryExecute.ParamByName('MA_GIOCONG').Value := MA_GIOCONG;
  qryExecute.Open;
  if qryExecute.RecordCount=0 then
    Result := 0
  else
    Result := qryExecute.FieldByName('WHT_RATE').AsFloat;
  qryExecute.Close;
end;
//========================================================================================
function TdmLuong.HESO_CBNN: Variant;
begin
  if qryExecute.Active then qryExecute.Close;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text :=
      ' SELECT FIRST 1 WAGE_COEFF ' +
      ' FROM HR_WAGE_STANDARD_DETAIL ' +
      ' where EMPLOYEE_NO=:MA_NHANVIEN and PERIOD_ID<=:THANG_NAM_KY' +
      ' order by PERIOD_ID desc';
  qryExecute.Prepare;
  qryExecute.ParamByName('THANG_NAM_KY').Value := 10*(THANG-1 +12*NAM)+9;
  qryExecute.Open;
  if qryExecute.RecordCount=0 then
    Result := 0
  else
    Result := qryExecute.FieldByName('WAGE_COEFF').AsFloat;
  qryExecute.Close;
end;
function TdmLuong.KHOAN_LUONG(CT_KYHIEU,THANG,NAM:Variant):Variant;
begin
 if qryExecute.Active then qryExecute.Close;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text :=
     'select '+VarToStr(CT_KYHIEU)+' from WB_'+PA_KYHIEU+' '+
     ' where ma_nhanvien=:MA_NHANVIEN and '+
     ' ma_donvi=:MA_DONVI and '+
     ' ma_chucvu=:MA_CHUCVU and '+
     ' ma_thang='+VarToStr(thang)+ ' and '+
     ' ma_nam='+VarToStr(nam);
  try
    qryExecute.Prepare;
    qryExecute.Open;
    if qryExecute.RecordCount=0 then
      Result := 0
    else
      Result := qryExecute.FieldByName(VarToStr(CT_KYHIEU)).Value;
  except
    result:='';
  end;
  qryExecute.Close;
end;

function TdmLuong.GetMonth(s:variant):Variant;
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
function TdmLuong.GetYear(s:variant):Variant;
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
function TdmLuong.GetMonthYear(s:string;var month,year:integer):boolean;
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

function TdmLuong.IsNullStr(s:variant):Variant;
begin
  if Trim(VarToStr(s))='' then
    result:=1
  else
    result:=0;
end;
function TdmLuong.CompareString(s1,s2:variant):Variant;
begin
  if Trim(VarToStr(s1))=Trim(VarToStr(s2)) then
    result:=1
  else
    result:=0;
end;

function TdmLuong.TONG_KHOANLUONG(CT_KYHIEU,TU_THANGNAM,DEN_THANGNAM:Variant):Variant;
var tu_thang,den_thang :integer;
    tu_nam,den_nam:integer;
begin
  if GetMonthYear(VarToStr(TU_THANGNAM),tu_thang,tu_nam)=false then exit;
  if GetMonthYear(VarToStr(DEN_THANGNAM),den_thang,den_nam)=false then exit;

  if qryExecute.Active then qryExecute.Close;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text :=
     'select SUM('+VarToStr(CT_KYHIEU)+') from WB_'+PA_KYHIEU+' '+
     ' where ma_nhanvien=:MA_NHANVIEN and '+
     ' ma_donvi=:MA_DONVI and '+
     ' ma_chucvu=:MA_CHUCVU and '+
     ' (ma_thang-1+12*ma_nam) between :tu_thangnam and :den_thangnam ';
  try
    qryExecute.Prepare;
    qryExecute.ParamByName('TU_THANGNAM').Value:=tu_thang-1 +12*tu_nam;
    qryExecute.ParamByName('DEN_THANGNAM').Value:=den_thang-1 +12*den_nam;
    qryExecute.Open;
    if qryExecute.RecordCount=0 then
      Result := 0
    else
      Result := qryExecute.FieldByName(VarToStr(CT_KYHIEU)).Value;
  except
    result:='';
  end;
  qryExecute.Close;
end;

function TdmLuong.IS_NULL(CT_KYHIEU:Variant):Variant;
begin
  if qryExecute.Active then qryExecute.Close;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text :=
     'select '+VarToStr(CT_KYHIEU)+' RESULT_VALUE from WB_'+PA_KYHIEU+' '+
     ' where ma_nhanvien=:MA_NHANVIEN and '+
     ' ma_donvi=:MA_DONVI and '+
     ' ma_chucvu=:MA_CHUCVU and '+
     ' ma_thang='+VarToStr(thang)+ ' and '+
     ' ma_nam='+VarToStr(nam) + ' and '+
     ' ma_dot='+VarToStr(dot);

  try
    qryExecute.Prepare;
    qryExecute.Open;
    if qryExecute.RecordCount=0 then
      Result := 1
    else
      if qryExecute.FieldByName('RESULT_VALUE').IsNull then
        Result := 1
      else
        Result := 0;
  except
    result:='';
  end;
  qryExecute.Close;
end;

//Added by THUYPTP - 19/03/2010
//Dieu chinh lai ham Round
function TdmLuong.SP_ROUND(INPUT_VALUE,LEN : Variant):Variant;
begin
  if qryExecute.Active then qryExecute.Close;
  qryExecute.SQL.Clear;
  qryExecute.SQL.Text :='SELECT OUTPUTVALUE FROM SP_ROUND(:LEN,:INPUT_VALUE);';
  qryExecute.Prepare;
  qryExecute.ParamByName('LEN').Value := LEN;
  qryExecute.ParamByName('INPUT_VALUE').Value := INPUT_VALUE + 1/10000;
  qryExecute.Open;
  if qryExecute.RecordCount=0 then
    Result := 0
  else
    Result := qryExecute.FieldByName('OUTPUTVALUE').AsFloat;
  qryExecute.Close;
end;

procedure TdmLuong.qryExecuteError(Sender: TObject; const ERRCODE: Integer;
  ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
  SQLMessage, SQL: TStringList; var RaiseException: Boolean);
begin
  RaiseException:=false;
end;

end.
