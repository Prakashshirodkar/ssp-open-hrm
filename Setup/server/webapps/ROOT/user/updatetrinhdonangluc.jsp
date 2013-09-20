<script language="JavaScript" src="<%=contextPath%>/jscript/changeimage.js"></script>
<script language="JavaScript" src="<%=contextPath%>/jscript/common_utils.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/dateutil_vi.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/jscalendar/calendar.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/jscalendar/calendar-setup.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/jscalendar/calendar-<%=language%>.js"></script>
<style type="text/css"> 
@import url("<%=contextPath%>/jscript/jscalendar/calendar-system.css"); 
</style>


<%
	//String strSqlTtcn = ("select HO_NHANVIEN, TENDEM_NHANVIEN, TEN_NHANVIEN from WEB_XEM_THONGTIN_NHANVIEN('"+username+"')");
	String sqlcheck = ("select * from HR_CAUHINH_SUATHONGTIN('"+username+"')");
	String ma_ngoaingu1 = "";
	java.sql.Connection conn = null;
	int rowcount = 0;
	try{
	    conn = dbConnManager.getConnection("topmostread");
		conn.setAutoCommit(false);	
		java.sql.PreparedStatement st=conn.prepareStatement(sqlcheck);
		ResultSet rs = st.executeQuery();
		int trinhdovanhoa = 0; int trinhdohocvan = 0; int namtotnghiep = 0; 
		int nghenghiep = 0; int sotruongcongtac = 0; int congvieclaunhat = 0;
		int trinhdongoaingu = 0; int trinhdokynang = 0; int trinhdochuyenmon = 0;
		if(rs.next()){
			trinhdovanhoa=rs.getInt(46); trinhdohocvan=rs.getInt(45); namtotnghiep=rs.getInt(49);
			nghenghiep=rs.getInt(48); sotruongcongtac=rs.getInt(47); congvieclaunhat=rs.getInt(50);
		}
		sqlcheck = ("select TRINHDO_NGOAINGU, TRINHDO_KYNANG, TRINHDO_CHUYENMON from HR_CONFIG_EDIT_EMPLOYEE");
		rs = st.executeQuery(sqlcheck);
		if(rs.next()){
			trinhdongoaingu = rs.getInt(1); trinhdokynang =rs.getInt(2); trinhdochuyenmon = rs.getInt(3);
		}
		//System.out.print(trinhdongoaingu);
		//System.out.print(trinhdokynang);
		//System.out.print(trinhdochuyenmon);
		//java.sql.PreparedStatement st=conn.prepareStatement(strSqlTtcn);
		//ResultSet rs = st.executeQuery();
%>	

<%@page import="java.util.ArrayList"%>
			<table class="tablecontent" align="center">	
				
				<tr>
					<td><div id="headercontent" class="title"><%=_res("udtdnl.title")%></div></td>
				</tr>
				<%
					String strSqlTdhvc = ("select * from WEB_XEM_TRINHDO_HOCVAN('"+username+"')");
					String strSqlTdhvctemp = "select * from WEB_XEM_TRINHDO_HOCVAN_BENWEB('"+username+"')";
					
					//java.sql.Statement sttdhvc=conn.createStatement();
					//java.sql.PreparedStatement st=conn.prepareStatement(strSqlTdhvc);
					//ResultSet rs = st.executeQuery();
					//rs = st.executeQuery(strSqlTdhvc);
					rs = st.executeQuery(strSqlTdhvc);
					if(rs.next()){
						java.sql.Statement sttemp=conn.createStatement();
						ResultSet rstemp=sttemp.executeQuery(strSqlTdhvctemp);
						if(rstemp.next()){
				%>
				<tr>
					<td>		
						<table align="center" width="790" cellpadding=6 cellspacing=1 style="border:1px solid #CCCCCC;">
							<tr>
								<td colspan="6" class="title1" bgcolor="#007D93">&nbsp;<%=_res("tdnl.hocvanchung")%></td>				
							</tr>
							<form name="frmUpdate" action="<%=contextPath%>/user/UpdateController.do" method="post">
								<input type="hidden" name="state" value="updatetdhvc">
								<input type="hidden" name="manv" value="<%=username%>">
							<tr>
								<td width="126" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.vanhoa")%></td>
								<td width="266" bgcolor="#FFF7E7" class="value">
									<%
										String tdvh = rs.getString(4);
										if(tdvh==null || tdvh.equals("null")){%>
											
										<%}else {%><%=tdvh%>		
									<%}%>							  	</td>
								<td width="0" bgcolor="#CCCCCC">
								</td>
								<td width="294" bgcolor="#FFF7E7" class="value">
									<select name="trinhdovanhoa" <%if(trinhdovanhoa!=1){%> style="display:none;"<%}%>>
									
									<%
										String strSqlvanhoa = "select ACADEMIC_NO, ACADEMIC_NAME from HR_ACADEMIC";
										java.sql.Statement st1=conn.createStatement();
										ResultSet rs1=st1.executeQuery(strSqlvanhoa);
										if(rstemp.getString(3) == null || rstemp.getString(3).equals("null")){
									%>
											<option value="" selected>--------*--------</option>
									<%
											while(rs1.next()){ 
									%>
										<option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%></option>
									<%}}else {
											while(rs1.next()){
									%>
									
											<option value="<%=rs1.getString(1)%>" <%if(rstemp.getString(3).equals(rs1.getString(1))){%> selected="selected"<%}%>><%=rs1.getString(2)%></option>
									<%}}%>
									</select>
								</td>
								<td width="36" bgcolor="#f8f8f8" class="value" align="center">
									<img <%if(trinhdovanhoa!=1){%> src="<%=contextPath%>/img/icon_tuchoi.gif"
									<%}else{%>src="<%=contextPath%>/img/icon_chapnhan.gif"<%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.hocvan")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%
									String tdhv = rs.getString(1);
									if(tdhv==null || tdhv.equals("null")){%>
											
									<%} else {%> <%=rs.getString(2)%>	
								<%}%>								</td>
								<td bgcolor="#CCCCCC"></td>
								<td width="294" bgcolor="#FFF7E7" class="value">
									<select name="trinhdohocvan" <%if(trinhdohocvan!=1){%> style="display:none;"<%}%>>
									
									<%
										String strSqlhocvan = "select EDU_LEVEL_NO, EDU_LEVEL_NAME from HR_EDU_LEVEL";
										//java.sql.Statement st1=conn.createStatement();
										rs1=st1.executeQuery(strSqlhocvan);
										if(rstemp.getString(1) == null || rstemp.getString(1).equals("null")){
									%>
											<option value="" selected>--------*--------</option>
									<%
											while(rs1.next()){ 
									%>
										<option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%></option>
									<%}}else {
											while(rs1.next()){
									%>
									
											<option value="<%=rs1.getString(1)%>" <%if(rstemp.getString(1).equals(rs1.getString(1))){%> selected="selected"<%}%>><%=rs1.getString(2)%></option>
									<%}}%>
									</select>
								</td>
								<td width="36" align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(trinhdohocvan!=1){%> src="<%=contextPath%>/img/icon_tuchoi.gif"
									<%}else{%>src="<%=contextPath%>/img/icon_chapnhan.gif"<%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.namtotnghiep")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(8)==null || rs.getString(8).equals("null")){%><%}else{%><%=rs.getInt(8) %><%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input name="namtotnghiep" <%if(namtotnghiep!=1){%> readonly="true"<%} if(rstemp.getString(8)==null || rstemp.getString(8).equals("null")){%> value=""<%}else{%>value="<%=rstemp.getInt(8)%>"<%}%> size=6 class="textbox">
										<img <%if(namtotnghiep!=1){%> disabled="disabled"<%}%> onclick="return showCalendar('btnnamtotnghiep','namtotnghiep', '%Y', false);" align="absmiddle" id="btnnamtotnghiep" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("tdnl.namtotnghiep")%>'>	
								</td>
								<td width="36" align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(namtotnghiep!=1){%> src="<%=contextPath%>/img/icon_tuchoi.gif"
									<%}else{%>src="<%=contextPath%>/img/icon_chapnhan.gif"<%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.nghenghiep")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%
									String nn = rs.getString(6);
									if(nn == null || nn.equals("null")){%>
										
									<%} else {%><%=rs.getString(7)%>
								<%}%>								</td>
								<td bgcolor="#CCCCCC"></td>
								<td width="294" bgcolor="#FFF7E7" class="value">
									<select name="nghenghiep" <%if(nghenghiep!=1){%> style="display:none;"<%}%>>
									
									<%
										String strSqlnghenghiep = "select CAREER_NO, CAREER_NAME from HR_CAREER";
										//java.sql.Statement st1=conn.createStatement();
										rs1=st1.executeQuery(strSqlnghenghiep);
										if(rstemp.getString(6) == null || rstemp.getString(6).equals("null")){
									%>
											<option value="" selected>--------*--------</option>
									<%
											while(rs1.next()){ 
									%>
										<option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%></option>
									<%}}else {
											while(rs1.next()){
									%>
									
											<option value="<%=rs1.getString(1)%>" <%if(rstemp.getString(6).equals(rs1.getString(1))){%> selected="selected"<%}%>><%=rs1.getString(2)%></option>
									<%}}rs1.close();st1.close();%>
									</select>
								</td>
								<td width="36" align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(nghenghiep!=1){%> src="<%=contextPath%>/img/icon_tuchoi.gif"
									<%}else{%>src="<%=contextPath%>/img/icon_chapnhan.gif"<%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.sotruong")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%
									String stct = rs.getString(5);
									if(stct==null || stct.equals("null")){%> 
									<%} else {%><%=rs.getString(5) %> <%}%>							  	</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value" align="left">
									<input type="text" name="sotruongcongtac" <%if(rstemp.getString(5)==null || rstemp.getString(5).equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString(5)%>"<%} if(sotruongcongtac!=1){%> readonly="true"<%}%>  />
								</td>
							 	<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(sotruongcongtac!=1){%> src="<%=contextPath%>/img/icon_tuchoi.gif"
									<%}else{%>src="<%=contextPath%>/img/icon_chapnhan.gif"<%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.launhat")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%
									String cvln = rs.getString(9);
									if(cvln==null || cvln.equals("null")){%>
										 <%} 
									else {%><%=rs.getString(9)%>  
								<%}%>								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value" align="left">
									<input type="text" name="congvieclaunhat" <%if(rstemp.getString(9)==null || rstemp.getString(9).equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString(9)%>"<%} if(congvieclaunhat!=1){%> readonly="true"<%}%>  />
								</td>
							 	<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(congvieclaunhat!=1){%> src="<%=contextPath%>/img/icon_tuchoi.gif"
									<%}else{%>src="<%=contextPath%>/img/icon_chapnhan.gif"<%}%>>								</td>
							</tr>
							<tr><td bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des" colspan="5">
									<input name="update"  type="button" <%if(trinhdovanhoa==1 || trinhdohocvan==1 || namtotnghiep==1 || nghenghiep==1 || sotruongcongtac==1 || congvieclaunhat==1){%><%}else{%> disabled="disabled"<%}%> value="<%=_res("udtdnl.submit")%>" Onclick="javascript:funcPostData()">
								</td>
							</tr>
							</form>
							<%}rstemp.close();sttemp.close();}%>
						</table>					</td>
				</tr>			
				
				<tr>
				  	<td>
				  	<table width="790" align="center" border="0" cellspacing="1" cellpadding="2" bgcolor="#007D93">
                    <tr>
                      	<td colspan="6" align="left" class="title1" bgcolor="#007D93">&nbsp;<%=_res("tdnl.ngoaingu")%></td>
                    </tr>
					<form name="frmDeleteTdnn" action="<%=contextPath%>/user/DeleteController.do" method="post">
						<input type="hidden" name="state" value="DeleteTdnn">
						<input type="hidden" name="ma_nn">
						<input type="hidden" name="ma_trinhdonn">
						<input type="hidden" name="manv" value="<%=username%>">
                    <tr>
                      	<td width="13%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.tenngoaingu")%></td>
                      	<td width="11%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.trinhdo")%></td>
                      	<td width="11%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.ngaycap")%></td>
                      	<td width="39%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.noicap")%></td>
                      	<td width="17%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.thanhtich")%></td>
                      	<td width="9%" align="center" bgcolor="#f8f8f8" class="des"></td>
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
								ma_ngoaingu1=rs.getString(1);
						%>
                    <tr>
                      	<td bgcolor="#FFF7E7" class="value"><%=rs.getString(2)%></td>
                      	<td bgcolor="#FFF7E7" class="value"><%=rs.getString(4)%></td>
                      	<td bgcolor="#FFF7E7" class="value">
					  <%if(rs.getDate(5)!=null){%>
                      	<%=SString.toString(rs.getDate(5),"dd/MM/yyyy")%>
                      <%} else {%><%}%>
						</td>
                      	
						<td bgcolor="#FFF7E7" class="value"><%if(rs.getString(6)==null || rs.getString(6).equals("null")){%>
                         <%} else {%>
                        	<%=rs.getString(6)%>
                        <%}%>
						</td>
                      	<td bgcolor="#FFF7E7" class="value"><%if(rs.getString(7)==null || rs.getString(7).equals("null")){%>
                          <%} else {%>
                        <%=rs.getString(7)%>
                        <%}%></td>
                      	<td bgcolor="#FFF7E7" class="value" align="center">
					  <%if(trinhdongoaingu==1){
					  		if(rs.getInt(9)==0){%>
					  		<a class="links" href="javascript:funcDeleteTdnn('<%=rs.getString(1)%>','<%=rs.getString(3)%>');" title="<%=_res("udtdnl.delete")%>">
								<img border="0" src="<%=contextPath%>/img/delete.gif" /></a> - 
							<a class="links" href="<%=contextPath%>/user/i_edittrinhdonnfrm.jsp?ma_ngoaingu=<%=rs.getString(1)%>&ma_trinhdonn=<%=rs.getString(3)%>" title="<%=_res("udtdnl.update")%>">
								<img border="0" src="<%=contextPath%>/img/edit.gif" /></a>
					  <%}}%>
					  	</td>
                   </tr>
                    <%}} else {%>
                   <tr>
                      	<td bgcolor="#FFF7E7" class="value">&nbsp;</td>
                      	<td bgcolor="#FFF7E7" class="value"></td>
                      	<td bgcolor="#FFF7E7" class="value"></td>
                      	<td bgcolor="#FFF7E7" class="value"></td>
                      	<td bgcolor="#FFF7E7" class="value"></td>
                      	<td bgcolor="#FFF7E7" class="value"></td>
                    </tr>
                    <%}%>
					</form>
					
					<tr>
						<td colspan="6">
							<div width="790" align="center" id="divEditTdnn" style="display:none">
									
								
							</div>
						</td>
					</tr>
					<%if(trinhdongoaingu==1){%>
					<tr>
						<td bgcolor="#CCCCCC" colspan="6" class="des">
							<%=_res("udtdnl.addtdnn")%> &nbsp;
							<a href="javascript:showHidedivtask('divAddTdnn','imgTdnn')">
							<img border="0" id="imgTdnn" src="<%=contextPath%>/img/down.gif"></a>
						</td>
					</tr>
							
					
					<tr>
						<td colspan="6" bgcolor="#FFFFFF">
						<div width="790" align="center" id="divAddTdnn" style="display:none">
							<table align="center" width="770" border="0" cellpadding=6 cellspacing=1 style="border:1px solid #CCCCCC;" >
							<form name="addTdnn" action="<%=contextPath%>/user/RegistryController.do" method="post">
								<input type="hidden" name="state" value="addTdnn">
								<input type="hidden" name="username" value="<%=username%>" />
								<tr>
									<td width="97" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.tenngoaingu")%></td>
									<td width="227" bgcolor="#FFF7E7" class="value">
										<%
											String strSqlLanguage = "select * from HR_LANGUAGE";
											//String strSqlLanguage_Level = "select * from HR_LANGUAGE_LEVEL where HR_LANGUAGE_LEVEL";
											rs=st.executeQuery(strSqlLanguage);
											String ma_ngoaingu=null;
										%>
										<select name="ma_ngoaingu" onChange="javascript:callTrinhdonn();">
											<%
											int l=0;
											while(rs.next()){
											if(l==0){ma_ngoaingu = rs.getString(1);}
											%>											
												<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
											<%
											 l++;
											 }%>
										</select>
								  	</td>
									<td width="103" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.trinhdo")%></td>
									<td width="288" bgcolor="#FFF7E7" class="value">
										<%
											String strSqlLanguage_Level = "select * from HR_LANGUAGE_LEVEL where HR_LANGUAGE_LEVEL.language_no = '"+ma_ngoaingu+"'";
											rs=st.executeQuery(strSqlLanguage_Level);
										%>
										<div id="div_trinhdonn">
											<select name="ma_trinhdonn">
												<%while(rs.next()){%>
													<option value="<%=rs.getString(2)%>"><%=rs.getString(3)%></option>
												<%}%>
											</select>
										</div>
								  </td>
								</tr>
								<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
								<tr>
									<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.ngaycap")%></td>
									<td width="288" bgcolor="#FFF7E7" class="value">
										<input name="ngaycaptdnn" value="<%=SString.toString(new java.util.Date(),"dd/MM/yyyy")%>" size=6 class="textbox">
										<img onclick="return showCalendar('btngaycaptdnn','ngaycaptdnn', '%d/%m/%Y', false);" align="absmiddle" id="btngaycaptdnn" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='ngaycap'></td>
									<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.noicap")%></td>
									<td bgcolor="#FFF7E7" class="value">
										<input type="text" name="noicaptdnn" size="40">
									</td>
								</tr>
								<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
								<tr>
									<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.thanhtich")%></td>
									<td bgcolor="#FFF7E7" class="value">
										<input type="text" name="thanhtichtdnn">
									</td>
									<td bgcolor="#f8f8f8" class="des"></td>
									<td bgcolor="#FFF7E7" class="value"></td>
								</tr>
								<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
								<tr>
									<td bgcolor="#f8f8f8" colspan="4"><input name="buttontdnn" type="button" value="<%=_res("udtdnl.add")%>" Onclick="javascript:funcPostDataTdnn();"></td>
								</tr>
								</form>
							</table>
							</div>
						</td>
					</tr>
					<%}%>		
									
					
                  </table>
				</tr>
				<tr>
					<td>
						<table width="790" align="center" border="0" cellspacing="1" cellpadding="2" bgcolor="#007D93">
							<tr>
								<td colspan="6" align="left" class="title1" bgcolor="#007D93">&nbsp;<%=_res("tdnl.kynang")%></td>
							</tr>
							<form name="frmDeleteTdkn" action="<%=contextPath%>/user/DeleteController.do" method="post">
								<input type="hidden" name="state" value="DeleteTdkn">
								<input type="hidden" name="ma_kn">
								<input type="hidden" name="ma_trinhdokn">
								<input type="hidden" name="manv" value="<%=username%>">
							<tr>
								<td width="13%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.tenkynang")%></td>								
								<td width="11%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.trinhdo")%></td>
								<td width="11%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.ngaycap")%></td>
								<td width="39%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.noicap")%></td>
								<td width="17%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.thanhtich")%></td>
								<td width="9%" align="center" bgcolor="#f8f8f8" class="des"></td>
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
								<td bgcolor="#FFF7E7" class="value" align="center">
								<%if(trinhdokynang==1){
									if(rs.getInt(9)==0){%>
									<a class="links" href="javascript:funcDeleteTdkn('<%=rs.getString(1)%>','<%=rs.getString(3)%>');" title="<%=_res("udtdnl.delete")%>">
										<img border="0" src="<%=contextPath%>/img/delete.gif" /></a> - 
									<a class="links" href="<%=contextPath%>/user/i_edittrinhdoknfrm.jsp?ma_kynang=<%=rs.getString(1)%>&ma_trinhdokn=<%=rs.getString(3)%>" title="<%=_res("udtdnl.update")%>">
								<img border="0" src="<%=contextPath%>/img/edit.gif" /></a>
								<%}}%>
								</td>
							</tr>
							<%}} else {%>
							<tr>
								<td bgcolor="#FFF7E7" class="value">&nbsp;</td>
								<td bgcolor="#FFF7E7" class="value"></td>
								<td bgcolor="#FFF7E7" class="value">								</td>
								<td bgcolor="#FFF7E7" class="value">									</td>
								<td bgcolor="#FFF7E7" class="value">									</td>
								<td bgcolor="#FFF7E7" class="value"></td>
							</tr>
							<%}%>
							</form>
							<%if(trinhdokynang==1){%>
							<tr>
								<td bgcolor="#CCCCCC" colspan="6" class="des">
									<%=_res("udtdnl.addtdkn")%> &nbsp;
									<a href="javascript:showHidedivtask('divAddTdkn','imgTdkn')">
									<img border="0" id="imgTdkn" src="<%=contextPath%>/img/down.gif"></a>
								</td>
							</tr>
							<tr>
								<td colspan="6" bgcolor="#FFFFFF">
								<div width="790" align="center" id="divAddTdkn" style="display:none">
								<table align="center" width="770" border="0" cellpadding=6 cellspacing=1 style="border:1px solid #CCCCCC;" >
									<form name="addTdkn" action="<%=contextPath%>/user/RegistryController.do" method="post">
										<input type="hidden" name="state" value="addTdkn">
										<input type="hidden" name="username" value="<%=username%>" />
										<tr>
											<td width="97" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.tenkynang")%></td>
											<td width="227" bgcolor="#FFF7E7" class="value">
												<%
													String strSqlSkill = "select * from HR_SKILL";
													//String strSqlLanguage_Level = "select * from HR_LANGUAGE_LEVEL where HR_LANGUAGE_LEVEL";
													rs=st.executeQuery(strSqlSkill);
													String ma_kynang=null;
												%>
												<select name="ma_kynang" onChange="javascript:callTrinhdokn();">
													<%
													int m=0;
													while(rs.next()){
													if(m==0){ma_kynang = rs.getString(1);}
													%>											
														<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
													<%
													 m++;
													 }%>
												</select>
										  	</td>
											<td width="103" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.trinhdo")%></td>
											<td width="288" bgcolor="#FFF7E7" class="value">
												<%
													String strSqlSkill_Level = "select * from HR_SKILL_LEVEL where HR_SKILL_LEVEL.skill_no = '"+ma_kynang+"'";
													rs=st.executeQuery(strSqlSkill_Level);
												%>
												<div id="div_trinhdokn">
													<select name="ma_trinhdokn">
														<%while(rs.next()){%>
															<option value="<%=rs.getString(2)%>"><%=rs.getString(3)%></option>
														<%}%>
													</select>
												</div>
										  </td>
										</tr>
										<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
										<tr>
											<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.ngaycap")%></td>
											<td width="288" bgcolor="#FFF7E7" class="value">
												<input name="ngaycaptdkn" value="<%=SString.toString(new java.util.Date(),"dd/MM/yyyy")%>" size=6 class="textbox">
												<img onclick="return showCalendar('btngaycaptdnn','ngaycaptdnn', '%d/%m/%Y', false);" align="absmiddle" id="btngaycaptdnn" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='ngaycap'></td>
											<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.noicap")%></td>
											<td bgcolor="#FFF7E7" class="value">
												<input type="text" name="noicaptdkn" size="40">
											</td>
										</tr>
										<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
										<tr>
											<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.thanhtich")%></td>
											<td bgcolor="#FFF7E7" class="value">
												<input type="text" name="thanhtichtdkn">
											</td>
											<td bgcolor="#f8f8f8" class="des"></td>
											<td bgcolor="#FFF7E7" class="value"></td>
										</tr>
										<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
										<tr>
											<td bgcolor="#f8f8f8" colspan="4"><input name="buttontdkn" type="button" value="<%=_res("udtdnl.add")%>" Onclick="javascript:funcPostDataTdkn();"></td>
										</tr>
										</form>
									</table>
									</div>
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
								<td colspan="6" align="left" class="title1" bgcolor="#007D93" ><%=_res("tdnl.chuyenmonkhac")%></td>
							</tr>
							<form name="frmDeleteCm" action="<%=contextPath%>/user/DeleteController.do" method="post">
								<input type="hidden" name="state" value="DeleteCmk">
								<input type="hidden" name="ma_cm">
								<input type="hidden" name="ma_trinhdocm">
								<input type="hidden" name="manv" value="<%=username%>">
							<tr>
								<td width="13%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.tenchuyenmon")%></td>								
								<td width="11%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.trinhdo")%></td>
								<td width="11%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.ngaycap")%></td>
								<td width="39%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.noicap")%></td>
								<td width="17%" align="center" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.thanhtich")%></td>
								<td width="9%" align="center" bgcolor="#f8f8f8" class="des"></td>
							</tr>
						<%
							String strSqlCmk = ("select * from WEB_XEM_CHUYENMON_KHAC('"+username+"')");
							//java.sql.Statement sttcmk=conn.createStatement();
							rs = st.executeQuery(strSqlCmk);
							int k = 0;
							while(rs.next()){
								k++;
							}
							if(k!=0){
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
								<td bgcolor="#FFF7E7" class="value" align="center">
									<%
										if(trinhdochuyenmon==1){
											if(rs.getInt(9)==0){%>
									<a class="links" href="javascript:funcDeleteCm('<%=rs.getString(1)%>','<%=rs.getString(3)%>');" title="<%=_res("udtdnl.delete")%>">
										<img border="0" src="<%=contextPath%>/img/delete.gif" /></a> - 
									<a class="links" href="<%=contextPath%>/user/i_edittrinhdocmfrm.jsp?ma_chuyenmon=<%=rs.getString(1)%>&ma_trinhdocm=<%=rs.getString(3)%>" title="<%=_res("udtdnl.update")%>">
								<img border="0" src="<%=contextPath%>/img/edit.gif" /></a>
								<%}}%>
								</td>
							</tr>
							<%} } else {
							%>
							<tr>
								<td bgcolor="#FFF7E7" class="value">&nbsp;</td>
								<td bgcolor="#FFF7E7" class="value"></td>
								<td bgcolor="#FFF7E7" class="value">								</td>
								<td bgcolor="#FFF7E7" class="value">									</td>
								<td bgcolor="#FFF7E7" class="value">									</td>
								<td bgcolor="#FFF7E7" class="value"></td>
							</tr>
							<%}%>
							</form>
							
							
							<%if(trinhdochuyenmon==1){%>
							<tr>
								<td bgcolor="#CCCCCC" colspan="6" class="des">
									<%=_res("udtdnl.addtdcm")%> &nbsp;
									<a href="javascript:showHidedivtask('divAddTdcm','imgTdcm')">
									<img border="0" id="imgTdcm" src="<%=contextPath%>/img/down.gif"></a>
								</td>
							</tr>
							<tr>
								<td colspan="6" bgcolor="#FFFFFF">
						<div width="790" align="center" id="divAddTdcm" style="display:none">
							<table align="center" width="770" border="0" cellpadding=6 cellspacing=1 style="border:1px solid #CCCCCC;" >
									<form name="addTdcm" action="<%=contextPath%>/user/RegistryController.do" method="post">
										<input type="hidden" name="state" value="addTdcm">
										<input type="hidden" name="username" value="<%=username%>" />
										<tr>
											<td width="97" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.tenchuyenmon")%></td>
											<td width="227" bgcolor="#FFF7E7" class="value">
												<%
													String strSqlChuyenmon = "select * from HR_EDU_FIELD";
													//String strSqlLanguage_Level = "select * from HR_LANGUAGE_LEVEL where HR_LANGUAGE_LEVEL";
													rs=st.executeQuery(strSqlChuyenmon);
													String ma_chuyenmon=null;
												%>
												<select name="ma_chuyenmon" onChange="javascript:callTrinhdocm();">
													<%
													int n=0;
													while(rs.next()){
													if(n==0){ma_chuyenmon = rs.getString(1);}
													%>											
														<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
													<%
													 n++;
													 }%>
												</select>
										  	</td>
											<td width="103" bgcolor="#f8f8f8" class="des"><%=_res("tdnl.trinhdo")%></td>
											<td width="288" bgcolor="#FFF7E7" class="value">
												<%
													String strSqlChuyenmon_Level = "select * from HR_FIELD_LEVEL where HR_FIELD_LEVEL.edu_field_no = '"+ma_chuyenmon+"'";
													rs=st.executeQuery(strSqlChuyenmon_Level);
												%>
												<div id="div_trinhdocm">
													<select name="ma_trinhdocm">
														<%while(rs.next()){%>
															<option value="<%=rs.getString(2)%>"><%=rs.getString(3)%></option>
														<%}%>
													</select>
												</div>
										  </td>
										</tr>
										<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
										<tr>
											<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.ngaycap")%></td>
											<td width="288" bgcolor="#FFF7E7" class="value">
												<input name="ngaycaptdcm" value="<%=SString.toString(new java.util.Date(),"dd/MM/yyyy")%>" size=6 class="textbox">
												<img onclick="return showCalendar('btngaycaptdnn','ngaycaptdnn', '%d/%m/%Y', false);" align="absmiddle" id="btngaycaptdnn" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='ngaycap'></td>
											<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.noicap")%></td>
											<td bgcolor="#FFF7E7" class="value">
												<input type="text" name="noicaptdcm" size="40">
											</td>
										</tr>
										<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
										<tr>
											<td bgcolor="#f8f8f8" class="des"><%=_res("tdnl.thanhtich")%></td>
											<td bgcolor="#FFF7E7" class="value">
												<input type="text" name="thanhtichtdcm">
											</td>
											<td bgcolor="#f8f8f8" class="des"></td>
											<td bgcolor="#FFF7E7" class="value"></td>
										</tr>
										<tr><td height="1" bgcolor="#CCCCCC" colspan="4"></td></tr>
										<tr>
											<td bgcolor="#f8f8f8" colspan="4"><input name="buttontdcm" type="button" value="<%=_res("udtdnl.add")%>" Onclick="javascript:funcPostDataTdcm();"></td>
										</tr>
										</form>
									</table>
									</div>
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
	rs.close();
								st.close();
								conn.commit();
	}catch(Exception e){
	      //e.printStackTrace();
	      //out.println(e.getMessage());
	}finally{
		if(conn != null)
			conn.setAutoCommit(true);
		dbConnManager.freeConnection("topmostread", conn);
	}
