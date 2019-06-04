
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<style>

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
	display: inline-block;
}

.dc {
	z-index: 20;
	position: relative;
	width: 120%;
	height: 90px;
	background: #fff;
}

.right {
	width: 400px;
	height: 18px;
	position: relative;
	right: -780px;
}

.right .frame {
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

.right .frame:focus {
	outline: none;
	border-color: #019A0D;
	box-shadow: 0 0 0px #019A0D;
}


.right .hint {
    position:relative;
    top:60px;
	color: #F00;
	font-size: 1em;
	height: 40px;
	width: 150px;
}

.right .buttons {
	padding-left: 10px;
}

.right .button {
	-webkit-appearance: none;
	background: #36a803;
	border: none;
	border-radius: 2px;
	color: #fff;
	cursor: pointer;
	height: 50px;
	font-family: 'Open Sans', sans-serif;
	font-size: 1.2em;
	letter-spacing: 0.05em;
	text-align: center;
	text-transform: uppercase;
	transition: background 0.3s ease-in-out;
	width: 220px;
	padding: 10 50px 0 50px;
	font-weight: bold;
	float:left;
}

.right .button:hover {
	background: #019A0D;
}
</style>
<script type="text/javascript">
	function $2(id) {
		return document.getElementById(id);//找到id
	}

	String.prototype.chLength = function() {
		var len = this.replace(/[^\x00-\xff]/g, "**").length;
		return len;
	};
	function checkEmail1() {
		var email1 = $2("email1").value;
		var errObj = $2("emailErrMsg1");
		var pattern = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
		if (!pattern.test(email1)) {
			errObj.innerHTML = "邮箱格式错误";
			errObj.style.display = "inline";
			return false;
		} else if (email1 == "") {
			errObj.style.display = "inline";
			return false;
		} else {
			return true;
		}
	}
</script>
<%@include file="title.jsp"%>
<div class="menu">
	<ul class="menu-inner layout">
		<li></li>
		<li></li>
		<li class="menu-item">&nbsp;&nbsp;&nbsp;<a href="findServelt">用户中心</a><i
			class="icon-update"></i></li>
		<li></li>
		<li></li>
		<li class="menu-item">&nbsp;&nbsp;&nbsp;<a href="alter.jsp">用户安全</a><i
			class="icon-update"></i></li>



	</ul>
</div>

<div class="dc"></div>
<div class="right" align="center">
	<form action="SendMailServlet">

		<div>
			${errMsg2}
			<div style="font-size:20px;float:left">
				<span>尊敬的用户：&nbsp;&nbsp;</span><span>&nbsp;<%=session.getAttribute("username2")%></span>
			</div>
		</div>

		<div>
			<input type="text" name="email1" id="email1" class="frame" required
				placeholder="Email" autocomplete="off"
				onfocus="$2('emailErrMsg1').style.display='none'"
				onblur="if(!checkEmail1())$2('email1')" /> <span class="hint"
				id="emailErrMsg1"> 邮箱不能为空</span>

		</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div class="buttons">
			<input type="submit" class="button" value="获取验证码">
		</div>

	</form>
	
</div>
<div class="afooter" >
<%@ include file="endcard.jsp" %></div>

