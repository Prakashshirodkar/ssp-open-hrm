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
	int manhanvien = 0; int masothenhanvien = 0;
		int ho = 0; int tendem = 0; int ten = 0; int gioitinh1 = 0; int ngaysinh = 0;
		int honnhan = 0; int chieucao = 0; int cannang = 0; int dauvetdacbiet = 0;
		int cmnd = 0; int ngaycapcmnd = 0; int noicapcmnd = 0; int passport = 0; int ngaycappassport = 0;
		int noicappassport = 0; int quoctich = 0; int dantoc = 0; int tongiao = 0; int noisinh = 0; int quequan = 0; 
		int xuatthan = 0; int dienthoai = 0; int mobile = 0; int email = 0; int website = 0; 
		int dcthuongtru = 0; int dctamtru = 0; int dclienhe = 0; int ngayvaodang = 0; int machucvudang = 0;
		int ngayvaodoan = 0; int machucvudoan = 0; int ngayvaocdoan = 0; int machucvucdoan = 0; int matiente = 0;
		int taikhoan = 0; int nganhang = 0; int masothue = 0; int coquanthue = 0;
		int passport_expired_date = 0; int visa_number = 0; int visa_place_issued = 0; int visa_issued_date = 0; 
		int visa_expired_date = 0; int regular_temporary = 0; int fulltime_parttime = 0; int work_place = 0;
		int email_personal = 0; int org_level = 0; int job_grade = 0; int name_acc_1 = 0; 
		int name_acc_2 = 0; int number_acc_2 = 0; int bank_acc_2 = 0; int housing_from_date = 0;
		int housing_to_date = 0; int housing_rental = 0; int contact_fullname = 0; int contact_relationship = 0;
		int contact_permanent_add = 0; int contact_address_cont = 0; int contact_phone = 0;
	
	try{
	    conn = dbConnManager.getConnection("topmostread");
		conn.setAutoCommit(false);
		java.sql.Statement st=conn.createStatement();
		//java.sql.PreparedStatement st=conn.prepareStatement(sqlcheck);
		//ResultSet rs = st.executeQuery();
		ResultSet rs = st.executeQuery(sqlcheck);
		
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
			regular_temporary = rs.getInt("REGULAR_TEMPORARY"); fulltime_parttime = rs.getInt("FULLTIME_PARTTIME");
			work_place = rs.getInt("WORK_PLACE"); passport_expired_date = rs.getInt("PASSPORT_EXPIRED");
			visa_number = rs.getInt("VISA_NO"); visa_place_issued = rs.getInt("VISA_PLACE");
			visa_issued_date = rs.getInt("VISA_DATE"); visa_expired_date = rs.getInt("VISA_EXPIRED");
			email_personal = rs.getInt("EMAIL_PERSONAL"); org_level = rs.getInt("CAPBAC");
			job_grade = rs.getInt("MUCDO_KN"); name_acc_1 = rs.getInt("ACCOUNT_NAME");
			name_acc_2 = rs.getInt("ACCOUNT_NAME_2"); number_acc_2 = rs.getInt("ACCOUNT_ID_2");
			bank_acc_2 = rs.getInt("ACCOUNT_BANK_2"); housing_from_date = rs.getInt("HOUSING_FROM_DATE");
			housing_to_date = rs.getInt("HOUSING_TO_DATE"); housing_rental = rs.getInt("HOUSING_RENTAL");
			contact_fullname = rs.getInt("CONTACT_FULLNAME"); contact_relationship = rs.getInt("CONTACT_RELATIONSHIP");
			contact_permanent_add = rs.getInt("CONTACT_PERMANENT_ADD"); contact_address_cont = rs.getInt("CONTACT_ADDRESS_CONT");
			contact_phone = rs.getInt("CONTACT_PHONE_NO");
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
			<input name="quequannv" type="hidden" value="null" />
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
								<td bgcolor="#f8f8f8" class="des"><%=_res("regular_temporary")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getInt("REGULAR_TEMPORARY")==1){%><%=_res("regular")%>
									<%}else{%><%=_res("temporary")%><%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
                                	<%if(rstemp.getString("REGULAR_TEMPORARY")==null || rstemp.getString("REGULAR_TEMPORARY").equals("null")){%>
                                    	<select name="regular_temporary" <%if(regular_temporary!=1){%> style="display:none;"<%}%>>
									  		<option value=""<%out.print(" selected ");%>>------*------</option>
									  		<option value="1"><%=_res("regular")%></option>
									  		<option value="0"><%=_res("temporary")%></option>								
										</select>
                                    <%}else{%>
                                        <select name="regular_temporary" <%if(regular_temporary!=1){%>style="display:none;"<%}%>>
                                          <option value="1" <%if(rs.getInt("REGULAR_TEMPORARY")==1){out.print(" selected ");}%>><%=_res("regular")%></option>
                                          <option value="0" <%if(rs.getInt("REGULAR_TEMPORARY")==0){out.print(" selected ");}%>><%=_res("temporary")%></option>
                                        </select>
                                    <%}%>
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(regular_temporary!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr height="25px;">
								<td bgcolor="#f8f8f8" class="des"><%=_res("fulltime_parttime")%></td>
								<td bgcolor="#FFF7E7" class="value">
                                	<%if(rs.getInt("FULLTIME_PARTTIME")==1){%><%=_res("fulltime")%>
									<%}else{%><%=_res("parttime")%><%}%>
                                </td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
                                	<%if(rstemp.getString("FULLTIME_PARTTIME")==null || rstemp.getString("FULLTIME_PARTTIME").equals("null")){%>
                                    	<select name="fulltime_parttime" <%if(fulltime_parttime!=1){%>style="display:none;"<%}%>>
                                        	<option value=""<%out.print(" selected ");%>>------*------</option>
									  		<option value="1"><%=_res("fulltime")%></option>
									  		<option value="0"><%=_res("parttime")%></option>
                                        </select>
                                    <%}else{%>
                                        <select name="fulltime_parttime" <%if(fulltime_parttime!=1){%>style="display:none;"<%}%>>
                                          <option value="1" <%if(rs.getInt("FULLTIME_PARTTIME")==1){out.print(" selected ");}%>><%=_res("fulltime")%></option>
                                          <option value="0" <%if(rs.getInt("FULLTIME_PARTTIME")==0){out.print(" selected ");}%>><%=_res("parttime")%></option>
                                        </select>
                                    <%}%>
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
                                	<img <%if(fulltime_parttime!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("work_place")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("WORK_PLACE")==null || rs.getString("WORK_PLACE").equals("null")){%>
										
									<%} else {%><%=rs.getString("WORK_PLACE") %> <%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="work_place" <%if(rstemp.getString("WORK_PLACE")==null || rstemp.getString("WORK_PLACE").equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString("WORK_PLACE")%>"<%} if(work_place!=1){%> readonly="true"<%}%>  /></td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(work_place!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
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
										
									<%} else {%><%=rs.getString(37) %><%}%>	 		
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="passportnv" <%if(rstemp.getString(37)==null || rstemp.getString(37).equals("null")){%> value="" 
										<%} else {%>value="<%=rstemp.getString(37) %>"<%} if(passport!=1){%> readonly="true"<%}%>  />	
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(passport!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
                            <tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("issuea_expired_date")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate("ngaycap_hochieu")==null){%>
                                    
									<%} else {%><%=SString.toString(rs.getDate("ngaycap_hochieu"),"dd/MM/yyyy") %><%}%> - 
                                    <%if(rs.getDate("ngay_hethan_hochieu")==null){%>
                                    
									<%} else {%><%=SString.toString(rs.getDate("ngay_hethan_hochieu"),"dd/MM/yyyy") %><%}%>	 		
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" size="7" name="passport_issued_date" <%if(rstemp.getDate("ngaycap_hochieu")==null){%> value=""
									<%} else {%>value="<%=SString.toString(rstemp.getDate("ngaycap_hochieu"),"dd/MM/yyyy")%>"<%} if(ngaycappassport!=1){%>readonly="true"<%}%>>
									<img <%if(ngaycappassport!=1){%>disabled="disabled"<%}%> name="btpassport_issued_date" onclick="return showCalendar('btpassport_issued_date','passport_issued_date', '%d/%m/%Y', false);" align="absmiddle" id="btpassport_issued_date" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("tdnl.ngaycap")%>'> - 
                                    <input type="text" size="7" name="passport_expired_date" <%if(rstemp.getDate("ngay_hethan_hochieu")==null){%> value=""
									<%} else {%>value="<%=SString.toString(rstemp.getDate("ngay_hethan_hochieu"),"dd/MM/yyyy")%>"<%} if(passport_expired_date!=1){%>readonly="true"<%}%>>
									<img <%if(passport_expired_date!=1){%>disabled="disabled"<%}%> name="btpassport_expired_date" onclick="return showCalendar('btpassport_expired_date','passport_expired_date', '%d/%m/%Y', false);" align="absmiddle" id="btpassport_expired_date" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("passport_expired_date")%>'>
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(ngaycappassport!=1&&passport_expired_date!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
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
                            <tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("visa_number")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("visa_no")==null || rs.getString("visa_no").equals("null")){%>
										
									<%} else {%><%=rs.getString("visa_no")%> <%}%>	 		
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="visa_no" <%if(rstemp.getString("visa_no")==null || rstemp.getString("visa_no").equals("null")){%> value="" 
										<%} else {%>value="<%=rstemp.getString("visa_no") %>"<%} if(visa_number!=1){%>readonly="true"<%}%>  />	
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(visa_number!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
                            <tr height="25px">
								<td bgcolor="#f8f8f8" class="des"><%=_res("issuea_expired_date")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate("VISA_DATE")==null){%>
                                    
									<%} else {%><%=SString.toString(rs.getDate("VISA_DATE"),"dd/MM/yyyy") %><%}%> - 
                                    <%if(rs.getDate("VISA_EXPIRED")==null){%>
                                    
									<%} else {%><%=SString.toString(rs.getDate("VISA_EXPIRED"),"dd/MM/yyyy") %><%}%>	 		
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" size="7" name="visa_issued_date" <%if(rstemp.getDate("VISA_DATE")==null){%> value=""
									<%} else {%>value="<%=SString.toString(rstemp.getDate("VISA_DATE"),"dd/MM/yyyy")%>"<%} if(visa_issued_date!=1){%>readonly="true"<%}%>>
									<img <%if(visa_issued_date!=1){%>disabled="disabled"<%}%> name="btvisa_issued_date" onclick="return showCalendar('btvisa_issued_date','visa_issued_date', '%d/%m/%Y', false);" align="absmiddle" id="btvisa_issued_date" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("tdnl.ngaycap")%>'> - 
                                    <input type="text" size="7" name="visa_expired_date" <%if(rstemp.getDate("VISA_EXPIRED")==null){%> value=""
									<%} else {%>value="<%=SString.toString(rstemp.getDate("VISA_EXPIRED"),"dd/MM/yyyy")%>"<%} if(visa_expired_date!=1){%>readonly="true"<%}%>>
									<img <%if(visa_expired_date!=1){%>disabled="disabled"<%}%> name="btvisa_expired_date" onclick="return showCalendar('btvisa_expired_date','visa_expired_date', '%d/%m/%Y', false);" align="absmiddle" id="btvisa_expired_date" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("passport_expired_date")%>'>
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(visa_issued_date!=1&&visa_expired_date!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr height="25px;">
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.noicap")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("VISA_PLACE")==null || rs.getString("VISA_PLACE").equals("null")){%>
										
									<%} else {%><%=rs.getString("VISA_PLACE")%> <%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="visa_place" <%if(rstemp.getString("VISA_PLACE")==null || rstemp.getString("VISA_PLACE").equals("null")){%> value=""
										<%} else {%>value="<%=rstemp.getString("VISA_PLACE")%>"<%} if(visa_place_issued!=1){%>readonly="true"<%}%>>
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(visa_place_issued!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
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
										<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>							 								</td>
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
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>
                                </td>
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
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>
                                 </td>
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
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>
                                </td>
							</tr>
							
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td width="126" bgcolor="#f8f8f8" class="des"><%=_res("email_personal")%></td>
								<td width="266" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("EMAIL_PERSONAL")==null || rs.getString("EMAIL_PERSONAL").equals("null")){%>
										
									<%} else {%><%=rs.getString("EMAIL_PERSONAL") %> <%}%>
							  </td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="email_personal" <%if(rstemp.getString("EMAIL_PERSONAL")==null || rstemp.getString("EMAIL_PERSONAL").equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString("EMAIL_PERSONAL")%>"<%} if(email_personal!=1){%> readonly="true"<%}%>  /></td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(email_personal!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>
                                </td>
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
								<td colspan="5" class="title1" bgcolor="#007D93">&nbsp;<%=_res("ttcn.taichinh")%></td>
							</tr>
							<tr>
								<td width="126" bgcolor="#f8f8f8" class="des"><%=_res("name_acc_1")%></td>
								<td width="266" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("ACCOUNT_NAME") == null || rs.getString("ACCOUNT_NAME").equals("null")){%>
									<%} else {%> <%=rs.getString("ACCOUNT_NAME")%>  <%}%>
							  	</td>
								<td width="0" bgcolor="#CCCCCC"></td>
								<td width="294" bgcolor="#FFF7E7" class="value">
                                	<input type="text" name="name_acc_1" <%if(rstemp.getString("ACCOUNT_NAME")==null || rstemp.getString("ACCOUNT_NAME").equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString(33)%>"<%} if(name_acc_1!=1){%> readonly="true"<%}%>  />
                                </td>	
							  	<td width="36" align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(name_acc_1!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>
                                </td>
                            </tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("number_acc_1")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString(33)==null || rs.getString(33).equals("null")) {%> 
									<%} else {%><%=rs.getString(33)%><%}%>
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
								<td bgcolor="#f8f8f8" class="des"><%=_res("bank_acc_1")%></td>
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
								<td width="126" bgcolor="#f8f8f8" class="des"><%=_res("name_acc_2")%></td>
								<td width="266" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("ACCOUNT_NAME_2") == null || rs.getString("ACCOUNT_NAME_2").equals("null")){%>
									<%} else {%> <%=rs.getString("ACCOUNT_NAME_2")%>  <%}%>
							  	</td>
								<td width="0" bgcolor="#CCCCCC"></td>
								<td width="294" bgcolor="#FFF7E7" class="value">
                                	<input type="text" name="name_acc_2" <%if(rstemp.getString("ACCOUNT_NAME_2")==null || rstemp.getString("ACCOUNT_NAME_2").equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString("ACCOUNT_NAME_2")%>"<%} if(name_acc_2!=1){%> readonly="true"<%}%>  />
                                </td>	
							  	<td width="36" align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(name_acc_2!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>
                                </td>
                            </tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("number_acc_2")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("ACCOUNT_ID_2") == null || rs.getString("ACCOUNT_ID_2").equals("null")){%>
									<%} else {%> <%=rs.getString("ACCOUNT_ID_2")%>  <%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="number_acc_2" <%if(rstemp.getString("ACCOUNT_ID_2")==null || rstemp.getString("ACCOUNT_ID_2").equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString("ACCOUNT_ID_2")%>"<%} if(number_acc_2!=1){%> readonly="true"<%}%>  />
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(number_acc_2!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("bank_acc_2")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("ACCOUNT_BANK_2")==null || rs.getString("ACCOUNT_BANK_2").equals("null")){%>
									<%} else {%><%=rs.getString("ACCOUNT_BANK_2") %> <%}%> 
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="bank_acc_2" <%if(rstemp.getString("ACCOUNT_BANK_2")==null || rstemp.getString("ACCOUNT_BANK_2").equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString("ACCOUNT_BANK_2")%>"<%} if(bank_acc_2!=1){%> readonly="true"<%}%>  />
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(bank_acc_2!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
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
						<table width="790" cellpadding=6 cellspacing=1 align="center" style="border:1px solid #CCCCCC;">
							<tr>
								<td colspan="5" class="title1" bgcolor="#007D93">&nbsp;<%=_res("housing")%></td>
							</tr>
							<tr>
								<td width="126" bgcolor="#f8f8f8" class="des"><%=_res("housing_from_date")%></td>
								<td width="266" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("HOUSING_FROM_DATE") == null || rs.getString("HOUSING_FROM_DATE").equals("null")){%>
									<%} else {%> <%=SString.toString(rs.getDate("HOUSING_FROM_DATE"),"dd/MM/yyyy")%>  <%}%>
							  	</td>
								<td width="0" bgcolor="#CCCCCC"></td>
								<td width="294" bgcolor="#FFF7E7" class="value">
                                	<input type="text" size="7" name="housing_from_date" <%if(rstemp.getDate("HOUSING_FROM_DATE")==null){%> value=""
										<%} else {%>value="<%=SString.toString(rstemp.getDate("HOUSING_FROM_DATE"),"dd/MM/yyyy")%>"<%} if(housing_from_date!=1){%> readonly="true"<%}%>>
									<img <%if (housing_from_date!=1){%> disabled="disabled"<%}%> name="bthousing_from_date" onclick="return showCalendar('bthousing_from_date','housing_from_date', '%d/%m/%Y', false);" align="absmiddle" id="bthousing_from_date" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("housing_from_date")%>'>
                                </td>	
							  	<td width="36" align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(housing_from_date!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>
                                </td>
                            </tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("housing_to_date")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getDate("HOUSING_TO_DATE") == null || rs.getDate(57).equals("null")){%>
									<%} else {%> <%=SString.toString(rs.getDate("HOUSING_TO_DATE"),"dd/MM/yyyy")%><%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" size="7" name="housing_to_date" <%if(rstemp.getDate("HOUSING_TO_DATE")==null){%> value=""
									<%} else {%>value="<%=SString.toString(rstemp.getDate("HOUSING_TO_DATE"),"dd/MM/yyyy")%>"<%} if(housing_to_date!=1){%> readonly="true"<%}%>>
									<img <%if (housing_to_date!=1){%> disabled="disabled"<%}%> name="bthousing_to_date" onclick="return showCalendar('bthousing_to_date','housing_to_date', '%d/%m/%Y', false);" align="absmiddle" id="bthousing_to_date" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("housing_to_date")%>'>
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(housing_to_date!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("housing_rental")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%=rs.getDouble("HOUSING_RENTAL")%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="housing_rental" value="<%=rstemp.getDouble("HOUSING_RENTAL")%>"<% if(housing_rental!=1){%> readonly="true"<%}%>  />
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(housing_rental!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
						</table>
					</td>
				</tr>
                
                
                <tr>
					<td>
						<table width="790" cellpadding=6 cellspacing=1 align="center" style="border:1px solid #CCCCCC;">
							<tr>
								<td colspan="5" class="title1" bgcolor="#007D93">&nbsp;<%=_res("emergency_contact")%></td>
							</tr>
							<tr>
								<td width="126" bgcolor="#f8f8f8" class="des"><%=_res("contact_fullname")%></td>
								<td width="266" bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("CONTACT_FULLNAME") == null || rs.getString("CONTACT_FULLNAME").equals("null")){%>						
									<%} else {%> <%=rs.getString("CONTACT_FULLNAME")%>  <%}%>
							  	</td>
								<td width="0" bgcolor="#CCCCCC"></td>
								<td width="294" bgcolor="#FFF7E7" class="value">
                                	<input type="text" name="contact_fullname" <%if(rstemp.getString("CONTACT_FULLNAME")==null || rstemp.getString("CONTACT_FULLNAME").equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString("CONTACT_FULLNAME")%>"<%} if(contact_fullname!=1){%> readonly="true"<%}%>  />
                                </td>	
							  	<td width="36" align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(contact_fullname!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>
                                </td>
                            </tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("contact_relationship")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("CONTACT_RELATIONSHIP") == null || rs.getString("CONTACT_RELATIONSHIP").equals("null")){%>						
									<%} else {%> <%=rs.getString("CONTACT_RELATIONSHIP")%>  <%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="contact_relationship" <%if(rstemp.getString("CONTACT_RELATIONSHIP")==null || rstemp.getString("CONTACT_RELATIONSHIP").equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString("CONTACT_RELATIONSHIP")%>"<%} if(contact_relationship!=1){%> readonly="true"<%}%>  />
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(contact_relationship!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
							<tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("ttcn.sodienthoai")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("CONTACT_PHONE_NO") == null || rs.getString("CONTACT_PHONE_NO").equals("null")){%>						
									<%} else {%> <%=rs.getString("CONTACT_PHONE_NO")%>  <%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="contact_phone" <%if(rstemp.getString("CONTACT_PHONE_NO")==null || rstemp.getString("CONTACT_PHONE_NO").equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString("CONTACT_PHONE_NO")%>"<%} if(contact_phone!=1){%> readonly="true"<%}%>  />
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(contact_phone!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
                            <tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("contact_permanent_add")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("CONTACT_PERMANENT_ADD") == null || rs.getString("CONTACT_PERMANENT_ADD").equals("null")){%>						
									<%} else {%> <%=rs.getString("CONTACT_PERMANENT_ADD")%>  <%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="contact_permanent_add" <%if(rstemp.getString("CONTACT_PERMANENT_ADD")==null || rstemp.getString("CONTACT_PERMANENT_ADD").equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString("CONTACT_PERMANENT_ADD")%>"<%} if(contact_phone!=1){%> readonly="true"<%}%>  />
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(contact_permanent_add!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
									<%} else {%> src="<%=contextPath%>/img/icon_chapnhan.gif" <%}%>>								</td>
							</tr>
                            <tr><td height="1" bgcolor="#CCCCCC" colspan="5"></td></tr>
							<tr>
								<td bgcolor="#f8f8f8" class="des"><%=_res("contact_address_cont")%></td>
								<td bgcolor="#FFF7E7" class="value">
									<%if(rs.getString("CONTACT_ADDRESS_CONT") == null || rs.getString("CONTACT_ADDRESS_CONT").equals("null")){%>						
									<%} else {%> <%=rs.getString("CONTACT_ADDRESS_CONT")%>  <%}%>
								</td>
								<td bgcolor="#CCCCCC"></td>
								<td bgcolor="#FFF7E7" class="value">
									<input type="text" name="contact_address_cont" <%if(rstemp.getString("CONTACT_ADDRESS_CONT")==null || rstemp.getString("CONTACT_ADDRESS_CONT").equals("null"))
									{%> value=""<%} else {%>value="<%=rstemp.getString("CONTACT_ADDRESS_CONT")%>"<%} if(contact_address_cont!=1){%> readonly="true"<%}%>  />
								</td>
								<td align="center" bgcolor="#f8f8f8" class="value">
									<img <%if(contact_address_cont!=1){%>src="<%=contextPath%>/img/icon_tuchoi.gif" 
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
							<%if(manhanvien==1 || ho==1 || tendem==1 || ten==1 || masothenhanvien==1 || 
								 gioitinh1==1 || ngaysinh==1 || honnhan==1 || cmnd==1 || ngaycapcmnd==1 || 
								 noicapcmnd==1 || passport==1 || ngaycappassport==1 || noicappassport==1 || 
								 quoctich==1 || dantoc==1 || tongiao==1 || noisinh==1 || quequan==1 || 
								 xuatthan==1 || dcthuongtru==1 || dctamtru==1 ||
								 dclienhe==1 || dienthoai==1 || mobile==1 || email==1 ||	website==1 || 
								 taikhoan==1 || nganhang==1 || masothue==1 || coquanthue==1 ||
								 passport_expired_date==1 || visa_number==1 || visa_place_issued==1 ||
								 visa_issued_date==1 || visa_expired_date==1 || regular_temporary==1 ||
								 fulltime_parttime==1 || work_place==1 || email_personal==1 ||
								 org_level==1 || job_grade==1 || name_acc_1==1 || name_acc_2==1 ||
								 number_acc_2==1 || bank_acc_2==1 || housing_from_date==1 ||
								 housing_to_date==1 || housing_rental==1 || contact_fullname==1 ||
								 contact_relationship==1 || contact_permanent_add==1 || contact_address_cont==1 ||
								 contact_phone==1)
							{%><%} else {%>readonly="true"<%}%>
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
		else if(dm.passportnv.value!='' && dm.passport_issued_date.value==''){
		 	alert('<%=_res("msg_ngaycappassport")%>');
			dm.passport_issued_date.focus();
		}
		else if(dm.passportnv.value=='' && dm.passport_issued_date.value!=''){
		 	alert('<%=_res("msg_passport")%>');
			dm.passportnv.focus();
		}
		else if(dm.passport_issued_date.value!='' && checkDate(dm.passport_issued_date, true)!='TRUE'){
			alert('<%=_res("msg_ngaycappassport1")%>');
			dm.passport_issued_date.focus();
		}
		else if(dm.noicappassport.value!='' && dm.noicappassport.value.length>85){
		 	alert('<%=_res("udttcn.alert.lengthnoicappassport")%>');
			dm.noicappassport.focus();
		}
		else if(dm.noisinhnv.value!='' && dm.noisinhnv.value.length>42){
			alert('<%=_res("udttcn.alert.lengthnoisinh")%>');
			dm.noisinhnv.focus();
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
		else if(dm.visa_issued_date.value!='' && checkDate(dm.visa_issued_date, true)!='TRUE'){
			alert('<%=_res("msb_check_date")%>');
			dm.visa_issued_date.focus();
		}
		else if(dm.visa_expired_date.value!='' && checkDate(dm.visa_expired_date, true)!='TRUE'){
			alert('<%=_res("msb_check_date")%>');
			dm.visa_expired_date.focus();
		}
		else if(dm.housing_from_date.value!='' && checkDate(dm.housing_from_date, true)!='TRUE'){
			alert('<%=_res("msb_check_date")%>');
			dm.housing_from_date.focus();
		}
		else if(dm.housing_to_date.value!='' && checkDate(dm.housing_to_date, true)!='TRUE'){
			alert('<%=_res("msb_check_date")%>');
			dm.housing_to_date.focus();
		}
		else if(dm.housing_rental!="" && isNaN(dm.housing_rental.value))
		{
			alert('<%=_res("msg_check_number")%>');
			dm.housing_rental.focus();
		}
		/*else if(dm.chieucaonv!="" && isNaN(dm.chieucaonv.value))
		{
			alert('<%=_res("udttcn.alert.chieucao")%>');
			dm.chieucaonv.focus();
		}*/
		 
		else {
			/*if (dm.ngayvaodangnv.value !='' && checkDate(dm.ngayvaodangnv, true)!='TRUE'){
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
			  
			else{*/
				dm.submit();
			//}
		}
	}
</script>


