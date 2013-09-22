<%@ include file="../standard.jsp" %>
<%@ include file="../dbconnect.jsp" %>
<%@ include file="resource.inc"%>
<%@ include file="redirect_user.jsp" %>

<%
	//String sqlcheck = ("select * from HR_CAUHINH_SUATHONGTIN('"+username+"')");
	String ma_ngoaingu = request.getParameter("ma_ngoaingu");
	String strSqlLanguage_Level = "select * from HR_LANGUAGE_LEVEL where HR_LANGUAGE_LEVEL.language_no = '"+ma_ngoaingu+"'";									
	java.sql.Connection conn = null;
	try{
	    conn = dbConnManager.getConnection("topmostread");
		java.sql.PreparedStatement st=conn.prepareStatement(strSqlLanguage_Level);
		ResultSet rs = st.executeQuery();
		//rs=st.executeQuery(strSqlLanguage_Level);
%>	

	<select name="ma_trinhdonn">
		<%while(rs.next()){%>
			<option value="<%=rs.getString(2)%>"><%=rs.getString(3)%></option>
		<%}rs.close();st.close();%>
	</select>
<%
	}catch(Exception e){
	      //e.printStackTrace();
	      //out.println(e.getMessage());
	}finally{
		dbConnManager.freeConnection("topmostread", conn);
	}
%>