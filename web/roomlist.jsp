<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html >

<head>
	<title>roomlist</title>
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

</head>

<body>

<!-- banner -->
			<div class="header" style="background-color:black">
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
	



<!-- gallery -->
	<div id="gallery" class="gallery w3layouts-section">
		<h3 class="sec-title">a collection of
			<span> Quality</span>
		</h3>
		<div class="gallery-row">
			<div class="col-md-3 col-sm-3 col-xs-6 w3- gallery-grids">
				<a href="images/img66.jpg" class="imghvr-hinge-right figure">

					<img src="images/img66.jpg" alt="" title="Zoom Image" />

					<div class="figcaption">
						<h4>Zoom</h4>
						<p>宽敞 舒适 大床房</p>
					</div>
				</a>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-6 w3- gallery-grids">
				<a href="images/img55.jpg" class="imghvr-hinge-right figure">
					<img src="images/img55.jpg" alt="" title="Zoom Image" />
					<div class="figcaption">
						<h4>Zoom</h4>
						<p>静谧 温馨 单人间</p>
					</div>
				</a>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-6 w3- gallery-grids">
				<a href="images/img77.jpg" class="imghvr-hinge-right figure">
					<img src="images/img77.jpg" alt="" title="Zoom Image" />
					<div class="figcaption">
						<h4>Zoom</h4>
						<p>豪华 大气  套房</p>
					</div>
				</a>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-6 w3- gallery-grids">
				<a href="images/img88.jpg" class="imghvr-hinge-right figure">
					<img src="images/img88.jpg" alt="" title="Zoom Image" />
					<div class="figcaption">
						<h4>Zoom</h4>
						<p>舒适 洁净 三人间</p>
					</div>
				</a>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-6 w3- gallery-grids">
				<a href="images/img11.jpg" class="imghvr-hinge-right figure">
					<img src="images/img11.jpg" alt="" title="Zoom Image" />
					<div class="figcaption">
						<h4>Zoom</h4>
						<p> 温馨 优雅 情侣房</p>
					</div>
				</a>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-6 w3- gallery-grids">
				<a href="images/img22.jpg" class="imghvr-hinge-right figure">
					<img src="images/img22.jpg" alt="" title="Zoom Image" />
					<div class="figcaption">
						<h4>Zoom</h4>
						<p>精致 安静 商务间 </p>
					</div>
				</a>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-6 w3- gallery-grids">
				<a href="images/img33.jpg" class="imghvr-hinge-right figure">
					<img src="images/img33.jpg" alt="" title="Zoom Image" />
					<div class="figcaption">
						<h4>Zoom</h4>
						<p>宽敞 整洁 四人间</p>
					</div>
				</a>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-6 w3- gallery-grids">
				<a href="images/img44.jpg" class="imghvr-hinge-right figure">
					<img src="images/img44.jpg" alt="" title="Zoom Image" />
					<div class="figcaption">
						<h4>Zoom</h4>
						<p>干净 舒服 标准间</p>
					</div>
				</a>
			</div>
			<div >
				<a href="#list"><img src="images/lear.png">
				</a>
			</div>

			<div class="clearfix"> </div>

		</div>
	</div>
	<!-- //gallery -->

<div id="searchCondition" >
查询条件：入住时间：<input type="date" name="searchDayIn">退房时间<input type="date" name="searchDayOut">
</div>
<div id="list" style="width: 100%;height: auto;background: url('images/bggg.jpg') no-repeat;opacity: 0.5">

<div id="roomtypelistbar" style=" background-color: #3d3d3d;">
	<%--房间类型列表--%>

	<s:iterator value="roomTypeList" >
		<div id="rt" style="display: inline;border: double white;font-family: '微软雅黑 Light';font-size: 15mm;padding:0px 30px;">
		<s:a action="RoomAction_findById">
			<s:param  name="roomType.roomTypeId" value="%{roomTypeId}"></s:param>
			<s:property value="roomTypeName"></s:property>
		</s:a>
		</div>

	</s:iterator>

		<%--//房间类型列表--%>

</div>
	<%--房间列表--%>

	<s:iterator value="roomList">
		<div id="rmt"
			 style="display:inline;width:200px;font-size: 10mm;padding: 15px ;">

			<s:a action="RoomAction_findRoomById" >
				图片
				<s:param name="roomId" value="%{roomId}"></s:param>
			</s:a>
			房间号：<s:property value="roomNum"></s:property><br>
			房间名：<s:property  value="roomName"></s:property><br>
			价  格：<s:property  value="pricePerNight"></s:property><br>
			状   态：<s:if test="status==1">
			<%--status=1 可预订，status= 0，已定出--%>
			<s:a action="RoomAction_findRoomById" >
				<font style="font-size:25px;color: red; background-color: whitesmoke ">可预订</font>
				<s:param name="roomId" value="%{roomId}"></s:param>
			</s:a>
		</s:if>
			<s:elseif test="status==0">
				<s:a action="RoomAction_findRoomById" >

					<font style="font-size:25px;color: goldenrod;
					background-color: whitesmoke ">已定出</font>

					<s:param name="roomId" value="%{roomId}"></s:param>
				</s:a>
			</s:elseif>


			<br>
		</div>
	</s:iterator>
	<%--//房间列表--%>

</div>














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