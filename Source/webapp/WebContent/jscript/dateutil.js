 /*---------------------------------------------------------------------------
   --------------------------------------------------------------------------- */
  function isNumber(_stNumber){
   var _i;
   for (_i=0;_i<_stNumber.length;_i++)
      if ("0123456789".indexOf(_stNumber.substring(_i,_i+1),0)==-1){
         return false;
         break;
      }
   return true;   
  }
/*---------------------------------------------------------------------------
--------------------------------------------------------------------------- */
  function checkDate(_dateControl, _format){
   var _count = 0;
   var _i;
   var _date = _dateControl.value;   
  
   // trim blank
   while(_date.substring(0,1)==" "){
     _date=_date.substring(1,_date.length);
   }   
   while(_date.substring(_date.length-1,_date.length)==" "){
     _date=_date.substring(0,_date.length-1);
   }
   _i=0;
    while(_i<=_date.length){
	   if(_date.substring(_i,_i+1)==" ") {
	      _date=_date.substring(0,_i)+_date.substring(_i+1,_date.length);
	   } else _i++;
	}   	
	_i=0;
    while(_i<=_date.length){
	   if(_date.substring(_i,_i+1)==" ") {
	      _date=_date.substring(0,_i)+_date.substring(_i+1,_date.length);
	   } else _i++;
	}   
	// xoa cac so 0 dung dau dong thoi dung truoc mot so 0 khac
	while(_date.substring(0,1)=="0" && _date.substring(1,2)=="0"){
     _date=_date.substring(1,_date.length);
   }   	   
   
   for (_i=0;_i<_date.length;_i++)
      if ("0123456789/-".indexOf(_date.substring(_i,_i+1),0)==-1){
         return "Accept: '0','1',..,'9','/','-' only";
         break;
      }
	    
   var first = _date.indexOf("/",0);  
   
   if(first==-1){
      first= _date.indexOf("-",0);
 	  if(first==-1){ // dang ddmmyy hoac mmddyyyy	        
	     if(_date.length<6) return "Do you want to input in mmddyy format?"
		 else {
		   _day=_date.substring(2,4);
		   _month=_date.substring(0,2);			
		   if(_date.length==6){ _year="20"+_date.substring(4,6) }
		     else if(_date.length==8) { _year=_date.substring(4,8)}
		     else return "Retype year.";
		 } 
	  }
	  else { // dang mm-dd-yy hoac mm-dd-yyyy
	     last=_date.lastIndexOf("-");
		 if(last>5|| _date.length<6){ // Khong phai khuon dang mm-dd-yy		   
		   return "Do you want to input in mm-dd-yy format?"
		 } 	 
		 else
		   {		   		   
		    _month=_date.substring(0,2);
		    _day=_date.substring(3,5);
		    if(_date.length==8){ _year="20"+_date.substring(6,8) }
		    else if(_date.length==10) { _year=_date.substring(6,10)}
		    else return "Retype year.";		  		   
		   }
	  }
   } 
   else { // Co the dang dd/mm/yy hoac dd/mm/yyyy
      last=_date.lastIndexOf("/");
	  if(last>5){ // Khong phai khuon dang dd/mm/yy		   
		 return "Do you want to input in mm/dd/yy format?"
      } 
	  else {
	     _month=_date.substring(0,2);
		 _day=_date.substring(3,5);
		 if(_date.length==8){ _year="20"+_date.substring(6,8) }
		   else if(_date.length==10) { _year=_date.substring(6,10)}
		   else return "Retype year."		  
	  } 
   }   
   if ((_day=="") || (_month=="") || (_year=="")) return "Date not input!";
   var _numDay   = eval(_day);
   var _numMonth = eval(_month);
   var _numYear	= eval(_year);
   if ((_numYear<1901)||(_numYear>2099)) return "Invalid year. Require: 1900<year<2100";
   if ((_numMonth==1)||(_numMonth==3)||(_numMonth==5)||(_numMonth==7)||(_numMonth==8)||(_numMonth==10)||(_numMonth==12)){
     if ((_numDay<1)||(_numDay>31)) return "Invalid day. Require: 1<=day<=31";
   }
   else
	 if ((_numMonth==4)||(_numMonth==6)||(_numMonth==9)||(_numMonth==11)){
	    if ((_numDay<1)||(_numDay>30)) return "Invalid day. Require: 1<=day<=30";
	 }
	 else
	   if (_numMonth==2){
	       if (((_numYear%4==0)&&(_numYear%100!=0))||(_numYear%400==0)){ 
	          if ((_numDay<1)||(_numDay>29))return "Invalid day. Require: 1<=day<=29";
	       }
		   else
			  if ((_numDay<1)||(_numDay>28))return "Invalid day. Require: 1<=day<=28";
	   }
	   else	  
	      return "Invalid month. Require: 1<=month<=12";	
	
	if(_format) _dateControl.value=_month + "/" + _day + "/" + _year;
      return "TRUE";

  }
  
