<%
	String username = String.valueOf(session.getAttribute("logusername"));
	String pass = String.valueOf(session.getAttribute("logpass"));
	String check = String.valueOf(session.getAttribute("check"));
	String contextPath = request.getContextPath();
	String url = "";
	if (!username.equals("null") && !pass.equals("null") && check.equals("0"))
		url = contextPath + "/user/changepassfrm.jsp?cm=doi";
	else if (!username.equals("null") && !pass.equals("null") && check.equals("1"))
		url = contextPath + "/user/homefrm.jsp?cm=tintuc";
	else
		url = contextPath + "/login.jsp";
	//System.out.print(url);
	response.sendRedirect(url);
%>
