<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html >
<head>
	<title>
		房间详情
	</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />

	<!-- Custom Theme files -->
	<link href="${pageContext.request.contextPath}/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.css" type="text/css" media="all" />
	<!--// Owl-Carousel-CSS -->
	<link href="${pageContext.request.contextPath}/css/style.css" type="text/css" rel="stylesheet" media="all">


	<!-- web-fonts -->
	<link href="http://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600,600i,700,700i" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
	<!-- //web-fonts -->
	<style>
	    .single-member{
  width: 280px; 
  float: left; 
  font-family: sans-sarif; 
  margin: 30px 2.5%; 
  background-color: #fff; 
  text-align: center; 
  position: relative;
}
.member-image img{
  max-width: 100%; 
  vertical-align: middle;
}
h3 {
 /*  font-size: 24px; 
  font-weight: normal; 
  margin: 10px 0 0; 
  text-transform: uppercase;
   font-family: 'Crimson Text', serif; */
                text-align:center;
		font-size:25px;
		color:#EE7600;
		/* padding:50px 0; */
		text-transform:uppercase;
		font-weight: 400;
		font-family: 'Nunito', sans-serif;
}
h5 {
  /* font-size: 16px; 
  font-weight: 300; 
  margin: 0 0 15px; 
  line-height: 22px;
   font-family: 'Crimson Text', serif; */
                text-align:center;
		font-size:19px;
		color:#EE7600;
		/* padding:50px 0; */
		text-transform:uppercase;
		font-weight: 400;
		font-family: 'Nunito', sans-serif;
}
p {font-size: 14px; 
  font-weight: 300; 
  line-height: 22px; 
  padding: 0 30px; 
  margin-bottom: 10px;
  
}
.social-touch a{
  display: inline-block; 
  width: 27px; 
  height: 26px; 
  vertical-align: middle; 
  margin: 0 2px; 
  background-image: url(images/social-icons.png); 
  background-repeat: no-repeat; 
  opacity: 0.7; 
  transition: 0.3s;
  position:relative;
  right:40px;
  top:-3px;
}
.social-touch a:hover{
  opacity: 1; 
  transition: 0.3s;
}
.fb-touch{
  background-position: 0 0;
}
.tweet-touch{
  background-position: -35px 0;
}
.linkedin-touch{
  background-position: -71px 0;
}
.icon-colored .fb-touch{
  background-position: 0 -27px;
}
.icon-colored .tweet-touch{
  background-position: -35px -27px;
}
.icon-colored .linkedin-touch{
  background-position: -71px -27px;
}                 
.effect-3{
   /* max-height: 302px; 
  min-height: 302px; 
  overflow: hidden;  */
  position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            margin: auto;
            width:400px;
            height:410px;
  
}
.effect-3 h3{
  padding-top: 7px; 
  line-height: 33px;
}
.effect-3 .member-image{
  border-bottom: 5px solid #e5642b; 
  transition: 0.4s; 
  height: 212px; 
  width: 100%; 
  display: inline-block; 
  float: none; 
  vertical-align: middle;
}
.effect-3 .member-info{
  transition: 0.4s;
}
.effect-3 .member-image img{
  width: 100%; 
  vertical-align: bottom;
  height: 207px; 
}
.effect-3 .social-touch{
  background-color: #e5642b; 
  float: left; 
  left: 0; 
  bottom: 0; 
  overflow: hidden; 
  padding: 5px 0; 
  width: 100%; 
  transition: 0.4s;
}
.effect-3:hover .member-image{
  border-bottom: 0; 
  border-radius: 0 0 50px 50px; 
  height: 81px; 
  display: inline-block; 
  overflow: hidden; 
  width: 109px; 
  transition: 0.4s;
}     
.sign-in {
		padding:5px;
		background-color:#e5642b;
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
<body style="background-color:#EBEBEB">
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

<div class="single-member effect-3">
  <div class="member-image" style="">
   <!--  <img src="demo.jpg" alt=""> -->
   <%--  <a href="${pageContext.servletContext.contextPath}/<s:property value='picPath'></s:property>" class="zoomimg"><img src="${pageContext.servletContext.contextPath}/<s:property value='picPath'></s:property>"  width="100%" height="100%"/></a> --%>
    <img src="<s:property value="#room.picPath"></s:property>">
  </div>
  <div class="member-info">
    <h3 style="position:relative;top:50px;"><s:property  value="#room.roomName"></s:property></h3>
    <h5 style="position:relative;top:65px;"><s:property value="#room.roomNum"></s:property></h5>
    <p style="position:relative;top:80px;"><s:property value="#room.remark"></s:property></p>
    <div class="social-touch" style="position:relative;top:80px;">
      <!-- <a class="fb-touch" href="#"></a> -->
      <a class="tweet-touch" href="#">
      <s:if test="#room.status==1">
     <s:a action="RoomAction_UIPreserve">
     <s:submit class="sign-in" value="我要预订"></s:submit>
	 <!-- 我要预订 -->
	<!--将房间ID传给 action ，action传给 preserve.jsp 页面，将其写入订单 -->
	<s:param name="roomId" value="#room.roomId"></s:param>
     </s:a>
     </s:if>
     <s:elseif test="#room.status==0">
	 <!-- 已被定出 -->
	 <%-- class="sign-in" value="已定出"> --%>
	<!-- <button>已定出</button> -->
      </s:elseif>
      </a>
      <!--  <a class="linkedin-touch" href="#"></a> -->
    </div>
  </div>
</div>              

<%-- <div style="font-size :15px;width: 100%;height: 900px;padding: 200px;border: #3d3d3d double;position: center;background-image: url('images/bggg.jpg');">
房间详情


		<s:property value="#room" ></s:property>
		房间号：<s:property value="#room.roomNum"></s:property><br>
		房间名：<s:property  value="#room.roomName"></s:property><br>
		价  格：<s:property  value="#room.pricePerNight"></s:property><br>
		说  明：<s:property  value="#room.remark"></s:property><br>
提交给 room中的  UIPreserve ,做准备工作：查出房间详细信息
如果status=1，可预订，=0 不可预订
<s:if test="#room.status==1">
<s:a action="RoomAction_UIPreserve">
	我要预订
	将房间ID传给 action ，action传给 preserve.jsp 页面，将其写入订单
	<s:param name="roomId" value="#room.roomId"></s:param>
</s:a>
</s:if>
<s:elseif test="#room.status==0">
	已被定出
</s:elseif>
//房间详情
</div> --%>

</body>
</html>