/* ---------------------------------------------------------------------------
 ------------------------------------------------------------------------------*/
	//----------------------------------------------------------------------------------------
	//	Ham trim() cat cac khoang trang dau va cuoi cua mot chuoi  
	//----------------------------------------------------------------------------------------
	function trim(nStr)	{		
		while(nStr.substring(0,1)==" "){
			nStr=nStr.substring(1,nStr.length);
		}
		while(nStr.substring(nStr.length-1,nStr.length)==" "){
			nStr=nStr.substring(0,nStr.length-1);
		}
		return nStr;
	}
	//--------------------------------------------------------------------------------------------
	//	CheckTime kiem tra mot input co type la text xem
	//	gia tri ma no dang chua dung co dang hh:mm hoac
	//	hhmm hay khong?. CheckTime con tu dong cat bo
	// cac khoang trang dau va cuoi .
	//	Nhap:	_input : input type text can kiem tra
	//	format : neu co gia tri true va value cua _input co
	//	dang hhmm  thi  se doi sang dang hh:mm
	//	Xuat:	 TRUE neu hop le va  bao loi neu khong hop le
	//--------------------------------------------------------------------------------------------
	function checkTime(_input,format){
		_input.value=trim(_input.value);
		var _time = _input.value;	
	  	var _count = 0;
	  	var _i;
		for (_i=0;_i<_time.length;_i++)
    		if ("0123456789:".indexOf(_time.substring(_i,_i+1),0)==-1){
      			return "Accept: '0','1',..,'9',':','-' only.";
		      	break;
   			}
	   	for (_i=0;_i<_time.length;_i++){
    		if (_time.substring(_i,_i+1)==":") _count++;
		}
		var first, _hour, _minute;
	   	if (_count>1) {
    		return "Invalid format. Required 'hh:mm'";
	   	}else{
			if (_count==1){
			   	first = _time.indexOf(":",0);
  				_hour   = _time.substring(0,first);
			  	_minute = _time.substring(first+1,_time.length);
			}else{//truong hop khong co dau ':' se lay hai so dau lam gio
				_hour   = _time.substring(0,2);
	 			_minute = _time.substring(2,_time.length);
			}
		}	
	  	if ((_hour=="") || (_minute==""))   return "Hour or minute is not input.";
  		if ((_hour.length>2) || (_minute.length>2)) return "Invalid format. Require 'hh:mm'";
	  	var _numHour   = eval(_hour);
  		var _numMinute = eval(_minute);
	  	if ((_numHour<0)||(_numHour>23)) return "Invalid hour. Require: 0<=hour<=23";
  		if ((_numMinute<0)||(_numMinute>59)) return "Invalid minute. Require: 0<=minitu<=59" ;
	  	if ((_count==0)&&(format)) {
			_input.value=_hour+":"+_minute;
		}
		return "TRUE";
	}
 /*-----------------------------------------------------------------------------
  so sanh 2 gia tri kieu time voi nhau
  -1: _time1 < _time2
   0: _time1 = _time2
   1: _time1 > _time2
 ------------------------------------------------------------------------------*/
  function compareTime(_time1,_time2){
   var first1 = _time1.indexOf(":",0);
   var _hour1   = eval(_time1.substring(0,first1));
   var _minute1 = eval(_time1.substring(first1+1,_time1.length));
   var first2 = _time2.indexOf(":",0);
   var _hour2   = eval(_time2.substring(0,first2));
   var _minute2 = eval(_time2.substring(first2+1,_time2.length));
   if (_hour1 < _hour2) return -1;
   else
      if (_hour1 > _hour2) return 1;
      else 
            if (_minute1 < _minute2) return -1; 
            else
               if (_minute1 > _minute2) return 1;
               else return 0;
  }

  /*---------------------------------------------------------------------------
  so sanh 2 gia tri kieu date voi nhau
  -1: _date1 < _date2
   0: _date1 = _date2
   1: _date1 > _date2
  --------------------------------------------------------------------------- */
  function compareDate(_date1,_date2){
   var first1 = _date1.indexOf("/",0);
   var last1  = _date1.lastIndexOf("/"); 
   var _month1   = eval(_date1.substring(0,first1));
   var _day1 = eval(_date1.substring(first1+1,last1));
   var _year1  = eval(_date1.substring(last1+1,_date1.length));

   var first2 = _date2.indexOf("/",0);
   var last2  = _date2.lastIndexOf("/"); 
   var _month2   = eval(_date2.substring(0,first2));
   var _day2 = eval(_date2.substring(first2+1,last2));
   var _year2  = eval(_date2.substring(last2+1,_date2.length));
   
   if (_year1 < _year2) return -1;
   else
      if (_year1 > _year2) return 1;
      else 
         if (_month1 < _month2) return -1;
         else
            if (_month1 > _month2) return 1; 
            else
               if (_day1 < _day2) return -1;
               else 
                  if (_day1 > _day2 ) return 1;
                  else return 0;
  }
  /*---------------------------------------------------------------------------
  so sanh 2 gia tri kieu date voi nhau
  -1: _date1:_time1 < _date2 :_time2
   1: _date1:_time1 > _date2 :_time2
  --------------------------------------------------------------------------- */
function compareDateTime(_date1,_time1,_date2,_time2){
if ((compareDate(_date1,_date2)==-1)||((compareDate(_date1,_date2)==0)&&(compareTime(_time1,_time2)==-1))) return -1;
else return 1;
}
