<%@ page language="java" import="java.util.*,com.Entity.Good" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>USER CENTER</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
	<div id="header">
    	<a href="#"><img src="" title="Affiliate Promo logo" id=" " alt="" /></a>
        <ul id="navBar">
            <li><a href="user.jsp">&nbsp;&nbsp;主&nbsp;&nbsp;&nbsp;&nbsp;页&nbsp;&nbsp;</a></li>
            <li><a href="myproject.jsp">&nbsp;&nbsp;项&nbsp;&nbsp;&nbsp;&nbsp;目&nbsp;&nbsp;</a></li>
            <li><a href="#">&nbsp;&nbsp;团&nbsp;&nbsp;&nbsp;&nbsp;队&nbsp;&nbsp;</a></li>
            <li><a href="myprojalinformation.jsp">&nbsp;&nbsp;个&nbsp;&nbsp;&nbsp;&nbsp;人&nbsp;&nbsp;</a></li>
            <li><a href="#">&nbsp;&nbsp;评&nbsp;&nbsp;&nbsp;&nbsp;价&nbsp;&nbsp;</a></li>
            <li class="current"><a href="index.jsp">&nbsp;&nbsp;退&nbsp;&nbsp;&nbsp;&nbsp;出&nbsp;&nbsp;</a></li>   
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="image/head.jpg" onmouseover="this.src='image/head2.jpg'" onmouseout="this.src='image/head3.jpg'" style="margin-top:2px; width: 48px; height: 48px;"/></li>         
        </ul>
    </div>
    <div id="welcomeMessage">
    	<h1>Welcome to USER CENTER</h1>
    	<p><span>lalalalalalalala</span> is a leading virtual corporate business that will help you monetize your work to the most level you could reach.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adip, <span>Yourbusiness.com</span> will give you a new way to look at your business and lead it to all new horizons.</p>
    </div>
    <div id="wrapper">
    	<div id="secWrapper">
        	<div id="container" class="clearfix">
            		<div id="main">
		<div id="content">


			<h3 id="Inf"> </h3>
			<div id="inputForm">


				<s:form theme="simple" action="#" id="Information">
					<s:hidden name="modify" value="true" />
					<label class="Info" for="name">项目名称</label>
					<s:textfield name="myproj.name"  />
					<s:fielderror>
						<s:param>myproj.name</s:param>
					</s:fielderror>
					<br />
					<br />

					<label class="Info" for="">招募人数</label>
					<s:textfield name="myproj.num"  />
					<s:fielderror>
						<s:param>myproj.num</s:param>
					</s:fielderror>
					<br />
					<br />

					<label class="Info" for="age">联系方式</label>
					<s:textfield name="myproj.age"  />
					<s:fielderror>
						<s:param>myproj.contact</s:param>
					</s:fielderror>
					<br />
					<br />

					<label class="Info" for="age">专业要求</label>
					<s:textfield name="myproj.age"  />
					<s:fielderror>
						<s:param>myproj.age</s:param>
					</s:fielderror>
					<br />
					<br />

					
					<label class="Info" for="school">院校要求</label>
					<s:textfield name="myproj.school"  />
					<s:fielderror>
						<s:param>myproj.school</s:param>
					</s:fielderror>
					<br />
					<br />
					
					
					<label class="Info" for="number">已参人数</label>
					<s:textfield name="myproj.number"  readonly="true"/>
					<s:fielderror>
						<s:param>myproj.number</s:param>
					</s:fielderror>
					<br />
					<br />
					
					
					<label class="Info" for="school">项目描述</label>
					<s:textarea name="myproj.school" id="ttt" Columns="50" TextMode="MultiLine"  />
					<s:fielderror>
						<s:param>myproj.des</s:param>
					</s:fielderror>
					<br />
					<br />
					
					
					<label class="Info" for="school">人员要求</label>
					<s:textarea name="myproj.school" id="ttt" Columns="50" TextMode="MultiLine"  />
					<s:fielderror>
						<s:param>myproj.per</s:param>
					</s:fielderror>
					<br />
					<br />
					
					<label class="Info" for="ifm">参与信息</label>
					<s:textarea name="myproj.ifm" id="ttt" Columns="50" TextMode="MultiLine"  readonly="true"/>
					<s:fielderror>
						<s:param>myproj.ifm</s:param>
					</s:fielderror>
					<br />
					<br />
					<a href="myboy.jsp" class="more">查看已参与人员详细信息</a>
					<br />
					<br />
					<s:submit value=" " id="submitss2" />


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