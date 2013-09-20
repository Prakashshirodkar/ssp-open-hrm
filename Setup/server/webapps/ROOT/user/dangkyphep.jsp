<script language="JavaScript" src="<%=contextPath%>/jscript/changeimage.js"></script>
<script language="JavaScript" src="<%=contextPath%>/jscript/common_utils.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/dateutil_vi.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/jscalendar/calendar.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/jscalendar/calendar-setup.js"></script>
<script type="text/javascript" src="<%=contextPath%>/jscript/jscalendar/calendar-<%=language%>.js"></script>
<style type="text/css"> 
@import url("<%=contextPath%>/jscript/jscalendar/calendar-system.css"); 
</style>

<%
	String strSqlDsnp = ("select * from hr_ds_loai_ngayphep");
	String strSqlttdkp = ("select * from WEB_THONGTIN_DANGKY_PHEPNAM('"+username+"','"+SString.toString(new java.util.Date(),"MM/dd/yyyy")+"')");
	java.sql.Connection conn = null;
	try{
	    conn = dbConnManager.getConnection("topmostread");	
		conn.setAutoCommit(false);
	    java.sql.Statement st=conn.createStatement();
		ResultSet rs = st.executeQuery(strSqlttdkp);
		if(rs.next()){
%>
	<table class="tablecontent" align="center">
		<tr>
			<td><div id="headercontent" class="title">&nbsp;<%=_res("dkp.title")%></div></td>
		</tr>
		<tr>
			<td>
				<table align="center" bgcolor="#F0F0F0" width="790" cellpadding="5" cellspacing="5" border="0" style="border:1px solid #CCCCCC;">
					<form name="frmRegistry" action="<%=contextPath%>/user/RegistryController.do" method="post">
							<input type="hidden" name="state" value="registry">
							<input type="hidden" name="username" value="<%=username%>" />
					<tr>
						<td class="des" align="right"><%=_res("dkp.nghiphep")%></td>
						<td>
							<select name="loaiphep">
							<%
								java.sql.Statement stnp=conn.createStatement();
								ResultSet rsnp=stnp.executeQuery(strSqlDsnp);
								while(rsnp.next()){
							%>
								<option value="<%=rsnp.getString(1)%>"><%=rsnp.getString(2)%></option>
							<%
								}
								rsnp.close();
								stnp.close();
							%>
							</select>
						</td>
						<td class="des" align="right"><%=_res("dkp.conlai")%>&nbsp;</td>
						<td> <%=rs.getString(1)%>&nbsp;<%=_res("dkp.ngay")%>
                        	<input size="13" type="hidden" name="sophep_conlai" value="<%=rs.getString(1)%>" />
                        </td>
					</tr>
					<tr>
						<td width="20%" class="des" align="right"><%=_res("dkp.thoigiannghi")%></td>
					   	<td width="20%">
							<script type="text/javascript">
                               function Returned(cal) {
                                   var datetime = document.getElementById("tungay").value;
                                    document.frmRegistry.tungay.value = getDDMMYYYY(datetime);
                                    cal.hide();
                                    cal.destroy();
                                    calendar = null;
                                }
                            </script>	
                            <input name="tungay" readonly value="<%=SString.toString(new java.util.Date(),"dd/MM/yyyy")%>" size=6 class="textbox">
                            <img onclick="return showCalendar('btdatefrom','tungay', '%d/%m/%Y', Returned);" align="absmiddle" id="btdatefrom" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("pn.tungay")%>'>
                        </td>
                        <td width="20%" class="des" align="right"><%=_res("dkp.denngay")%></td>
                        <td >
                            <input name="denngay" readonly id="denngay" value="" size=6 class="textbox">
                            <img onclick="return showCalendar('btdateto','denngay', '%d/%m/%Y', false);" align="absmiddle" id="btdateto" src="<%=contextPath%>/img/calendar2/calendar.gif" alt='<%=_res("pn.denngay")%>'>
                        </td>
                    </tr>
                    <tr>
                    	<td class="des" align="right"><%=_res("dkp.nguoiduyet1")%></td>
                        <td>
                        	<select name="duyetcap1">
                            	<%if(rs.getString(4)!=null){%><option value="<%=rs.getString(4)%>"><%=rs.getString(5)%></option><%}%>
                            	<%if(rs.getString(2)!=null){%><option value="<%=rs.getString(2)%>"><%=rs.getString(3)%></option><%}%>
                            </select>
                        </td>
                        <td class="des" align="right"><%=_res("dkp.nguoiduyet2")%></td>
                        <td>
                        	<select name="duyetcap2">
                            	<%if(rs.getString(8)!=null){%><option value="<%=rs.getString(8)%>"><%=rs.getString(9)%></option><%}%>
                            	<%if(rs.getString(6)!=null){%><option value="<%=rs.getString(6)%>"><%=rs.getString(7)%></option><%}%>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="des" align="right"><%=_res("dkp.lydonghi")%></td>
                        <td colspan="3">
                            <textarea name="lydonghi" style="width:400px;" ></textarea>
                         </td>
                    </tr>
                    <tr><td colspan="4"><hr /></td></tr>
                    <tr>
                        <td align="left" colspan="4">
                            <input name="button" type="button" value="<%=_res("dkp.submit")%>" Onclick="javascript:funcPostData();"/>
                        </td>
                    </tr>
                    </form>
                </table>
                
            </td>
        </tr>
    </table>
<%
		}
		rs.close();
		st.close();
		conn.commit();
	}catch(Exception e){
		e.printStackTrace();
	    //out.println(e.getMessage());
	}finally{
		dbConnManager.freeConnection("topmostread", conn);
	}
%>
<script language="javascript">
	function funcPostData(){
		  var dm = document.frmRegistry;
		  var khoangcach = distanceDate1Date2(dm.tungay.value,dm.denngay.value);
		  //alert(khoangcach);
		  
		 if (dm.tungay.value==''){
			alert('<%=_res("msg_datefrom1")%>');
			dm.tungay.focus();
		  }
		  else if(checkDate(dm.tungay, true)!='TRUE'){
		  	alert('<%=_res("msg_datefrom2")%>');
			dm.tungay.focus();
		  }
		  
		  else if (dm.denngay.value==''){
			alert('<%=_res("msg_dateto1")%>');
			dm.denngay.focus();
		  }
		  
		   else if(checkDate(dm.denngay, true)!='TRUE'){
		  	alert('<%=_res("msg_dateto2")%>');
			dm.denngay.focus();
		  }
		  
		  else if (compareDate(dm.tungay.value,dm.denngay.value)==1){
			alert('<%=_res("msg_compareDate")%>');
			dm.denngay.focus();
		  }
		  else if (khoangcach > dm.sophep_conlai.value){
		  	alert('<%=_res("dkp.checkngayphep")%>');
			dm.denngay.focus();
		  }
		 
		  else if (dm.lydonghi.value == ''){
			alert('<%=_res("msg_lydonghi")%>');
			dm.lydonghi.focus();
		  }
		  else if(dm.lydonghi.value!='' && dm.lydonghi.value.length>42){
		  	alert('<%=_res("msg_lengthlydonghi")%>');
			dm.lydonghi.focus();
		  }
		  else if(dm.duyetcap1.value==''){
		  	alert('<%=_res("msg_duyetcap1")%>')
			dm.duyetcap1.focus();
		  }
		  else if(dm.duyetcap2.value==''){
		  	alert('<%=_res("msg_duyetcap2")%>')
			dm.duyetcap2.focus();
		  }
		  else{
			dm.submit();
		  }
	 }
 </script>