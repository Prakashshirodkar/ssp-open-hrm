// Slightly modified version of
// Inprise TI 2803:  How to Encrypt a String
// www.inprise.com/devsupport/delphi/ti_list/TI2803.html
//
// Output encrypted string in hex
//
// efg, 3 Feb 1999

UNIT SecurityLibrary;

INTERFACE

  TYPE
    TSecurity =
      CLASS(TObject)
        PRIVATE
          Fconstant1:  WORD;
          Fconstant2:  WORD;
        PUBLIC
          CONSTRUCTOR Create(CONST constant1,constant2:  WORD);
          FUNCTION Encrypt (CONST s:  STRING; CONST StartKey:  WORD):  STRING;
          FUNCTION Decrypt (CONST s:  STRING; CONST StartKey:  WORD):  STRING;
      END;


IMPLEMENTATION

  USES
    SysUtils;    // IntToHex


  CONSTRUCTOR TSecurity.Create (CONST constant1,constant2:  WORD);
  BEGIN
    Fconstant1 := constant1;
    Fconstant2 := constant2
  END {Create};


  FUNCTION TSecurity.Encrypt (CONST s:  STRING; CONST StartKey:  WORD):  STRING;
    VAR
      b  :  BYTE;
      i  :  INTEGER;
      key:  WORD;
  BEGIN
    key := StartKey;
    RESULT := '';
    FOR i := 1 TO LENGTH(s) DO
    BEGIN
      b := BYTE(s[i]) XOR (key SHR 8);
      key := (b + key) * Fconstant1 + Fconstant2;
      RESULT := RESULT + IntToHex(b,2)
    END
  END {Encrypt};


  FUNCTION TSecurity.Decrypt (CONST s:  STRING; CONST StartKey:  WORD):  STRING;
    VAR
      b  :  BYTE;
      i  :  INTEGER;
      key:  WORD;
  BEGIN
    b := 0;  // Avoid compiler initialization warning

    key := StartKey;
    RESULT := '';
    FOR i := 1 TO LENGTH(s) DIV 2 DO
    BEGIN
      TRY
        b :=  StrToInt('$' + COPY(s, 2*i-1, 2));
      EXCEPT
        ON EConvertError DO b := 0
      END;
      RESULT := RESULT + CHAR( b XOR (key SHR 8) );
      key := (b + key) * Fconstant1 + Fconstant2
    END
  END {Decrypt};


END.
