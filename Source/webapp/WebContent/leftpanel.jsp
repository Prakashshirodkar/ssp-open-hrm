
<%
	String strSqlTtcn1 = ("select * from WEB_XEM_THONGTIN_NHANVIEN('"+username+"')");
	
%>	
<table border="0" width="100%" cellspacing="0" cellpadding="0" height="5">
	<tr>
		<td></td>
	</tr>
</table>						
<table align="center" border="0" width="165" cellspacing="0" cellpadding="0" background="<%=contextPath%>/img/bg-left.gif" height="215px">
	<tr>
		<td style="font-weight: bold;" height="35" align="center" class="des">
			<%=_res("lpn.hello")%>
		<br>
		<%
		java.sql.Connection conn1=null;
		try{
			conn1 = dbConnManager.getConnection("topmostread");	
			java.sql.PreparedStatement st1=conn1.prepareStatement(strSqlTtcn1);
			ResultSet rs1 = st1.executeQuery();
			while(rs1.next()){ 
			String hoten = rs1.getString(2) + " " + rs1.getString(3) + " " + rs1.getString(4);
			if(hoten!=null){%>
				<%=hoten%><%} else {%>
				No Name
			<%}%></td>
	</tr>
	<tr>
		<td height="170" align="center">
		<img border="1" <%if(rs1.getBlob(43)==null || rs1.getBlob(43).equals("null")){%>src="<%=contextPath%>/img/no_img.jpg"<%} else {%> src="<%=contextPath%>/user/image.jsp"<%}%> width="124" height="154"></td>								
	<% } 
		//rsttcn1.close(); 
		rs1.close();
		st1.close();
	  //conn1.close();
		}catch(Exception e){
		}finally{
			dbConnManager.freeConnection("topmostread", conn1);
		}%>
	</tr>
    <form name="frmLanguage" action="<%=contextPath%>/user/RegistryController.do" method="post">
    	<input type="hidden" name="lang" />	
        <input type="hidden" name="username" value="<%=username%>" />
        <input type="hidden" name="state" value="changelang" />
    <tr bgcolor="#E8F5F7">
    	<td style="font-weight: bold;" height="35" align="center" ><a <%if(!language.equals("vi")){%>href="javascript:changeLang('vi');"<%}%> class="des" style="text-decoration:none;" title="<%=_res("lang.vn")%>"><img border="0" align="absmiddle" src="<%=contextPath%>/img/viet.gif"/> <%=_res("lang.vn")%></a> - <a class="des" title="<%=_res("lang.eng")%>"<%if(!language.equals("eng")){%> href="javascript:changeLang('eng');"<%}%> style="text-decoration:none;"><img border="0" align="absmiddle" src="<%=contextPath%>/img/eng.gif" /> <%=_res("lang.eng")%></a></td>
    </tr>
    </form>						
</table>

<script language="javascript">
	function changeLang(value){
		document.frmLanguage.lang.value = value;
		document.frmLanguage.submit();
	}
</script>

		<%if(cm.equals("canhan")){%><%@ include file="user/leftcanhan.jsp" %><%}%>
		<%if(cm.equals("thongke")){%><%@ include file="user/leftthongke.jsp" %><%}%>
		<%if(cm.equals("phepnam")){%><%@ include file="user/leftphepnam.jsp" %><%}%>