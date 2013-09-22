function TimerPopup() {
	var c;
	c = new PopupWindow();
	c.setSize(180,200);
	c.offsetX = -152;
	c.offsetY = 25;
	c.autoHide();
	// Timer-specific properties
	c.content='';
	c.textName='';
	c.selectText="Select";	
	c.cancelText="Cancel";		
	c.hourText="Hour";			
	c.minuteText="Minute";				
	c.cssPrefix="";	//Tranh dung do css
	window.CP_targetInput = null;//Day la gia tri con tro den input cua cua so cha	
	//Method mappings
	c.showTimer = Timer_ShowTimer;
	c.hideTimer = Timer_HideTimer;
	c.select 	= Timer_Select;
	c.getTimer  = Timer_GetTimer;
	c.setContent = Timer_SetContent;
	c.refreshTimer = Timer_RefreshTimer;
	c.checkTime=Timer_CheckTime;	
	c.getStyles = Timer_GetTimerStyles;	
	//Cac ham set text
	c.setSelectText = Timer_SetSelectText;
	c.setCancelText = Timer_SetCancelText;	
	c.setHourText = Timer_SetHourText;	
	c.setMinuteText = Timer_SetMinuteText;		
	c.setCssPrefix = Timer_SetCssPrefix;			
	c.returnFunction = Timer_ReturnFunction;	
	// Return the object
	return c;
}

function Timer_SetSelectText(text){
	this.selectText = text;	
}

function Timer_SetCancelText(text){
	this.cancelText = text;	
}

function Timer_SetHourText(text){
	this.hourText = text;	
}

function Timer_SetMinuteText(text){
	this.minuteText = text;	
}

function Timer_SetCssPrefix(text){
	this.cssPrefix = text;	
}


function formatTime(hour, minute, TextBoxName, setValue){
	var time;
	var stHour = (hour < 10) ? '0' + hour : '' + hour;
	var stMinute = (minute < 10) ? '0' + minute : '' + minute;
	if (setValue == 1) time = stHour + ':' + stMinute;
	return time;
}

// function to return value to opener window
function Timer_ReturnFunction(hour, minute, TextBoxName, setValue) { 
	if (window.CP_targetInput!=null) {
		window.CP_targetInput.value = formatTime(hour, minute, TextBoxName, setValue);
		}
	else {
		alert('Use setReturnFunction() to define which function will get the clicked results!'); 
	}
}

// Simple method to interface popup calendar with a text-entry box
function Timer_Select(inputobj, linkname) {
	if (inputobj.type!="text" && inputobj.type!="hidden" && inputobj.type!="textarea") { 
		alert("calendar.select: Input object passed is not a valid form input object"); 
		window.CP_targetInput=null;
		return;
	}
	window.CP_targetInput = inputobj;
    var timer=inputobj.value;	
    if ((timer!='')&&(timer!='hh:mm')&&(this.checkTime(timer)=='TRUE')){
		var first   = timer.indexOf(":",0);
		var hour   = timer.substring(0,first);
		var minute = timer.substring(first+1,timer.length);
		this.refreshTimer(1,eval(hour),eval(minute));
    }
	else{
		this.setContent();
	}
	this.showTimer(linkname);
}

// Refresh the contents of the timer display
function Timer_RefreshTimer(index) {
	var timeObject = window.popupWindowObjects[0];
	if (arguments.length ==3) timeObject.setContent(arguments[0],arguments[1],arguments[2]);
	  else timeObject.setContent();	
	if (arguments.length>1) { 
		timeObject.populate(timeObject.getTimer(arguments[1],arguments[2],arguments[3],arguments[4],arguments[5]));
	}
	else {
		timeObject.populate(timeObject.getTimer());
	}
	timeObject.refresh();
}

//Show Timer Window
function Timer_ShowTimer(anchorname) {
	this.populate(this.getTimer());
	this.showPopup(anchorname);
}

//Hide Timer Window
function Timer_HideTimer() {
	window.popupWindowObjects[0].hidePopup();
}

