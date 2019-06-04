function $1(id){
	return document.getElementById(id);//找到id
}

String.prototype.chLength=function(){
    var len = this.replace(/[^\x00-\xff]/g, "**").length;
    return len;
}


function checkName(){
	var username=$("username").value;
	var errObj=$("usernameErrMsg");
	if(username==""){
		errObj.innerHTML="用户名不能为空";
		errObj.style.display="inline";
		return false;
	}
	else if(username.chLength()<6){
		errObj.style.display="inline";//显示密码不能为空
		return false;
	}
	 else {
		 errObj.innerHTML="用户名格式正确";
		errObj.style.display="inline";
		 return true;}
}
function checkEmail(){
	var email = $1('email').value;
	var obj = $1('email');
	var pattern =/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
	if(email.chLength()>0)
		if (!pattern.test(email)) {
			alert("邮箱格式错误");
			return false;
		} else if (email == "") {
			errObj.style.display = "inline";
			return false;
		}else{
			return true;
		}
}


 function checkpassword(){
	 var password1=$("password1").value;
		var errObj=$("passwordErrMsg");
		if(password1==""){
			errObj.style.display="inline";//显示密码不能为空
			return false;
		}else if(password1.chLength()<3){
			errObj.innerHTML="密码字符必须大于3";
			errObj.style.display="inline";
			return false;
		}
		else if(password1.chLength()>12){
			errObj.innerHTML="密码字符必须小于12";
			errObj.style.display="inline";
			return false;
		}
		else{
		    return true;
		    }
 }
		
 
 function checkpasswordverify(){
	var password1=$1("password1").value;
	var password2=$1("password2").value;
	var obj =$1("password2");
	if(password1!=password2){
		var errObj=$("passwordErrMsg1");
		errObj.style.display="inline";//显示密码不能为空
		return false;
	}else if(password2!=password1){
			obj.value="";
			alert("密码不相等！");
					
			return false;
		}
		 else {
			 return true;}
	}	 

		