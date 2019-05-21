<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>chooseDate</title>
</head>
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



<body>
<%--在这个页面输入日期去查询这段时间里哪些房间可预订，哪些房间不可预订--%>
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
                        <a href="chooseDate.jsp" >ToPreserve</a>
                    </li>
                    <%--<li>--%>
                    <%--<a href="CustomerAction_UILogin" >ToPreserve</a>--%>
                    <%--</li>--%>


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


<h1>请输入查询日期</h1>
    <form action="${pageContext.servletContext.contextPath}/RoomAction_findAllOrderOrNot">
        入住日期：<input type="date" name="searchDayIn" required="required" id="beginDate" onchange="choose(this)">
        退房日期：<input type="date" name="searchDayOut" required="required" onchange="choose(this)" id="endDate">
        <input type="submit" value="提交">
    </form>
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

<script type="text/javascript">
    function choose(obj) {
        Date.prototype.format = function(fmt) {
            var o = {
                "M+" : this.getMonth()+1,                 //月份
                "d+" : this.getDate(),                    //日
                "h+" : this.getHours(),                   //小时
                "m+" : this.getMinutes(),                 //分
                "s+" : this.getSeconds(),                 //秒
                "q+" : Math.floor((this.getMonth()+3)/3), //季度
                "S"  : this.getMilliseconds()             //毫秒
            };
            if(/(y+)/.test(fmt)) {
                fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
            }
            for(var k in o) {
                if(new RegExp("("+ k +")").test(fmt)){
                    fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
                }
            }
            return fmt;
        };

        var begin = document.getElementById("beginDate");
        var end = document.getElementById("endDate");
        var beginDate = begin.value;
        var endDate = end.value;
        var objValue = obj.value;
        var bd = new Date(beginDate);
        var nds = new Date().format("yyyy-MM-dd");
        var nd = new Date(nds);
        var ed1 = new Date(endDate);
        var eds = ed1.format("yyyy-MM-dd");
        var ed = new Date(eds);
        if(obj == begin){
            if(bd.getTime() < nd.getTime()){
                alert("您输入的日期不合规范");
                var s = begin.value= nd.toString();
                begin.value = new Date(s).format("yyyy-MM-dd");

            }
        }else{
            if(ed.getTime() < nd.getTime() || ed.getTime() <= bd.getTime()){
                alert("您输入的日期不合规范");
                var s1 = bd.getTime()+60*60*1000*24;
                end.value = new Date(s1).format("yyyy-MM-dd");
            }
        }

    }
</script>
