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
								
								<td width="16%" bgcolor="#f8f8f8" class="des"></td>
								<td width="41%" bgcolor="#FFF7E7" class="value"></td>
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
								<td bgcolor="#f8f8f8" class="des"><%=_res("regular_temporary")%></td>
								<td bgcolor="#FFF7E7" class="value">
								   	<%if(rs.getInt("REGULAR_TEMPORARY")==1){%><%=_res("regular")%>
									<%}else{%><%=_res("temporary")%><%}%>
                                </td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("fulltime_parttime")%></td>
								<td bgcolor="#FFF7E7" class="value">
                                	<%if(rs.getInt("FULLTIME_PARTTIME")==1){%><%=_res("fulltime")%>
									<%}else{%><%=_res("parttime")%><%}%>
                                </td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("work_place")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("WORK_PLACE")==null || rs.getString("WORK_PLACE").equals("null")){%>
										
									<%} else {%><%=rs.getString("WORK_PLACE") %> <%}%> 
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
										
									<%} else {%><%=rs.getString(37) %><%}%>	
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.noicap")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("noicap_hochieu")==null || rs.getString("noicap_hochieu").equals("null")){%>
										
									<%} else {%><%=rs.getString("noicap_hochieu")%> <%}%>
								</td>
							</tr>
                            <tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("passport_issued_date")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate("ngaycap_hochieu")==null){%>
                                    
									<%} else {%><%=SString.toString(rs.getDate("ngaycap_hochieu"),"dd/MM/yyyy") %><%}%>	 		
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("passport_expired_date")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate("ngay_hethan_hochieu")==null){%>
                                    
									<%} else {%><%=SString.toString(rs.getDate("ngay_hethan_hochieu"),"dd/MM/yyyy") %><%}%>	 	
								</td>
							</tr>
                            <tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("visa_number")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("visa_no")==null || rs.getString("visa_no").equals("null")){%>
										
									<%} else {%><%=rs.getString("visa_no")%> <%}%>	 		
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("visa_place_issued")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("VISA_PLACE")==null || rs.getString("VISA_PLACE").equals("null")){%>
										
									<%} else {%><%=rs.getString("VISA_PLACE")%> <%}%>	
								</td>
							</tr>
                            <tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("visa_issued_date")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate("VISA_DATE")==null){%>
                                    
									<%} else {%><%=SString.toString(rs.getDate("VISA_DATE"),"dd/MM/yyyy") %><%}%>	 			
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("visa_expired_date")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate("VISA_EXPIRED")==null){%>
                                    
									<%} else {%><%=SString.toString(rs.getDate("VISA_EXPIRED"),"dd/MM/yyyy") %><%}%>	 		
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
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.tongiao")%></td>
								<td bgcolor="#FFF7E7" class="value">
                                <%if(rs.getString(18)==null || rs.getString(18).equals("null")){%>
										
									<%} else {%><%=rs.getString(19)%><%}%>
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
								<td width="16%" bgcolor="#f8f8f8" class="des"><%=_res("ttcn.diachilienhe")%></td>
								<td width="41%" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(22)==null || rs.getString(22).equals("null")){%>
										 
									<%} else {%><%=rs.getString(22) %>  <%}%> 
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
								<td bgcolor="#f8f8f8" class="des"><%=_res("email_personal")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("EMAIL_PERSONAL")==null || rs.getString("EMAIL_PERSONAL").equals("null")){%>
										
									<%} else {%><%=rs.getString("EMAIL_PERSONAL") %><%}%>
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
                            <tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
                            <tr>
								<td width="18%" bgcolor="#f8f8f8" class="des"><%=_res("org_level")%></td>
								<td width="25%" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("CAPBAC") == null || rs.getString("CAPBAC").equals("null")){%>
										
									<%} else {%> <%=rs.getString("CAPBAC")%><%}%>				
								</td>
								<td width="16%" bgcolor="#f8f8f8" class="des"><%=_res("job_grade")%></td>
								<td width="41%" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("MUCDO_KN") == null || rs.getString("MUCDO_KN").equals("null")){%>
										
									<%} else {%> <%=rs.getString("MUCDO_KN")%><%}%>	
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
								<td width="18%" bgcolor="#f8f8f8" class="des"></td>
								<td width="25%" bgcolor="#FFF7E7" class="value">
									
								</td>
								<td width="16%" bgcolor="#f8f8f8" class="des"></td>
								<td width="41%" bgcolor="#FFF7E7" class="value"></td>
							</tr>
							
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("name_acc_1")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("ACCOUNT_NAME") == null || rs.getString(33).equals("ACCOUNT_NAME")){%>
										
									<%} else {%> <%=rs.getString("ACCOUNT_NAME")%>  <%}%>
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("number_acc_1")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("so_taikhoan")==null || rs.getString("so_taikhoan").equals("null")){%>
										
									<%} else {%><%=rs.getString("so_taikhoan") %> <%}%> -
									<%if(rs.getString("ngan_hang")==null || rs.getString("ngan_hang").equals("null")){%>
										
									<%} else {%><%=rs.getString("ngan_hang") %> <%}%>
								</td>
							</tr>
                            <tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("name_acc_2")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("ACCOUNT_NAME_2") == null || rs.getString("ACCOUNT_NAME_2").equals("null")){%>
										
									<%} else {%> <%=rs.getString("ACCOUNT_NAME_2")%>  <%}%>
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("number_acc_2")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("ACCOUNT_ID_2")==null || rs.getString("ACCOUNT_ID_2").equals("null")){%>
										
									<%} else {%><%=rs.getString("ACCOUNT_ID_2") %> <%}%> -
									<%if(rs.getString("ACCOUNT_BANK_2")==null || rs.getString("ACCOUNT_BANK_2").equals("null")){%>
										
									<%} else {%><%=rs.getString("ACCOUNT_BANK_2") %> <%}%>
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
					<td>
						<table width="790" cellpadding=6 cellspacing=1 align="center" style="border:1px solid #CCCCCC;">
							<tr>
								<td colspan="4" class="title1">&nbsp;<%=_res("housing")%></td>
							</tr>
							<tr>
								<td width="18%" bgcolor="#f8f8f8" class="des"></td>
								<td width="25%" bgcolor="#FFF7E7" class="value">
									
								</td>
								<td width="16%" bgcolor="#f8f8f8" class="des"></td>
								<td width="41%" bgcolor="#FFF7E7" class="value"></td>
							</tr>
							
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("housing_from_date")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate("HOUSING_FROM_DATE") == null || rs.getDate("HOUSING_FROM_DATE").equals("null")){%>
										
									<%} else {%> <%=SString.toString(rs.getDate("HOUSING_FROM_DATE"),"dd/MM/yyyy")%><%}%>
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("housing_to_date")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate("HOUSING_TO_DATE") == null || rs.getDate(57).equals("null")){%>
										
									<%} else {%> <%=SString.toString(rs.getDate("HOUSING_TO_DATE"),"dd/MM/yyyy")%><%}%>
								</td>
							</tr>
                            <tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("housing_rental")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%=rs.getDouble("HOUSING_RENTAL")%>
								</td>
								<td bgcolor="#f8f8f8" class="des"></td>
								<td bgcolor="#FFF7E7" class="value">
									
								</td>
							</tr>
							
						</table>
					</td>
				</tr>
                <tr>
					<td>
						<table width="790" cellpadding=6 cellspacing=1 align="center" style="border:1px solid #CCCCCC;">
							<tr>
								<td colspan="4" class="title1">&nbsp;<%=_res("emergency_contact")%></td>
							</tr>
							<tr>
								<td width="18%" bgcolor="#f8f8f8" class="des"></td>
								<td width="25%" bgcolor="#FFF7E7" class="value">
									
								</td>
								<td width="16%" bgcolor="#f8f8f8" class="des"></td>
								<td width="41%" bgcolor="#FFF7E7" class="value"></td>
							</tr>
							
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("contact_fullname")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("CONTACT_FULLNAME") == null || rs.getString("CONTACT_FULLNAME").equals("null")){%>
									
									<%} else {%> <%=rs.getString("CONTACT_FULLNAME")%>  <%}%>
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("contact_permanent_add")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("CONTACT_PERMANENT_ADD") == null || rs.getString("CONTACT_PERMANENT_ADD").equals("null")){%>
										
									<%} else {%> <%=rs.getString("CONTACT_PERMANENT_ADD")%>  <%}%> 
								</td>
							</tr>
                            <tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("contact_relationship")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("CONTACT_RELATIONSHIP") == null || rs.getString("CONTACT_RELATIONSHIP").equals("null")){%>
										
									<%} else {%> <%=rs.getString("CONTACT_RELATIONSHIP")%>  <%}%> - 
                                    <%if(rs.getString("CONTACT_PHONE_NO") == null || rs.getString("CONTACT_PHONE_NO").equals("null")){%>
										
									<%} else {%> <%=rs.getString("CONTACT_PHONE_NO")%>  <%}%>
								</td>
								<td bgcolor="#f8f8f8" class="des"><%=_res("contact_address_cont")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("CONTACT_ADDRESS_CONT") == null || rs.getString("CONTACT_ADDRESS_CONT").equals("null")){%>
										
									<%} else {%> <%=rs.getString("CONTACT_ADDRESS_CONT")%>  <%}%>
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

