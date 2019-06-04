<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>


<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
	<script type="text/javascript" src="js/index1.js"></script>
<script type="text/javascript" charset="utf-8" src="js/my.js"></script>
<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js"
	type="text/javascript"></script>
<script>
<script>
	window.jQuery
			|| document
					.write('<script src="js/jquery-1.11.0.min.js"><\/script>');
</script>

<link type="text/css" rel="stylesheet" href="css/style3.css" />
<link type="text/css" rel="stylesheet" href="css/style2.css" />
<link type="text/css" rel="stylesheet" href="css/style1.css" />
<style>
* {
	margin: 0;
	padding: 0;
}

#navi ul,li {
	list-style-type: none;
	padding: 0;
	margin: 0;
}

#navi li a {
	display: block;
	width: 150px;
	text-align: center;
	text-decoration: none;
	color: #ffffff;
	background-color: #000000;
	font-size: 18px;
}

#navi li {
	background-color: #000000;
	color: #ffffff;
	position: relative;
	margin-bottom: 2px;
	float: left;
	margin-right: 40px;
	font-size: 14px;
}

#navi li ul {
	position: absolute;
	left: 10px;
	top: 20px;
	display: none;
	width: 100px;
}

#navi li:hover ul {
	display: block;
}

body {
	font: normal 12px/1.6em Microsoft YaHei, Tahoma, simsun;
	color: #666;
	min-width: 1240px;
	margin: 0 auto;
	background: #f7f8f8;
}

.header-close {
	height: 440px;
	background: url(image/07.jpg) no-repeat center 90px;
}

ul {
	display: block;
	list-style-type: disc;
	-webkit-margin-before: 1em;
	-webkit-margin-after: 1em;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
	-webkit-padding-start: 40px;
}

.header {
	overflow: hidden;
	transition: all .8s ease;
}

