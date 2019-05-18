<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

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

	<!-- 注册表单引入的样式 -->
	<style>
	body {
	margin:0;
	padding:0;
	background:url(images/banner.jpg) no-repeat;
	background-attachment:fixed;
	background-position:center;
	background-size:cover;
	-webkit-background-size:cover;
	-moz-background-size:cover;
	-o-background-size:cover;
	font-family: 'Muli', sans-serif;
	}
	.clear {
	clear:both;
	}
	/*-- AgileITS --*/
	h1 {
	text-align:center;
	font-size:45px;
	color:#fff;
	padding:50px 0;
	text-transform:uppercase;
	font-weight: 300;
	font-family: 'Nunito', sans-serif;
	}

	.log .content2 h2 {
	font-size:40px;
	padding: 30px 0 0;
	color:#fff;
	font-weight: 300;
	font-family: 'Nunito', sans-serif;
	text-align:center;
	}
	.log {
	width:75%;
	margin:0 auto;
	}




	.content2 {
	width:48%;
	text-align: center;
	background-color: rgba(0, 0, 0, 0.21);
	float:right;
	padding: 30px 0 70px;
	border-radius: 0px;
		margin-right: 302px;
		margin-bottom: 100px;
	}
	.content2 input[type="text"] {
	padding:10px 40px 10px 10px;
	width:70%;
	border:1px solid white;
	color:#fff;
	text-align:left;
	outline:none;
	font-size:18px;
	background:url(images/person.png) no-repeat 440px 10px;
	margin-top:5%;
	font-weight: 300;
	font-family: 'Muli', sans-serif;
	border-radius: 4px;
	}
	.content2 input[type="tel"] {
	padding:10px 40px 10px 10px;
	width:70%;
	border:1px solid white;
	color:#fff;
	text-align:left;
	outline:none;
	font-size:18px;
	background:url(images/phone.png) no-repeat 440px 10px;
	margin-top:4%;
	font-weight: 300;
	font-family: 'Muli', sans-serif;
	border-radius: 4px;
	}
	.content2 input[type="email"] {
	padding:10px 40px 10px 10px;
	width:70%;
	border:1px solid white;
	color:#fff;
	text-align:left;
	outline:none;
	font-size:18px;
	background:url(images/mail.png) no-repeat 440px 10px;
	margin-top:4%;
	font-family: 'Muli', sans-serif;
	border-radius: 4px;
	}
	.content2 input[type="password"] {
	padding:10px 40px 10px 10px;
	width:70%;
	border:1px solid white;
	color:#fff;
	text-align:left;
	outline:none;
	font-size:18px;
	background:url(images/lock.png) no-repeat 440px 10px;
	margin-top:4%;
	font-weight: 300;
	font-family: 'Muli', sans-serif;
	border-radius: 4px;
	}
	.register {
	padding:10px;
	background-color:#4C9A39;
	width:78%;
	border:none;
	cursor:pointer;
	color:#fff;
	font-weight: 300;
	font-family: 'Nunito', sans-serif;
	font-size:20px;
	margin-top:7%;
	text-transform:uppercase;
	border-radius:4px;
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
	}
	.register:hover {
	background-color:#376D29;
	color:white;
	}
	.footer {
	margin-top:3%;
	padding:50px 0;
	text-align:center;
	}


<%--//注册表单引入的样式--%>


<style>


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


	
	<!-- banner-bottom -->
	<!-- 注册表单 -->
	<h1>ZOOM Registe Form</h1>
	<div class="log">

		<div class="content2">
			<h2>Sign Up Form</h2>
            <s:form namespace="/" action="CustomerAction_registe" method="POST">
				<span style="font-size: 15px;color: red"><s:actionmessage></s:actionmessage></span>
                <s:textfield name="loginName"  value="LoginName" onfocus="this.value=''"  onblur="if (this.value == '') {this.value = 'LoginName';}"></s:textfield>
				<s:password name="loginPassword"  value="LoginPassword" onfocus="this.value=''" onblur="if (this.value == '') {this.value = 'LoginPassword';}"></s:password>
				<s:textfield name="email"  value="Email" onfocus="this.value=''"  onblur="if (this.value == '') {this.value = 'Email';}"></s:textfield>
				<s:textfield name="phone"  value="Phone" onfocus="this.value=''" onblur="if (this.value == '') {this.value = 'Phone';}"></s:textfield>
				<s:submit class="register" value="Register"></s:submit>
			</s:form>



		</div>
		<div class="clear"></div>
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