// Return a string containing all the calendar code to be displayed
function Timer_GetTimer() {
	var result = "";
	result += "<HTML><HEAD><TITLE>Calendar</TITLE>"+this.getStyles()+"</HEAD><BODY MARGINWIDTH=0 MARGINHEIGHT=0 TOPMARGIN=0 RIGHTMARGIN=0 LEFTMARGIN=0>\n";
//	result += "<HTML><HEAD><TITLE>Calendar</TITLE></HEAD><BODY MARGINWIDTH=0 MARGINHEIGHT=0 TOPMARGIN=0 RIGHTMARGIN=0 LEFTMARGIN=0>\n";
	result += '<CENTER><TABLE WIDTH=100% BORDER=0 BORDERWIDTH=0 CELLSPACING=0 CELLPADDING=0>\n';
	//Bat dau dien noi dung chon timer			
	result += this.content;	
	//Bat dau dien noi dung chon timer				
	result += "</BODY></HTML>\n";
	return result;
}

//Set content hien thi trong window, gio mac dinh hien tai
function Timer_SetContent(){
  var windowref = "window.opener.";	
  var curDate  = new Date();
  var tabNo    = 1;
  var hour     = curDate.getHours();
  var minute   = curDate.getMinutes();
  if (arguments.length > 0) tabNo=arguments[0];
  if (arguments.length > 1) hour   = arguments[1];
  if (arguments.length > 2) minute = arguments[2];
  if (hour>23) hour=0;
  else if (hour<0) hour=23;
  if (minute>59) minute=0;
  else if (minute<0) minute=59;
  var  stNoiDung='';
  var refresh = 'javascript:'+windowref+'Timer_RefreshTimer';  
  //Bang hien thi ngay gio chon  
  stNoiDung +='<table width="100%" border="0" cellpadding="2" cellspacing="0">\n';
  stNoiDung +='<tr><td CLASS="'+this.cssPrefix+'tpTimeNavigation" align=right><A href="'+refresh+'('+tabNo+','+(hour-1)+','+minute+');">&lt;&lt;</A>&nbsp;</td>\n';
  stNoiDung +='<td CLASS="'+this.cssPrefix+'tpTimeNavigation" align=left><A href="'+refresh+'('+tabNo+','+hour+','+(minute-1)+');">&lt;</A></td>\n';
  stNoiDung +='<td CLASS="'+this.cssPrefix+'tpTimeNavigation" class="texttr1">'+hour+' '+this.hourText+', '+minute+' '+this.minuteText+'</td>\n';
  stNoiDung +='<td CLASS="'+this.cssPrefix+'tpTimeNavigation" align=right><A href="'+refresh+'('+tabNo+','+hour+','+(minute+1)+');">&gt;</A>&nbsp;</td>\n';
  stNoiDung +='<td CLASS="'+this.cssPrefix+'tpTimeNavigation" align=left><A href="'+refresh+'('+tabNo+','+(hour+1)+','+minute+');">&gt;&gt;</A></td></tr>\n';
  stNoiDung +='</table>\n';
  //Bang hien thi ngay gio chon
  //Bang hien thi chon tab  
  stNoiDung +='<table cellspacing="0" cellpadding="1">\n';
  if (tabNo==1)
    stNoiDung +='<tr><td CLASS="'+this.cssPrefix+'tpTabNavigation" align=center><b>'+this.hourText+' | <A CLASS="'+this.cssPrefix+'tpNotSelectText" href="'+refresh+'(2,'+hour+','+minute+');">'+this.minuteText+'</A></b></td></tr>\n';
  else
    stNoiDung +='<tr><td CLASS="'+this.cssPrefix+'tpTabNavigation" align=center><b><A CLASS="'+this.cssPrefix+'tpNotSelectText" href="'+refresh+'(1,'+hour+','+minute+');">'+this.hourText+'</A> | '+this.minuteText+'</b></td></tr>\n';
  stNoiDung +='</table>';
  //Bang hien thi chon tab
  //Hien thi thanh ngan  
  stNoiDung +='<hr width="90%">';  
  //Hien thi thanh ngan  
  if (tabNo==1){
    stNoiDung +='<table width="100%" cellspacing="0" cellpadding="6" >\n';  
    for (var i=0;i<4;i++) {
      stNoiDung +='<tr>\n';
      for (var j=0;j<6;j++)
           stNoiDung +='<td align="center"><A  href="'+refresh+'(1,'+((i*6)+j)+','+minute+');">'+((i*6)+j)+'</A></td>\n';
      stNoiDung +='</tr>\n';
    }
	stNoiDung +='</table>\n';
	
  }
  else
    for (var i=0;i<6;i++) {
      stNoiDung +='<table width="100%" cellspacing="0" cellpadding="2" >\n';  		
      stNoiDung +='<tr>\n';
      for (var j=0;j<10;j++) {
        if ((j==0)||(j==5))
           stNoiDung +='<td  align="center"><A href="'+refresh+'(2,'+hour+','+((i*10)+j)+');">'+((i*10)+j)+'</A></td>\n';
        else
           stNoiDung +='<td  align="center"><A href="'+refresh+'(2,'+hour+','+((i*10)+j)+');">'+((i*10)+j)+'</A></td>\n';
      }
      stNoiDung +='</tr>\n';
	  stNoiDung +='</table>\n';
	  
    }
  //Hien thi thanh ngan  
  stNoiDung +='<hr width="90%">';  
  //Hien thi thanh ngan  
  stNoiDung +='<table width="100%"><tr><td align="center" witdh=50%><a CLASS="'+this.cssPrefix+'tpFunctionText" href="javascript:'+windowref+'Timer_ReturnFunction('+hour+','+minute+',\''+this.textName+'\',1);'+windowref+'Timer_HideTimer(\''+this.index+'\');">&lt;&lt; '+this.selectText+' &gt;&gt;</A></td><td align="center" width="50%"><a CLASS="'+this.cssPrefix+'tpFunctionText" href="javascript:'+windowref+'Timer_HideTimer();">&lt;&lt; '+this.cancelText+' &gt;&gt;</A></td></tr></table></td></tr>\n';
  this.content=stNoiDung;	
}

