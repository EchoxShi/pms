<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html >

<head>
	<title>
		填写订单
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
<%--填写订单,提交给  orderAction中  addOrder 处理--%>
    <s:form namespace="/" action="OrderAction_add">
        <table border="1">
            <tr>
                <td>
                <h1>入住人信息</h1>
                </td>
            </tr>
            <tr>
                <td><s:label value="姓   名："></s:label></td>
                <td><s:textfield name="customer.ctmName" value="%{ctmName}"></s:textfield> </td>
            </tr>
            <tr>
                <td><s:label value="证件号码："></s:label></td>
                <td><s:textfield name="customer.IdCard" value="%{IdCard}"></s:textfield> </td>
            </tr>
            <tr>
                <td><s:label value="出生日期："></s:label></td>
                <td>
                    <s:date name="date" format="yyyy-MM-dd" var="date"></s:date>
                    <input type="date" name="customer.birthday" value="%{#date}" >
                </td>

            <%--<td><s:textfield name="customer.birthday"></s:textfield> </td>--%>
            </tr>
            <tr>
                <td><s:label value="性    别："></s:label></td>
                <td><s:radio list="{'男','女'}" name="customer.sex" value="%{sex}"></s:radio> </td>

            <%--<td><s:textfield name="customer.sex" ></s:textfield> </td>--%>
            </tr>
            <tr>
                <td>
                    <h1>住房信息</h1>
                </td>
            </tr>
            <tr>
                    <%--用传过来的room的信息--%>

                <td><s:hidden name="room.roomId"
                              value="%{#room.roomId}"></s:hidden> </td>
            </tr>
            <tr>
                <%--用传过来的room的信息--%>
                <td><s:label value="房 间 号："></s:label></td>
                <td><s:property value="#room.roomNum"></s:property></td>
            </tr>
            <tr>
                    <%--用传过来的room的信息--%>
                <td><s:label value="房 间 名："></s:label></td>
                <td><s:property  value="#room.roomName"></s:property></td>
            </tr>
            <tr>
                    <%--用传过来的room的信息--%>
                <td><s:label value="价  格："></s:label></td>
                <td><s:property  value="#room.pricePerNight"></s:property></td>
            </tr>
            <tr>
                <td><s:label value="入住日期："></s:label></td>
                <td><input type="date" name="dayin" ></td>

            </tr>
            <tr>
                <td><s:label value="退房日期："></s:label></td>
                <td><input type="date" name="dayout" ></td>
            </tr>

            <tr>
                <td><s:submit value="提交订单"></s:submit></td>
            </tr>

        </table>

<%--
格式化日期的写法,都是struts时才有效果（实验发现）
<s:date name="onDutyDate" format="yyyy-MM-dd" var="date"></s:date
<s:textfield name="onDutyDate" value="%{#date}" readonly="true"></s:textfield>
--%>
    </s:form>


<%--//填写订单--%>


</body>
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

</html>