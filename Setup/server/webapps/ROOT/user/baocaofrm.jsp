<%@ include file="../standard.jsp" %>
<%@ include file="../dbconnect.jsp" %>
<%@ include file="resource.inc"%>
<%@ include file="redirect_user.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=_res("baocao.title")%></title>
</head>

<body topmargin="0" leftmargin="0" background="<%=contextPath%>/img/bg.png" style="background-attachment: fixed">

<div align="center">
	<table border="0" width="1000" cellspacing="0" cellpadding="0" background="<%=contextPath%>/img/bg-page.gif">
		<tr>
			<%@ include file="../header.jsp" %>
			
		</tr>
		<tr>
			<td width="1000" height="350" nowrap valign="top">
				<table border="0" width="997" cellspacing="1" cellpadding="0" height="100%">
					<tr>
						<td width="175" nowrap bgcolor="#FFFFFF" align="center" valign="top">
						<%@ include file="../leftadmin.jsp" %>
						</td>
						<td nowrap width="822" bgcolor="#FFFFFF" valign="top">
						<%@ include file="baocao.jsp"%>
						</td>
					</tr>
				</table>	
			</td>
		</tr>
		<tr>
				<%@ include file="../footer.jsp"%>
		</tr>
	</table>
</div>

</body>

</html>