<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus?">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>注册登录</title>
  <link href="css/reg-html.css" rel="stylesheet" />
<style type="text/css">

.login{
text-align:center;
}
 </style>

  <script>
  function $(id){
	return document.getElementById(id); 
  
  }
  function check(){
	var username = $("username").value;
	var password = $("password").value;
	var repassword = $("repassword").value;
	var age = $("age").value;
	var sex= $("sex").value;
	var shenfen= $("shenfen").value;
	var email= $("email").value;
	var intr= $("intr").value;
	if(username.length=="")
	{
		alert("用户名不能为空");
		 $("username").focus();
		return false;
  }
		  if(password.length==0)
		  {
			 alert("密码不为空");
			 $("password").focus();
			 return false;
		}
		if(password.length>6){
			 alert("密码输入错误");
			 $("password").focus();
			 return false;
		}
		if(email.length==0){
			 alert("邮箱不为空");
			 $("email").focus();
			 return false;
		}
		console.log("注册成功");
		return true;
	}

   </script>
   </head>
 <body>
  <fieldset>
 <form onsubmit="return check()" method="post" >
  <label for="username">用户名    </label>
  <input type="text" name="username" id="username" placeholder="请输入用户名，6~20个字符" /><br/>
  <label for="password">密码    </label>
  <input type="password" name="password" id="password" placeholder="请输入密码，3~6个数字" /><br/>
  <label for="repassword">确认密码    </label>
  <input type="repassword" name="repassword" id="repassword" placeholder="请再次输入密码，3~6个数字" /><br/>

  <label for="age">年龄    </label>
  <input type="number" name="age" id="age" max="100" value="18" min="7" /><br/>
  <label for="sex">性别    </label>
  <input type="text" name="sex" id="sex" list="sex1" /><br/>
	  <datalist id="sex1">
		<option value="男"/>
		<option value="女"/>
	  </datalist>
 <label for="shenfen">所在省份    </label>
	  <input type="text" name="shenfen" id="shenfen" list="per" /><br/>
	  <datalist id="per">
		<option value="北京"></option>
		<option value="天津"></option>
		<option value="广东"></option>
		<option value="广西"></option>
		<option value="深圳"></option>
	  </datalist>
 <label for="email">邮箱   </label>
  <input type="email" name="email" id="email" /><br/>
   <label for="intr">个人简介    </label>
  <textarea name="intr" id="intr" cols="100" rows="3" />
  </textarea><br/>
<input type="submit" value="提交" /> <input type="reset" value="重置" />
  </form>
  </fieldset>
  <div class="login"><a href="login.jsp">您已注册，请登录</a></div>
 </body>
</html>