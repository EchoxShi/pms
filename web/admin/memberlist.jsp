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
           	<button class="btn button_btn bg-deep-gray" type="button" onclick=""><i class="iconfont"></i>&nbsp;会员管理</button>
           </div>
           <!--列表内容-->
           <div class="page_content clearfix mb15 table-module ">
           	<table class="gallery table table_list table_striped table-bordered " id="">
				<tr>
					<font color="red">${msg}</font>
					<td>会员编号</td><td>会员类型</td><td>充值金额</td><td>所剩金额</td>

				</tr>
				<s:iterator value="memberList"></s:iterator>
				<tr>
					<td><s:property value="memid"></s:property></td>
					<td>
						<s:if test="memtype==1">
							积分型
						</s:if>
						<s:if test="memtype==2">
							储值型
						</s:if>
						<s:if test="memtype==null">
							非会员
						</s:if>

					</td>
					<td><s:property value="mon"></s:property></td>
					<td><s:property value="remain"></s:property></td>

				</tr>
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
