var ie4 = (document.all) ? true : false;
var ns4 = (document.layers) ? true : false;
var ns6 = (document.getElementById && !document.all) ? true : false;
var getx,gety = 0;
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
function writetolayer(lay,txt)
{
	if (ie4)
	{
		document.all[lay].innerHTML = txt;
	}
	if (ns4)
	{
		document[lay].document.write(txt);
		document[lay].document.close();
	}
	if (ns6)
	{
		over = document.getElementById([lay]);
		range = document.createRange();
		range.setStartBefore(over);
		domfrag = range.createContextualFragment(txt);
		while (over.hasChildNodes())
		{
			over.removeChild(over.lastChild);
		}
		over.appendChild(domfrag);
	}
}
