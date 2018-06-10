<%--
  Created by IntelliJ IDEA.
  User: 付佳鸿
  Date: 2018/5/7
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>carUsers</title>
</head>
<%--<script type="text/javascript" src="cars/js/jquery-3.0.0.min.js" charset="utf-8">
    var userName,
        password,
        password2;
    function sub() {
        userName = $('input[name="name"]').val();
        password = $('input[type="password"]')[0].value;
        password2 = $('input[type="password"]')[1].value;

        if (userName.length < 10 || userName.length > 2) {
            alert('用户名长度为4~10位');
            return;
        }

        if (!password || !password2) {
            alert('密码为空');
            return;
        }

        if (password !== password2) {
            alert('两次密码输入不一样,请重新输入');
            return;
        }

        alert('注册成功');

    }
</script>--%>
<%--<script type="text/javascript" charset="utf-8">
    function sub() {
        if(confirm("注册成功！")){
            /*location.href="http://localhost:8081/web/login";*/
        }
    }
</script>--%>
<style type="text/css">
    #box{
        width: 600px;
        height: 320px;
        margin-top: 100px;
        margin-left: 350px;
        padding-top: 20px;
        color: #FFFFFF;
        line-height: 40px;
        text-align: center;
        background-color: #aeaeae;
    }
    .top{
        height: 50px;
        font-size: 23px;
    }
    .foot{
        width: 600px;
        height: 40px;
        color: #FFFFFF;
        margin-left: 350px;
        padding-top: 15px;
        text-align: center;
        background-color: #d80f37;
    }
</style>
<body>
<form action="add" method="post">
    <div id="box">
        <div class="top">用户注册</div>
        <label class="">账号:</label>
        <input type="text" name="id" required placeholder="请输入账号" autocomplete="off">*<br/>

        <label class="">姓名:</label>
        <input type="text" name="name" required placeholder="请输入姓名" autocomplete="off">*<br/>

        <label class="">密码:</label>
        <input type="password" name="password" required placeholder="请输入密码" autocomplete="off">*<br/>
        <%--<label class="">确认密码:</label>
        <input type="password" name="password" required placeholder="请确认密码" autocomplete="off">*<br/>--%>

        <label class="">住址:</label>
        <input type="text" name="address" required placeholder="请输入住址" autocomplete="off">*<br/>

        <label class="">手机:</label>
        <input type="text" name="tel" required placeholder="请输入手机号" autocomplete="off">*<br/>

        <label class="">邮箱:</label>
        <input type="text" name="email" required placeholder="请输入邮箱"><br/></div>

        <div class="foot" onclick="sub()">
        <input type="submit" value="提交"></div>
</form>
</body>
</html>
