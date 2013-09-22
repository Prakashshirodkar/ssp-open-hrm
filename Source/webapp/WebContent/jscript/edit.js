bLoad = false;
pureText = true;
bodyTag = "<BODY MONOSPACE STYLE=\"font:10pt Verdana\">";
bTextMode = false;
public_description = new Editor;

/*****************************
 Power Editor class
 member function:
 SetHtml
 GetHtml
 SetText
 GetText
 GetEditAdvFocus()
 *****************************/
function Editor() {
	this.put_html = SetHtml;
	this.get_html = GetHtml;
	this.put_text = SetText;
	this.get_text = GetText;
	this.EditAdvFocus = GetEditAdvFocus;
}
function GetEditAdvFocus() {
	EditAdv.focus();
}

function GetText() {
	return EditAdv.document.body.innerText;
}

function SetText(text) {
	text = text.replace(/\n/g, "<br>")
	EditAdv.document.body.innerHTML=text;
}

function GetHtml() {
	if (bTextMode) 
		return EditAdv.document.body.innerText;
	else {
		cleanHtml();
		cleanHtml();
		return EditAdv.document.body.innerHTML;
	}
}

function SetHtml(sVal) {
	if (bTextMode) EditAdv.document.body.innerText=sVal;
	else EditAdv.document.body.innerHTML=sVal;
}
//End  of Editor Class

/***********************************************
 Initialize everything when the document is ready
 ***********************************************/
var YInitialized = false;

function document.onreadystatechange()
{
	if (YInitialized) return;
	YInitialized = true;
	var i, s, curr;


//	update by : hocnv@yahoo.com	
/*	

	
	// Find all the toolbars and initialize them.
	for (i=0; i<document.body.all.length; i++) {
		curr=document.body.all[i];
		if (curr.className == "Btn" && !InitBtn(curr))
			alert("Toolbar: " + curr.id + " failed to initialize. Status: false");
	}
	
	EditAdv.document.open()
	EditAdv.document.write(bodyTag);
	EditAdv.document.close()
	EditAdv.document.designMode="On"
	//public_description.put_html(hiddenEditAdvForm.hiddenEditAdvFormTextArea.value);
*/


}

/***********************************************
 Initialize a button ontop of toolbar
 ***********************************************/
 /*
function InitBtn(btn) {
	btn.onmouseover = BtnMouseOver;
	btn.onmouseout = BtnMouseOut;
	btn.onmousedown = BtnMouseDown;
	btn.onmouseup = BtnMouseUp;
	btn.ondragstart = YCancelEvent;
	btn.onselectstart = YCancelEvent;
	btn.onselect = YCancelEvent;
	btn.YUSERONCLICK = btn.onclick;
	btn.onclick = YCancelEvent;
	btn.YINITIALIZED = true;
	return true;
}

// Hander that simply cancels an event
function YCancelEvent() {
	event.returnValue=false;
	event.cancelBubble=true;
	return false;
}

// Toolbar button onmouseover handler
function BtnMouseOver() {
	if (event.srcElement.tagName != "IMG") return false;
	var image = event.srcElement;
	var element = image.parentElement;
	// Change button look based on current state of image.- we don't actually have chaned image
	// could be commented but don't remove for future extension
	if (image.className == "Ico") element.className = "BtnMouseOverUp";
	else if (image.className == "IcoDown") element.className = "BtnMouseOverDown";
	event.cancelBubble = true;
}

// Toolbar button onmouseout handler
function BtnMouseOut() {
	if (event.srcElement.tagName != "IMG") {
		event.cancelBubble = true;
		return false;
	}
	var image = event.srcElement;
	var element = image.parentElement;
	yRaisedElement = null;
	element.className = "Btn";
	image.className = "Ico";
	event.cancelBubble = true;
}

// Toolbar button onmousedown handler
function BtnMouseDown() {
	if (event.srcElement.tagName != "IMG") {
		event.cancelBubble = true;
		event.returnValue=false;
		return false;
	}
	var image = event.srcElement;
	var element = image.parentElement;

	element.className = "BtnMouseOverDown";
	image.className = "IcoDown";

	event.cancelBubble = true;
	event.returnValue=false;
	return false;
}

// Toolbar button onmouseup handler
function BtnMouseUp() {
	if (event.srcElement.tagName != "IMG") {
		event.cancelBubble = true;
		return false;
	}

	var image = event.srcElement;
	var element = image.parentElement;

	if (element.YUSERONCLICK) 
		eval(element.YUSERONCLICK + "anonymous()");

	element.className = "BtnMouseOverUp";
	image.className = "Ico";

	event.cancelBubble = true;
	return false;
}
*/


