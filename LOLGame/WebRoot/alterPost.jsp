<%@ page language="java" import="java.util.*,java.lang.*,model.*,dao.*"
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

<title>修改页面</title>

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
	request.setCharacterEncoding("UTF-8");
	String no = request.getParameter("str");//获取要修改帖子的编号
	PostDAO dao = new PostDAO();
	if (request.getParameter("author") != null
			&& request.getParameter("post") != null
			&& request.getParameter("content") != null) {
		String author = request.getParameter("author");
		String post = request.getParameter("post");
		String content = request.getParameter("content");
		System.out.println(author);
		System.out.println(post);
		System.out.println(content);
		Postinfo postinfo = new Postinfo(author, post, content);
		if (1 == dao.alterPost(Integer.parseInt(no), postinfo)) {
			response.sendRedirect("deletePost.jsp");
		}
	} else if (request.getParameter("post") != null
			&& request.getParameter("content") != null) {
		String post = request.getParameter("post");
		String content = request.getParameter("content");
		Postinfo postinfo = new Postinfo(post, content);
		if (1 == dao.alterPost(Integer.parseInt(no), postinfo)) {
			response.sendRedirect("deletePost.jsp");
		}
	} else if (request.getParameter("content") != null) {
		String content = request.getParameter("content");
		Postinfo postinfo = new Postinfo(content);
		if (1 == dao.alterPost(Integer.parseInt(no), postinfo)) {
			response.sendRedirect("deletePost.jsp");
		}
	}
%>

<body>
	<h2>修改数据页面</h2>
	<form action="alterPost.jsp" method="get">
		主题<input type="text" name="post" id="post"><br> 作者<input
			type="text" name="author" id="author"><br> 内容<input
			type="text" name="content" id="content"><br> <input
			type="text" name="str" value="<%=no%>" style="display:none"><br>
		<input type="submit" value="修改" onclick="return p()"><br>
	</form>
	<script type="text/javascript">
		function p() {
			post = document.getElementById("post").value;
			author = document.getElementById("author").value;
			content = document.getElementById("content").value;
			if(post == "" && author == "" && content == ""){
				alert("请输入至少一个任意需要修改的信息!");
				return false;
			}else{
				return true;
			}
		}
	</script>
</body>
</html>
