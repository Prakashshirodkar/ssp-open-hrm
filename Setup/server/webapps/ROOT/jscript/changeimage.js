<!-- 
function findObj(n, d) { 
                       var p,i,x;
                       if(!d) d=document; 
                       if((p=n.indexOf("?"))>0&&parent.frames.length) { 
                                                                       d=parent.frames[n.substring(p+1)].document;
                                                                       n=n.substring(0,p);
                                                                      }
                       if(!(x=d[n])&&d.all) x=d.all[n];
                       for (i=0;!x&&i<d.forms.length;i++)
                           x=d.forms[i][n];
                       for(i=0;!x&&d.layers&&i<d.layers.length;i++)
                           x=findObj(n,d.layers[i].document);
                       
					   return x;
                       }

/* Functions that swaps images. */
function swapImage() { 
                     var i, j = 0, x, a = swapImage.arguments;
                     document.src = new Array;
                     for(i = 0; i < (a.length-2); i += 3)
                        if ((x = findObj(a[i])) != null) {
                                                          document.src[j++] = x;
                                                          if(!x.oSrc) x.oSrc=x.src;
                                                          x.src=a[i+2];
                                                         }
                     }

function swapImgRestore() { 
                           var i,x,a=document.src;
                           for(i = 0; a&&i<a.length&&(x=a[i])&&x.oSrc;i++)
                               x.src=x.oSrc;
                          }

var ie4 = (document.all) ? true : false;
var ns4 = (document.layers) ? true : false;
var ns6 = (document.getElementById && !document.all) ? true : false;
var getx,gety = 0;

function hidelayer(lay) { 
if (ie4) {document.all[lay].style.visibility = "hidden";}
if (ns4) {document.layers[lay].visibility = "hide";}
if (ns6) {document.getElementById([lay]).style.display = "none";}
}
function showlayer(lay) {
if (ie4) {document.all[lay].style.visibility = "visible";}
if (ns4) {document.layers[lay].visibility = "show";}
if (ns6) {document.getElementById([lay]).style.display = "block";}
}

function layer(lay) { 
if (ie4) {
	if ( event.clientX > 690)
		document.all[lay].style.pixelLeft = event.clientX - 100 + document.body.scrollLeft;
	else
		//document.all[lay].style.pixelLeft = event.clientX - 100 + document.body.scrollLeft;
		document.all[lay].style.pixelLeft = event.clientX + document.body.scrollLeft;
}
else {
	document.captureEvents(Event.MOUSEMOVE);
	document.onmousemove = getMouseXY;
	function getMouseXY(e) {
		getx = e.pageX;
	}
	if (getx > 690)
		document.layers[lay].left = getx - 100;
	else
		//document.layers[lay].left = getx - 100;
		document.layers[lay].left = getx;
}
}

/* Functions that swaps images. */
function over() {  
                     var i, j = 0, x, a = over.arguments;
                     document.src = new Array;
                     for(i = 0; i < (a.length-2); i += 3) { 
                        if ((x = findObj(a[i])) != null) { 
                                                          document.src[j++] = x;
                                                          if(!x.oSrc) x.oSrc=x.src;
                                                          x.src=a[i+2];
                                                         }
                     } }

function out() { 
                           var i,x,a=document.src;
                           for(i = 0; a&&i<a.length&&(x=a[i])&&x.oSrc;i++)
                               x.src=x.oSrc;
                          }
//-->
function setWidth(obj,maxwidth)
{
	if (maxwidth>0) {
	 var nWidth=parseInt(obj.width);
	 var nHeight=parseInt(obj.height);	 	 
	 if (nWidth > maxwidth&&nHeight>200) {//fix error banner title
		 obj.height = Math.round( obj.height * ( maxwidth  / nWidth ) ) ;//set size theo ratio
		 return maxwidth;
	 }
	}
	return false;
}