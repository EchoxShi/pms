<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html >

<head>
    <title>allRooms</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
    <meta name="format-detection" content="telephone=no, email=no, date=no, address=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="format-detection" content="telephone=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" /> -->
    <link href="${pageContext.servletContext.contextPath}/admin/css/bksystem.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.servletContext.contextPath}/admin/font/iconfont.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.servletContext.contextPath}/admin/css/module.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.servletContext.contextPath}/admin/css/pages.css" rel="stylesheet" type="text/css" />

    <script src="${pageContext.servletContext.contextPath}/admin/js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.servletContext.contextPath}/admin/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="${pageContext.servletContext.contextPath}/admin/js/HUpages.js" type="text/javascript"></script>
    <script src="${pageContext.servletContext.contextPath}/admin/js/common.js" type="text/javascript"></script>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Custom Theme files -->
	<!-- <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all"> -->
	<!-- <link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all" />  -->
	<link href="${pageContext.servletContext.contextPath}/css/nav.css" type="text/css" rel="stylesheet" media="all">
	<!--// Owl-Carousel-CSS -->
	<!-- <link href="css/style.css" type="text/css" rel="stylesheet" media="all"> -->
	<!-- <link href="css/slider.css" type="text/css" rel="stylesheet" media="all">
	<link href='css/simplelightbox.min.css' rel='stylesheet' type='text/css'>
	//Custom Theme files
	font-awesome icons
	<link href="css/font-awesome.css" rel="stylesheet">
	//font-awesome icons -->

	<!-- web-fonts -->
	<link href="http://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600,600i,700,700i" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
	<!-- //web-fonts -->
	 <style>
     .sign-in {
		padding:5px;
		background-color:#ff9a14;
		/* width:15%; */
		border:none;
		cursor:pointer;
		color:#fff;
		font-weight: 300;
		font-family: 'Nunito', sans-serif;
		font-size:16px;
	/* 	margin-left:62px; 
		float:left; */
		text-transform:uppercase;
		border-radius:4px;
		transition: all 0.5s ease-in-out;
		-webkit-transition: all 0.5s ease-in-out;
		-moz-transition: all 0.5s ease-in-out;
		-o-transition: all 0.5s ease-in-out;
	}
	.sign-in:hover {
		background-color:#FF4500;
		color:#fff;
	}
	.reset {
		padding:5px;
		background-color:#EAEAEA;
		/* width:15%; */
		border:none;
		cursor:pointer;
		color:#fff;
		font-weight: 300;
		font-family: 'Nunito', sans-serif;
		font-size:16px;
	/* 	margin-left:62px; 
		float:left; */
		text-transform:uppercase;
		border-radius:4px;
		transition: all 0.5s ease-in-out;
		-webkit-transition: all 0.5s ease-in-out;
		-moz-transition: all 0.5s ease-in-out;
		-o-transition: all 0.5s ease-in-out;
	}
          </style>
</head>

<body style=" /* background-color:#EAEAEA; */ background-attachment:fixed;background-position:center;background-size:cover;">
<!-- banner -->
			<%-- <div class="header" style="background-color:black;position: relative">
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
									<a href="chooseDate.jsp" >ToPreserve</a>
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
			 --%>
	<!-- //banner --> 
	<div class="nav">
	<img src="${pageContext.servletContext.contextPath}/images/zoom.png" style="position:absolute;left:100px;top:20px;">
          <div class="one1">
			
			<ul class="one1_ul">
			      
				 <li>
					<a href="">房型</a>
					<ul class="Home_ul">
		                  <li>
		           
		                    <s:iterator value="roomTypeList" >
		                 <div id="rt" style="display:block;font-family: '微软雅黑 Light';font-size: 5mm;">
		               <s:a action="RoomAction_findAllOrderOrNotByRoomType">
		              	<s:param  name="roomType.roomTypeId" value="%{roomTypeId}"></s:param>
			        <s:property value="roomTypeName"></s:property>
		                </s:a>
		              </div>

	                </s:iterator>
		        </li>

				</ul>
				</li>
				
				<li>
				</li>
				<li>
					<a href="">位置交通</a>
					
				</li>
				<li>
				</li>
				<li>
				<a href="">酒店详情</a>
				
				</li>
				<li>
			       </li>
			    <li>
			<a href="">酒店设施</a>
		          </li>
						
		</div>

</div>



<%--<div id="searchCondition" >
	<s:form action="RoomAction_findAll">
