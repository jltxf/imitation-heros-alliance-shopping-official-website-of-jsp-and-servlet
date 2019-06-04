<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>官网主页</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<script type="text/javascript" src="js/index1.js"></script>
<script type="text/javascript" charset="utf-8" src="js/my.js"></script>
<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js"
	type="text/javascript"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="js/jquery-1.11.0.min.js"><\/script>');
</script>

<link type="text/css" rel="stylesheet" href="css/style3.css" />
<link type="text/css" rel="stylesheet" href="css/style2.css" />
<link type="text/css" rel="stylesheet" href="css/style1.css" />
<style>
body {
	font: normal 12px/1.6em Microsoft YaHei, Tahoma, simsun;
	color: #666;
	min-width: 1240px;
	margin: 0 auto;
	background: #f7f8f8;
}

.i {
	font-style: italic;
}

.header-close {
	height: 440px;
	background: url(image/06.jpg) no-repeat center 90px;
}

.header {
	overflow: hidden;
	transition: all .8s ease;
}

.content {
	padding-top: 40px;
	margin-top: -20px;
	background: #f7f7f7 url(image/bg-content-top.jpg) no-repeat center top;
}

.content-inner {
	background: url(image/bg-content-bottom-2018.jpg) no-repeat center
		bottom;
}

.layout {
	width: 1240px;
	margin: 0 auto;
}

.home-slide {
	position: relative;
}

.title {
	background-repeat: no-repeat;
	position: absolute;
	width: 100%;
	height: 870px;
	overflow: hidden;
	left: -30px;
	top: -100px;
}

.main {
	width: 1400px;
	height: 90px;
	overflow: hidden;
	zoom: 1;
}

.main .tc {
	display: block;
	background: #000;
	border: 0;
	width: 100%;
	padding-top: 10px;
	text-align: center;
	font-size: 25px;
	color: #fafafa;
	text-decoration: none;
}

.main  .tc:hover {
	display: block;
	width: 100%;
	padding-top: 10px;
	text-align: center;
	font-color: #fafafa;
	font-size: 23px;
	text-decoration: none;
}

.main a {
	display: block;
	width: 100%;
	padding-top: 10px;
	text-align: center;
	color: #fafafa;
	font-size: 25px;
	text-decoration: none;
}

.main span {
	display: block;
	font-size: 15px;
	color: #838383;
	font-family: 'Tahoma';
	text-transform: uppercase;
}

.main li {
	float: left;
	width: 150px;
	height: 90px;
}

.top-inner {
	position: relative;
}

.top {
	z-index: 20;
	position: relative;
	top: -10px;
	right: 50px;
	width: 102.5%;
	height: 100px;
	background: #0b0b0b
}

.wrap {
	position: relative;
	right: -200px;
	margin-left: 200px;
	float: left;
	width: 600px;
	height: -100px;
}

.logo {
	position: absolute;
	z-index: 11;
	top: 5px;
}

.top-user-unlogin {
	position: relative;
	left: -50px;
	font-size: 18px;
	color: #fff;
	padding: 5px 0;
}

.menu {
	position: relative;
	z-index: 2;
	right: 300px;
	width: 102.5%;
	height: 80px;
	border-top: 2px solid #8c6c2d;
}

.menu-inner {
	height: 60px;
}

.layout {
	width: 1240px;
	margin: 0 auto;
}

.menu .cur {
	left: -100px;
	color: #d1ab57;
	border-bottom: 2px solid #d1ab57;
}

.menu li {
	float: left;
	width: 200px;
	height: 58px;
	line-height: 58px;
	border-bottom: 2px solid transparent;
	font-size: 20px;
	color: #555555;
	text-align: center;
	cursor: pointer;
}

.menu .dot {
	width: 13px;
	height: 50px;
	margin: 4px 18px;
}

.mid2 {
	float: left;
	position: relative;
	right: -10px;
	width: 820px;
	height: 400px;
	margin-right: 20px;
	margin-bottom: 60px;
	overflow: hidden;
}

.midAD {
	width: 512px;
	height: 243px;
	float: left;
}

.midADbtn {
	width: 80px;
	height: 19px;
	position: absolute;
	left: 330px;
	top: 800px;
}

.midbtnA {
	display: block;
	width: 20px;
	height: 19px;
	float: left;
	background: url(image/mainspr.png) no-repeat -713px -45px;
}

.side-nav {
	float: left;
	position: relative;
	right: -20px;
	width: 400px;
	height: 400px;
}

.side-download {
	position: relative;
	display: block;
	width: 100%;
	height: 150px;
	margin-bottom: 10px;
	background: url(image/bg-download.jpg) no-repeat 0 0;
}

.side-menu {
	margin-left: -5px;
}

