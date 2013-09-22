//Post: To use these function below you have to add all
//variables and fuctions used in your script before it
// is analyzed

unit SSP_Script;

interface
uses StExpr, Classes;
const
  SPACE_CHARACTER = [' ', #10, #13];
type
  TExLogicOp = (eq, lgt, lt, lgeq, leq, dif);

type
  TToken = class(TObject)
  public
    TokenName: string;
    TokenPos: integer;
  end;
  TSSP_Script = class(TStExpression)
  private
    FScript: string;
    F_StackKeyword: TStrings;
    procedure GetExpr(script_in: string; var have_if: boolean; var logic_expr:
      string; var then_expr: string; var else_expr: string);
    procedure GetSQL(script_in: string; var have_sql: boolean);
    function AnalyzeLogicExp(expr_in: string; var res: boolean): boolean;
    function LogicExprExtract(expr: string; var res: boolean): boolean;
    function string_filter(const string_in: string): string;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy;
    function AnalyzeScript: Variant; overload;
    function AnalyzeScript(script_in: string): Variant; overload;
    function AnalyzeSQL(script_in: string): Variant;
    function Test_Script: boolean; overload;
    function Test_Script(script_in: string): boolean; overload;

    property Script: string read FScript write FScript;
    function GetCurFunction: string;
  end;

implementation

uses SysUtils, StrUtils, Variants, DB, LuongDataModule, IBODataset;

procedure TSSP_Script.GetSQL(script_in: string; var have_sql: boolean);
begin
  dmLuong.qryExecute.SQL.Text := script_in;
  have_sql := false;
  try
    dmLuong.qryExecute.Prepare;
    have_sql := dmLuong.qryExecute.Prepared;
  except
    have_sql := false;
  end;

end;

procedure TSSP_Script.GetExpr(script_in: string; var have_if: boolean; var
  logic_expr: string; var then_expr: string; var else_expr: string);
// phan tich cac thanh phan trong cau IF .. THEN .. ELSE
  function FoundToken(token, script: string; var from: integer): boolean;
  begin
    if from = 1 then
      result := (PosEx(token, script, from) = from)
    else if (from < (Length(script) - length(token))) then
    begin
      result := (PosEx(' ' + token + ' ', script, from) = from);
      if result = true then
        from := from + 1;
    end
    else
    begin
      result := (PosEx(' ' + token, script, from) = from);
      if result = true then
        from := from + 1;
    end;
  end;
  procedure PushToken(token: string; token_pos: integer);
  var
    p: TToken;
  begin
    p := TToken.Create;
    p.TokenName := token;
    p.TokenPos := token_pos;
    F_StackKeyword.InsertObject(0, token, p);
  end;
  function PopToken: TToken;
  begin
    if F_StackKeyword.Count > 0 then
    begin
      result := TToken(F_StackKeyword.Objects[0]);
      F_StackKeyword.Delete(0);
    end
    else
      result := nil;
  end;
  function LastToken: string;
  begin
    if F_StackKeyword.Count > 0 then
      result := F_StackKeyword.Strings[0]
    else
      result := 'ERROR_EMPTY_STACK';
  end;
  procedure FreeStack;
  begin
    while F_StackKeyword.Count > 0 do
    begin
      PopToken.Free;
    end;
  end;
var
  len, i: integer;
  p_token_then, p_token_if, p_token_else: TToken;
begin
  p_token_if := nil;
  p_token_then := nil;
  p_token_else := nil;

  script_in := UpperCase(trim(string_filter(script_in)));
  have_if := false;

  //=======================================================
  F_StackKeyword.Clear;
  PushToken('START', 0);
  len := Length(script_in);
  if len = 0 then
    RaiseExprError(150, 0);
  for i := 1 to len do
  begin
    if FoundToken('IF', script_in, i) then
      PushToken('IF', i)
    else if FoundToken('THEN', script_in, i) then
    begin
      if LastToken = 'IF' then
        PushToken('THEN', i)
      else
      begin
        FreeStack;
        Exit;
      end;
    end
    else if FoundToken('ELSE', script_in, i) then
    begin
      if LastToken = 'THEN' then
      begin
        PushToken('ELSE', i);
        if Assigned(p_token_else) then
          p_token_else.Free;
        if Assigned(p_token_then) then
          p_token_then.Free;
        if Assigned(p_token_if) then
          p_token_if.Free;

        p_token_else := PopToken;
        p_token_then := PopToken;
        p_token_if := PopToken;

        if Assigned(p_token_if) and
          Assigned(p_token_then) and
          Assigned(p_token_else) and
          (LastToken = 'START') then
        begin
          have_if := true;
          logic_expr := Copy(script_in, p_token_if.TokenPos + 2,
            p_token_then.TokenPos - p_token_if.TokenPos - 2);
          then_expr := Copy(script_in, p_token_then.TokenPos + 4,
            p_token_else.TokenPos - p_token_then.TokenPos - 4);
          else_expr := Copy(script_in, p_token_else.TokenPos + 4,
            len - p_token_else.TokenPos - 3);
          Break;  
        end;
      end
      else
      begin
        FreeStack;
        Exit;
      end;
    end;
  end; //fOR

  if Assigned(p_token_if) then
    p_token_if.Free;
  if Assigned(p_token_then) then
    p_token_then.Free;
  if Assigned(p_token_else) then
    p_token_else.Free;
  FreeStack;
end;

function TSSP_Script.AnalyzeLogicExp(expr_in: string; var res: boolean):
  boolean;
// phan tich bieu thuc logic trong cau lenh if (hien tai
// chi ho tro cho cau lenh if co 1 bieu thuc so sanh, nhieu hon
// se coi nhu loi -- se them vao trong tuong lai)
var
  i, len: integer;
  leftval, rightval: double;
  leftval_var, rightval_var: variant;
  //>,>=,<,<=,=,<>
  cont: boolean;
  LeftExprLogic: string;
  RightExprLogic: string;
begin
  result := false;
  len := length(expr_in);
  if (len < 3) then
    RaiseExprError(150, 0);
  cont := true;
  i := 1;
  while ((i <= len - 1) and (cont = true)) do
  begin
    // toan tu < : nho hon
    if ((expr_in[i] = '<') and
      (expr_in[i + 1] <> '=') and
      (expr_in[i + 1] <> '>')) then
    begin
      LeftExprLogic := LeftStr(expr_in, i - 1);
      RightExprLogic := RightStr(expr_in, len - i);
      cont := false;
      result := true;
      //Ng.Xuan.Hop fixed at
      //leftval := AnalyzeExpr(LeftExprLogic);
      Expression := LeftExprLogic;
      leftval := StrToFloat(VarToStr(AnalyzeExpression));
      Expression := RightExprLogic;
      rightval := StrToFloat(VarToStr(AnalyzeExpression));
      //  rightval := AnalyzeExpr(RightExprLogic);
      //
      if leftval < rightval then
        res := true
      else
        res := false;
    end;
    // toan tu > : lon hon
    if (expr_in[i] = '>') and
      (expr_in[i + 1] <> '=') then
    begin
      LeftExprLogic := LeftStr(expr_in, i - 1);
      RightExprLogic := RightStr(expr_in, len - i);
      cont := false;
      //Ng.Xuan.Hop fixed at
      //leftval := AnalyzeExpr(LeftExprLogic);
      Expression := LeftExprLogic;
      leftval := StrToFloat(VarToStr(AnalyzeExpression));
      Expression := RightExprLogic;
      rightval := StrToFloat(VarToStr(AnalyzeExpression));
      //  rightval := AnalyzeExpr(RightExprLogic);
     //
      if leftval > rightval then
        res := true
      else
        res := false;
    end;
    // toan tu <> : khac
    if (expr_in[i] = '<') and
      (expr_in[i + 1] = '>') then
    begin
      LeftExprLogic := LeftStr(expr_in, i - 1);
      RightExprLogic := RightStr(expr_in, len - i - 1);
      cont := false;
      //Ng.Xuan.Hop fixed at
      //leftval := AnalyzeExpr(LeftExprLogic);
      Expression := LeftExprLogic;
      //   leftval:=StrToFloat(VarToStr(AnalyzeExpression));
      leftval_var := AnalyzeExpression;
      Expression := RightExprLogic;
      //  rightval:=StrToFloat(VarToStr(AnalyzeExpression));
      rightval_var := AnalyzeExpression;
      //  rightval := AnalyzeExpr(RightExprLogic);
       //
      if rightval_var <> leftval_var then
        res := true
      else
        res := false;

    end;
    //toan tu = : bang
    if expr_in[i] = '=' then
    begin
      LeftExprLogic := LeftStr(expr_in, i - 1);
      RightExprLogic := RightStr(expr_in, len - i);
      cont := false;
      //Ng.Xuan.Hop fixed at
      //leftval := AnalyzeExpr(LeftExprLogic);
      Expression := LeftExprLogic;
      //leftval:=StrToFloat(VarToStr(AnalyzeExpression));
      leftval_var := AnalyzeExpression;
      Expression := RightExprLogic;
      rightval_var := AnalyzeExpression;
      // rightval:=StrToFloat(VarToStr(AnalyzeExpression));

     //  rightval := AnalyzeExpr(RightExprLogic);
     //
      if rightval_var = leftval_var then
        res := true
      else
        res := false;

    end;
    // toan tu <= : nho hon hoac bang
    if (expr_in[i] = '<') and
      (expr_in[i + 1] = '=') then
    begin
      LeftExprLogic := LeftStr(expr_in, i - 1);
      RightExprLogic := RightStr(expr_in, len - i - 1);
      cont := false;
      //Ng.Xuan.Hop fixed at
      //leftval := AnalyzeExpr(LeftExprLogic);
      Expression := LeftExprLogic;
      leftval := StrToFloat(VarToStr(AnalyzeExpression));
      Expression := RightExprLogic;
      rightval := StrToFloat(VarToStr(AnalyzeExpression));

      //  rightval := AnalyzeExpr(RightExprLogic);
      //
      if leftval <= rightval then
        res := true
      else
        res := false;

    end;
    // toan tu >= : lon hon hoac bang
    if (expr_in[i] = '>') and
      (expr_in[i + 1] = '=') then
    begin
      LeftExprLogic := LeftStr(expr_in, i - 1);
      RightExprLogic := RightStr(expr_in, len - i - 1);
      cont := false;
      //Ng.Xuan.Hop fixed at
      //leftval := AnalyzeExpr(LeftExprLogic);
      Expression := LeftExprLogic;
      leftval := StrToFloat(VarToStr(AnalyzeExpression));
      Expression := RightExprLogic;
      rightval := StrToFloat(VarToStr(AnalyzeExpression));

      //  rightval := AnalyzeExpr(RightExprLogic);
      //
      if leftval >= rightval then
        res := true
      else
        res := false;

    end;
    i := i + 1;
  end;
end;

constructor TSSP_Script.Create(AOwner: TComponent);
begin
  {$IFDEF TRIALRUN}TCCVC;
  {$ENDIF}
  inherited Create(AOwner);
  F_StackKeyword := TStringList.Create;
end;

destructor TSSP_Script.Destroy;
begin
  F_StackKeyword.Free;
  inherited Free;
end;

function TSSP_Script.LogicExprExtract(expr: string; var res: boolean): boolean;
var
  i, len, num_open: integer;
  leftexpr, rightexpr: string;
  leftlogic, rightlogic, temp: boolean;
  op1: TExLogicOp;
begin
  len := length(expr);
  if len < 3 then
    Result := false
  else
  begin
    if expr[1] = ' ' then
    begin
      Result := LogicExprExtract(RightStr(expr, len - 1), res);
      exit;
    end;
    if expr[1] = '(' then
    begin
      i := 2;
      num_open := 1;

      while (num_open > 0) and (i < len) do
      begin
        if expr[i] = '(' then
          num_open := num_open + 1;
        if expr[i] = ')' then
          num_open := num_open - 1;
        i := i + 1;
      end;

      if i = len then
      begin
        Result := LogicExprExtract(MidStr(expr, 2, len - 2), res);
        exit;
      end;
      temp := true;

      while (i < len) and (temp = true) do
      begin
        if expr[i] = ' ' then
          i := i + 1;
      end;

      if i >= len - 1 then
      begin
        Result := false;
        exit;
      end;

      if (UpperCase(expr[i]) = 'O') and
        (UpperCase(expr[i + 1]) = 'R') then
      begin
        leftexpr := LeftStr(expr, i - 1);
        rightexpr := RightStr(expr, len - i - 1);
        Result := LogicExprExtract(leftexpr, leftlogic) and
          LogicExprExtract(rightexpr, rightlogic);
        res := (leftlogic or rightlogic);
        exit;
      end;
      if i >= len - 2 then
      begin
        Result := false;
        exit;
      end;
      if (UpperCase(expr[i]) = 'A') and
        (UpperCase(expr[i + 1]) = 'N') and
        (UpperCase(expr[i + 2]) = 'D') then
      begin
        leftexpr := LeftStr(expr, i - 1);
        rightexpr := RightStr(expr, len - i - 2);
        Result := LogicExprExtract(leftexpr, leftlogic) and
          LogicExprExtract(rightexpr, rightlogic);
        res := (leftlogic and rightlogic);
        exit;
      end;
    end;
    i := 1;
    temp := true;
    while (i < len) and temp do
    begin
      if (len - i > 3) then
        if ((expr[i] = 'a') or (expr[i] = 'A')) and ((expr[i + 1] = 'n') or
          (expr[i + 1] = 'N')) and ((expr[i + 2] = 'd') or (expr[i + 2] = 'd'))
            then
        begin
          leftexpr := LeftStr(expr, i - 1);
          rightexpr := RightStr(expr, len - i - 2);
          Result := LogicExprExtract(leftexpr, leftlogic) and
            LogicExprExtract(rightexpr, rightlogic);
          res := leftlogic and rightlogic;
          exit;
        end;
      if (UpperCase(expr[i]) = 'A') and
        (UpperCase(expr[i + 1]) = 'N') and
        (UpperCase(expr[i + 2]) = 'D') then
      begin
        leftexpr := LeftStr(expr, i - 1);
        rightexpr := RightStr(expr, len - i - 2);
        Result := LogicExprExtract(leftexpr, leftlogic) and
          LogicExprExtract(rightexpr, rightlogic);
        res := leftlogic or rightlogic;
        exit;
      end;
      Result := AnalyzeLogicExp(expr, res);
    end;
  end; //
end;

function TSSP_Script.AnalyzeSQL(script_in: string): Variant;
begin
  dmLuong.qryExecute.SQL.Text := script_in;
  try
    dmLuong.qryExecute.Prepare;
    dmLuong.qryExecute.Open;
    if dmLuong.qryExecute.IsEmpty then
      Result := ''
    else
    begin
      dmLuong.qryExecute.First;
      if dmLuong.qryExecute.Fields[0].IsNull then
        Result := ''
      else
        Result := dmLuong.qryExecute.Fields[0].Value;
    end;
  except
    Result := '';
  end;
  dmLuong.qryExecute.Close;
end;

function TSSP_Script.AnalyzeScript(script_in: string): Variant;
// ham phan tich bieu thuc trong
var
  il, res: boolean;
  oper: TExLogicOp;
  then_expr, else_expr, logic_expr: string;
  have_if, have_sql: boolean;
begin
  if trim(script) = '' then
    exit;
  GetSQL(script_in, have_sql);
  if have_sql = true then
  begin
    Result := AnalyzeSQL(script_in);
    exit;
  end;
  GetExpr(script_in, have_if, logic_expr, then_expr, else_expr);
  if have_if = true then
  begin
    res := AnalyzeLogicExp(logic_expr, il);
    if il = true then
    begin
      Script := then_expr;
      Result := AnalyzeScript;
    end
    else
    begin
      Script := else_expr;
      result := AnalyzeScript;
    end;
  end
  else
  begin
    Expression := script_in;
    Result := AnalyzeExpression;
  end;

end;

function TSSP_Script.AnalyzeScript: Variant;
// ham phan tich bieu thuc trong
var
  il, res: boolean;
  oper: TExLogicOp;
  have_if, have_sql: boolean;
  then_expr, logic_expr, else_expr, temp_expr: string;
  len, i: integer;
begin
  if trim(script) = '' then
    exit;
  GetSQL(Script, have_sql);
  if have_sql = true then
  begin
    Result := AnalyzeSQL(Script);
    exit;
  end;
  // xu li neu cau lenh la 1 cau SQL
  GetExpr(Script, have_if, logic_expr, then_expr, else_expr);
  if have_if = true then
  begin
    res := AnalyzeLogicExp(logic_expr, il);
    if il = true then
    begin
      Script := then_expr;
      Result := AnalyzeScript;
    end
    else
    begin
      Script := else_expr;
      Result := AnalyzeScript;
    end;
  end
  else
  begin
    len := length(Script);
    temp_expr := Script;
    for i := 1 to len do
    begin
      if (Script[i] in SPACE_CHARACTER) then
        temp_expr[i] := ' ';
    end;
    Expression := temp_expr;
    Result := AnalyzeExpression;
  end;
end;

function TSSP_Script.Test_Script: boolean;
// ham phan tich bieu thuc trong
var
  il, res: boolean;
  oper: TExLogicOp;
  have_if, have_sql: boolean;
  then_expr, logic_expr, else_expr, temp_expr: string;
  len, i: integer;
begin
  result := false;
  GetSQL(Script, have_sql);
  if have_sql = true then
  begin
    //    Result:= AnalyzeSQL(Script);
    result := true;
    exit;
  end;
  // xu li neu cau lenh la 1 cau SQL
  GetExpr(Script, have_if, logic_expr, then_expr, else_expr);
  if have_if = true then
  begin
    try
      AnalyzeLogicExp(logic_expr, il);
      if Test_Script(then_expr) then
        Test_Script(else_expr);
    except
      result := false;
    end;
  end
  else
  begin
    len := length(Script);
    temp_expr := Script;
    for i := 1 to len do
    begin
      if (Script[i] in SPACE_CHARACTER) then
        temp_expr[i] := ' ';
    end;
    Expression := temp_expr;
    try
      Test_AnalyzeExpression;
      result := (Self.LastError = 0);
    except
      result := false;
    end;
  end;
end;

function TSSP_Script.Test_Script(script_in: string): boolean;
// ham phan tich bieu thuc trong
var
  il, res: boolean;
  oper: TExLogicOp;
  have_if, have_sql: boolean;
  then_expr, logic_expr, else_expr, temp_expr: string;
  len, i: integer;
begin

  GetSQL(Script_in, have_sql);
  if have_sql = true then
  begin
    //    Result:= AnalyzeSQL(Script);
    result := true;
    exit;
  end;
  // xu li neu cau lenh la 1 cau SQL
  GetExpr(Script_in, have_if, logic_expr, then_expr, else_expr);
  if have_if = true then
  begin
    try
      AnalyzeLogicExp(logic_expr, il);
      Test_Script(then_expr);
      Test_Script(else_expr);
    except
      result := false;
    end;
  end
  else
  begin
    len := length(Script_in);
    temp_expr := Script_in;
    for i := 1 to len do
    begin
      if (Script_in[i] in SPACE_CHARACTER) then
        temp_expr[i] := ' ';
    end;
    Expression := temp_expr;
    try
      Test_AnalyzeExpression;
      result := (Self.LastError = 0);
    except
      result := false;
    end;
  end;
end;

function TSSP_Script.string_filter(const string_in: string): string;
var
  temp_string: string;
  i, len: integer;
begin
  temp_string := string_in;
  len := length(string_in);
  for i := 1 to len do
    if (string_in[i] in SPACE_CHARACTER) then
      temp_string[i] := ' ';
  Result := temp_string;
end;

function TSSP_Script.GetCurFunction: string;
begin
  result := self.eCurFunction;
end;
end.

