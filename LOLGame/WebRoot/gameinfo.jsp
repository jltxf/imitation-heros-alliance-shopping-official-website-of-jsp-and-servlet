<%@ page language="java" import="java.util.*,dao.*,model.*"
	pageEncoding="utf-8"%>

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/herostyle.css">
<style>
.afooter {
	background: #0b0b0b;
	text-align: center;
	height: 100px;
	position: relative;
	top: 50px;
	left: 0px;
}

.afooter .wrap_ieg {
	width: 1900px;
	margin: 0 auto;
	padding: 30px 0;
}

.afooter a {
	color: #6e6e6e;
	font-size: 12px;
}

.afooter p {
	color: #6e6e6e;
	line-height: 24px;
	font-size: 10px;
}

.selete-checklist {
	float: left;
	width: 70%;
	padding-top: 5px;
}
</style>
</head>


<body>
	<%@ include file="title.jsp"%>
	<script type="text/javascript" src="js/game.js"></script>
	<div class="layout mainer">
		<div id="Navi" class="navi">
			<i class="commspr commico-crumbs"></i> <a href="index.jsp">英雄联盟首页</a>
			<i class="commspr commico-rrow"></i> <a href="gameinfo.jsp">游戏资料</a>
			<i class="commspr commico-rrow"></i> <span id="type">英雄</span>
		</div>

		<div class="colbox">
			<div id="pageTAB" class="pagetab">
				<script type="text/javascript" src="js/gameinfo.js"></script>
				<ul class="pagetab-list pagetab-list1">
					<li class="p-list1" id="one"><a class="pagetab-list-lnk"
						onclick="change1()" id="hero">英雄</a></li>
					<li class="p-list2" id="two"><a class="pagetab-list-lnk"
						onclick="change2()" id="item">物品</a></li>
					<li class="p-list3" id="three"><a class="pagetab-list-lnk"
						onclick="change3()" id="spell">召唤师技能</a></li>
				</ul>
			</div>


			<!-- 英雄列表 -->
			<div id="herodiv">
				<div id="selectCheck">
					<form action="gameServlet" method="post">
						<ul id="seleteChecklist" class="selete-checklist">
							<li class="selete-item current" id="allhero"><span
								class="ms-radio"><i class="i" onclick="get1()"></i> </span><label
								id="all" onclick="get1()">所有英雄</label></li>
							<li class="selete-item" id="allFighter"><span
								class="ms-radio"><i class="i" onclick="get2()"></i> </span><label
								id="Fighter" onclick="get2()">战士</label>
							</li>
							<li class="selete-item" id="allMage"><span class="ms-radio"><i
									class="i" onclick="get3()"></i> </span><label id="Mage"
								onclick="get3()">法师</label>
							</li>
							<li class="selete-item" id="allAssassin"><span
								class="ms-radio"><i class="i" onclick="get4()"></i> </span><label
								id="Assassin" onclick="get4()">刺客</label>
							</li>
							<li class="selete-item" id="allTank"><span class="ms-radio"><i
									class="i" onclick="get5()"></i> </span><label id="Tank"
								onclick="get5()">坦克</label>
							</li>
							<li class="selete-item" id="allMarksman"><span
								class="ms-radio"><i class="i" onclick="get6()"></i> </span><label
								id="Marksman" onclick="get6()">射手</label>
							</li>
						</ul>
					</form>
				</div>
				<div id="ulall">
					<ul class="imgtextlist">
						<%!HeroDAO hero = new HeroDAO();%><!-- 英雄 -->
						<%
							for (int i = 1; i <= hero.getNum(); i++) {
						%>
						<li><a href="GameServlet?heroname=<%=hero.getHeroNameByNo(i)%>"
							title="<%=hero.getHeroNameByNo(i)%>"> <img
								src="image/hero/<%=hero.getHeroPathByNo(i)%>"
								alt="<%=hero.getHeroNameByNo(i)%>"> <%=hero.getHeroNameByNo(i)%><span
								class="sbg"> <i class="commspr commico-search"></i> </span> </a>
						</li>
						<%
							}
						%>
					</ul>
				</div>
				
				<div id="ulfighter" style="display:none">
					<ul class="imgtextlist">
						<%
							for (int i = 1; i <= hero.getNum(); i++) {
								if (hero.getTypeByNo(i) == 1) {
						%>
						<li><a href="GameServlet?heroname=<%=hero.getHeroNameByNo(i)%>"
							title="<%=hero.getHeroNameByNo(i)%>"> <img
								src="image/hero/<%=hero.getHeroPathByNo(i)%>"
								alt="<%=hero.getHeroNameByNo(i)%>"> <%=hero.getHeroNameByNo(i)%><span
								class="sbg"> <i class="commspr commico-search"></i> </span> </a>
						</li>
						<%
							}
							}
						%>
					</ul>
				</div>
				
				<div id="ulmage" style="display:none">
					<ul class="imgtextlist">
						<%
							for (int i = 1; i <= hero.getNum(); i++) {
								if (hero.getTypeByNo(i) == 2) {
						%>
						<li><a href="GameServlet?heroname=<%=hero.getHeroNameByNo(i)%>"
							title="<%=hero.getHeroNameByNo(i)%>"> <img
								src="image/hero/<%=hero.getHeroPathByNo(i)%>"
								alt="<%=hero.getHeroNameByNo(i)%>"> <%=hero.getHeroNameByNo(i)%><span
								class="sbg"> <i class="commspr commico-search"></i> </span> </a>
						</li>
						<%
							}
							}
						%>
					</ul>
				</div>
				<div id="ulassassin" style="display:none">
					<ul class="imgtextlist">
						<%
							for (int i = 1; i <= hero.getNum(); i++) {
								if (hero.getTypeByNo(i) == 3) {
						%>
						<li><a href="GameServlet?heroname=<%=hero.getHeroNameByNo(i)%>"
							title="<%=hero.getHeroNameByNo(i)%>"> <img
								src="image/hero/<%=hero.getHeroPathByNo(i)%>"
								alt="<%=hero.getHeroNameByNo(i)%>"> <%=hero.getHeroNameByNo(i)%><span
								class="sbg"> <i class="commspr commico-search"></i> </span> </a>
						</li>
						<%
							}
							}
						%>
					</ul>
				</div>
				<div id="ultank" style="display:none">
					<ul class="imgtextlist">
						<%
							for (int i = 1; i <= hero.getNum(); i++) {
								if (hero.getTypeByNo(i) == 4) {
						%>
						<li><a href="GameServlet?heroname=<%=hero.getHeroNameByNo(i)%>"
							title="<%=hero.getHeroNameByNo(i)%>"> <img
								src="image/hero/<%=hero.getHeroPathByNo(i)%>"
								alt="<%=hero.getHeroNameByNo(i)%>"> <%=hero.getHeroNameByNo(i)%><span
								class="sbg"> <i class="commspr commico-search"></i> </span> </a>
						</li>
						<%
							}
							}
						%>
					</ul>
				</div>
				<div id="ulmarksman" style="display:none">
					<ul class="imgtextlist">
						<%
							for (int i = 1; i <= hero.getNum(); i++) {
								if (hero.getTypeByNo(i) == 5) {
						%>
						<li><a href="GameServlet?heroname=<%=hero.getHeroNameByNo(i)%>"
							title="<%=hero.getHeroNameByNo(i)%>"> <img
								src="image/hero/<%=hero.getHeroPathByNo(i)%>"
								alt="<%=hero.getHeroNameByNo(i)%>"> <%=hero.getHeroNameByNo(i)%><span
								class="sbg"> <i class="commspr commico-search"></i> </span> </a>
						</li>
						<%
							}
							}
						%>
					</ul>
				</div>

			</div>
			<script type="text/javascript" src="js/iteminfo.js"></script>


			<div id="itemdiv" style="display:none">
				<div>
					<ul id="seleteCheckItem" class="selete-checklist">
						<li data-item="" class="selete-item current" id="allitem"><span
							class="ms-radio"><i class="i" onclick="getA()"></i> </span><label
							id="alls" onclick="getA()">所有物品</label>
						</li>
						<li data-item="defense" class="selete-item" id="alldefense"><span
							class="ms-radio"><i class="i" onclick="getB()"></i> </span><label
							id="defense" onclick="getB()">防御类</label>
						</li>
						<li data-item="attack" class="selete-item" id="allattack"><span
							class="ms-radio"><i class="i" onclick="getC()"></i> </span><label
							id="attack" onclick="getC()">攻击类</label>
						</li>
						<li data-item="magic" class="selete-item" id="allmagic"><span
							class="ms-radio"><i class="i" onclick="getD()"></i> </span><label
							id="magic" onclick="getD()">法术类</label>
						</li>
					</ul>
				</div>

				<div id="ulitem">
					<ul id="jSearchHeroDiv2" class="imgtextlist">
						<%!ItemDAO item = new ItemDAO();%><!-- 物品 -->
						<%
							for (int i = 1; i <= item.getNum(); i++) {
						%>
						<li><a href="GameServlet?itemname=<%=item.getItemNameByNo(i)%>"
							title="<%=item.getItemNameByNo(i)%>"> <img
								src="image/item/<%=item.getItemPathByNo(i)%>"
								alt="<%=item.getItemNameByNo(i)%>"> <%=item.getItemNameByNo(i)%>
								<span class="sbg"> <i class="commspr commico-search"></i>
							</span> </a>
						</li>
						<%
							}
						%>
					</ul>
				</div>

				<div id="uldefense" style="display:none">
					<ul id="jSearchHeroDiv2" class="imgtextlist">
						<%
							for (int i = 1; i <= item.getNum(); i++) {
								if (item.getTypeByNo(i) == 1) {
						%>

						<li><a href="GameServlet?itemname=<%=item.getItemNameByNo(i)%>"
							title="<%=item.getItemNameByNo(i)%>"> <img
								src="image/item/<%=item.getItemPathByNo(i)%>"
								alt="<%=item.getItemNameByNo(i)%>"> <%=item.getItemNameByNo(i)%>
								<span class="sbg"> <i class="commspr commico-search"></i>
							</span> </a>
						</li>
						<%
							}
							}
						%>
					</ul>
				</div>

				<div id="ulattack" style="display:none">
					<ul id="jSearchHeroDiv2" class="imgtextlist">
						<%
							for (int i = 1; i <= item.getNum(); i++) {
								if (item.getTypeByNo(i) == 2) {
						%>

						<li><a href="GameServlet?itemname=<%=item.getItemNameByNo(i)%>"
							title="<%=item.getItemNameByNo(i)%>"> <img
								src="image/item/<%=item.getItemPathByNo(i)%>"
								alt="<%=item.getItemNameByNo(i)%>"> <%=item.getItemNameByNo(i)%>
								<span class="sbg"> <i class="commspr commico-search"></i>
							</span> </a>
						</li>
						<%
							}
							}
						%>
					</ul>
				</div>

				<div id="ulmagic" style="display:none">
					<ul id="jSearchHeroDiv2" class="imgtextlist">
						<%
							for (int i = 1; i <= item.getNum(); i++) {
								if (item.getTypeByNo(i) == 3) {
						%>

						<li><a href="GameServlet?itemname=<%=item.getItemNameByNo(i)%>"
							title="<%=item.getItemNameByNo(i)%>"> <img
								src="image/item/<%=item.getItemPathByNo(i)%>"
								alt="<%=item.getItemNameByNo(i)%>"> <%=item.getItemNameByNo(i)%>
								<span class="sbg"> <i class="commspr commico-search"></i>
							</span> </a>
						</li>
						<%
							}
							}
						%>
					</ul>
				</div>
			</div>


			<div id="spelldiv" style="display:none">
				<ul id="jSearchHeroDiv" class="imgtextlist">

					<%!SpellDAO spell = new SpellDAO();%>

					<%
						for (int i = 1; i <= spell.getNum(); i++) {
					%>

					<li><a href="GameServlet?spellname=<%=spell.getSpellNameByNo(i)%>"
						title="<%=spell.getSpellNameByNo(i)%>"> <img
							src="image/spell/<%=spell.getSpellPathByNo(i)%>"
							alt="<%=spell.getSpellNameByNo(i)%>"> <%=spell.getSpellNameByNo(i)%><span
							class="sbg"> <i class="commspr commico-search"></i> </span> </a> <%
 	}
 %>
					
				</ul>
			</div>
		</div>

		<!-- end英雄列表 -->

	</div>
	<div class="afooter">
		<div class="wrap_ieg">
			<p>
				<a href="#" target="_blank">腾讯互动娱乐</a>"&nbsp;|&nbsp;" <a href="#"
					target="_blank">服务条款</a>"&nbsp;|&nbsp;" <a href="#" target="_blank">隐私政策</a>"&nbsp;|&nbsp;"
				<a href="#" target="_blank">腾讯游戏招聘</a>"&nbsp;|&nbsp;" <a href="#"
					target="_blank">腾讯游戏客服</a>"&nbsp;|&nbsp;" <a href="#"
					target="_blank">游戏地图</a>"&nbsp;|&nbsp;" <a href="#" target="_blank">成长守护平台</a>"&nbsp;|&nbsp;"
				<a href="#" target="_blank">商务合作</a>"&nbsp;|&nbsp;" <a href="#"
					target="_blank">网站导航</a>"&nbsp;|&nbsp;"
			</p>
		</div>
	</div>

</body>
</html>
