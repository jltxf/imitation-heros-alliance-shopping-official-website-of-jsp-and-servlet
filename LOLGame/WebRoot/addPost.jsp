<%@ page language="java" import="java.util.*,dao.*,model.*"
	pageEncoding="UTF-8"%>
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

<title>My JSP 'addPost.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<%
	if (request.getParameter("author") != null
			|| request.getParameter("post") != null
			|| request.getParameter("content") != null) {
		request.setCharacterEncoding("UTF-8");
		//response.setCharacterEncoding("UTF-8");
		PostDAO dao = new PostDAO();
		String author = request.getParameter("author");
		String post = request.getParameter("post");
		String content = request.getParameter("content");
		//System.out.println(author);
		//System.out.println(post);
		//System.out.println(content);
		Postinfo postinfo = new Postinfo(author, post, content);
		if (dao.insertPost(postinfo) == 1) {
			response.sendRedirect("deletePost.jsp");
		}
	}
%>

<body>
	<h2>新增数据页面</h2>
	<form action="addPost.jsp" method="get">
		主题<input type="text" name="post"><br> 作者<input
			type="text" name="author"><br> 内容<input type="text"
			name="content"><br> <input type="submit" value="新增"><br>
	</form>
</body>
</html>
