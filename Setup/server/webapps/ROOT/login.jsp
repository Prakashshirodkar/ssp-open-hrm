<%@ include file="standard.jsp" %>
<%@ include file="user/resource.inc"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=_res("login.submit")%></title>
</head>

<body topmargin="0" leftmargin="0" background="img/bg.png">

<div align="center">
	<table border="0" width="1000" cellspacing="0" cellpadding="0" background="img/bg-page.gif">
		<tr>
			<td height="97" valign="bottom" background="img/bg-top.gif">
			<div align="left">
				<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="579" height="100">
					<param name="movie" value="img/ssp_kysuufinal.swf">
					<param name="quality" value="High">
					<embed src="img/ssp_kysuufinal.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="579" height="100" quality="High"></object>
				<table border="0" width="1000" cellspacing="0" background="img/top-nav-off.gif" cellpadding="0">
					<tr>
						<td align="center" nowrap height="28"></td>
					</tr>
				</table>
			</div>
			</td>
		</tr>
		<tr>
			<td width="1000" height="350" nowrap valign="top">
				<table align="center" border="0" width="998" cellspacing="0" cellpadding="0" height="100%">
					<tr>
						<td width="100%" nowrap bgcolor="#FFFFFF" align="center" valign="middle">						
							 <form action="LoginController.do" name="frmLogin">
							<table cellpadding=5 cellspacing=0 align="center" width="350" background="img/bg-left.gif" style="border:1px solid #CCCCCC;">
								<tr height="22px"> 
										<td colspan="2" align="center" style="font-weight:bold; color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:12;" bgcolor="#007D93"><span class="style1"><%=_res("login.title")%> </span></td>
									</tr>
								<tr>
									<td align="center" colspan="2">									
									<font color="red"><%if(cm.equals("fail")){%><%=_res("msg_loginerror")%><%}%></font>&nbsp;
									</td>
								</tr>
								<tr>
									<td align="right" height="30" class="des"><%=_res("login.user")%></td>
									<td height="30">&nbsp; <input type="text" name="username" size="20"></td>
								</tr>
								<tr>
									<td align="right" height="30" class="des"><%=_res("login.pass")%></td>
									<td height="30">&nbsp; <input type="password" name="pass" size="20"></td>
								</tr>
								<tr>
									<td colspan="2" align="center">
									<input type="submit" value="<%=_res("login.submit") %>" name="login"></td>
								</tr>
							</table>
							</form>
							<p>&nbsp;<br>
&nbsp;<br>
&nbsp;</p>
						
						<p>
						
						</td>
					</tr>
				</table>	
			</td>
		</tr>
		<tr>
			<%@ include file="footer.jsp"%>
		</tr>
	</table>
</div>

</body>

</html>
