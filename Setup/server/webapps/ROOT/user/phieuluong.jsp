<%
	String thang = (request.getParameter("thangvalue") != null) ? request.getParameter("thangvalue") : "";
	if(thang.equals(""))
		thang = SString.toString(new java.util.Date(), "MM");
	String nam = (request.getParameter("namvalue") != null) ? request.getParameter("namvalue") : "";
	if(nam.equals(""))
		nam = SString.toString(new java.util.Date(), "yyyy");
	String strSqlTtcn = ("select HO_NHANVIEN, TENDEM_NHANVIEN, TEN_NHANVIEN from WEB_XEM_THONGTIN_NHANVIEN('"+username+"')");
	String hoten = "";
	java.sql.Connection conn = null;
	try{
	    conn = dbConnManager.getConnection("topmostread");	
	    java.sql.PreparedStatement st=conn.prepareStatement(strSqlTtcn);
		ResultSet rs = st.executeQuery();
%>	
			<table class="tablecontent" align="center">
				<tr>
					<td><div id="headercontent" class="title"><%=_res("pl.title1")%></div></td>
				</tr>
				<tr>
					<td>
						<table align="center" width="790" border="0" cellspacing="1" cellpadding="2" style="border:1px solid #CCCCCC;">
							<tr>
								<td width="6%" align="left" bgcolor="#f8f8f8" class="des"><%=_res("pl.thang")%></td>
								<form name="frmview" action="<%=contextPath%>/user/phieuluongfrm.jsp" method="post">
								<td width="7%" class="des" align="left" bgcolor="#f8f8f8">
									<select name="thangvalue">
										<option value="01" <%if(thang.equals("01")){%> selected <%}%>>1</option>
										<option value="02" <%if(thang.equals("02")){%> selected <%}%>>2</option>
										<option value="03" <%if(thang.equals("03")){%> selected <%}%>>3</option>
										<option value="04" <%if(thang.equals("04")){%> selected <%}%>>4</option>
										<option value="05" <%if(thang.equals("05")){%> selected <%}%>>5</option>
										<option value="06" <%if(thang.equals("06")){%> selected <%}%>>6</option>
										<option value="07" <%if(thang.equals("07")){%> selected <%}%>>7</option>
										<option value="08" <%if(thang.equals("08")){%> selected <%}%>>8</option>
										<option value="09" <%if(thang.equals("09")){%> selected <%}%>>9</option>
										<option value="10" <%if(thang.equals("10")){%> selected <%}%>>10</option>
										<option value="11" <%if(thang.equals("11")){%> selected <%}%>>11</option>
										<option value="12" <%if(thang.equals("12")){%> selected <%}%>>12</option>
								  </select>
								</td>
								<td width="5%" class="des" align="left" bgcolor="#f8f8f8"><%=_res("pl.nam")%></td>
								<td width="10%" class="des" align="left" bgcolor="#f8f8f8">
									<select name="namvalue">										
									<%										
										for(int i=0; i<12; i++){
											String tempnam = String.valueOf(Integer.parseInt(nam)-6+i);
										%>
											<option value="<%=tempnam%>" <%if(nam.equals(tempnam)){%> selected <%}%>><%=tempnam%></option>
											<%}%>												
									</select>
								</td>
								<td width="72%" class="des" align="left" bgcolor="#f8f8f8"><input type="submit" value="Xem" /></td>
								</form>
							</tr>
						</table>
					</td>
				</tr>
				<%
					//if(nam.equals(""))
						//sqlttpn = ("select * from WEB_XEM_THONGTIN_PHEPNAM('"+username+"', '"+SString.toString(new java.util.Date(),"yyyy")+"')");
					//else
					String	strSqlPl = ("EXECUTE PROCEDURE WEB_XEM_BANGLUONG_CANHAN('"+username+"', '"+thang+"', '"+nam+"')");
					//java.sql.Statement stttpn=conn.createStatement();
					rs = st.executeQuery(strSqlPl);
					if(rs.next()){
				%>
				<tr>
					<td>
						<table align="center" width="790" border="0" cellspacing="1" cellpadding="2" style="border:1px solid #CCCCCC;">
							<tr height="22px">
								<td colspan="2" bgcolor="#007D93" class="title1">&nbsp;<%=thang%>/<%=nam%></td>	
							</tr>
							<%
							for(int i = 1; i <=16; i = i+2){
								if(rs.getString(i)!=null || !rs.getString(i).equals("null")){%>
							<tr>
							  <td width="234" bgcolor="#f8f8f8" class="des"><li><%=rs.getString(i)%></li></td>
								<td width="543" bgcolor="#FFF7E7" class="value"><%=rs.getDouble(i+1)%></td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="2"></td></tr>
							<%}}%>
						</table>
					</td>
				</tr>
				<%}rs.close(); st.close(); %>
				<tr>
					<td>&nbsp;</td>
				</tr>
			</table>
			
  	 
<%
	}catch(Exception e){	      e.printStackTrace();
	      out.println(e.getMessage());
	}finally{
		dbConnManager.freeConnection("topmostread", conn);
	}
%>