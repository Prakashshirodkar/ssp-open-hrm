<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr>
		<td>
			<input type="checkbox" id="check" checked="checked" >
	</td>
</tr>
<tr>
	<td>
		<input type="button" value="Check" onclick="javascript:check();">
</td>
</tr>
</table>
<script type="text/javascript">
	function check(){
		alert(document.getElementById('check').type);
		}
</script>
</body>
</html>