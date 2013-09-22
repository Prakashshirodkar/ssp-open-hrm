  /*-------------------------------------------------------------------------
  cat tat ca cac ky tu trang trong xau
  EX: st = "     Nguyen    Van         A      "
      st = trimAll(st);  -> st="NguyenVanA"
  ---------------------------------------------------------------------------*/
  function trimAll(_string){
  var i=0;
  i=_string.indexOf(" ");
  while (i!=-1) {
    _string =_string.substring(0,i) + _string.substring(i+1);
	i=_string.indexOf(" ");
  }
  return _string;
  }
  
 /*---------------------------------------------------------------------------
   --------------------------------------------------------------------------- */
  function endsWith(_string,_subString){
  var i = _string.lastIndexOf(_subString);
  if (i==(_string.length -_subString.length)) return true;
  else return false;
  }
 /*---------------------------------------------------------------------------
   --------------------------------------------------------------------------- */
  function startWith(_string,_subString){
  var i = _string.IndexOf(_subString);
  if (i==0) return true;
  else return false;
  }


  /*-------------------------------------------------------------------------
  cat cac ky tu trang thua trong xau
  EX: st = "     Nguyen    Van         A      "
      st = trim(st);  -> st="Nguyen Van A"
  ---------------------------------------------------------------------------*/
  function trim(_string){
  var i=0;
  while ((_string.charAt(i)==" ")&&(i<_string.length)) i++;
  _string = _string.substring(i);
  i=_string.length-1;
  while ((_string.charAt(i)==" ")&&(i>0)) i--;
  _string = _string.substring(0,i+1);
  i=_string.indexOf("  ");
  while (i!=-1) {
    _string =_string.substring(0,i) + _string.substring(i+1);
	i=_string.indexOf("  ");
  }
  return _string;
  }
  