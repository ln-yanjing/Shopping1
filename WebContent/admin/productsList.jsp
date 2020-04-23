<%@ page language="java"  pageEncoding="utf-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商品</title>
</head>
<body>
<br/><h1>管理员查询到的所有数据</h1>
	<table cellSpacing="1" cellPadding="5" width="100%" align="center"
	        bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="1">
		<tr>
		<td>ID</td>
		<td>商品名称</td>
		<td>商品价格</td>
		<td>商品分类</td>
		<td>商品库存</td>
		<td>商品图片</td>
		<td>商品描述</td>
		<td>修改操作</td>
		<td>删除操作</td>
		
		
		</tr>
	<c:forEach items="${listProducts }" var="p">
		<tr>
		<td>${p.id }</td>
		<td>${p.name }</td>
		<td>${p.price }</td>
		<td>${p.category }</td>
		<td>${p.pnum }</td>
		<td><img src="img1/${p.imgurl }" width="50" height="30" /></td>
		<td>${p.desciption }</td>
			<td>
				<form action="ProductsServlet?action=findbyid" method="post" name="updateform">
				<input type="hidden" name="id" value="${p.id }"/>
				<input type="submit" value="修改"/>
			</form>
			</td>
			<td>
				<form action="ProductsServlet?action=del" method="post" name="deleform">
				<input type="hidden" name="id" value="${p.id }"/>
				<input type="submit" value="删除"/>
			</form>
			</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>