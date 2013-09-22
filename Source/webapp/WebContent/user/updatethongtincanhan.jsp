<script language="JavaScript" src="<%=contextPath%>/jscript/changeimage.js"></script>
<script language="JavaScript" src="<%=contextPath%>/jscript/common_utils.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/dateutil_vi.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/jscalendar/calendar.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/jscalendar/calendar-setup.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/jscalendar/calendar-<%=language%>.js"></script>
<style type="text/css"> @import url("<%=contextPath%>/jscript/jscalendar/calendar-system.css"); 

</style>

<script language="JavaScript" src="<%=contextPath%>/user/showhidettcn.js"></script>

<%
	//String sqlcheck = ("select * from HR_CONFIG_EDIT_EMPLOYEE");
	String sqlcheck = ("select * from HR_CAUHINH_SUATHONGTIN('"+username+"')");
	String sqlttcn = ("select * from WEB_XEM_THONGTIN_NHANVIEN('"+username+"')");
	String sqlttcn_temp = ("select * from WEB_XEM_THONGTIN_NHANVIEN_TEMP('"+username+"')");
	java.sql.Connection conn = null;
	//Hr_NationModel model = new Hr_NationModel();
	//List arr = Hr_NationModel.getDsNation();
	//Iterator list = arr.iterator();
	
	try{
	    conn = dbConnManager.getConnection("topmostread");
		conn.setAutoCommit(false);
		java.sql.Statement st=conn.createStatement();
		//java.sql.PreparedStatement st=conn.prepareStatement(sqlcheck);
		//ResultSet rs = st.executeQuery();
		ResultSet rs = st.executeQuery(sqlcheck);
		int manhanvien = 0; int masothenhanvien = 0;
		int ho = 0; int tendem = 0; int ten = 0; int gioitinh1 = 0; int ngaysinh = 0;
		int honnhan = 0; int chieucao = 0; int cannang = 0; int dauvetdacbiet = 0;
		int cmnd = 0; int ngaycapcmnd = 0; int noicapcmnd = 0; int passport = 0; int ngaycappassport = 0;
		int noicappassport = 0; int quoctich = 0; int dantoc = 0; int tongiao = 0; int noisinh = 0; int quequan = 0; 
		int xuatthan = 0; int dienthoai = 0; int mobile = 0; int email = 0; int website = 0; 
		int dcthuongtru = 0; int dctamtru = 0; int dclienhe = 0; int ngayvaodang = 0; int machucvudang = 0;
		int ngayvaodoan = 0; int machucvudoan = 0; int ngayvaocdoan = 0; int machucvucdoan = 0; int matiente = 0;
		int taikhoan = 0; int nganhang = 0; int masothue = 0; int coquanthue = 0;
		
		if(rs.next()){
			ho = rs.getInt(3); tendem = rs.getInt(2); ten = rs.getInt(1);
			gioitinh1 = rs.getInt(4); ngaysinh = rs.getInt(5); honnhan = rs.getInt(6);
			chieucao = rs.getInt(34); cannang = rs.getInt(35); dauvetdacbiet = rs.getInt(36);
			cmnd = rs.getInt(7); ngaycapcmnd = rs.getInt(8); noicapcmnd = rs.getInt(9);
			passport = rs.getInt(28); ngaycappassport = rs.getInt(29); noicappassport = rs.getInt(30);
			quoctich = rs.getInt(12); dantoc = rs.getInt(10); tongiao = rs.getInt(13); noisinh = rs.getInt(14);
			quequan = rs.getInt(15); xuatthan = rs.getInt(24); dcthuongtru = rs.getInt(18); dctamtru = rs.getInt(17);
			dclienhe = rs.getInt(16); dienthoai = rs.getInt(19); mobile = rs.getInt(20); email = rs.getInt(21);
			website = rs.getInt(23); ngayvaodang = rs.getInt(38); machucvudang = rs.getInt(39);
			ngayvaodoan = rs.getInt(40); machucvudoan = rs.getInt(41); ngayvaocdoan = rs.getInt(42); machucvucdoan = rs.getInt(43);
			matiente = rs.getInt(11); taikhoan = rs.getInt(25); nganhang = rs.getInt(26); masothue = rs.getInt(33);
			coquanthue = rs.getInt(34);
		}
		//rs.close();
		//System.out.print(ho);
		//ResultSet rs = st.executeQuery(sqlttcn);
		rs = st.executeQuery(sqlttcn);
		//File f;
	if(rs.next()){
		java.sql.Statement sttemp=conn.createStatement();
		ResultSet rstemp=sttemp.executeQuery(sqlttcn_temp);
		String hoten = rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4);
		int gioitinh = rs.getInt(5);
		if(rstemp.next()){
		//f = rs.getBlob(43);
		//byte[] b = rs.getBlob(43).getBytes(1, (int)rs.getBlob(43).length());
		//String txt = new String(b);
		//out.print(txt);
%>	
		<form name="frmUpdate" action="<%=contextPath%>/user/UpdateController.do" method="post">
			<input type="hidden" name="state" value="updatettcn">
			<input name="manv" type="hidden" value="<%=rs.getString(1)%>" />
			<input type="hidden" name="websitenv" <%if(rs.getString(29)==null || rs.getString(29).equals("null"))
									{%> value=""<%} else {%>value="<%=rs.getString(29)%>"<%}%>/>

			<table class="tablecontent" align="center">	
				<tr>
					<td><div id="headercontent" class="title"><%=_res("ttcn.updatehosonhanvien")%></div></td>
				</tr>
				<tr>
					<td>
						<table width="790" cellpadding=6 cellspacing=1 style="border:1px solid #CCCCCC;" align="center">
							<tr height="25px;">
							  	<td width="124" bgcolor="#f8f8f8" class="des"><%=_res("ttcn.manhanvien")%></td>
						  	  	<td width="269" bgcolor="#FFF7E7" class="value"><%=rs.getString(1)%></td>
								<td width="0" bgcolor="#CCCCCC"></td>
								<td width="293" bgcolor="#FFF7E7" class="value">&nbsp;</td>
								<td width="36" bgcolor="#f8f8f8" class="value">&nbsp;</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr height="25px;">	
							  	<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.masothenhanvien")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(30) == null || rs.getString(30).equals("null")){%>
										
									<%} else {%><%=rs.getString(30)%> <%}%>
							  	</td>
							  	<td bgcolor="#CCCCCC"></td>
							  	<td bgcolor="#FFF7E7" class="value">&nbsp;</td>
								<td bgcolor="#f8f8f8" class="value">&nbsp;</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.tennhanvien")%></td>
								<td bgcolor="#FFF7E7" class="value"><%=hoten %></td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input size="7" type="text" name="honv" <%if(rstemp.getString(4)==null || rstemp.getString(4).equals("null")){%> value="" <%} else {%> value="<%=rstemp.getString(4)%>" <%}%> <%if(ho!=1){%> readonly="true" <%}%>> -  
									<input size="7" type="text" name="tendemnv" <%if(rstemp.getString(3)==null || rstemp.getString(3).equals("null")){%> value="" <%} else {%> value="<%=rstemp.getString(3)%>" <%}%> <%if(tendem!=1){%> readonly="true" <%}%>> - 
									<input size="7" type="text" name="tennv" <%if(rstemp.getString(2)==null || rstemp.getString(2).equals("null")){%> value="" <%} else {%> value="<%=rstemp.getString(2)%>" <%}%> <%if(ten!=1){%> readonly="true" <%}%>>
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value"><img <%if(ho!=1 && tendem!=1 && ten!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" <%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>> </td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr height="25px;">	
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.gioitinh")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(5)==null || rs.getString(5).equals("null")){%>
									<%} else {if(gioitinh ==1){ %><%=_res("ttcn.nam")%><%} else {%><%=_res("ttcn.nu")%><%}}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td  bgcolor="#FFF7E7" class="value" >
								<%if(rstemp.getString(5)==null || rstemp.getString(5).equals("null")){%>
									<select name="gioitinhnv" <%if(gioitinh1!=1){%> style="display:none;"<%}%>>
									  <option value=""<%out.print(" selected ");%>>------*------</option>
									  <option value="1">Nam</option>
									  <option value="0">N&#7919;</option>								
									</select>
								<%} else {%>
									<select name="gioitinhnv" <%if(gioitinh1!=1){%> style="display:none;"<%}%>>
									  <option value="1" <%if(rstemp.getInt(5)==1){out.print(" selected ");}%>>Nam</option>
									  <option value="0" <%if(rstemp.getInt(5)==0){out.print(" selected ");}%>>N&#7919;</option>								
									</select>
								<%}%>
								</td>
								<td align="center"  bgcolor="#f8f8f8" class="value" >
									<img <%if(gioitinh1!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" <%} 
									else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.ngaysinh")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate(6)==null){%>
										
									<%} else {%><%=SString.toString(rs.getDate(6),"dd/MM/yyyy")%><%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td width="293" bgcolor="#FFF7E7" class="value">
									<input type="text" size="7" name="ngaysinhnv" <%if(rstemp.getDate(6)==null){%> value=""
									<%} else {%>value="<%=SString.toString(rstemp.getDate(6),"dd/MM/yyyy")%>"<%} if(ngaysinh!=1){%> readonly="true"<%}%>>
									<img <%if(ngaysinh!=1){%> disabled="disabled" <%}%> name="btngaysinhnv" onclick="return showCalendar('btngaysinhnv','ngaysinhnv', '%d/%m/%Y', false);" align="absmiddle" id="btngaysinhnv" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("ttcn.ngaysinh")%>'>
							  </td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(ngaysinh!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" <%} 
									else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr height="25px;">
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.honnhan")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(7)==null || rs.getString(7).equals("null")){%>
										
									<%} else {%> <%=rs.getString(8) %> <%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rstemp.getString(7)==null || rstemp.getString(7).equals("null")){%>
									<select name="honnhannv" <%if(honnhan!=1){%>style="display:none;"<%}%>>
										<option value="" <%out.print(" selected ");%>>------------*------------</option>
									  	<option value="COGIADINH">C&oacute; gia &#273;&igrave;nh</option>
									  	<option value="DOCTHAN">&#272;&#7897;c th&acirc;n</option>
									  	<option value="KHAC">Kh&aacute;c</option>
									  	<option value="LIDI">Li d&#7883;</option>
									</select>
								<%} else {%>
									<select name="honnhannv" <%if(honnhan!=1){%>style="display:none;"<%}%>>
									  <option value="COGIADINH" <%if(rstemp.getString(7).equals("COGIADINH")){out.print(" selected ");}%>>C&oacute; gia &#273;&igrave;nh</option>
									  <option value="DOCTHAN" <%if(rstemp.getString(7).equals("DOCTHAN")){out.print(" selected ");}%>>&#272;&#7897;c th&acirc;n</option>
									  <option value="KHAC" <%if(rstemp.getString(7).equals("KHAC")){out.print(" selected ");}%>>Kh&aacute;c</option>
									  <option value="LIDI" <%if(rstemp.getString(7).equals("LIDI")){out.print(" selected ");}%>>Li d&#7883;</option>
									</select>
								<%}%>
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(honnhan!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>> </td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.chieucao")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%=rs.getDouble(45)%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="chieucaonv" value="<%=rstemp.getDouble(45)%>" <%if(chieucao!=1){%> readonly="true" <%}%> />
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(chieucao!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr height="25px;">
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.cannang")%></td>
								<td bgcolor="#FFF7E7" class="value"><%=rs.getDouble(46)%></td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="cannangnv" value="<%=rstemp.getDouble(46)%>" <%if(cannang!=1){%> readonly="true" <%}%>/>
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value"><img <%if(cannang!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.dauvetdacbiet")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(47)==null || rs.getString(47).equals("null")){%>
										
									<%} else {%> <%=rs.getString(47) %> <%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="dauvetdacbietnv" <%if(rstemp.getString(47)==null || rstemp.getString(47).equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString(47)%>"<%} if(dauvetdacbiet!=1){%> readonly="true"<%}%>  /></td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(dauvetdacbiet!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.socmnd")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(9)==null || rs.getString(9).equals("null")){%>
										
									<%} else {%><%=rs.getString(9) %> <%}%> -
									<%if(rs.getDate(10)==null){%>
										
									<%} else {%><%=SString.toString(rs.getDate(10),"dd/MM/yyyy") %> <%}%>	
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" size="7" name="cmndnv" <%if(rstemp.getString(9)==null || rstemp.getString(9).equals("null")){%> value="" 
										<%} else {%>value="<%=rstemp.getString(9) %>"<%} if(cmnd!=1){%> readonly="true"<%}%>  /> - 
									<input type="text" size="7" name="ngaycapcmndnv" <%if(rstemp.getDate(10)==null){%> value=""
										<%} else {%>value="<%=SString.toString(rstemp.getDate(10),"dd/MM/yyyy")%>"<%} if(ngaycapcmnd!=1){%> readonly="true"<%}%>>
									<img <%if (ngaycapcmnd!=1){%> disabled="disabled"<%}%> name="btngccmnd" onclick="return showCalendar('btngccmnd','ngaycapcmndnv', '%d/%m/%Y', false);" align="absmiddle" id="btngccmnd" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("tdnl.ngaycap")%>'>	
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(ngaycapcmnd!=1 && cmnd!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr height="25px;">
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.noicap")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(11)==null || rs.getString(11).equals("null")){%>
										
									<%} else {%><%=rs.getString(11) %> <%}%> 
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="noicapcmndnv" <%if(rstemp.getString(11)==null || rstemp.getString(11).equals("null")){%> value=""
										<%} else {%>value="<%=rstemp.getString(11)%>"<%} if(noicapcmnd!=1){%> readonly="true"<%}%>>
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(noicapcmnd!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.passport")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(37)==null || rs.getString(37).equals("null")){%>
										
									<%} else {%><%=rs.getString(37) %><%}%> -
									<%if(rs.getDate(38)==null){%>
										
									<%} else {%><%=SString.toString(rs.getDate(38),"dd/MM/yyyy") %><%}%>	 		
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" size="7" name="passportnv" <%if(rstemp.getString(37)==null || rstemp.getString(37).equals("null")){%> value="" 
										<%} else {%>value="<%=rstemp.getString(37) %>"<%} if(passport!=1){%> readonly="true"<%}%>  /> - 
									<input type="text" size="7" name="ngaycappassport" <%if(rstemp.getDate(38)==null){%> value=""
										<%} else {%>value="<%=SString.toString(rstemp.getDate(38),"dd/MM/yyyy")%>"<%} if(ngaycappassport!=1){%> readonly="true"<%}%>>
									<img <%if (ngaycappassport!=1){%> disabled="disabled"<%}%> name="btngcpassport" onclick="return showCalendar('btngcpassport','ngaycappassport', '%d/%m/%Y', false);" align="absmiddle" id="btngcpassport" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("tdnl.ngaycap")%>'>	
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(ngaycappassport!=1 && passport!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr height="25px;">
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.noicap")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(39)==null || rs.getString(39).equals("null")){%>
										
									<%} else {%><%=rs.getString(39)%> <%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="noicappassport" <%if(rstemp.getString(39)==null || rstemp.getString(39).equals("null")){%> value=""
										<%} else {%>value="<%=rstemp.getString(39)%>"<%} if(noicappassport!=1){%> readonly="true"<%}%>>
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(noicappassport!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
						</table>
					</td>
				</tr >
				<tr>
					<td>		
						<table align="center" width="790" cellpadding=6 cellspacing=1 style="border:1px solid #CCCCCC;">
							<tr>
								<td colspan="5" class="title1" bgcolor="#007D93">&nbsp;<%=_res("ttcn.thanhphanxuatthan")%></td>				
							</tr>
							<tr>
								<td width="126" bgcolor="#f8f8f8" class="des"><%=_res("ttcn.quoctich")%></td>
								<td width="266" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(17)==null || rs.getString(17).equals("null")){%>
										
							  <%} else {%><%=rs.getString(17)%><%}%>							  </td>
								<td width="0" bgcolor="#CCCCCC">								</td>
								<td width="294" bgcolor="#FFF7E7" class="value">
									<select name="quoctichnv" <%if(quoctich!=1){%> style="display:none;"<%}%>>
									<%
										String strSqlNation = ("select NATION_NO, NATION_NAME from HR_NATION order by  HR_NATION.nation_no asc");
										java.sql.Statement st1=conn.createStatement();
										ResultSet rs1=st1.executeQuery(strSqlNation);
										if(rstemp.getString(17)==null || rstemp.getString(17).equals("null")){
									%>
										<option value="" selected>--------*--------</option>
									<%
											while(rs1.next()){ 
									%>
										<option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%></option>
									<%}} else { 
											while(rs1.next()){ 
									%>
										<option value="<%=rs1.getString(1)%>" <%if(rstemp.getString(16).equals(rs1.getString(1))){out.print(" selected ");}%>><%=rs1.getString(2)%></option>
									<%}}%>
						 		  </select>			
							  </td>
								<td width="36" align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(quoctich!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.dantoc")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(13)==null || rs.getString(13).equals("null")){%>
										
									<%} else {%><%=rs.getString(13)%><%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<select name="dantocnv" <%if(dantoc!=1){%> style="display:none;"<%}%>>
									<%
										String strSqlRace = ("select RACE_NO, RACE_NAME from HR_RACE order by  HR_RACE.race_no asc");
										//java.sql.Statement st2=conn.createStatement();
										//ResultSet rs1=st2.executeQuery(strSqlRace);
										rs1=st1.executeQuery(strSqlRace);
										if(rstemp.getString(12)==null || rstemp.getString(12).equals("null")){
									%>
										<option value="" selected>--------*--------</option>
									<%
											while(rs1.next()){ 
									%>
										<option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%></option>
									<%}} else { 
											while(rs1.next()){ 
									%>
										<option value="<%=rs1.getString(1)%>" <%if(rstemp.getString(12).equals(rs1.getString(1))){out.print(" selected ");}%>><%=rs1.getString(2)%></option>
									<%}}%>
									</select>
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(dantoc!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.tongiao")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(19)==null || rs.getString(19).equals("null")){%>
										
									<%} else {%><%=rs.getString(19)%><%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<select name="tongiaonv" <%if(tongiao!=1){%> style="display:none;"<%}%>>
									<%
										String strSqlReligion = ("select RELIGION_NO, RELIGION_NAME from HR_RELIGION order by  HR_RELIGION.RELIGION_NO asc");
										//java.sql.Statement st3=conn.createStatement();
										//ResultSet rs1=st3.executeQuery(strSqlReligion);
										rs1=st1.executeQuery(strSqlReligion);
										if(rstemp.getString(18)==null || rstemp.getString(18).equals("null")){
									%>
										<option value="" selected>--------*--------</option>
									<%
											while(rs1.next()){ 
									%>
										<option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%></option>
									<%}} else { 
											while(rs1.next()){ 
									%>
										<option value="<%=rs1.getString(1)%>" <%if(rstemp.getString(18).equals(rs1.getString(1))){out.print(" selected ");}%>><%=rs1.getString(2)%></option>
									<%}}%>
									</select>
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(tongiao!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.noisinh")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(20)==null || rs.getString(20).equals("null")){%>
										
									<%} else {%><%=rs.getString(20)%><%}%>
							  	</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value" align="left">
									<input size="40" type="text" name="noisinhnv" <%if(rstemp.getString(20)==null || rstemp.getString(20).equals("null")){%> value=""
										<%} else {%>value="<%=rstemp.getString(20)%>"<%} if(noisinh!=1){%> readonly="true"<%}%>>						
								</td>
							 	<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(noisinh!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
										<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>							 	</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.quequan")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(21)==null || rs.getString(21).equals("null")){%>
										
									<%} else {%><%=rs.getString(21)%><%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value" align="left">
									<input size="40" type="text" name="quequannv" <%if(rstemp.getString(21)==null || rstemp.getString(21).equals("null")){%> value=""
										<%} else {%>value="<%=rstemp.getString(21)%>"<%} if(quequan!=1){%> readonly="true"<%}%>>						
								</td>
							 	<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(quequan!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
										<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>							 	</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.xuatthan")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(32)==null || rs.getString(32).equals("null")){%>
										
									<%} else {%><%=rs.getString(32)%><%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<select name="xuatthannv" <%if(xuatthan!=1){%> style="display:none;"<%}%>>
									<%
										String strSqlDescent = ("select DESCENT_NO, DESCENT_NAME from HR_DESCENT_LIST order by  HR_DESCENT_LIST.DESCENT_NO asc");
										//java.sql.Statement st4=conn.createStatement();
										//ResultSet rs1=st4.executeQuery(strSqlDescent);
										rs1=st1.executeQuery(strSqlDescent);
										if(rstemp.getString(31)==null || rstemp.getString(31).equals("null")){
									%>
										<option value="" selected>--------*--------</option>
									<%
											while(rs1.next()){ 
									%>
										<option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%></option>
									<%}} else { 
											while(rs1.next()){ 
									%>
										<option value="<%=rs1.getString(1)%>" <%if(rstemp.getString(31).equals(rs1.getString(1))){out.print(" selected ");}%>><%=rs1.getString(2)%></option>
									<%}}%>
									</select>
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(xuatthan!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
						</table>
						
					</td>
				</tr>			
				<tr>
					<td>
						<table width="790" cellpadding=6 cellspacing=1 align="center" style="border:1px solid #CCCCCC;">
							<tr>
								<td colspan="5" class="title1" bgcolor="#007D93">&nbsp;<%=_res("ttcn.thongtinlienlac")%></span></td>
							</tr>	
							<tr>
								<td width="126" bgcolor="#f8f8f8" class="des"><%=_res("ttcn.sodienthoai")%></td>
								<td width="266" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(25)==null || rs.getString(25).equals("null")){%>
										
									<%} else {%><%=rs.getString(25) %>  <%}%> 
							  </td>
								<td width="0" bgcolor="#CCCCCC"></td>
								<td width="294" bgcolor="#FFF7E7" class="value">
							  <input type="text" name="dienthoainv" <%if(rstemp.getString(25)==null || rstemp.getString(25).equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString(25)%>"<%} if(dienthoai!=1){%> readonly="true"<%}%>  /></td>
								<td width="36" align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(dienthoai!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.mobile")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(26)==null || rs.getString(26).equals("null")){%>
										
									<%} else {%><%=rs.getString(26) %>  <%}%> 
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="mobilenv" <%if(rstemp.getString(26)==null || rstemp.getString(26).equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString(26)%>"<%} if(mobile!=1){%> readonly="true"<%}%>  /></td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(mobile!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.email")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(27)==null || rs.getString(27).equals("null")){%>
										
									<%} else {%><%=rs.getString(27) %>  <%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="emailnv" <%if(rstemp.getString(27)==null || rstemp.getString(27).equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString(27)%>"<%} if(email!=1){%> readonly="true"<%}%>  /></td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(email!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td width="126" bgcolor="#f8f8f8" class="des"><%=_res("ttcn.diachithuongtru")%></td>
								<td width="266" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(24)==null || rs.getString(24).equals("null")){%>
										
									<%} else {%><%=rs.getString(24) %> <%}%>
							  </td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input size="40" type="text" name="dcthuongtrunv" <%if(rstemp.getString(24)==null || rstemp.getString(24).equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString(24)%>"<%} if(dcthuongtru!=1){%> readonly="true"<%}%>  /></td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(dcthuongtru!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.diachitamtru")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(23)==null || rs.getString(23).equals("null")){%>
										
									<%} else {%><%=rs.getString(23) %>  <%}%> 
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input size="40" type="text" name="dctamtrunv" <%if(rstemp.getString(23)==null || rstemp.getString(23).equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString(23)%>"<%} if(dctamtru!=1){%> readonly="true"<%}%>  /></td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(dctamtru!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.diachilienhe")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(22)==null || rs.getString(22).equals("null")){%>
										 
									<%} else {%><%=rs.getString(22) %>  <%}%> 
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input size="40" type="text" name="dclienhenv" <%if(rstemp.getString(22)==null || rstemp.getString(22).equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString(22)%>"<%} if(dclienhe!=1){%> readonly="true"<%}%>  /></td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(dclienhe!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
						</table>
					</td>
				</tr>
				
				<tr>
					<td>
						<table width="790" cellpadding=6 cellspacing=1 align="center" style="border:1px solid #CCCCCC;">
							<tr>
								<td colspan="5" class="title1" bgcolor="#007D93">&nbsp;<%=_res("ttcn.hoatdong")%></td>	
							</tr>
							<tr>
								<td width="125" bgcolor="#f8f8f8" class="des"><%=_res("ttcn.ngayvaodang")%></td>
								<td width="266" bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate(48)==null){%>
										
									<%} else {%> <%=SString.toString(rs.getDate(48),"dd/MM/yyyy")%> <%}%>	
							  </td>
								<td width="0" bgcolor="#CCCCCC"></td>
								<td width="295" bgcolor="#FFF7E7" class="value">
									<input name="ngayvaodangnv" size=6 class="textbox" <%if(rstemp.getDate(48)!=null){%>value="<%=SString.toString(rstemp.getDate(48),"dd/MM/yyyy")%>"
										<%} else {%> value="" <%} if(ngayvaodang!=1){%> disabled="disabled"<%}%> >
									<img name="btnvdnv" <%if(ngayvaodang!=1){%> readonly="true"<%}%>  onclick="return showCalendar('btnvdnv','ngayvaodangnv', '%d/%m/%Y', false);" align="absmiddle" id="btnvdnv" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("ttcn.ngayvaodang")%>'>
							  </td>
								<td width="36" align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(ngayvaodang !=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>					
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
							  <td width="125" bgcolor="#f8f8f8" class="des"><%=_res("ttcn.chucvu")%></td>
								<td width="266" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(49)==null || rs.getString(49).equals("null")){%>
																			
									<%} else {%> <%=rs.getString(50)%> <%}%>								
							  </td>
								<td width="0" bgcolor="#CCCCCC"></td>
								<td width="295" bgcolor="#FFF7E7" class="value">
									<select name="macvdangnv" <%if(machucvudang!=1){%> style="display:none;"<%}%>>
									<%
										String strSqlCvDang = ("select MA_CHUCVU, TEN_CHUCVU from HR_CHUCVU_DANG order by  HR_CHUCVU_DANG.MA_CHUCVU asc");
										//java.sql.Statement st5=conn.createStatement();
										//ResultSet rs1=st5.executeQuery(strSqlCvDang);
										rs1=st1.executeQuery(strSqlCvDang);
										if(rstemp.getString(49)==null || rstemp.getString(49).equals("null")){
									%>
										<option value="" selected>--------*--------</option>
									<%
											while(rs1.next()){ 
									%>
										<option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%></option>
									<%}} else { 
											while(rs1.next()){ 
									%>
										<option value="<%=rs1.getString(1)%>" <%if(rstemp.getString(49).equals(rs1.getString(1))){out.print(" selected ");}%>><%=rs1.getString(2)%></option>
									<%}}%>
						 		  </select>			
							  </td>
								<td width="36" align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(machucvudang!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>					
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.ngayvaodoan")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate(51)==null){%>	
									<%} else {%> <%=SString.toString(rs.getDate(51),"dd/MM/yyyy")%> <%}%>							
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td width="295" bgcolor="#FFF7E7" class="value">
									<input size=6 class="textbox" name="ngayvaodoannv" <%if(rstemp.getDate(51)!=null){%>value="<%=SString.toString(rstemp.getDate(51),"dd/MM/yyyy")%>"
										<%} else {%> value="" <%} if(ngayvaodoan!=1){%> disabled="disabled"<%}%>>
									<img name="btnvdonv" <%if(ngayvaodoan!=1){%> readonly="true"<%}%> onclick="return showCalendar('btnvdonv','ngayvaodoannv', '%d/%m/%Y', false);" align="absmiddle" id="btnvdonv" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("ttcn.ngayvaodoan")%>'>
							  </td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(ngayvaodoan!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>		
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.chucvu")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(52)==null || rs.getString(52).equals("null")){%>
										
									<%} else {%> <%=rs.getString(53)%> <%}%>								
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td width="295" bgcolor="#FFF7E7" class="value">
									<select name="macvdoannv" <%if(machucvudoan!=1){%> style="display:none;"<%}%>>
									<%
										String strSqlCvDoan = ("select MA_CHUCVU, TEN_CHUCVU from HR_CHUCVU_DOAN order by  HR_CHUCVU_DOAN.MA_CHUCVU asc");
										//java.sql.Statement st6=conn.createStatement();
										//ResultSet rs1=st6.executeQuery(strSqlCvDoan);
										rs1=st1.executeQuery(strSqlCvDoan);
										if(rstemp.getString(52)==null || rstemp.getString(52).equals("null")){
									%>
										<option value="" selected>--------*--------</option>
									<%
											while(rs1.next()){ 
									%>
										<option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%></option>
									<%}} else { 
											while(rs1.next()){ 
									%>
										<option value="<%=rs1.getString(1)%>" <%if(rstemp.getString(52).equals(rs1.getString(1))){out.print(" selected ");}%>><%=rs1.getString(2)%></option>
									<%}}%>
						 		  </select>			
							  </td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(machucvudoan!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>		
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.ngayvaocongdoan")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate(54)==null){%>
									<%} else {%> <%=SString.toString(rs.getDate(54),"dd/MM/yyyy")%> <%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td width="295" bgcolor="#FFF7E7" class="value">
									<input size=6 class="textbox" name="ngayvaocongdoannv" <%if(rstemp.getDate(54)!=null){%>value="<%=SString.toString(rstemp.getDate(54),"dd/MM/yyyy")%>"
										<%} else {%> value="" <%} if(ngayvaocdoan!=1){%> disabled="disabled"<%}%> >
									<img name="btnvcdnv" <%if(ngayvaocdoan!=1){%> readonly="true"<%}%> onclick="return showCalendar('btnvcdnv','ngayvaocongdoannv', '%d/%m/%Y', false);" align="absmiddle" id="btnvcdnv" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("ttcn.ngayvaocongdoan")%>'>

							  </td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(machucvucdoan!=1 && ngayvaocdoan!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>		
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.chucvu")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(55)==null || rs.getString(55).equals("null")){%>
										
									<%} else {%> <%=rs.getString(56)%> <%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td width="295" bgcolor="#FFF7E7" class="value">
									<select name="macvcongdoannv" <%if(machucvucdoan!=1){%> style="display:none;"<%}%>>
									<%
										String strSqlCvCDoan = ("select MA_CHUCVU, TEN_CHUCVU from HR_CHUCVU_CDOAN order by  HR_CHUCVU_CDOAN.MA_CHUCVU asc");
										//java.sql.Statement st7=conn.createStatement();
										//ResultSet rs1=st7.executeQuery(strSqlCvCDoan);
										rs1=st1.executeQuery(strSqlCvCDoan);
										if(rstemp.getString(55)==null || rstemp.getString(55).equals("null")){
									%>
										<option value="" selected>--------*--------</option>
									<%
											while(rs1.next()){ 
									%>
										<option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%></option>
									<%}} else { 
											while(rs1.next()){ 
									%>
										<option value="<%=rs1.getString(1)%>" <%if(rstemp.getString(55).equals(rs1.getString(1))){out.print(" selected ");}%>><%=rs1.getString(2)%></option>
									<%}}%>
						 		  </select>			
							  </td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(machucvucdoan!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>		
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.ngayvaocongty")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate(57) == null || rs.getDate(57).equals("null")){%>
									<%} else {%> <%=SString.toString(rs.getDate(57),"dd/MM/yyyy")%><%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td width="295" bgcolor="#FFF7E7" class="value">								</td>
								<td bgcolor="#f8f8f8" class="value">								</td>		
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.chucvu")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(59) == null || rs.getString(59).equals("null")){%>
									<%} else {%> <%=rs.getString(59)%><%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td width="295" bgcolor="#FFF7E7" class="value">								</td>
								<td bgcolor="#f8f8f8" class="value">								</td>		
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table width="790" cellpadding=6 cellspacing=1 align="center" style="border:1px solid #CCCCCC;">
							<tr>
								<td colspan="5" class="title1" bgcolor="#007D93">&nbsp;<%=_res("ttcn.taichinh")%></td>
							</tr>
							<tr>
								<td width="124" bgcolor="#f8f8f8" class="des"><%=_res("ttcn.tiente")%></td>
								<td width="265" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(14) == null || rs.getString(14).equals("null")){%>
										
									<%} else {%> <%=rs.getString(15)%> <%}%>
							  </td>
								<td width="0" bgcolor="#CCCCCC"></td>
								<td width="297" bgcolor="#FFF7E7" class="value">
							  		<select name="matientenv" <%if(matiente!=1){%>  style="display:none;"<%}%>>
									<%
										String strSqlTT = ("select CURRENCY_NO, CURRENCY_NAME from HR_CURRENCY order by  HR_CURRENCY.CURRENCY_NO asc");
										//java.sql.Statement st8=conn.createStatement();
										//ResultSet rs1=st8.executeQuery(strSqlTT);
										rs1=st1.executeQuery(strSqlTT);
										if(rstemp.getString(14)==null || rstemp.getString(14).equals("null")){
									%>
										<option value="" selected>--------*--------</option>
									<%
											while(rs1.next()){ 
									%>
										<option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%></option>
									<%}} else { 
											while(rs1.next()){ 
									%>
										<option value="<%=rs1.getString(1)%>" <%if(rstemp.getString(14).equals(rs1.getString(1))){out.print(" selected ");}%>><%=rs1.getString(2)%></option>
									<%}}rs1.close(); st1.close();%>
						 		  	</select>
							  <td width="36" align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(matiente!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.taikhoan")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(33) == null || rs.getString(33).equals("null")){%>
										
									<%} else {%> <%=rs.getString(33)%>  <%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="taikhoannv" <%if(rstemp.getString(33)==null || rstemp.getString(33).equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString(33)%>"<%} if(taikhoan!=1){%> readonly="true"<%}%>  />
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(taikhoan!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.nganhang")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(34) == null || rs.getString(34).equals("null")){%>
										
									<%} else {%> <%=rs.getString(34)%>  <%}%> 
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="nganhangnv" <%if(rstemp.getString(34)==null || rstemp.getString(34).equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString(34)%>"<%} if(nganhang!=1){%> readonly="true"<%}%>  />
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(nganhang!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.mathue")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(41) == null || rs.getString(41).equals("null")){%>
										
									<%} else {%> <%=rs.getString(41)%>  <%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="masothuenv" <%if(rstemp.getString(41)==null || rstemp.getString(41).equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString(41)%>"<%} if(masothue!=1){%> readonly="true"<%}%>  />
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(masothue!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.coquanthue")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(42) == null || rs.getString(42).equals("null")){%>
										
									<%} else {%> <%=rs.getString(42)%>  <%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="coquanthuenv" <%if(rstemp.getString(42)==null || rstemp.getString(42).equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString(42)%>"<%} if(coquanthue!=1){%> readonly="true"<%}%>  />
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(coquanthue!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
					  <hr />
					</td>
				</tr>
				<tr>
					<td class="des" align="left">
						<input name="update" type="button" 
							<%if(manhanvien==1 || ho==1 || tendem==1 || ten==1 || masothenhanvien==1 || gioitinh1==1 || ngaysinh==1 ||
								honnhan==1 || chieucao==1 || cannang==1 || dauvetdacbiet==1 || cmnd==1 || ngaycapcmnd==1 ||
								noicapcmnd==1 || passport==1 || ngaycappassport==1 || noicappassport==1 || quoctich==1 || 
								dantoc==1 || tongiao==1 || noisinh==1 || quequan==1 || xuatthan==1 || dcthuongtru==1 || dctamtru==1 ||
								dclienhe==1 || dienthoai==1 || mobile==1 || email==1 ||	website==1 || ngayvaodang==1 || 
								machucvudang==1 || ngayvaodoan==1 || machucvudoan==1 || ngayvaocdoan==1 || machucvucdoan==1 ||
								matiente==1 || taikhoan==1 || nganhang==1 || masothue==1 || coquanthue==1){%><%} else {%>readonly="true"<%}%>
						 Onclick="javascript:funcPostData()" value="<%=_res("udttcn.submit")%>" />
					</td>
				</tr>
				<tr>
					<td>
				  </td>
				</tr>
			</table>
		</form>	 
<%
	}rstemp.close();sttemp.close();}
		rs.close();
		st.close();
		conn.commit();
		//conn.close();
	}catch(IOException ex ){
	      //e.printStackTrace();
	      //out.println(e.getMessage());
	}finally{
		if(conn != null)
			conn.setAutoCommit(true);
		dbConnManager.freeConnection("topmostread", conn);
	}
%>

<script language="javascript">

	function funcPostData(){
		var dm = document.frmUpdate; 
		if(dm.honv.value==''){
		 	alert('<%=_res("msg_honv")%>');
			dm.honv.focus();
		}
		else if(dm.honv.value!="" && dm.honv.value.length>10)
		{
			alert('<%=_res("udttcn.alert.lengthho")%>');
			dm.honv.focus();
		}
		
		else if (dm.tennv.value==''){
		 	alert('<%=_res("msg_tennv")%>');
			dm.tennv.focus();
		}
		else if(dm.tennv.value!='' && dm.tennv.value.length>10){
			alert('<%=_res("udttcn.alert.lengthten")%>');
			dm.tennv.focus();
		}
		else if(dm.tendemnv.value!='' && dm.tendemnv.value.length>21){
			alert('<%=_res("udttcn.alert.lengthtendem")%>');
			dm.tendemnv.focus();
		}
		else if(dm.dauvetdacbietnv.value!='' && dm.dauvetdacbietnv.value.length>21){
			alert('<%=_res("udttcn.alert.lengthdauvetdacbiet")%>');
			dm.dauvetdacbietnv.focus();
		}
		
		else if (dm.ngaysinhnv.value !='' && checkDate(dm.ngaysinhnv, true)!='TRUE'){
			alert('<%=_res("msg_ngaysinhnv")%>');
			dm.ngaysinhnv.focus();
		}
		
		else if(dm.cmndnv.value!='' && dm.cmndnv.value.length>21){
			alert('<%=_res("udttcn.alert.lengthcmnd")%>');
			dm.cmndnv.focus();
		}
		else if(dm.cmndnv.value!='' && dm.ngaycapcmndnv.value==''){
		 	alert('<%=_res("msg_ttcn7")%>');
			dm.ngaycapcmndnv.focus();
		}
		else if(dm.cmndnv.value=='' && dm.ngaycapcmndnv.value!=''){
		 	alert('<%=_res("msg_ttcn15")%>');
			dm.cmndnv.focus();
		}
		
		else if(dm.ngaycapcmndnv.value!='' && checkDate(dm.ngaycapcmndnv, true)!='TRUE'){
		 	alert('<%=_res("msg_ttcn8")%>');
			dm.ngaycapcmndnv.focus();
		}
		else if(dm.noicapcmndnv.value!='' && dm.noicapcmndnv.value.length>85){
		 	alert('<%=_res("udttcn.alert.lengthnoicapcmnd")%>');
			dm.noicapcmndnv.focus();
		}
		 
		else if(dm.passportnv.value!='' && dm.passportnv.value.length>10){
		 	alert('<%=_res("udttcn.alert.lengthpassport")%>');
			dm.passportnv.focus();
		}
		else if(dm.passportnv.value!='' && dm.ngaycappassport.value==''){
		 	alert('<%=_res("msg_ngaycappassport")%>');
			dm.ngaycappassport.focus();
		}
		else if(dm.passportnv.value=='' && dm.ngaycappassport.value!=''){
		 	alert('<%=_res("msg_passport")%>');
			dm.passportnv.focus();
		}
		else if(dm.ngaycappassport.value!='' && checkDate(dm.ngaycappassport, true)!='TRUE'){
			alert('<%=_res("msg_ngaycappassport1")%>');
			dm.ngaycappassport.focus();
		}
		else if(dm.noicappassport.value!='' && dm.noicappassport.value.length>85){
		 	alert('<%=_res("udttcn.alert.lengthnoicappassport")%>');
			dm.noicappassport.focus();
		}
		else if(dm.noisinhnv.value!='' && dm.noisinhnv.value.length>42){
			alert('<%=_res("udttcn.alert.lengthnoisinh")%>');
			dm.noisinhnv.focus();
		}
		else if(dm.quequannv.value!=''&& dm.quequannv.value.length>42){
			alert('<%=_res("udttcn.alert.lengthquequan")%>');
			dm.quequannv.focus();
		}
		else if(dm.dienthoainv.value!='' && dm.dienthoainv.value.length>10){
			alert('<%=_res("udttcn.alert.lengthdienthoai")%>');
			dm.dienthoainv.focus();
		}
		else if(dm.mobilenv.value!='' && dm.mobilenv.value.length>10){
			alert('<%=_res("udttcn.alert.lengthmobile")%>');
			dm.mobilenv.focus();
		}
		else if(dm.emailnv.value!='' && dm.emailnv.value.length>21){
			alert('<%=_res("udttcn.alert.lengthemail")%>');
			dm.emailnv.focus();
		}
		else if(dm.dcthuongtrunv.value!='' && dm.dcthuongtrunv.value.length>85){
			alert('<%=_res("udttcn.alert.lengthdcthuongtru")%>');
			dm.dcthuongtrunv.focus();
		}
		else if(dm.dctamtrunv.value!='' && dm.dctamtrunv.value.length>85){
			alert('<%=_res("udttcn.alert.lengthdctamtru")%>');
			dm.dctamtrunv.focus();
		}
		else if(dm.dclienhenv.value!='' && dm.dclienhenv.value.length>85){
			alert('<%=_res("udttcn.alert.lengthdclienhe")%>');
			dm.dclienhenv.focus();
		}
		
		else if(dm.taikhoannv.value!='' && dm.taikhoannv.value.length>10){
			alert('<%=_res("udttcn.alert.lengthsotaikhoan")%>');
			dm.taikhoannv.focus();
		}
		else if(dm.nganhangnv.value!='' && dm.nganhangnv.value.length>42){
			alert('<%=_res("udttcn.alert.lengthnganhang")%>');
			dm.nganhangnv.focus();
		}
		else if(dm.masothuenv.value!='' && dm.masothuenv.value.length>10){
			alert('<%=_res("udttcn.alert.lengthmasothue")%>');
			dm.masothuenv.focus();
		}
		else if(dm.coquanthuenv.value!='' && dm.coquanthuenv.value.length>21){
			alert('<%=_res("udttcn.alert.lengthcoquanthue")%>');
			dm.coquanthuenv.focus();
		}
		
		 else if(dm.macvdangnv.value!='' && dm.ngayvaodangnv.value == ''){
		 	alert('<%=_res("msg_ttcn12")%>');
			dm.ngayvaodangnv.focus();
		 }
		 
		 else if(dm.macvdoannv.value!='' && dm.ngayvaodoannv.value == ''){
		 	alert('<%=_res("msg_ttcn13")%>');
			dm.ngayvaodoannv.focus();
		 }
		 
		 else if(dm.macvcongdoannv.value!='' && dm.ngayvaocongdoannv.value == ''){
		 	alert('<%=_res("msg_ttcn14")%>');
			dm.ngayvaocongdoannv.focus();
		 }
		 
		 else if(dm.chieucaonv!="" && isNaN(dm.chieucaonv.value))
		 {
			alert('<%=_res("udttcn.alert.chieucao")%>');
			dm.chieucaonv.focus();
		 }
		 
		  else if(dm.cannangnv!="" && isNaN(dm.cannangnv.value))
		 {
			alert('<%=_res("udttcn.alert.cannang")%>');
			dm.cannangnv.focus();
		 }
		 else {
			  if (dm.ngayvaodangnv.value !='' && checkDate(dm.ngayvaodangnv, true)!='TRUE'){
				alert('<%=_res("msg_ttcn2")%>');
				dm.ngayvaodangnv.focus();
			  }
			  else if (dm.ngayvaodangnv.value !='' && dm.macvdangnv.value==''){
				alert('<%=_res("msg_ttcn9")%>');
				dm.macvdangnv.focus();
			  }
			  else if (dm.ngayvaodoannv.value !='' && checkDate(dm.ngayvaodoannv, true)!='TRUE'){
				alert('<%=_res("msg_ttcn5")%>');
				dm.ngayvaodoannv.focus();
			  }
			  else if (dm.ngayvaodoannv.value !='' && dm.macvdoannv.value==''){
				alert('<%=_res("msg_ttcn10")%>');
				dm.macvdoannv.focus();
			  }
			  else if (dm.ngayvaocongdoannv.value !='' && checkDate(dm.ngayvaocongdoannv, true)!='TRUE'){
				alert('<%=_res("msg_ttcn6")%>');
				dm.ngayvaocongdoannv.focus();
			  }
			  else if (dm.ngayvaocongdoannv.value !='' && dm.macvcongdoannv.value==''){
				alert('<%=_res("msg_ttcn11")%>');
				dm.macvcongdoannv.focus();
			  }
			  
			  else{
				dm.submit();
			  }
		  }
	}
</script>


