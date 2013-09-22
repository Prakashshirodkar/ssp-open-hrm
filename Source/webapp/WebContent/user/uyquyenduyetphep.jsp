<script language="JavaScript" src="<%=contextPath%>/jscript/changeimage.js"></script>
<script language="JavaScript" src="<%=contextPath%>/jscript/common_utils.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/dateutil_vi.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/jscalendar/calendar.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/jscalendar/calendar-setup.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/jscalendar/calendar-<%=language%>.js"></script>
<style type="text/css"> 
@import url("<%=contextPath%>/jscript/jscalendar/calendar-system.css"); 
</style>

<%
	String nam = (request.getParameter("namvalue") != null) ? request.getParameter("namvalue") : "";
	if(nam.equals(""))
		nam = SString.toString(new java.util.Date(), "yyyy");
	java.sql.Connection conn = null;
	int rowcount = 0;
	try{
%>
	<table class="tablecontent" align="center">
		<tr>
			<td colspan="5"><div id="headercontent" class="title"><%=_res("uqdp.title")%></div>  
		  	</td>
		</tr>
		<tr>
			<td>
				<form name="frmRegistry" action="<%=contextPath%>/user/RegistryController.do" method="post">
					<input type="hidden" name="state" value="uyquyenduyetphep">
					<input type="hidden" name="username" value="<%=username%>" />
				<table align="center" bgcolor="#F0F0F0" width="790" border="0" cellpadding=6 cellspacing=1 style="border:1px solid #CCCCCC;">
					<tr>
						<td width="20%" class="des" align="right"><%=_res("dkp.thoigiannghi")%></td>
					   	<td width="15%">
							  	<script type="text/javascript">
								   function Returned(cal) {
									   var datetime = document.getElementById("tungay").value;
										document.frmRegistry.tungay.value = getDDMMYYYY(datetime);
										cal.hide();
										cal.destroy();
										calendar = null;
									}
								</script>	
							<input name="tungay" readonly value="<%=SString.toString(new java.util.Date(),"dd/MM/yyyy")%>" size=6 class="textbox">
							<img onclick="return showCalendar('btdatefrom','tungay', '%d/%m/%Y', Returned);" align="absmiddle" id="btdatefrom" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("pn.tungay")%>'>
                        </td>
                        <td width="16%" class="des" align="right"><%=_res("dkp.denngay")%></td>
                        <td >
                            <input name="denngay" readonly id="denngay" value="" size=6 class="textbox">
                            <img onclick="return showCalendar('btdateto','denngay', '%d/%m/%Y', false);" align="absmiddle" id="btdateto" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("pn.denngay")%>'>
                        </td>
                    </tr>
                    <%
						String strSqldsnvuq = ("select distinct * from web_dsnv_duocuyquyen");
						conn = dbConnManager.getConnection("topmostread");	
						java.sql.PreparedStatement st=conn.prepareStatement(strSqldsnvuq);
						ResultSet rs = st.executeQuery();
					%>
                    <tr>
                    	<td class="des" align="right"><%=_res("uq.nguoiduocuq")%>:</td>
                        <td colspan="3">
                        	<select name="nguoiduocuq">
                            	<%
									while(rs.next()){
								%>
                                	<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
								<%}%>
                            </select>
                        </td>
                    </tr>
                    <tr>
                    	<td class="des" align="right"><%=_res("uq.lydo")%>:</td>
                        <td colspan="3"><textarea name="lydouq" style="width:400px;" ></textarea></td>
                    </tr>
                    <tr><td colspan="4"><hr /></td></tr>
                    <tr>
                        <td align="left" colspan="4">
                            <input name="button" type="button" value="<%=_res("uq.uyquyen")%>" Onclick="javascript:funcPostData();"/>
                        </td>
                    </tr>
				</table>
                </form>
			</td>
		</tr>
		<tr>
			<td>
				<table width="790" align="center" border="0" cellspacing="1" cellpadding="2" bgcolor="#007D93">
					<tr>
						<td colspan="5" class="title1">&nbsp;<%=_res("uqdp.danhsach")%></td>
					</tr>
					<form name="frmDelete" action="<%=contextPath%>/user/DeleteController.do" method="post">
					<input type="hidden" name="state" value="DeleteUyquyen">
					<input type="hidden" name="manv_duoc_uyquyen">
                    <input type="hidden" name="tungay_uyquyen">
                    <tr height="24">
					  	<td width="38" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.stt")%></td>
						<td width="160" align="center" class="des" bgcolor="#f8f8f8"><%=_res("uq.thoigian")%></td>
						<td width="180" align="center" class="des" bgcolor="#f8f8f8"><%=_res("uq.nguoiduocuq")%></td>
						<td width="315" align="center" class="des" bgcolor="#f8f8f8"><%=_res("uq.lydo")%></td>	
                        <td align="center" class="des" bgcolor="#f8f8f8" align="center"><%=_res("pn.thaotac")%></td>
					</tr>
					<%
						String strSqlCtpn = ("select * from WEB_XEM_THONGTIN_UYQUYEN('"+username+"')");
						//conn = dbConnManager.getConnection("topmostread");	
	   	 				//java.sql.PreparedStatement st=conn.prepareStatement(strSqlCtpn);
						rs = st.executeQuery(strSqlCtpn);
						int r = 1;
						int s = 0;
						while(rs.next()){
							s++;
						}
						if(s!=0){
							rs = st.executeQuery(strSqlCtpn);
							while(rs.next()){
								
					%>			
					<tr height="24" <%if(r%2==0){%>bgcolor="#EEEEEE"<%}else{%>bgcolor="#FFFFFF"<%}%>>
						<td align="center" bgcolor="#FFF7E7" class="value"><%=r++%></td>
						<td bgcolor="#FFF7E7" class="value"><%=SString.toString(rs.getDate(1),"dd/MM/yyyy") %> <%=_res("dkp.den")%><%=SString.toString(rs.getDate(2),"dd/MM/yyyy") %></td>
						<td bgcolor="#FFF7E7" class="value"><%=rs.getString(4) %></td>
						<td bgcolor="#FFF7E7" class="value">
							<%=rs.getString(5) %>
						</td>
						<td bgcolor="#FFF7E7" class="value" align="center">
							<img src="<%=contextPath%>/img/delete.gif" />
							<a class="links" href="javascript:funcDelete('<%=username%>','<%=SString.toString(rs.getDate(1),"dd/MM/yyyy") %>');" title="<%=_res("pn.xoa")%> <%=_res("uqdp.title")%>"><%=_res("pn.xoa")%></a>
						</td>
					</tr>
					<%}} else {%>
					<tr>
						<td align="center" bgcolor="#FFF7E7" class="value">&nbsp;</td>
						<td bgcolor="#FFF7E7" class="value"></td>
						<td align="center"bgcolor="#FFF7E7" class="value"></td>
						<td bgcolor="#FFF7E7" class="value"></td>
						<td bgcolor="#FFF7E7" class="value" align="center">
						</td>
					</tr>
					<%}%>
					</form>
				</table>
			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
<%
	}catch(Exception e){
		e.printStackTrace();
	    //out.println(e.getMessage());
	}finally{
		dbConnManager.freeConnection("topmostread", conn);
	}
