<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@ page import="java.util.*,java.text.*" %>
<%@ page contentType="text/html; charset=utf-8"%>
<%
	String contextPath = request.getContextPath();
	String url = "";
	session.invalidate();
	url = contextPath + "/login.jsp";
	response.sendRedirect(url);
%>