.side-menu li {
	float: left;
	width: 130px;
	height: 55px;
	margin-left: 5px;
	margin-top: 5px;
}

.side-menu a {
	display: block;
	width: 130px;
	height: 55px;
	line-height: 55px;
	background: #fff;
	text-align: center;
	font-size: 14px;
	color: #555555;
}

.side-nav-download {
	display: block;
	width: 100%;
	height: 150px;
	position: absolute;
	left: 0;
	top: 0;
	text-indent: -999em;
	overflow: hidden;
}

.news {
	float: left;
	width: 820px;
	margin-right: 20px;
	margin-bottom: 60px;
}

.tab {
	position: relative;
	height: 50px;
	border-bottom: 3px solid #ededee;
}

.tab-title {
	float: left;
	font-size: 26px;
	line-height: 50px;
	color: #404040;
	margin-right: 40px;
	font-weight: normal;
}

.tab-nav {
	float: left;
	margin-top: 14px;
	position: relative;
	height: 36px;
}

.tab-nav .current {
	color: #d1ab57;
	font-weight: bold;
	border-bottom: 3px solid #d1ab57;
}

.news-list {
	padding: 24px 0 0;
}

.clearfix:after,.hd:after,.layout:after {
	content: '\20';
	display: block;
	height: 0;
	line-height: 0;
	visibility: hidden;
	clear: both;
}

.news-content .first {
	height: 124px;
	margin-bottom: 24px;
	overflow: hidden;
}

.news-item {
	height: 35px;
	line-height: 35px;
	padding: 4px 0;
}

.news-item .lnk-tit {
	display: block;
	position: relative;
	height: 35px;
	line-height: 35px;
	padding: 0 55px 0 90px;
	overflow: hidden;
	font-size: 16px;
	color: #555555;
}

.news-list .first .lnk-tit {
	color: #e9c06c;
}
</style>
</head>