//Kiem tra thoi gian co hop le khong
function Timer_CheckTime(_time){
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
   if (_count!=1) {
      return "Nhap khong dung khuon dang 'hh:mm'";
   }
   var first = _time.indexOf(":",0);
   var _hour   = _time.substring(0,first);
   var _minute = _time.substring(first+1,_time.length);
  if ((_hour=="") || (_minute==""))   return "Gio hoac phut chua duoc nhap";
  if ((_hour.length>2) || (_minute.length>2)) return "Nhap khong dung khuon dang 'hh:mm'";
  var _numHour   = eval(_hour);
  var _numMinute = eval(_minute);
  if ((_numHour<0)||(_numHour>23)) return "Loi nhap gio: 0<=gio<=23";
  if ((_numMinute<0)||(_numMinute>59)) return "Loi nhap phut: 0<=phut<=59" ;
  return "TRUE";
}

// Get style block needed to display the timer correctly
function Timer_GetTimerStyles() {
	var result = "";
	var p = "";
	if (this!=null && typeof(this.cssPrefix)!="undefined" && this.cssPrefix!=null && this.cssPrefix!="") { p=this.cssPrefix; }
	result += "<STYLE>\n";
	result += "."+p+"tpTimeNavigation,."+p+"tpTabNavigation{font-family:arial; font-size:8pt;color:black; background-color:#C0C0C0; text-align:center; vertical-align:center; text-decoration:none; color:#000000; font-weight:bold; }\n";
	result += "."+p+"tpTabNavigation{background-color:#FFFFFF; text-align:center; vertical-align:center; text-decoration:none; color:#000000; font-weight:bold; }\n";	
	result += "A{font-family:arial; font-size:8pt;TEXT-DECORATION: none;color:black;}"; 
	result += "A."+p+"tpFunctionText { color:blue;}\n";	
	result += "A."+p+"tpNotSelectText { color:blue;}\n";		
	result += "</STYLE>\n";
	return result;
}

