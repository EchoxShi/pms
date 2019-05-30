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
	<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main1.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/htmleaf-demo1.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style1.css">
	<script src="${pageContext.request.contextPath}/js/modernizr.js"></script> <!-- Modernizr -->
	
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

</head>

<body>

<!-- banner -->
			<div class="header" style="background-color:black;">
				<!-- header -->
				<nav class="navbar navbar-default">
					<div class="container" >
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
							    aria-expanded="false">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<h1 style="position:absolute;top:-110px;">
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
	



<!-- gallery -->
	<div id="gallery" class="gallery w3layouts-section">
		<h3 class="sec-title">a collection of
			<span> Quality</span>
		</h3>
		<div class="gallery-row">
			<div class="col-md-3 col-sm-3 col-xs-6 w3- gallery-grids">
				<a href="${pageContext.request.contextPath}/images/img66.jpg" class="imghvr-hinge-right figure">

					<img src="${pageContext.request.contextPath}/images/img66.jpg" alt="" title="Zoom Image" />

					<div class="figcaption">
						<h4>Zoom</h4>
						<p>宽敞 舒适 大床房</p>
					</div>
				</a>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-6 w3- gallery-grids">
				<a href="${pageContext.request.contextPath}/images/img55.jpg" class="imghvr-hinge-right figure">
					<img src="${pageContext.request.contextPath}/images/img55.jpg" alt="" title="Zoom Image" />
					<div class="figcaption">
						<h4>Zoom</h4>
						<p>静谧 温馨 单人间</p>
					</div>
				</a>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-6 w3- gallery-grids">
				<a href="${pageContext.request.contextPath}/images/img77.jpg" class="imghvr-hinge-right figure">
					<img src="${pageContext.request.contextPath}/images/img77.jpg" alt="" title="Zoom Image" />
					<div class="figcaption">
						<h4>Zoom</h4>
						<p>豪华 大气  套房</p>
					</div>
				</a>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-6 w3- gallery-grids">
				<a href="${pageContext.request.contextPath}/images/img88.jpg" class="imghvr-hinge-right figure">
					<img src="${pageContext.request.contextPath}/images/img88.jpg" alt="" title="Zoom Image" />
					<div class="figcaption">
						<h4>Zoom</h4>
						<p>舒适 洁净 三人间</p>
					</div>
				</a>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-6 w3- gallery-grids">
				<a href="${pageContext.request.contextPath}/images/img11.jpg" class="imghvr-hinge-right figure">
					<img src="${pageContext.request.contextPath}/images/img11.jpg" alt="" title="Zoom Image" />
					<div class="figcaption">
						<h4>Zoom</h4>
						<p> 温馨 优雅 情侣房</p>
					</div>
				</a>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-6 w3- gallery-grids">
				<a href="${pageContext.request.contextPath}/images/img22.jpg" class="imghvr-hinge-right figure">
					<img src="${pageContext.request.contextPath}/images/img22.jpg" alt="" title="Zoom Image" />
					<div class="figcaption">
						<h4>Zoom</h4>
						<p>精致 安静 商务间 </p>
					</div>
				</a>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-6 w3- gallery-grids">
				<a href="${pageContext.request.contextPath}/images/img33.jpg" class="imghvr-hinge-right figure">
					<img src="${pageContext.request.contextPath}/images/img33.jpg" alt="" title="Zoom Image" />
					<div class="figcaption">
						<h4>Zoom</h4>
						<p>宽敞 整洁 四人间</p>
					</div>
				</a>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-6 w3- gallery-grids">
				<a href="${pageContext.request.contextPath}/images/img44.jpg" class="imghvr-hinge-right figure">
					<img src="${pageContext.request.contextPath}/images/img44.jpg" alt="" title="Zoom Image" />
					<div class="figcaption">
						<h4>Zoom</h4>
						<p>干净 舒服 标准间</p>
					</div>
				</a>
			</div>
			<div >
				<a href="#list"><img src="${pageContext.request.contextPath}/images/lear.png">
				</a>
			</div>

			<div class="clearfix"> </div>

		</div>
	</div>
	<!-- //gallery -->

<div id="list" style="width: 100%;height: auto;/* background: url('images/bggg.jpg') no-repeat; */">

<div id="roomtypelistbar" style=" background-color: #000000;">   <!-- 房间类型展示栏 -->
	<%--房间类型列表--%>

	<s:iterator value="roomTypeList" >
		<div id="rt" style="display: inline;border: double white;font-family: '微软雅黑 Light';font-size: 8mm;padding:0px 30px;">
		<s:a action="RoomAction_findById">
			<s:param  name="roomType.roomTypeId" value="%{roomTypeId}"></s:param>
			<font color="#eead31"><s:property value="roomTypeName"></s:property></font>
		</s:a>
		</div>

	</s:iterator>

		<%--//房间类型列表--%>