// Check if toolbar is being used when in text mode
function validateMode() {
	if (! bTextMode) 
		return true;
	alert("Please uncheck the \"View HTML source\" checkbox to use the toolbars");
	EditAdv.focus();
	return false;
}

function sendHtml() {
	if(bTextMode) {
		document.EditAdvForm.body.value = public_description.get_text();
		return true;
	} else {
		document.EditAdvForm.body.value = public_description.get_html();
		return true;
	}
}

//Formats text in EditAdv.
function formatC(what,opt) {
	if (!validateMode()) 
		return;
	if (opt=="removeFormat") {
		what=opt;
		opt=null;
	}
	if (opt==null) 
		EditAdv.document.execCommand(what);
	else 
		EditAdv.document.execCommand(what,"",opt);
	pureText = false;
	EditAdv.focus();
}

//Switches between text and html mode.
function setMode(newMode) {
	bTextMode = newMode;
	var cont;
	if (bTextMode) {
		cleanHtml();
		cleanHtml();
		cont=EditAdv.document.body.innerHTML;
		EditAdv.document.body.innerText=cont;
	} else {
		cont=EditAdv.document.body.innerText;
		EditAdv.document.body.innerHTML=cont;
	}
  
	EditAdv.focus();
}

//Finds and returns an element.
function getEl(sTag,start) {
	while ((start!=null) && (start.tagName!=sTag)) 
		start = start.parentElement;
	return start;
}

function createLink() {
	if (!validateMode()) 
		return;
  
	var isA = getEl("A",EditAdv.document.selection.createRange().parentElement());
	var str = prompt("Enter url:", isA ? isA.href : "http:\/\/");
  
	if ((str!=null) && (str!="http://")) {
		if (EditAdv.document.selection.type=="None") {
			var sel=EditAdv.document.selection.createRange();
			sel.pasteHTML("<A HREF=\""+str+"\">"+str+"</A> ");
			sel.select();
		} else 
			formatC("CreateLink",str);
	} else 
		EditAdv.focus();
}

//Sets the text color.
function foreColor() {
	if (! validateMode()) 
		return;
	var arr = showModalDialog("/ym/ColorSelect?3", "", "font-family:Verdana; font-size:12; dialogWidth:30em; dialogHeight:35em");
	if (arr != null) 
		formatC('forecolor', arr);
	else 
		EditAdv.focus();
}

//Sets the background color.
function backColor() {
	if (!validateMode()) 
		return;
	var arr = showModalDialog("/ym/ColorSelect?3", "", "font-family:Verdana; font-size:12; dialogWidth:30em; dialogHeight:35em");
	if (arr != null) 
		formatC('backcolor', arr);
	else 
		EditAdv.focus()
}



function cleanHtml() {
	var fonts = EditAdv.document.body.all.tags("FONT");
	var curr;
	for (var i = fonts.length - 1; i >= 0; i--) {
		curr = fonts[i];
		if (curr.style.backgroundColor == "#ffffff") 
			curr.outerHTML = curr.innerHTML;
	}
}

