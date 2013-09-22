
<script language="JavaScript" src="<%=contextPath%>/jscript/changeimage.js"></script>
<script language="JavaScript" src="<%=contextPath%>/jscript/common_utils.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/dateutil_vi.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/jscalendar/calendar.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/jscalendar/calendar-setup.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/jscalendar/calendar-<%=language%>.js"></script>
<style type="text/css"> 
@import url("<%=contextPath%>/jscript/jscalendar/calendar-system.css"); 
</style>
	<table align="center" width="790">
		<tr>
			<td>
			<div id="divcontrol">
				<table class="tablecontent" align="center">
					<tr valign="top">
						<td valign="top"><div id="headercontent" class="title"><%=_res("bc.title")%></div></td>
					</tr>
				</table>
			</div>
			</td>
		</tr>
		<tr valign="top">
			<td align="center" valign="top">
			<div align="center" id="divviewbc" style="vertical-align:top; display:none; border:1px solid #CCCCCC; height:290px; width:790px; overflow:auto;">
			</div>
			</td>
		</tr>
	</table>
			
<script language="javascript">

	function loadFragmentInToElement(fragment_url, element_id, page) {
      var element = document.getElementById(element_id);
      var xmlhttp;

		element.innerHTML = '<div align=center><em><img src="<%=contextPath%>/img/loading.gif"></em></div>';
        if (window.XMLHttpRequest) {
          xmlhttp = new XMLHttpRequest();
          // branch for IE/Windows ActiveX version
      } else if (window.ActiveXObject) {
          xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }
      xmlhttp.open("GET", fragment_url,true);
      xmlhttp.onreadystatechange = function() {
          if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
              element.innerHTML = xmlhttp.responseText;
              currentpage = page;
          }
      }
      xmlhttp.send(null);
  	}
	
	function loadFragmentInToElement1(fragment_url, element_id, page) {
      var element = document.getElementById(element_id);
      var xmlhttp;

		element.innerHTML = '<div><em><img src="<%=contextPath%>/img/loading.gif"></em></div>';
        if (window.XMLHttpRequest) {
          xmlhttp = new XMLHttpRequest();
          // branch for IE/Windows ActiveX version
      } else if (window.ActiveXObject) {
          xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }
      xmlhttp.open("GET", fragment_url,true);
      xmlhttp.onreadystatechange = function() {
          if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
              element.innerHTML = xmlhttp.responseText;
              currentpage = page;
          }
      }
      xmlhttp.send(null);
  	}
  
	
  
  	function showHidedivlistreport(div,reportid,img,tempimg){
		var image=document.getElementById(img);
		var tempimage=document.getElementById(tempimg);
		var divtemp=document.getElementById(div).style.display;
		//var ma_ngoaingu = document.addTdnn.ma_ngoaingu.value;
		if(divtemp == 'none'){
			tempimage.src="<%=contextPath%>/img/them5.gif";
			image.src="<%=contextPath%>/img/them4.gif";
			document.getElementById(div).style.display="block";
		}else{
			tempimage.src="<%=contextPath%>/img/them3.gif";
			image.src="<%=contextPath%>/img/them.gif";
			document.getElementById(div).style.display="none";
		}
		loadFragmentInToElement1("i_listreport.jsp?random=Math().random()&report_id="+reportid, div);
	}
  	function showIconOnMouseOver(){
		if(document.getElementById('divcontrollist').style.display=='none')
			document.getElementById('imgcontrol').src="<%=contextPath%>/img/downonmouse.png";
		else
			document.getElementById('imgcontrol').src="<%=contextPath%>/img/uponmouse.png";
	}
	function showIconOnMouseOut(){
		if(document.getElementById('divcontrollist').style.display=='none')
			document.getElementById('imgcontrol').src="<%=contextPath%>/img/down1.png";
		else
			document.getElementById('imgcontrol').src="<%=contextPath%>/img/up1.png";
	}
	function showDivControl(){
		if(document.getElementById('divcontrollist').style.display=='none'){
			document.getElementById('imgcontrol').src="<%=contextPath%>/img/up1.png";
			document.getElementById('divcontrollist').style.display='block';
		}else{
			document.getElementById('imgcontrol').src="<%=contextPath%>/img/down1.png";
			document.getElementById('divcontrollist').style.display='none';
		}
	}
	
 	function showHidedivcontrol(div,reportid){
		document.getElementById('divviewbc').style.display="none";
		loadFragmentInToElement("i_controlreport.jsp?random=Math().random()&report_id="+reportid, div);
	}
	function functUpValue(div,id){
		var value = document.getElementById(id).value;
		loadFragmentInToElement("i_valueup.jsp?random=Math().random()&id="+id+"&value="+value, div);
	}
	function functDownValue(div,id){
		var value = document.getElementById(id).value;
		loadFragmentInToElement("i_valuedown.jsp?random=Math().random()&id="+id+"&value="+value, div);
	}
	function funcViewBaocao(report_id,listParamName){
		document.getElementById('divviewbc').style.display="block";
		var listParamValue = '';
		var arrListParamName = listParamName.split('<!*-*!>');
		for(i=0;i<arrListParamName.length;i++){
			if(arrListParamName[i]!=''){
				//alert(document.frmView[list[i]].value);
				var temp="";
				if(checkDate(document.frmView[arrListParamName[i]], true)=='TRUE')
				{
					var arrtemp = document.frmView[arrListParamName[i]].value.split('/');
					temp = arrtemp[1] + '/' + arrtemp[0] + '/' + arrtemp[2];
					listParamValue = listParamValue + temp + '<!*-*!>';
				}
				else{
					if(document.frmView[arrListParamName[i]].type=='checkbox')
						listParamValue = listParamValue + document.frmView[arrListParamName[i]].checked + '<!*-*!>';
					else
						listParamValue = listParamValue + document.frmView[arrListParamName[i]].value + '<!*-*!>';
				}
			}
		}
		//alert(listParamValue);
		//alert(listParamName);
		//var url = ('i_viewbaocao.jsp?listParamName='+listParamName+'&report_id='+report_id+'&listParamValue='+listParamValue);
		
		loadFragmentInToElement("i_viewbaocao.jsp?random=Math().random()&listParamName="+listParamName+"&report_id="+report_id+"&listParamValue="+listParamValue, "divviewbc" );
		
		document.getElementById('imgcontrol').src="<%=contextPath%>/img/down1.png";
		document.getElementById('divcontrollist').style.display="none";
		window.scroll(0,0);
	}

 </script>