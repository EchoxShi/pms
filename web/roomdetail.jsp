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
	<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all" />
	<!--// Owl-Carousel-CSS -->
	<link href="css/style.css" type="text/css" rel="stylesheet" media="all">


	<!-- web-fonts -->
	<link href="http://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600,600i,700,700i" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
	<!-- //web-fonts -->
</head>
<body>

<<!-- banner -->
<div class="header">
	<!-- header -->
	<nav class="navbar navbar-default" style="background-color: black;">
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
					<a href="login.jsp">zoom</a>
				</h1>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav nav-center">
					<li>
						<a href="login.jsp" class="nav-hover active">Home</a>
					</li>
					<li>
						<a href="/comment.jsp" class="btn nav-hover scroll">Comment</a>
					</li>

					<li>
						<a href="#team" class="btn nav-hover scroll">Team</a>
					</li>

					<li>
						<a href="login.jsp" >Login In</a>
					</li>
					<li>
						<a href="registe.jsp">Registe</a>
					</li>
					<li>
						<a href="#">hello!${loginName}</a>
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



<div style="font-size :15px;width: 100%;height: 900px;padding: 50px;border: #3d3d3d double;position: center;margin-top: 50px;background-image: url('images/bggg.jpg');opacity: 0.5">
<%--房间详情--%>


		<%--<s:property value="#room" ></s:property>--%>
		房间号：<s:property value="#room.roomNum"></s:property><br>
		房间名：<s:property  value="#room.roomName"></s:property><br>
		价  格：<s:property  value="#room.pricePerNight"></s:property><br>
		说  明：<s:property  value="#room.remark"></s:property><br>
<%--提交给 room中的  UIPreserve ,做准备工作：查出房间详细信息--%>
<%--如果status=1，可预订，=0 不可预订--%>
<s:if test="#room.status==1">
<s:a action="RoomAction_UIPreserve">
	我要预订
	<%--将房间ID传给 action ，action传给 preserve.jsp 页面，将其写入订单--%>
	<s:param name="roomId" value="#room.roomId"></s:param>
</s:a>
</s:if>
<s:elseif test="#room.status==0">
	已被定出
</s:elseif>
<%--//房间详情--%>
</div>

</body>
</html>