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
	<title>MYBOY</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
	<div id="header">
    	<a href="#"><img src="" title="" id=" " alt="" /></a>
        <ul id="navBar">
            <li><a href="user.jsp">&nbsp;&nbsp;主&nbsp;&nbsp;&nbsp;&nbsp;页&nbsp;&nbsp;</a></li>
            <li><a href="project.jsp">&nbsp;&nbsp;项&nbsp;&nbsp;&nbsp;&nbsp;目&nbsp;&nbsp;</a></li>
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
    	<h1>Welcome to PARTICIPANT PAGE</h1>
    	<h1>Welcome to TASK　APPLYING PAGE</h1>
    	<p><span>本页面为参与人员信息界面</span> </p>
        <p>在这里，您可以查看所有参与您项目的人员信息。   <span>并</span>对他们进行管理</p>
    </div>
    <div id="wrapper">
    	<div id="secWrapper">
        	<div id="container" class="clearfix">
            	<div id="mainCol" class="clearfix">
                	<div id="contents">
			<table>
				<thead>
					<tr>
						<th class="xz">&nbsp;&nbsp;&nbsp;&nbsp;choose&nbsp;&nbsp;&nbsp;&nbsp;</th>
						<th class="xm">&nbsp;&nbsp;姓&nbsp;&nbsp;名&nbsp;&nbsp;</th>
						<th class="nl">&nbsp;&nbsp;年&nbsp;&nbsp;龄&nbsp;&nbsp;</th>
						<th class="xb">&nbsp;&nbsp;性&nbsp;&nbsp;别&nbsp;&nbsp;</th>
						<th class="yx">&nbsp;&nbsp;院&nbsp;&nbsp;校&nbsp;&nbsp;</th>
						<th class="zy">&nbsp;&nbsp;专&nbsp;&nbsp;业&nbsp;&nbsp;</th>
						<th class="lx">&nbsp;&nbsp;联&nbsp;&nbsp;系&nbsp;&nbsp;方&nbsp;&nbsp;式&nbsp;&nbsp;</th>
					</tr>
				</thead>
			</table>

			<div class="scrollable">
				<s:form action="#">
					<table>
						<tbody>
							<s:iterator value="books">
								<tr>
									<td class="xz"><input type="checkbox" name="isbns"
										value='<s:property value="isbn" />' class="items" /></td>
									<td class="isbn"><s:property value="isbn" /></td>
									
									<td class="sm">
										<a class="titlelink" href="<s:url action='showBook'> <s:param name='isbn' value='isbn' /> </s:url>">	
												<s:property value="title" />
										</a>
									</td>
		
									<td class="zzbh"><s:property value="authorID" /></td>
									<td class="cbs"><s:property value="publisher" /></td>
									<td class="cbrq"><s:property value="publishDate" /></td>
									<td class="jg">￥<s:property value="price" /></td>
									<td class="cz" colspan="2">
										&nbsp;
										<a class="danger"
										href="<s:url action='#'> <s:param name='isbn' value='isbn' /> </s:url>"
										onclick="javascript:if(confirm('确定要移除该合作者吗？')){alert('移除成功!');return true;}return false;">
											remove</a></td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
			</div>
			<div id="ctrl">

				<input type="checkbox" name="isbns" value="" id="all" /> <label
					for="all">all</label>

				<div class="right">
					<input type="submit" value=" " id="removeAll"
						onclick="javascript:if(confirm('确定要移除所选合作者吗？')){alert('移除成功!');return true;}return false;" />
				</div>

			</div>
		</s:form>
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