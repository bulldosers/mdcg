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
    <title>All My Projects</title>
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
                            <li><a href="task.jsp">New Project</a></li>
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
   

    <section class="out-team" id="out-team" >

    <div class="container">
    <div class="row">
    <div class="col-md-12 text-center section-intro">
        <h2 class="header-boxed wow zoomIn" data-wow-iteration="1"><span>My Projects</span></h2>
        <p class="lead wow fadeInUp"  data-wow-delay="600ms">管理我发布的项目，点击 More 查看详情</p>
    </div>
         	<s:iterator value="projs">  
            <div class="col-sm-6 col-md-4">
                <div class="panel panel-default panel-card">
                    <div class="panel-heading">
                        <img src="imgs/pppda<s:property value = "num"/>.jpg" />
                        <a href="<s:url action='showMyProj.action'>
			                    		<s:param name='projname' value='name' />  
            							</s:url>" ><button class="btn btn-primary btn-sm" role="button">More</button></a>
                    </div>
                    <div class="panel-figure">
                        <img class="img-responsive img-circle" src="imgs/ppp<s:property value = "num"/>.png" />
                    </div>
                    <div class="panel-body text-center">
                    	<h4 class="panel-header"> <s:property value = "name"/> </h4>  
			            <small><s:property value = "context"/> </small> 
                    </div>
                    <div class="panel-thumbnails">
                        <hr/>
                        <div class="row">
                            <div class="col-xs-4">
                                <div class="thumbnail">
                                   
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="thumbnail">
                                    
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="thumbnail">
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </s:iterator>
            <%-- <div class="col-sm-6 col-md-4">
                <div class="panel panel-default panel-card">
                    <div class="panel-heading">
                        <img src="imgs/ppp2.jpg" />
                        <button class="btn btn-primary btn-sm" role="button">More</button>
                    </div>
                    <div class="panel-figure">
                        <img class="img-responsive img-circle" src="imgs/ppp1.png" />
                    </div>
                    <div class="panel-body text-center">
                        <h4 class="panel-header"><a href="#">mdcg</a></h4>
                        <small>A short description goes here.</small>
                    </div>
                    <div class="panel-thumbnails">
                        <hr/>
                        <div class="row">
                            <div class="col-xs-4">
                                <div class="thumbnail">
                                    
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="thumbnail">
                                    
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="thumbnail">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="panel panel-default panel-card">
                    <div class="panel-heading">
                        <img src="imgs/ppp2.jpg" />
                        <button class="btn btn-primary btn-sm" role="button">More</button>
                    </div>
                    <div class="panel-figure">
                        <img class="img-responsive img-circle" src="imgs/ppp3.png" />
                    </div>
                    <div class="panel-body text-center">
                        <h4 class="panel-header"><a href="#">mdcg</a></h4>
                        <small>A short description goes here.</small>
                    </div>
                    <div class="panel-thumbnails">
                        <hr/>
                        <div class="row">
                            <div class="col-xs-4">
                                <div class="thumbnail">
                                   
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="thumbnail">
                                    
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="thumbnail">
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="panel panel-default panel-card">
                    <div class="panel-heading">
                        <img src="imgs/ppp2.jpg" />
                        <button class="btn btn-primary btn-sm" role="button">More</button>
                    </div>
                    <div class="panel-figure">
                        <img class="img-responsive img-circle" src="imgs/ppp4.png" />
                    </div>
                    <div class="panel-body text-center">
                        <h4 class="panel-header"><a href="#">mdcg</a></h4>
                        <small>A short description goes here.</small>
                    </div>
                    <div class="panel-thumbnails">
                        <hr/>
                        <div class="row">
                            <div class="col-xs-4">
                                <div class="thumbnail">
                                  
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="thumbnail">
                                   
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="thumbnail">
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="panel panel-default panel-card row2">
                    <div class="panel-heading">
                        <img src="imgs/ppp2.jpg" />
                        <button class="btn btn-primary btn-sm" role="button">More</button>
                    </div>
                    <div class="panel-figure">
                        <img class="img-responsive img-circle" src="imgs/ppp5.png" />
                    </div>
                    <div class="panel-body text-center">
                        <h4 class="panel-header"><a href="#">mdcg</a></h4>
                        <small>A short description goes here.</small>
                    </div>
                    <div class="panel-thumbnails">
                        <hr/>
                        <div class="row">
                            <div class="col-xs-4">
                                <div class="thumbnail">
                                    
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="thumbnail">
                                   
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="thumbnail">
                                 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <div class="col-sm-6 col-md-4">
            <div class="panel panel-default panel-card row2">
                <div class="panel-heading">
                    <img src="imgs/ppp2.jpg" />
                    <button class="btn btn-primary btn-sm" role="button">More</button>
                </div>
                <div class="panel-figure">
                    <img class="img-responsive img-circle" src="imgs/ppp6.png" />
                </div>
                <div class="panel-body text-center">
                    <h4 class="panel-header"><a href="#">mdcg</a></h4>
                    <small>A short description goes here.</small>
                </div>
                <div class="panel-thumbnails">
                    <hr/>
                    <div class="row">
                        <div class="col-xs-4">
                            <div class="thumbnail">
                              
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <div class="thumbnail">
                              
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <div class="thumbnail">
                             
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> --%>
    <%-- <div class="col-sm-6 col-md-4">
        <div class="panel panel-default panel-card row2">
            <div class="panel-heading">
                <img src="imgs/ppp2.jpg" />
                <button class="btn btn-primary btn-sm" role="button">More</button>
            </div>
            <div class="panel-figure">
                <img class="img-responsive img-circle" src="imgs/ppp7.png" />
            </div>
            <div class="panel-body text-center">
                <h4 class="panel-header"><a href="#">mdcg</a></h4>
                <small>A short description goes here.</small>
            </div>
            <div class="panel-thumbnails">
                <hr/>
                <div class="row">
                    <div class="col-xs-4">
                        <div class="thumbnail">
                           
                        </div>
                    </div>
                    <div class="col-xs-4">
                        <div class="thumbnail">
                         
                        </div>
                    </div>
                    <div class="col-xs-4">
                        <div class="thumbnail">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> --%>

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