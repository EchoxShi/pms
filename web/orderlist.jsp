<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html >
<head>
	<title>
		查看订单
	</title>
</head>
<body>
提交完订单，来到这个页面，可查看自己的订单，订单状态有 已付款，未付款
可操作有 去付款，取消订单
<s:form>
	<table border="1" style="width: 1200px;height: 20px;position: center">
		<tr>
			<td>订单号</td><td>房间号</td><td>房间名</td><td>每晚价格</td><td>入住时间</td>
			<td>退房时间</td><td>总价</td><td>订单状态</td><td>操作</td>
		</tr>
		<s:iterator value="byctmId">
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
				<td><s:property value="mony"></s:property></td>
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
				<td>
					<s:if test="over==1">
						不可操作
					</s:if><s:elseif test="over==0">

					<s:if test="payStatus==1">
					<s:a action="OrderAction_cancelOrder">
						<img src="icons/cancel.png">取消订单
						<s:param name="oid" value="%{oid}"></s:param>
					</s:a>
						<s:a action="OrderAction_check">
							退房
							<s:param name="oid" value="%{oid}"></s:param>
						</s:a>
					</s:if>
					<s:elseif test="payStatus==0">
					<s:a action="OrderAction_pay">
						<img src="icons/cart.png">
						<s:param name="oid" value="%{oid}"></s:param>
						去付款
					</s:a>

				</s:elseif>
				</s:elseif>

				</td>
				<td>
					<s:a action="OrderAction_check">

						<s:param name="oid" value="%{oid}"></s:param>

					</s:a>

				</td>

			</tr>
		</s:iterator>
	</table>
</s:form>
<%--
格式化日期的写法,都是struts时才有效果（实验发现）
<s:date name="onDutyDate" format="yyyy-MM-dd" var="date"></s:date
<s:textfield name="onDutyDate" value="%{#date}" readonly="true"></s:textfield>
--%>
</body>
</html>