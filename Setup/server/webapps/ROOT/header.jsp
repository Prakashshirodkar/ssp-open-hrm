<style>
	.menu{
		font-family: Arial, Helvetica, sans-serif;
		font-size:12;
		font-weight:bold;
	}
</style>
		<td height="97" valign="bottom" background="<%=contextPath%>/img/bg-top.gif">
		
		<div align="left">
				<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="579" height="100">
					<param name="movie" value="<%=contextPath%>/img/ssp_kysuufinal.swf">
					<param name="quality" value="High">
					<embed src="<%=contextPath%>/img/ssp_kysuufinal.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="579" height="100" quality="High"></object>
		<%
			//System.out.println("user acc id: "useraccid);
		%>
				<table border="0" width="1000" cellspacing="0" background="<%=contextPath%>/img/top-nav.gif" cellpadding="0">
					<tr>
						<td class="menu" align="center" background="<%=contextPath%>/img/<%if(cm!=null && !cm.equals("tintuc")){out.print("top-nav-off.gif");}else{out.print("top-nav-on.gif");}%>" width="8%" nowrap>
						<a href="<%=contextPath%>/user/homefrm.jsp?cm=tintuc"><span style="text-decoration: none"><font color="#FFFFFF"><b><strong><%=_res("hd.tintuc")%></strong></b></font></span></a></td>
						<td width="1" nowrap></td>
						<td class="menu" align="center" background="<%=contextPath%>/img/<%if(cm!=null && !cm.equals("canhan")){out.print("top-nav-off.gif");}else{out.print("top-nav-on.gif");}%>" width="14%" nowrap>						
						<a href="<%=contextPath%>/user/thongtincanhanfrm.jsp?cm=canhan"><span style="text-decoration: none"><font color="#FFFFFF"><b><%=_res("hd.hoso")%></b></font></span></a></td>
						<td width="1" nowrap></td>
						<td nowrap class="menu"  align="center" background="<%=contextPath%>/img/<%if(cm!=null && !cm.equals("thongke")){out.print("top-nav-off.gif");}else{out.print("top-nav-on.gif");}%>"  width="9%">
						<a href="<%=contextPath%>/user/chamcongthangfrm.jsp?cm=thongke"><span style="text-decoration: none"><font color="#FFFFFF"><b><%=_res("hd.thongke")%></b></font></span></a></td>
						<td width="1" nowrap></td>
						<td class="menu"  align="center" background="<%=contextPath%>/img/<%if(cm!=null && !cm.equals("phepnam")){out.print("top-nav-off.gif");}else{out.print("top-nav-on.gif");}%>"  width="9%" nowrap>
						<a href="<%=contextPath%>/user/phepnamfrm.jsp?cm=phepnam"><span style="text-decoration: none"><font color="#FFFFFF"><b><%=_res("hd.phepnam")%></b></font></span></a></td>
						<td width="1" nowrap></td>
						<%
							//System.out.println(useraccid);
							if(!useraccid.equals("null")){
						%>
						<td class="menu"  align="center" background="<%=contextPath%>/img/<%if(cm!=null && !cm.equals("baocao")){out.print("top-nav-off.gif");}else{out.print("top-nav-on.gif");}%>"  width="8%" nowrap>
						<a href="<%=contextPath%>/user/baocaofrm.jsp?cm=baocao"><span style="text-decoration: none"><font color="#FFFFFF"><b><%=_res("hd.baocao")%></b></font></span></a></td>
						<td width="1" nowrap></td>
						<%}%>
						<td class="menu" align="center" background="<%=contextPath%>/img/<%if(cm!=null && !cm.equals("doi")){out.print("top-nav-off.gif");}else{out.print("top-nav-on.gif");}%>"  width="14%" nowrap>
						<a href="<%=contextPath%>/user/changepassfrm.jsp?cm=doi"><span style="text-decoration: none"><font color="#FFFFFF"><b><%=_res("hd.doi")%></b></font></span></a></td>
						<td width="1" nowrap></td>
						
						<td class="menu" align="center" background="<%=contextPath%>/img/<%if(cm!=null && !cm.equals("thoat")){out.print("top-nav-off.gif");}else{out.print("top-nav-on.gif");}%>"  width="6%" nowrap>
						<a href="<%=contextPath%>/login.jsp?cm=logout"><span style="text-decoration: none"><font color="#FFFFFF"><b><%=_res("hd.thoat")%></b></font></span></a></td>
						<td width="1" nowrap></td>
						<td height="28" width="39%" nowrap>&nbsp;</td>
					</tr>
					<tr>
						<td align="center" bgcolor="#31CFFF" colspan="99" nowrap height="5"></td>
					</tr>
				</table>
			</div>
			</td>