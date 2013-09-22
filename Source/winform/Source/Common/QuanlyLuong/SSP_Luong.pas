unit SSP_Luong;

interface
uses SSP_Script,StConst;

const
//  stscExprEmpty      = 150;  {empty expression}
//  stscExprBadNum     = 151;  {error in floating point number}
//  stscExprBadChar    = 152;  {unknown character}
//  stscExprOpndExp    = 153;  {expected function, number, sign, or (}
//  stscExprNumeric    = 154;  {numeric error}
//  stscExprBadExp     = 155;  {invalid expression}
//  stscExprOpndOvfl   = 156;  {operand stack overflow}
//  stscExprUnkFunc    = 157;  {unknown function identifier}
//  stscExprLParExp    = 158;  {left parenthesis expected}
//  stscExprRParExp    = 159;  {right parenthesis expected}
//  stscExprCommExp    = 160;  {comma expected}
//  stscExprDupIdent   = 161;  {duplicate identifier}
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

  function F_STRING_POS(V_SUB_S,V_S: Variant):Variant;
  procedure InitIdentifier(script:TSSP_Script;test_flag:boolean);
implementation

uses SSP_Math, LuongDataModule, Variants,StrUtils;

function F_STRING_POS(V_SUB_S,V_S : Variant):Variant;
var s, sub_s :string;
begin
  s:=VarToStr(V_S);
  sub_s:=VarToStr(V_SUB_S);
  result:=Pos(sub_s,s);
end;

//======================================================================
procedure InitIdentifier(script:TSSP_Script;test_flag:boolean);
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
  //script.AddFunction2Param('Round', _Round);
  script.AddFunction2Param('Min', _Min);
  script.AddFunction2Param('Max', _Max);
  script.AddMethod0Param('THANG',dmLuong.F_THANG);
  script.AddMethod0Param('NAM',dmLuong.F_NAM);
  script.AddMethod0Param('DOT',dmLuong.F_DOT);
  // dang ky ham so he thong
  script.AddMethod2Param('F_THUE_THUNHAP',dmLuong.THUE_THUNHAP);
  // Ham so tong hop du lieu cham cong
  script.AddMethod2Param('Round',dmLuong.SP_ROUND);
  script.AddMethod1Param('F_TONG_NGAYCONG_CCTHANG',dmLuong.TONG_NGAYCONG_CCTHANG);
  script.AddMethod1Param('F_TONG_GIOCONG_CCTHANG',dmLuong.TONG_GIOCONG_CCNGAY);
  script.AddMethod1Param('F_TONG_GIOCONG_CCNGAY',dmLuong.TONG_GIOCONG_CCNGAY);
  script.AddMethod1Param('F_SO_NGAYCHUAN',dmLuong.SO_NGAYCHUAN);
  script.AddMethod1Param('F_SO_GIOCHUAN',dmLuong.SO_GIOCHUAN);
  script.AddMethod1Param('F_HESO_CONGNGAY',dmLuong.HESO_CONGNGAY);
  script.AddMethod1Param('F_HESO_CONGGIO',dmLuong.HESO_CONGGIO);
  script.AddMethod0Param('F_HESO_CBNN',dmLuong.HESO_CBNN);
  script.AddFunction2Param('F_STRING_POS',F_STRING_POS);
  script.AddMethod3Param('F_KHOAN_LUONG',dmLuong.KHOAN_LUONG);
  script.AddMethod3Param('F_TONG_KHOAN_LUONG',dmLuong.TONG_KHOANLUONG);
  script.AddMethod1Param('F_IS_NULL',dmLuong.IS_NULL);

  script.AddMethod1Param('F_GET_MONTH',dmLuong.GetMonth);
  script.AddMethod1Param('F_GET_YEAR',dmLuong.GetYear);
  script.AddMethod1Param('F_IS_NULL_STRING',dmLuong.IsNullStr);
  script.AddMethod2Param('F_COMPARE_STRING',dmLuong.CompareString);


end;
end.



