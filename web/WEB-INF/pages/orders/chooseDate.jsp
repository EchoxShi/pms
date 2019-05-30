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
<link href="${pageContext.request.contextPath}/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.css" type="text/css" media="all" />
<!-- // Owl-Carousel-CSS -->
<link href="${pageContext.request.contextPath}/css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="${pageContext.request.contextPath}/css/slider.css" type="text/css" rel="stylesheet" media="all">
<link href='${pageContext.request.contextPath}/css/simplelightbox.min.css' rel='stylesheet' type='text/css'>
<!-- //Custom Theme files
//font-awesome icons -->
<link href="${pageContext.request.contextPath}/css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->

<!-- web-fonts -->
<link href="http://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600,600i,700,700i" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
<!-- //web-fonts -->

<style>
	<%--表单的样式--%>
	body {
		margin:0;
		padding:0;
		background:url(images/banner.jpg) no-repeat;
		background-attachment:fixed;
		background-position:center;
		background-size:cover;
		-webkit-background-size:cover;
		-moz-background-size:cover;
		-o-background-size:cover;
		font-family: 'Muli', sans-serif;
	}
	.clear {
		clear:both;
	}
	/*-- AgileITS --*/
	h1 {
		text-align:center;
		font-size:45px;
		color:#fff;
		padding:50px 0;
		text-transform:uppercase;
		font-weight: 300;
		font-family: 'Nunito', sans-serif;
	}
	.log .content1 h2 {
		font-size:40px;
		padding: 30px 0 0;
		color:#fff;
		font-weight: 300;
		font-family: 'Nunito', sans-serif;
		text-align:center;
	}
	.log .content2 h2 {
		font-size:40px;
		padding: 30px 0 0;
		color:#fff;
		font-weight: 300;
		font-family: 'Nunito', sans-serif;
		text-align:center;
	}
	.log {
		width:75%;
		margin:0 auto;
	}
	.content1 {
		/* width: 48%; */
		width: 48%; 
		text-align: center;
		background-color: rgba(0, 0, 0, 0.21);
		position: absolute;
	 
               
		/* padding: 30px 0; */
		/* float: left; */
		
		border-radius: 0px;
	/* 	margin-bottom: 100px;
		margin-left: 293px; */
		margin-bottom: 100px;
		margin-left: 170px;
	}

	.content1 input[type="text"] {
		padding:10px 40px 10px 10px;
		width:70%;
		border:1px solid #fff;
		color:#fff;
		text-align:left;
		outline:none;
		font-size:18px;
		background:url(images/person.png) no-repeat 440px 10px;
		margin-top:4%;
		font-weight: 300;
		font-family: 'Muli', sans-serif;
		/*-- W3Layouts --*/
		border-radius: 4px;
	}
	.content1 input[type="password"] {
		padding:10px 40px 10px 10px;
		width:70%;
		border:1px solid #fff;
		color:#fff;
		text-align:left;
		outline:none;
		font-size:18px;
		background:url(images/lock.png) no-repeat 440px 10px;
		margin-top:6%;
		font-weight: 300;
		font-family: 'Muli', sans-serif;
		border-radius: 4px;
	}
	.button-row {
		width:100%;
		margin-top:5%;
		padding-bottom:40px;
	}
	.tlinks{text-indent:-9999px;height:0;line-height:0;font-size:0;overflow:hidden;}
	.sign-in {
		padding:10px;
		background-color:#4C9A39;
		width:35%;
		border:none;
		cursor:pointer;
		color:#fff;
		font-weight: 300;
		font-family: 'Nunito', sans-serif;
		font-size:20px;
		margin-left:62px;
		float:left;
		text-transform:uppercase;
		border-radius:4px;
		transition: all 0.5s ease-in-out;
		-webkit-transition: all 0.5s ease-in-out;
		-moz-transition: all 0.5s ease-in-out;
		-o-transition: all 0.5s ease-in-out;
	}
	.sign-in:hover {
		background-color:#376D29;
		color:#fff;
	}
	
	/* ======= */
	
	.sign-inn {
		padding:10px;
		background-color:#4C9A39;
		width:25%;
		border:none;
		cursor:pointer;
		color:#fff;
		font-weight: 300;
		font-family: 'Nunito', sans-serif;
		font-size:20px;
		margin-left:62px;
		position:relative;
		left:-30px; 
		text-transform:uppercase;
		border-radius:4px;
		transition: all 0.5s ease-in-out;
		-webkit-transition: all 0.5s ease-in-out;
		-moz-transition: all 0.5s ease-in-out;
		-o-transition: all 0.5s ease-in-out;
	}
	.sign-inn:hover {
		background-color:red;
		color:#fff;
	}
	/* ======= */
	.reset {
		padding:10px;
		background-color:#c0392b;
		width:35%;
		border:none;
		/*-- AgileITS --*/
		cursor:pointer;
		color:#fff;
		font-size:20px;
		float:right;
		margin-right:62px;
		font-weight: 300;
		font-family: 'Nunito', sans-serif;
		text-transform:uppercase;
		border-radius:4px;
		transition: all 0.5s ease-in-out;
		-webkit-transition: all 0.5s ease-in-out;
		-moz-transition: all 0.5s ease-in-out;
		-o-transition: all 0.5s ease-in-out;
	}
	.reset:hover {
		background-color:#791F16;
		color:#fff;
	}
	.content2 {
		width:48%;
		text-align: center;
		background-color: rgba(0, 0, 0, 0.21);
		float:right;
		padding: 30px 0 70px;
		border-radius: 0px;
	}

	.register {
		padding:10px;
		background-color:#4C9A39;
		width:78%;
		border:none;
		cursor:pointer;
		color:#fff;
		font-weight: 300;
		font-family: 'Nunito', sans-serif;
		font-size:20px;
		margin-top:7%;
		text-transform:uppercase;
		border-radius:4px;
		-webkit-transition: all 0.5s ease-in-out;
		-moz-transition: all 0.5s ease-in-out;
		-o-transition: all 0.5s ease-in-out;
	}
	.register:hover {
		background-color:#376D29;
		color:white;
	}



	body {
	margin-top: 20px;
	margin: 0 auto;
}

