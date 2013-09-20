
			<%
					java.sql.Connection conn = null;
			       	//String sqlnews = ("select first 1 * from hr_web_tintuc order by hr_web_tintuc.tin_ngaydang desc");
					String stSqlNews = ("select first ? skip ? * from hr_web_tintuc order by hr_web_tintuc.tin_ngaydang desc, hr_web_tintuc.tin_giodang desc");
					int record = 1; // Tong so Record
					int currentRecord; // So thu tu cua Record
					int cPage; // Tong so Page
					int currentPage; // So Page hien tai
					int sizePage = 10; // So Record se hien thi trong 1 Page	
					String pageID; // Link cua trang
				
					try{
						 conn = dbConnManager.getConnection("topmostread");	
						//java.sql.Statement st=conn.createStatement();
						java.sql.PreparedStatement st=conn.prepareStatement(stSqlNews,ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
						st.setInt(1,1);
						st.setInt(2,0);
						//ResultSet rsnews = st.executeQuery(sqlnews);
						ResultSet rs = st.executeQuery();
						String noidung = "";
				%>
							<table class="tablecontent" align="center">
								<tr>
									<td colspan="2">
										<div id="headercontent" class="title"><%=_res("new.title")%></div>
									</td>
								<tr>
									<td colspan="2" class="title1">&nbsp;<%=_res("new.title1")%>  </td>
								</tr>
								<tr>
									<td colspan="2">
									<table width="96%" align="center" border="0" cellspacing="1" cellpadding="2">
										<tr><td colspan="2">&nbsp;</td></tr>
										<%
											//while(rsnews.next()){
												if (rs.next()){
												if(rs.getBlob(4)==null || rs.getBlob(4).equals("null")){
													noidung = "";
												}
												else {
													byte[] b = rs.getBlob(4).getBytes(1, (int)rs.getBlob(4).length());
													noidung = new String(b);
												}
										%>
										<tr>
											<td colspan="2" class="style2"><%=rs.getString(2)%></td>
										</tr>
										<tr><td colspan="2">&nbsp;</td></tr>
										<tr>
											<td colspan="2" class="value">
												<%if(rs.getString(7) == null || rs.getString(7).equals("null")){%><%} else {%><%=rs.getString(7)%> <%}%>
											</td>
										</tr>
										<tr><td colspan="2">&nbsp;</td></tr>
										<tr>
											<td class="style4"><%=_res("new.ngaydang")%><%=SString.toString(rs.getDate(5),"dd/MM/yyyy")%></td>
											<td align="right" class="style4"><%=_res("new.nguoidang")%>
												<%if(rs.getString(6)==null || rs.getString(6).equals("null")){%><%} else {%><strong><%=rs.getString(6)%></strong><%}%>
											</td>
										</tr>
									</table>
									</td>
								</tr>
								<%}%>
								<tr><td colspan="2">&nbsp;</td></tr>
								<tr>
									<td height="25" colspan="2" bgcolor="#007D93" class="title1">&nbsp;<%=_res("new.title2")%></td>
								</tr>
								<tr>
									<td>
									<table width="96%" align="center" border="0" cellspacing="1" cellpadding="2">
										<%
											st.setInt(1,5);
											st.setInt(2,1);
											rs=st.executeQuery();
											int i = 1;
											while(rs.next()){
										%>
										<tr <%if(i%2==0){%>bgcolor="#EEEEEE"<%}else{%>bgcolor="#FFFFFF"<%}%>>
											<td colspan="2"><a class="links" href="<%=contextPath%>/user/viewtintucfrm.jsp?tintucid=<%=rs.getString(1)%>"><%=rs.getString(2)%></a></td>
										</tr>	
										<tr <%if(i%2==0){%>bgcolor="#EEEEEE"<%}else{%>bgcolor="#FFFFFF"<%}%>>
											<td colspan="2" class="value">
												<%if(rs.getString(3)==null || rs.getString(3).equals("null")){%><%} else {%><%=rs.getString(3)%><%}%>
											</td>
										</tr>
										<tr <%if(i%2==0){%>bgcolor="#EEEEEE"<%}else{%>bgcolor="#FFFFFF"<%}%>>
											<td class="style4" colspan="2"><%=_res("new.ngaydang")%><%=SString.toString(rs.getDate(5),"dd/MM/yyyy")%></td>
										</tr>
										<tr><td colspan="2">&nbsp;</td></tr>
										<%i++;%>
										<%}%>
									</table
									></td>
								</tr>
								<tr>
									<td height="25" colspan="2" bgcolor="#007D93" class="title1">&nbsp;<%=_res("new.title3")%></td>
								</tr>
								
								<tr><td>
								<%
									String sqlnewsall = ("select skip 6 * from hr_web_tintuc order by hr_web_tintuc.tin_ngaydang desc, hr_web_tintuc.tin_giodang desc");
									rs = st.executeQuery(sqlnewsall);
									while(rs.next()){
										record++;
									}
									cPage = (record/sizePage) + (record%sizePage==0?0:1);
									int cpage;
									int currentRs;
									pageID = request.getParameter("pageID");
									currentPage = (pageID==null) ? 1 : Integer.parseInt((String)pageID);
									rs = st.executeQuery(sqlnewsall);
									if(currentPage!=1) {
										currentRecord = sizePage*(currentPage-1);
										currentRecord = currentRecord==0 ? 1 : currentRecord;
										rs.absolute(currentRecord);
									}
									while(rs.next()){
									if(rs.getRow() <= sizePage*currentPage) {
								%>
									<li style="margin-left:15px;"><a class="links" href="<%=contextPath%>/user/viewtintucfrm.jsp?tintucid=<%=rs.getString(1)%>"><%=rs.getString(2)%> (<%=SString.toString(rs.getDate(5),"dd/MM")%>)</a></li>
								<%}}rs.close();st.close();%>
									</td>	
								</tr>
								<tr>
									<td align="right">
										<hr>
										<%if(currentPage!=1){%>
										<a style="font-family:Arial, Helvetica, sans-serif; color:#0066FF" href="<%out.print(contextPath+"/user/homefrm.jsp?cm=tintuc&pageID="+ "1");%>"><%=_res("new.first")%></a> | 
										<a style="font-family:Arial, Helvetica, sans-serif" href="<%out.print(contextPath+"/user/homefrm.jsp?cm=tintuc&pageID="+ (currentPage-1==0?1:currentPage-1));%>"><img border="0" src="<%=contextPath%>/img/left-arrow.gif" /></a> | 
										<%}
											int last = 0;											
											for(int z=1; z <= cPage ; z++) {
												last ++;
												if(currentPage==z){
												out.println("<a style=text-decoration:none;color:#000000;  href="+contextPath+"/user/homefrm.jsp?cm=tintuc&pageID=" + z + ">"+ z +"</a>&nbsp;|&nbsp;");
												}
												else
												out.println("<a style=color:#0066FF; href="+contextPath+"/user/homefrm.jsp?cm=tintuc&pageID=" + z + ">"+ z +"</a>&nbsp;|&nbsp;");
											}			
											if(currentPage!=last){%>
										<a style="font-family:Arial, Helvetica, sans-serif; " href="<%out.print(contextPath+"/user/homefrm.jsp?cm=tintuc&pageID="+ (currentPage+1>=cPage?cPage:currentPage+1));%>"><img border="0" src="<%=contextPath%>/img/right-arrow.gif" /></a> | 
										<a style="font-family:Arial, Helvetica, sans-serif; color:#0066FF" href="<%out.print(contextPath+"/user/homefrm.jsp?cm=tintuc&pageID="+ cPage);%>"><%=_res("new.last")%></a> 
										<%}%>
									</td>
								</tr>
								<tr><td colspan="2">&nbsp;</td></tr>
							</table>		
						
				<%
					}catch(Exception e){
						//e.printStackTrace();
	      				//out.println(e.getMessage());
	      				System.out.print("HRM0001:"+e.getMessage());
					}finally{
						dbConnManager.freeConnection("topmostread", conn);
				}%>	
			