<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Error</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	

  

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,600,400italic,700' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Flexslider -->
	<link rel="stylesheet" href="css/flexslider.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- 
	Default Theme Style 
	You can change the style.css (default color purple) to one of these styles
	-->
	<link rel="stylesheet" href="css/style.css">

	<!-- Styleswitcher ( This style is for demo purposes only, you may delete this anytime. ) -->
	<link rel="stylesheet" id="theme-switch" href="css/style.css">
	<!-- End demo purposes only -->


	<style>
	/* For demo purpose only */

	/*
	GREEN
	8dc63f
	RED
	FA5555
	TURQUOISE
	27E1CE
	BLUE 
	2772DB
	ORANGE
	FF7844
	YELLOW
	FCDA05
	PINK
	F64662
	PURPLE
	7045FF

	*/
	
	/* For Demo Purposes Only ( You can delete this anytime :-) */
	#colour-variations {
		padding: 10px;
		-webkit-transition: 0.5s;
	  	-o-transition: 0.5s;
	  	transition: 0.5s;
		width: 140px;
		position: fixed;
		left: 0;
		top: 100px;
		z-index: 999999;
		background: #fff;
		/*border-radius: 4px;*/
		border-top-right-radius: 4px;
		border-bottom-right-radius: 4px;
		-webkit-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		-moz-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		-ms-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
	}
	#colour-variations.sleep {
		margin-left: -140px;
	}
	#colour-variations h3 {
		text-align: center;;
		font-size: 11px;
		letter-spacing: 2px;
		text-transform: uppercase;
		color: #777;
		margin: 0 0 10px 0;
		padding: 0;;
	}
	#colour-variations table tr {
		color:black;
	}
	#colour-variations ul,
	#colour-variations ul li {
		padding: 0;
		margin: 0;
	}
	#colour-variations ul {
		margin-bottom: 20px;
		float: left;	
	}
	#colour-variations li {
		list-style: none;
		display: inline;
	}
	#colour-variations li a {
		width: 20px;
		height: 20px;
		position: relative;
		float: left;
		margin: 5px;
	}



	#colour-variations li a[data-theme="style"] {
		background: #8dc63f;
	}
	#colour-variations li a[data-theme="red"] {
		background: #FA5555;
	}
	#colour-variations li a[data-theme="turquoise"] {
		background: #27E1CE;
	}
	#colour-variations li a[data-theme="blue"] {
		background: #2772DB;
	}
	#colour-variations li a[data-theme="orange"] {
		background: #FF7844;
	}
	#colour-variations li a[data-theme="yellow"] {
		background: #FCDA05;
	}
	#colour-variations li a[data-theme="pink"] {
		background: #F64662;
	}
	#colour-variations li a[data-theme="purple"] {
		background: #7045FF;
	}

	#colour-variations a[data-layout="boxed"],
	#colour-variations a[data-layout="wide"] {
		padding: 2px 0;
		width: 48%;
		border: 1px solid #ededed;
		text-align: center;
		color: #777;
		display: block;
	}
	#colour-variations a[data-layout="boxed"]:hover,
	#colour-variations a[data-layout="wide"]:hover {
		border: 1px solid #777;
	}
	#colour-variations a[data-layout="boxed"] {
		float: left;
	}
	#colour-variations a[data-layout="wide"] {
		float: right;
	}

	.option-toggle {
		position: absolute;
		right: 0;
		top: 0;
		margin-top: 5px;
		margin-right: -30px;
		width: 30px;
		height: 30px;
		background: #8dc63f;
		text-align: center;
		border-top-right-radius: 4px;
		border-bottom-right-radius: 4px;
		color: #fff;
		cursor: pointer;
		-webkit-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		-moz-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		-ms-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
	}
	.option-toggle i {
		top: 2px;
		position: relative;
	}
	.option-toggle:hover, .option-toggle:focus, .option-toggle:active {
		color:  #fff;
		text-decoration: none;
		outline: none;
	}
	</style>
	<!-- End demo purposes only -->


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>


	<!-- 
		INFO:
		Add 'boxed' class to body element to make the layout as boxed style.
		Example: 
		<body class="boxed">	
	-->
	<body>

	<!-- Loader -->
	<div class="fh5co-loader"></div>
	
	<div id="fh5co-page">
		<section id="fh5co-header">
			<div class="container">
				<nav role="navigation">
					<ul class="pull-left left-menu">
						<li><a href="index.jsp">H I T</a></li>
						<li><a href="index.jsp">R & D</a></li>
						<li><a href="index.jsp">G R O U P</a></li>
					</ul>
					<h1 id="fh5co-logo"><a href="index.html"><span></span></a></h1>
					<ul class="pull-right right-menu">
						<li><a href="login.jsp">Login</a></li>
						<li class="fh5co-cta-btn"><a href="register.jsp">Sign up</a></li>
					</ul>
				</nav>
			</div>
		</section>
		<!-- #fh5co-header -->

		<section id="fh5co-hero" class="no-js-fullheight" style="background-image: url(images/full_image_1.jpg);" data-next="yes">
			<div class="fh5co-overlay"></div>
			<div class="container">
				<div class="fh5co-intro no-js-fullheight">
					<div class="fh5co-intro-text">
						<!-- 
							INFO:
							Change the class to 'fh5co-right-position' or 'fh5co-center-position' to change the layout position
							Example:
							<div class="fh5co-right-position">
						-->
						<div class="fh5co-center-position">
							<h2 class="animate-box">Register Error !</h2>
							<h3 class="animate-box">Maybe this ID has been registered .</h3>
							
						</div>
					</div>
				</div>
			</div>
			<div class="fh5co-learn-more animate-box">
				<a href="#" class="scroll-btn">
					<span class="text">Try to change an ID or contact us</span>
					<span class="arrow"><i class="icon-chevron-down"></i></span>
				</a>
			</div>
		</section>
		<!-- END #fh5co-hero -->

		<section id="fh5co-subscribe">
			<div class="container">
		
				<h3 class="animate-box"><label for="email">Subscribe to our newsletter</label></h3>
				<form action="#" method="post" class="animate-box">
					<i class="fh5co-icon icon-paper-plane"></i>
					<input type="email" class="form-control" placeholder="Enter your email" id="email" name="email">
					<input type="submit" value="Send" class="btn btn-primary">
				</form>

			</div>
		</section>
		<!-- END #fh5co-subscribe -->

		<footer id="fh5co-footer">
			<div class="container">
				<div class="row row-bottom-padded-md">
					<div class="col-md-3 col-sm-6 col-xs-12 animate-box">
						<div class="fh5co-footer-widget">
							<h3>Team</h3>
							<ul class="fh5co-links">
								<li><a href="#">About Us</a></li>
								<li><a href="#">Careers</a></li>
								<li><a href="#">Feature Tour</a></li>
								<li><a href="#">Pricing</a></li>
								<li><a href="#">Team</a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-3 col-sm-6 col-xs-12 animate-box">
						<div class="fh5co-footer-widget">
							<h3>Support</h3>
							<ul class="fh5co-links">
								<li><a href="#">Knowledge Base</a></li>
								<li><a href="#">Call Support</a></li>
								<li><a href="#">Video Demos</a></li>
								<li><a href="#">Terms of Use</a></li>
								<li><a href="#">Privacy Policy</a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-3 col-sm-6 col-xs-12 animate-box">
						<div class="fh5co-footer-widget">
							<h3>Contact Us</h3>
							<p>
								<a href="mailto:info@freehtml5.co">info@ MDCG</a> <br>
								92 Xidazhi Street, <br>
								 HIT, Harbin, Heilongjiang <br>
								<a href="tel:+15636835096">+156xxxx5096</a>
							</p>
						</div>
					</div>

					<div class="col-md-3 col-sm-6 col-xs-12 animate-box">
						<div class="fh5co-footer-widget">
							<h3>Follow Us</h3>
							<ul class="fh5co-social">
								<li><a href="#"><i class="icon-twitter"></i></a></li>
								<li><a href="#"><i class="icon-facebook"></i></a></li>
								<li><a href="#"><i class="icon-google-plus"></i></a></li>
								<li><a href="#"><i class="icon-instagram"></i></a></li>
								<li><a href="#"><i class="icon-youtube-play"></i></a></li>
							</ul>
						</div>
					</div>

				</div>
				
			</div>
			<div class="fh5co-copyright animate-box">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<p class="fh5co-left"><small>&copy; 2016 <a href="index.html">MDCG</a> from HIT. All Rights Reserved.</small></p>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- END #fh5co-footer -->
	</div>
	<!-- END #fh5co-page -->
	
	<!-- For demo purposes Only ( You may delete this anytime :-) -->
	<div id="colour-variations">
		<a class="option-toggle"><i class="icon-gear"></i></a>
		<h3>Preset Colors</h3>
		<ul>
			<li><a href="javascript: void(0);" data-theme="style"></a></li>
			<li><a href="javascript: void(0);" data-theme="red"></a></li>
			<li><a href="javascript: void(0);" data-theme="turquoise"></a></li>
			<li><a href="javascript: void(0);" data-theme="blue"></a></li>
			<li><a href="javascript: void(0);" data-theme="orange"></a></li>
			<li><a href="javascript: void(0);" data-theme="yellow"></a></li>
			<li><a href="javascript: void(0);" data-theme="pink"></a></li>
			<li><a href="javascript: void(0);" data-theme="purple"></a></li>
		</ul>
		<a href="#" data-layout="boxed">Boxed</a>
		<a href="#" data-layout="wide">Wide</a>
	</div>
	<!-- End demo purposes only -->

	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>

	<!-- For demo purposes only styleswitcher ( You may delete this anytime ) -->
	<script src="js/jquery.style.switcher.js"></script>
	<script>
		$(function(){
			$('#colour-variations ul').styleSwitcher({
				defaultThemeId: 'theme-switch',
				hasPreview: false,
				cookie: {
		          	expires: 30,
		          	isManagingLoad: true
		      	}
			});	
			$('.option-toggle').click(function() {
				$('#colour-variations').toggleClass('sleep');
			});
		});
	</script>
	<!-- End demo purposes only -->

	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>

	<!-- 
	INFO:
	jQuery Cookie for Demo Purposes Only. 
	The code below is to toggle the layout to boxed or wide 
	-->
	<script src="js/jquery.cookie.js"></script>
	<script>
		$(function(){

			if ( $.cookie('layoutCookie') != '' ) {
				$('body').addClass($.cookie('layoutCookie'));
			}

			$('a[data-layout="boxed"]').click(function(event){
				event.preventDefault();
				$.cookie('layoutCookie', 'boxed', { expires: 7, path: '/'});
				$('body').addClass($.cookie('layoutCookie')); // the value is boxed.
			});

			$('a[data-layout="wide"]').click(function(event){
				event.preventDefault();
				$('body').removeClass($.cookie('layoutCookie')); // the value is boxed.
				$.removeCookie('layoutCookie', { path: '/' }); // remove the value of our cookie 'layoutCookie'
			});
		});
		
		function changeValidateCode(obj) {  
	        var currentTime= new Date().getTime();  
	        obj.src = "rand.action?d=" + currentTime;  
	    } 
	</script>
	</body>
</html>