.carousel-inner .item img {
	width: 100%;
	height: 300px;
}

.container .row div {
	/* position:relative;
				 float:left; */
	
}
.m{
  margin:0;
  font-family: 'Crimson Text', serif;
}
font {
	color: #fff;
	font-size: 18px;
	font-weight: normal;
	padding-right: 17px;
	font-family: 'Nunito', sans-serif;
}
.a{
   position:absolute;
   right:740px;
   width:600px;
   height:500px;
 
}

/* date输入样式 */
  /* 控制编辑区域的 */
          input[type="date"]::-webkit-datetime-edit{
            /* content: '起始时间'; */
            color: rgb(188,188,188); 
            padding-left: 10px;
          }
          /* 控制年月日这个区域的 */
          input[type="date"]::-webkit-datetime-edit-fields-wrapper { 
            background-color: #fff; 
          } 
          /* 这是控制年月日之间的斜线或短横线的 */
          input[type="date"]::-webkit-datetime-edit-text {
            color:#87CEFF; 
            padding: 0 .3em; 
          } 
          /* 控制年字 */
          input[type="date"]::-webkit-datetime-edit-year-field { 
            color: #080808; 
          } 
          /* 控制月字 */
          input[type="date"]::-webkit-datetime-edit-month-field { 
            color: #080808; 
          } 
          /* 控制日字 */
          input[type="date"]::-webkit-datetime-edit-day-field  { 
            color: #080808; 
          } 
        /*控制下拉小箭头的*/ 
        input[type="date"]::-webkit-calendar-picker-indicator {
          display: inline-block;
          width: 10px;
          height: 10px;
          /* position: absolute;
          top: 12px;
          right: 0px; */
          border: 1px solid #ccc;
          border-radius: 2px;
          box-shadow: inset 0 1px #fff, 0 1px #eee;
          background-color: #eee;
          /* background:url('../images/icon.png') -188px -99px; */
          background-image: -webkit-linear-gradient(top, #f0f0f0, #e6e6e6);
          color: #666; 
        } 
        /* 去掉date中上下小三角，但是保留input类型为number的小三角。 */
        input[type=date]::-webkit-inner-spin-button { 
          visibility: hidden; 
        }
        /*----------用来移除叉叉按钮 鼠标移上去还会显示----------*/ 
       /*  input[type="date"]::-webkit-clear-button{
         display:none; */
        } 

