<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html >

<head>
	<title>开通会员</title>
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
		.t{
			display: none;
		}
	</style>

</head>

<body>

<!-- banner -->
<div class="header" style="background-color:black;position: relative">
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
					<a href="/index.jsp">zoom</a>
				</h1>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav nav-center">
					<li>
						<a href="login.jsp" class="nav-hover active">Home</a>
					</li>
					<li>
						<a href="comment.jsp" >Comment</a>
					</li>


					<li>
						<a href="CustomerAction_UILogin" >ToPreserve</a>
					</li>
					<li>
						<a href="openmemb.jsp" >OpenVIP</a>
					</li>
					<li>
						<a href="MemberAction_UImymember" >myVIP</a>
					</li>
					<li>
						<a href="OrderAction_findByctmId" >myOrder</a>
					</li>

					<s:if test="%{#session.byName}==null">
						<li>
							<a href="login.jsp" >Login In</a>
						</li>
						<li>
							<a href="registe.jsp">Registe</a>
						</li>
					</s:if>
					<s:else>
						<li>
							<a href="index.jsp" >Exit</a>
						</li>
					</s:else>

					<li>
						<a href="#">hello!   ${sessionScope.byName.loginName}</a>
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

<!-- //banner -->


<div>
		<h2>会员介绍</h2>
		<pre>
		·································
		·
		···积分型：<br>
		每有效入住酒店一次，按所住客房价格的百分之十进行积分累计<br>
		每满100积分，便可参与大型抽奖互动，更可在会员日享受折扣价。<br>
		···储值型：<br>
		·单次充值1000元可在充值金额使用完之前享受住店98折<br>
		·单次充值2000元可在充值金额使用完之前享受住店96折<br>
		·单次充值3000元可在充值金额使用完之前享受住店94折<br>
		·单次充值4000元可在充值金额使用完之前享受住店92折<br>
		·单次充值5000元可在充值金额使用完之前享受住店90折<br>
		···································
			</pre>
	</div>

	<div>
		<h2>会员权利</h2>

		<pre>
		···································
		·积分型会员可参与抽奖
		·储值型会员可享受折扣
		·会员必须于入住及结帐前出示会员卡方可享受有关优惠。
		·会员凭卡入住时可免交押金，直接在卡中扣除此次消费款项，并且有权要求酒店打印消费明细
		·定期举办会员大抽奖活动（具体时间及奖项另行通知）。
		·不定期举办“会员联谊” 活动。
		·每逢会员的生日可获赠生日礼物一份（限储值型会员）。
		·可免费享受酒店推出的新业务试用（限储值型会员）
		·会员入住客房可延迟退房到下午 1：30（限储值型会员）。
		····································

			</pre>
	</div>

	<div>
		<h2>开通须知</h2>

		<pre>
		····································
		···当卡上余额不足 1000 元时必须立即充值， 否则将不能享受会员的所
		·所有权利。（一次性充值不得低于 1000 元）
		···当会员消费出现余额不足时，必须用现金缴纳差额部分，然后立即
		·办理充值手续。
		···会员必须爱护会员卡，如发现损坏，酒店有权要求会员进行赔偿。
		···若一经发现有仿制伪造者，将上报公安机关，直至追究其刑事责任
		···会员应自觉遵守和维护本章程。
		···本酒店有权在任何时候更改任何规定或终止活动。
		···凡违反本章程，误述有关情况，一经发现，我们将予以取消其会员格。
		···本酒店有权废除诠释本会员卡章程中的条款及相关程序，享有对任何情
		·况的决定权和解释权。
		·····································
			</pre>
	</div>

<div style="height: 300px;width: 500px;background-color: #8a6d3b;position: center;margin: 30px auto">
	<s:form action="MemberAction_openMem.action" method="post">
		<span id="s">
			<input  name="memtype" type="radio" value="1" onclick="show1()"/>积分型
			<input  name="memtype" type="radio" value="2" onclick="show()"/>储值型
			<input type="submit" height="30px" width="50px" value="确认开通">
		</span>
		<div id="t" class="t">
			<input  name="mon" type="radio" value="1000"/>1000<br>
			<input  name="mon" type="radio" value="2000"/>2000<br>
			<input  name="mon" type="radio" value="3000"/>3000<br>
			<input  name="mon" type="radio" value="4000"/>4000<br>
			<input  name="mon" type="radio" value="5000"/>5000<br>

<%--目前在这个页面不能 先开通积分型 ，再开通 储值型，因为外键不能重复，稍后进行容错处理--%>
		</div>

	</s:form>
</div>




<%--开通会员的js--%>
<script type="text/javascript">
	function show() {
		var t = document.getElementById("t");
		t.style.display = "block";
	}
</script>
<script type="text/javascript">
	function show1() {
		var t = document.getElementById("t");
		t.style.display = "none";
	}
</script>

<%--//开通会员的js--%>



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
				pagination: true
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