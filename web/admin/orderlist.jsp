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
		<title>订单管理</title>
		<script src="${pageContext.servletContext.contextPath}/admin/js/jquery-1.9.1.min.js" type="text/javascript"></script>
		<script src="${pageContext.servletContext.contextPath}/admin/js/jquery.nicescroll.js" type="text/javascript"></script>
		<script src="${pageContext.servletContext.contextPath}/admin/js/HUpages.js" type="text/javascript"></script>
		<script src="${pageContext.servletContext.contextPath}/admin/js/common.js" type="text/javascript"></script>
	</head>

<body id="situation">
<div class="pages-style" >

	<!--右侧内容-->
	<div class="bk-con-message message-section" id="iframe_box">
           <!--编辑内容-->
           <div class="operation  mb15">
           	<button class="btn button_btn btn-danger" type="button" onclick=""><i class="iconfont"></i>&nbsp;批量删除</button>
           	<button class="btn button_btn bg-deep-blue" type="button" onclick=""><i class="iconfont"></i>&nbsp;添加广告</button>
           	<button class="btn button_btn bg-deep-gray" type="button" onclick=""><i class="iconfont"></i>&nbsp;添加分类</button>
           </div>
           <!--列表内容-->
           <div class="page_content clearfix mb15 table-module ">
           	<table class="gallery table table_list table_striped table-bordered " id="">
				<tr>
					<td>订单号</td><td>房间号</td><td>房间名</td><td>每晚价格</td><td>入住时间</td>
					<td>退房时间</td><td>总价</td><td>订单状态</td>
				</tr>
				<s:iterator value="ordersList">
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



					</tr>
				</s:iterator>
           	</table>
           </div>
    </div>
  </div>
 </body>
</html>
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
