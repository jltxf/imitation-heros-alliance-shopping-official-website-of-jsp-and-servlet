<%@ page language="java" import="java.util.*,dao.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP '2.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<table cellspacing="0" cellpadding="0">

		<tr>
			<td><h2>英雄名称：</h2></td>
			<td><h2><%=application.getAttribute("heroname")%></h2>
			</td>
		</tr>
		<tr>
			<td><h2>背景故事:</h2>
			</td>
			<td></td>
		</tr>


	</table>
</body>
</html>
