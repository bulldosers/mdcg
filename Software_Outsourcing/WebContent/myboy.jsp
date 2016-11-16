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
	
	<script type="text/javascript">
	window.onload = function() {
		var cb = document.getElementById("all");
		var items = document.getElementsByClassName("items");
		cb.onclick = function() {
			for (var i = 0; i < items.length; i++) {
				items[i].checked = this.checked;
			}
		}
	}
	</script>
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
    	<h1>Welcome to PARTICIPANT PAGE</h1> 
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
						<th class="xz" style="width:11.5%">&nbsp;choose&nbsp;</th>
						<th class="xm" style="width:10%">&nbsp;&nbsp;姓&nbsp;&nbsp;名&nbsp;&nbsp;</th>
						<th class="nl" style="width:10%">&nbsp;&nbsp;年&nbsp;&nbsp;龄&nbsp;&nbsp;</th>
						<th class="xb" style="width:10%">&nbsp;&nbsp;性&nbsp;&nbsp;别&nbsp;&nbsp;</th>
						<th class="yx" style="width:10%">&nbsp;&nbsp;院&nbsp;&nbsp;校&nbsp;&nbsp;</th>
						<th class="zy" style="width:10%">&nbsp;&nbsp;专&nbsp;&nbsp;业&nbsp;&nbsp;</th>
						<th class="lx" style="width:18%">&nbsp;&nbsp;联&nbsp;&nbsp;系&nbsp;&nbsp;方&nbsp;&nbsp;式&nbsp;&nbsp;</th>
						<th class="cz" style="width:18%">&nbsp;&nbsp;人&nbsp;&nbsp;员&nbsp;&nbsp;管&nbsp;&nbsp;理&nbsp;&nbsp;</th></tr>
				</thead>
			</table>
			
				
				
				<div class="scrollable">
					<table>
						<tbody>
							<s:iterator value="joiners">
								<tr>
									<td class="xz" style="width:11.5%">
										<input type="checkbox" name="name" value='<s:property value="name" />' class="items" />
									</td>
									
									<td class="isbn" style="width:10.2%"><s:property value="name" /></td>
									<td class="isbn" style="width:10.2%"><s:property value="age" /></td>
									<td class="sm" style="width:10%"><s:property value="sex" /></td>
		
									<td class="zzbh" style="width:10.2%"><s:property value="school" /></td>
									<td class="cbs" style="width:10.2%"><s:property value="major" /></td>
									<td class="cbrq" style="width:18%"><s:property value="phone" /></td>
									<%-- <td class="jg">￥<s:property value="price" /></td> --%>
									<td class="cz" colspan="2" style="width:18%">
										&nbsp;
										<a href="<s:url action='contract'> 
											<s:param name='clientname' value='name' />  
										</s:url>">
										生成合同</a>
										<a class="danger"
										href="<s:url action='removeJoiner.action'>
											<s:param name='joinername' value='username' /> 
											<s:param name='projname' value='projname' /> 
										</s:url>"
										onclick="javascript:if(confirm('确定要移除该合作者吗？')){alert('移除成功!');return true;}return false;">
											remove</a></td>
									</tr>
							</s:iterator>
						</tbody>
					</table>
			</div>
			
			<s:form action=""> 
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
    
    <div id="wrappers">
    	<div id="secWrappers">
        	<div id="containers" class="clearfix">
            	<div id="mainCols" class="clearfix">
            	<h3 id="why">人员推荐</h3>
                    <div id="gdt">
                    <ul>
                    
                    	<s:iterator value="testJoiners">  
		                    	<li class="clearfix"> 
			                    	<h2> <s:property value = "name"/> </h2>  
			                    	<p> <s:property value = "introduce"/> </p>
			                     
			                    <a href="<s:url action='joinerinfo.action'>
			                    		<s:param name='joinername' value='username' />  
            							</s:url>" class="more">查看详情</a>&nbsp;&nbsp;
                    			
                    			<a href="<s:url action='invite.action'>
                    				<s:param name='joinername' value='username' /> 
                    				<s:param name='projname' value='projname' />
                    				</s:url>" class="more">发送邀请</a> 
                    			</li> 
	                    </s:iterator> 
	                    
                    	<li class="clearfix">
                        <h4><a>NAME</a></h4>
                        <span>19 November, 2008</span>
                        <p>Lorem ipsum dolor sit amet, consectetur adipis elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim niam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        <a href="#" class="more">查看详情</a>&nbsp;&nbsp;
                        <a href="#" class="more">发送邀请</a>
                        </li>
                        <li class="clearfix">
                        <h4><a>NAME</a></h4>
                        <span>19 November, 2008</span>
                        <p>Lorem ipsum dolor sit amet, consectetur adipis elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim niam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        <a href="#" class="more">查看详情</a>&nbsp;&nbsp;
                        <a href="#" class="more">发送邀请</a>
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