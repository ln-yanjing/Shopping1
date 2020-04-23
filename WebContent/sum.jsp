<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>sum</title>
</head>
<body>
<%
int i,sum;
sum=0;
for(i=1;i<=99;i=i+2){
	sum+=i;	
}
out.println("1+3+5+...+99="+sum);
%>
</body>
</html>