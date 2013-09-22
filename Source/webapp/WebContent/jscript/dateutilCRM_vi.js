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
   var _date = _dateControl;   
  
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
         return "Chi chap nhan cac ki tu: '0','1',..,'9','/'";
         break;
      }
	    
   var first = _date.indexOf("/",0);  
   
   if(first==-1){
      first= _date.indexOf("-",0);
 	  if(first==-1){ // dang ddmmyy hoac ddmmyyyy	        
	     if(_date.length<6) return "Ban muon nhap khuon dang ddmmyy ? Xin vui long kiem tra lai"
		 else {
		   _month=_date.substring(2,4);
		   _day=_date.substring(0,2);			
		   if(_date.length==6){ _year="20"+_date.substring(4,6) }
		     else if(_date.length==8) { _year=_date.substring(4,8)}
		     else return "Nhap lai nam"	  				 
		 } 
	  }
	  else { // dang dd-mm-yy hoac dd-mm-yyyy
	     last=_date.lastIndexOf("-");
		 if(last>5|| _date.length<6){ // Khong phai khuon dang dd-mm-yy		   
		   return "Ban muon nhap khuon dang dd-mm-yy ? Xin vui long kiem tra lai"
		 } 	 
		 else
		   {		   		   
		    _day=_date.substring(0,2);
		    _month=_date.substring(3,5);
		    if(_date.length==8){ _year="20"+_date.substring(6,8) }
		    else if(_date.length==10) { _year=_date.substring(6,10)}
		    else return "Nhap lai nam"		  		   
		   }
	  }
   } 
   else { // Co the dang dd/mm/yy hoac dd/mm/yyyy
      last=_date.lastIndexOf("/");
	  if(last>5){ // Khong phai khuon dang dd/mm/yy		   
		 return "Ban dang nhap khuon dang dd/mm/yy ? Xin vui long kiem tra lai"
      } 
	  else {
	     _day=_date.substring(0,2);
		 _month=_date.substring(3,5);
		 if(_date.length==8){ _year="20"+_date.substring(6,8) }
		   else if(_date.length==10) { _year=_date.substring(6,10)}
		   else return "Nhap lai nam"		  
	  } 
   }   
   if ((_day=="") || (_month=="") || (_year=="")) return "Xin vui long nhap ngay, thang va nam   !";
   var _numDay   = eval(_day);
   var _numMonth = eval(_month);
   var _numYear	= eval(_year);
   if ((_numYear<1901)||(_numYear>2099)) return "Nam khong hop le: 1900<nam<2100";
   if ((_numMonth==1)||(_numMonth==3)||(_numMonth==5)||(_numMonth==7)||(_numMonth==8)||(_numMonth==10)||(_numMonth==12)){
     if ((_numDay<1)||(_numDay>31)) return "Ngay khong hop le: 1<=ngay<=31";
   }
   else
	 if ((_numMonth==4)||(_numMonth==6)||(_numMonth==9)||(_numMonth==11)){
	    if ((_numDay<1)||(_numDay>30)) return "Ngay khong hop le: 1<=ngay<=30";
	 }
	 else
	   if (_numMonth==2){
	       if (((_numYear%4==0)&&(_numYear%100!=0))||(_numYear%400==0)){ 
	          if ((_numDay<1)||(_numDay>29))return "Ngay khong hop le: 1<=ngay<=29";
	       }
		   else
			  if ((_numDay<1)||(_numDay>28))return "Ngay khong hop le: 1<=ngay<=28";
	   }
	   else	  
	      return "Thang khong hop le: 1<=thang<=12";	
	
	if(_format) _dateControl=_day+"/"+_month+"/"+_year;
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
		_input=trim(_input);
		var _time = _input;	
	  	var _count = 0;
	  	var _i;
		for (_i=0;_i<_time.length;_i++)
    		if ("0123456789:".indexOf(_time.substring(_i,_i+1),0)==-1){
      			return "Chi chap nhan cac ki tu: '0','1',..,'9',':'";
		      	break;
   			}
	   	for (_i=0;_i<_time.length;_i++){
    		if (_time.substring(_i,_i+1)==":") _count++;
		}
		var first, _hour, _minute;
	   	if (_count>1) {
    		return "Nhap khong dung khuon dang 'hh:mm'";
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
	  	if ((_hour=="") || (_minute==""))   return "Gio hoac phut chua duoc nhap";
  		if ((_hour.length>2) || (_minute.length>2)) return "Nhap khong dung khuon dang 'hh:mm'";
	  	var _numHour   = eval(_hour);
  		var _numMinute = eval(_minute);
	  	if ((_numHour<0)||(_numHour>23)) return "Loi nhap gio: 0<=gio<=23";
  		if ((_numMinute<0)||(_numMinute>59)) return "Loi nhap phut: 0<=phut<=59" ;
	  	if ((_count==0)&&(format)) {
			_input=_hour+":"+_minute;
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
   var _day1   = eval(_date1.substring(0,first1));
   var _month1 = eval(_date1.substring(first1+1,last1));
   var _year1  = eval(_date1.substring(last1+1,_date1.length));

   var first2 = _date2.indexOf("/",0);
   var last2  = _date2.lastIndexOf("/"); 
   var _day2   = eval(_date2.substring(0,first2));
   var _month2 = eval(_date2.substring(first2+1,last2));
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


//Dem so ky tu mark trong chuoi str
function countChar(str, mark) {
	var Count = 0;
	for(i = 0; i < str.length; i++)
		if (str.charAt(i) == mark) 
			Count++;
	return 	Count;
}
//Ham nay tra ve Ngay trong chuoi strDate duoc format thanh kieu so nguyen
function getDateToInt(strDate) {
	k = strDate.indexOf("/");			
	strDay = strDate.substring(0, k);
	return stringToInt(strDay);
}
//Ham nay tra ve Thang trong chuoi strDate duoc format thanh kieu so nguyen
function getMonthToInt(strDate) {
	i = strDate.lastIndexOf("/");
	j = strDate.lastIndexOf("/", i - 1) ;	
	strMonth = strDate.substring(j + 1, i);
	return stringToInt(strMonth);
}
//Ham nay tra ve Nam trong chuoi strDate duoc format thanh kieu so nguyen
function getYearToInt(strDate) {
	i = strDate.lastIndexOf("/");
	strYear = strDate.substring(i + 1, strDate.length);
	return stringToInt(strYear);
}
//
//Ham nay tra ve Ngay trong chuoi strDate duoc format dd/mm/yyyy H:i
function getDaytimeToInt(strDate) {
	k = strDate.indexOf("/");			
	strDay = strDate.substring(0, k);
	return stringToInt(strDay);
}
//Ham nay tra ve Thang trong chuoi strDate duoc format dd/mm/yyyy H:i
function getMonthtimeToInt(strDate) {
	i = strDate.indexOf("/");
	strMonth = strDate.substring(i + 1, i+3);
	return stringToInt(strMonth);
}
//Ham nay tra ve Nam trong chuoi strDate duoc format format dd/mm/yyyy H:i
function getYeartimeToInt(strDate) {
	i = strDate.lastIndexOf("/");
	strYear = strDate.substring(i + 1, i+5);
	return stringToInt(strYear);
}
//Ham nay tra ve Hour trong chuoi strDate duoc format format dd/mm/yyyy H:i
function getHourtimeToInt(strDate) {
	i = strDate.indexOf(":");
	strHour = strDate.substring(i-2, i);
	return stringToInt(strHour);
}
//Ham nay tra ve Minute trong chuoi strDate duoc format format dd/mm/yyyy H:i
function getMinutetimeToInt(strDate) {
	i = strDate.lastIndexOf(":");
	strMinute = strDate.substring(i+1, strDate.length);
	return stringToInt(strMinute);
}


//Ham nay tra ve Ngay trong chuoi strDate duoc format dd/mm/yyyy H:i
function getDaytimeToStr(strDate) {
	k = strDate.indexOf("/");			
	strDay = strDate.substring(0, k);
	return strDay;
}
//Ham nay tra ve Thang trong chuoi strDate duoc format dd/mm/yyyy H:i
function getMonthtimeToStr(strDate) {
	i = strDate.indexOf("/");
	strMonth = strDate.substring(i + 1, i+3);
	return strMonth;
}
//Ham nay tra ve Nam trong chuoi strDate duoc format format dd/mm/yyyy H:i
function getYeartimeToStr(strDate) {
	i = strDate.lastIndexOf("/");
	strYear = strDate.substring(i + 1, i+5);
	return strYear;
}
//Ham nay tra ve Hour trong chuoi strDate duoc format format dd/mm/yyyy H:i
function getHourtimeToStr(strDate) {
	i = strDate.indexOf(":");
	strHour = strDate.substring(i-2, i);
	return strHour;
}
//Ham nay tra ve Minute trong chuoi strDate duoc format format dd/mm/yyyy H:i
function getMinutetimeToStr(strDate) {
	i = strDate.lastIndexOf(":");
	strMinute = strDate.substring(i+1, strDate.length);
	return strMinute;
}

//
function checkIntVal(val, low, high) {
	if (val <= high && val >= low) 
		return true;
	return false;
}
//
function stringToInt(str) {
	if(!stringIsNum(str))
		return 0 ;
	if(str.charAt(0) == '0') 
		return stringToInt(str.substring(1, str.length));
	else 
		if(str.length > 0) 
			return parseInt(str);
		 else 
			return (0);
}
//
function stringIsNum(val) {
	var str = new String(val);
	for (i=0;i<str.length;i++) 
		if (isNaN(parseInt(str.charAt(i))))
			return false;
	return true;
}
//Kiem tra chuoi theo chuan ton tai cua chuoi mark trong chuoi str
function checkExistVal(str, mark) {
	for(i = 0; i < str.length; i++)
		if (mark.indexOf(str.charAt(i)) < 0) 
			return false;
	return 	true;
}

/*------------------------------------------------------------------------------
ex: STRtimestamp = "dd/mm/yyyy HH:MM"
getDDMMYYYY(STRtimestamp) = "dd/mm/yyyy"
------------------------------------------------------------------------------*/
function getDDMMYYYY(STRtimestamp)	{		
		if(STRtimestamp!=null){
			return ""+getDaytimeToStr(STRtimestamp)+"/"+getMonthtimeToStr(STRtimestamp)+"/"+getYeartimeToStr(STRtimestamp);
		}else return null;
}
/*------------------------------------------------------------------------------
ex: STRtimestamp = "dd/mm/yyyy HH:MM"
getHHMM(STRtimestamp) = "HH:MM"
------------------------------------------------------------------------------*/
function getHHMM(STRtimestamp)	{		
		if(STRtimestamp!=null){
			return ""+getHourtimeToStr(STRtimestamp)+":"+getMinutetimeToStr(STRtimestamp);
		}else return null;
}