function getPureHtml() {
	var str = "";
	var paras = EditAdv.document.body.all.tags("P");
	if (paras.length > 0) {
		for (var i=paras.length-1; i >= 0; i--) 
			str = paras[i].innerHTML + "\n" + str;
	} else {
		str = EditAdv.document.body.innerHTML;
	}
	return str;
}
function setPointer(theRow, thePointerColor) {
    if (typeof(theRow.style) == 'undefined' || typeof(theRow.cells) == 'undefined')
        return false;
    var row_cells_cnt = theRow.cells.length;
    for (var c = 0; c < row_cells_cnt; c++)
        theRow.cells[c].bgColor = thePointerColor;
    return true;
}



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Hoc nv


function MM_reloadPage(init) {  //reloads the window if Nav4 resized

  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {

    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}

  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();

}

MM_reloadPage(true);



function MM_findObj(n, d) { //v4.01

  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {

    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}

  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];

  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);

  if(!x && d.getElementById) x=d.getElementById(n); return x;

}



function MM_dragLayer(objName,x,hL,hT,hW,hH,toFront,dropBack,cU,cD,cL,cR,targL,targT,tol,dropJS,et,dragJS) { //v4.01

  //Copyright 1998 Macromedia, Inc. All rights reserved.

  var i,j,aLayer,retVal,curDrag=null,curLeft,curTop,IE=document.all,NS4=document.layers;

  var NS6=(!IE&&document.getElementById), NS=(NS4||NS6); if (!IE && !NS) return false;

  retVal = true; if(IE && event) event.returnValue = true;

  if (MM_dragLayer.arguments.length > 1) {

    curDrag = MM_findObj(objName); if (!curDrag) return false;

    if (!document.allLayers) { document.allLayers = new Array();

      with (document) if (NS4) { for (i=0; i<layers.length; i++) allLayers[i]=layers[i];

        for (i=0; i<allLayers.length; i++) if (allLayers[i].document && allLayers[i].document.layers)

          with (allLayers[i].document) for (j=0; j<layers.length; j++) allLayers[allLayers.length]=layers[j];

      } else {

        if (NS6) { var spns = getElementsByTagName("span"); var all = getElementsByTagName("div"); 

          for (i=0;i<spns.length;i++) if (spns[i].style&&spns[i].style.position) allLayers[allLayers.length]=spns[i];}

        for (i=0;i<all.length;i++) if (all[i].style&&all[i].style.position) allLayers[allLayers.length]=all[i]; 

    } }

    curDrag.MM_dragOk=true; curDrag.MM_targL=targL; curDrag.MM_targT=targT;

    curDrag.MM_tol=Math.pow(tol,2); curDrag.MM_hLeft=hL; curDrag.MM_hTop=hT;

    curDrag.MM_hWidth=hW; curDrag.MM_hHeight=hH; curDrag.MM_toFront=toFront;

    curDrag.MM_dropBack=dropBack; curDrag.MM_dropJS=dropJS;

    curDrag.MM_everyTime=et; curDrag.MM_dragJS=dragJS;

    curDrag.MM_oldZ = (NS4)?curDrag.zIndex:curDrag.style.zIndex;

    curLeft= (NS4)?curDrag.left:(NS6)?parseInt(curDrag.style.left):curDrag.style.pixelLeft; 

    if (String(curLeft)=="NaN") curLeft=0; curDrag.MM_startL = curLeft;

    curTop = (NS4)?curDrag.top:(NS6)?parseInt(curDrag.style.top):curDrag.style.pixelTop; 

    if (String(curTop)=="NaN") curTop=0; curDrag.MM_startT = curTop;

    curDrag.MM_bL=(cL<0)?null:curLeft-cL; curDrag.MM_bT=(cU<0)?null:curTop-cU;

    curDrag.MM_bR=(cR<0)?null:curLeft+cR; curDrag.MM_bB=(cD<0)?null:curTop+cD;

    curDrag.MM_LEFTRIGHT=0; curDrag.MM_UPDOWN=0; curDrag.MM_SNAPPED=false; //use in your JS!

    document.onmousedown = MM_dragLayer; document.onmouseup = MM_dragLayer;

    if (NS) document.captureEvents(Event.MOUSEDOWN|Event.MOUSEUP);

  } else {

    var theEvent = ((NS)?objName.type:event.type);

    if (theEvent == 'mousedown') {

      var mouseX = (NS)?objName.pageX : event.clientX + document.body.scrollLeft;

      var mouseY = (NS)?objName.pageY : event.clientY + document.body.scrollTop;

      var maxDragZ=null; document.MM_maxZ = 0;

      for (i=0; i<document.allLayers.length; i++) { aLayer = document.allLayers[i];

        var aLayerZ = (NS4)?aLayer.zIndex:parseInt(aLayer.style.zIndex);

        if (aLayerZ > document.MM_maxZ) document.MM_maxZ = aLayerZ;

        var isVisible = (((NS4)?aLayer.visibility:aLayer.style.visibility).indexOf('hid') == -1);

        if (aLayer.MM_dragOk != null && isVisible) with (aLayer) {

          var parentL=0; var parentT=0;

          if (NS6) { parentLayer = aLayer.parentNode;

            while (parentLayer != null && parentLayer.style.position) {             

              parentL += parseInt(parentLayer.offsetLeft); parentT += parseInt(parentLayer.offsetTop);

              parentLayer = parentLayer.parentNode;

          } } else if (IE) { parentLayer = aLayer.parentElement;       

            while (parentLayer != null && parentLayer.style.position) {

              parentL += parentLayer.offsetLeft; parentT += parentLayer.offsetTop;

              parentLayer = parentLayer.parentElement; } }

          var tmpX=mouseX-(((NS4)?pageX:((NS6)?parseInt(style.left):style.pixelLeft)+parentL)+MM_hLeft);

          var tmpY=mouseY-(((NS4)?pageY:((NS6)?parseInt(style.top):style.pixelTop) +parentT)+MM_hTop);

          if (String(tmpX)=="NaN") tmpX=0; if (String(tmpY)=="NaN") tmpY=0;

          var tmpW = MM_hWidth;  if (tmpW <= 0) tmpW += ((NS4)?clip.width :offsetWidth);

          var tmpH = MM_hHeight; if (tmpH <= 0) tmpH += ((NS4)?clip.height:offsetHeight);

          if ((0 <= tmpX && tmpX < tmpW && 0 <= tmpY && tmpY < tmpH) && (maxDragZ == null

              || maxDragZ <= aLayerZ)) { curDrag = aLayer; maxDragZ = aLayerZ; } } }

      if (curDrag) {

        document.onmousemove = MM_dragLayer; if (NS4) document.captureEvents(Event.MOUSEMOVE);

        curLeft = (NS4)?curDrag.left:(NS6)?parseInt(curDrag.style.left):curDrag.style.pixelLeft;

        curTop = (NS4)?curDrag.top:(NS6)?parseInt(curDrag.style.top):curDrag.style.pixelTop;

        if (String(curLeft)=="NaN") curLeft=0; if (String(curTop)=="NaN") curTop=0;

        MM_oldX = mouseX - curLeft; MM_oldY = mouseY - curTop;

        document.MM_curDrag = curDrag;  curDrag.MM_SNAPPED=false;

        if(curDrag.MM_toFront) {

          eval('curDrag.'+((NS4)?'':'style.')+'zIndex=document.MM_maxZ+1');

          if (!curDrag.MM_dropBack) document.MM_maxZ++; }

        retVal = false; if(!NS4&&!NS6) event.returnValue = false;

    } } else if (theEvent == 'mousemove') {

      if (document.MM_curDrag) with (document.MM_curDrag) {

        var mouseX = (NS)?objName.pageX : event.clientX + document.body.scrollLeft;

        var mouseY = (NS)?objName.pageY : event.clientY + document.body.scrollTop;

        newLeft = mouseX-MM_oldX; newTop  = mouseY-MM_oldY;

        if (MM_bL!=null) newLeft = Math.max(newLeft,MM_bL);

        if (MM_bR!=null) newLeft = Math.min(newLeft,MM_bR);

        if (MM_bT!=null) newTop  = Math.max(newTop ,MM_bT);

        if (MM_bB!=null) newTop  = Math.min(newTop ,MM_bB);

        MM_LEFTRIGHT = newLeft-MM_startL; MM_UPDOWN = newTop-MM_startT;

        if (NS4) {left = newLeft; top = newTop;}

        else if (NS6){style.left = newLeft; style.top = newTop;}

        else {style.pixelLeft = newLeft; style.pixelTop = newTop;}

        if (MM_dragJS) eval(MM_dragJS);

        retVal = false; if(!NS) event.returnValue = false;

    } } else if (theEvent == 'mouseup') {

      document.onmousemove = null;

      if (NS) document.releaseEvents(Event.MOUSEMOVE);

      if (NS) document.captureEvents(Event.MOUSEDOWN); //for mac NS

      if (document.MM_curDrag) with (document.MM_curDrag) {

        if (typeof MM_targL =='number' && typeof MM_targT == 'number' &&

            (Math.pow(MM_targL-((NS4)?left:(NS6)?parseInt(style.left):style.pixelLeft),2)+

             Math.pow(MM_targT-((NS4)?top:(NS6)?parseInt(style.top):style.pixelTop),2))<=MM_tol) {

          if (NS4) {left = MM_targL; top = MM_targT;}

          else if (NS6) {style.left = MM_targL; style.top = MM_targT;}

          else {style.pixelLeft = MM_targL; style.pixelTop = MM_targT;}

          MM_SNAPPED = true; MM_LEFTRIGHT = MM_startL-MM_targL; MM_UPDOWN = MM_startT-MM_targT; }

        if (MM_everyTime || MM_SNAPPED) eval(MM_dropJS);

        if(MM_dropBack) {if (NS4) zIndex = MM_oldZ; else style.zIndex = MM_oldZ;}

        retVal = false; if(!NS) event.returnValue = false; }

      document.MM_curDrag = null;

    }

    if (NS) document.routeEvent(objName);

  } return retVal;

}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



