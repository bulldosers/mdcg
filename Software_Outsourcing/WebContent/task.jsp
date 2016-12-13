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
    <title>Choose Category</title>
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
        <h2 class="header-boxed  wow zoomIn" data-wow-iteration="1"><span>Category</span></h2>
        <p class="lead wow fadeInUp" data-wow-delay="200ms">选择您希望发布项目的类型</p>
    </div>

    <div class="col-md-12">
        <div class="col-md-6 pricing-table-block wow fadeInLeft">
            <div class="col-md-6 tb-left text-center">
                <h5 class="text-light">electronic commercial</h5>
                <h3>电子商务</h3>
                <p><i class="tn-star  text-info"></i><i class="tn-star  text-info"></i><i class="tn-star text-info"></i><i class="tn-star text-info"></i><i class="tn-star text-info"></i></p>
                <p class="pac-info">For Marketing</p>
                <a href="<s:url action='ShowTasknew.action'> </s:url>">
                	<button class="btn btn-default">Choose</button>
                </a>
            </div>
            <div class="col-md-6 tb-right">
                <ul class="list-group">
                    <li class="list-group-item"><i class="tn-server"></i> 网络营销</li>
                    <li class="list-group-item"><i class="tn-download"></i> 管理我的搜寻行销</li>
                    <li class="list-group-item"><i class="tn-harddrives"></i> 客户关系管理相关帮助</li>
                    <li class="list-group-item"><i class="tn-email"></i> 社交媒体营销</li>
                    <li class="list-group-item"><i class="tn-user"></i> 增加网络关注度</li>
                </ul>
            </div>
        </div>
        <div class="col-md-6 pricing-table-block wow fadeInRight">
            <div class="col-md-6 tb-left text-center">
                <h5 class="text-info">ios App</h5>
                <h3>苹果端应用</h3>
                <p><i class="tn-star text-info"></i><i class="tn-star text-info"></i><i class="tn-star text-info"></i><i class="tn-star text-info"></i><i class="tn-star text-info"></i></p>
                <p class="pac-info">For Business or Lives</p>
                <a href="<s:url action='ShowTasknew.action'> </s:url>">
                <button class="btn btn-info">Choose</button>
                </a>
            </div>
            <div class="col-md-6 tb-right">
                <ul class="list-group">
                    <li class="list-group-item"><i class="tn-server"></i> ipad APP</li>
                    <li class="list-group-item"><i class="tn-download"></i> iphone APP</li>
                    <li class="list-group-item"><i class="tn-harddrives"></i> 客户关系管理相关帮助</li>
                    <li class="list-group-item"><i class="tn-email"></i> 社交媒体营销</li>
                    <li class="list-group-item"><i class="tn-user"></i> 增加网络关注度</li>
                </ul>
            </div>
        </div>
        <div class="col-md-6 pricing-table-block wow fadeInUp" data-wow-delay="100ms">
            <div class="col-md-6 tb-left text-center">
                <h5 class="text-warning">Website</h5>
                <h3>网站开发</h3>
                <p><i class="tn-star text-warning"></i><i class="tn-star text-warning"></i><i class="tn-star text-warning"></i><i class="tn-star text-warning"></i><i class="tn-star"></i></p>
                <p class="pac-info">For Developers</p>
                <a href="<s:url action='ShowTasknew.action'> </s:url>">
                <button class="btn btn-warning">Choose</button>
                </a>
            </div>
            <div class="col-md-6 tb-right">
                <ul class="list-group">
                    <li class="list-group-item"><i class="tn-server"></i> 整体方案</li>
                    <li class="list-group-item"><i class="tn-download"></i> UI设计</li>
                    <li class="list-group-item"><i class="tn-harddrives"></i> 客户关系管理相关帮助</li>
                    <li class="list-group-item"><i class="tn-email"></i> 社交媒体营销</li>
                    <li class="list-group-item"><i class="tn-user"></i> 增加网络关注度</li>
                </ul>
            </div>
        </div>
        <div class="col-md-6 pricing-table-block wow fadeInUp" data-wow-delay="200ms">
            <div class="col-md-6 tb-left text-center">
                <h5 class="text-success">WeChat Official Accounts </h5>
                <h3>微信公众号</h3>
                <p><i class="tn-star text-success"></i><i class="tn-star  text-success"></i><i class="tn-star  text-success"></i><i class="tn-star  text-success"></i><i class="tn-star"></i></p>
                <p class="pac-info">For VIPs</p>
                <a href="<s:url action='ShowTasknew.action'> </s:url>">
                <button class="btn btn-primary">Choose</button>
                </a>
            </div>
            <div class="col-md-6 tb-right">
                <ul class="list-group">
                    <li class="list-group-item"><i class="tn-server"></i> 产品原型</li>
                    <li class="list-group-item"><i class="tn-download"></i> 整体设计方案</li>
                    <li class="list-group-item"><i class="tn-harddrives"></i> 推送内容设计</li>
                    <li class="list-group-item"><i class="tn-email"></i> 社交媒体营销</li>
                    <li class="list-group-item"><i class="tn-user"></i> 增加网络关注度</li>
                </ul>
            </div>
        </div>
        <div class="col-md-6 pricing-table-block wow fadeInLeft">
            <div class="col-md-6 tb-left text-center">
                <h5 class="text-light">HTML5</h5>
                <h3>HTML5应用</h3>
                <p><i class="tn-star  text-info"></i><i class="tn-star  text-info"></i><i class="tn-star text-info"></i><i class="tn-star"></i><i class="tn-star"></i></p>
                <p class="pac-info">For Professional</p>
                <a href="<s:url action='ShowTasknew.action'> </s:url>">
                <button class="btn btn-default">Choose</button>
                </a>
            </div>
            <div class="col-md-6 tb-right">
                <ul class="list-group">
                    <li class="list-group-item"><i class="tn-server"></i> UI设计</li>
                    <li class="list-group-item"><i class="tn-download"></i> 产品原型</li>
                    <li class="list-group-item"><i class="tn-harddrives"></i> 客户关系管理相关帮助</li>
                    <li class="list-group-item"><i class="tn-email"></i> 社交媒体营销</li>
                    <li class="list-group-item"><i class="tn-user"></i> 增加网络关注度</li>
                </ul>
            </div>
        </div>
        <div class="col-md-6 pricing-table-block wow fadeInRight">
            <div class="col-md-6 tb-left text-center">
                <h5 class="text-info">Finance</h5>
                <h3>金融</h3>
                <p><i class="tn-star text-info"></i><i class="tn-star text-info"></i><i class="tn-star text-info"></i><i class="tn-star text-info"></i><i class="tn-star text-info"></i></p>
                <p class="pac-info">For Business or Lives</p>
                <a href="<s:url action='ShowTasknew.action'> </s:url>">
                <button class="btn btn-info">Choose</button>
                </a>
            </div>
            <div class="col-md-6 tb-right">
                <ul class="list-group">
                    <li class="list-group-item"><i class="tn-server"></i> 理财产品</li>
                    <li class="list-group-item"><i class="tn-download"></i> 期货股票模型</li>
                    <li class="list-group-item"><i class="tn-harddrives"></i> 客户关系管理相关帮助</li>
                    <li class="list-group-item"><i class="tn-email"></i> 数据分析</li>
                    <li class="list-group-item"><i class="tn-user"></i> 增加网络关注度</li>
                </ul>
            </div>
        </div>
        <div class="col-md-6 pricing-table-block wow fadeInUp" data-wow-delay="100ms">
            <div class="col-md-6 tb-left text-center">
                <h5 class="text-warning">medical health</h5>
                <h3>医疗健康</h3>
                <p><i class="tn-star text-warning"></i><i class="tn-star text-warning"></i><i class="tn-star text-warning"></i><i class="tn-star text-warning"></i><i class="tn-star"></i></p>
                <p class="pac-info">For Medical Institution</p>
                <a href="<s:url action='ShowTasknew.action'> </s:url>">
                <button class="btn btn-warning">Choose</button>
                </a>
            </div>
            <div class="col-md-6 tb-right">
                <ul class="list-group">
                    <li class="list-group-item"><i class="tn-server"></i> 整体方案</li>
                    <li class="list-group-item"><i class="tn-download"></i> UI设计</li>
                    <li class="list-group-item"><i class="tn-harddrives"></i> 疾病管理相关帮助</li>
                    <li class="list-group-item"><i class="tn-email"></i> 社交媒体营销</li>
                    <li class="list-group-item"><i class="tn-user"></i> 增加网络关注度</li>
                </ul>
            </div>
        </div>
        <div class="col-md-6 pricing-table-block wow fadeInUp" data-wow-delay="200ms">
            <div class="col-md-6 tb-left text-center">
                <h5 class="text-success">Others </h5>
                <h3>其他</h3>
                <p><i class="tn-star text-success"></i><i class="tn-star  text-success"></i><i class="tn-star  text-success"></i><i class="tn-star"></i><i class="tn-star"></i></p>
                <p class="pac-info">For others</p>
                <a href="<s:url action='ShowTasknew.action'> </s:url>">
                <button class="btn btn-primary">Choose</button>
                </a>
            </div>
            <div class="col-md-6 tb-right">
                <ul class="list-group">
                    <li class="list-group-item"><i class="tn-server"></i> 产品原型</li>
                    <li class="list-group-item"><i class="tn-download"></i> 整体设计方案</li>
                    <li class="list-group-item"><i class="tn-harddrives"></i> UI设计</li>
                    <li class="list-group-item"><i class="tn-email"></i> 社交媒体营销</li>
                    <li class="list-group-item"><i class="tn-user"></i> 增加网络关注度</li>
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