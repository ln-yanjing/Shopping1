<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="div-review.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<h1 style="text-align:center">div复习</h1>
<div class="right"><a href="#">退出</a></div>
<div class="main">
<%
 for(int i=1;i<7;i++)
 {	 
   %>
   <div style="float:left;margin-right:10px">
   <img src="image/<%=i  %>.jpg" width="300" height="200"/>
   </div>
   <% 
 }
   %>
   </div>
</body>
</html>