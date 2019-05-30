<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
		<meta name="format-detection" content="telephone=no, email=no, date=no, address=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="format-detection" content="telephone=no" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<meta content="black" name="apple-mobile-web-app-status-bar-style">
		<link href="${pageContext.servletContext.contextPath}/admin/css/bksystem.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.servletContext.contextPath}/admin/font/iconfont.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.servletContext.contextPath}/admin/css/module.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.servletContext.contextPath}/admin/css/pages.css" rel="stylesheet" type="text/css" />
		<title>添加客房</title>
		<script src="${pageContext.servletContext.contextPath}/admin/js/jquery-1.9.1.min.js" type="text/javascript"></script>
		<script src="${pageContext.servletContext.contextPath}/admin/js/jquery.nicescroll.js" type="text/javascript"></script>
		<script src="${pageContext.servletContext.contextPath}/admin/js/HUpages.js" type="text/javascript"></script>
		<script src="${pageContext.servletContext.contextPath}/admin/js/common.js" type="text/javascript"></script>

		<style>
			.t{
				width: 300px;

			}
		</style>
	</head>

<body id="situation">
<div class="pages-style" >

	<div class="bk-con-message message-section" id="iframe_box">

<s:iterator value="roomList">
	<s:if test="status==1">

		<div style="width: 100px;height: 100px;background-color: #34ff43;display: inline-grid;margin: 20px;border-radius: 50%">
			<span style="margin: 20px;font-size: 10mm"><s:property value="%{roomNum}"></s:property></span>
		</div>
	</s:if><s:else>

	<div style="width: 100px;height: 100px;background-color: #ff6e40;display: inline-grid;margin: 20px;border-radius: 50%">
		<span style="margin: 20px;font-size: 10mm"><s:property value="%{roomNum}"></s:property></span>
	</div>
</s:else>

</s:iterator>

















	</div>
</div>
 </body>
</html>
<script type="text/javascript">
	function showPage(num) {
		var p = document.getElementById("pageNum");
		p.value = num;
		document.forms[0].submit();
	}
</script>



<script>
$(function(){
	//内页框架结构编辑
	$("#situation").Hupage({
		slide: '#breadcrumb',
		padding:15,
		menuModule:'#bk-con-menu', //菜单模块
		pagecontent:'.page_content',//自定义属性
		operation:'.operation',//自定义属性
		scrollbar:function(e){
			e.niceScroll({
				cursorcolor: "#dddddd",
				cursoropacitymax: 1,
				touchbehavior: false,
				cursorwidth: "3px",
				cursorborder: "0",
				cursorborderradius: "3px",
			});						
		},
		expand:function(thisBox,settings){	
			var pc="";
			$(settings.pagecontent).css("margin-bottom")!=null? pc=parseInt($(settings.pagecontent).css("margin-bottom").replace("px","")):'';
		    $(settings.pagecontent).css({height:$(window).height()-$(settings.operation).outerHeight()-pc-(settings.padding*2)})
		    settings.scrollbar($(settings.slide) && $(settings.pagecontent));		    
		}//自定义方法
	});
 });
</script>
