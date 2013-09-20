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
	DecimalFormat myFormatter = new DecimalFormat("###,###.###");
	String output;
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
					//String	strSqlPl = ("EXECUTE PROCEDURE WEB_XEM_BANGLUONG_CANHAN('"+username+"', '"+thang+"', '"+nam+"')");
					String	strSqlPl = ("select * from WEB_XEM_BANGLUONG_CANHAN('"+username+"', '"+thang+"', '"+nam+"')");
					//java.sql.Statement stttpn=conn.createStatement();
					rs = st.executeQuery(strSqlPl);
					if(rs.next()){
				%>
				<tr>
					<td>
						<table align="center" width="790" border="0" cellspacing="1" cellpadding="2" style="border:1px solid #CCCCCC;">
							<tr height="22px">
								<td bgcolor="#007D93"><a class="link2" href="#" style="text-decoration:none;" onclick="javascipt:showDiv('phieuluongthang','imgphieuluongthang')"><img id="imgphieuluongthang" border="0" src="<%=contextPath%>/img/minus.gif" align="absmiddle" />&nbsp;<%=_res("pl.hangthang")%>&nbsp;(<%=thang%>/<%=nam%>)</a></td>	
							</tr>
                            
                            <tr>
                                <td>
                                    <div id="phieuluongthang" style="display:block;">
                                        <table align="center" width="100%" border="0" cellspacing="1" cellpadding="2">
                                    <%
                                        int check;
                                        for(int i = 1; i <=60; i = i+2){
                                            if(!(rs.getString(i)==null || rs.getString(i).equals(null))){
                                                output = myFormatter.format(rs.getDouble(i+1));
                                                check = rs.getString(i).indexOf("*");
                                    %>
                                            <tr>
                                                <td width="234" bgcolor="#f8f8f8" class="des" <%if(check == 0){%> style="font-weight:bold;" <%}%>><%if(check!=0){%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%}%><%=rs.getString(i)%></td>
                                                <td width="93" bgcolor="#FFF7E7" align="right" class="value"><%if(check != 0 || (check==0&&!(rs.getString(i+1)==null || rs.getString(i+1).equals(null)))){%><%=output%><%}%></td>
                                                <td width="450" bgcolor="#FFF7E7" class="value"></td>
                                            </tr>
                                            <tr><td height="1" bgcolor="#CCCCCC" colspan="3"></td></tr>
                                            <%}}%>
                                    	</table>
                                    </div>
                                </td>
                            </tr>   
						</table>  
					</td>
				</tr>
				<%}
                	strSqlPl = ("select * from WEB_XEM_BANGLUONG_DANHGIA('"+username+"', '"+thang+"', '"+nam+"')");
					//java.sql.Statement stttpn=conn.createStatement();
					rs = st.executeQuery(strSqlPl);
					if(rs.next()){
				%>
                <tr>
					<td>
						<table align="center" width="790" border="0" cellspacing="1" cellpadding="2" style="border:1px solid #CCCCCC;">
							<tr height="22px">
								<td bgcolor="#007D93"><a class="link2" href="#" style="text-decoration:none;" onclick="javascipt:showDiv('phieuluongquy','imgphieuluongquy')"><img id="imgphieuluongquy" border="0" src="<%=contextPath%>/img/minus.gif" align="absmiddle" />&nbsp;<%=_res("pl.hangquy")%>&nbsp;(<%=thang%>/<%=nam%>)</a></td>	
							</tr>
                            <tr>
                                <td>
                                    <div id="phieuluongquy" style="display:block;">
                                        <table align="center" width="100%" border="0" cellspacing="1" cellpadding="2">
                                    <%
                                        int check1;
                                        for(int i = 1; i <=60; i = i+2){
                                            if(!(rs.getString(i)==null || rs.getString(i).equals(null))){
                                                output = myFormatter.format(rs.getDouble(i+1));
                                                check1 = rs.getString(i).indexOf("*");
                                    %>
                                            <tr>
                                                <td width="234" bgcolor="#f8f8f8" class="des" <%if(check1 == 0){%> style="font-weight:bold;" <%}%>><%if(check1!=0){%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%}%><%=rs.getString(i)%></td>
                                                <td width="93" bgcolor="#FFF7E7" align="right" class="value"><%if(check1 != 0 || (check1==0&&!(rs.getString(i+1)==null || rs.getString(i+1).equals(null)))){%><%=output%><%}%></td>
                                                <td width="450" bgcolor="#FFF7E7" class="value"></td>
                                            </tr>
                                            <tr><td height="1" bgcolor="#CCCCCC" colspan="3"></td></tr>
                                            <%}}%>
                                    	</table>
                                    </div>
                                </td>
                            </tr>   
						</table>  
					</td>
				</tr>
                <%}
                	strSqlPl = ("select * from WEB_XEM_BANGTHUONG_TUQUYLUONG('"+username+"', '"+thang+"', '"+nam+"')");
					//java.sql.Statement stttpn=conn.createStatement();
					rs = st.executeQuery(strSqlPl);
					if(rs.next()){
				%>
                <tr>
					<td>
						<table align="center" width="790" border="0" cellspacing="1" cellpadding="2" style="border:1px solid #CCCCCC;">
							<tr height="22px">
								<td bgcolor="#007D93"><a class="link2" href="#" style="text-decoration:none;" onclick="javascipt:showDiv('phieuthuong','imgphieuthuong')"><img id="imgphieuthuong" border="0" src="<%=contextPath%>/img/minus.gif" align="absmiddle" />&nbsp;<%=_res("pl.phieuthuong")%>&nbsp;(<%=thang%>/<%=nam%>)</td>	
							</tr>
                            <tr>
                                <td>
                                    <div id="phieuthuong" style="display:block;">
                                        <table align="center" width="100%" border="0" cellspacing="1" cellpadding="2">
                                    <%
                                        int check2;
                                        for(int i = 1; i <=60; i = i+2){
                                            if(!(rs.getString(i)==null || rs.getString(i).equals(null))){
                                                output = myFormatter.format(rs.getDouble(i+1));
                                                check2 = rs.getString(i).indexOf("*");
                                    %>
                                            <tr>
                                                <td width="234" bgcolor="#f8f8f8" class="des" <%if(check2 == 0){%> style="font-weight:bold;" <%}%>><%if(check2!=0){%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%}%><%=rs.getString(i)%></td>
                                                <td width="93" bgcolor="#FFF7E7" align="right" class="value"><%if(check2 != 0 || (check2==0&&!(rs.getString(i+1)==null || rs.getString(i+1).equals(null)))){%><%=output%><%}%></td>
                                                <td width="450" bgcolor="#FFF7E7" class="value"></td>
                                            </tr>
                                            <tr><td height="1" bgcolor="#CCCCCC" colspan="3"></td></tr>
                                            <%}}%>
                                    	</table>
                                    </div>
                                </td>
                            </tr>   
						</table>  
					</td>
				</tr>
                <%}
                	strSqlPl = ("select * from WEB_XEM_BANGLUONG_THUVIEC('"+username+"', '"+thang+"', '"+nam+"')");
					//java.sql.Statement stttpn=conn.createStatement();
					rs = st.executeQuery(strSqlPl);
					if(rs.next()){
				%>
                <tr>
					<td>
						<table align="center" width="790" border="0" cellspacing="1" cellpadding="2" style="border:1px solid #CCCCCC;">
							<tr height="22px">
								<td bgcolor="#007D93"><a class="link2" href="#" style="text-decoration:none;" onclick="javascipt:showDiv('thuviec','imgthuviec')"><img id="imgthuviec" border="0" src="<%=contextPath%>/img/minus.gif" align="absmiddle" />&nbsp;<%=_res("pl.thuviec")%>&nbsp;(<%=thang%>/<%=nam%>)</a></td>	
							</tr>
                            <tr>
                                <td>
                                    <div id="thuviec" style="display:block;">
                                        <table align="center" width="100%" border="0" cellspacing="1" cellpadding="2">
                                    <%
                                        int check3;
                                        for(int i = 1; i <=60; i = i+2){
                                            if(!(rs.getString(i)==null || rs.getString(i).equals(null))){
                                                output = myFormatter.format(rs.getDouble(i+1));
                                                check3 = rs.getString(i).indexOf("*");
                                    %>
                                            <tr>
                                                <td width="234" bgcolor="#f8f8f8" class="des" <%if(check3 == 0){%> style="font-weight:bold;" <%}%>><%if(check3!=0){%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%}%><%=rs.getString(i)%></td>
                                                <td width="93" bgcolor="#FFF7E7" align="right" class="value"><%if(check3 != 0 || (check3==0&&!(rs.getString(i+1)==null || rs.getString(i+1).equals(null)))){%><%=output%><%}%></td>
                                                <td width="450" bgcolor="#FFF7E7" class="value"></td>
                                            </tr>
                                            <tr><td height="1" bgcolor="#CCCCCC" colspan="3"></td></tr>
                                            <%}}%>
                                    	</table>
                                    </div>
                                </td>
                            </tr>   
						</table>  
					</td>
				</tr>
                
                <%}
                	strSqlPl = ("select * from WEB_XEM_BANGPC_DIHOC('"+username+"', '"+thang+"', '"+nam+"')");
					//java.sql.Statement stttpn=conn.createStatement();
					rs = st.executeQuery(strSqlPl);
					if(rs.next()){
				%>
                <tr>
					<td>
						<table align="center" width="790" border="0" cellspacing="1" cellpadding="2" style="border:1px solid #CCCCCC;">
							<tr height="22px">
								<td bgcolor="#007D93"><a class="link2" href="#" style="text-decoration:none;" onclick="javascipt:showDiv('phucap','imgphucap')"><img id="imgphucap" border="0" src="<%=contextPath%>/img/minus.gif" align="absmiddle" />&nbsp;<%=_res("pl.phucap")%>&nbsp;(<%=thang%>/<%=nam%>)</a></td>	
							</tr>
                            <tr>
                                <td>
                                    <div id="phucap" style="display:block;">
                                        <table align="center" width="100%" border="0" cellspacing="1" cellpadding="2">
                                    <%
                                        int check4;
                                        for(int i = 1; i <=60; i = i+2){
                                            if(!(rs.getString(i)==null || rs.getString(i).equals(null))){
                                                output = myFormatter.format(rs.getDouble(i+1));
                                                check4 = rs.getString(i).indexOf("*");
                                    %>
                                            <tr>
                                                <td width="234" bgcolor="#f8f8f8" class="des" <%if(check4 == 0){%> style="font-weight:bold;" <%}%>><%if(check4!=0){%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%}%><%=rs.getString(i)%></td>
                                                <td width="93" bgcolor="#FFF7E7" align="right" class="value"><%if(check4 != 0 || (check4==0&&!(rs.getString(i+1)==null || rs.getString(i+1).equals(null)))){%><%=output%><%}%></td>
                                                <td width="450" bgcolor="#FFF7E7" class="value"></td>
                                            </tr>
                                            <tr><td height="1" bgcolor="#CCCCCC" colspan="3"></td></tr>
                                            <%}}%>
                                    	</table>
                                    </div>
                                </td>
                            </tr>   
						</table>  
					</td>
				</tr>
                
                <%}
                	strSqlPl = ("select * from WEB_XEM_BANGLUONG_THUENGOAI('"+username+"', '"+thang+"', '"+nam+"')");
					//java.sql.Statement stttpn=conn.createStatement();
					rs = st.executeQuery(strSqlPl);
					if(rs.next()){
				%>
                <tr>
					<td>
						<table align="center" width="790" border="0" cellspacing="1" cellpadding="2" style="border:1px solid #CCCCCC;">
							<tr height="22px">
								<td bgcolor="#007D93"><a class="link2" href="#" style="text-decoration:none;" onclick="javascipt:showDiv('thuengoai','imgthuengoai')"><img id="imgthuengoai" border="0" src="<%=contextPath%>/img/minus.gif" align="absmiddle" />&nbsp;<%=_res("pl.thuengoai")%>&nbsp;(<%=thang%>/<%=nam%>)</a></td>	
							</tr>
                            <tr>
                                <td>
                                    <div id="thuengoai" style="display:block;">
                                        <table align="center" width="100%" border="0" cellspacing="1" cellpadding="2">
                                    <%
                                        int check5;
                                        for(int i = 1; i <=60; i = i+2){
                                            if(!(rs.getString(i)==null || rs.getString(i).equals(null))){
                                                output = myFormatter.format(rs.getDouble(i+1));
                                                check5 = rs.getString(i).indexOf("*");
                                    %>
                                            <tr>
                                                <td width="234" bgcolor="#f8f8f8" class="des" <%if(check5 == 0){%> style="font-weight:bold;" <%}%>><%if(check5!=0){%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%}%><%=rs.getString(i)%></td>
                                                <td width="93" bgcolor="#FFF7E7" align="right" class="value"><%if(check5 != 0 || (check5==0&&!(rs.getString(i+1)==null || rs.getString(i+1).equals(null)))){%><%=output%><%}%></td>
                                                <td width="450" bgcolor="#FFF7E7" class="value"></td>
                                            </tr>
                                            <tr><td height="1" bgcolor="#CCCCCC" colspan="3"></td></tr>
                                            <%}}%>
                                    	</table>
                                    </div>
                                </td>
                            </tr>   
						</table>  
					</td>
				</tr>
                
                <% }rs.close(); st.close(); %>
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

<script language="javascript">
	function showDiv(div,img){
		if(document.getElementById(div).style.display=='none'){
			document.getElementById(div).style.display='block';
			document.getElementById(img).src='<%=contextPath%>/img/minus.gif';
		}
		else{
			document.getElementById(div).style.display='none';
			document.getElementById(img).src='<%=contextPath%>/img/plus.gif';
		}
	}
</script>