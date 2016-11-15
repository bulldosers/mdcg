<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ERROR</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
     .login{
      position:absolute;
        background:url(image/rl.jpg) no-repeat;
        background-size:100%;
        height:100%;
        width:100%;
     }
     .form{
        postion:relative;
        margin-left:500px;
        margin-top:170px;
     }
     a{
	    	color:white;
	    	font-family:Impact, Charcoal, sans-serif;
	    	text-align:center;
     }
     h1{
	    	color:white;
	    	font-family:Impact, Charcoal, sans-serif;
     }
     tr{
	    	color:white;
	    	font-family:Impact, Charcoal, sans-serif;
	    	font-size:11pt;
     }
     </style>
  </head>
  
  <body>
    <div class="login">
     <div class="form">
     <h1>注&nbsp;册&nbsp;失&nbsp;败&nbsp;.&nbsp;&nbsp;.&nbsp;&nbsp;.&nbsp;请&nbsp;检&nbsp;查：</h1>
     <h1>&nbsp;&nbsp;1&nbsp;&nbsp;.&nbsp;&nbsp;用&nbsp;户&nbsp;是&nbsp;否&nbsp;已&nbsp;经&nbsp;存&nbsp;在</h1>
     <h1>&nbsp;&nbsp;2&nbsp;&nbsp;.&nbsp;&nbsp;输&nbsp;入&nbsp;是&nbsp;否&nbsp;合&nbsp;法</h1>
     <a href="register.jsp">返&nbsp;回</a>
    ${register_error}
    </div>
    </div> 
    <br>
  </body>
</html>
