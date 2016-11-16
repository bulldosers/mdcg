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
	<title>USER CENTER</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
	<div id="header">
    	<a href="#"><img src="" title="" id=" " alt="" /></a>  
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
            
            <li><a href="test.jsp">&nbsp;&nbsp;评&nbsp;&nbsp;&nbsp;&nbsp;价&nbsp;&nbsp;</a></li>
            <li class="current"><a href="index.jsp">&nbsp;&nbsp;退&nbsp;&nbsp;&nbsp;&nbsp;出&nbsp;&nbsp;</a></li>   
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="image/head.jpg" onmouseover="this.src='image/head2.jpg'" onmouseout="this.src='image/head3.jpg'" style="margin-top:2px; width: 48px; height: 48px;"/></li>         
        </ul>
    </div>
    <div id="welcomeMessage">
    	<h1>Welcome to USER CENTER</h1>
    	<p><span>本页面为用户中心</span>  包含您所发布的项目，您已经接受的项目，以及系统随机推荐给您的可接受任务。</p>
        <p>在这里，您可以管理和移除您的项目和任务。   <span>我们</span>将努力为您服务，提高您的用户体验，持续优化系统性能</p>
    </div>
    <div id="wrapper">
    	<div id="secWrapper">
        	<div id="container" class="clearfix">
            	<div id="mainCol" class="clearfix">
                	<div id="services">
                    <h3>Our Services</h3>
                    <ul>
                    <li>
                    <h4>Service-1</h4>
                    <p>发布需求，确认具体项目情况</p>
                    </li>
                     <li>
                    <h4>Service-2</h4>
                    <p>接受任务，寻找团队开发项目</p>
                    </li>
                     <li>
                    <h4>Service-3</h4>
                    <p>确认合作，保障双方权益</p>
                    </li>
                    </ul>
                    </div>      
                                 
                    <h3 id="why">我的项目</h3>
                    <div id="gdt">
                    <ul id="maincon">
                    
                    	<s:iterator value="projs">  
		                    	<li class="clearfix">
		                    	<img src="images/image1.jpg" alt="image1" />
		                
			                    	<h2> <s:property value = "name"/> </h2>  
			                    	<p> <s:property value = "context"/> </p>
			                     
			                    <a href="<s:url action='showMyProj.action'>
			                    		<s:param name='projname' value='name' />  
            							</s:url>" class="more">管理项目</a>&nbsp;&nbsp;&nbsp;
                    			
                    			<a href="<s:url action='delProj.action'>
                    				<s:param name='projname' value='name' /> 
                    				</s:url>" class="more">删除</a> 
                    			</li> 
	                    </s:iterator> 
                    
                    <li class="clearfix">
                    <img src="images/image1.jpg" alt="image1" />
                    <h2>Services you could depend on</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
                    <a href="myproject.jsp" class="more">管理项目</a>&nbsp;&nbsp;&nbsp;
                    <a href="#" class="more">删除</a>
                    </li>
                    
                    <li class="clearfix">
                    <img src="images/image2.jpg" alt="image1" />
                    <h2>Guranteed added value</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
                    <a href="myproject.jsp" class="more">管理项目</a>&nbsp;&nbsp;&nbsp;
                    <a href="#" class="more">删除</a>
                    </li>
                    
                    <li class="clearfix">
                    <img src="images/image3.jpg" alt="image1" />
                    <h2>Support you can trust</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
                    <a href="myproject.jsp" class="more">管理项目</a>&nbsp;&nbsp;&nbsp;
                    <a href="#" class="more">删除</a>
                    </li>
                    
                    <li class="clearfix last">
                    <img src="images/image4.jpg" alt="image1" />
                    <h2>Professional team at you help</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
                    <a href="myproject.jsp" class="more">管理项目</a>&nbsp;&nbsp;&nbsp;
                    <a href="#" class="more">删除</a>
                    </li>
                    
                    </ul>
					</div>
                </div>
                <div id="secCol">
              		<fieldset id="login">
                    	<h4>查询浏览</h4>
                    	<br />
  						
                        <s:form action="searchProjs.action" method="post">  
                            <p class="clearfix"><label for="xm">浏览项目</label>
							<input name="projname" id="username" type="text" value="" /></p>
                            <p class="clearfix check">
                        <input name="submit" id="submit" type="submit" value="" /></p>
                    	</s:form>
                    </fieldset>
                    
                    <h3 id="news">邀请信息</h3>
                    <div id="gdt">
                    <ul>
                    	<s:iterator value="invitations">  
		                    	<li class="clearfix"> 
			                    	<h2> <s:property value = "name"/> </h2>  
			                    	<p> <s:property value = "context"/> </p>
			                     
			                    <%-- <a href="<s:url action='showMyTask.action'>
			                    		<s:param name='projname' value='name' />
			                    		<s:param name='context' value='context' />   
            							</s:url>" class="more">查看任务</a>&nbsp;&nbsp;&nbsp; --%>
                    			
                    			<a href="<s:url action='getInvite.action'>
                    				<s:param name='projname' value='name' /> 
                    				</s:url>" class="more">接受邀请</a> 
                    			</li> 
	                    </s:iterator> 
                    
                    	<li class="clearfix">
                        <h4><a>News title goes here</a></h4>
                        <span>19 November, 20080</span>
                        <p>Lorem ipsum dolor sit amet, consectetur adipis elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim niam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        <a href="#" class="more">接受邀请</a>
                        </li>
                        <li class="clearfix">
                        <h4><a>News title goes here</a></h4>
                        <span>19 November, 2008</span>
                        <p>Lorem ipsum dolor sit amet, consectetur adipis elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim niam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        <a href="#" class="more">接受邀请</a>
                        </li>
                    </ul>
                    </div>  
                                      
                    <h3 id="test">我的任务</h3>
                    <div id="gdt">
                    <ul>
                    
                    	<s:iterator value="tasks">  
		                    	<li class="clearfix"> 
			                    	<h2> <s:property value = "name"/> </h2>  
			                    	<p> <s:property value = "context"/> </p>
			                     
			                    <a href="<s:url action='showMyTask.action'>
			                    		<s:param name='projname' value='name' />
			                    		<s:param name='context' value='context' />   
            							</s:url>" class="more">查看任务</a>&nbsp;&nbsp;&nbsp;
                    			
                    			<a href="<s:url action='delMyTask.action'>
                    				<s:param name='projname' value='name' />
                    				<s:param name='context' value='context' />  
                    				</s:url>" class="more">退出任务</a> 
                    			</li> 
	                    </s:iterator> 
                    
                    <li class="clearfix">
                    <p>Lorem ipsum dolor sit amet, consectetur adipis elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim niam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <a href="mytask.jsp" class="more">查看任务</a>&nbsp;&nbsp;&nbsp;
                    <a href="#" class="more">退出任务</a>
                    </li>
                    
                    </ul>
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