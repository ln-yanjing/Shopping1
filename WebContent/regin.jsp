<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.po.UserBean" %>
    <%
    request.setCharacterEncoding("UTF-8");
    %>>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body><br /><br />
<%@ include file="menu.jsp" %>
<%
UserBean user=new UserBean();

%>
<br />欢迎注册本网站<br />
<form action="RegServlet" method="get" name="f1">
	姓名：<input type="text" name="username"/><br /><br />
	密码：<input type="password" name="password"><br /><br />
	年龄：<input type="number" name="age"><br /><br />
	
	
	
	<input type="submit" value="提交" /> 
	<input type="reset" value="重置" />
	</form>
</body>
</html>