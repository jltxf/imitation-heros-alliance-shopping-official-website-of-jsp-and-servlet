<%@ page language="java" import="java.util.*,dao.*,model.*"
	pageEncoding="UTF-8"%>

<title>My JSP 'postinfo.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" charset="utf-8" src="js/my.js"></script>
<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js"
	type="text/javascript"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="js/jquery-1.11.0.min.js"><\/script>');
</script>
<link rel="stylesheet" type="text/css" href="css/poststyles.css">
<link type="text/css" rel="stylesheet" href="css/style1.css" />
<link type="text/css" rel="stylesheet" href="css/style2.css" />
<style>
#nv {
	overflow: hidden;
	padding-left: 3px;
	height: 50px;
	background: #2B7ACD url(image/nv.png) no-repeat 0 0;
}

* {
	word-wrap: break-word;
}

#nv li.a {
	margin-left: -1px;
}

#nv li {
	float: left;
	font-weight: 700;
}

#qmenu {
	float: right;
	display: inline;
	margin: 3px 4px 0;
	padding: 0 12px 0 0;
	width: 83px;
	height: 26px;
	background: url(image/qmenu.png) no-repeat 0 0;
	line-height: 26px;
	text-align: center;
	color: #369;
	font-weight: 700;
	text-shadow: 0 1px 0 #FFF;
	overflow: hidden;
}

ul,menu,dir {
	display: block;
	list-style-type: disc;
	-webkit-margin-before: 1em;
	-webkit-margin-after: 1em;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
	-webkit-padding-start: 40px;
}

#nv li.a {
	margin-left: -1px;
}

#nv li {
	float: left;
	padding-right: 1px;
	height: 33px;
	line-height: 33px;
	background: url(image/nv_a.png) no-repeat 100% 0;
	font-weight: 700;
	font-size: 14px;
	display: inline-block;
}

.afooter {
	text-align: center;
	height: 100px;
	position: relative;
	top: 100px;
	left: 0px;
}

a {
	text-decoration: none;
}

body {
	background: url(image/index_bg.jpg1) no-repeat center 0;
}

.bm_c {
	text-align: center;
}

.fatie {
	text-align: center;
}
</style>

</head>
<%@ include file="title.jsp"%>
<body id="nv_forum" class="pg_index" onload="refreshs()">
	<div id="hd">
		<div class="wp">
			<div class="hdc cl">
				<h2>
					<a href="./" title="《英雄联盟》官方论坛"><img src="image/lol_logo.png"
						alt="《英雄联盟》官方论坛" border="0" style="display:hide"> </a>
				</h2>


			</div>


			<div id="nv">
				<ul>
					<li class="a" id="mn_forum"><a href="#" hidefocus="true"
						title="BBS"><span style="color:white">论坛首页</span> </a>
					</li>
					<li id="mn_Nb7ca"><a href="index.jsp" hidefocus="true"
						target="_blank"><span style="color:white">&nbsp;&nbsp;&nbsp;&nbsp;官网首页</span>
					</a>
					</li>
				</ul>
			</div>
		</div>
	</div>




	<h2>
		<font size="6">查看帖子部分</font>
	</h2>
	<div class="bm_c">
		<table cellspacing="0" cellpadding="0" align="center" width="800px;">
			<tbody>
				<!--  <form>
					<%!PostDAO postinfo = new PostDAO();%>
					
				</form>
-->
				<tr>
					<td align="left"><font size="5" color="red">帖子主题</font>
					</td>
					<td align="center">作者</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;时间</td>
				</tr>
				<%!int intPageSize = 7; //每页显示的记录数
	int currPageBegin; //起始记录索引
	int currPageEnds; //结束记录索引
	int intPageCount; //总页数
	int intPage; //待显示页码
	String strPage; //用户请求页码%>

				<%
					//取得待显示页码
					strPage = request.getParameter("pagenumber");

					if (strPage == null) {
						//表明在QueryString中没有pagenumber这一个参数，此时显示第一页数据
						intPage = 1;
					} else {
						//将字符串转换成整型
						intPage = Integer.parseInt(strPage);
						if (intPage < 1)
							intPage = 1;
					}

					//计算总页数
					intPageCount = (int) Math.ceil((postinfo.getNum() * 10 / 10.0)
							/ intPageSize);/*39.0 / 10(vector.size()+intPageSize-1)/ intPageSize*/
					//调整待显示的页码
					if (intPage > intPageCount)
						intPage = (int) intPageCount;
					//计算每一页的起始记录索引
					currPageBegin = intPage * intPageSize - (intPageSize - 1);
					currPageEnds = intPage * intPageSize;
				%>



				<%
					for (int i = 1; i <= postinfo.getNum(); i++) {
						int idd = postinfo.getNo(i);

						if (currPageBegin <= idd && currPageEnds >= idd) {
				%>
				<tr>
					<td align="left"><a
						href="CheckPostServlet?post1=<%=postinfo.getPostPostByNo(i)%>&cont1=<%=postinfo.getPostContByNo(i)%>"><%=postinfo.getPostPostByNo(i)%></a>
					</td>
					<td align="center"><%=postinfo.getPostNameByNo(i)%></td>
					<td align="right"><%=postinfo.getPostTimeByNo(i)%></td>

				</tr>
				<tr>
					<%
						}
					%>
					<%
						}
					%>

				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第<%=intPage%>页
						共<%=intPageCount%>页 <%
						//以下是分页的“上一页”“下一页”，有上一页就有链接，没有就为文字，下一页同理
					%> <%
 	//<dd class="page">
 %> <%
 	if (intPage > 1) {
 %> <a href="postinfo.jsp?pagenumber=<%=intPage - 1%>">上一页</a> <%
 	} else {
 %> 上一页 <%
 	}
 %>
					</td>
					<td align="right">
						<%
							//<dd class="pages">
						%> <%
 	if (intPage < intPageCount) {
 %> <a href="postinfo.jsp?pagenumber=<%=intPage + 1%>">下一页</a> <%
 	} else {
 %> 下一页 <%
 	}
 %>
					</td>
				</tr>



			</tbody>
		</table>
	</div>
	<h2>
		<font size="6">发帖部分</font>
	</h2>
	<p align="center">
		<font size="5" color="red"> <%
 	if (request.getAttribute("msg") != null) {
 		out.print(request.getAttribute("msg"));
 	}
 %> </font>
	</p>
	<div class="fatie">
		<form action="PostServlet" method="post">
			<p align="center">
				<font size="5">主题</font>
			</p>
			<input type="text" id="zhuti" placeholder="不能超过20个字" maxlength="20"
				name="post"><br />
			<p align="center">
				<font size="5">内容</font>
			</p>
			&nbsp;&nbsp;&nbsp;
			<textarea id="neirong" rows="10" cols="30" placeholder="不能过1500个字"
				name="content" maxlength="1500"
				onchange="this.value=this.value.substring(0, 1500)"
				onkeydown="this.value=this.value.substring(0, 1500)"
				onkeyup="this.value=this.value.substring(0, 1500)"></textarea>
			<input type="submit" value="发帖" onclick="return p()">
		</form>
	</div>
	<div class="afooter">
		<%@include file="endcard.jsp"%>
	</div>
	<script type="text/javascript">
		function $(id) {
			return document.getElementById(id);// 找到id
		}

		function p() {
			zhuti = $("zhuti").value.length;
			neirong = $("neirong").value.length;
			if (zhuti > 20) {
				alert("主题字符多于20！");
				return false;
			}
			if (neirong > 1500) {
				alert("内容字符多于1500！");
				return false;
			}
		}
	</script>

</body>
</html>