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
<title>My JSP 'index.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<head>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

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
<style type="text/css">
body {
	background-image: url(image/bg.jpg);
	width:100%;
	height:100%;
	background-size:cover;
	background-repeat: no-repeat;
	background-position: center;
	position: relative;
	font-family: "\5FAE\8F6F\96C5\9ED1";
	min--width: 1240px;
	height: 100%;width: 100%;
	height: 870px;
	overflow: hidden;
}

.title {
	background-repeat: no-repeat;
	position: absolute;
	width: 100%;
	height: 870px;
	overflow: hidden;
	left: 1px;
	top: 13px;
}

.top-inner {
	position: relative;
}

.top {
	z-index: 20;
	position: relative;
	top:-8px;
	right: 50px;
	width: 120%;
	height: 90px;
	background: #0b0b0b
}

.logo {
	position: absolute;
	z-index: 11;
	top: 5px;
}

.wrap {
	position: relative;
	right: -200px;
	margin-left: 200px;
	float: left;
	width: 600px;
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
	font-size: 20px;
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

li {
	display: list-item;
	text-align: -webkit-match-parent;
}

.spr {
	background-image: url(image/spr.png);
	background-repeat: no-repeat;
}

.btns {
	position: absolute;
	width: 947px;
	text-align: center;
	bottom: 99px;
	left: 440px;
}

.btns a {
	display: inline-block;
	width: 259px;
	height: 105px;
	font-size: 20px;
	color: #1293ed;
	line-height: 100px;
	font-weight: 600;
	text-indent: 5px;
}

.btns a:hover {
	background-position: 0 -113px;
}

.btns a span {
	display: inline-block;
	width: 259px;
	height: 105px;
}

.btns a i {
	display: inline-block;
	vertical-align: -3px;
	margin-right: 6px;
}

.btns .icon-official {
	display: inline-block;
	width: 21px;
	height: 22px;
	background-position: -274px -118px;
}

.btns .icon-party {
	display: inline-block;
	width: 16px;
	height: 22px;
	background-position: -276px -88px;
}

.btns .icon-download {
	display: inline-block;
	width: 22px;
	height: 20px;
	background-position: -274px -148px;
}

.btn-play {
	display: inline-block;
	width: 67px;
	height: 73px;
	position: absolute;
	background-position: -269px 0;
	margin: 0 auto;
	top: 588px;
	margin-left: -160px;
	left: 1055px;
	outline: none;
}

.top-user-unlogin {
	position: relative;
	left: -50px;
	font-size: 18px;
	color: #fff;
	padding: 5px 0;
	display: inline-block;
}

a:hover,a:visited {
	text-decoration: none;
}

public.css:                                       30 a {
	text-decoration: none;
}

.afooter {
	background: #0b0b0b;
	text-align: center;
	height: 200px;
	position: fixed;
	top: 800px;
	left: 0px;
	width:100%;
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

#shadow {
	position: absolute;
	opacity: 0.5;
	filter: alpha(opacity =                             50);
	bottom: 0;
	left: 0;
	right: 0;
	top: 0;
	background: black;
	z-index: 100;
	display: none;
}

.ss {
	display: inline-block;
}
</style>
</head>

<body onload="refreshs()">
	<div class="title">
		<img src="image/title.png" />
	</div>
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

					<li><a href="#"><img src="image/default.png" id="imgs" />
							<button class="hc" id="user"
								style="font-size:20px;position:relative;top:-5px;right:40px;color:#fafafa;background:#000;border-radius: 50%;border:none;"><%=session.getAttribute("username2")%></button>
					</a>
					</li>
					<li class="top-user-unlogin">亲爱的玩家，欢迎<em><button
								class="tc" id="tcs">登录</button> </em></li>
					<li class="ss" id="errMsg3" style="color:#fff">${errMsg3}</li>
				</ul>
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
							<span id="errMsg" color="red">${errMsg}</span> <a href=""
								class="hd">短信快捷登录</a>
						</div>
						<div>
							<input type="text" id="username" name="username" class="frame"
								required placeholder="用户名" autocomplete="off"
								onBlur="if(!checkName())$1('username')" />
						</div>
						<div>
							<input type="text" name="password1" id="password1" class="frame"
								required placeholder="密码" autocomplete="off"
								onblur="if(!checkpassword())$1('password1')" />
						</div>
						<div>
							<input type="text" name="password2" id="password2" class="frame"
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

						<div class="sex">
							<span height="51" align="center"><input type="radio"
								name="gender" value="male" checked> 性别男 <input
								type="radio" name="gender" value="female">女</span>
						</div>
						<input type="text" name="webpagenamed"
							value="<%=request.getServletPath()%>" style="display:none">
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
							<%
								request.setAttribute("11111", 11111);
							%>
							<span id="errmsg1" color="red">${errMsg1}</span> <a href="#"
								class="hd">短信快捷登录</a>
						</div>
						<input type="text" id="username1" name="username1"
							class="input_yh" required placeholder="用户名" autocomplete="off" />
						<input type="text" name="password3" id="password3"
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


	<div id="grayy"></div>
	<div class="popuppp" id="popuppp">
		<div class="top_nav" id='top_nav'>
			<div align="center">
				<span>你好，玩家</span> <a class="guanbi"></a>
			</div>
		</div>



		<div class="tf_login">
			<div class="right">
				<a href="delateServelt?id=<%=request.getServletPath()%>">
					<button>退出登录</button> </a>
				<button onclick="window.location.href='findServelt'">个人中心</button>

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

			$(".popupp").css({
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

	<div class="title"></div>

	<a class="btn-play spr" title="播放完整视频" href="video.jsp"></a>




	<div class="btns">
		<a class="spr" href="guangwang.jsp"> <span class="btn-comm">
				<i class="icon-official spr"></i>进入官网</span> </a> <a class="spr" href="#"
			target="_blank"> <span class="btn-comm"> <i
				class="icon-party spr"></i>泳池派对</span> </a> <a class="spr" href="Download.jsp"
			target="_blank"> <span class="btn-comm"> <i
				class="icon-download spr"></i>下载游戏</span> </a>
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
					<a href="<%=basePath%>login.jsp">后台</a>
			</p>
		</div>
	</div>




</body>
</html>
