<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="textml; charset=utf-8">
<title>饰品商城</title>
<style type="text/css">
#mbtn{
	width: 580px;
	margin: auto;
}
.btn{
	margin:10px auto;
	width: 280px;
}
 </style>
</head>
	<body>
	<form id="userAction_save_do" name="Form1" 
	action="${pageContext.request.contextPath}/ProductsServlet?action=findbyid" method="post">
	  &nbsp;
	     <table cellSpacing="1" cellPadding="5" width="100%" align="center"
	     bgcolor="#eeeeee" style="border:1px solid #8ba7e3" border="0">
	     <tr>
		     <td class="ta_01" align="center" bgcolor="#afdlf3" colspan="4" height="26">
		     <strong><STRONG>根据id查询商品</STRONG> </strong>
		   </td>
	     </tr>
	    
	     <tr>
		     <td class="ta_01" align="center" bgcolor="#afdlf3" colspan="4" height="26">
		     <strong><STRONG>请输入id号</STRONG> </strong>
		    	<input type="text" name="id">
		   </td>
	     </tr>
	     
	   
	         <tr>
	         <td align="center" colspan="4" class="sep1"> <img src="/lina/img1/8.jpg">
	         </td>
	         </tr>
	       
	   </table>
	               <div id="mbtn">
	               <input class="btn" type="submit" value="提交" /> <input class="btn" type="reset" value="重置" />
	             </div>
	
	</form>
	<a href="${pageContext.request.contextPath}/ProductsServlet?action=findAll">查询所有商品的信息</a>
	</body>
<html>