/* ====== */
</style>
<body>
<%--在这个页面输入日期去查询这段时间里哪些房间可预订，哪些房间不可预订--%>
<!-- banner -->
<!-- <div class="header" style="background-color:black;position: relative"> -->
    <!-- header -->
    <nav class="navbar navbar-default"">
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
                <h1  style="position:absolute;top:5px;">
                    <a href="/index.jsp">zoom</a>
                </h1>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
             <!--    <ul class="nav navbar-nav nav-center" style="position:relative;left:60px;"> -->
                <%--     <li>
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
                </ul> --%>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"></div>
            <!-- //navbar-collapse -->

        </div>
        <!-- //container-fluid -->
    </nav>
<!-- </div> -->
<!-- //header -->

<!-- //banner -->


<%-- <h1>请输入查询日期</h1>
    <form action="${pageContext.servletContext.contextPath}/RoomAction_findAllOrderOrNot">
        入住日期：<input type="date" name="searchDayIn" required="required" id="beginDate" onchange="choose(this)">
        退房日期：<input type="date" name="searchDayOut" required="required" onchange="choose(this)" id="endDate">
        <input type="submit" value="提交">
    </form> --%>
    
    
	<%-- <div class="log">
		<div class="content1" style="position:relative right:100px;">
			<h2>Choose Date</h2>
			<!-- <s:form namespace="/" method="POST" action="CustomerAction_login">
				<span style="font-size: 15px;color: red"><s:actionmessage></s:actionmessage></span>
				<s:textfield name="loginName"  value="LoginName"  onfocus="this.value=''"  onblur="if (this.value == '') {this.value = 'LoginName';}"></s:textfield>
				<s:password name="loginPassword"  value="LoginPassword" onfocus="this.value=''" onblur="if (this.value == '') {this.value = 'LoginPassword';}"></s:password>
				<div class="button-row">
					<s:submit class="sign-in" value="Sign In"></s:submit>
					<s:reset  class="reset" value="Reset"></s:reset>
					<div class="clear"></div>
				</div>
			</s:form> -->
			<form action="${pageContext.servletContext.contextPath}/RoomAction_findAllOrderOrNot">
                           入住日期：<input type="date" name="searchDayIn" required="required" id="beginDate" onchange="choose(this)">
                       退房日期：<input type="date" name="searchDayOut" required="required" onchange="choose(this)" id="endDate">
        <input type="submit" value="提交">
    </form> 
		</div>
	</div>
 --%>
    
	

	<h1>请输入查询日期</h1>
	<div class="log">
		<div class="content1">
            <div style="height: 60px"></div>
			<!-- <s:form namespace="/" method="POST" action="CustomerAction_login">
				<span style="font-size: 15px;color: red"><s:actionmessage></s:actionmessage></span>
				<s:textfield name="loginName"  value="LoginName"  onfocus="this.value=''"  onblur="if (this.value == '') {this.value = 'LoginName';}"></s:textfield>
				<s:password name="loginPassword"  value="LoginPassword" onfocus="this.value=''" onblur="if (this.value == '') {this.value = 'LoginPassword';}"></s:password>
				<div class="button-row">
					<s:submit class="sign-in" value="Sign In"></s:submit>
					<s:reset  class="reset" value="Reset"></s:reset>
					<div class="clear"></div>
				</div>
			</s:form> -->
			<form action="${pageContext.servletContext.contextPath}/RoomAction_findAllOrderOrNot">
                       <font>入住日期：</font><input type="date" name="searchDayIn" required="required" id="beginDate" onchange="choose(this)"><br/><br/>
                       <font>退房日期：</font><input type="date" name="searchDayOut" required="required" onchange="choose(this)" id="endDate">
        <div class="button-row">
        <input type="submit" value="查询" class="sign-inn">
        </div>
                      
					
				
	
    </form> 
		</div>
	</div>




	<!-- //banner-bottom -->

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
