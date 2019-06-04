<%@ page language="java" import="java.util.*,dao.*,servlet.*,model.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateCommodity.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
<style>
.aman {
	margin-top: 50px;
	width: 600px;
	heigt: 800px;
	position: relative;
	left: 20px;
	position: relative;
	float: left;
	margin-right: 20px;
}

.aman .amanu {
	width: 600px;
	font-size: 40px;
	font-weight: bold;
	margin-bottom: 40px;
}

.aman .amed {
	width: 600px;
	height: 60px;
	border-top: 1px solid #cacaca;
}

.aman .amed ul {
	width: 600px;
	height: 40px;
	font-size: 20px;
	margin-bottom: 10px;
}

.aman .amed li {
	width: 100px;
	height: 40px;
	font-size: 20px;
	display: inline-block;
}

.aman .amed .hrd {
	width: 400px;
	height: 40px;
	font-size: 20px;
	display: inline-block;
	float: right:
}

.aman .amed .hrd .frame {
	border: 1px solid #ccc;
	border-radius: 2px;
	color: #000;
	font-family: 'Open Sans', sans-serif;
	font-size: 1em;
	height: 40px;
	padding: 0 0 0 34px;
	margin: 10px 0px 0px 10px;
	transition: background 0.3s ease-in-out;
	width: 220px;
	float: left;
}

.aman .amed .hrd .frame:focus {
	outline: none;
	border-color: #019A0D;
	box-shadow: 0 0 0px #019A0D;
}

.aman .amed .prf {
	margin-top: 165px;
	width: 158px;
	height: 48px;
	line-height: 48px;
	color: #FFF;
	display: block;
	background: #ed3029;
	font-size: 18px;
	text-align: center;
}

.aman .amed  .prf:hover {
	background: #F06;
}
</style>
  <body>
    <form action="updatebrowServlet" enctype="multipart/form-data"
	method="post">
	<div class="aman">
		<div class="amanu">添加商品</div>
		<div class="amed">
			<ul>
				<li>商品名称</li>
				<li class="hrd"><input type="text" name="name" id="name"
					required placeholder="商品名称" class="frame" /></li>
			</ul>
			<ul>
				<li>价格￥</li>
				<li class="hrd"><input type="text" name="price" id="price"
					 class="frame" value="0.0" /></li>
			</ul>

			<ul>
				<li>数量</li>
				<li class="hrd"><input type="text" name="number" id="number"
				 class="frame" value="0"/></li>
			</ul>
			<ul>
				<li>货物种类(1)</li>
				<li class="hrd"><input type="text" name="classify"
					id="classify"  class="frame" /></li>
			</ul>
			<ul>
				<li>货物种类(2)</li>
				<li class="hrd"><input type="text" name="classify1"
					id="classify1" class="frame" /></li>

			</ul>
			<input type="text" name="webpagenamed"
				value="<%=request.getServletPath()%>" style="display:none">
		</div>
		<input type="text" name="id" value=<%=request.getParameter("iddx") %>  style="display:none;">
		<%System.out.println(request.getParameter("iddx"));%>
	</div>
	<div class="aman">
		<div class="amanu"></div>
		<div class="amed">
			<ul>
				<li>插入图片(1)</li>
				<li class="hrd"><input type="file" name="picture1"
					id="picture1">
				</li>
			</ul>
			<ul>
				<li>插入图片(2)</li>
				<li class="hrd"><input type="file" name="picture2"
					id="picture2">
				</li>
			</ul>
			<input type="submit" class="prf" value="输入">

		</div>
	</div>

</form>
  </body>
</html>
