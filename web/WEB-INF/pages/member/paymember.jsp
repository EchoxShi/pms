<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html >
<title>
	开通会员
</title>
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
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo3.css" />
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style_common.css" />
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style7.css" />
   <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700,300|Annie+Use+Your+Telescope' rel='stylesheet' type='text/css'>
   <script type="text/javascript" src="${pageContext.request.contextPath}/js/modernizr.custom.79639.js"></script>
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.css" type="text/css" media="all" />
<!--// Owl-Carousel-CSS -->
<link href="${pageContext.request.contextPath}/css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="${pageContext.request.contextPath}/css/slider.css" type="text/css" rel="stylesheet" media="all">
<link href='${pageContext.request.contextPath}/css/simplelightbox.min.css' rel='stylesheet' type='text/css'>
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="${pageContext.request.contextPath}/css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->

<!-- web-fonts -->
<link href="http://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600,600i,700,700i" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
<!-- //web-fonts -->
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
						<a href="${pageContext.request.contextPath}/index.jsp" class="nav-hover active">Home</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/UIAction_comment_comment" >Comment</a>
					</li>


					<li>
						<a href="${pageContext.request.contextPath}/UIAction_orders_chooseDate" >ToPreserve</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/UIAction_member_openmemb" >OpenVIP</a>
					</li>
					<li>
						<a href="MemberAction_UImymember" >myVIP</a>
					</li>
					<li>
						<a href="OrderAction_findByctmId" >myOrder</a>
					</li>

					<s:if test="%{#session.byName}==null">
						<li>
							<a href="${pageContext.request.contextPath}/login.jsp" class="nav-hover activep" >Login In</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/registe.jsp" class="nav-hover active">Registe</a>
						</li>
					</s:if>
					<s:else>
						<li>
							<a href="${pageContext.request.contextPath}/CustomerAction_exit.action" >Exit</a>
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

<div class="container">			
<section class="main">
			
				<div class="mb-wrap mb-style-5">
					<div class="mb-thumb"></div>
					<blockquote cite="http://books.google.pt/books/about/Dirk_Gently_s_Holistic_Detective_Agency.html?id=35li46gjDx0C&redir_esc=y">
						<p>付款页面 
						<span> 
						您此次的充值金额为<s:property value="mon"></s:property>
						正在付款。。。。
						</span>
						</p>
					</blockquote>
					<div class="mb-attribution">
						<p class="mb-author">付款成功点此查看<s:a action="MemberAction_UImymember" >我的会员情况</s:a></p>
						<!-- <cite><a href="http://books.google.pt/books/about/Dirk_Gently_s_Holistic_Detective_Agency.html?id=35li46gjDx0C&redir_esc=y">Dirk Gently's Holistic Detective Agency</a></cite> -->
					</div>
				</div>
				
			</section>
			</div>

<%-- <h1>付款页面</h1>
<h1>您此次选择的充值金额是<s:property value="mon"></s:property></h1>
<h1>正在付款。。。。。。。。</h1>
<h1>付款成功，点此查看
	<s:a action="MemberAction_UImymember" >我的会员情况</s:a></h1>
 --%>
</body>
<!-- js -->
<script src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>
<!-- //js -->
<script src="${pageContext.request.contextPath}/js/snap.svg-min.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>
<!-- Resource jQuery -->
<script src="${pageContext.request.contextPath}/js/numscroller-1.0.js"></script>
<script src="${pageContext.request.contextPath}/js/simple-lightbox.min.js"></script>
<script>
	$(function () {
		var gallery = $('.gallery-row a').simpleLightbox({
			navText: ['&lsaquo;', '&rsaquo;']
		});
	});
</script>
<!-- Owl-Carousel-JavaScript -->
<script src="${pageContext.request.contextPath}/js/owl.carousel.js"></script>
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
<script src="${pageContext.request.contextPath}/js/move-top.js"></script>
<script src="${pageContext.request.contextPath}/js/easing.js"></script>
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
<script src="${pageContext.request.contextPath}/js/SmoothScroll.min.js"></script>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>

</html>