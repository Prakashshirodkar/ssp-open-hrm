<%@ include file="../standard.jsp" %>
<%@ include file="../dbconnect.jsp" %>
<%@ include file="resource.inc"%>
<%@ include file="redirect_user.jsp" %>

<%
	String report_id = request.getParameter("report_id");
	String strSqlReportName = "select report_name, sqlselect from web_danhsach_baocao ('"+username+"','"+language+"') where reportid ='"+report_id+"'";
	String reportname = "";
	String sqlreport = "";
	String strSqlControl = "select * from web_report_params('"+report_id+"','"+language+"') order by param_index asc";									
	java.sql.Connection conn = null;
	String nam = SString.toString(new java.util.Date(), "yyyy");
	String thang = SString.toString(new java.util.Date(),"M");
	int i = 0;
	try{
	    conn = dbConnManager.getConnection("topmostread");
		conn.setAutoCommit(false);
		java.sql.PreparedStatement st=conn.prepareStatement(strSqlReportName);
		ResultSet rs = st.executeQuery();
		if(rs.next()){
			reportname = rs.getString(1);
			sqlreport = rs.getString(2);
		}
		//System.out.print(sqlreport);
		/*rs = st.executeQuery(strSqlControl);
		while(rs.next()){
			String rs.getString(3) = request.getParameter(""+rs.getString(3)+"");
			System.out.println(rs.getString(3));
		}*/
		rs = st.executeQuery(strSqlControl);
%>	
	<table class="tablecontent" align="center">
		<tr>
			<td><div id="headercontent" class="title"><%=reportname%> <img align="absmiddle" id="imgcontrol" onclick="javascript:showDivControl()" onmouseover="javascript:showIconOnMouseOver()" onmouseout="javascript:showIconOnMouseOut()" border="0" src="<%=contextPath%>/img/up1.png"/></div></td>
		</tr>
		<form name="frmView" action="<%=contextPath%>/user/i_viewbaocao.jsp" method="post">
		<tr valign="top">
			<td valign="top">
				<div id="divcontrollist" style="display:block;">
				<table align="center" width="790" border="0" cellspacing="1" cellpadding="2" style="border:1px solid #CCCCCC;">
					<%
						String listParam = "";
						while(rs.next()){
							i++;
							listParam = listParam + rs.getString(3) + "<!*-*!>";
					%>
					<tr>
						<td width="180" class="des" align="left" bgcolor="#f8f8f8">	
							&nbsp;&nbsp;<%=rs.getString(5)%>
							
						</td>
						<td class="value" align="left" bgcolor="#FFF7E7" >
							<%if(rs.getInt(6)==0){%>
								<input type="text" name="<%=rs.getString(3)%>" id="<%=rs.getString(3)%>" readonly="true" class="value" size=7 value="<%=SString.toString(new java.util.Date(), "dd/MM/yyyy")%>" />
                  				<img onclick="return showCalendar('bt<%=rs.getString(3)%>','<%=rs.getString(3)%>', '%d/%m/%Y', false);" align="absmiddle" id="bt<%=rs.getString(3)%>" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("cct.ngay")%>'>
							<%} else if(rs.getInt(6)==1){%>
								<input type="checkbox" class="value" checked name="<%=rs.getString(3)%>" />
							<%} else if(rs.getInt(6)==2){
									//String checknam = rs.getString(5).replaceAll(_res("bc.nam"),"check");
									//checknam = checknam.replaceAll(_res("bc.nam1"),"check");
									//System.out.println("check: "+ checknam);
							%>
								<div id="div<%=rs.getString(3)%>">
								<input type="text" class="value" name="<%=rs.getString(3)%>" readonly="true" id="<%=rs.getString(3)%>" size=6 <%if(rs.getString(12).toUpperCase().equals("CURRENT_YEAR")){%>value="<%=nam%>"<%} else {%> value="<%=thang%>" <%}%> >
								<a style="text-decoration:none;" href="javascript:functUpValue('div<%=rs.getString(3)%>','<%=rs.getString(3)%>')">
								<img border="0" src="<%=contextPath%>/img/up.gif" /></a>
								<a style="text-decoration:none;" href="javascript:functDownValue('div<%=rs.getString(3)%>','<%=rs.getString(3)%>')">
								<img border="0" src="<%=contextPath%>/img/down.gif" /></a>
								</div>
							<%} else if(rs.getInt(6)==4){if(rs.getString(8)==null || rs.getString(8).equals("null")){%>
								<input type="text" name="<%=rs.getString(3)%>" value="0" class="value" size="<%=rs.getInt(14)%>px"/>
							<%} else {
								int lookup_id = rs.getInt(8);
								String strSqlGetSQLlookup = "select SQLSELECT from SYS_REPORT_LIST where reportid = '"+lookup_id+"'";
								java.sql.Statement st1=conn.createStatement();
								ResultSet rs1=st1.executeQuery(strSqlGetSQLlookup);
								rs1.next();
								String strSqlListlookup = rs1.getString(1);
								String strSqlListlookuptemp = strSqlListlookup.replaceAll(":username","'sspadmin'");
								strSqlListlookuptemp = strSqlListlookuptemp.replaceAll(":xem_theo_nam","'"+SString.toString(new java.util.Date(), "yyyy")+"'");
								int check = 0;
								if(!strSqlListlookup.equals(strSqlListlookuptemp)){
									rs1 = st1.executeQuery(strSqlListlookuptemp);
									check = 1;
								}
								else{
									rs1 = st1.executeQuery(strSqlListlookup);
									check = 0;
								}
							%>
								<select name="<%=rs.getString(3)%>" class="value">
									<option value="null"><%=_res("bc.all")%></option>
							<%
								while(rs1.next()){
									if(check == 1){
							%>
									<option value="<%=rs1.getString(1)%>"><%=rs1.getString(3)%></option>
							<%} else {%>
									<option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%></option>
							<%}
								//sqlreport = sqlreport.replaceAll(":"+rs.getString(3)+"", );
							}rs1.close();st1.close();%>
						  		</select>
							<%}}%>
						</td>
					</tr>
					<tr><td height="1" bgcolor="#CCCCCC" colspan="2"></td></tr>
					<%}rs.close(); st.close();conn.commit();%>
					<tr>
						<td colspan="2" class="des" align="left" bgcolor="#f8f8f8">
							<input type="button" name="button" value="<%=_res("cct.submit")%>" onclick="javascript:funcViewBaocao('<%=report_id%>','<%=listParam%>');" />
						</td>
					</tr>
				</table>
				</div>
			</td>
		</tr>
		<input type="hidden" name="report_id" value="<%=report_id%>" />
		<input type="hidden" name="listParam" value="<%=listParam%>" />
		</form>
	</table>
	
<%
	}catch(Exception e){
	      e.printStackTrace();
	      System.out.println(e.getMessage());
	}finally{
		if(conn != null)
			conn.setAutoCommit(true);
		dbConnManager.freeConnection("topmostread", conn);
	}
%>

