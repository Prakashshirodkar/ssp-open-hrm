			<%
			java.sql.Connection conn = null;
				String tintucid = (request.getParameter("tintucid") != null) ? request.getParameter("tintucid") : "";
				//System.out.println("tin tuc id=" + tintucid);
				String stSqlNews = ("select * from hr_web_tintuc where hr_web_tintuc.tin_id = "+tintucid+"");
				try{
					conn = dbConnManager.getConnection("topmostread");	
					//java.sql.Statement st=conn.createStatement();
					java.sql.PreparedStatement st=conn.prepareStatement(stSqlNews);
					//ResultSet rsnews = st.executeQuery(sqlnews);
					ResultSet rs = st.executeQuery();
					String noidung = "";
				%>

	<table class="tablecontent" align="center">
		<tr>
			<td>
			<table border="0" width="100%" cellspacing="0" cellpadding="0">
				<tr>				
					<td><div id="headercontent" class="title"><%=_res("new.viewtitle")%></div></td>					
				</tr>
			</table>
			<table width="96%" align="center" border="0" cellspacing="1" cellpadding="2">
				<%
					String dateNgaydang="";
					String dateGiodang="";
					if(rs.next()){
						dateNgaydang=SString.toString(rs.getDate(5),"MM/dd/yyyy");
						dateGiodang=rs.getString(8);
					if(rs.getBlob(4)==null || rs.getBlob(4).equals("null")){
						noidung = "";
					}
					else {
						byte[] b = rs.getBlob(4).getBytes(1, (int)rs.getBlob(4).length());
						noidung = new String(b);
					}
				%>
				<tr >
					<td colspan="2" class="style2"><%=rs.getString(2)%> </td>
				</tr>
				<tr>
					<td colspan="2" class="value">
						<%if(rs.getString(7) == null || rs.getString(7).equals("null")){%><%} else {%><%=rs.getString(7)%> <%}%>
					</td>
				</tr>
				<tr>
					<td class="style4"><%=_res("new.ngaydang")%><%=SString.toString(rs.getDate(5),"dd/MM/yyyy")%></td>
					<td class="style4" align="right"> <%=_res("new.nguoidang")%>
						<%if(rs.getString(6)==null || rs.getString(6).equals("null")){%><%} else {%><strong><%=rs.getString(6)%></strong><%}%> 
					</td>
				</tr>
				<%}%>
				<tr><td colspan="2">&nbsp;</td></tr>
			</table>
			<table width="100%" align="center" border="0" cellspacing="1" cellpadding="2">
				<tr>
					<td colspan="2" bgcolor="#007D93" class="style3"><%=_res("new.title3")%></td>
				</tr>
				<tr>
					<td>
					<%
						//String strSqlNews10 = ("select first 10 * from hr_web_tintuc order by hr_web_tintuc.tin_ngaydang desc");
						String strSqlNews10="select first 10 * from hr_web_tintuc where (hr_web_tintuc.tin_ngaydang<'"+dateNgaydang+"' or (hr_web_tintuc.tin_ngaydang='"+dateNgaydang+"' and hr_web_tintuc.tin_giodang<'"+dateGiodang+"')) order by hr_web_tintuc.tin_ngaydang desc, hr_web_tintuc.tin_giodang desc";
						//ResultSet rsnews10 = st.executeQuery(sqlnews10);
						//System.out.println(strSqlNews10);
						rs = st.executeQuery(strSqlNews10);
						while(rs.next()){%>
						<li style="margin-left:15px;"><a class="links" href="<%=contextPath%>/user/viewtintucfrm.jsp?tintucid=<%=rs.getString(1)%>"><%=rs.getString(2)%> (<%=SString.toString(rs.getDate(5),"dd/MM")%>)</a></li>
					<%} rs.close(); st.close();%>
					</td>
				</tr>
			</table>
	<%
	}catch(Exception e){e.printStackTrace();
	      out.println(e.getMessage());
	}finally{
		dbConnManager.freeConnection("topmostread", conn);
	}
%>

			</td>
		</tr>
	</table>