<body style="zoom:1;" onload="refreshs()">
	<div id="header" class="header-close">
		<div class="top">
			<div class="top-inner">
				<div class="logo">
					<a href="index.jsp"><img src="image/logo.png"
						style="position:relative;top:-40px;right:-200px;" /> </a>
				</div>
				<div id="main" class="wrap">
					<ul id="nav" class="main">
						<li><a href="gameinfo.jsp">游戏资料<span>GAME INFO</span> </a>
						</li>
						<li><a href="shop.jsp">商城/合作<span>STORE</span> </a>
						</li>
						<li><a href="postinfo.jsp">用户互动 <span>COMMUNITY</span> </a>
						</li>
						<li><a href="#">赛事中心<span>EVENTS</span> </a>
						</li>
						<li><a href="#">自助系统<span>SYSTEM</span> </a>
						</li>

						<li><img src="image/default.png" id="imgs" />
							<button class="hc" id="user"
								style="font-size:20px;position:relative;top:-5px;right:40px;color:#fafafa;background:#000;border-radius: 50%;border:none;"><%=session.getAttribute("username2")%></button>
							 
						</li>
						<li class="top-user-unlogin">亲爱的玩家，欢迎<em><button
									class="tc" id="tcs">登录</button> </em></li>
						<li id="errMsg3" style="color:#fff">${errMsg3}</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div id="grayy"></div>
	<div class="popupp" id="popupp">
		<div class="top_nav" id='top_nav'>
			<div align="center">
				<span>注册账号</span> <a class="guanbi"></a>
			</div>
		</div>
		<div class="min">
			<div class="tg_login">
				<div class="left">
					<h4 align="center">打开手机QQ扫描</h4>
					<div align="center">
						<img src="image/erweima.jpg" width="150" height="150" />
					</div>
					<dd>
						<div align="center">扫描二维码登录</div>
					</dd>
				</div>

				<div class="right">
					<form action="insertUserServelt">
						<div class="bf">
							<span id="errMsg">${errMsg}</span> <a href="" class="hd">短信快捷登录</a>
						</div>
						<div>
							<input type="text" id="username" name="username" class="frame"
								required placeholder="用户名" autocomplete="off"
								onBlur="if(!checkName())$1('username')" />
						</div>
						<div>
							<input type="password" name="password1" id="password1" class="frame"
								required placeholder="密码" autocomplete="off"
								onblur="if(!checkpassword())$1('password1')" />
						</div>
						<div>
							<input type="password" name="password2" id="password2" class="frame"
								required placeholder="确认密码" autocomplete="off"
								onblur="if(!checkpasswordverify())$1('password2')" />
						</div>
						<div>
							<input type="text" name="cell" id="cell" class="frame" required
								placeholder="电话号码" autocomplete="off"
								onblur="if(!checkcell())$1('cell')" />
						</div>
						<div>
							<input type="text" name="email" id="email" class="frame" required
								placeholder="Email" autocomplete="off"
								onblur="if(!checkEmail())$1('email')" />
						</div>
						<div>
							<input type="text" class="frame" required placeholder="验证码"
								id="inputCode" style="float:left" />
						</div>



						<div class="chid">
							<div class="code" id="checkCode" onclick="createCode()"></div>
							<span class="hf" onclick="createCode()">看不清换一张</span>
						</div>
						<input type="text" name="webpagenamed"
							value="<%=request.getServletPath()%>" style="display:none">
						<div class="sex">
							<span height="51" align="center"><input type="radio"
								name="gender" value="male" checked> 性别男 <input
								type="radio" name="gender" value="female">女</span>
						</div>

						<div>&nbsp;</div>


						<div class="buttons">
							<input type="submit" class="button" value="注册"
								onclick="validateCode()">
						</div>

					</form>
				</div>
			</div>
			<div align="center"></div>
		</div>
	</div>


	<div id="grayy"></div>
	<div class="popuppp" id="popuppp">
		<div class="top_nav" id='top_nav'>
			<div align="center">
				<span>登你好，玩家</span> <a class="guanbi"></a>
			</div>
		</div>
		<div class="tf_login">
			<div class="right">
				<a href="delateServelt?id=<%=request.getServletPath()%>">
					<button>退出登录</button>
				</a>
				<button onclick="window.location.href='findServelt'">个人中心</button>
			</div>
		</div>
	</div>


	<div id="gray"></div>
	<div class="popup" id="popup">
		<div class="top_nav" id='top_nav'>
			<div align="center">
				<span>登录账号</span> <a class="guanbi"></a>
			</div>
		</div>
		<div class="min">
			<div class="tc_login">

				<div class="left">
					<h4 align="center">手机打开QQ扫描</h4>
					<div align="center">
						<img src="image/erweima.jpg" width="150" height="150" />
					</div>
					<dd>
						<div align="center">扫描二维码登录</div>
					</dd>
				</div>

				<div class="right">
					<form method="get" name="form_login" target="_top"
						action="checkUserServelt">
						<div class="bf">
							<span id="errmsg1" color="red">${errMsg1}</span> <a href="#"
								class="hd">短信快捷登录</a>
						</div>
						<input type="text" id="username1" name="username1"
							class="input_yh" required placeholder="用户名" autocomplete="off" />
						<input type="password" name="password3" id="password3"
							class="input_mm" required placeholder="密码" autocomplete="off" />
						<div class="cr">
							<a href="alter.jsp" class="ar">忘记密码</a>
						</div>

						<input type="text" name="webpagename"
							value="<%=request.getServletPath()%>" style="display:none">
						<div align="center">
							<input type="submit" class="button" title="Sign In" value="登录"
								onclick="checkAll1()" />
						</div>
					</form>
					<div class="vc">
						<div class="gc" target="_blank">
							<span>立即注册</span>
						</div>
					</div>


				</div>
			</div>
		</div>
	</div>


	<script>
		function refreshs() {
			//alert("aaa");
			var errMsg = $1("errMsg").innerHTML;
			var errMsg = $1("errmsg1").innerHTML;
			var errMsg3 = $1("errMsg3").innerHTML;
			var use = $1("user").innerHTML;
			if (errMsg != "") {

				$("#gray").show();
				$("#popupp").show();//查找ID为popup的DIV show()显示#gray
				$("#gray").hide();
				$("#popup").hide();
				tc_center();
			}
			if (errMsg != "") {

				$("#gray").show();
				$("#popup").show();//查找ID为popup的DIV show()显示#gray
				tc_center();
				$("#gray").hide();
				$("#popupp").hide();
			}
			if (errMsg3 != "") {
				alert("修改密码成功！");
			}
			if (use != "null") {
				imgs.style.display = "none";
				tcs.style.display = "none";
			} else {
				user.style.display = "none";
			}
		}
	</script>

	<script type="text/javascript">
		//窗口效果
		//点击登录class为tc 显示
		$(".gc").click(function() {
			$("#gray").show();
			$("#popupp").show();//查找ID为popup的DIV show()显示#gray
			tc_center();
			$("#gray").hide();
			$("#popup").hide();
		});
		//点击关闭按钮
		$("a.guanbi").click(function() {
			$("#grayy").hide();
			$("#popupp").hide();//查找ID为popup的DIV hide()隐藏
		});

		//窗口水平居中
		$(window).resize(function() {
			tc_center();
		});

		function tc_center() {
			var _top = ($(window).height() - $(".popupp").height()) / 2;
			var _left = ($(window).width() - $(".popupp").width()) / 2;

			$(".popuppp").css({
				top : _top,
				left : _left
			});
		}
	</script>

	<script type="text/javascript">
		$(document).ready(function() {

			$(".top_nav").mousedown(function(e) {
				$(this).css("cursor", "move");//改变鼠标指针的形状 
				var offset = $(this).offset();//DIV在页面的位置 
				var x = e.pageX - offset.left;//获得鼠标指针离DIV元素左边界的距离 
				var y = e.pageY - offset.top;//获得鼠标指针离DIV元素上边界的距离 
				$(document).bind("mousemove", function(ev) { //绑定鼠标的移动事件，因为光标在DIV元素外面也要有效果，所以要用doucment的事件，而不用DIV元素的事件 

					$(".popupp").stop();//加上这个之后 

					var _x = ev.pageX - x;//获得X轴方向移动的值 
					var _y = ev.pageY - y;//获得Y轴方向移动的值 

					$(".popupp").animate({
						left : _x + "px",
						top : _y + "px"
					}, 10);
				});

			});

			$(document).mouseup(function() {
				$(".popupp").css("cursor", "default");
				$(this).unbind("mousemove");
			});
		});
	</script>

	<script type="text/javascript">
		//窗口效果
		//点击登录class为tc 显示
		$(".tc").click(function() {
			$("#gray").show();
			$("#popup").show();//查找ID为popup的DIV show()显示#gray
			tc_center();
		});
		//点击关闭按钮
		$("a.guanbi").click(function() {
			$("#gray").hide();
			$("#popup").hide();//查找ID为popup的DIV hide()隐藏
		});

		//窗口水平居中
		$(window).resize(function() {
			tc_center();
		});

		function tc_center() {
			var _top = ($(window).height() - $(".popup").height()) / 2;
			var _left = ($(window).width() - $(".popup").width()) / 2;

			$(".popup").css({
				top : _top,
				left : _left
			});
		}
	</script>

	<script type="text/javascript">
		$(document).ready(function() {

			$(".top_nav").mousedown(function(e) {
				$(this).css("cursor", "move");//改变鼠标指针的形状 
				var offset = $(this).offset();//DIV在页面的位置 
				var x = e.pageX - offset.left;//获得鼠标指针离DIV元素左边界的距离 
				var y = e.pageY - offset.top;//获得鼠标指针离DIV元素上边界的距离 
				$(document).bind("mousemove", function(ev) { //绑定鼠标的移动事件，因为光标在DIV元素外面也要有效果，所以要用doucment的事件，而不用DIV元素的事件 

					$(".popup").stop();//加上这个之后 

					var _x = ev.pageX - x;//获得X轴方向移动的值 
					var _y = ev.pageY - y;//获得Y轴方向移动的值 

					$(".popup").animate({
						left : _x + "px",
						top : _y + "px"
					}, 10);
				});

			});

			$(document).mouseup(function() {
				$(".popup").css("cursor", "default");
				$(this).unbind("mousemove");
			});
		});
	</script>
	<script type="text/javascript">
		//窗口效果
		//点击登录class为vc 显示
		$(".hc").click(function() {
			$("#grayy").show();
			$("#popuppp").show();//查找ID为popup的DIV show()显示#gray
			tc_center();
		});
		//点击关闭按钮
		$("a.guanbi").click(function() {
			$("#grayy").hide();
			$("#popuppp").hide();//查找ID为popup的DIV hide()隐藏
		});

		//窗口水平居中
		$(window).resize(function() {
			tc_center();
		});

		function tc_center() {
			var _top = ($(window).height() - $(".popuppp").height()) / 2;
			var _left = ($(window).width() - $(".popuppp").width()) / 2;

			$(".popuppp").css({
				top : _top,
				left : _left
			});
		}
	</script>

	<script type="text/javascript">
		$(document).ready(function() {

			$(".top_nav").mousedown(function(e) {
				$(this).css("cursor", "move");//改变鼠标指针的形状 
				var offset = $(this).offset();//DIV在页面的位置 
				var x = e.pageX - offset.left;//获得鼠标指针离DIV元素左边界的距离 
				var y = e.pageY - offset.top;//获得鼠标指针离DIV元素上边界的距离 
				$(document).bind("mousemove", function(ev) { //绑定鼠标的移动事件，因为光标在DIV元素外面也要有效果，所以要用doucment的事件，而不用DIV元素的事件 

					$(".popuppp").stop();//加上这个之后 

					var _x = ev.pageX - x;//获得X轴方向移动的值 
					var _y = ev.pageY - y;//获得Y轴方向移动的值 

					$(".popuppp").animate({
						left : _x + "px",
						top : _y + "px"
					}, 10);
				});

			});

			$(document).mouseup(function() {
				$(".popuppp").css("cursor", "default");
				$(this).unbind("mousemove");
			});
		});
	</script>

</body>
</html>
