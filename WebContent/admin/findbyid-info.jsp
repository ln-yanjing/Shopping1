<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.po.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<br></br>
<table border="1" ellSpacing="0" cellPadding="0" width="100%" style="border:1px solid #fff">
<tr>
<th>ID</th>
<th>商品名称</th>
<th>商品价格</th>
<th>商品分类</th>
<th>库存</th>
<th>商品图片</th>
<th>商品描述</th>
</tr>
<tr>
<td>${pp.id}</td>
<td>${pp.name }</td>
<td>${pp.price }</td>
<td>${pp.category}</td>
<td>${pp.pnum}</td>
<td>${pp.imgurl}</td>
<td>${pp.desciption}</td>
</table>
</body>
</html>