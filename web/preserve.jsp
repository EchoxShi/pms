<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html >
<head>
	<title>
		填写订单
	</title>
</head>
<body>

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
</html>