.top-inner {
	position: relative;
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

.main {
	width: 1400px;
	height: 90px;
	overflow: hidden;
	zoom: 1;
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

.slidebann {
	margin: 0 auto;
	min-height: 424px;
	height: auto;
	min-width: 1240px;
	width: 100%;
	overflow: hidden;
	clear: both;
	position: relative;
	background: #202020;
	padding: 0;
}

.menu {
	position: relative;
	z-index: 2;
	right: 0px;
	width: 102.5%;
	height: 80px;
	border-top: 2px solid #8c6c2d;
}

.mid2 {
	float: left;
	position: relative;
	right: -10px;
	width: 100% px;
	min-height: 424px;
	margin-right: 20px;
	margin-bottom: 60px;
	overflow: hidden;
}

.midAD {
	width: 100%;
	min-height: 424px;
	float: left;
}

.midADbtn {
	width: 112px;
	margin-left: -56px;
	z-index: 69;
	height: 38px;
	overflow: hidden;
	position: absolute;
	bottom: 0px;
	left: 50%;
	text-align: center;
}

.midbtnA {
	margin: 0 7px;
	display: block;
	float: left;
	width: 14px;
	height: 14px;
	cursor: pointer;
	background: url(image/mainspr.png) no-repeat -56px 0;
}

.shouban {
	position: relative;
	right: -65px;
	top: -90px;
}

.shouban1 {
	position: relative;
	right: -65px;
	top: -48px;
}

.shouban2 {
	position: relative;
	right: -65px;
	top: -105px;
}

.shouban3 {
	position: relative;
	right: -65px;
	top: -23px;
}

.shouban4 {
	position: relative;
	right: -65px;
	top: -90px;
}

.shouban5 {
	position: relative;
	right: -65px;
	top: -35px;
}

.afooter {
	text-align: center;
	height: 100px;
	position: relative;
	top: 1058px;
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
</style>
</head>

<body style="zoom:1;">
	<div id="header" class="header-close">
		<div class="top">
			<div class="top-inner">
				<div class="logo">
					<a href="///E:/JSP/index.html"><img src="image/logo.png"
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
		<div class="afooter">
			<%@include file="endshop.jsp"%>
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
							<input type="password" name="password1" id="password1"
								class="frame" required placeholder="密码" autocomplete="off"
								onblur="if(!checkpassword())$1('password1')" />
						</div>
						<div>
							<input type="password" name="password2" id="password2"
								class="frame" required placeholder="确认密码" autocomplete="off"
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
					<button>退出登录</button> </a>
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







	<div class="menu">
		<ul id="navi">
			<li><a href="#">商城首页</a>
			</li>
			<li><a href="browserServlet?classify=雕塑手办">雕塑手办</a>
				<ul>
					<li><a href="browserServlet?classify=雕塑手办&classify1=大型雕塑">大型雕塑</a>
					</li>
					<li><a href="browserServlet?classify=雕塑手办&classify1=中型手办">中型雕塑</a>
					</li>
					<li><a href="browserServlet?classify=雕塑手办&classify1=限定款手办">限定款手办</a>
					</li>
					<div class="shouban">
						<img src="image/shouban.png">
					</div>
				</ul>
			</li>
			<li><a href="browserServlet?classify=毛绒玩偶">毛绒玩偶</a>
				<ul>
					<li><a href="browserServlet?classify=毛绒玩偶&classify1=玩偶玩具">玩偶玩具</a>
					</li>
					<li><a href="browserServlet?classify=毛绒玩偶&classify1=毛绒帽子">毛绒帽子</a>
					</li>
					<div class="shouban1">
						<img src="image/shouban1.png">
					</div>
				</ul>
			</li>
			<li><a href="browserServlet?classify=男女服饰">男女服饰</a>
				<ul>
					<li><a href="browserServlet?classify=男女服饰&classify1=卫衣/夹克">卫衣/夹克</a>
					</li>
					<li><a href="browserServlet?classify=男女服饰&classify1=T恤">T恤（男士/女士）</a>
					</li>
					<div class="shouban2">
						<img src="image/shouban2.png">
					</div>
				</ul>
			</li>
			<li><a href="browserServlet?classify=海报艺术">海报艺术</a>
				<ul>
					<li><a href="browserServelt?classify=海报艺术&classify1=英雄海报">英雄海报</a>
					</li>
					<div class="shouban3">
						<img src="image/shouban3.png">
					</div>
				</ul>
			</li>
			<li><a href="browserServlet?classify=LPL队服">LPL队服</a>
				<ul>
					<li><a href="browserServlet?classify=LPL队服&classify1=队服T恤">队服T恤</a>
					</li>
					<li><a href="browserServlet?classify=LPL队服&classify1=队服裤子">队服裤子</a>
					</li>
					<li><a href="browserServlet?classify=LPL队服&classify1=队服外套">队服外套</a>
					</li>
					<li><a href="browserServlet?classify=LPL队服&classify1=队服套装">队服套装</a>
					</li>
					<div class="shouban4">
						<img src="image/shouban4.png">
					</div>
				</ul>
			</li>
			<li><a href="browserServelt?classify=其他">其他</a>
				<ul>
					<li><a href="browserServelt?classify=其他&classify1=其他">其他</a>
					</li>
					<div class="shouban5">
						<img src="image/shouban5.png">
					</div>
				</ul>
			</li>
		</ul>
	</div>
	<div class="mid2">
		<div class="midAD">
			<a href="#"><img id="img1" src="image/guanggao2.jpg"
				style="display:block;" /> </a> <a href="#"><img id="img2"
				src="image/guanggao3.jpg" style="display:none;" /> </a> <a href="#"><img
				id="img3" src="image/guanggao1.jpg" style="display:none;" /> </a> <a
				href="#"><img id="img4" src="image/guanggao4.jpg"
				style="display:none;" /> </a>
		</div>
		<div class="midADbtn">
			<a class="midbtnA" onmouseover="show(1)"></a> <a class="midbtnA"
				onmouseover="show(2)"></a> <a class="midbtnA" onmouseover="show(3)"></a>
			<a class="midbtnA" onmouseover="show(4)"></a>

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