var selected;

function FormatFile( align )

{
	var id = formName.counts.value;
	var obj = "document.formName.Image_" + id ;
	if(eval(obj).value == "")
	{
		alert("Please choose a file !");
		eval(obj).focus();
	}
	else
	{
		url = eval(obj).value;
		str = "<input type=hidden name=FileNameImage[] value='" + url + "'>";
		document.all['choosefile'].insertAdjacentHTML('BeforeEnd', str);
//		selected.pasteHTML('<img src="' + url + '" align="' + align + '">' );
		selected.pasteHTML(' <table border="0" cellpadding="0" cellspacing="0" align="' + align + '"><tr><td> <img src="' + url + '"> </td></tr><tr><td>&nbsp;</td></tr></table>')
		id ++;
		formName.counts.value = id;
		hide();
	}
}

function Choose_File()
{ 
	selected = EditAdv.document.selection.createRange();
	id = formName.counts.value;
	rui = formName.rui.value;
	formName.rui.value = id;
	if(id != rui)
	{
		str = " Img " + id + " : <input class=sys_input type=file name=Image_" + id + "> <br>";
		document.all['choosefileid'].insertAdjacentHTML('BeforeEnd',str);
	}
	

// Note by : hocnv@ssp.com.vn 
	obj = document.all.tags("iframe");
//	obj[0].style.visibility = 'hidden';
	choosefile.style.visibility = 'visible';

	
}

/*
function submitPage()
{
	formName.content.value = EditAdv.document.body.innerHTML;
	formName.submit();
}

*/

function hide()
{
	obj = document.all.tags("iframe");
	choosefile.style.visibility = 'hidden';
	obj[0].style.visibility = 'visible';
}

