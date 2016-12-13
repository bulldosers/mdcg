<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Team mates</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="csss/bootstrap.css" media="screen">
    <link rel="stylesheet" href="skins/eden.css" media="screen">
    <link rel="stylesheet" href="styles.css" media="screen">
    <link href="fonts/icons/icons.css" rel="stylesheet">
    <link href="csss/animate.css" rel="stylesheet">

</head>
<body   data-spy="scroll" data-target="#topnav"  id="top">

    <section class="header-area-home" id="header-area-home">
        <div id="main-nav-container">
            <div  class="container">
            <nav class="navbar navbar-eden" id="topnav"  style="background-color:#EEEEEE;">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#main-menu">
                            <span class="sr-only"></span>
                            <i class="tn-menu"></i>
                        </button>
                        <a class="navbar-brand" href="#"></a>
                    </div>

                    <div class="collapse navbar-collapse" id="main-menu">
                        <ul class="nav navbar-nav">
                        	<li><img src="imgs/optimus-logo.png" style="width:40px; heigth:40px;"/> </li>
                            <li class="active"><a href="#top">Home</a></li>
                            <li><a href="<s:url action='ShowUser.action'> </s:url>">User Center</a></li>
                            <li><a href="#client-reviews1">Team Mate's Information</a></li>
                            <li><a href="index.jsp">Exit</a></li>

                        </ul>

                        
                        <ul class="nav navbar-nav navbar-right">
                            <s:form action="SearchProjs.action" method="post">  
                            <p class="clearfix"><input style="heigth:10px" name="projname" id="username" type="text" value="" /> <button  name="submit" id="submit" type="submit" class="btn btn-primary"  data-animation="animated lightSpeedIn" data-delay="3s" data-duration="2s"><i  class="tn-search"></i> search</button></p>
                            
                    	</s:form>
                        </ul>
                    </div>
                </div>
            </nav>
            </div>
        </div>
        

    </section>
    <br/>
    <br/>
    <br/>
	<div class="copyrights"><a href="" title=""></a></div>
   
    <section class="pricing" id="pricing">
    <div class="container">
    <div class="row">
    <div class="col-md-12 text-center section-intro">
        <h2 class="header-boxed  wow zoomIn" data-wow-iteration="1"><span>Information</span></h2>
        <p class="lead wow fadeInUp" data-wow-delay="200ms">查看参与您项目的开发者信息</p>
    </div>
		
					<br/>
					
					
					<s:form theme="simple" action="#" id="Information"> 
					
					<s:hidden name="modify" value="true" />
					<label class="Info" for="name">个人姓名</label> 
					
					<s:textfield name="user.info.name" readonly="true" style="width:600px; margin-left:20%;"/>
					<s:fielderror>
						<s:param>user.info.name</s:param> 
					</s:fielderror>
					<br />
					<br />

					<label class="Info" for="">期待薪资</label>
					<s:textfield name="user.info.wage" readonly="true" style="width:600px; margin-left:20%;"/>
					<s:fielderror>
						<s:param>user.info.wage</s:param>
					</s:fielderror>
					<br />
					<br />

					<label class="Info" for="">院校专业</label>
					<s:textfield name="user.info.school" readonly="true" style="width:600px; margin-left:20%;"/>
					<s:fielderror>
						<s:param>user.info.school</s:param>
					</s:fielderror>
					<br />
					<br />

					<label class="Info" for="">联系电话</label>
					<s:textfield name="user.info.phone" readonly="true" style="width:600px; margin-left:20%;"/>
					<s:fielderror>
						<s:param>user.info.phone</s:param>
					</s:fielderror>
					<br />
					<br />

					
					<label class="Info" for="">联系邮箱</label>
					<s:textfield name="user.info.email" readonly="true" style="width:600px; margin-left:20%;"/>
					<s:fielderror>
						<s:param>user.info.email</s:param>
					</s:fielderror>
					<br />
					<br />
					
					
					<label class="Info" for="">特长方向</label>
					<s:textfield name="user.info.tc1" readonly="true" style="width:600px; margin-left:20%;"/>
					<s:fielderror>
						<s:param>user.info.tc1</s:param>
					</s:fielderror>
					<br />
					<br />
					
					<label class="Info" for="">特长方向</label>
					<s:textfield name="user.info.tc2" readonly="true" style="width:600px; margin-left:20%;"/>
					<s:fielderror>
						<s:param>user.info.tc2</s:param>
					</s:fielderror>
					<br />
					<br />
					
					
					<label class="Info" for="">个人简介</label>
					<s:textarea name="user.info.introduce" readonly="true" style="width:600px; margin-left:20%;" Columns="50" TextMode="MultiLine"/>
					<s:fielderror>
						<s:param>user.info.introduce</s:param> 
					</s:fielderror>
					<br />
					<br />
 
					<%-- <s:submit value=" " id="submitss3" /> --%>


				</s:form> 
					
					
					
    </div>

    </div>
    </section>


    <footer>
    <div class="container">
    <div class="row">
    <div class="col-md-12 text-center section-intro">
        <hr/>
        <h2><img src="imgs/optimus-logo.png" /></h2>
        <a href="#" target="_blank" title=""></a><a href="#" title="" target="_blank"></a><a href="#" class="btn-social btn-twitter btn-sm"><i class="tn-twitter"></i></a>
        <a href="#" class="btn-social btn-facebook btn-sm"><i class="tn-facebook"></i></a>
        <a href="#" class="btn-social btn-google-plus btn-sm"><i class="tn-google"></i></a>
        <a href="#" class="btn-social btn-vimeo btn-sm"><i class="tn-vimeo"></i></a>
        <a href="#" class="btn-social btn-dropbox btn-sm"><i class="tn-dropbox"></i></a>
    </div>
    </div>
    </div>
        <br/><br/>
    </footer>



<script src="jss/jquery-2.1.3.min.js"></script>
<script src="jss/bootstrap.min.js"></script>
<script src="jss/jquery.sticky.js"></script>
<script src="jss/wow.min.js"></script>
<script src="jss/site.js"></script>

</body>
</html>