%>

<script language="javascript">

function loadFragmentInToElement(fragment_url, element_id, page) {
      var element = document.getElementById(element_id);
      var xmlhttp;

		element.innerHTML = '<div align=center><em><img src="<%=contextPath%>/img/loading.gif"></em></div>';
        if (window.XMLHttpRequest) {
          xmlhttp = new XMLHttpRequest();
          // branch for IE/Windows ActiveX version
      } else if (window.ActiveXObject) {
          xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }
      xmlhttp.open("GET", fragment_url,true);
      xmlhttp.onreadystatechange = function() {
          if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
              element.innerHTML = xmlhttp.responseText;
              currentpage = page;
          }
      }
      xmlhttp.send(null);
  }


function is_int(fieldVal)
{
 var intMASK = /^(d{1,10})$/ ;
 var matchArray = fieldVal.match(intMASK);

 if (matchArray==null)
 {
  alert("Not an Integer");
  return false;
 }

 return true;
}

function doIt()
{
var val = document.form1.id.value;
return is_int(val);
} 


function funcPostDataTdcm(){
		 var dm = document.addTdcm;
		 if(dm.noicaptdcm.value!='' && dm.noicaptdcm.value.length>42){
		 	alert('<%=_res("udtdnl.alert.lengthnoicaptrinhdo")%>')
			dm.noicaptdcm.focus();
		 }
		 else if(dm.thanhtichtdcm.value!='' && dm.thanhtichtdcm.value.length>42){
		 	alert('<%=_res("udtdnl.alert.lengththanhtich")%>')
			dm.thanhtichtdcm.focus();
		 }
		 else if (dm.ngaycaptdcm.value!=''){
		 	if(checkDate(dm.ngaycaptdcm, true)!='TRUE'){
		  		alert('<%=_res("msg_datefrom2")%>');
				dm.ngaycaptdcm.focus();
		  	}
		   	else{
			dm.submit();
			}
		}
		else{
			dm.submit();
		}
}function funcPostDataTdkn(){
		 var dm = document.addTdkn;
		 if(dm.noicaptdkn.value!='' && dm.noicaptdkn.value.length>42){
		 	alert('<%=_res("udtdnl.alert.lengthnoicaptrinhdo")%>')
			dm.noicaptdkn.focus();
		 }
		 else if(dm.thanhtichtdkn.value!='' && dm.thanhtichtdkn.value.length>42){
		 	alert('<%=_res("udtdnl.alert.lengththanhtich")%>')
			dm.thanhtichtdkn.focus();
		 }
		 else if (dm.ngaycaptdkn.value!=''){
		 	if(checkDate(dm.ngaycaptdkn, true)!='TRUE'){
		  		alert('<%=_res("msg_datefrom2")%>');
				dm.ngaycaptdkn.focus();
		  	}
		   	else{
			dm.submit();
			}
		}
		else{
			dm.submit();
		}
}

