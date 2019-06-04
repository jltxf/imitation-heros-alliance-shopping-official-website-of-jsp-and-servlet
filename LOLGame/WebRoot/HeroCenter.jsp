<%@ page language="java" import="java.util.*,dao.*,servlet.*,model.*"
	pageEncoding="UTF-8"%>
<style>
.menu {
	position: relative;
	z-index: 2;
	right: 300px;
	widtd: 102.5%;
	height: 80px;
	border-top: 2px solid #8c6c2d;
}

.menu-inner {
	height: 60px;
}

.layout {
	widtd: 1240px;
	margin: 0 auto;
}

.menu .cur {
	left: -100px;
	color: #d1ab57;
	border-bottom: 2px solid #d1ab57;
}

.menu li {
	float: left;
	widtd: 200px;
	height: 58px;
	line-height: 58px;
	border-bottom: 2px solid tdansparent;
	font-size: 20px;
	color: #555555;
	text-align: center;
	cursor: pointer;
	display: inline-block;
}

.aman {
	margin-top: 50px;
	width: 400px;
	heigt: 500px;
	position: relative;
	left: 20px;
	position: relative;
	float: left;
	margin-right: 20px;
}

.aman .amanu {
	width: 400px;
	font-size: 40px;
	font-weight: bold;
	margin-bottom: 40px;
}

.aman .amed {
	width: 400px;
	height: 60px;
	border-top: 1px solid #cacaca;
}

.aman .amed ul {
	width: 400px;
	height: 30px;
	font-size: 20px;
	margin-bottom: 10px;
}

.aman .amed li {
	width: 150px;
	height: 30px;
	font-size: 20px;
	display: inline-block;
}
</style>
<%@include file="title.jsp"%>

<div class="menu">
	<ul class="menu-inner layout">
		<li></li>
		<li></li>
		<li class="menu-item">&nbsp;&nbsp;&nbsp;<a href="findServelt">用户中心</a><i
			class="icon-update"></i>
		</li>
		<li></li>
		<li></li>
		<li class="menu-item">&nbsp;&nbsp;&nbsp;<a href="alter.jsp">用户安全</a><i
			class="icon-update"></i>
		</li>
	</ul>
</div>


<div class="aman">
	<div class="amanu">个人信息</div>
	<div class="amed">
		<ul>
			<li>用户名</li>
			<li><%=session.getAttribute("username2")%></li>
		</ul>
		<ul>
			<li>手机号码</li>
			<li><%=request.getAttribute("telephone")%></li>
		</ul>

		<ul>
			<li>邮箱</li>
			<li><%=request.getAttribute("email")%></li>
		</ul>

		<ul>
			<li>性别</li>
			<li><%!String sex = null;%> <%
 	sex = (String) request.getAttribute("sex");
 %> <%
 	if (sex.equals("male")) {
 		out.print("男");
 %> <%
 	} else {
 		out.print("女");
 %> <%
 	}
 %>
			</li>
		</ul>
	</div>
</div>



<div class="aman">
	<div class="amanu">已购商品</div>
	<div class="amed">
		<%
			String username = (String) session.getAttribute("username2");
			ShopDAO shop = new ShopDAO();
			List<Shop> list = shop.getShopById(username);
			for (Shop s : list) {
		%>
		<ul>
			<li>商品名称</li>
			<li style="color:red"><a href=""><%=s.getName()%></a>
			</li>
		</ul>
		<ul>
			<li>已购数量</li>
			<li><%=s.getNum()%></li>
		</ul>
		<ul>
			<li>购买时间</li>
			<li><%=s.getTime()%></li>
		</ul>
		<%
			}
		%>
	</div>
</div>


<div class="aman">
	<div class="amanu">你的讨论</div>
	<%
		PostDAO po = new PostDAO();
		List<String> lists = po.getAllPostPostUser(username);
		for (String s : lists) {
	%>
	<div class="amed">
		<ul>
			<li>名称</li>
			<li><%=s%></li>
		</ul>
		<%
			}
		%>
	</div>
</div>


