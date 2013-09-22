unit SSP_Math;

interface

function _Mod(x1, x2: Variant): Variant;
function _Div(x1, x2: Variant): Variant;
function _Abs(x: Variant): Variant;
function _Sqrt(x: Variant): Variant;
function _Sqr(x: Variant): Variant;
function _Round(x,i: Variant): Variant;
function _Min(x,y: Variant): Variant;
function _Max(x,y: Variant): Variant;
function _Exp(x: Variant): Variant;
function _Ln(x: Variant): Variant;

implementation
uses Math,SysUtils,Variants;
function _Mod(x1, x2: Variant): Variant;
begin
  result := Round(x1) mod Round(x2);
end;

function _Div(x1, x2: Variant): Variant;
begin
  result := Round(x1) div Round(x2);
end;

function _Abs(x: Variant): Variant;
begin
  result := Abs(x);
end;

function _Sqrt(x: Variant): Variant;
begin
  result := Sqrt(x);
end;

function _Exp(x: Variant): Variant;
begin
  result := exp(x);
end;

function _Ln(x: Variant): Variant;
begin
  result := Ln(x);
end;
function _Sqr(x: Variant): Variant;
begin
  result := Sqr(x);
end;
function _Round(x,i: Variant): Variant;
var a : integer;
begin
  a:=StrToIntDef(VarToStr(Variant(i)),0);
  result := RoundTo(x,a);
end;

function _Min(x,y: Variant): Variant;
begin
  if x>=y then
    result := y
  else
    Result:=x;
end;

function _Max(x,y: Variant): Variant;
begin
  if x>=y then
    result := x
  else
    Result:=y;
end;

end.
