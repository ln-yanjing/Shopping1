<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
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
<form id="userAction_save_do" name="Form1" action="${pageContext.request.contextPath}/ProductsServlet?action=updateProducts" method="post">
  &nbsp;
     <table cellSpacing="1" cellPadding="5" width="100%" align="center"
     bgcolor="#eeeeee" style="border:1px solid #8ba7e3" border="0">
     <tr>
     <td class="ta_01" align="center" bgcolor="#afdlf3" colspan="4" height="26">
     <strong><STRONG>修改商品</STRONG> </strong></td>
     </tr>
     <tr>
     <td align="center" bgcolor="#f5fafe" class="ta_01">商品名称：</td>
     <td class="ta_01" bgcolor="#ffffff"> <input type="text" name="name" value="${pp.name }" />
     <td align="center" bgcolor="#f5fafe" class="ta_01">商品价格：</td>
     <td class="ta_01" bgcolor="#ffffff"> <input type="text" name="price" value="${pp.price }"/>
     </td>
     </tr>
     
     <tr>
     <td align="center" bgcolor="#f5fafe" class="ta_01">商品数量：</td>
     <td class="ta_01" bgcolor="#ffffff"> <input type="text" name="pnum" value="${pp.pnum }" />
     </td>
     <td align="center" bgcolor="#f5fafe" class="ta_01">商品类别：</td>
     <td class="ta_01" bgcolor="#ffffff">
       <select name="category" id="category">
           <option value="${pp.category }" selected="selected">--选择商品类别--</option>
            <option value="戒指">戒指</option>
           <option value="手链">手链</option> 
           <option value="项链吊坠">项链吊坠</option> 
           <option value="耳环">耳环</option> 
           <option value="手表">手表</option> 
           <option value="黄金饰品">黄金饰品</option> 
            <option value="发饰">发饰</option> 
            <option value="太阳镜">太阳镜</option>  
         </select>
         </td>
     </tr>
     <tr>
         <td align="center" bgcolor="#f5fafe" class="ta_01">商品图片：</td>
         <td class="ta_01" bgcolor="#ffffff" colspan="3"> <input type="text" name="imgurl" size="30" value="${pp.imgurl }" />
         </td>
         </tr>
          <tr>
              <td align="center" bgcolor="#f5fafe" class="ta_01">商品描述：</td>
               <td class="ta_01" bgcolor="#ffffff" colspan="3" height="10"> <input type="text" name="pms" size="100" value="${pp.desciption }" />
               </td>
               </tr>
         <tr>
         <td align="center" colspan="4" class="sep1">
         <input type="hidden" name="id" value="${pp.id }">
         </td>
         </tr>
   </table>
               <div id="mbtn">
               <input class="btn" type="submit" value="修改" /> <input class="btn" type="reset" value="重置" />
             </div>

</form>

</body>
</html>