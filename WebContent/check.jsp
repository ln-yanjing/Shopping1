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
</head>
<body>
<% 
String name=request.getParameter("username");
String pwd=request.getParameter("password");
if(name.equals("lina")&&pwd.equals("123456"))
{
	%>
	<jsp:forward page="div-review.jsp"></jsp:forward>
	<%
	}
	else
	{
	%>
	<jsp:forward page="login.jsp"></jsp:forward>
	<%
	}  
	%>
</body>
</html>