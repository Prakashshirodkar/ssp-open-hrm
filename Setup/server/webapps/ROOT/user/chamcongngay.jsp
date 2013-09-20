<script language="JavaScript" src="<%=contextPath%>/jscript/changeimage.js"></script>
<script language="JavaScript" src="<%=contextPath%>/jscript/common_utils.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/dateutil_vi.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/jscalendar/calendar.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/jscalendar/calendar-setup.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/jscalendar/calendar-vi.js"></script>
<style type="text/css"> 
@import url("<%=contextPath%>/jscript/jscalendar/calendar-system.css"); 
</style>
<%
	String tungay1 = (request.getParameter("tungayvalue") != null) ? request.getParameter("tungayvalue") : "";
	if(tungay1.equals(""))
		tungay1 = "01/" + SString.toString(new java.util.Date(), "MM/yyyy");
	java.util.Date tungay = SString.parseDate(tungay1,"dd/MM/yyyy");
	
	String denngay1 = (request.getParameter("denngayvalue") != null) ? request.getParameter("denngayvalue") : "";
	if(denngay1.equals(""))
		denngay1 = SString.toString(new java.util.Date(), "dd/MM/yyyy");
	java.util.Date denngay = SString.parseDate(denngay1,"dd/MM/yyyy");
	String strSqlTtcn = ("select HO_NHANVIEN, TENDEM_NHANVIEN, TEN_NHANVIEN from WEB_XEM_THONGTIN_NHANVIEN('"+username+"')");
	String hoten = "";
	int rowcount = 0;
	java.sql.Connection conn = null;
	try{
	    conn = dbConnManager.getConnection("topmostread");	
	    java.sql.PreparedStatement st=conn.prepareStatement(strSqlTtcn);
		ResultSet rs = st.executeQuery();
%>
			<table class="tablecontent" align="center">
				<tr>
					<td><div id="headercontent" class="title"><%=_res("cct.chamcongngay")%></div></td>
				</tr>
				<tr>
					<td>
						<table align="center" width="790" border="0" cellspacing="1" cellpadding="2" style="border:1px solid #CCCCCC;">
							<tr>
								<td width="54" class="des" align="left" bgcolor="#f8f8f8"><%=_res("ccn.tungay")%></td>
						      	<form name="frmview" action="<%=contextPath%>/user/chamcongngayfrm.jsp" method="post">
								<td width="107" class="des" bgcolor="#f8f8f8">
									<input onclick="return showCalendar('btdatefrom','tungayvalue', '%d/%m/%Y', false);" name="tungayvalue" id="tungay" value="<%=tungay1%>" size=6 class="textbox">
									<img onclick="return showCalendar('btdatefrom','tungayvalue', '%d/%m/%Y', false);" align="absmiddle" id="btdatefrom" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("ccn.tungay")%>'>
							  	</td>
							  	<td width="62" class="des" bgcolor="#f8f8f8"><%=_res("ccn.denngay")%></td>
							  	<td width="110" class="des" bgcolor="#f8f8f8">
									<input name="denngayvalue" id="denngay" value="<%=SString.toString(new java.util.Date(),"dd/MM/yyyy")%>" size=6 class="textbox">
                  					<img onclick="return showCalendar('btdateto','denngayvalue', '%d/%m/%Y', false);" align="absmiddle" id="btdateto" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("ccn.denngay")%>'>
							  	</td>
							  	<td width="429" class="des" bgcolor="#f8f8f8">
									<input name="button" type="button" value="<%=_res("cct.submit")%>" Onclick="javascript:funcPostData();"/>
								</td>
								</form>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table align="center" width="790" border="0" cellspacing="1" cellpadding="2" bgcolor="#007D93">
							<tr height="22px">
								<td colspan="5" class="title1">&nbsp;<%=tungay1%> <%=_res("ccn.denngay")%> <%=denngay1%></td>
							</tr>
							<tr>
								<td width="22%" align="center" class="des"  bgcolor="#f8f8f8"><%=_res("cct.ngay")%></td>
								<td width="14%" align="center" class="des"  bgcolor="#f8f8f8"><%=_res("cct.giovao")%></td>
								<td width="13%" align="center" class="des"  bgcolor="#f8f8f8"><%=_res("cct.giora")%></td>
								<td width="12%" align="center" class="des"  bgcolor="#f8f8f8"><%=_res("cct.sogio")%></td>
								<td width="39%" align="center" class="des"  bgcolor="#f8f8f8" ></td>
							</tr>
							<%
								String strSqlCcn = ("select * from WEB_XEM_CHAMCONG_NGAY('"+username+"', '"+SString.toString(tungay,"MM/dd/yyyy")+"', '"+SString.toString(denngay,"MM/dd/yyyy")+"')");
								//java.sql.Statement stccn=conn.createStatement();
								rs = st.executeQuery(strSqlCcn);
								int k = 0;
								while(rs.next()){
									k++;
								}
								//System.out.print(k);
								Double tong = 0.0;
								int l = 1;
								String strTemptDate = "";
								int i = 0;
								if(k!=0){
								rs = st.executeQuery(strSqlCcn);
								while(rs.next()){
								if(!strTemptDate.equals(SString.toString(rs.getDate(1),"dd"))) {
								//i = Integer.parseInt(strTemptDate) - 1;
							%>
							<tr>
								<td colspan="5" class="des"  bgcolor="#f8f8f8" >&nbsp;<%=SString.toString(rs.getDate(1),"dd/MM/yyyy")%></td>
							</tr>
							<%}%>
							<tr>		
								<td class="value" bgcolor="#FFF7E7" align="center"><%=SString.toString(rs.getDate(1),"dd/MM/yyyy")%></td>
								<td class="value" bgcolor="#FFF7E7">
									<%if(rs.getString(4)==null){%><%} else {%>
									<%=rs.getTime(4) %> <%}%>
								</td>
								<td class="value" bgcolor="#FFF7E7">
									<%if(rs.getString(5)==null){%><%} else {%>
									<%=rs.getTime(5) %> <%}%>
								</td>
								<td align="right" class="value" bgcolor="#FFF7E7"><%=rs.getDouble(6) %></td>
								<td class="value" bgcolor="#FFF7E7"><%=rs.getString(3) %></td>
							</tr>
							<%
								strTemptDate = SString.toString(rs.getDate(1),"dd");
								tong = tong + rs.getDouble(6);
							}}else { %>
							<tr>
								<td class="value" bgcolor="#FFF7E7">&nbsp;</td>
								<td class="value" bgcolor="#FFF7E7"></td>
								<td class="value" bgcolor="#FFF7E7"></td>
								<td class="value" bgcolor="#FFF7E7"></td>
								<td align="right" class="value" bgcolor="#FFF7E7"></td>
							</tr>
							<%}
								rs.close();
								st.close();
							%>
							<tr>
								<td class="des"  bgcolor="#f8f8f8"><%=_res("cct.tongcong")%></td>
								<td class="des"  bgcolor="#f8f8f8"></td>
								<td class="des"  bgcolor="#f8f8f8"></td>
								<td align="right" class="des"  bgcolor="#f8f8f8"><%=tong %></td>
								<td class="des"  bgcolor="#f8f8f8"></td>
							</tr>
						</table>													
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
			</table>
	 
<%
	}catch(Exception e){
	      //e.printStackTrace();
	      //out.println(e.getMessage());
	}finally{
		dbConnManager.freeConnection("topmostread", conn);
	}
%>

<script language="javascript">
	function funcPostData(){
		  var dm = document.frmview;
		 if (dm.tungayvalue.value==''){
			alert('<%=_res("ccn.alert.tungaynull")%>');
			dm.tungayvalue.focus();
		  }
		  else if(checkDate(dm.tungayvalue, true)!='TRUE'){
		  	alert('<%=_res("ccn.alert.tungaycheck")%>');
			dm.tungayvalue.focus();
		  }
		  
		  else if (dm.denngayvalue.value==''){
			alert('<%=_res("ccn.alert.denngaynull")%>');
			dm.denngayvalue.focus();
		  }
		  
		   else if(checkDate(dm.denngayvalue, true)!='TRUE'){
		  	alert('<%=_res("ccn.alert.denngaycheck")%>');
			dm.denngayvalue.focus();
		  }
		  
		  else if (compareDate(dm.tungayvalue.value,dm.denngayvalue.value)==1){
			alert('<%=_res("ccn.alert.compare")%>');
			dm.denngayvalue.focus();
		  }
		 
		  else{
			dm.submit();
		  }
	 }
 </script>