</div>
	<%--房间列表--%>
<%-- <section class="cd-intro">
		
	</section> <!-- .cd-intro --> --%>

	<section class="cd-products-comparison-table">
		

		<div class="cd-products-table">
			<div class="features">
				<div class="top-info">房间</div>
				<ul class="cd-features-list">
					<li>房间号</li>
					<li>房间名</li>
					<li>价格</li>
					<li>预订</li>
				</ul>
			</div> <!-- .features -->
			
			<%-- <s:iterator value="roomList"> --%>
			   <s:a action="RoomAction_findRoomById" >
			      <div class="cd-products-wrapper top-fixed" style=" overflow-x: auto;">
				<ul class="cd-products-columns">
				   <s:iterator value="roomList">
					<li class="product">
					      
						<div class="top-info">
							<!-- <div class="check"></div> -->
							<!-- <img src="img/product.png" alt="product image"> -->
							<img src="<s:property value='picPath'/>" alt="" title="Zoom Image" style="width:310px;height: 200px;" />
						</div> <!-- .top-info -->

						<ul class="cd-features-list">
							<li><s:property value="roomNum"></s:property></li>
							<li class="rate"><s:property  value="roomName"></s:property></li>
							<li><s:property  value="pricePerNight"></s:property></li>
						        <li> <a href="${pageContext.servletContext.contextPath}/UIAction_orders_chooseDate">去预定</a></li>
						</ul>
					</li> <!-- .product -->
					</s:iterator>
			   </ul>
			</div>
			
			
			
			  </s:a>
			<%-- </s:iterator> --%>
			
			<%-- <div class="cd-products-wrapper top-fixed" style=" overflow-x: auto;">
				<ul class="cd-products-columns">
					<li class="product">
						<div class="top-info">
							<div class="check"></div>
							<img src="img/product.png" alt="product image">
							<h3>Sumsung Series 6 J6300</h3>
						</div> <!-- .top-info -->

						<ul class="cd-features-list">
							<li>$600</li>
							<li class="rate"><span>5/5</span></li>
							<li>1080p</li>
							<li>LED</li>
							<li>47.6 inches</li>
							<li>800Hz</li>
							<li>2015</li>
							<li>mpeg4</li>
							<li>1 Side</li>
							<li>3 Port</li>
							<li>1 Rear</li>
						</ul>
					</li> <!-- .product -->

					<li class="product">
						<div class="top-info">
							<div class="check"></div>
							<img src="img/product.png" alt="product image">
							<h3>Sumsung Series 6 J6300</h3>
						</div> <!-- .top-info -->

						<ul class="cd-features-list">
							<li>$600</li>
							<li class="rate"><span>5/5</span></li>
							<li>1080p</li>
							<li>LED</li>
							<li>47.6 inches</li>
							<li>800Hz</li>
							<li>2015</li>
							<li>mpeg4</li>
							<li>1 Side</li>
							<li>3 Port</li>
							<li>1 Rear</li>
						</ul>
					</li> <!-- .product -->

					<li class="product">
						<div class="top-info">
							<div class="check"></div>
							<img src="img/product.png" alt="product image">
							<h3>Sumsung Series 6 J6300</h3>
						</div> <!-- .top-info -->

						<ul class="cd-features-list">
							<li>$600</li>
							<li class="rate"><span>5/5</span></li>
							<li>1080p</li>
							<li>LED</li>
							<li>47.6 inches</li>
							<li>800Hz</li>
							<li>2015</li>
							<li>mpeg4</li>
							<li>1 Side</li>
							<li>3 Port</li>
							<li>1 Rear</li>
						</ul>
					</li> <!-- .product -->

					<li class="product">
						<div class="top-info">
							<div class="check"></div>
							<img src="img/product.png" alt="product image">
							<h3>Sumsung Series 6 J6300</h3>
						</div> <!-- .top-info -->

						<ul class="cd-features-list">
							<li>$600</li>
							<li class="rate"><span>5/5</span></li>
							<li>1080p</li>
							<li>LED</li>
							<li>47.6 inches</li>
							<li>800Hz</li>
							<li>2015</li>
							<li>mpeg4</li>
							<li>1 Side</li>
							<li>3 Port</li>
							<li>1 Rear</li>
						</ul>
					</li> <!-- .product -->

					<li class="product">
						<div class="top-info">
							<div class="check"></div>
							<img src="img/product.png" alt="product image">
							<h3>Sumsung Series 6 J6300</h3>
						</div> <!-- .top-info -->

						<ul class="cd-features-list">
							<li>$600</li>
							<li class="rate"><span>5/5</span></li>
							<li>1080p</li>
							<li>LED</li>
							<li>47.6 inches</li>
							<li>800Hz</li>
							<li>2015</li>
							<li>mpeg4</li>
							<li>1 Side</li>
							<li>3 Port</li>
							<li>1 Rear</li>
						</ul>
					</li> <!-- .product -->

					<li class="product">
						<div class="top-info">
							<div class="check"></div>
							<img src="img/product.png" alt="product image">
							<h3>Sumsung Series 6 J6300</h3>
						</div> <!-- .top-info -->

						<ul class="cd-features-list">
							<li>$600</li>
							<li class="rate"><span>5/5</span></li>
							<li>1080p</li>
							<li>LED</li>
							<li>47.6 inches</li>
							<li>800Hz</li>
							<li>2015</li>
							<li>mpeg4</li>
							<li>1 Side</li>
							<li>3 Port</li>
							<li>1 Rear</li>
						</ul>
					</li> <!-- .product -->

					<li class="product">
						<div class="top-info">
							<div class="check"></div>
							<img src="img/product.png" alt="product image">
							<h3>Sumsung Series 6 J6300</h3>
						</div> <!-- .top-info -->

						<ul class="cd-features-list">
							<li>$600</li>
							<li class="rate"><span>5/5</span></li>
							<li>1080p</li>
							<li>LED</li>
							<li>47.6 inches</li>
							<li>800Hz</li>
							<li>2015</li>
							<li>mpeg4</li>
							<li>1 Side</li>
							<li>3 Port</li>
							<li>1 Rear</li>
						</ul>
					</li> <!-- .product -->

					<li class="product">
						<div class="top-info">
							<div class="check"></div>
							<img src="img/product.png" alt="product image">
							<h3>Sumsung Series 6 J6300</h3>
						</div> <!-- .top-info -->

						<ul class="cd-features-list">
							<li>$600</li>
							<li class="rate"><span>5/5</span></li>
							<li>1080p</li>
							<li>LED</li>
							<li>47.6 inches</li>
							<li>800Hz</li>
							<li>2015</li>
							<li>mpeg4</li>
							<li>1 Side</li>
							<li>3 Port</li>
							<li>1 Rear</li>
						</ul>
					</li> <!-- .product -->
				</ul> <!-- .cd-products-columns -->
			</div>  --%><!-- .cd-products-wrapper -->
			
			<!-- <ul class="cd-table-navigation">
				
				
			</ul> -->
		</div> <!-- .cd-products-table -->
	</section> <!-- .cd-products-comparison-table -->
	</div>



