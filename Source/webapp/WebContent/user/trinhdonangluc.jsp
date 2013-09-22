<%
	//String strSqlTtcn = ("select HO_NHANVIEN, TENDEM_NHANVIEN, TEN_NHANVIEN from WEB_XEM_THONGTIN_NHANVIEN('"+username+"')");
	java.sql.Connection conn = null;
	int rowcount = 0;
	try{
	    conn = dbConnManager.getConnection("topmostread");	
		//java.sql.PreparedStatement st=conn.prepareStatement(strSqlTtcn);
		//ResultSet rs = st.executeQuery();
%>	

<%@page import="java.util.ArrayList"%>
			<table class="tablecontent" align="center">	
				
				<tr>
					<td><div id="headercontent" class="title"><%=_res("tdnl.trinhdonangluc")%></div></td>
				</tr>
				<%
					String strSqlTdhvc = ("select * from WEB_XEM_TRINHDO_HOCVAN('"+username+"')");
					//java.sql.Statement sttdhvc=conn.createStatement();
					java.sql.PreparedStatement st=conn.prepareStatement(strSqlTdhvc);
					ResultSet rs = st.executeQuery();
					//rs = st.executeQuery(strSqlTdhvc);
					if(rs.next()){
				%>
				<tr>
					<td>
						<table align="center" width="790" cellpadding=6 cellspacing=1 style="border:1px solid #CCCCCC;">
							<tr>
								<td colspan="4" class="title1" bgcolor="#007D93">&nbsp;<%=_res("tdnl.hocvanchung")%></td>
							</tr>
							<tr>
								<td width="18%" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.vanhoa")%></td>
								<td width="29%" bgcolor="#FFF7E7" class="value">
									<%
										String tdvh = rs.getString(4);
										if(tdvh==null || tdvh.equals("null")){%>
											
										<%}else {%><%=tdvh%>		
									<%}%>
							  </td>
								<td width="17%" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.nghenghiep")%></td>
								<td width="36%" bgcolor="#FFF7E7" class="value">
								<%
									String nn = rs.getString(6);
									if(nn == null || nn.equals("null")){%>
										
									<%} else {%><%=rs.getString(7)%>
								<%}%>	
								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.hocvan")%></td>
								<td bgcolor="#FFF7E7" class="value">
								<%
									String tdhv = rs.getString(1);
									if(tdhv==null || tdhv.equals("null")){%>
											
									<%} else {%> <%=rs.getString(2)%>	
								<%}%>	
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.namtotnghiep")%></td>
								<td bgcolor="#FFF7E7" class="value"><%=rs.getInt(8) %>
								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.sotruong")%></td>
							  	<td bgcolor="#FFF7E7" class="value">
								<%
									String stct = rs.getString(5);
									if(stct==null || stct.equals("null")){%> 
									<%} else {%><%=rs.getString(5) %> <%}%>	
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.launhat")%></td>
							  	<td bgcolor="#FFF7E7" class="value">
								<%
									String cvln = rs.getString(9);
									if(cvln==null || cvln.equals("null")){%>
										 <%} 
									else {%><%=rs.getString(9)%>  
								<%}%>	
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<%}%>
				<tr>
					<td>
						<table width="790" align="center" border="0" cellspacing="1" cellpadding="2" bgcolor="#007D93">
							<tr>
								<td colspan="5" align="left" class="title1" bgcolor="#007D93">&nbsp;<%=_res("tdnl.ngoaingu")%></td>
							</tr>
							<tr>
								<td width="17%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.tenngoaingu")%></td>								
								<td width="14%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.trinhdo")%></td>
								<td width="16%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.ngaycap")%></td>
								<td width="38%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.noicap")%></td>
								<td width="15%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.thanhtich")%></td>
							</tr>
						<%
							String strSqlTdnn = ("select * from WEB_XEM_TRINHDO_NGOAINGU('"+username+"')");
							//java.sql.Statement sttdnn=conn.createStatement();
							rs = st.executeQuery(strSqlTdnn);
							int i = 0;
							while(rs.next()){
								i ++;
							}

							if(i !=0){
								rs = st.executeQuery(strSqlTdnn);
								//System.out.print("resultset sdfsdfdsf:" + resulttdnn);
								while (rs.next()){
						%>
							<tr>
								<td bgcolor="#FFF7E7" class="value"><%=rs.getString(2)%></td>
								<td bgcolor="#FFF7E7" class="value"><%=rs.getString(4)%></td>
								<td bgcolor="#FFF7E7" class="value">
								<%if(rs.getDate(5)!=null){%><%=SString.toString(rs.getDate(5),"dd/MM/yyyy")%>
								<%} else {%><%}%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(6)==null || rs.getString(6).equals("null")){%>
										 <%} else {%><%=rs.getString(6)%><%}%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(7)==null || rs.getString(7).equals("null")){%>
										 <%} else {%><%=rs.getString(7)%><%}%></td>
							</tr>	
							<%}} else {%>
							<tr>
								<td bgcolor="#FFF7E7" class="value">&nbsp;</td>
								<td bgcolor="#FFF7E7" class="value"></td>
								<td bgcolor="#FFF7E7" class="value">
								</td>
								<td bgcolor="#FFF7E7" class="value">
									</td>
								<td bgcolor="#FFF7E7" class="value">
									</td>
							</tr>	
							<%}%>			
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table width="790" align="center" border="0" cellspacing="1" cellpadding="2" bgcolor="#007D93">
							<tr>
								<td colspan="5" align="left" class="title1" bgcolor="#007D93">&nbsp;<%=_res("tdnl.kynang")%></td>
							</tr>
							<tr>
								<td width="17%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.tenkynang")%></td>								
								<td width="14%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.trinhdo")%></td>
								<td width="16%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.ngaycap")%></td>
								<td width="38%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.noicap")%></td>
								<td width="15%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.thanhtich")%></td>
							</tr>
						<%
							String strSqlTdkn = ("select * from WEB_XEM_TRINHDO_KYNANG('"+username+"')");
							//java.sql.Statement sttdkn=conn.createStatement();
							rs = st.executeQuery(strSqlTdkn);
							int j = 0;
							while(rs.next()){
								j++;
							}
							if(j!=0){
								rs = st.executeQuery(strSqlTdkn);
								while (rs.next()){
						%>
							<tr>
								<td bgcolor="#FFF7E7" class="value"><%=rs.getString(2) %></td>
								<td bgcolor="#FFF7E7" class="value"><%=rs.getString(4) %></td>
								<td bgcolor="#FFF7E7" class="value">
								<%if(rs.getDate(5)!=null){%><%=SString.toString(rs.getDate(5),"dd/MM/yyyy")%>
								<%} else {%><%}%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(6)==null || rs.getString(6).equals("null")){%>
										 <%} else {%><%=rs.getString(6)%><%}%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(7)==null || rs.getString(7).equals("null")){%>
										 <%} else {%><%=rs.getString(7)%><%}%></td>
							</tr>
							<%}} else {%>
							<tr>
								<td bgcolor="#FFF7E7" class="value">&nbsp;</td>
								<td bgcolor="#FFF7E7" class="value"></td>
								<td bgcolor="#FFF7E7" class="value">
								</td>
								<td bgcolor="#FFF7E7" class="value">
									</td>
								<td bgcolor="#FFF7E7" class="value">
									</td>
							</tr>
							<%}%>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table width="790" align="center" border="0" cellspacing="1" cellpadding="2" bgcolor="#007D93">
							<tr>
								<td colspan="5" align="left" class="title1" bgcolor="#007D93" ><%=_res("tdnl.chuyenmonkhac")%></td>
							</tr>
							<tr>
								<td width="17%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.tenchuyenmon")%></td>								
								<td width="14%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.trinhdo")%></td>
								<td width="16%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.ngaycap")%></td>
								<td width="38%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.noicap")%></td>
								<td width="15%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.thanhtich")%></td>
							</tr>
						<%
							String strSqlCmk = ("select * from WEB_XEM_CHUYENMON_KHAC('"+username+"')");
							//java.sql.Statement sttcmk=conn.createStatement();
							rs = st.executeQuery(strSqlCmk);
							int k = 0;
							while(rs.next()){
								k++;
							}
							if(j!=0){
								rs = st.executeQuery(strSqlCmk);
								while (rs.next()){
						%>
							<tr>
								<td bgcolor="#FFF7E7" class="value"><%=rs.getString(2) %></td>
								<td bgcolor="#FFF7E7" class="value"><%=rs.getString(4) %></td>
								<td bgcolor="#FFF7E7" class="value">
								<%if(rs.getDate(5)!=null){%><%=SString.toString(rs.getDate(5),"dd/MM/yyyy")%>
								<%} else {%><%}%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(6)==null || rs.getString(6).equals("null")){%>
										 <%} else {%><%=rs.getString(6)%><%}%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(7)==null || rs.getString(7).equals("null")){%>
										 <%} else {%><%=rs.getString(7)%><%}%></td>
							</tr>
							<%} rs.close();
								st.close();
								} else {
							%>
							<tr>
								<td bgcolor="#FFF7E7" class="value">&nbsp;</td>
								<td bgcolor="#FFF7E7" class="value"></td>
								<td bgcolor="#FFF7E7" class="value">
								</td>
								<td bgcolor="#FFF7E7" class="value">
									</td>
								<td bgcolor="#FFF7E7" class="value">
									</td>
							</tr>
							<%}%>
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