查询条件：入住时间：<input type="date" name="searchDayIn">退房时间<input type="date" name="searchDayOut">
		<s:submit value="在全部房间中搜索"></s:submit>
	</s:form>
</div>--%>
<div id="list" style="width: 100%;height: auto;/* background: url('images/bggg.jpg') no-repeat; */">

<%-- <div id="roomtypelistbar" style=" background-color: #3d3d3d;">
	房间类型列表

	<s:iterator value="roomTypeList" >
		<div id="rt" style="display: inline;border: double white;font-family: '微软雅黑 Light';font-size: 15mm;padding:0px 30px;">
		<s:a action="RoomAction_findAllOrderOrNotByRoomType">
			<s:param  name="roomType.roomTypeId" value="%{roomTypeId}"></s:param>
			<s:property value="roomTypeName"></s:property>
		</s:a>
		</div>

	</s:iterator>

		//房间类型列表

</div> --%>
 <!--列表内容-->
           <div class="page_content clearfix mb15 table-module ">
           	<table class="gallery table table_list table_striped table-bordered " id="">
           		<thead>
		        <tr>
				<%-- <th ><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th> --%>
				<th >房间号</th>
				<th width="130">图片</th>

				<th >房间名</th>
					<th >房间类型</th>

					<th >描述</th>
					<th >价格（元/晚）</th>
					<th >状态</th>
		       </tr>
		       </thead>
		       <tbody>
			   <s:iterator value="roomList" >
			   <s:a action="RoomAction_findRoomById" >
				<%-- <img src="<s:property value='picPath'/>" style="width: 313px;height: 210px;"> --%>
				<s:param name="roomId" value="%{roomId}"></s:param>
			</s:a>
           		<tr>
           		<%-- <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td> --%>
           		<td><s:property value="roomNum"></s:property></td>
           		<td><a href="${pageContext.servletContext.contextPath}/<s:property value='picPath'></s:property>" class="zoomimg"><img src="${pageContext.servletContext.contextPath}/<s:property value='picPath'></s:property>"  width="100%" height="100%"/></a></td>
           		<td><s:property value="roomName"></s:property></td>
					<td><s:property value="roomType.roomTypeName"></s:property></td>

					<td><s:property value="remark"></s:property></td>
           		<td><s:property value="pricePerNight"></s:property></td>
				<!-- 状态 -->	<td>
			<s:if test="status==1">
			  <!--  status=1 可预订，status= 0，已定出 -->
			<s:a action="RoomAction_findRoomById" >
				<!-- <font style="font-size:25px;color: red; background-color: whitesmoke ">可预订</font> -->
				<s:submit class="sign-in" value="可预订"></s:submit>
				<s:param name="roomId" value="%{roomId}"></s:param>
			</s:a>
		        </s:if>
			<s:elseif test="status==0">
			<s:a action="RoomAction_findRoomById">

					<!-- <font style="font-size:25px;color: goldenrod;
					background-color: whitesmoke ">已定出</font> -->
                                       <s:submit class="reset" value="已定出" onclick=""></s:submit>
                                    <!--    <input type="button" value="已定出"> -->
					<s:param name="roomId" value="%{roomId}"></s:param>
				</s:a>
			</s:elseif>

					</td>

				</tr>
			   </s:iterator>
			   </tbody>
	     </table>
</div> 
</div>
			
	<%--房间列表--%>

	 <%-- <s:iterator value="roomList">
		<div id="rmt"
			 style="display:inline;width:200px;font-size: 10mm;padding: 15px ;">

			<s:a action="RoomAction_findRoomById" >
				<img src="<s:property value='picPath'/>" style="width: 313px;height: 210px;">
				<s:param name="roomId" value="%{roomId}"></s:param>
			</s:a>
			房间号：<s:property value="roomNum"></s:property><br>
			房间名：<s:property  value="roomName"></s:property><br>
			价  格：<s:property  value="pricePerNight"></s:property><br>
			状   态：<s:if test="status==1">
			status=1 可预订，status= 0，已定出
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
	<%-- <a href="${pageContext.servletContext.contextPath}/chooseDate.jsp">去预定</a>  --%>
	<%--//房间列表--%>















<!-- js -->
	<script src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>
	<!-- //js -->
	<script src="${pageContext.request.contextPath}/js/snap.svg-min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>
	<!-- Resource jQuery -->
	<script src="${pageContext.request.contextPath}/js/numscroller-1.0.js"></script>
	<%--<script src="${pageContext.request.contextPath}/js/simple-lightbox.min.js"></script>--%>
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