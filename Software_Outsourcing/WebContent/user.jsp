﻿<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
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
    <title>User Center</title>
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
            <nav class="navbar navbar-eden" id="topnav">
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
                            <li class="active"><a href="#top">Home</a></li>
                            <li><a href="#curious">Myself</a></li>
                            <li><a href="#why-us">Task</a></li>
                            <li><a href="#out-team">Project</a></li>
                            <li><a href="#client-reviews">Evaluation</a></li>
                            <li><a href="project.jsp">All Projects</a></li>
                            <li><a href="developer.jsp">All Developers</a></li>
                            <li><a href="index.jsp">Exit</a></li>

                        </ul>

                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="search.jsp"><i class="tn-search"></i></a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            </div>
        </div>
        <div id="featured-slider-container">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div id="featured-slider" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#featured-slider" data-slide-to="0" class="active"><img src='imgs/slider-1-t.jpg' alt='' class='featured-slide-thumb'  /></li>
                                <li data-target="#featured-slider" data-slide-to="1" ><img src='imgs/slider-2-t.jpg' alt='' class='featured-slide-thumb'  /></li>
                                <li data-target="#featured-slider" data-slide-to="2" ><img src='imgs/slider-3-t.jpg' alt='' class='featured-slide-thumb'  /></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active" id="slide-2">
                                    <img src='imgs/slider-1.jpg' alt='' class='featured-slide inv' data-animation = 'animated zoomIn' data-delay = '0.3s' />
                                    <img src='imgs/slider-2.jpg' alt='' class='featured-slide featured-slide-1 inv' data-animation = 'animated zoomIn' data-delay = '0.7s' />
                                    <div class="carousel-caption">
                                        <span class="lead slide-cat inv"  data-animation="animated zoomIn"><a href="#" rel="category">Task</a></span>
                                        <h2 class="slide-title inv"  data-animation="animated fadeInUp" data-duration="2s" data-delay="1s">接受任务，寻找属于您的开发团队 </h2>
                                        <div class="slide-excerpt inv" data-animation="animated fadeInUp" data-duration="3s" data-delay="2s">
                                         </div>
                                        <div class="meta">
                                            <a href="project.jsp"><button class="btn btn-primary inv slide-btn btn-lg"  data-animation="animated fadeInUp" data-delay="3s" data-duration="2s">前 往 接 受 任 务 <i class="tn-arrow-right"></i></button></a>
                                        </div>

                                    </div>
                                </div>
                                <div class="item" id="slide-3">
                                    <img src='imgs/slider-2.jpg' alt='' class='featured-slide inv' data-animation = 'animated zoomIn' data-delay = '0.3s' />
                                    <img src='imgs/slider-3.jpg' alt='' class='featured-slide featured-slide-1 inv' data-animation = 'animated zoomIn' data-delay = '0.7s' />
                                    <div class="carousel-caption">
                                        <span class="lead slide-cat inv"  data-animation="animated zoomIn"><a href="#" rel="category">project</a></span>
                                        <h2 class="slide-title inv"  data-animation="animated fadeInUp" data-duration="2s" data-delay="1s">发布您的任务，线上招募开发人才</h2>
                                        <div class="slide-excerpt inv" data-animation="animated fadeInUp" data-duration="3s" data-delay="2s">
    									</div>
                                        <div class="meta">
                                            <a href="task.jsp"><button class="btn btn-info inv slide-btn btn-lg"  data-animation="animated lightSpeedIn" data-delay="3s" data-duration="2s">前 往 发 布 任 务 <i class="tn-arrow-right"></i></button></a>
                                        </div>

                                    </div>
                                </div>
                                <div class="item" id="slide-4">
                                    <img src='imgs/slider-3.jpg' alt='' class='featured-slide inv' data-animation = 'animated zoomIn' data-delay = '0.3s' />
                                    <img src='imgs/slider-1.jpg' alt='' class='featured-slide featured-slide-1 inv' data-animation = 'animated zoomIn' data-delay = '0.7s' />
                                    <div class="carousel-caption">
                                        <span class="lead slide-cat inv"  data-animation="animated zoomIn"><a href="#" rel="category">About</a></span>
                                        <h2 class="slide-title inv"  data-animation="animated fadeInUp" data-duration="2s" data-delay="1s">了解我们？来自哈工大的开发团队</h2>
                                        <div class="slide-excerpt inv" data-animation="animated fadeInUp" data-duration="3s" data-delay="2s">
                                            
                                        </div>
                                        <div class="meta">
                                            <a href="http://today.hit.edu.cn/"><button class="btn btn-danger inv slide-btn btn-lg"  data-animation="animated fadeInUp" data-delay="3s" data-duration="2s">M o r e<i class="tn-arrow-right"></i></button></a>
                                        </div>

                                    </div>
                                </div>

                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <section class="featured-content-area" id="featured-content-area">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="panel panel-success panel-featured-content  text-center">
                        <div class="panel-heading">Web Design</div>
                        <div class="panel-body">
                            <div class="diamond filled bg-success wow zoomIn" data-wow-delay="500ms">
                            <i class="lineicon tn-paint-roller"></i>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="panel panel-info panel-featured-content  text-center">
                        <div class="panel-heading">Web Development</div>
                        <div class="panel-body">
                            <div class="diamond filled bg-info wow zoomIn" data-wow-delay="900ms" >
                                <i class="lineicon tn-world"></i>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="panel panel-primary panel-featured-content  text-center">
                        <div class="panel-heading">Android Apps</div>
                        <div class="panel-body">
                            <div class="diamond filled  bg-primary wow zoomIn" data-wow-delay="1300ms" >
                                <i class="lineicon tn-android"></i>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="panel panel-warning panel-featured-content  text-center">
                        <div class="panel-heading">iOS Apps</div>
                        <div class="panel-body">
                            <div class="diamond filled bg-warning wow zoomIn" data-wow-delay="1700ms" >
                                <i class="lineicon tn-apple"></i>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<div class="copyrights"><a href="" title=""></a></div>
    <section class="why-us" id="why-us">

        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center section-intro">
                    <h2 class="header-boxed wow zoomIn" data-wow-iteration="1"><span>Task</span></h2>
                    <p class="lead wow fadeInUp"  data-wow-delay="600ms">这里有您已经接受的任务，等待您的完成</p>
                </div>
                
                <div class="col-md-12 highlight-boxes">
                
                <div class="col-md-4 wow fadeInLeft" data-wow-delay="500ms">
                    <div class="featured-content-box text-center">
                        <i class="tn-heart ico-lg text-warning"></i>

                        <h3>Confucius Says </h3>
                        <p>Never study for others what you would not capture for the freedom of it.</p>
                        <a href="mytask.jsp"><button class="btn btn-warning">Read More </button></a>
                    </div>
                </div>
                
                <div class="col-md-4 wow fadeInLeft" data-wow-delay="500ms">
                    <div class="featured-content-box text-center">
                        <i class="tn-heart ico-lg text-warning"></i>

                        <h3>Confucius Says </h3>
                        <p>Never study for others what you would not capture for the freedom of it.</p>
                        <a href="mytask.jsp"><button class="btn btn-warning">Read More </button></a>
                    </div>
                </div>
                
                <s:iterator value="tasks">  
		            <div class="col-md-4 wow fadeInLeft" data-wow-delay="500ms">
                    <div class="featured-content-box text-center">
                        <i class="tn-heart ico-lg text-warning"></i>

						<h3> <s:property value = "name"/> </h3>  
			            <p> <s:property value = "context"/> </p>
                        <!-- <h3>Confucius Says </h3>
                        <p>Never study for others what you would not capture for the freedom of it.</p> -->
                        <a  href="<s:url action='showMyTask.action'>
			              <s:param name='projname' value='name' />
			              <s:param name='context' value='context' />   
            			</s:url>"> <button class="btn btn-warning">Read More </button></a>
                    </div>
               		</div>   	 	 
	             </s:iterator> 
                <!-- <div class="col-md-4 wow zoomIn" data-wow-delay="100ms">
                    <div class="featured-content-box text-center">
                        <i class="tn-server ico-lg text-info"></i>

                        <h3>Confucius Says </h3>
                        <p>Never study for others what you would not capture for the freedom of it.</p>
                        <a href="mytask.jsp"><button class="btn btn-warning">Read More </button></a>
                    </div>
                </div>
                <div class="col-md-4 wow fadeInRight" data-wow-delay="500ms">
                    <div class="featured-content-box text-center">
                        <i class="tn-anchor ico-lg text-success"></i>

                        <h3>Confucius Says </h3>
                        <p>Never study for others what you would not capture for the freedom of it.</p>
                        <a href="mytask.jsp"><button class="btn btn-primary">Read More </button></a>
                    </div>
                </div>
                    <div class="col-md-4 wow fadeInUp">
                        <div class="featured-content-box text-center">
                            <i class="tn-agenda ico-lg text-danger"></i>

                            <h3>Confucius Says </h3>
                            <p>Never study for others what you would not capture for the freedom of it.</p>
                            <a href="mytask.jsp"><button class="btn btn-danger">Read More </button></a>
                        </div>
                    </div>
                    <div class="col-md-4 wow fadeInUp" data-wow-delay="300ms">
                        <div class="featured-content-box text-center">
                            <i class="tn-headphone ico-lg text-warning"></i>

                            <h3>Confucius Says </h3>
                            <p>Never study for others what you would not capture for the freedom of it.</p>
                            <a href="mytask.jsp"><button class="btn btn-warning">Read More </button></a>
                        </div>
                    </div>
                    <div class="col-md-4 wow fadeInUp" data-wow-delay="600ms">
                        <div class="featured-content-box text-center">
                            <i class="tn-dashboard ico-lg text-info"></i>

                            <h3>Confucius Says </h3>
                            <p>Never study for others what you would not capture for the freedom of it.</p>
                            <a href="mytask.jsp"><button class="btn btn-warning">Read More </button></a>
                        </div>
                    </div>  -->
                </div>


            </div>
        </div>

    </section>

    <section class="out-team" id="out-team" >

    <div class="container">
    <div class="row">
    <div class="col-md-12 text-center section-intro">
        <h2 class="header-boxed wow zoomIn" data-wow-iteration="1"><span>Project</span></h2>
        <p class="lead wow fadeInUp"  data-wow-delay="600ms">这里有您发布的项目，等待您的管理</p>
    </div>
         
            <div class="col-sm-6 col-md-4">
                <div class="panel panel-default panel-card">
                    <div class="panel-heading">
                        <img src="imgs/ppp2.jpg" />
                        <a href="myproject.jsp"><button class="btn btn-primary btn-sm" role="button">More</button></a>
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
                        <a href="myproject.jsp"><button class="btn btn-primary btn-sm" role="button">More</button></a>
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
            
            <s:iterator value="projs">  
            <div class="col-sm-6 col-md-4">
                <div class="panel panel-default panel-card">
                    <div class="panel-heading">
                        <img src="imgs/ppp2.jpg" />
                        <a href="<s:url action='showMyProj.action'>
			                    		<s:param name='projname' value='name' />  
            							</s:url>" ><button class="btn btn-primary btn-sm" role="button">More</button></a>
                    </div>
                    <div class="panel-figure">
                        <img class="img-responsive img-circle" src="imgs/ppp3.png" />
                    </div>
                    <div class="panel-body text-center">
                    	<h4 class="panel-header"> <s:property value = "name"/> </h4>  
			            <small><s:property value = "context"/> </small>
                        <%-- <h4 class="panel-header"><a href="#">mdcg</a></h4>
                        <small>A short description goes here.</small> --%>
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
                        <a href="myproject.jsp"><a href="project.jsp"><button class="btn btn-primary btn-sm" role="button">More</button></a></a>
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
                        <a href="myproject.jsp"><button class="btn btn-primary btn-sm" role="button">More</button></a>
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
                        <a href="myproject.jsp"><button class="btn btn-primary btn-sm" role="button">More</button></a>
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
                    <a href="myproject.jsp"><button class="btn btn-primary btn-sm" role="button">More</button></a>
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
        </div>
	<div class="col-sm-6 col-md-4">
        <div class="panel panel-default panel-card row2">
            <div class="panel-heading">
                <img src="imgs/ppp2.jpg" />
                <a href="myproject.jsp"><button class="btn btn-primary btn-sm" role="button">More</button></a>
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


    <section class="client-reviews" id="client-reviews">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center section-intro">
                    <h2 class="header-boxed wow zoomIn" data-wow-iteration="1"><span>Evaluation</span></h2>
                    <p class="lead wow fadeInUp" data-wow-delay="200ms">发表您对平台或者项目合作的评论，也许会出现在评论推送里面哦</p>
                </div>

                <div class="col-md-4">
                    <div class="speach">
                        Nunc vehicula mattis egestas. Nam augue sapien, auctor ut feugiat sit amet, commodo vitae tortor. Ut interdum metus a egestas finibus. Nam augue sapien, auctor ut feugiat sit amet.
                        <div class="media person">
                            <div class="pull-left">
                                <img src="imgs/user.jpg" class="img-circle">
                            </div>
                            <div class="media-body">
                                <b>John Doe</b><br/>
                                Web Developer
                            </div>
                        </div>
                    </div>                   
                </div>

                <div class="col-md-4">
                    <div class="speach">
                        Nunc vehicula mattis egestas. Nam augue sapien, auctor ut feugiat sit amet, commodo vitae tortor. Ut interdum metus a egestas finibus. Nam augue sapien, auctor ut feugiat sit amet.
                        <div class="media person">
                            <div class="pull-left">
                                <img src="imgs/user.jpg" class="img-circle">
                            </div>
                            <div class="media-body">
                                <b>John Doe</b><br/>
                                Web Developer
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="speach">
                        Nunc vehicula mattis egestas. Nam augue sapien, auctor ut feugiat sit amet, commodo vitae tortor. Ut interdum metus a egestas finibus. Nam augue sapien, auctor ut feugiat sit amet.
                        <div class="media person">
                            <div class="pull-left">
                                <img src="imgs/user.jpg" class="img-circle">
                            </div>
                            <div class="media-body">
                                <b>John Doe</b><br/>
                                Web Developer
                            </div>
                        </div>
                    </div>
                </div>
			
            </div>
        </div>
        <br/>
        <br/>
        <a href="evaluation.jsp"><button class="btn btn-primary btn-sm" role="button" style="margin-left:46%;">Go to Evaluate</button></a>
    </section>

    <section class="curious" id="curious">
    <div class="container">
    <div class="row">
    <div class="col-md-12 text-center section-intro">
        <h2 class="header-boxed wow zoomIn" data-wow-iteration="1"><span>Myself</span></h2>
        <p class="lead">您的个人中心，请您认真填写信息，点击EDIT可对所有信息进行修改</p>
    </div>
        <div class="col-md-6">
            <div class="contact-form wow fadeInLeft">
            
            <form class="row" method="post" action="updateInfo">
            	<s:hidden name="modify" value="true" />
                <div class="col-md-6">
                    <div class="form-group">
                    	<label>Your name here<i class="fa fa-asterisk"></i></label>
                    	<s:textfield name="user.info.name" class="form-control"/>
						<s:fielderror> <s:param>user.info.name</s:param>  </s:fielderror> 
                    <!-- <input type="text" name="name" class="form-control"> -->
                    </div>
                </div>
                
                <div class="col-md-6">
                    <div class="form-group"><label>Your Phone<i class="fa fa-asterisk"></i></label> 
                    <s:textfield name="user.info.phone" class="form-control"/>
					<s:fielderror> <s:param>user.info.phone</s:param> </s:fielderror>
                    <!-- <input type="email" name="email" class="form-control">-->
                 	</div> 
                </div>
                <div class="col-md-12">
                    <div class="form-group"><label>Your Message</label> 
                    <s:textarea name="user.info.introduce" rows="6" class="form-control"/>
					<s:fielderror>
						<s:param>user.info.introduce</s:param>
					</s:fielderror>
                    <!-- <textarea name="message" rows="6" class="form-control"></textarea> -->
                    </div>
                    <div class="send_result"></div>
                </div>
                <div class="col-md-12"><a href="personalinformation.jsp"><input type="submit" value="E D I T" class="btn btn-primary btn-lg btn-block" name="submit"></a>
                </div>
            </form>
            
            
            </div>
        </div>
        <div class="col-md-3">
            <div class="featured-content-box text-center wow fadeInDown">
                <div class="circle feature-icon">
                    <i class="tn-mobile"></i>
                </div>

                <h3>Phone</h3>
                <p>+123-456-5678</p>

            </div>

            <div class="featured-content-box text-center wow fadeInUp">
                <div class="circle feature-icon">
                    <i class="tn-email"></i>
                </div>

                <h3>Email</h3>
                <p>xxxxxxx@xxx.com</p>

            </div>

        </div>
        <div class="col-md-3">
            <div class="panel panel-default panel-subscribe panel-subscribe-narrow panel-subscribe-light panel-subscribe-vert wow fadeInRight">
                <div class="panel-body">
                    <div class="media text-center">
                        <img src="imgs/email2.png">
                        <div class="media-body">
                            <h3>Your Skill Box!</h3>
                                                                                    您擅长的方向及技术.
                        </div>
                    </div>
                </div>
                <div class="panel-footer">

                    <form method="post" action="updateInfo">
                        <div class="form-group">
                        	<s:textfield name="user.info.major" class="form-control" />
							<s:fielderror>
								<s:param>user.info.major</s:param>
							</s:fielderror>
                            <!-- <input type="text" placeholder="特长1" id="fname1" class="form-control"> -->
                        	
                        </div>
                        <div class="input-group">
                           <!--  <input type="text" placeholder="特长2" class="form-control"> -->
                        <span class="input-group-btn">
                        <a href="personalinformation.jsp"><button class="btn btn-inverse btn-block" type="submit">EDIT</button></a>
                    	</span>
                        </div>
                    </form>

                </div>
            </div>
        </div>
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