%>
	</table>
	
<script language="javascript">
	function funcDelete(value,date){
		var dm = document.frmDelete;
		var x=window.confirm('<%=_res("pn.confirmxoa")%>');
		if(x){
			dm.manv_duoc_uyquyen.value = value;
			dm.tungay_uyquyen.value = date;
			dm.submit();
		}
	}
	
	function funcPostData(){
		  var dm = document.frmRegistry;
		  
		 if (dm.tungay.value==''){
			alert('<%=_res("uqdp.msg.datefrom1")%>');
			dm.tungay.focus();
		  }
		  else if(checkDate(dm.tungay, true)!='TRUE'){
		  	alert('<%=_res("uqdp.msg.datefrom2")%>');
			dm.tungay.focus();
		  }
		  
		  else if (dm.denngay.value==''){
			alert('<%=_res("uqdp.msg.dateto1")%>');
			dm.denngay.focus();
		  }
		  
		   else if(checkDate(dm.denngay, true)!='TRUE'){
		  	alert('<%=_res("uqdp.msg.dateto2")%>');
			dm.denngay.focus();
		  }
		  
		  else if (compareDate(dm.tungay.value,dm.denngay.value)==1){
			alert('<%=_res("uqdp.msg.comparedate")%>');
			dm.denngay.focus();
		  }
		 		 
		  else if (dm.lydouq.value == ''){
			alert('<%=_res("uqdp.msg.lydo")%>');
			dm.lydouq.focus();
		  }
		  else if(dm.lydouq.value!='' && dm.lydouq.value.length>42){
		  	alert('<%=_res("uqdp.msg.lengthlydo")%>');
			dm.lydouq.focus();
		  }
		  else{
			dm.submit();
		  }
	 }
</script>
