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

			<div id="addroom" style="padding: 50px 200px;">
           <!--添加客房-->
          <s:form action="adminRoomAction_add" method="POST" enctype="multipart/form-data">
			  <table style="line-height: 20mm" >
				  <tr>
					  <td>图片：</td>
					  <td><input type="file" name="myfile" value="选择图片"></td>
				  </tr>
				  <tr>
					  <td>房间号：</td>
					  <td><s:textfield name="roomNum"  cssClass="t"></s:textfield></td>
				  </tr>
				  <tr>
					  <td>房间名：</td>
					  <td><s:textfield name="roomName" cssClass="t"></s:textfield></td>
				  </tr>
				  <tr>
					  <td>房间类型：</td>
					  <td><s:radio name="roomTypeId" list="%{roomTypeList}" listValue="%{roomTypeName}" listKey="%{roomTypeId}"></s:radio></td>
				  </tr>
				  <tr>
					  <td>说明：</td>
					  <td><s:textarea name="remark"  cssClass="t"></s:textarea></td>
				  </tr>
				  <tr>
					  <td>价格（元/晚）:</td>
					  <td class="t"><s:textfield name="pricePerNight"   cssClass="t"></s:textfield></td>
				  </tr>
				  <tr>
					  <td colspan="2" align="center"><s:submit  value="添加"></s:submit></td>
				  </tr>
			  </table>
		  </s:form>
			</div>



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
