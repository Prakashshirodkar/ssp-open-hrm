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
	String ma_ngoaingu = (request.getParameter("ma_ngoaingu") != null) ? request.getParameter("ma_ngoaingu") : "";
	String ma_trinhdonn = (request.getParameter("ma_trinhdonn") != null) ? request.getParameter("ma_trinhdonn") : "";
	String strSqlUpdateTdnn = "EXECUTE PROCEDURE WEB_XEM_TD_NGOAINGU_CHITIET('"+username+"','"+ma_ngoaingu+"','"+ma_trinhdonn+"')";
	java.sql.Connection conn = null;
	try{
	    conn = dbConnManager.getConnection("topmostread");
		java.sql.PreparedStatement st=conn.prepareStatement(strSqlUpdateTdnn);
		ResultSet rs = st.executeQuery();
		
%>			
		<table class="tablecontent" align="center">	
				<tr>
					<td><div id="headercontent" class="title"><%=_res("udtdnl.title")%></div></td>
				</tr>
				
				<tr>
					<td>		
						<table align="center" width="790" cellpadding=6 cellspacing=1 style="border:1px solid #CCCCCC;">
							<tr>
								<td colspan="6" class="title1" bgcolor="#007D93">&nbsp;<%=_res("tdnl.ngoaingu")%></td>				
							</tr>
							<form name="frmUpdateTdnn" action="<%=contextPath%>/user/UpdateController.do" method="post">
								<input type="hidden" name="state" value="updatetdnn">
								<input type="hidden" name="manv" value="<%=username%>">
								<input type="hidden" name="ma_ngoaingu" value="<%=ma_ngoaingu%>">
								<input type="hidden" name="ma_trinhdonn" value="<%=ma_trinhdonn%>">
							<%	if(rs.next()){%>
							<tr>
								<td width="126" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.tenngoaingu")%></td>
								<td width="266" bgcolor="#FFF7E7" class="value">
									<%=rs.getString(1)%>
								</td>
								<td width="0" bgcolor="#CCCCCC">
								</td>
								<td width="294" bgcolor="#FFF7E7" class="value">
								</td>
								<td width="36" bgcolor="#FFF7E7" class="value">
									
								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.trinhdo")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%=rs.getString(2)%>	
															</td>
								<td bgcolor="#CCCCCC"></td>
								<td width="294" bgcolor="#FFF7E7" class="value">
									
								</td>
								<td width="36" bgcolor="#FFF7E7" class="value">
									
								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.ngaycap")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate(3) != null){%><%=SString.toString(rs.getDate(3),"dd/MM/yyyy")%><%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input name="ngaycaptdnn" <%if(rs.getDate(3)!= null){%>value="<%=SString.toString(rs.getDate(3),"dd/MM/yyyy")%>"<%} else {%> value=""<%}%> size=6 class="textbox">
										<img onclick="return showCalendar('btngaycaptdnn','ngaycaptdnn', '%d/%m/%Y', false);" align="absmiddle" id="btngaycaptdnn" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='ngaycap'>
								</td>
								<td width="36" bgcolor="#FFF7E7" class="value">
									
								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.noicap")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(4)==null || rs.getString(4).equals("null")){%>
									<%} else {%><%=rs.getString(4)%><%}%>
															</td>
								<td bgcolor="#CCCCCC"></td>
								<td width="294" bgcolor="#FFF7E7" class="value">
									<input name="noicaptrinhdonn" <%if(rs.getString(4)==null || rs.getString(4).equals("null")){%>value=""<%} else {%> value="<%=rs.getString(4)%>" <%}%>/>
								</td>
								<td width="36" bgcolor="#FFF7E7" class="value">
									
								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.thanhtich")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(5)==null || rs.getString(5).equals("null")){%>
									<%} else {%><%=rs.getString(5)%><%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value" align="left">
									<input name="thanhtichtrinhdonn" <%if(rs.getString(5)==null || rs.getString(5).equals("null")){%>value=""<%} else {%> value="<%=rs.getString(5)%>" <%}%> />
								</td>
							 	<td bgcolor="#FFF7E7" class="value">
								
								</td>
							</tr>
							<%}
							rs.close();
							st.close();
							%>
							<tr><td bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des" colspan="5">
									<input name="update"  type="button"  value="<%=_res("udtdnl.submit")%>" Onclick="javascript:funcPostData()">
								</td>
							</tr>
							</form>
						</table>					
					</td>
				</tr>	
			</table>		
<%
	
	}catch(IOException ex ){
	      //e.printStackTrace();
	      //out.println(e.getMessage());
	}finally{
		dbConnManager.freeConnection("topmostread", conn);
	}
%>

<script language="javascript1.1">
	function funcPostData(){
		var dm = document.frmUpdateTdnn;
		if(dm.noicaptrinhdonn.value!='' && dm.noicaptrinhdonn.value.length>42){
		 	alert('<%=_res("udtdnl.alert.lengthnoicaptrinhdo")%>')
			dm.noicaptrinhdonn.focus();
		 }
		 else if(dm.thanhtichtrinhdonn.value!='' && dm.thanhtichtrinhdonn.value.length>42){
		 	alert('<%=_res("udtdnl.alert.lengththanhtich")%>')
			dm.thanhtichtrinhdonn.focus();
		 }
		 else if(dm.ngaycaptdnn.value!=""){
			if (checkDate(dm.ngaycaptdnn, true)!='TRUE'){
				alert('<%=_res("udtdnl.alert.checkdatetdkn")%>');
				dm.ngaycaptdnn.focus();
			}
			else{
				dm.submit();
			}
		}
		else{
			dm.submit();
		}			  
	}
</script>