<%@ include file="../standard.jsp" %>
<%@ include file="../dbconnect.jsp" %>
<%@ include file="resource.inc"%>
<%@ include file="redirect_user.jsp" %>

<%
	String report_id = request.getParameter("report_id");
	String strSqlListReportControl = "SELECT reportid, report_name FROM web_danhsach_baocao ('"+username+"','"+language+"') where preportid = '"+report_id+"' and (INVISIBLE <> 1) order by preportid asc, display_index asc";
	//"SELECT * FROM SYS_REPORT_LIST where preportid = '"+report_id+"' and (INVISIBLE <> 1) order by preportid asc, display_index asc";
	//System.out.println(strSqlListReportControl);									
	java.sql.Connection conn = null;
	try{
	    conn = dbConnManager.getConnection("topmostread");
		java.sql.PreparedStatement st=conn.prepareStatement(strSqlListReportControl);
		ResultSet rs = st.executeQuery();
		int max = 0;
		while(rs.next()){
			max = rs.getInt(1);
		}
		rs = st.executeQuery(strSqlListReportControl);
%>	
<table border="0" cellspacing="0" cellpadding="0">
	<%while(rs.next()){%>
	<tr>
		<td>&nbsp;
			<img align="absmiddle" src="<%=contextPath%>/img/verticalLine.gif" />
			<%if(max==rs.getInt(1)){%>
			<img align="absmiddle" src="<%=contextPath%>/img/noChildrenLastNode.gif" />
			<%} else {%>
			<img align="absmiddle" src="<%=contextPath%>/img/noChildrenMidNode.gif" />
			<%}%>
			<img align="absmiddle" src="<%=contextPath%>/img/fileupload.gif" />
			<a style="border:1; text-decoration:none; font-family:Arial, Helvetica, sans-serif; font-size:11; color:#003399;" href="javascript:showHidedivcontrol('divcontrol','<%=rs.getInt(1)%>')">
				<%=rs.getString(2)%></a>
		</td>
	</tr>
	<%}rs.close(); st.close();%>
</table>
<%
	}catch(Exception e){
	      e.printStackTrace();
	      System.out.println(e.getMessage());
	}finally{
		dbConnManager.freeConnection("topmostread", conn);
	}
%>

