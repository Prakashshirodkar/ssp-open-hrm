<%@ include file="../standard.jsp" %>
<%@ include file="../dbconnect.jsp" %>
<%@ include file="resource.inc"%>
<%@ include file="redirect_user.jsp" %>

<%
	//String sqlcheck = ("select * from HR_CAUHINH_SUATHONGTIN('"+username+"')");
	String ma_kynang = request.getParameter("ma_kynang");
	String strSqlSkill_Level = "select * from HR_SKILL_LEVEL where HR_SKILL_LEVEL.skill_no = '"+ma_kynang+"'";								
	java.sql.Connection conn = null;
	try{
	    conn = dbConnManager.getConnection("topmostread");
		java.sql.PreparedStatement st=conn.prepareStatement(strSqlSkill_Level);
		ResultSet rs = st.executeQuery();
		//rs=st.executeQuery(strSqlSkill_Level);
%>	

	<select name="ma_trinhdokn">
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