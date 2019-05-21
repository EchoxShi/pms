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
		<title>客房管理</title>
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
			   <button class="btn button_btn bg-deep-gray" type="button" onclick=""><i class="iconfont"></i>&nbsp;<a href="adminRoomAction_UIadd">添加客房</a></button>
           </div>
           <!--列表内容-->
           <div class="page_content clearfix mb15 table-module ">
           	<table class="gallery table table_list table_striped table-bordered " id="">
           		<thead>
		        <tr>
				<th ><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
				<th >房间号</th>
				<th width="130">图片</th>

				<th >房间名</th>
					<th >房间类型</th>

					<th >描述</th>
					<th >价格（元/晚）</th>
					<th >操作</th>
		       </tr>
		       </thead>
		       <tbody>
			   <s:iterator value="pageBean.data" >
           		<tr>
           		<td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
           		<td><s:property value="roomNum"></s:property></td>
           		<td><a href="${pageContext.servletContext.contextPath}/<s:property value='picPath'></s:property>" class="zoomimg"><img src="${pageContext.servletContext.contextPath}/<s:property value='picPath'></s:property>"  width="100%" height="100%"/></a></td>
           		<td><s:property value="roomName"></s:property></td>
					<td><s:property value="roomType.roomTypeName"></s:property></td>

					<td><s:property value="remark"></s:property></td>
           		<td><s:property value="pricePerNight"></s:property></td>
					<td><s:form action="adminRoomAction_deleteByRoomId" method="POST">
						<s:hidden name="roomId" value="%{roomId}"></s:hidden>
						<s:submit value="删除"></s:submit>
					</s:form>
					<s:a action="adminRoomAction_UIupdate" namespace="/">
						<s:param name="roomId" value="%{roomId}"></s:param>
						<button style="margin-top: 15px">修改</button>
					</s:a>

					</td>

				</tr>
			   </s:iterator>
				<tr>

					<%--分页显示--%>
					<DIV
							style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right">
						共[<B><s:property value="pageBean.totalRecord"/> </B>]条记录,

						第[<B><s:property  value="pageBean.pageNum"></s:property></B>]页,
						共[<B><s:property value="pageBean.totalPage"></s:property></B>]页

						<s:if test="pageBean.pageNum>1">
							<s:a namespace="/" action="adminRoomAction_findAllRoom">
								<s:param name="pageNum" value="1"></s:param>
								[首页]
							</s:a>

							<s:a namespace="/" action="adminRoomAction_findAllRoom">
								<s:param name="pageNum" value="%{pageBean.pageNum-1}"></s:param>
								[上一页]
							</s:a>
						</s:if>
						<s:if test="pageBean.pageNum<pageBean.totalPage">

							<s:a namespace="/" action="adminRoomAction_findAllRoom">
								<s:param name="pageNum" value="%{pageBean.pageNum+1}"></s:param>
								[下一页]
							</s:a>
							<s:a namespace="/" action="adminRoomAction_findAllRoom">
								<s:param name="pageNum" value="%{pageBean.totalPage}"></s:param>
								[尾页]
							</s:a>
						</s:if>

					</div>

				</tr>




		       </tbody>
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
