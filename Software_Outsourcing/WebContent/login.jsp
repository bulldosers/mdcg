<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录-LOGIN</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <script type="text/javascript">  
    function changeValidateCode(obj) {  
        var currentTime= new Date().getTime();  
        obj.src = "rand.action?d=" + currentTime;  
    }  
</script>  
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
     input,button{margin:0; padding:0; list-style-type:none;}
	.but_b{
		 	background-repeat:no-repeat;
		 	background: white;
			width:250px;
			height:37px;
			border-top-style: none;
			border-right-style: none;
			border-bottom-style: none;
			border-left-style: none;
			font-family:Impact, Charcoal, sans-serif;
			font-size:13pt;
			color: black;
			boder-color:black;
			font-weight:bold;
			border-radius:8px; webkit-border-radius:8px; moz-border-radius:8px;
	} input,password{margin:0; padding:0; list-style-type:none;}
	.pwd {color: #dcdcdc; width: 400px; border: 0; line-height: 40px; float: left;  }   
	input,password{margin:0; padding:0; list-style-type:none;}
    .pwd input {color: #dcdcdc; width: 400px; border: 0; line-height: 40px; float: left;  }  
    input,password{margin:0; padding:0; list-style-type:none;}
    #pwdtext,#pwdshow {outline: none; color: #000000; display: none; margin-top: 20px;  margin-left: 40px;  border: 1px solid #dcdcdc;  width: 348px;  height: 40px;  line-height: 40px;}  
  </style>
  <body>
  <div class="login">
      <div class="form">
      <h1>用&nbsp;&nbsp;户&nbsp;&nbsp;登&nbsp;&nbsp;录</h1>
      <s:form action="login.action" method="post">
      <table>
      <tr><s:textfield name="user.username" label="用户名" value="username" cssStyle="width:200px;"></s:textfield><tr>
      <tr><s:password name="user.password"  label="密码 "  cssStyle="width:200px"></s:password><tr>
      <tr><td><s:textfield name="user.check" label="验证码" value="verification code" cssStyle="width:200px"></s:textfield></td>
      <td><img src="rand.action" onclick="changeValidateCode(this)" /><br /><br /></td></tr>
      <s:submit class="but_b" value="登           录"></s:submit>
      </table>
      </s:form>
      <a href="index.jsp">返&nbsp;回&nbsp;主&nbsp;页</a> &nbsp;&nbsp;&nbsp;&nbsp;
      <a href="register.jsp">若&nbsp;未&nbsp;注&nbsp;册&nbsp;请&nbsp;先&nbsp;前&nbsp;往&nbsp;注&nbsp;册&nbsp;界&nbsp;面</a> 
          </div>  
    </div>
  </body>
  <script>
 		 function changePwd(obj) {  
	      obj.style.display = "none";  
	      if (obj.type == "text") {  
	          document.getElementById('pwdtext').style.display = "block";  
	          document.getElementById('pwdtext').focus();  
	      } else {  
	          if (obj.value == "")  
	              document.getElementById('pwdshow').style.display = "block";  
	          else {  
	              obj.style.display = "block";  
	          }  
	      }  
	  }  
	</script>
</html>
