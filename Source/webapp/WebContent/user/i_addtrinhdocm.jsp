<%@ include file="../standard.jsp" %>
<%@ include file="../dbconnect.jsp" %>
<%@ include file="resource.inc"%>
<%@ include file="redirect_user.jsp" %>

<%
	//String sqlcheck = ("select * from HR_CAUHINH_SUATHONGTIN('"+username+"')");
	String ma_chuyenmon = request.getParameter("ma_chuyenmon");
	String strSqlChuyenmon_Level = "select * from HR_FIELD_LEVEL where HR_FIELD_LEVEL.edu_field_no = '"+ma_chuyenmon+"'";								
	java.sql.Connection conn = null;
	try{
	    conn = dbConnManager.getConnection("topmostread");
		java.sql.PreparedStatement st=conn.prepareStatement(strSqlChuyenmon_Level);
		ResultSet rs = st.executeQuery();
		//rs=st.executeQuery(strSqlChuyenmon_Level);
%>	

	<select name="ma_trinhdocm">
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