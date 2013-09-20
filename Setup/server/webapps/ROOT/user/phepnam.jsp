<%
	String nam = (request.getParameter("namvalue") != null) ? request.getParameter("namvalue") : "";
	if(nam.equals(""))
		nam = SString.toString(new java.util.Date(), "yyyy");
	//String strSqlTtcn = ("select HO_NHANVIEN, TENDEM_NHANVIEN, TEN_NHANVIEN from WEB_XEM_THONGTIN_NHANVIEN('"+username+"')");
	//String hoten = "";
	java.sql.Connection conn = null;
	int rowcount = 0;
	try{
%>
	<table class="tablecontent" align="center">
		<tr>
			<td colspan="5"><div id="headercontent" class="title"><%=_res("pn.title")%></div>  
		  	</td>
		</tr>
		<tr>
			<td>
				<table align="center" width="790" border="0" cellpadding=6 cellspacing=1 style="border:1px solid #CCCCCC;">
					<tr>
					<form name="frmview" action="<%=contextPath%>/user/phepnamfrm.jsp" method="post">
						<td align="right" class="des" bgcolor="#f8f8f8"><%=_res("pn.title")%>:</td>
						<td width="8%" class="des" bgcolor="#f8f8f8">
							<select name="namvalue">										
							<%										
								for(int i=0; i<12; i++){
								String tempnam = String.valueOf(Integer.parseInt(nam)-6+i);
							%>
								<option value="<%=tempnam%>" <%if(nam.equals(tempnam)){%> selected <%}%>><%=tempnam%></option>
							<%}%>												
							</select>								
						</td>
						<td width="74%" class="des" bgcolor="#f8f8f8">&nbsp;<input type="submit" value="<%=_res("cct.submit")%>" /></td>
					</form>
					</tr>
					<tr><td height="1" bgcolor="#CCCCCC" colspan="3"></td></tr>
					<tr>
					<%
						String	strSqlTtpn = ("select * from WEB_XEM_THONGTIN_PHEPNAM('"+username+"', '"+nam+"')");
						//java.sql.Statement stttpn=conn.createStatement();
						conn = dbConnManager.getConnection("topmostread");	
	   	 				java.sql.PreparedStatement st=conn.prepareStatement(strSqlTtpn);
						ResultSet rs = st.executeQuery();
						//rs = st.executeQuery(strSqlTtpn);
						if(rs.next()){
					%>
						<td class="des" align="right" bgcolor="#f8f8f8">
							<%=_res("pn.ngayphep")%></td>
						<td colspan="2" bgcolor="#FFF7E7" class="value">
							<%=rs.getDouble(3)%> <%=_res("dkp.ngay")%> 
						</td>
					</tr>
					<tr><td height="1" bgcolor="#CCCCCC" colspan="3"></td></tr>
					<tr>
						<td width="18%" align="right" class="des" bgcolor="#f8f8f8"><%=_res("pn.danghi")%></td>
					  	<td bgcolor="#FFF7E7" class="value" colspan="2">
							<%=rs.getDouble(4)%> <%=_res("dkp.ngay")%>							 	
						 </td>
					</tr>
					<tr><td height="1" bgcolor="#CCCCCC" colspan="3"></td></tr>
					<tr>
						<td width="18%" align="right" class="des" bgcolor="#f8f8f8"><%=_res("pn.conlai")%></td>
					  	<td bgcolor="#FFF7E7" class="value" colspan="2">
					  		<%=rs.getDouble(5)%> <%=_res("dkp.ngay")%>
					 	</td>
					<%}%>
					</tr>
				</table>
			</td>
		</tr>
		
		<tr>
			<td>
				<table width="790" align="center" border="0" cellspacing="1" cellpadding="2" bgcolor="#007D93">
					<tr>
						<td colspan="5" class="title1">&nbsp;<%=_res("pn.dangchoduyet")%></td>
					</tr>
					<tr height="24">
					  <td width="38" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.stt")%></td>
						<td width="111" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.nghiphep")%></td>
						<td width="160" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.thoigiannghi")%></td>
						<td width="75" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.songaynghi")%></td>
						<td align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.lydonghi")%></td>	
					</tr>
					
					<%
						String strSqlCtpncd = ("select * from WEB_XEM_PHEPNAM_CHODUYET('"+username+"', '"+nam+"')");
						rs = st.executeQuery(strSqlCtpncd);
						int j = 1;
						int l = 0;
						while(rs.next()){
								l++;
						}
						if(l!=0){
						rs = st.executeQuery(strSqlCtpncd);
						while(rs.next()){		
					%>			
					<tr height="24" <%if(j%2==0){out.println("bgcolor='#EEEEEE'");}else{out.println("bgcolor='#FFFFFF'");}%>>
						<td align="center" bgcolor="#FFF7E7" class="value"><%=j++%></td>
						<td bgcolor="#FFF7E7" class="value"><%=rs.getString(2) %></td>
						<td bgcolor="#FFF7E7" class="value"><%=SString.toString(rs.getDate(3),"dd/MM/yyyy") %> <%=_res("dkp.den")%><%=SString.toString(rs.getDate(4),"dd/MM/yyyy") %></td>
						<td align="center"bgcolor="#FFF7E7" class="value"><%=rs.getDouble(5) %></td>
						<td bgcolor="#FFF7E7" class="value">
							<%if(rs.getString(6)==null || rs.getString(6).equals("null")){%>
							<%} else {%><%=rs.getString(6) %><%}%>
						</td>
					</tr>
					<%}} else {%>
					<tr>
						<td align="center" bgcolor="#FFF7E7" class="value">&nbsp;</td>
						<td bgcolor="#FFF7E7" class="value"></td>
						<td bgcolor="#FFF7E7" class="value"></td>
						<td align="center"bgcolor="#FFF7E7" class="value"></td>
						<td bgcolor="#FFF7E7" class="value"></td>
					</tr>
					<%}%>
				</table>
				
			</td>
		</tr>
		
		
		<tr>
			<td>
            	<form name="frmDelete" action="<%=contextPath%>/user/DeleteController.do" method="post">
					<input type="hidden" name="state" value="DeletePn">
					<input type="hidden" name="maso_phieu">
				<table width="790" align="center" border="0" cellspacing="1" cellpadding="2" bgcolor="#007D93">
					<tr>
						<td colspan="5" class="title1">&nbsp;<%=_res("pn.khongduyet")%></td>
					</tr>
					<tr height="24">
					  <td width="38" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.stt")%></td>
						<td width="111" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.nghiphep")%></td>
						<td width="160" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.thoigiannghi")%></td>
						<td width="75" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.songaynghi")%></td>
                        <td width="173" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.lydonghi")%></td>
						<td align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.lydokhongduyet")%></td>
						<td width="59" align="center" bgcolor="#f8f8f8" class="des"><%=_res("pn.thaotac")%></td>	
					</tr>
					
					<%
						String strSqlctpnkd = ("select * from WEB_PHEP_KHONGDUYET_DK('"+username+"', '"+nam+"')");
						//String strSqlCtpn = ("select * from WEB_XEM_CHITIET_PHEPNAM('"+username+"', '"+nam+"')");
						rs = st.executeQuery(strSqlctpnkd);
						int r = 1;
						int s = 0;
						while(rs.next()){
							
								s++;
				
						}
						if(s!=0){
							rs = st.executeQuery(strSqlctpnkd);
							while(rs.next()){
								
					%>			
					<tr height="24" <%if(j%2==0){%>bgcolor="#EEEEEE"<%}else{%>bgcolor="#FFFFFF"<%}%>>
						<td align="center" bgcolor="#FFF7E7" class="value"><%=r++%></td>
						<td bgcolor="#FFF7E7" class="value"><%=rs.getString(4) %></td>
						<td bgcolor="#FFF7E7" class="value"><%=SString.toString(rs.getDate(5),"dd/MM/yyyy") %> <%=_res("dkp.den")%><%=SString.toString(rs.getDate(6),"dd/MM/yyyy") %></td>
						<td align="center"bgcolor="#FFF7E7" class="value"><%=rs.getDouble(7) %></td>
						<td bgcolor="#FFF7E7" class="value">
							<%if(rs.getString(10)==null || rs.getString(10).equals("null")){%>
							<%} else {%><%=rs.getString(10) %><%}%>
						</td>
                        <td bgcolor="#FFF7E7" class="value">
							<%if(rs.getString(8)==null || rs.getString(8).equals("null")){%>
							<%} else {%><%=rs.getString(8) %><%}%>
						</td>
						<td bgcolor="#FFF7E7" class="value" align="center">
							<img src="<%=contextPath%>/img/delete.gif" />
							<a class="links" href="javascript:funcDelete('<%=rs.getString(3)%>');" title="<%=_res("pn.xoatitle")%>"><%=_res("pn.xoa")%></a>
						</td>
					</tr>
					<%}} else {%>
					<tr>
						<td align="center" bgcolor="#FFF7E7" class="value">&nbsp;</td>
						<td bgcolor="#FFF7E7" class="value"></td>
						<td bgcolor="#FFF7E7" class="value"></td>
						<td align="center"bgcolor="#FFF7E7" class="value"></td>
						<td bgcolor="#FFF7E7" class="value"></td>
                        <td bgcolor="#FFF7E7" class="value"></td>
						<td bgcolor="#FFF7E7" class="value" align="center"></td>
					</tr>
					<%}%>
				</table>
				</form>
			</td>
		</tr>
		
		
		<tr>
			<td>
            	
				<table width="790" align="center" border="0" cellspacing="1" cellpadding="2" bgcolor="#007D93">
					<tr>
						<td colspan="5" class="title1">&nbsp;<%=_res("pn.daduyet")%></td>
					</tr>
					<tr height="24">
						<td width="38" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.stt")%></td>
						<td width="111" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.nghiphep")%></td>
						<td width="160" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.thoigiannghi")%></td>
						<td width="75" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.songaynghi")%></td>
						<td align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.lydonghi")%></td>
					</tr>
					<%
						//java.sql.Statement stctpn=conn.createStatement();
						String strSqlCtpn = ("select * from WEB_XEM_CHITIET_PHEPNAM('"+username+"', '"+nam+"')");
						int i = 1;
						int k = 0;
						rs = st.executeQuery(strSqlCtpn);
						while (rs.next()){
							if(rs.getInt(7)==1){
								k++;
							}
						}
						if(k!=0){
							rs = st.executeQuery(strSqlCtpn);
							while(rs.next()){
							if(rs.getInt(7)==1){
					%>
					<tr>
						<td align="center" bgcolor="#FFF7E7" class="value"><%=i++%></td>
						<td bgcolor="#FFF7E7" class="value"><%=rs.getString(2) %></td>
						<td bgcolor="#FFF7E7" class="value"><%=SString.toString(rs.getDate(3),"dd/MM/yyyy") %> <%=_res("dkp.den")%><%=SString.toString(rs.getDate(4),"dd/MM/yyyy") %></td>
						<td align="center"bgcolor="#FFF7E7" class="value"><%=rs.getDouble(5) %></td>
						<td bgcolor="#FFF7E7" class="value">
						<%if(rs.getString(6)==null || rs.getString(6).equals("null")){%>
						<%} else {%><%=rs.getString(6) %><%}%>
						</td>	
					</tr>
					<%}}rs.close();
						st.close();} else {%>
					<tr>
						<td align="center" bgcolor="#FFF7E7" class="value">&nbsp;</td>
						<td bgcolor="#FFF7E7" class="value"></td>
						<td bgcolor="#FFF7E7" class="value"></td>
						<td align="center"bgcolor="#FFF7E7" class="value"></td>
						<td bgcolor="#FFF7E7" class="value"></td>	
					</tr>
					<%}%>
				</table>

			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		
		
<%
	}catch(Exception e){
		e.printStackTrace();
	    //out.println(e.getMessage());
	}finally{
		dbConnManager.freeConnection("topmostread", conn);
	}
%>
	</table>
	
<script language="javascript">
	function funcDelete(value){
		var dm = document.frmDelete;
		var x=window.confirm('<%=_res("pn.confirmxoa")%>');
		if(x){
			dm.maso_phieu.value = value;
			dm.submit();
		}
	}
</script>
