<%
	String strSqlTtcn = ("select * from WEB_XEM_THONGTIN_NHANVIEN('"+username+"')");
	java.sql.Connection conn = null;
	try{
	    conn = dbConnManager.getConnection("topmostread");
		//java.sql.Statement st=conn.createStatement();
		java.sql.PreparedStatement st=conn.prepareStatement(strSqlTtcn);
		ResultSet rs = st.executeQuery();
		//File f;
	if(rs.next()){
		String hoten = rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4);
		int gioitinh = rs.getInt(5);
		//f = rs.getBlob(43);
		//byte[] b = rs.getBlob(43).getBytes(1, (int)rs.getBlob(43).length());
		//String txt = new String(b);
		//out.print(txt);
%>	
			<table class="tablecontent" align="center">					
				<tr>
					<td>
						<div id="headercontent" class="title"><%=_res("ttcn.hosonhanvien")%></div>
					</td>
				</tr>							
				<tr>
					<td>
						<table align="center" width="790" cellpadding=6 cellspacing=1 style="border:1px solid #CCCCCC;">
							<tr>
								<td colspan="4" class="title1">&nbsp;<%=_res("ttcn.thongtinchung")%></td>				
							</tr>
							<tr height="25px;">
								<td width="18%" bgcolor="#f8f8f8" class="des"><%=_res("ttcn.manhanvien")%></td>
							  	<td width="25%" bgcolor="#FFF7E7" class="value"><%=rs.getString(1)%></td>
								
								<td width="16%" bgcolor="#f8f8f8" class="des"><%=_res("ttcn.masothenhanvien")%></td>
								<td width="41%" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(30) == null || rs.getString(30).equals("null")){%>
										
									<%} else {%><%=rs.getString(30)%> <%}%>
							  </td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.tennhanvien")%></td>
								<td bgcolor="#FFF7E7" class="value"><%=hoten %></td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.gioitinh")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(5)==null || rs.getString(5).equals("null")){%>
									<%} else {if(gioitinh ==1){ %><%=_res("ttcn.nam")%><%} else {%><%=_res("ttcn.nu")%><%}}%>
								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.ngaysinh")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate(6)==null){%>
										
									<%} else {%><%=SString.toString(rs.getDate(6),"dd/MM/yyyy")%><%}%>
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.honnhan")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(7)==null || rs.getString(7).equals("null")){%>
										
									<%} else {%> <%=rs.getString(8) %> <%}%>
								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.chieucao")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%=rs.getDouble(45)%>
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.cannang")%></td>
								<td bgcolor="#FFF7E7" class="value"><%=rs.getDouble(46)%></td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.dauvetdacbiet")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(47)==null || rs.getString(47).equals("null")){%>
										
									<%} else {%> <%=rs.getString(47) %> <%}%>
								</td>
								<td bgcolor="#f8f8f8" class="des">&nbsp;</td>
								<td bgcolor="#FFF7E7" class="value">&nbsp;</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.socmnd")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(9)==null || rs.getString(9).equals("null")){%>
										
									<%} else {%><%=rs.getString(9) %> <%}%> -
									<%if(rs.getDate(10)==null){%>
										
									<%} else {%><%=SString.toString(rs.getDate(10),"dd/MM/yyyy") %> <%}%>	
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.noicap")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(11)==null || rs.getString(11).equals("null")){%>
										
									<%} else {%><%=rs.getString(11) %> <%}%> 
								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.passport")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(37)==null || rs.getString(37).equals("null")){%>
										
									<%} else {%><%=rs.getString(37) %><%}%> -
									<%if(rs.getDate(38)==null){%>
										
									<%} else {%><%=SString.toString(rs.getDate(38),"dd/MM/yyyy") %><%}%>	 		
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.noicap")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(39)==null || rs.getString(39).equals("null")){%>
										
									<%} else {%><%=rs.getString(39)%> <%}%>
								</td>
							</tr>
						</table>
					</td>
				</tr >
				<tr>
					<td>		
						<table align="center" width="790" cellpadding=6 cellspacing=1 style="border:1px solid #CCCCCC;">
							<tr>
								<td colspan="4" class="title1">&nbsp;<%=_res("ttcn.thanhphanxuatthan")%></td>				
							</tr>
							<tr>
								<td width="18%" bgcolor="#f8f8f8" class="des"><%=_res("ttcn.quoctich")%></td>
								<td width="25%" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(17)==null || rs.getString(17).equals("null")){%>
										
									<%} else {%><%=rs.getString(17)%><%}%>
								</td>
								<td width="16%" bgcolor="#f8f8f8" class="des"><%=_res("ttcn.noisinh")%></td>
								<td width="41%" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(20)==null || rs.getString(20).equals("null")){%>
										
									<%} else {%><%=rs.getString(20)%><%}%></td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.dantoc")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(13)==null || rs.getString(13).equals("null")){%>
										
									<%} else {%><%=rs.getString(13)%><%}%>
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.quequan")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(21)==null || rs.getString(21).equals("null")){%>
										
									<%} else {%><%=rs.getString(21)%><%}%>
								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.tongiao")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(18)==null || rs.getString(18).equals("null")){%>
										
									<%} else {%><%=rs.getString(19)%><%}%>
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.xuatthan")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(32)==null || rs.getString(32).equals("null")){%>
										
									<%} else {%><%=rs.getString(32)%><%}%>
								</td>
							</tr>
						</table>
						
					</td>
				</tr>			
				<tr>
					<td>
						<table width="790" cellpadding=6 cellspacing=1 align="center" style="border:1px solid #CCCCCC;">
							<tr>
								<td colspan="4" class="title1">&nbsp;<%=_res("ttcn.thongtinlienlac")%></span></td>
							</tr>	
							<tr>
								<td width="18%" bgcolor="#f8f8f8" class="des"><%=_res("ttcn.sodienthoai")%></td>
								<td width="25%" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(25)==null || rs.getString(25).equals("null")){%>
										
									<%} else {%><%=rs.getString(25) %>  <%}%> 
								</td>
								<td width="16%" bgcolor="#f8f8f8" class="des"><%=_res("ttcn.diachithuongtru")%></td>
								<td width="41%" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(24)==null || rs.getString(24).equals("null")){%>
										
									<%} else {%><%=rs.getString(24) %> <%}%>
								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.mobile")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(26)==null || rs.getString(26).equals("null")){%>
										
									<%} else {%><%=rs.getString(26) %>  <%}%> 
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.diachitamtru")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(23)==null || rs.getString(23).equals("null")){%>
										
									<%} else {%><%=rs.getString(23) %>  <%}%> 
								 </td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.email")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(27)==null || rs.getString(27).equals("null")){%>
										
									<%} else {%><%=rs.getString(27) %>  <%}%>
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.diachilienhe")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(22)==null || rs.getString(22).equals("null")){%>
										 
									<%} else {%><%=rs.getString(22) %>  <%}%> 
								</td>
							</tr>
						</table>
					</td>
				</tr>
				
				<tr>
					<td>
						<table width="790" cellpadding=6 cellspacing=1 align="center" style="border:1px solid #CCCCCC;">
							<tr>
								<td colspan="4" class="title1">&nbsp;<%=_res("ttcn.hoatdong")%></td>	
							</tr>
							<tr>
								<td width="18%" bgcolor="#f8f8f8" class="des"><%=_res("ttcn.ngayvaodang")%></td>
								<td width="25%" bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate(48)==null){%>
										
									<%} else {%> <%=SString.toString(rs.getDate(48),"dd/MM/yyyy")%> <%}%> 								
								</td>
								<td width="16%" bgcolor="#f8f8f8" class="des"><%=_res("ttcn.chucvu")%></td>
								<td width="41%" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(49)==null || rs.getString(49).equals("null")){%>
																			
									<%} else {%> <%=rs.getString(50)%> <%}%>
								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.ngayvaodoan")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate(51)==null){%>
											
									<%} else {%> <%=SString.toString(rs.getDate(51),"dd/MM/yyyy")%> <%}%> 								
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.chucvu")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(52)==null || rs.getString(52).equals("null")){%>
										
									<%} else {%> <%=rs.getString(53)%> <%}%>
								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.ngayvaocongdoan")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate(54)==null){%>
										
									<%} else {%> <%=SString.toString(rs.getDate(54),"dd/MM/yyyy")%> <%}%> 								
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.chucvu")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(55)==null || rs.getString(55).equals("null")){%>
										
									<%} else {%> <%=rs.getString(56)%> <%}%>
								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.ngayvaocongty")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate(57) == null || rs.getDate(57).equals("null")){%>
										
									<%} else {%> <%=SString.toString(rs.getDate(57),"dd/MM/yyyy")%><%}%>
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.chucvu")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(59) == null || rs.getString(59).equals("null")){%>
										
									<%} else {%> <%=rs.getString(59)%><%}%>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table width="790" cellpadding=6 cellspacing=1 align="center" style="border:1px solid #CCCCCC;">
							<tr>
								<td colspan="4" class="title1">&nbsp;<%=_res("ttcn.taichinh")%></td>
							</tr>
							<tr>
								<td width="18%" bgcolor="#f8f8f8" class="des"><%=_res("ttcn.tiente")%></td>
								<td width="25%" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(14) == null || rs.getString(14).equals("null")){%>
										
									<%} else {%> <%=rs.getString(15)%> <%}%>
								</td>
								<td width="16%" bgcolor="#f8f8f8" class="des"></td>
								<td width="41%" bgcolor="#FFF7E7" class="value"></td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.taikhoan")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(33) == null || rs.getString(33).equals("null")){%>
										
									<%} else {%> <%=rs.getString(33)%>  <%}%>
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.nganhang")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(34) == null || rs.getString(34).equals("null")){%>
										
									<%} else {%> <%=rs.getString(34)%>  <%}%> 
								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.mathue")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(41) == null || rs.getString(41).equals("null")){%>
										
									<%} else {%> <%=rs.getString(41)%>  <%}%>
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.coquanthue")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(42) == null || rs.getString(42).equals("null")){%>
										
									<%} else {%> <%=rs.getString(42)%>  <%}%>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
			</table>	 
<%
	}
		rs.close();
		st.close();
		//conn.close();
	}catch(IOException ex ){
	      //e.printStackTrace();
	      //out.println(e.getMessage());
	}finally{
		dbConnManager.freeConnection("topmostread", conn);
	}
%>

