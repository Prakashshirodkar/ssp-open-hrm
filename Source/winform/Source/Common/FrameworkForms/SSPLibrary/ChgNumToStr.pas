unit ChgNumToStr;

interface
uses IBODataset, IB, SysUtils;

  function FChgNumToStr(SoCandoc : String) : String;
  Function DocBaSo(szBaSo : String) : String;
  Function DocSo_Tram(i : Integer; hangchuc : Integer; hangdonvi : Integer) : String;
  Function DocSo_Chuc(i : Integer; hangdonvi : Integer) : String;
  Function DocSo_Donvi(i : Integer; hangchuc : Integer) : String;
  function DocSoThanhChu(Socandoc: string): Widestring;
const
  ArrHang : Array[1..6] of String=(' ngàn ',' triệu ',' tỷ ',' ngàn ',' triệu ',' tỷ ');
var
  ArrCacBoBa : Array[0..6] of String;

implementation

function DocSoThanhChu(Socandoc: string): Widestring;
var
  str, rs:string;
begin
  str:=Copy(Socandoc,length(Socandoc)-2,3);
  rs := FChgNumToStr(SoCandoc);
{  rs := rs +  ' đồng';
  if str='000' then
    rs := rs + ' chẵn';
  rs := rs +  '.';
}
  Result := UTF8Decode(rs);
end;

Function FChgNumToStr(SoCandoc : String) : String;
var
  ch:Char;
  IsSoAm : Boolean;
  sodoc:Double;
  str3kqtam, rs : String;
  rsCode,i,j, chieudai:integer;
begin
  rs :='';
  val(SoCandoc,sodoc,rsCode);
  If rsCode<>0 Then Exit;

  sodoc:=round(sodoc);
  If sodoc < 0 Then
  begin
      Sodoc := -Sodoc;
      IsSoAm := True;
  End
  else
    IsSoAm := False;

  SoCandoc := FloatToStr(sodoc);
  chieudai:=Length(SoCandoc);
  If chieudai > 21 Then
  begin
      rs := 'Kh�ng th� ��c 1 s� d�i h�n 21 ch� s�", vbInformation, "Th�ng b�o';
      Exit;
  End;
    i := 0;
    While Length(SoCandoc) > 3 do
    begin
        ArrCacBoBa[i] := copy(SoCandoc, Length(SoCandoc) - 2, 3);
        SoCandoc := copy(SoCandoc, 1, Length(SoCandoc) - 3);
        i := i + 1;
    end;
    ArrCacBoBa[i] := SoCandoc;

    For j := 0 To i do
    begin
        str3kqtam := DocBaSo(ArrCacBoBa[j]);
        If j <> 0 Then
        begin
            If ((str3kqtam = '') And (ArrHang[j] <> ' t� ')) Then
                rs := str3kqtam + rs
            Else
                rs := str3kqtam + ArrHang[j] + rs;
        end
        Else
            rs := str3kqtam + rs;
    end;
    rs := Trim(rs);
    rs := StringReplace(rs, '   ', ' ',[rfReplaceAll]);
    rs := StringReplace(rs, '  ', ' ',[rfReplaceAll]);
    str3kqtam := rs;
    if length(str3kqtam)=0 then exit;
    If IsSoAm Then
        rs := 'Âm ' + str3kqtam
    Else
    begin
      ch := str3kqtam[1];
      rs := UpCase(ch) + Copy(str3kqtam, 2, Length(str3kqtam)-1);
    end;
  Result :=rs;
End;

Function DocBaSo(szBaSo : String) : String;
var
  Ch1, Ch2, Ch3 : Char;
begin
    If ((szBaSo = '') Or (Length(szBaSo) > 3)) Then
    begin
        Result := '';
        Exit;
    End;

    If Length(szBaSo) = 3 Then
    begin
        Ch1 := szBaSo[1];
        Ch2 := szBaSo[2];
        Ch3 := szBaSo[3];
    end
    Else
    begin
        If Length(szBaSo) = 2 Then
        begin
            Ch1 := '0';
            Ch2 := szBaSo[1];
            Ch3 := szBaSo[2];
        end
        Else
        begin
            Ch1 := '0';
            Ch2 := '0';
            Ch3 := szBaSo[1];
        End;
    End;

    Result :='';
    If Length(szBaSo) = 3 Then
        Result := DocSo_Tram(strtoint(Ch1), strtoint(Ch2), strtoint(Ch3));

    If Length(szBaSo) >= 2 Then
        Result :=Result + DocSo_Chuc(strtoint(Ch2), strtoint(Ch3));
  Result := Result + DocSo_Donvi(strtoint(Ch3), strtoint(Ch2));
End;

Function DocSo_Tram(i : Integer; hangchuc : Integer; hangdonvi : Integer) : String;
begin
    Case i of
        1:
            Result := 'một trăm ';
        2:
            Result := 'hai trăm ';
        3:
            Result := 'ba trăm ';
        4:
            Result := 'bốn trăm ';
        5:
            Result := 'năm trăm ';
        6:
            Result := 'sáu trăm ';
        7:
            Result := 'bảy trăm ';
        8:
            Result := 'tám trăm ';
        9:
            Result := 'chín trăm ';
        0:
            If ((hangchuc <> 0) Or (hangdonvi <> 0)) Then
                Result := 'không trăm '
            Else
                Result := '';
    End;
End;

Function DocSo_Chuc(i : Integer; hangdonvi : Integer) : String;
begin
    Case i of
        1:
            Result := 'mười ';
        2:
            Result := 'hai mươi ';
        3:
            Result := 'ba mươi ';
        4:
            Result := 'bốn mươi ';
        5:
            Result := 'năm mươi ';
        6:
            Result := 'sáu mươi ';
        7:
            Result := 'bảy mươi ';
        8:
            Result := 'tám mươi ';
        9:
            Result := 'chín mươi ';
        0:
            If hangdonvi <> 0 Then
                Result := 'lẻ '
            Else
                Result := '';
    End;
End;

Function DocSo_Donvi(i : Integer; hangchuc : Integer) : String;
begin
    Case i of
        1:
            If ((hangchuc = 1) Or (hangchuc = 0)) Then
                Result := 'một'
            Else
                Result := 'mốt';
        2:
            Result := 'hai';
        3:
            Result := 'ba';
        4:
            Result := 'bốn';
        5:
            If hangchuc = 0 Then
                Result := 'năm'
            Else
                Result := 'lăm';
        6:
            Result := 'sáu';
        7:
            Result := 'bảy';
        8:
            Result := 'tám';
        9:
            Result := 'chín';
        0:
            Result := 'không';
    End;
End;

end.
