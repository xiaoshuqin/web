<%--
  Created by IntelliJ IDEA.
  User: 付佳鸿
  Date: 2018/5/7
  Time: 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored ="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Users</title>

</head>
<body>
<form action="carusers" method="post">
<a href="addUsers"></a>
    <table style="height: 200px;width: 1000px">
        <tr>
            <td>账号</td>
            <td>用户名</td>
            <td>用户密码</td>
            <td>真实姓名</td>
            <td>性别</td>
            <td>联系方式</td>
            <td>住址</td>
            <td>邮箱</td>
            <td>qq号码</td>
        </tr>
        <c:forEach items="${carusers}" var="carusers">
            <tr>
                <td>${carusers.id}</td>
                <td>${carusers.name}</td>
                <td>${carusers.password}</td>
                <td>${carusers.realname}</td>
                <td>${carusers.sex}</td>
                <td>${carusers.tel}</td>
                <td>${carusers.address}</td>
                <td>${carusers.email}</td>
                <td>${carusers.qq}</td>
            </tr>
        </c:forEach>
    </table>
</form>
<div><a href="exit">返回</a> </div>
</body>
</html>
