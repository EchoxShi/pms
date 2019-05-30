<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html >
<head>
	<title>
		查看订单
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
		<link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<link href="http://cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/htmleaf-demo.css">
	
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
	<style>
		.demo{
			height: 400px;
			min-height: 400px;
		}
		.pad-15{
		    padding: 15px 0;
		}
		.btn{
		    color: #fff;
		    text-transform: uppercase;
		    border-radius: 0;
		    padding-left: 60px;
		    position: relative;
		    transform: translateZ(0px);
		    transition: all 0.5s ease 0s;
		}
		.btn:after{
		    content: "";
		    position: absolute;
		    top: 0;
		    left: 0;
		    bottom: 0;
		    right: 0;
		    background: #fff;
		    z-index: -1;
		    transform: scaleX(0);
		    transform-origin: 100% 50% 0;
		    transition: all 0.5s ease-out 0s;
		}
		.btn:hover:after{
		    transform: scaleX(1);
		    transition-timing-function: cubic-bezier(0.52, 1.64, 0.37, 0.66);
		}
		.btn span{
		    width: 40px;
		    height: 100%;
		    line-height: 40px;
		    background: #fff;
		    position: absolute;
		    top: 0;
		    left: 0;
		    transition: all 0.3s linear 0s;
		}
		.btn span:after{
		    content: "";
		    display: block;
		    width: 10px;
		    height: 10px;
		    background: #fff;
		    margin: auto 0;
		    position: absolute;
		    top: 0;
		    right: -6px;
		    bottom: 0;
		    transform: rotate(45deg);
		    transition: all 0.3s linear 0s;
		}
		.btn.btn-sm{
		    padding-left: 40px;
		}
		.btn.btn-sm span{
		    width: 27px;
		    line-height: 27px;
		}
		.btn.btn-sm span:after{
		    width: 8px;
		    height: 8px;
		    right: -5px;
		}
		.btn.btn-xs{
		    padding-left: 30px;
		}
		.btn.btn-xs span{
		    width: 20px;
		    line-height: 20px;
		}
		.btn.btn-xs span:after{
		    width: 7px;
		    height: 7px;
		    right: -4px;
		}
		.btn.red{
		    border: 1px solid #fe6d6d;
		    background: #fe6d6d;
		}
		.btn.red:hover,
		.btn.red span{
		    color: #fe6d6d;
		}
		.btn.red:hover span,
		.btn.red:hover span:after{
		    background: #fe6d6d;
		}
		.btn.blue{
		    border: 1px solid #3bb4e5;
		    background: #3bb4e5;
		}
		.btn.blue:hover,
		.btn.blue span{
		    color: #3bb4e5;
		}
		.btn.blue:hover span,
		.btn.blue:hover span:after{
		    background: #3bb4e5;
		}
		.btn.orange{
		    border: 1px solid #ee955b;
		    background: #ee955b;
		}
		.btn.orange:hover,
		.btn.orange span{
		    color: #ee955b;
		}
		.btn.orange:hover span,
		.btn.orange:hover span:after{
		    background: #ee955b;
		}
		.btn.green{
		    border: 1px solid #79d799;
		    background: #79d799;
		}
		.btn.green:hover,
		.btn.green span{
		    color: #79d799;
		}
		.btn.green:hover span,
		.btn.green:hover span:after{
		    background: #79d799;
		}
		.btn:hover span{
		    color: #fff;
		}
		@media only screen and (max-width: 767px){
		    .btn{ margin-bottom: 20px; }
		}
	
	   td{
	      text-align:center;
	   }
	   .thead{
	       text-align:center;
	   }
	   .y{
	     width:20px;
	   }
	   th{
	   text-align:center;
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
							<a href="${pageContext.request.contextPath}/index.jsp" >Exit</a>
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
 <div id="list" style="width: 100%;height: auto;font-family:'Muli', sans-serif;">


 <!--列表内容-->
           <div class="page_content clearfix mb15 table-module ">
           	<table class="gallery table table_list table_striped table-bordered " id="">
           		<thead>
		        <tr>
				<%-- <th ><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th> --%>
				<th >订单号</th>
				<th >房间号</th>

				<th >房间名</th>
					<th >价格（元/晚）</th>

					<th >入住时间</th>
					<th >退房时间</th>
					<th >总价</th>
					<th >订单状态</th>
					<th width="260px">操作</th>
		       </tr>
		       </thead>
		       <tbody style="background-color:white">
			   <s:iterator value="byctmId" >
			   <tr>
			   <td><s:property value="oid"></s:property></td>
				<td><s:property value="room.roomNum"></s:property></td>
				<td><s:property value="room.roomName"></s:property></td>
				<td><s:property value="room.pricePerNight"></s:property></td>
				<td>
					<s:date name="dayin" format="yyyy-MM-dd" var="dayin"></s:date>
					<s:property value="%{#dayin}"></s:property></td>
					<td>
					<s:date name="dayout" format="yyyy-MM-dd" var="dayout"></s:date>
					<s:property value="%{#dayout}"></s:property></td>
					<td><s:property value="mony" ></s:property></td>
					<td>
					<s:if test="over==1">
						已完成
					</s:if><s:elseif test="over==0">
					<s:if test="payStatus==1">
						已付款
					</s:if><s:elseif test="payStatus==0">
						未付款
							</s:elseif>
				</s:elseif>
				</td>
				<td>
					<s:if test="over==1">
						<div class="col-sm-3">
		                    <a href="#" class="btn btn-sm red">
		                        <span class="fa fa-home"></span>不可操作
		                    </a>
		                </div>

					</s:if><s:elseif test="over==0">

					<s:if test="payStatus==1">
					<div class="col-sm-3">
					<s:a action="OrderAction_cancelOrder" class="btn btn-sm green">
		                        <span class="fa fa-home"></span>取消订单
		                        <s:param name="oid" value="%{oid}"></s:param>
		                        </div>
		                        </s:a>
				       <%--  <div class="col-sm-3">
					<s:a action="OrderAction_cancelOrder" class="btn btn-sm orange">
		                        <span class="fa fa-home"></span>取消订单
		                        <s:param name="oid" value="%{oid}"></s:param>
		                        </div>
					</s:a> --%>
						<%-- <s:a action="OrderAction_check">
							退房
							<s:param name="oid" value="%{oid}"></s:param>
						</s:a> --%>
		
					<div class="col-sm-3">
					<s:a action="OrderAction_check" class="btn btn-sm blue" style="position:relative;left:40px;">
		                        <span class="fa fa-home"></span>退房
		                        <s:param name="oid" value="%{oid}"></s:param>
		                        </div>
					</s:a>
					</s:if>
					<s:elseif test="payStatus==0">
					
					<div class="col-sm-3">
					<s:a action="OrderAction_pay" class="btn btn-sm orange">
		                        <span class="fa fa-home"></span>去付款
		                        <s:param name="oid" value="%{oid}"></s:param>
		                        </div>
		                        </s:a>
					<%-- </s:a>
					<s:a action="OrderAction_pay" class="btn btn-sm orange">
					
					<div class="col-sm-3">
		                  <!--   <a href="#" class="btn btn-sm orange"> -->
		                        <span class="fa fa-home"></span>去付款
		                        <s:param name="oid" value="%{oid}"></s:param> --%>
		                  <!--   </a> -->
		               <!--  </div> -->
					
						<!-- <img src="icons/cart.png"> -->
						<%-- <s:param name="oid" value="%{oid}"></s:param> --%>
						<!-- 去付款 -->
					
					

				</s:elseif>
				</s:elseif>

				</td>
				<td>
					<s:a action="OrderAction_check">

						<s:param name="oid" value="%{oid}"></s:param>

					</s:a>

				</td>
				</tr>
		</s:iterator>
	</table>
	</div>
	</div>
					<!-- ========= -->
			 <%--   <s:a action="RoomAction_findRoomById" >
				<img src="<s:property value='picPath'/>" style="width: 313px;height: 210px;">
				<s:param name="roomId" value="%{roomId}"></s:param>
			</s:a>
           		<tr>
           		<td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
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
</div> --%>
<!-- 提交完订单，来到这个页面，可查看自己的订单，订单状态有 已付款，未付款
可操作有 去付款，取消订单 -->
<%-- <s:form>
	<table border="1" style="width: 1200px;height: 20px;position: center">
		<tr>
			<td>订单号</td><td>房间号</td><td>房间名</td><td>每晚价格</td><td>入住时间</td>
			<td>退房时间</td><td>总价</td><td>订单状态</td><td>操作</td>
		</tr>
		<s:iterator value="byctmId">
			<tr>
				<td><s:property value="oid"></s:property></td>
				<td><s:property value="room.roomNum"></s:property></td>
				<td><s:property value="room.roomName"></s:property></td>
				<td><s:property value="room.pricePerNight"></s:property></td>
				<td>
					<s:date name="dayin" format="yyyy-MM-dd" var="dayin"></s:date>
					<s:property value="%{#dayin}"></s:property></td>
				<td>
					<s:date name="dayout" format="yyyy-MM-dd" var="dayout"></s:date>
					<s:property value="%{#dayout}"></s:property></td>
				<td><s:property value="mony" ></s:property></td>
				<td>
					<s:if test="over==1">
						已完成
					</s:if><s:elseif test="over==0">
					<s:if test="payStatus==1">
						已付款
					</s:if><s:elseif test="payStatus==0">
						未付款
							</s:elseif>
				</s:elseif>
				</td>
				<td>
					<s:if test="over==1">
						不可操作
					</s:if><s:elseif test="over==0">

					<s:if test="payStatus==1">
					<s:a action="OrderAction_cancelOrder">
						<img src="icons/cancel.png">取消订单
						<s:param name="oid" value="%{oid}"></s:param>
					</s:a>
						<s:a action="OrderAction_check">
							退房
							<s:param name="oid" value="%{oid}"></s:param>
						</s:a>
					</s:if>
					<s:elseif test="payStatus==0">
					<s:a action="OrderAction_pay">
						<img src="icons/cart.png">
						<s:param name="oid" value="%{oid}"></s:param>
						去付款
					</s:a>

				</s:elseif>
				</s:elseif>

				</td>
				<td>
					<s:a action="OrderAction_check">

						<s:param name="oid" value="%{oid}"></s:param>

					</s:a>

				</td>

			</tr>
		</s:iterator>
	</table>
</s:form> --%>
<%--
格式化日期的写法,都是struts时才有效果（实验发现）
<s:date name="onDutyDate" format="yyyy-MM-dd" var="date"></s:date
<s:textfield name="onDutyDate" value="%{#date}" readonly="true"></s:textfield>
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
			pagination: true
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

