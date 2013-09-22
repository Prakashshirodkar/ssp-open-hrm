unit SSP_Compiler;

interface

function FindScriptFromTokens(document:string;begin_token,end_token:string;from_index:integer;var sub_document:string;var from_pos,to_pos:integer):boolean;

implementation
uses StrUtils;

function FindScriptFromTokens(document:string;begin_token,end_token:string;from_index:integer;var sub_document:string;var from_pos,to_pos:integer):boolean;
var doc_length,begin_length,end_length:integer;
begin
  from_pos:=-1;
  to_pos:=-1;
  doc_length:=Length(document);
  begin_length:=Length(begin_token);
  end_length:=Length(end_token);
  sub_document:='';
  if doc_length=0 then
  begin
    result:=false;
    exit;
  end;

  if begin_token<>'' then
    from_pos:=PosEx(begin_token,document,from_index);
  if from_pos=0 then
  begin
    result:=false;
    exit;
  end;

  if end_token<>'' then
    to_pos:=PosEx(end_token,document,from_pos+begin_length);
  if to_pos=0 then
  begin
    result:=false;
    exit;
  end;

  if (begin_token='') then
  begin
    if (end_token='') then
      sub_document:=document
    else
      sub_document:=Copy(document,1,to_pos-1);
  end
  else
  begin
    if (end_token='') then
      sub_document:=Copy(document,from_pos+begin_length,doc_length-(from_pos+begin_length)+1)
    else
      sub_document:=Copy(document,from_pos+begin_length,to_pos-(from_pos+begin_length));
  end;
  if (end_token='') then
    to_pos:=doc_length+1
  else
    to_pos:=to_pos+end_length;
  result:=true;
end;
end.
