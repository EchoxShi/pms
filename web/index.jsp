<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >

<head>
	<title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Custom Theme files -->
	<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all" />
	<!--// Owl-Carousel-CSS -->
	<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
	<link href="css/slider.css" type="text/css" rel="stylesheet" media="all">
	<link href='css/simplelightbox.min.css' rel='stylesheet' type='text/css'>
	<!-- //Custom Theme files -->
	<!-- font-awesome icons -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome icons -->

	<!-- web-fonts -->
	<link href="http://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600,600i,700,700i" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
	<!-- //web-fonts -->




<style>




	body {
	margin-top: 20px;
	margin: 0 auto;
}

.carousel-inner .item img {
	width: 100%;
	height: 300px;
}

.container .row div {
	/* position:relative;
				 float:left; */
	
}

font {
	color: #666;
	font-size: 22px;
	font-weight: normal;
	padding-right: 17px;
}
.a{
   position:absolute;
   right:740px;
   width:600px;
   height:500px;
 
}
</style>

</head>

<body>
	<!-- banner -->
	<div class="banner">
		<div class="cd-radial-slider-wrapper">
			<div class="header">
				<!-- header -->
				<nav class="navbar navbar-default">
					<div class="container">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
							    aria-expanded="false">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<h1>
								<a href="index.jsp">zoom</a>
							</h1>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav nav-center">
								<li>
									<a href="index.jsp" class="nav-hover active">Home</a>
								</li>
								<li>
									<a href="comment.jsp" class="btn nav-hover scroll">Comment</a>
								</li>

								<li>
									<a href="#team" class="btn nav-hover scroll">Team</a>
								</li>
								<li>
									<a href="#gallery" class="btn nav-hover scroll">Portfolio</a>
								</li>
								<li>
									<a href="#contact" class="btn nav-hover scroll">Contact</a>
								</li>
								<li>
									<a href="login.jsp" >Login In</a>
								</li>
								<li>
								<a href="registe.jsp">Registe</a>
							    </li>
							</ul>

							<div class="clearfix"> </div>
						</div>

						<div class="clearfix"></div>
						<!-- //navbar-collapse -->

					</div>
					<!-- //container-fluid -->
				</nav>
			</div>
			<!-- //header -->
			<ul class="cd-radial-slider" data-radius1="60" data-radius2="1364" data-centerx1="110" data-centerx2="1290">
				<li class="visible"> 
					<div class="svg-wrapper">
						<svg viewBox="0 0 1400 800">
							<title>Animated SVG</title>
							<defs>
								<clipPath id="cd-image-1">
									<circle id="cd-circle-1" cx="110" cy="400" r="1364"/>
								</clipPath>
							</defs> 
							<image height='800px' width="1400px" clip-path="url(#cd-image-1)" xlink:href="images/11.jpg"></image>
						</svg>
					</div> <!-- .svg-wrapper --> 
					<div class="cd-radial-slider-content">
						<div class="wrapper">
							<div class="w3ls-banner-text text-center">
								<div class="col-md-7 col-sm-7 col-xs-7 banner-left">
									<h3>Leaving home here is like staying at home</h3>
									<h4>NICE TRIP</h4>
								</div>
								<div class="col-md-5 col-sm-5 col-xs-5 banner-right">

									<p>Warm, clean and comfortable accommodation</p>

									<a href="#about" class="ban-btn button8 scroll">Learn More</a>
								</div>
							</div>
						</div>

					</div> <!-- .cd-radial-slider-content -->
				</li> 
				<li class="next-slide">
					<div class="svg-wrapper">
						<svg viewBox="0 0 1400 800">
							<title>Animated SVG</title>
							<defs>
								<clipPath id="cd-image-2">
									<circle id="cd-circle-2" cx="1290" cy="400" r="60"/>
								</clipPath>
							</defs> 
							<image height='800px' width="1400px" clip-path="url(#cd-image-2)" xlink:href="images/222.jpg"></image>
						</svg>
					</div> <!-- .svg-wrapper --> 
					<div class="cd-radial-slider-content">
						<div class="wrapper">
							<div class="w3ls-banner-text text-center">
								<div class="col-md-7 col-sm-7  col-xs-7 banner-left">
									<h3>Making some thing special</h3>
									<h4>candid</h4>
								</div>
								<div class="col-md-5 col-sm-5 col-xs-5 banner-right">
									<p>creating your most precious moments</p>
									<a href="#about" class="ban-btn button8 scroll">Learn More</a>
								</div>
							</div>
						</div>

					</div> <!-- .cd-radial-slider-content -->
				</li> 
				<li>
					<div class="svg-wrapper">
						<svg viewBox="0 0 1400 800">
							<title>Animated SVG</title>
							<defs>
								<clipPath id="cd-image-3">
									<circle id="cd-circle-3" cx="110" cy="400" r="60"/>
								</clipPath>
							</defs> 
							<image height='800px' width="1400px" clip-path="url(#cd-image-3)" xlink:href="images/11.jpg"></image>
						</svg>
					</div> <!-- .svg-wrapper --> 
					<div class="cd-radial-slider-content">
						<div class="wrapper">
							<div class="w3ls-banner-text text-center">
								<div class="col-md-7 col-sm-7  col-xs-7 banner-left">
									<h3>Making some thing special</h3>
									<h4>NICE TRIP</h4>
								</div>
								<div class="col-md-5 col-sm-5 col-xs-5 banner-right">
									<p>Warm, clean and comfortable accommodation</p>
									<a href="#about" class="ban-btn button8 scroll">Learn More</a>
								</div>
							</div>

						</div>
					</div> <!-- .cd-radial-slider-content -->
				</li> 
				<li class="prev-slide">
					<div class="svg-wrapper">
						<svg viewBox="0 0 1400 800">
							<title>Animated SVG</title>
							<defs>
								<clipPath id="cd-image-4">
									<circle id="cd-circle-4" cx="110" cy="400" r="60"/>
								</clipPath>
							</defs> 
							<image height='800px' width="1400px" clip-path="url(#cd-image-4)" xlink:href="images/222.jpg"></image>
						</svg>
					</div> <!-- .svg-wrapper --> 
					<div class="cd-radial-slider-content">
						<div class="wrapper">
							<div class="w3ls-banner-text text-center">
								<div class="col-md-7 col-sm-7  col-xs-7 banner-left">
									<h3>Making some thing special</h3>
									<h4>candid</h4>
								</div>
								<div class="col-md-5 col-sm-5 col-xs-5 banner-right">
									<p>creating your most precious moments</p>
									<a href="#about" class="ban-btn button8 scroll">Learn More</a>
								</div>
							</div>
						</div>
					</div> <!-- .cd-radial-slider-content -->
				</li> 
			</ul> <!-- .cd-radial-slider --> 
			<ul class="cd-radial-slider-navigation">
				<li><a href="#0" class="next">Next</a></li>
				<li><a href="#0" class="prev">Prev</a></li>
			</ul> <!-- .cd-radial-slider-navigation -->
		</div> <!-- .cd-radial-slider-wrapper --> 
	</div>
	<!-- //banner --> 

	
	<!-- banner-bottom -->
	<%--评论--%>

	<!-- Clients -->
	<div id="about">
	<div class="clients-main w3layouts-section" id="clients">
		<h3 class="sec-title">what people
			<span>are saying?</span>
		</h3>

			<!-- Owl-Carousel -->
			<s:iterator value="allComment">

			<div style="width: 100%;height: 50px;padding: 10px 50px;background-color: #9bbaab;margin: 30px ">
				<h1><s:property value="content"></s:property></h1>

			</div>

			</s:iterator>

			<!--// Owl-Carousel -->

	</div>
	<!--// Clients -->
	</div>

	<!-- //banner-bottom -->
	





	
	
	
	
	
	
	
	<!-- js -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- //js -->
	<script src="js/snap.svg-min.js"></script>
	<script src="js/main.js"></script>
	<!-- Resource jQuery -->
	<script src="js/numscroller-1.0.js"></script>
	<script src="js/simple-lightbox.min.js"></script>
	<script>
		$(function () {
			var gallery = $('.gallery-row a').simpleLightbox({
				navText: ['&lsaquo;', '&rsaquo;']
			});
		});
	</script>
	<!-- Owl-Carousel-JavaScript -->
	<script src="js/owl.carousel.js"></script>
	<script>
		$(document).ready(function () {
			$("#owl-demo").owlCarousel({
				items: 2,
				lazyLoad: true,
				autoPlay: false,
				pagination: true,
			});
		});
	</script>
	<!-- //Owl-Carousel-JavaScript -->

	<!-- start-smooth-scrolling -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smooth-scrolling -->
	<!-- smooth-scrolling-of-move-up -->
	<script>
		$(document).ready(function () {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<!-- //smooth-scrolling-of-move-up -->
	<script src="js/SmoothScroll.min.js"></script>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/bootstrap.js"></script>
</body>

</html>
