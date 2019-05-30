<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html >

<head>
	<title>我的会员</title>
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
	<link href="${pageContext.request.contextPath}/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all" />
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
		.t{
			display: none;
		}
		th{
		  backgrounf-color:white;
		  text-align:center;
		}
		td{
		  backgrounf-color:white;
		   text-align:center;
		}
		

	</style>

</head>

<body style="background-color:#EBEBEB">

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
					<a href="${pageContext.request.contextPath}/index.jsp">zoom</a>
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
<%--========================================================================================--%>
   <div class="page_content clearfix mb15 table-module " style="padding: 50px 100px;font-family:'Muli', sans-serif;">
           	<table class="gallery table table_list table_striped table-bordered " id="" style="background-color:white;opacity:0.8">
           		<thead>
		        <tr>
				<%-- <th ><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th> --%>
				<th >会员编号</th>
				<th width="130">会员类型</th>
					<s:if test="member.memtype==2">
						<th >充值金额</th>
						<th>所剩金额</th>
					</s:if>
					<s:if test="member.memtype==1">
						<th >当前积分</th>
					</s:if>


		       </tr>
		       </thead>
		       <tbody>
		       <tr>
						<td><s:property value="member.memid"></s:property></td>
						<td>
							<s:if test="member.memtype==1">
								积分型
							</s:if>
							<s:if test="member.memtype==2">
								储值型
							</s:if>
							<s:if test="member.memtype==null">
								非会员
							</s:if>

							</td>
				   <s:if test="member.memtype==2">
						<td><s:property value="member.mon"></s:property></td>
						<td style="color:red"><s:property value="member.remain"></s:property></td>
				   </s:if>
				   <s:if test="member.memtype==1">
					   <td><s:property value="member.score"></s:property></td>
				   </s:if>

			   </tr>
			 <%--   <s:iterator value="roomList" >
			   <s:a action="RoomAction_findRoomById" >
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
			   </s:iterator> --%>
			   </tbody>
	     </table>
</div> 
<h1 style="font-family:'Muli', sans-serif;position:absolute;left:45%;color:white;">订单详情</h1>
<br/>
 <div class="page_content clearfix mb15 table-module " style="padding: 50px 100px">
           	<table class="gallery table table_list table_striped table-bordered " id="" style="background-color:white;opacity:0.8">
           		<thead>
		        <tr>
				<%-- <th ><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th> --%>
				<th >订单号</th>
				<th width="130">房间号</th>

				<th >房间名</th>
					<th >价格（元/晚）</th>

					<th >入住时间</th>
					<th >退房时间</th>
					<th >总价</th>
					<th>订单状态</th>
		       </tr>
		       </thead>
		       <tbody>
		       
		       <s:iterator value="orders" >
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
					<td><s:property value="mony"></s:property></td>
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
				</tr>
				</s:iterator>
		       
		      <!--  ===== -->
		    <%--    <tr>
						<td><s:property value="member.memid"></s:property></td>
						<td>
							<s:if test="member.memtype==1">
								积分型
							</s:if>
							<s:if test="member.memtype==2">
								储值型
							</s:if>
							<s:if test="member.memtype==null">
								非会员
							</s:if>

							</td>
						<td><s:property value="member.mon"></s:property></td>
						<td><s:property value="member.remain"></s:property></td>

					</tr> --%>
			 <%--   <s:iterator value="roomList" >
			   <s:a action="RoomAction_findRoomById" >
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
			   </s:iterator> --%>
			   </tbody>
	     </table>
</div> 
<!--   ======= -->
	<%-- <div style="padding: 100px">
		<font style="color: red;size: 15mm"><s:actionmessage></s:actionmessage></font>
		<h2>会员情况</h2>
		<s:form>
			<table border="1" style="width: 1200px;height: 20px;position: center">
				<tr>
					<font color="red">${msg}</font>
					<td>会员编号</td><td>会员类型</td><td>充值金额</td><td>所剩金额</td>

				</tr>

					<tr>
						<td><s:property value="member.memid"></s:property></td>
						<td>
							<s:if test="member.memtype==1">
								积分型
							</s:if>
							<s:if test="member.memtype==2">
								储值型
							</s:if>
							<s:if test="member.memtype==null">
								非会员
							</s:if>

							</td>
						<td><s:property value="member.mon"></s:property></td>
						<td><s:property value="member.remain"></s:property></td>

					</tr>
				<tr>使用情况</tr>
				<tr>
					<td>订单号</td><td>房间号</td><td>房间名</td><td>每晚价格</td><td>入住时间</td>
					<td>退房时间</td><td>总价</td><td>订单状态</td>
				</tr>
				<s:iterator value="orders" >
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
					<td><s:property value="mony"></s:property></td>
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
				</tr>
				</s:iterator>
			</table>
		</s:form>
	</div> --%>




<%--=============================================================================================--%>
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



</body>

</html>