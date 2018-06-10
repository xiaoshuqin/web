<%--
  Created by IntelliJ IDEA.
  User: 付佳鸿
  Date: 2018/5/28
  Time: 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored ="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户登录</title>
    <style type="text/css">
        #father{
            width: auto;
            height: 400px;
            background: url("img/登录页面.jpg") repeat-x;
            background-size: 100% 100%;
        }
        .back{
            width: 200px;
            height: 50px;
            padding: 20px;
        }
        .back a{
            font-size: 20px;
            text-decoration: none;
        }
        .back a:hover{
            color: red;
        }
        .name{
            margin-top:170px;
            margin-left: 300px;
            font-size: larger;
        }
        .password{
            margin: 25px 300px;
            font-size: larger;
        }
        .login{
            margin: 10px 350px;
        }
    </style>
   <%-- <script type="text/javascript">

        function myFunction()

        {

            var flag=false;

            var x="",y="";

            x=;
            document.getElementById("name").value
            y=document.getElementById("password").value;

            var tip=document.getElementById("tipMsg");

            if(x==""||y==""){

                tip.innerHTML="用户名或密码不能为空!";

            }else if(x=="[name='name']"&& y=="[name='password']") {

                tip.innerHTML="";

                flag=true;

            }else{

                tip.innerHTML="用户名或密码错误!";

            }

            return flag;

        }

    </script>--%>
</head>

<body id="father">
<div class="back"><a href="hello"><< SIGN OUT</a> </div>
<form action="login" method="post" id="myform" onsubmit="return myFunction()">
    <div class="name">
        用&nbsp;&nbsp;户&nbsp;&nbsp;名:&nbsp;&nbsp;<input id="name" type="text" style="width: 300px;height: 45px;" name="name"
                                                 required placeholder="请输入用户名<%-- <span id="tipMsg" style="color:red;"></span><br/>--%>" autocomplete="off"/><br><br></div>
    <div class="password">
        用户密码:&nbsp;&nbsp;<input id="password" type="password" style="width: 300px;height: 45px" name="password"
                          required placeholder="请输入用户密码" autocomplete="off"/><br><br></div>

    <div class="login">
        <input type="submit" style="width: 100px;height: 45px" value="登&nbsp;&nbsp;录"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="toAdd"><input  type="button" style="width: 100px;height: 45px;" value="注&nbsp;&nbsp;册"/></a>
    </div>
</form>
</body>

</html>
