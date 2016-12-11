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
                            <li><a href="user.jsp">User Center</a></li>
                            <li><a href="project.jsp">All Project</a></li>
                            <li><a href="developer.jsp">All Developers</a></li>
                            <li><a href="index.jsp">Exit</a></li>

                        </ul>

                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#search"><i class="tn-search"></i></a></li>
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
                                        <span class="lead slide-cat inv"  data-animation="animated zoomIn"><a href="#" rel="category">Category</a></span>
                                        <h2 class="slide-title inv"  data-animation="animated fadeInUp" data-duration="2s" data-delay="1s">选择您希望发布任务的类型 </h2>
                                        <div class="slide-excerpt inv" data-animation="animated fadeInUp" data-duration="3s" data-delay="2s">
                                         </div>
                                        <div class="meta">
                                            <a href="#pricing"><button class="btn btn-primary inv slide-btn btn-lg"  data-animation="animated fadeInUp" data-delay="3s" data-duration="2s">前 往 选 择 <i class="tn-arrow-right"></i></button></a>
                                        </div>

                                    </div>
                                </div>
                                <div class="item" id="slide-3">
                                    <img src='imgs/slider-2.jpg' alt='' class='featured-slide inv' data-animation = 'animated zoomIn' data-delay = '0.3s' />
                                    <img src='imgs/slider-3.jpg' alt='' class='featured-slide featured-slide-1 inv' data-animation = 'animated zoomIn' data-delay = '0.7s' />
                                    <div class="carousel-caption">
                                        <span class="lead slide-cat inv"  data-animation="animated zoomIn"><a href="#" rel="category">About</a></span>
                                        <h2 class="slide-title inv"  data-animation="animated fadeInUp" data-duration="2s" data-delay="1s">了解我们？来自哈工大的开发团队</h2>
                                        <div class="slide-excerpt inv" data-animation="animated fadeInUp" data-duration="3s" data-delay="2s">
    									</div>
                                        <div class="meta">
                                            <a href="http://today.hit.edu.cn/"><button class="btn btn-info inv slide-btn btn-lg"  data-animation="animated lightSpeedIn" data-delay="3s" data-duration="2s">M o r e <i class="tn-arrow-right"></i></button></a>
                                        </div>

                                    </div>
                                </div>
                                <div class="item" id="slide-4">
                                    <img src='imgs/slider-3.jpg' alt='' class='featured-slide inv' data-animation = 'animated zoomIn' data-delay = '0.3s' />
                                    <img src='imgs/slider-1.jpg' alt='' class='featured-slide featured-slide-1 inv' data-animation = 'animated zoomIn' data-delay = '0.7s' />
                                    <div class="carousel-caption">
                                        <span class="lead slide-cat inv"  data-animation="animated zoomIn"><a href="#" rel="category">Category</a></span>
                                        <h2 class="slide-title inv"  data-animation="animated fadeInUp" data-duration="2s" data-delay="1s">请选择您希望发布项目的类型</h2>
                                        <div class="slide-excerpt inv" data-animation="animated fadeInUp" data-duration="3s" data-delay="2s">
                                            
                                        </div>
                                        <div class="meta">
                                            <a href="#pricing"><button class="btn btn-danger inv slide-btn btn-lg"  data-animation="animated fadeInUp" data-delay="3s" data-duration="2s">前 往 选 择<i class="tn-arrow-right"></i></button></a>
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
   
    <section class="pricing" id="pricing">
    <div class="container">
    <div class="row">
    <div class="col-md-12 text-center section-intro">
        <h2 class="header-boxed  wow zoomIn" data-wow-iteration="1"><span>Choose</span></h2>
        <p class="lead wow fadeInUp" data-wow-delay="200ms">选择您希望发布项目的类型</p>
    </div>

    <div class="col-md-12">
        <div class="col-md-6 pricing-table-block wow fadeInLeft">
            <div class="col-md-6 tb-left text-center">
                <h5 class="text-light">Website</h5>
                <h3>网页开发</h3>
                <p><i class="tn-star  text-info"></i><i class="tn-star  text-info"></i><i class="tn-star"></i><i class="tn-star"></i><i class="tn-star"></i></p>
                <p class="pac-info">For Professionals</p>
                <button class="btn btn-default">Choose</button>
            </div>
            <div class="col-md-6 tb-right">
                <ul class="list-group">
                    <li class="list-group-item"><i class="tn-server"></i> 1 Doamin</li>
                    <li class="list-group-item"><i class="tn-download"></i> 5 GB Bandwidth</li>
                    <li class="list-group-item"><i class="tn-harddrives"></i> 25 GB Space</li>
                    <li class="list-group-item"><i class="tn-email"></i> 30 Email</li>
                    <li class="list-group-item"><i class="tn-user"></i> 10 Users</li>
                </ul>
            </div>
        </div>
        <div class="col-md-6 pricing-table-block wow fadeInRight">
            <div class="col-md-6 tb-left text-center">
                <h5 class="text-info">ios App</h5>
                <h3>苹果端应用</h3>
                <p><i class="tn-star text-info"></i><i class="tn-star text-info"></i><i class="tn-star text-info"></i><i class="tn-star"></i><i class="tn-star"></i></p>
                <p class="pac-info">For Business</p>
                <button class="btn btn-info">Choose</button>
            </div>
            <div class="col-md-6 tb-right">
                <ul class="list-group">
                    <li class="list-group-item"><i class="tn-server"></i> 1 Doamin</li>
                    <li class="list-group-item"><i class="tn-download"></i> 5 GB Bandwidth</li>
                    <li class="list-group-item"><i class="tn-harddrives"></i> 25 GB Space</li>
                    <li class="list-group-item"><i class="tn-email"></i> 30 Email</li>
                    <li class="list-group-item"><i class="tn-user"></i> 10 Users</li>
                </ul>
            </div>
        </div>
        <div class="col-md-6 pricing-table-block wow fadeInUp" data-wow-delay="100ms">
            <div class="col-md-6 tb-left text-center">
                <h5 class="text-warning">Developer</h5>
                <h3>xxxxxx</h3>
                <p><i class="tn-star text-warning"></i><i class="tn-star text-warning"></i><i class="tn-star text-warning"></i><i class="tn-star text-warning"></i><i class="tn-star"></i></p>
                <p class="pac-info">For Developers</p>
                <button class="btn btn-warning">Choose</button>
            </div>
            <div class="col-md-6 tb-right">
                <ul class="list-group">
                    <li class="list-group-item"><i class="tn-server"></i> 1 Doamin</li>
                    <li class="list-group-item"><i class="tn-download"></i> 5 GB Bandwidth</li>
                    <li class="list-group-item"><i class="tn-harddrives"></i> 25 GB Space</li>
                    <li class="list-group-item"><i class="tn-email"></i> 30 Email</li>
                    <li class="list-group-item"><i class="tn-user"></i> 10 Users</li>
                </ul>
            </div>
        </div>
        <div class="col-md-6 pricing-table-block wow fadeInUp" data-wow-delay="200ms">
            <div class="col-md-6 tb-left text-center">
                <h5 class="text-success">VIP</h5>
                <h3>xxxxxx</h3>
                <p><i class="tn-star text-success"></i><i class="tn-star  text-success"></i><i class="tn-star  text-success"></i><i class="tn-star  text-success"></i><i class="tn-star  text-success"></i></p>
                <p class="pac-info">For VIPs</p>
                <button class="btn btn-primary">Choose</button>
            </div>
            <div class="col-md-6 tb-right">
                <ul class="list-group">
                    <li class="list-group-item"><i class="tn-server"></i> 1 Doamin</li>
                    <li class="list-group-item"><i class="tn-download"></i> 5 GB Bandwidth</li>
                    <li class="list-group-item"><i class="tn-harddrives"></i> 25 GB Space</li>
                    <li class="list-group-item"><i class="tn-email"></i> 30 Email</li>
                    <li class="list-group-item"><i class="tn-user"></i> 10 Users</li>
                </ul>
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