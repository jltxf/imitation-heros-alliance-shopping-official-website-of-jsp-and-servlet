<%@ page language="java" import="java.util.*,dao.*,model.*"
	pageEncoding="utf-8"%>
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

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/herostyle.css">
<script type="text/javascript" src="js/test.js"></script>
</head>


<body>
	<div class="layout mainer">
		<div id="Navi" class="navi">
			<i class="commspr commico-crumbs"></i> <a href="/main.jsp">英雄联盟首页</a>
			<i class="commspr commico-rrow"></i> <a href="heroinfo.jsp">游戏资料</a>
			<i class="commspr commico-rrow"></i> <span>英雄</span>
		</div>

		<div class="colbox">
			<div id="pageTAB" class="pagetab">
				<ul class="pagetab-list pagetab-list1">
					<li class="p-list1"><a class="pagetab-list-lnk"
						onclick="show1()" id="1">英雄</a></li>
					<li class="p-list2"><a class="pagetab-list-lnk"
						onclick="show(jSearchHeroDiv2)" id="2">物品</a>
					</li>
					<li class="p-list3"><a class="pagetab-list-lnk" id="3">召唤师技能</a>
					</li>
				</ul>
			</div>

			<!-- 英雄列表 -->
			<div>
				<ul id="jSearchHeroDiv1" class="imgtextlist">
					<%!HeroDAO hero = new HeroDAO();%><!-- 英雄 -->
					<%
						for (int i = 1; i <= hero.getNum(); i++) {
					%>
					<li><a href="<%=hero.getHeroHrefByNo(i)%>"
						title="<%=hero.getHeroNameByNo(i)%>"> <img
							src="image/hero/<%=hero.getHeroPathByNo(i)%>"
							alt="<%=hero.getHeroNameByNo(i)%>">
							<p><%=hero.getHeroNameByNo(i)%></p> <span class="sbg"> <i
								class="commspr commico-search"></i> </span> </a></li>
					<%
						}
					%>

				</ul>

				<ul id="jSearchHeroDiv2" class="imgtextlist" style="display:none">

					<%!ItemDAO item = new ItemDAO();%><!-- 物品 -->
					<%
						for (int i = 1; i <= item.getNum(); i++) {
					%>

					<li><a href="<%=item.getItemHrefByNo(i)%>"
						title="<%=item.getItemNameByNo(i)%>"> <img
							src="image/item/<%=item.getItemPathByNo(i)%>"
							alt="<%=item.getItemNameByNo(i)%>">
							<p><%=item.getItemNameByNo(i)%></p> <span class="sbg"> <i
								class="commspr commico-search"></i> </span> </a>
					</li>
					<%
						}
					%>

				</ul>
			</div>

			<!-- end英雄列表 -->

		</div>
	</div>

</body>
</html>
