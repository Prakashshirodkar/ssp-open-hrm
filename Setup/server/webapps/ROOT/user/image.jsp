<%@page import = "java.io.*,java.awt.Image,java.sql.ResultSet"%>
<%@ include file="../dbconnect.jsp" %>
<%
	String username = String.valueOf(session.getAttribute("logusername"));
 	String sqlttcn = ("select hr_employee.portrait from hr_employee where hr_employee.employee_no ='"+username+"'"); 
 	java.sql.Connection conn = null;
 	try
	{
 		conn = dbConnManager.getConnection("topmostread");
		java.sql.PreparedStatement st=conn.prepareStatement(sqlttcn);
	    //java.sql.Statement stttcn=conn.createStatement();
	    ResultSet rsttcn = st.executeQuery();
	    if(rsttcn.next()){
	    	OutputStream o = response.getOutputStream();
			byte[] imgData = rsttcn.getBlob(1).getBytes(1, (int)rsttcn.getBlob(1).length());
			o.write(imgData);
			//o.flush(); 
			o.close();
	    }
	   	rsttcn.close();
	   	st.close();
		//conn.close();
	}catch (Exception e){
		e.printStackTrace();
		//throw e;
	}
	finally
    {
		//o.flush();
		//o.close();
		dbConnManager.freeConnection("topmostread", conn);
    }
%>

