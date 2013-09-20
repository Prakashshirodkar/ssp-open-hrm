var dlgCalWin;
function show_cal_dlg(textfieldname, imagename, valuedate){
	var _left = screen.width/2 - 250;
	var _top = screen.height/2 - 200;
	var browser;
	if (document.getElementById) browser = 1; 
	else if (document.all) browser = 2; 
	   else if (document.layers) browser = 3; 
	if ((document.getElementById) && (document.all)) browser = 4;
	var obj = textfieldname;
	if(imagename != '')
		obj = imagename;
	if (obj!=''){
		switch (browser) {
			case 1:
				var o = document.getElementById(obj);
				_left = o.offsetLeft;
				_top = o.offsetTop;
				break;
			case 4:
				var ox = document.all[obj];
				var x = ox.offsetLeft;
				while ((ox = ox.offsetParent) != null) x += ox.offsetLeft;
				_left = x;   
				var oy = document.all[obj];		
				var y = oy.offsetTop;
				while ((oy = oy.offsetParent) != null) y += oy.offsetTop; 	 
				_top = y; 
			break;
		}
	}
	_top += 80;
	if(_top > screen.height - 205)
	   _top = screen.height - 205;
	if(_left > screen.width - 173)
	   _left = screen.width - 173;
	dlgCalWin = window.open("../common/dlgdate.jsp?tb=" + textfieldname + "&im=" + imagename + "&date=" + valuedate, "_dlg", "titilebar=no,resizeable,height=205,width=173,top=" + _top + ",left=" + _left);
	dlgCalWin.moveTo(_left, _top);
	dlgCalWin.focus();	
}	

function funcSetDate(day, month, year, TextBoxName){
   var stDay = (day < 10) ? '0' + day : '' + day;
   var stMonth = (month < 10) ? '0' + month : '' + month;
   opener.document.frmMain[date.textName].value = stMonth + '/' + stDay + '/' + year
   window.close();
}