<%-- 
	<s:iterator value="roomList">
		<div id="rmt"
			 style="display:inline;width:400px;font-size:5mm;padding: 15px ;margin:1px;">

			<s:a action="RoomAction_findRoomById" >
		<!-- 显示图片 --><img src="<s:property value='picPath'/>" style="width: 313px;height: 210px;">
			      <div class="2col-md-3 2col-sm-3 2col-xs-6 w3- gallery-grids" style="position:static;width:400px;">
				<a href="<s:property value='picPath'/>" class="imghvr-hinge-right figure">

					<img src="<s:property value='picPath'/>" alt="" title="Zoom Image" style="width:310px;height: 200px;" />
 
					<div class="figcaption">
						<p><s:property  value="roomName"></s:property></p>
					</div> 
				</a>
				房间号：<s:property value="roomNum"></s:property><br>
			房间名：<s:property  value="roomName"></s:property><br>
			<font color="red">价  格：<s:property  value="pricePerNight"></s:property><br></font>
			</div>
			
				<s:param name="roomId" value="%{roomId}"></s:param>
			</s:a>
			房间号：<s:property value="roomNum"></s:property><br>
			房间名：<s:property  value="roomName"></s:property><br>
			<font color="red">价  格：<s:property  value="pricePerNight"></s:property><br></font>
	
			状   态：<s:if test="status==1">
			&lt;%&ndash;status=1 可预订，status= 0，已定出&ndash;%&gt;
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
	</s:iterator> --%>
	<%-- <div style="width: 80px;height: 60px;background-color: black;color: #EEAD31;;font-size: 10mm;margin-bottom: 10px;padding: 20px"><a href="${pageContext.servletContext.contextPath}/chooseDate.jsp">去预定</a> --%>
	
	<%--//房间列表--%>

</div>














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



</body>

</html>