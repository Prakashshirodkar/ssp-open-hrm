/**********************************************************************
 *   Confirm remove													  *
 **********************************************************************/

function confirmRemove( url, texts ){
	var text = "";
	for( var t in texts ){
		text = text + texts[t] + "\n";
	}
	if( confirm("Could not remove the selected element !"
				+"\nThe part is referenced by the following parts:\n\n"
				+ text
				+ "Press OK to delete the selected part\nwith all children and all dependants !\n"
	)) location.href = url;
}

/**********************************************************************
 *   Confirm remove	for import										  *
 **********************************************************************/

function confirmRemoveImport( url, texts ){
	var text = "";
	for( var t in texts ){
		text = text + texts[t] + "\n";
	}
	if( confirm("Could not remove the selected element !"
				+"\nThese parts will be deleted during import:\n\n"
				+ text
				+ "Press OK to delete the selected parts\nwith all children and all dependants !\n"
	)) location.href = url;
}

/*====================================================================*
 *   Steuerung von scrollbaren Bereichen                              *
 *====================================================================*/

var fixW, fixH;
var MINX = 0;
var MAXX = 8096;
var MINY = 0;
var MAXY = 8096;
var DEFAULT_AREA_CSS = "builder-scroll";
var SCROLLABLE = true;
var SCROLL = true;
var NOSCROLL = false;

var isNetscape = navigator.appName == "Netscape";


function readCurrentWindowSize() 
{
	if (isNetscape) {
		fixH = window.innerHeight;
		fixW = window.innerWidth;
	} else {
		fixH = document.body.offsetHeight;
		if (fixH == 0 && window.parent)
			fixH = window.parent.document.body.offsetHeight;
		fixW = document.body.offsetWidth;
		if (fixW == 0 && window.parent)
			fixW = window.parent.document.body.offsetWidth;
	}
	return fixH;
}


function  beginArea (extent, padding, css, scroll, bounds)
{
	if (bounds == null)  bounds = { x: 0, y: 0, w: 9000, h: 9000 };
	setArea (extent.w, padding.x, bounds.x, bounds.x+bounds.w, extent.h, padding.y, bounds.y, bounds.y+bounds.h, css, scroll);
}

function  endArea () { setAreaClose(); }


/**
 * Setzt die prozentuale Höhe und Breite eines Bereichs unter Berücksichtigung verschiedener Constraints.
 *
 * @param percentWidth  Breite des Bereichs prozentual von der vorhandenen Browserfenstergröße.
 * @param padHorizontal Wird von der vorhandenen Breite abgezogen.
 * @param minX          Der Bereich darf diese Breite nicht unterschreiten. MINX definiert eine Standardgrösse, falls dieser Wert nicht notwendig ist.
 * @param maxX          Der Bereich darf diese Breite nicht überschreiten. MAXX definiert eine Standardgrösse, falls dieser Wert nicht notwendig ist.
 * @param percentHeight Höhe des Bereichs prozentual von der vorhandenen Browserfenstergröße.
 * @param padHorizontal Wird von der vorhandenen Höhe abgezogen.
 * @param minY          Der Bereich darf diese Höhe nicht unterschreiten. MINY definiert eine Standardgrösse, falls dieser Wert nicht notwendig ist.
 * @param maxY          Der Bereich darf diese Höhe nicht überschreiten. MAXY definiert eine Standardgrösse, falls dieser Wert nicht notwendig ist.
 * @param css           Name einer div CSS Regel, die zur Darstellung des Bereichs verwendet wird.
 * @param scroll        Auf jeden Fall Scrollbars ermöglichen. Netscape 6 kann bei "overflow: auto" keine Select-Boxen öffnen
 */
