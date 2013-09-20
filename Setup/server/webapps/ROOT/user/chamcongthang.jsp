<%
	String thang = (request.getParameter("thangvalue") != null) ? request.getParameter("thangvalue") : "";
	if(thang.equals(""))
		thang = SString.toString(new java.util.Date(), "M");
	String nam = (request.getParameter("namvalue") != null) ? request.getParameter("namvalue") : "";
	if(nam.equals(""))
		nam = SString.toString(new java.util.Date(), "yyyy");
	String strSqlTtcn = ("select HO_NHANVIEN, TENDEM_NHANVIEN, TEN_NHANVIEN from WEB_XEM_THONGTIN_NHANVIEN('"+username+"')");
	String hoten = "";
	int rowcount = 0;
	java.sql.Connection conn = null;
	try{
	    conn = dbConnManager.getConnection("topmostread");	
	    java.sql.PreparedStatement st=conn.prepareStatement(strSqlTtcn);
		ResultSet rs = st.executeQuery();
%>
			<table class="tablecontent" align="center">
				<tr>
					<td><div id="headercontent" class="title"><%=_res("cct.title1")%></td>
				</tr>
				<tr>
					<td width="80%">
						<table align="center" width="790" border="0" cellspacing="1" cellpadding="2" style="border:1px solid #CCCCCC;">
							<form name="frmview" action="<%=contextPath%>/user/chamcongthangfrm.jsp" method="post">
								<input type="hidden" name="hoten" value="<%=hoten%>" />
							<tr>
								<td width="43" class="des" align="left" bgcolor="#f8f8f8"><%=_res("cct.thang")%>:</td>
								<td width="55" class="des" align="left" bgcolor="#f8f8f8">
								<select name="thangvalue">
									<option value="1" <%if(thang.equals("1")){%> selected <%}%>>1</option>
									<option value="2" <%if(thang.equals("2")){%> selected <%}%>>2</option>
									<option value="3" <%if(thang.equals("3")){%> selected <%}%>>3</option>
									<option value="4" <%if(thang.equals("4")){%> selected <%}%>>4</option>
									<option value="5" <%if(thang.equals("5")){%> selected <%}%>>5</option>
									<option value="6" <%if(thang.equals("6")){%> selected <%}%>>6</option>
									<option value="7" <%if(thang.equals("7")){%> selected <%}%>>7</option>
									<option value="8" <%if(thang.equals("8")){%> selected <%}%>>8</option>
									<option value="9" <%if(thang.equals("9")){%> selected <%}%>>9</option>
									<option value="10" <%if(thang.equals("10")){%> selected <%}%>>10</option>
									<option value="11" <%if(thang.equals("11")){%> selected <%}%>>11</option>
									<option value="12" <%if(thang.equals("12")){%> selected <%}%>>12</option>
						      	</select>
						   	  </td>
								<td width="35" class="des" align="left" bgcolor="#f8f8f8"><%=_res("cct.nam")%>:</td>
								<td width="90" class="des" align="left" bgcolor="#f8f8f8">
									<select name="namvalue">	
									<option value="2002" <%if(nam.equals("2002")){%> selected <%}%>>2002</option>
									<option value="2003" <%if(nam.equals("2003")){%> selected <%}%>>2003</option>
									<option value="2004" <%if(nam.equals("2004")){%> selected <%}%>>2004</option>
									<option value="2005" <%if(nam.equals("2005")){%> selected <%}%>>2005</option>
									<option value="2006" <%if(nam.equals("2006")){%> selected <%}%>>2006</option>
									<option value="2007" <%if(nam.equals("2007")){%> selected <%}%>>2007</option>
									<option value="2008" <%if(nam.equals("2008")){%> selected <%}%>>2008</option>
									<option value="2009" <%if(nam.equals("2009")){%> selected <%}%>>2009</option>	
								</select>
							  </td>
						  	  <td width="539" class="des" align="left" bgcolor="#f8f8f8"><input value="<%=_res("cct.submit")%>" type="submit" /></td>
							</tr>
							</form>
						  </table>					
					</td>
				</tr>
				<tr>
					<td>
						<table align="center" width="790" border="0" cellspacing="1" cellpadding="2" bgcolor="#007D93">
							<tr height="22px">
								<td colspan="3" class="title1">&nbsp;<%=thang%>/<%=nam%></td>
							</tr>
							<tr>
								<td width="54%" bgcolor="#f8f8f8"></td>
								<td width="23%" class="des"  bgcolor="#f8f8f8"><%=_res("cct.sogio")%></td>
								<td width="23%" class="des" bgcolor="#f8f8f8"><%=_res("cct.songay")%></td>
							</tr>
							<%
								String strSqlCct = ("select * from WEB_XEM_CHAMCONG_THANG('"+username+"', '"+thang+"', '"+nam+"')");
								//java.sql.Statement stcct=conn.createStatement();
								rs = st.executeQuery(strSqlCct);
								int i = 0;
								while(rs.next()){
								i++;
								}
								Double tonggio = 0.0;
								Integer tongngay = 0;
								int j = 1;
								if(i !=0){
								rs = st.executeQuery(strSqlCct);
								while(rs.next()){
								if(rs.getString(3)!=null && rs.getInt(4)!=0){
							%>
							<tr <%if(j%2==0){%>bgcolor="#EEEEEE"<%}else{%>bgcolor="#FFFFFF"<%}%>>
								<%j++;%>
								<td class="value" bgcolor="#FFF7E7"><%=rs.getString(2) %></td>
								<td class="value" bgcolor="#FFF7E7"><%=rs.getDouble(3) %></td>
								<td class="value" bgcolor="#FFF7E7"><%=rs.getInt(4) %> </td>
							</tr>
							<%} 
							 	tonggio = tonggio + rs.getDouble(3);
							 	tongngay = tongngay + rs.getInt(4); 	
							}} else {%>	
							<tr>
								<td class="value" bgcolor="#FFF7E7">&nbsp;</td>
								<td class="value" bgcolor="#FFF7E7"></td>
								<td class="value" bgcolor="#FFF7E7"></td>
							</tr>
							<%}rs.close();st.close();%>
							<tr>
								<td class="des"  bgcolor="#f8f8f8"><%=_res("cct.tongcong")%></td>
								<td class="des"  bgcolor="#f8f8f8"><%=tonggio %></td>
								<td class="des"  bgcolor="#f8f8f8"><%=tongngay %></td>
							</tr>
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
