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
    <title>Project Info & Accept</title>
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
                            <li><a href="<s:url action='showAllProjs.action'></s:url>">All Projects</a></li>
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
        <h2 class="header-boxed  wow zoomIn" data-wow-iteration="1"><span>Invitation</span></h2>
        <p class="lead wow fadeInUp" data-wow-delay="200ms">以下是邀请您参与的任务的详细信息，请认真考虑后决定是否加入</p>
    </div>
		<s:form theme="simple" mathod="post" action="GetInvite" id="Information">
					<s:hidden name="modify" value="true" />
					<label class="Info" for="name">项目名称</label>
					<s:textfield readonly="true" name="proj.name" style="width:600px; margin-left:20%;"/>
					<s:fielderror>
						<s:param>proj.name</s:param>
					</s:fielderror>
					<br />
					<br />

					<label class="Info" for="">项目预算</label>
					<s:textfield readonly="true" name="proj.lim" style="width:600px; margin-left:20%;"/>
					<s:fielderror>
						<s:param>proj.lim</s:param>
					</s:fielderror>
					<br />
					<br />

					<label class="Info" for="age">联系方式</label>
					<s:textfield readonly="true" name="proj.phone" style="width:600px; margin-left:20%;"/>
					<s:fielderror>
						<s:param>proj.phone</s:param>
					</s:fielderror>
					<br />
					<br />

					<label class="Info" for="age">专业要求</label>
					<s:textfield readonly="true" name="proj.major" style="width:600px; margin-left:20%;"/>
					<s:fielderror>
						<s:param>proj.major</s:param>
					</s:fielderror>
					<br />
					<br />

					
					<label class="Info" for="school">院校要求</label>
					<s:textfield readonly="true" name="proj.school" style="width:600px; margin-left:20%;"/>
					<s:fielderror>
						<s:param>proj.school</s:param>
					</s:fielderror>
					<br />
					<br />
					
					
					<label class="Info" for="school">项目描述</label>
					<s:textarea readonly="true" name="proj.context" Columns="50" TextMode="MultiLine" style="width:600px; heigth:400px; margin-left:20%;"/>
					<s:fielderror>
						<s:param>proj.context</s:param>
					</s:fielderror>
					<br />
					<br />
					
					
					<label class="Info" for="school">人员要求</label>
					<s:textarea readonly="true" name="proj.req" Columns="50" TextMode="MultiLine" style="width:600px; heigth:400px; margin-left:20%;"/>
					<s:fielderror>
						<s:param>proj.req</s:param>
					</s:fielderror>
					<br />
					<br />

				
					<s:submit value="接 受 邀 请" class="btn btn-primary" style="font-size:13pt; margin-left:44%; background-color:orange;"/>
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