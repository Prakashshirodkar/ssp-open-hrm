<%
	String	strSqlTtpn = ("select distinct * from web_dsnv_duocuyquyen");
	java.sql.Connection conn2 = null;
	int check = 0;
	try{
		conn2 = dbConnManager.getConnection("topmostread");	
		java.sql.PreparedStatement st=conn2.prepareStatement(strSqlTtpn);
		ResultSet rs = st.executeQuery();
		while(rs.next()){
			if(rs.getString(1).equals(username))
				check = 1;
		}
		rs.close();
		st.close();
		}catch(Exception e){
		}finally{
			dbConnManager.freeConnection("topmostread", conn2);
		}
%>

								
							<table border="0" width="165" cellspacing="0" cellpadding="0" bgcolor="#E8F5F7">
								<tr>
									<td align="center">
										<table border="0" width="90%" cellspacing="0" cellpadding="0" bgcolor="#E8F5F7">
											<tr>
												<td height="28" style="border-bottom: 1px dotted #000000" valign="bottom" class="des">
													<img border="0" src="<%=contextPath%>/img/bullet.gif" width="7" height="7">
													<b><font color="#007D93"><a href="<%=contextPath%>/user/phepnamfrm.jsp"><span style="text-decoration: none"><font color="#007D93"><%=_res("lpn.xemphepnam")%></font></span></a></b></td>
											</tr>
											<tr>
												<td height="28" style="border-bottom: 1px dotted #000000" valign="bottom" class="des">
													<img border="0" src="<%=contextPath%>/img/bullet.gif" width="7" height="7">
													<b><a href="<%=contextPath%>/user/dangkyphepfrm.jsp"><span style="text-decoration: none"><font color="#007D93"><%=_res("lpn.dangkyphep")%></font></span></a></b></td>
											</tr>
                                            <%if(check == 1){%>
                                            <tr>
												<td height="28" style="border-bottom: 1px dotted #000000" valign="bottom" class="des">
													<img border="0" src="<%=contextPath%>/img/bullet.gif" width="7" height="7">
													<b><a href="<%=contextPath%>/user/duyetphepfrm.jsp"><span style="text-decoration: none"><font color="#007D93"><%=_res("dp.title")%></font></span></a></b></td>
											</tr>
                                            <tr>
												<td height="28" style="border-bottom: 1px dotted #000000" valign="bottom" class="des">
													<img border="0" src="<%=contextPath%>/img/bullet.gif" width="7" height="7">
													<b><a href="<%=contextPath%>/user/uyquyenduyetphepfrm.jsp"><span style="text-decoration: none"><font color="#007D93"><%=_res("uqdp.title")%></font></span></a></b></td>
											</tr>
                                            <%}%>
										</table>
									</td>
								</tr>
								<tr>
										<td height="25">
										</td>
									</tr>
							</table>
							