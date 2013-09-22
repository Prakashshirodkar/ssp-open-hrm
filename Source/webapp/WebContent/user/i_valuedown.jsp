<%@ include file="../standard.jsp" %>
<%@ include file="../dbconnect.jsp" %>
<%@ include file="resource.inc"%>
<%@ include file="redirect_user.jsp" %>

<%
	String id = request.getParameter("id");
	String valuetemp = request.getParameter("value");
	int value = Integer.parseInt(valuetemp);
	if(value>1)
		value = value - 1;
%>

<div id="div<%=id%>">
<input type="text" class="value" readonly="true" name="<%=id%>" id="<%=id%>" size=6 value="<%=value%>" >

<a style="text-decoration:none;" href="javascript:functUpValue('div<%=id%>','<%=id%>')">
<img border="0" src="<%=contextPath%>/img/up.gif" /></a>
<a style="text-decoration:none;" href="javascript:functDownValue('div<%=id%>','<%=id%>')">
<img border="0" src="<%=contextPath%>/img/down.gif" /></a>
</div>