function setArea (
	percentWidth, padHorizontal, minX, maxX,
	percentHeight,  padVertical, minY, maxY,
	css, scroll)
{
	readCurrentWindowSize();

	var width  = Math.min (maxX, Math.max (minX, (fixW * percentWidth) / 100 )) - padHorizontal;
	var height = Math.min (maxY, Math.max (minY, (fixH * percentHeight) / 100 )) - padVertical;

	var overflow = "";
	if (scroll || !isNetscape)
		overflow = ' overflow: auto;';

	if (percentWidth == 100 && padHorizontal == 0)
		widthStyle = '';
	else
		widthStyle = ' width:' + width + 'px;';

	var cmd = '<div class="'+css+'" style="height:' + height + 'px;' + widthStyle + overflow + '">';

	document.write(cmd);
}

/**
 * Schliest die Formatierung der Area ab.
 */
function setAreaClose() {
	document.write("</div>");
}

/*====================================================================*
 *   Popup Windows                                                    *
 *====================================================================*/

function isOldIE()
{
    var ver = navigator.appVersion;
	var p = ver.indexOf("MSIE 5");
	return (p >= 0 && ver.substr(p + 5, 3) <= "5.0") // IE <= 5.0
}

var dialogParams;

/**
 * showDialog erst nach Laden des Dokumentes anzeigen, da IE sonst die Hauptseite
 * nach einem Submit nicht anzeigt.
 */
function showDialogOnLoad(url, title, width, height, resize)
{
	dialogParams = new Object();
	dialogParams.url = url;
	dialogParams.title = title;
	dialogParams.width = width;
	dialogParams.height = height;
	dialogParams.resize = resize;
	window.onload = executeShowDialog;
}

function executeShowDialog()
{
	showDialog(dialogParams.url, dialogParams.title, dialogParams.width, dialogParams.height, dialogParams.resize);
	window.onload = null;
}


function showDialog(url, title, mwidth, mheight, resize)
{
	winurl = 'parts/common/dialog.jsp';
	winurl += winurl.indexOf('?') < 0 ? '?' : '&';
	winurl += 'url=' + escape(url) + '&title=' + escape(title);
	height = new String(mheight);
	if (height.indexOf("%") > 0)
	{
		percent = height.substring(0, height.indexOf("%"));
		if (!isNetscape)
			height = window.parent.document.body.offsetHeight * percent / 100;
		else
			height = window.innerHeight * percent / 100;
	}

	if (window.showModalDialog)
	{
		var params = new Object();
		params.opener = window;
		var features = "dialogHeight: " + height + "px; dialogWidth: " + mwidth + "px; resizable: " + resize + "; status: no; help: no; scroll: no";
		window.showModalDialog(winurl, params, features);
	}
	else
	{
		var features = "height=" + height + ", width=" + mwidth + ", resizable=" + resize + ", status=no, location=no, menubar=no, toolbar=no, modal=yes";
		features += ", left=" + (window.screenX + ((window.outerWidth - mwidth) / 2));
        features += ", top=" + (window.screenY + ((window.outerHeight - height) / 2));
		window.open(winurl, "", features);
	}
}

var targetWin;
var origName;

function submitPopup(button)
{
	var separator = button.form.action.indexOf("?") > 0 ? "&" : "?";
	button.form.action = button.form.action + separator + button.name + "=" + button.name;

	targetWin = window.parent.opener;
	origName = targetWin.name;
	try {
		if (!isOldIE())
		{
			targetWin.name = "abx_popup_target";
			button.form.target = targetWin.name;
		}
		button.form.submit();
	}
	finally {
		setTimeout('concludeSubmitPopup()', 100);  // wait 100 ms to solve timing problems with Netscape 6 and IE 5.0
	}
}

function concludeSubmitPopup()
{
	if (isOldIE()) // IE <= 5.0 needs reload to display the selected objects
	{
		window.parent.close();
		targetWin.parent.location.reload();
	}
	else
	{
		targetWin.name = origName;
		window.parent.close();
	}
	targetWin = null;
	origName = "module";

}

function closePopup()
{
	window.parent.close();
}
