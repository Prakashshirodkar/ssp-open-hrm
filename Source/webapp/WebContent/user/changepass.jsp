				<table align="center" border="0" width="819" cellspacing="0" cellpadding="0" height="100%" valign="center">
					<tr>
						<td width="100%" nowrap bgcolor="#FFFFFF" align="center" valign="middle">						
							<form name="frmChangePass" action="<%=contextPath%>/user/UpdateController.do" method="post">
								<input type="hidden" name="state" value="updatepass" />
								<input type="hidden" name="username" value="<%=username%>" />
								<input type="hidden" name="pass" value="<%=pass%>"/>
								<table cellpadding=5 cellspacing=0 align="center" width="350"  background="../img/bg-left.gif" style="border:1px solid #CCCCCC;">
									<tr height="22px"> 
										<td colspan="2" align="center" style="font-weight:bold; color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:12;" bgcolor="#007D93"><span class="style1"><%=_res("change.title")%> </span></td>
									</tr>
									<tr>
										<td width="50%" align="right" class="des"><%=_res("change.oldpass")%></td>
								 	  <td width="50%" align="center"><input type="password" name="oldpass"></td>
									</tr>
									<tr>
										<td align="right" class="des"><%=_res("change.newpass")%></td>
										<td align="center"><input type="password" name="newpass"></td>
									</tr>
									<tr>
										<td align="right" class="des"><%=_res("change.newreplypass")%></td>
										<td align="center"><input type="password" name="renewpass"></td>
									</tr>
									<tr>
										<td colspan="2" align="center"><input type="button" onClick="javascript:changepass()" value="<%=_res("change.submit")%>"></td>
									</tr>
								</table>
								</form>
						</td>
					</tr>
				</table>	
			
<script language="javascript">
	function changepass(){
		var dm = document.frmChangePass;
		if (dm.oldpass.value==''){
			alert('<%=_res("msg_pass1")%>');
			dm.oldpass.focus();
		}
		else if(dm.oldpass.value!=dm.pass.value){
			alert('<%=_res("msg_pass2")%>');
			dm.oldpass.focus();
		}
		else if(dm.newpass.value==''){
			alert('<%=_res("msg_pass3")%>');
			dm.newpass.focus();
		}
		else if(dm.renewpass.value==''){
			alert('<%=_res("msg_pass4")%>');
			dm.renewpass.focus();
		}
		else if(dm.newpass.value!=dm.renewpass.value){
			alert('<%=_res("msg_pass5")%>');
			dm.renewpass.focus();
		}
		else
			dm.submit();
	}
</script>
</body>

</html>
