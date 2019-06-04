<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>My JSP 'houtaiindex.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
table.hovertable {
    positon:relative;
    left:60px;
	font-family: verdana, arial, sans-serif;
	font-size: 11px;
	color: #333333;
	border-width: 1px;
	border-color: #999999;
	border-collapse: collapse;
}

table.hovertable th {
	background-color: #c3dde0;
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}

table.hovertable tr {
	background-color: #d4e3e5;
}

table.hovertable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}
</style>
</head>

<body>
	<%@ include file="title.jsp"%>
	<table class="hovertable" align="center" >
		<tr>
			<th>英雄</th>
			<th>物品</th>
			<th>天赋</th>
		</tr>
		<tr onmouseover="this.style.backgroundColor='#ffff66';"
			onmouseout="this.style.backgroundColor='#d4e3e5';">
			<td><a href="add.jsp" title="添加英雄信息">添加英雄信息</a>
			</td>
			<td><a href="additem.jsp" title="添加物品信息">添加物品信息</a>
			</td>
			<td><a href="addspell.jsp" title="添加天赋信息">添加天赋信息</a>
			</td>
		</tr>
		<tr onmouseover="this.style.backgroundColor='#ffff66';"
			onmouseout="this.style.backgroundColor='#d4e3e5';">
			<td><a href="delet.jsp" title="删除英雄信息">删除英雄信息</a>
			</td>
			<td><a href="deletitem.jsp" title="删除物品信息">删除物品信息</a>
			</td>
			<td><a href="deletspell.jsp" title="删除天赋信息">删除天赋信息</a>
			</td>
		</tr>
		<tr onmouseover="this.style.backgroundColor='#ffff66';"
			onmouseout="this.style.backgroundColor='#d4e3e5';">
			<td><a href="update.jsp" title="删除英雄信息">修改英雄信息</a></td>
			<td><a href="updateitem.jsp" title="删除英雄信息">修改物品信息</a></td>
			<td><a href="updatespell.jsp" title="删除英雄信息">修改天赋信息</a></td>
		</tr>
	</table>

</body>
</html>
