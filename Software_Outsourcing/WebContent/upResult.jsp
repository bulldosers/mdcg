<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'upResult.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <style>
     .head{
      position:absolute;
        background:url(image/back.jpg) no-repeat;
        height:700px;
        width:100%;

     }
     .form{
        postion:relative;
        margin-left:400px;
        margin-top:200px;
     }
     
  </style>
  </head>
  
   <body>
     <div class="head">
       <div class="form">
          <h1>您的头像上传成功啦!</h1>
          <img src="${pageContext.request.contextPath}/<s:property value="'file/'+imageFileName"/>">
     </div>
     </div>
  </body>
</html>
