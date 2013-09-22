<%@ include file="../standard.jsp" %>
<%@ include file="../dbconnect.jsp" %>
<%@ include file="resource.inc"%>
<%@ include file="redirect_user.jsp" %>

<%
	String listParamName = request.getParameter("listParamName");
	String report_id = request.getParameter("report_id");
	String listParamValue = request.getParameter("listParamValue");
	java.sql.Connection conn = null;
	String strSqlSelect = "";
	String strSqlSelect1 = "select report_name, sqlselect from web_danhsach_baocao('"+username+"','"+language+"') where reportid='"+report_id+"'";
	String strNameReport = "";
	//String strSqlParamName = "select sys_report_caption.column_id,sys_report_caption.column_caption, sys_report_caption.column_width, sys_report_caption.column_format,sys_report_caption.column_group from sys_report_caption where reportid='"+report_id+"' AND ((sys_report_caption.column_group=1) or(sys_report_caption.invisible IS NULL) or (sys_report_caption.invisible=0)) order by sys_report_caption.column_index asc";
	String strSqlParamName = "select * from web_report_caption('"+report_id+"','"+language+"') where (column_group=1 or invisible IS NULL or invisible=0) order by column_index asc";
	try{
	    conn = dbConnManager.getConnection("topmostread");
		java.sql.PreparedStatement st=conn.prepareStatement(strSqlParamName);
		ResultSet rs = st.executeQuery();
		int intCount = 0;
		while(rs.next()){
			intCount ++;
		}
%>
	<table width="100%" align="center" border="0" cellspacing="1" cellpadding="2" bgcolor="#007D93" >
		<tr height="25px">
		<%
			String listFieldName="";
			String listColumn_Format="";
			String listColumn_Gourp="";
			int intColumnGourp=0;
			rs = st.executeQuery(strSqlParamName);
			int intWidth = 0;
			while (rs.next()){
				if(rs.getInt(5)==1)
					intColumnGourp=intColumnGourp+1;
				intWidth = rs.getInt(3);
				listColumn_Format = listColumn_Format + rs.getString(4) + "<!*-*!>";
				listFieldName = listFieldName + rs.getString(1) + "<!*-*!>";
				listColumn_Gourp = listColumn_Gourp + rs.getInt(5) + "<!*-*!>";
				if(rs.getInt(5)!=1){
		%>
			<td class="des" bgcolor="#f8f8f8" style="font-weight:bold;" align="center" width="<%=intWidth*1.2%>" nowrap ><%=rs.getString(2)%></td>
		<%
				}
			}//System.out.println("intColumnGourp: " + intColumnGourp);
		%>
		</tr>
		
	<%	
		
		rs=st.executeQuery(strSqlSelect1);
		if(rs.next()){
			strSqlSelect = rs.getString(2);
			strNameReport = rs.getString(1);
		}
		//System.out.println(strSqlSelect);
		String[] arrListParamName = SString.parseListParam(listParamName, "<!*-*!>");
		String[] arrListParamValue = SString.parseListParam(listParamValue, "<!*-*!>");
		String[] arrListColumn_Format = SString.parseListParam(listColumn_Format, "<!*-*!>");
		String[] arrListColumn_Gourp = SString.parseListParam(listColumn_Gourp, "<!*-*!>");
		String listIndexColumnDate = "";
		//System.out.println(listFieldName);
		for(int k = 0; k < arrListParamName.length; k++){
			strSqlSelect = strSqlSelect.replaceAll(":"+arrListParamName[k],"'"+arrListParamValue[k]+"'");
		} 
		int index = 0;
		for(int p = 0; p < arrListColumn_Format.length ; p++){
			if(arrListColumn_Format[p].toUpperCase().equals("DATE")){
				//index = p + 1;
				listIndexColumnDate = listIndexColumnDate + p + "<!*-*!>";
			}
		}
		System.out.println(listColumn_Gourp);
		//System.out.println(listIndexColumnDate);
		strSqlSelect = strSqlSelect.replaceAll("'null'","null");
		strSqlSelect = strSqlSelect.replaceAll("'true'","'1'");
		strSqlSelect = strSqlSelect.replaceAll("'false'","'0'");
		strSqlSelect = strSqlSelect.replaceAll(":user_name","'"+useraccid+"'");
		strSqlSelect = strSqlSelect.replaceAll(":User_name","'"+useraccid+"'");
		strSqlSelect = strSqlSelect.replaceAll(":USER_NAME","'"+useraccid+"'");
		/*
		rs = st.executeQuery(strSqlSelect);
		ResultSetMetaData rsMetaData = rs.getMetaData();
		int numberOfColumns = rsMetaData.getColumnCount();
		*/
		//System.out.println(strSqlSelect);
		String[] arrListIndexColumnDate = SString.parseListParam(listIndexColumnDate,"<!*-*!>");
		String[] arrListFieldName = SString.parseListParam(listFieldName,"<!*-*!>");
		int intRowCount = 0;
		rs = st.executeQuery(strSqlSelect);
		while (rs.next()){
			intRowCount ++;
		} 
		int temp = intCount-intColumnGourp;
		System.out.println(strSqlSelect);
		if(intRowCount!=0){
			String strColumn_Format = "";
			String strTempNameDonvi = "";
			java.util.Date dateValue; 
			rs = st.executeQuery(strSqlSelect);
			while(rs.next()){
				if(intColumnGourp!=0){
					for(int n = 0; n < arrListFieldName.length; n++){
						strColumn_Format = arrListColumn_Format[n];
						if(arrListColumn_Gourp[n].equals("1") ){
						//System.out.println(rs.getString(arrListFieldName[n]));
							if(!strTempNameDonvi.equals(rs.getString(arrListFieldName[n]))){ 
								if(rs.getString(arrListFieldName[n])!=null){
	%>
		<tr valign="top">
			<td valign="top" class="des" bgcolor="#f8f8f8" colspan="<%=intCount-intColumnGourp%>">
									<%if(arrListColumn_Format[n].toUpperCase().equals("DATE")){%>
				<%=SString.toString(rs.getDate(arrListFieldName[n]),"dd/MM/yyyy")%>
									<%} else {%>
				<%=rs.getString(arrListFieldName[n])%>
									<%}%>
			</td>
		</tr>
	<%
								} 
							}
							if(rs.getString(arrListFieldName[n])!=null)
								strTempNameDonvi=rs.getString(arrListFieldName[n]);
						}
					}
				}
	%>
		<tr>
	<%
				for(int n = 0; n < arrListFieldName.length; n++){ 
					strColumn_Format = arrListColumn_Format[n];
					if(arrListColumn_Gourp[n].equals("0")){		
	%>
			<td bgcolor="#FFF7E7" class="value">
				<%
						if(!(rs.getString(arrListFieldName[n])==null || rs.getString(arrListFieldName[n]).equals("null"))){
							if(arrListColumn_Format[n].toUpperCase().equals("DATE")){							
				%>	
				<center><%=SString.toString(rs.getDate(arrListFieldName[n]),"dd/MM/yyyy")%></center>
				<%
							} else if(arrListColumn_Format[n].toUpperCase().equals("CHECK")){
								if(rs.getInt(arrListFieldName[n])==1){
				%>
				<center>X</center>
				<%
								}
							} else if(arrListColumn_Format[n].toUpperCase().equals("TIME")){
				%>
				<center><%=rs.getTime(arrListFieldName[n])%></center>
				<%
							} else if(rs.getString(arrListFieldName[n]).equals("Nữ")){
				%>
				&nbsp;<%=UTF8.UTF8(rs.getString(arrListFieldName[n]))%>
				<%
							} else {
				%>
				&nbsp;<%=rs.getString(arrListFieldName[n])%>
				<%
							}
						}
				%>
			</td>
	<%
					}
				}
	%>
		</tr>
	<%
			}
		} else {
	%>
    	<tr>
	<%
			for(int n = 0; n < arrListFieldName.length; n++){ 
				if(arrListColumn_Gourp[n].equals("0")){	
	%>
			<td bgcolor="#FFF7E7" class="value">&nbsp;</td>
	<%
				}
			}
	%>
		</tr>
	<%
		}
		rs.close(); st.close();
	%>
	</table>
<%
	}catch(Exception e){
		e.printStackTrace();
	    System.out.println(e.getMessage());
	}finally{
		dbConnManager.freeConnection("topmostread", conn);
	}
%>