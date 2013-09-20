function trim(str) {
    	var st = 0;
	    var len = str.length;
	    for (i=0;i<len;i++) {
     	   if (str.charAt(i) == ' ')
              st++;
           else
              break;
    	}
	    if (st >= len) return "";
    	for (i=len-1;i>-1;i--) {
        	if (str.charAt(i) == ' ')
        	    len--;
	        else
    	        break;
	    }
	    return str.substring(st, len);
}


function NewWindow(mypage,myname,w,h,scrolls){
	
	var winl = (screen.width-w)/2;
	var wint = (screen.height-h)/2;
	var settings ='height='+h+',';
	settings +='width='+w+',';
	settings +='top='+wint+',';
	settings +='left='+winl+',';
	settings +='scrollbars='+scrolls+',';
	settings +='resizable=yes,';
	settings +='focus=yes, toolbar=no, status=no, location=no, menubar=no';	
	return window.open(mypage,myname,settings);	
	
} 
function NewDialog(mypage,myname,w,h,scrolls){
	
	var winl = (screen.width-w)/2;
	var wint = (screen.height-h)/2;
	var settings ='height='+h+',';
	settings +='width='+w+',';
	settings +='top='+wint+',';
	settings +='left='+winl+',';
	settings +='scrollbars='+scrolls+',';
	settings +='resizable=no,';
	settings +='focus=yes, toolbar=no, status=no, location=no, menubar=no';	
	return window.open(mypage,myname,settings);	
	
} 
var ie4 = (document.all) ? true : false;
var ns4 = (document.layers) ? true : false;
var ns6 = (document.getElementById && !document.all) ? true : false;
function hidelayer(lay)
{
	//alert("hide layer");
	if (ie4) {document.all[lay].style.display = "none";}
	if (ns4) {document.layers[lay].visibility = "hide";}
	if (ns6) {document.getElementById([lay]).style.display = "none";}
}

function showlayer(lay)
{
	if (ie4) {document.all[lay].style.display = "inline";}
	if (ns4) {document.layers[lay].visibility = "show";}
	if (ns6) {document.getElementById([lay]).style.display = "block";}
}