function funcPostDataTdnn(){
		 var dm = document.addTdnn;
		 if(dm.noicaptdnn.value!='' && dm.noicaptdnn.value.length>42){
		 	alert('<%=_res("udtdnl.alert.lengthnoicaptrinhdo")%>')
			dm.noicaptdnn.focus();
		 }
		 else if(dm.thanhtichtdnn.value!='' && dm.thanhtichtdnn.value.length>42){
		 	alert('<%=_res("udtdnl.alert.lengththanhtich")%>')
			dm.thanhtichtdnn.focus();
		 }
		 else if (dm.ngaycaptdnn.value!=''){
		 	if(checkDate(dm.ngaycaptdnn, true)!='TRUE'){
		  		alert('<%=_res("msg_datefrom2")%>');
				dm.ngaycaptdnn.focus();
		  	}
		   	else{
			dm.submit();
			}
		}
		else{
			dm.submit();
		}
}


function funcPostData(){
		  var dm = document.frmUpdate;
		  var nam = dm.namtotnghiep.value
		 	if (dm.sotruongcongtac.value!='' && dm.sotruongcongtac.value.length>85){
				alert('<%=_res("udtdnl.alert.lengthsotruongcongtac")%>');
				dm.sotruongcongtac.focus();
			}
			else if(dm.congvieclaunhat.value!='' && dm.congvieclaunhat.value.length>85){
				alert('<%=_res("udtdnl.alert.lengthcongvieclaunhat")%>');
				dm.congvieclaunhat.focus();
			}
			else if(nam!=""){
				if (nam.length!=4){
					alert('<%=_res("udtdnl.alert.lengthnamtotnghiep")%>');
					dm.namtotnghiep.focus();
				}
				
				else if(isNaN(nam)){
					alert('<%=_res("udtdnl.alert.checknamtotnghiep")%>');
					dm.namtotnghiep.focus();
				}
				else{
					dm.submit();
				}
			}
			
			else{
				dm.submit();
			}
					  
	 }

	function showHidedivtask(div,image){
		var image=document.getElementById(image);
		var temp=document.getElementById(div).style.display;
		if(temp == 'none'){
			image.src="<%=contextPath%>/img/up.gif";
			document.getElementById(div).style.display="block";
		}else{
			image.src="<%=contextPath%>/img/down.gif";
			document.getElementById(div).style.display="none";
	}
}

	function funcDeleteTdnn(value1,value2){
		var dm = document.frmDeleteTdnn;
		var x=window.confirm('<%=_res("pn.confirmxoa")%>');
		if(x){
			dm.ma_nn.value = value1;
			dm.ma_trinhdonn.value = value2;
			dm.submit();
		}
	}
	function funcDeleteTdkn(value1,value2){
		var dm = document.frmDeleteTdkn;
		var x=window.confirm('<%=_res("pn.confirmxoa")%>');
		if(x){
			dm.ma_kn.value = value1;
			dm.ma_trinhdokn.value = value2;
			dm.submit();
		}
	}
	
	function funcDeleteCm(value1,value2){
		var dm = document.frmDeleteCm;
		var x=window.confirm('<%=_res("pn.confirmxoa")%>');
		if(x){
			dm.ma_cm.value = value1;
			dm.ma_trinhdocm.value = value2;
			dm.submit();
		}
	}
	
	function callTrinhdonn(){
		var ma_ngoaingu = document.addTdnn.ma_ngoaingu.value;
		loadFragmentInToElement("i_addtrinhdonn.jsp?ma_ngoaingu="+ma_ngoaingu, "div_trinhdonn");
		//alert(ma_ngoaingu);
	}
	function callTrinhdokn(){
		var ma_kynang = document.addTdkn.ma_kynang.value;
		loadFragmentInToElement("i_addtrinhdokn.jsp?ma_kynang="+ma_kynang, "div_trinhdokn");
		//alert(ma_ngoaingu);
	}
	function callTrinhdocm(){
		var ma_chuyenmon = document.addTdcm.ma_chuyenmon.value;
		loadFragmentInToElement("i_addtrinhdocm.jsp?ma_chuyenmon="+ma_chuyenmon, "div_trinhdocm");
		//alert(ma_ngoaingu);
	}
	function callEditTrinhdonn(ma_ngoaingu1,ma_trinhdonn1){
		//var ma_chuyenmon = document.addTdcm.ma_chuyenmon.value;
		document.getElementById('divEditTdnn').style.display="block";
		loadFragmentInToElement("i_edittrinhdongoaingu.jsp?ma_ngoaingu="+ma_ngoaingu1+"&ma_trinhdonn="+ma_trinhdonn1, "divEditTdnn");
		//alert(ma_ngoaingu);
	}
</script>