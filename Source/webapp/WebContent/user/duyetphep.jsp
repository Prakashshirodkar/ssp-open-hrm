<%
	String nam = (request.getParameter("namvalue") != null) ? request.getParameter("namvalue") : "";
	if(nam.equals(""))
		nam = SString.toString(new java.util.Date(), "yyyy");
	java.sql.Connection conn = null;
	//System.out.println(nam);
	int rowcount = 0;
	try{
%>
	<table class="tablecontent" align="center">
		<tr>
			<td colspan="5"><div id="headercontent" class="title"><%=_res("dp.title")%></div>  
		  	</td>
		</tr>
		<tr>
			<td>
				<table align="center" width="790" border="0" cellpadding=6 cellspacing=1 style="border:1px solid #CCCCCC;">
					<tr>
					<form name="frmview" action="<%=contextPath%>/user/duyetphepfrm.jsp" method="post">
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
				</table>
			</td>
		</tr>
		
		<tr>
			<td>
				<table width="790" align="center" border="0" cellspacing="1" cellpadding="2" bgcolor="#007D93">
					<tr>
						<td colspan="6" class="title1">&nbsp;<%=_res("pn.dangchoduyet")%></td>
					</tr>
					<form name="frmDuyetphep" action="<%=contextPath%>/user/RegistryController.do" method="post">
					<input type="hidden" name="state" value="duyet">
					<input type="hidden" name="maso_phieu">
                    <input type="hidden" name="songay_duocduyet">
                    <input type="hidden" name="trangthaiduyet">
					<tr height="24">
					  	<td width="38" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.stt")%></td>
						<td width="166" align="center" class="des" bgcolor="#f8f8f8"><%=_res("dp.tennv")%></td>
						<td width="140" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.thoigiannghi")%></td>
						<td width="80" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.songaynghi")%></td>
						<td width="268" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.lydonghi")%></td>
                        <td align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.thaotac")%></td>	
					</tr>
					
					<%
						String strSqlCtpncd = ("select * from WEB_PHEP_CHODUYET('"+username+"', '"+nam+"')");
						conn = dbConnManager.getConnection("topmostread");	
	   	 				java.sql.PreparedStatement st=conn.prepareStatement(strSqlCtpncd);
						ResultSet rs = st.executeQuery();
						//rs = st.executeQuery(strSqlCtpncd);
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
						<td bgcolor="#FFF7E7" class="value"><%=rs.getString(1)%> - <%=rs.getString(2) %></td>
						<td bgcolor="#FFF7E7" class="value"><%=SString.toString(rs.getDate(5),"dd/MM/yyyy") %> - <%=SString.toString(rs.getDate(6),"dd/MM/yyyy") %></td>
						<td align="center" bgcolor="#FFF7E7" class="value"><%=rs.getDouble(7) %></td>
						<td bgcolor="#FFF7E7" class="value">
							<%if(rs.getString(9)==null || rs.getString(9).equals("null")){%>
							<%} else {%><%=rs.getString(9) %><%}%>
						</td>
                        <td align="center" bgcolor="#FFF7E7" class="value">
                        	<a href="javascript:submitDuyet('<%=rs.getString(3)%>','<%=rs.getString(8)%>','<%=rs.getString(10)%>');"><img align="absmiddle" border="0" src="<%=contextPath%>/img/icon_chapnhan.gif" title="<%=_res("dp.duyet")%>"/></a>
                        	- <a href="javascript:showBoxKhongDuyet('<%=rs.getString(3)%>');"><img align="absmiddle" border="0" src="<%=contextPath%>/img/icon_tuchoi.gif" title="<%=_res("dp.khongduyet")%>"/></a>
                        </td>
					</tr>
					<%}} else {%>
					<tr>
						<td align="center" bgcolor="#FFF7E7" class="value">&nbsp;</td>
						<td bgcolor="#FFF7E7" class="value"></td>
						<td bgcolor="#FFF7E7" class="value"></td>
						<td align="center"bgcolor="#FFF7E7" class="value"></td>
						<td bgcolor="#FFF7E7" class="value"></td>
						<td bgcolor="#FFF7E7" class="value" align="center"></td>
					</tr>
					<%}%>
					</form>
				</table>
			</td>
		</tr>
        
        <tr>
        	<td>
            	<div id="khongduyet" style="display:none;">
            	<form name="frmKhongDuyetphep" action="<%=contextPath%>/user/RegistryController.do" method="post">
                	<input type="hidden" name="state" value="khongduyet">
					<input type="hidden" name="maso_phieu">
            	<table align="center" width="790" border="0" cellpadding=6 cellspacing=1 style="border:1px solid #CCCCCC;">
					<tr>
                        <td width="20%" align="right" class="des" bgcolor="#f8f8f8"><%=_res("dp.lydokhongduyet")%>:</td></td>
                        <td width="50%">
                            <textarea name="lydokhongduyet" style="width:400px;" ></textarea>
                         </td>
                         <td><input type="button" value="<%=_res("dp.khongduyet")%>" onclick="javascript:submitKhongduyet();" /></td>
                    </tr>
                </table>
                </form>
                </div>
            </td>
        </tr>
		
		
		<tr>
			<td>
				<table width="790" align="center" border="0" cellspacing="1" cellpadding="2" bgcolor="#007D93">
					<tr>
						<td colspan="6" class="title1">&nbsp;<%=_res("pn.khongduyet")%></td>
					</tr>
					<form name="frmDelete" action="<%=contextPath%>/user/DeleteController.do" method="post">
                        <input type="hidden" name="state" value="DeletePn">
                        <input type="hidden" name="maso_phieu">
					<tr height="24">
					  	<td width="38" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.stt")%></td>
						<td width="166" align="center" class="des" bgcolor="#f8f8f8"><%=_res("dp.tennv")%></td>
						<td width="140" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.thoigiannghi")%></td>
						<td width="80" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.songaynghi")%></td>
						<td width="134" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.lydonghi")%></td>
                        <td width="134" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.lydokhongduyet")%></td>
                        <td class="des" bgcolor="#f8f8f8" align="center"><%=_res("pn.thaotac")%></td>	
					</tr>
					
					<%
						String strSqlPkd = ("select * from WEB_PHEP_KHONGDUYET('"+username+"', '"+nam+"')");
						rs = st.executeQuery(strSqlPkd);
						int r = 1;
						int s = 0;
						while(rs.next()){
								s++;
						}
						if(s!=0){
							rs = st.executeQuery(strSqlPkd);
							while(rs.next()){
					%>			
					<tr height="24" <%if(j%2==0){%>bgcolor="#EEEEEE"<%}else{%>bgcolor="#FFFFFF"<%}%>>
						<td align="center" bgcolor="#FFF7E7" class="value"><%=r++%></td>
						<td bgcolor="#FFF7E7" class="value"><%=rs.getString(1)%> - <%=rs.getString(2)%></td>
						<td bgcolor="#FFF7E7" class="value"><%=SString.toString(rs.getDate(5),"dd/MM/yyyy") %> - <%=SString.toString(rs.getDate(6),"dd/MM/yyyy") %></td>
						<td align="center"bgcolor="#FFF7E7" class="value"><%=rs.getDouble(7) %></td>
						<td bgcolor="#FFF7E7" class="value">
							<%if(rs.getString(8)==null || rs.getString(8).equals("null")){%>
							<%} else {%><%=rs.getString(8) %><%}%>
						</td>
                        <td bgcolor="#FFF7E7" class="value">
							<%if(rs.getString(10)==null || rs.getString(10).equals("null")){%>
							<%} else {%><%=rs.getString(10) %><%}%>
						</td>
						<td bgcolor="#FFF7E7" class="value" align="center">
							<a class="links" href="javascript:funcDelete('<%=rs.getString(3)%>');" title="<%=_res("pn.xoatitle")%>">
                            	<img border="0" align="absmiddle" src="<%=contextPath%>/img/delete.gif" />
							</a>
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
						<td bgcolor="#FFF7E7" class="value" align="center">
						</td>
					</tr>
					<%}%>
					</form>
				</table>
				
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
						<td width="166" align="center" class="des" bgcolor="#f8f8f8"><%=_res("dp.tennv")%></td>
						<td width="140" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.thoigiannghi")%></td>
						<td width="80" align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.songaynghi")%></td>
						<td align="center" class="des" bgcolor="#f8f8f8"><%=_res("pn.lydonghi")%></td>
					</tr>
					<%
						//java.sql.Statement stctpn=conn.createStatement();
						String strSqlPdd = ("select * from WEB_PHEP_DADUYET('"+username+"', '"+nam+"')");
						int i = 1;
						int k = 0;
						rs = st.executeQuery(strSqlPdd);
						while (rs.next()){
								k++;
						}
						if(k!=0){
							rs = st.executeQuery(strSqlPdd);
							while(rs.next()){
					%>
					<tr>
						<td align="center" bgcolor="#FFF7E7" class="value"><%=i++%></td>
						<td bgcolor="#FFF7E7" class="value"><%=rs.getString(1)%> - <%=rs.getString(2)%></td>
						<td bgcolor="#FFF7E7" class="value"><%=SString.toString(rs.getDate(5),"dd/MM/yyyy") %> - <%=SString.toString(rs.getDate(6),"dd/MM/yyyy") %></td>
						<td align="center"bgcolor="#FFF7E7" class="value"><%=rs.getDouble(7) %></td>
						<td bgcolor="#FFF7E7" class="value">
							<%if(rs.getString(8)==null || rs.getString(8).equals("null")){%>
                            <%} else {%><%=rs.getString(8) %><%}%>
						</td>	
					</tr>
					<%}rs.close();
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
	
	function submitDuyet(value,ngayduyet,trangthaiduyet){
		var dm = document.frmDuyetphep;
		dm.maso_phieu.value = value;
		dm.songay_duocduyet.value = ngayduyet;
		dm.trangthaiduyet.value = trangthaiduyet;
		dm.submit();
	}
	
	function showBoxKhongDuyet(value){
		var div = document.getElementById("khongduyet");
		var dm = document.frmKhongDuyetphep;
		if(div.style.display=="none"){
			div.style.display="block";
			dm.lydokhongduyet.value = "";
		}
		else {
			div.style.display="none"
			dm.lydokhongduyet.value = "";
		}
		dm.maso_phieu.value = value;
	}
	
	function submitKhongduyet(){
		var dm = document.frmKhongDuyetphep;
		if(dm.lydokhongduyet.value==""){
			alert(dm.maso_phieu.value);
			alert('<%=_res("dp.alertkhongduyet")%>');
			dm.lydokhongduyet.focus();
		}
		dm.submit();
	}
</script>
