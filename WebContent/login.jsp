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
  <title>Document</title>
<link href="css/login-html.css" rel="stylesheet"/>
 </head>
 <body>
 <%@ include file="top.jsp" %>

  <div class="one">

	<div class="two">
   
	 <form action="LoginServlet" method="get" name="reghtml">
	  <img class="imgs" src="images/4.jpg"/></br>
	 <input type="text" name="username" id="username" placeholder="请输入用户名" ></br>
	 <input type="password" name="password" id="password" placeholder="请输入密码"></br>
	 <input type="submit" value="提交" class="sub" style="background-color:green"> 
	  <input type="reset" value="重置" class="sub" style="background-color:green"> 
	
	 </form>
	 
  </div>
  </div>
   <%@ include file="coperights.jsp" %>
 </body>
</html>