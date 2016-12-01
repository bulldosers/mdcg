<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>个人信息-USER CENTER</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
	<div id="header">
    	<a href="#"><img src="" title="Affiliate Promo logo" id=" " alt="" /></a>
        <ul id="navBar">
            <li><a href="<s:url action='showUser.action'>  
            		</s:url>"
            	>&nbsp;&nbsp;主&nbsp;&nbsp;&nbsp;&nbsp;页&nbsp;&nbsp;</a>
            </li>
            <li><a href="<s:url action='showAllProjs.action'>  
            		</s:url>">&nbsp;&nbsp;项&nbsp;&nbsp;&nbsp;&nbsp;目&nbsp;&nbsp;</a>
            </li> 
            
            <li><a href="#">&nbsp;&nbsp;团&nbsp;&nbsp;&nbsp;&nbsp;队&nbsp;&nbsp;</a></li>
            
            <li> <a href="<s:url action='personalInfo.action'>  
            		</s:url>" > &nbsp;&nbsp;个&nbsp;&nbsp;&nbsp;&nbsp;人&nbsp;&nbsp; </a>
            </li> 
           
            <li><a href="#">&nbsp;&nbsp;评&nbsp;&nbsp;&nbsp;&nbsp;价&nbsp;&nbsp;</a></li>
            <li class="current"><a href="index.jsp">&nbsp;&nbsp;退&nbsp;&nbsp;&nbsp;&nbsp;出&nbsp;&nbsp;</a></li>   
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="image/head.jpg" onmouseover="this.src='image/head2.jpg'" onmouseout="this.src='image/head3.jpg'" style="margin-top:2px; width: 48px; height: 48px;"/></li>         
        </ul>
    </div>
    <div id="welcomeMessage">
    	<h1>Welcome to PERSONAL PAGE</h1>
    	<p><span>本页面为个人信息界面</span>  包含您的各项信息以及情况简介</p>
        <p>在这里，您可以修改您的个人信息。   <span>我们</span>将努力保证您的信息安全。</p>
    </div>
    <div id="wrapper">
    	<div id="secWrapper">
        	<div id="container" class="clearfix">
            		<div id="main">
		<div id="content">


			<h3 id="Inf"> </h3>
			<div id="inputForm">


				<s:form theme="simple" action="updateInfo.action" id="Information">
					<s:hidden name="modify" value="true" />
					<label class="Info" for="name">姓名</label> 
					
					<s:textfield name="user.info.name" />
					<s:fielderror>
						<s:param>user.info.name</s:param> 
					</s:fielderror>
					<br />
					<br />

					<label class="Info" for="sex">性别</label>
					<s:textfield name="user.info.sex" />
					<s:fielderror>
						<s:param>user.info.sex</s:param>
					</s:fielderror>
					<br />
					<br />

					<label class="Info" for="age">年龄</label>
					<s:textfield name="user.info.age" />
					<s:fielderror>
						<s:param>user.info.age</s:param>
					</s:fielderror>
					<br />
					<br />

					<label class="Info" for="age">专业</label>
					<s:textfield name="user.info.major" />
					<s:fielderror>
						<s:param>user.info.major</s:param>
					</s:fielderror>
					<br />
					<br />

					
					<label class="Info" for="school">院校</label>
					<s:textfield name="user.info.school" />
					<s:fielderror>
						<s:param>user.info.school</s:param>
					</s:fielderror>
					<br />
					<br />
					
					
					<label class="Info" for="contact">联系</label>
					<s:textfield name="user.info.phone" />
					<s:fielderror>
						<s:param>user.info.phone</s:param>
					</s:fielderror>
					<br />
					<br />
					
					
					<label class="Info" for="school">个人简介</label>
					<s:textarea name="user.info.introduce" id="ttt" Columns="50" TextMode="MultiLine"/>
					<s:fielderror>
						<s:param>user.info.introduce</s:param>
					</s:fielderror>
					<br />
					<br />

				
					<s:submit value=" " id="submitss" />


				</s:form>

			</div>
		</div>
            </div>
        </div>
    </div>
    </div>
    <div id="footer">
    	<ul>
	        <li><a href="#">Home</a>&nbsp;&nbsp;-&nbsp;&nbsp;</li>
  	        <li><a href="#">Terms and Conditions</a>&nbsp;&nbsp;-&nbsp;&nbsp;</li>
			<li><a href="#">Privacy Policy</a>&nbsp;&nbsp;-&nbsp;&nbsp;</li>
 			<li><a href="#">Sitemap</a>&nbsp;&nbsp;-&nbsp;&nbsp;</li>
  	        <li><a href="#">Support</a>&nbsp;&nbsp;-&nbsp;&nbsp;</li>
			<li><a href="#">Contact Us</a></li>
        </ul>
        <p>Powered &nbsp;&nbsp; By &nbsp;&nbsp; Harbin &nbsp;&nbsp; HIT &nbsp;&nbsp; MDCG &nbsp;&nbsp; &copy; &nbsp;&nbsp; 2016-10-26</p>
    </div>
</body>
</html>