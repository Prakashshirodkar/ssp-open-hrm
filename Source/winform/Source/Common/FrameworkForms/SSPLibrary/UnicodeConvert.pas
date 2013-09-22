unit UnicodeConvert;
{
  Chuyen tu unicode co day Tieng Viet sang khong dau.
  Thay the ky tu khoang trang thanh ky tu gach duoi
}
interface

uses
  Controls, Dialogs;

const
  e: array[0..21] of widestring =
    ('é','è','ẻ','ẽ','ẹ','ê','ế','ề','ể','ễ','ệ',
    'É','È','Ẻ','Ẽ','Ẹ','Ê','Ế','Ề','Ể','Ễ','Ệ');
  y: array[0..9] of widestring =
    ('ý','ỳ','ỷ','ỹ','ỵ',
    'Ý','Ỳ','Ỷ','Ỹ','Ỵ');
  u: array[0..21] of widestring =
    ('ú','ù','ủ','ũ','ụ','ư','ứ','ừ','ử','ữ','ự',
    'Ú','Ù','Ủ','Ũ','Ụ','Ư','Ứ','Ừ','Ử','Ữ','Ự');
  i: array[0..9] of widestring =
    ('í','ì','ỉ','ĩ','ị','Í','Ì','Ỉ','Ĩ','Ị');
  o: array[0..33] of widestring =
    ('ó','ò','ỏ','õ','ọ','ơ','ớ','ờ','ở','ỡ','ợ','ô','ố','ồ','ổ','ỗ','ộ',
    'Ó','Ò','Ỏ','Õ','Ọ','Ơ','Ớ','Ờ','Ở','Ỡ','Ợ','Ô','Ố','Ồ','Ổ','Ỗ','Ộ');
  a: array[0..33] of widestring =
    ('á','à','ả','ã','ạ','â','ấ','ầ','ẩ','ẫ','ậ','ă','ắ','ằ','ẳ','ẵ','ặ',
    'Á','À','Ả','Ã','Ạ','Â','Ấ','Ầ','Ẩ','Ẫ','Ậ','Ă','Ắ','Ằ','Ẳ','Ẵ','Ặ');
  d: array[0..1] of widestring =
    ('đ',
    'Đ');

function isE(c: widestring): integer;
function isY(c: widestring): integer;
function isU(c: widestring): integer;
function isI(c: widestring): integer;
function isO(c: widestring): integer;
function isA(c: widestring): integer;
function isD(c: widestring): integer;


procedure UnicodeToASCCII(source:widestring; var dest: string);
procedure ChuoiSangKyHieu(source:string; var dest: string);

implementation

uses SysUtils;

function isD(c: widestring): integer;
var
  i: integer;
begin
  for i:=0 to length(d) -1 do
    if c = UTF8Decode(d[i]) then
    begin
      if i >= length(d)/2 then
        Result:=2
      else
        Result:=1;
      exit;
    end;
  Result:=0;
end;

function isE(c: widestring): integer;
var
  i: integer;
begin
  for i:=0 to length(e) -1 do
    if c = UTF8Decode(e[i]) then
    begin
      if i >= length(e)/2 then
        Result:=2
      else
        Result:=1;
      exit;
    end;
  Result:=0;
end;
function isY(c: widestring): integer;
var
  i: integer;
begin
  for i:=0 to length(y) -1 do
    if c = UTF8Decode(y[i]) then
    begin
      if i >= length(y)/2 then
        Result:=2
      else
        Result:=1;
      exit;
    end;
  Result:=0;
end;
function isU(c: widestring): integer;
var
  i: integer;
begin
  for i:=0 to length(u) -1 do
    if c = UTF8Decode(u[i]) then
    begin
      if i >= length(u)/2 then
        Result:=2
      else
        Result:=1;
      exit;
    end;
  Result:=0;
end;
function isI(c: widestring): integer;
var
  ii: integer;
begin
  for ii:=0 to length(i) -1 do
    if c = UTF8Decode(i[ii]) then
    begin
      if ii >= length(i)/2 then
        Result:=2
      else
        Result:=1;
      exit;
    end;
  Result:=0;
end;
function isO(c: widestring): integer;
var
  i: integer;
begin
  for i:=0 to length(o) -1 do
    if c = UTF8Decode(o[i]) then
    begin
      if i >= length(o)/2 then
        Result:=2
      else
        Result:=1;
      exit;
    end;
  Result:=0;
end;
function isA(c: widestring):integer;
var
  i: integer;
begin
  for i:=0 to length(a) -1  do
    if c = UTF8Decode(a[i]) then
    begin
      if i >= length(a)/2 then
        Result:=2
      else
        Result:=1;
      exit;
    end;
  Result:=0;
end;

procedure UnicodeToASCCII(source:widestring; var dest: string);
var
  l:integer;
  i : integer;
begin
  l:=length(source);
  dest := '';
  for i:=1 to l   do
  begin
    if isE(source[i]) = 1 then dest := dest + 'e' else
    if isY(source[i]) = 1 then dest := dest + 'y' else
    if isU(source[i]) = 1 then dest := dest + 'u' else
    if isI(source[i]) = 1 then dest := dest + 'i' else
    if isO(source[i]) = 1 then dest := dest + 'o' else
    if isA(source[i]) = 1 then dest := dest + 'a' else
    if isE(source[i]) = 2 then dest := dest + 'E' else
    if isY(source[i]) = 2 then dest := dest + 'Y' else
    if isU(source[i]) = 2 then dest := dest + 'U' else
    if isI(source[i]) = 2 then dest := dest + 'I' else
    if isO(source[i]) = 2 then dest := dest + 'O' else
    if isA(source[i]) = 2 then dest := dest + 'A' else
    if isD(source[i]) = 1 then dest := dest + 'd' else
    if isD(source[i]) = 2 then dest := dest + 'D' else
    if source[i] = ' ' then
      dest := dest + '_'
    else
    if  (source[i] = '\') or
        (source[i] = '/') or
        (source[i] = ':') or
        (source[i] = '*') or
        (source[i] = '?') or
        (source[i] = '"') or
        (source[i] = '<') or
        (source[i] = '>') or
        (source[i] = '|') then
    else
      dest := dest + UTF8Decode(source[i]);
  end;
end;

//Added by THUYPTP - 23/03/2010
procedure ChuoiSangKyHieu(source:string; var dest: string);
var
  l:integer;
  i : integer;
  source_asccii : String;
begin
  UnicodeToASCCII(source, source_asccii);
  l:=length(source_asccii);
  dest := '';
  for i:=1 to l   do
  begin
    if  (source_asccii[i] = ' ') or
        (source_asccii[i] = '\') or
        (source_asccii[i] = '/') or
        (source_asccii[i] = ':') or
        (source_asccii[i] = '*') or
        (source_asccii[i] = '?') or
        (source_asccii[i] = '"') or
        (source_asccii[i] = '<') or
        (source_asccii[i] = '>') or
        (source_asccii[i] = '-') or
        (source_asccii[i] = '|') then
      dest := dest + '_'
    else
      dest := dest + UTF8Decode(source_asccii[i]);
  end;
end;

end.