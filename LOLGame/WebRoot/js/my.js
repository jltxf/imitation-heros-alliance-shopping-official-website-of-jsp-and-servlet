function $1(id){
	return document.getElementById(id);//找到id
}

String.prototype.chLength=function(){
    var len = this.replace(/[^\x00-\xff]/g, "**").length;
    return len;
}


function checkName(){
	var username=$1("username").value;
	if(username.chLength()>0){
		if(username.chLength()<6){
			alert("用户名小于6个字符");//提示用户名不能为空
			return false;
		}else{
			return true;
			}
	}
}



 function checkpassword(){
	var password1=$1("password1").value;
	if(password1.chLength()>0){
		if(password1.chLength()<3){
			alert("密码字符必须大于3");
			return false;
		}
		else if(password1.chLength()>12){
			alert("密码字符必须小于12");
			return false;
		}
		else{
		    return true;}	
	}
 }
 
 function checkpasswordverify(){
	var password1=$1("password1").value;
	var password2=$1("password2").value;
	var obj =$1("password2");
	if(password2.chLength()>0){
		if(password2!=password1){
			obj.value="";
			alert("密码不相等！");
			
			
			return false;
		}
		 else {
			 return true;}
	}	 
	}
	
 function checkcell(){
		var cell=$1("cell").value;
		var pattern=/^((1[3-8][0-9])+\d{8})$/;
		if(cell.chLength()>0){
			if(cell.chLength()!=11){
			alert("手机号码应该为11位数！");
		  	return false;
		}
		else if(!pattern.test(cell)){
			alert("手机号码格式错误");
			return false;
		}
		else {
			return true;
		}
		}
 }
		
function checkEmail(){
	var email = $1('email').value;
	var obj = $1('email');
	var pattern =/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
	if(email.chLength()>0)
		if (!pattern.test(email)){  
 	  		alert("邮箱格式错误");
 	  		obj.value="";
			return false;
		}
		else{
			return true;
		}
}
// JavaScript Document

var code;
function createCode() {
     code = "";
     var codeLength = 6; //验证码的长度
     var checkCode = $1("checkCode");
     var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 
     'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
     'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
     for (var i = 0; i < codeLength; i++){
     var charNum = Math.floor(Math.random() * 52);
     code += codeChars[charNum];
         }
         if (checkCode){
             checkCode.className = "code";
            checkCode.innerHTML = code;
         }
}
function validateCode(){
     var inputCode = $1("inputCode").value;
     if (inputCode.length <= 0){
         alert("请输入验证码！");
		return false;
        }else if (inputCode.toUpperCase() != code.toUpperCase()){
                alert("验证码输入有误！");
                createCode();
				return false;
        }
         else{
             return true;
             }        
}   
		
function checkAll1(){
	if(checkName1()&&checkpassword1()){
		return true;
	}
	else{
		return false;
	}
}

function checkName1(){
	var username4=$1("username1").value;
	if(username4.chLength()<6){
		alert("用户名小于6个字符");
		return false;
	}else{
		return true;
	}
}	

function checkpassword1(){
	var password3=$1("password3").value;
	if(password3.chLength()>0){
		if(password3.chLength()<3){
			alert("密码字符必须大于3");
			return false;
		}
		else if(password3.chLength()>12){
			alert("密码字符必须小于12");
			return false;
		}
		else{
		    return true;}
	}
	}
