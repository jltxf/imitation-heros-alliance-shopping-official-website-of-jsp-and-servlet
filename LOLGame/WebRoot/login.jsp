<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>后台管理员登录页面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<div class="am-g">
		<div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
			<form action="LoginServlet" method="post" class="am-form login-form">
				<label for="name"> 用户名: </label> <input type="text" name="User"
					id="User" value=""> <br> <label for="ps"> 密码:
				</label> <input type="password" name="Pwd" id="Pwd" value=""> <br>
				<br />
				<div class="am-cf">
					<input name="Action" type="hidden" value="Login"> <input
						type="submit" value="登 录" id="save" onsubmit="return LoginCheck()"
						class="am-btn am-btn-primary am-btn-sm am-fl">
				</div>
			</form>
		</div>
	</div>
	<script>
function LoginCheck() 
{   

    var LoginCheck = false;
    if($("#User").val()==="" || $("#Pwd").val()===""){
		alert("用户名或密码不能为空!");
        return false;
	}
    
    return true;
}
</script>
</body>
</html>
