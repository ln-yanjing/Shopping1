<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("UTF-8");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册信息</title>
</head>
<body><br /><br />欢迎注册本网站<br />
<%
String name = request.getParameter("username");
String pwd = request.getParameter("password");
String age = request.getParameter("age");
String sex = request.getParameter("sex");
%>
用户名：<%=name %><br /><hr />
密码：<%=pwd %><br /><hr />
年龄：<%=age %><br /><hr />
性别：<%=sex %><br /><hr />
爱好：
<%
String[] hobbys=request.getParameterValues("hobby");
for(int i=0;i<hobbys.length;i++)
{
	out.print(hobbys[i]+"&nbsp;");
}
%>
</body>
</html>