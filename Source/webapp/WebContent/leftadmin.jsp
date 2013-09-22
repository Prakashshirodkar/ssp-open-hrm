<%
	System.out.println(language);
	String strSqlReportCha = "SELECT reportid, report_name FROM web_danhsach_baocao ('"+username+"','"+language+"') where preportid is null and (INVISIBLE <> 1) order by preportid asc, display_index asc";
	String strSqlReport = "";
	java.sql.Connection conn = null;
	
	try{
	    conn = dbConnManager.getConnection("topmostread");
		conn.setAutoCommit(false);	
		java.sql.PreparedStatement st=conn.prepareStatement(strSqlReportCha);
		ResultSet rs = st.executeQuery();
		
%>
						
<table align="center" border="0" width="165" cellpadding=6 cellspacing=1 bgcolor="#f8f8f8" height="215px">
	<tr>
		<td>
			<div style="width:160px; height:350px; overflow:auto;">
			<table width="450" border="0" cellspacing="0" cellpadding="0">
				<%while(rs.next()){%>
				<tr>
					<td class="des" style="font-weight:bold;"><%=rs.getString(2)%></td>
				</tr>
				<%
					strSqlReport = "SELECT reportid, report_name FROM web_danhsach_baocao ('"+username+"','"+language+"') where preportid = '"+rs.getInt(1)+"' and (INVISIBLE <> 1) order by preportid asc, display_index asc";
					java.sql.Statement sttemp=conn.createStatement();
					ResultSet rstemp=sttemp.executeQuery(strSqlReport);;
					//rs=st.executeQuery(strSqlReport);
				while(rstemp.next()){%>
				<tr>
					<td class="desbc" align="left">&nbsp;&nbsp;
						<a style="text-decoration:none; font-family:Arial, Helvetica, sans-serif; font-size:11; color:#003399;" href="javascript:showHidedivlistreport('div<%=rstemp.getInt(1)%>','<%=rstemp.getInt(1)%>','img<%=rstemp.getInt(1)%>','tempimg<%=rstemp.getInt(1)%>')">
							<img align="absmiddle" id="tempimg<%=rstemp.getInt(1)%>" border="0" src="<%=contextPath%>/img/them3.gif" />
							<img align="absmiddle" id="img<%=rstemp.getInt(1)%>" border="0" src="<%=contextPath%>/img/them.gif" />
						<%=rstemp.getString(2)%></a>
					</td>
				</tr>
				<tr>
					<td class="desbc">
						<div style="display:none;" id="div<%=rstemp.getInt(1)%>">
						</div>
					</td>
				</tr>
			<%}rstemp.close();sttemp.close();}conn.commit();
				strSqlReport = "SELECT reportid, report_name FROM web_danhsach_baocao ('"+username+"','"+language+"') where preportid='-1' order by preportid asc, display_index asc"; 
				rs = st.executeQuery(strSqlReport);
				while(rs.next()){
			%>
				<tr>
					<td>
						<img align="absmiddle" src="<%=contextPath%>/img/fileupload.gif" />
						<a style="border:1; text-decoration:none; font-family:Arial, Helvetica, sans-serif; font-size:11; color:#003399;" href="javascript:showHidedivcontrol('divcontrol','<%=rs.getInt(1)%>')"><%=rs.getString(2)%></a>
					</td>
				</tr>
			<%}rs.close(); st.close();%>
			</table>
			</div>
		</td>
	</tr>
	</tr>					
</table>
<%
	}catch(Exception e){
	      //e.printStackTrace();
	      //out.println(e.getMessage());
	}finally{
		if(conn != null)
			conn.setAutoCommit(true);
		dbConnManager.freeConnection("topmostread", conn);
	}
%>
