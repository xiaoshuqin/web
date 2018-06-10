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
    <title>车辆详情</title>
    <script type="text/javascript" src="cars/js/jquery-3.0.0.min.js"></script>
    <script type="text/javascript">
       $(function(){
           $(".t1").hide();
            $(".td1").click(function(){
                $(".t1").fadeToggle();
            });
        });
       $(function () {
           $(".t2").hide();
           $(".td2").click(function(){
               $(".t2").fadeToggle();
           });
       })
         $(function () {
             $(".t3").hide();
             $(".td3").click(function(){
                 $(".t3").fadeToggle();
             });
         });
       $(function () {
           $(".t4").hide();
           $(".td4").click(function(){
               $(".t4").fadeToggle();
           });
       });
       $(function () {
           $(".t5").hide();
           $(".td5").click(function(){
               $(".t5").fadeToggle();
           });
       });
       $(function () {
           $(".t6").hide();
           $(".td6").click(function(){
               $(".t6").fadeToggle();
           });
       });
       $(function () {
           $(".t7").hide();
           $(".td7").click(function(){
               $(".t7").fadeToggle();
           });
       });
       $(function () {
           $(".t8").hide();
           $(".td8").click(function(){
               $(".t8").fadeToggle();
           });
       });
       $(function () {
           $(".t9").hide();
           $(".td9").click(function(){
               $(".t9").fadeToggle();
           });
       });
       $(function () {
           $(".t10").hide();
           $(".td10").click(function(){
               $(".t10").fadeToggle();
           });
       });
       $(function () {
           $(".t11").hide();
           $(".td11").click(function(){
               $(".t11").fadeToggle();
           });
       });
       $(function () {
           $(".t12").hide();
           $(".td12").click(function(){
               $(".t12").fadeToggle();
           });
       });
       $(function () {
           $(".t13").hide();
           $(".td13").click(function(){
               $(".t13").fadeToggle();
           });
       });
       $(function () {
           $(".t14").hide();
           $(".td14").click(function(){
               $(".t14").fadeToggle();
           });
       });
       $(function () {
           $(".t15").hide();
           $(".td15").click(function(){
               $(".t15").fadeToggle();
           });
       });
    </script>
</head>

<body>
    <div style="font-size: x-large;" align="center">车辆详情</div>
    <div style="margin: 0px 125px">
        <div class="td1">
            <a href="#">
                    <img src="details/基本参数.png"> </a>
        </div>
        <div class="td2">
            <a href="#">
            <img src="details/车身.png"></a>
        </div>
        <div class="td3">
            <a href="#">
                <img src="details/发动机.png"></a>
        </div>
        <div class="td4">
            <a href="#">
            <img src="details/变速箱.png"></a>
        </div>
        <div class="td5">
            <a href="#">
            <img src="details/底盘转向.png"></a>
        </div>
        <div class="td6">
            <a href="#">
            <img src="details/车轮制动.png"></a>
        </div></div>
    <div style="margin: -700px 1000px">
        <div class="td7">
            <a href="#">
            <img src="details/安全装备.png"></a>
        </div>
        <div class="td8">
            <a href="#">
            <img src="details/辅助操控配置.png"></a>
        </div>
        <div class="td9">
            <a href="#">
            <img src="details/外部配置.png"></a>
        </div>
        <div class="td10">
            <a href="#">
            <img src="details/内部配置.png"></a>
        </div>
        <div class="td11">
            <a href="#">
            <img src="details/座椅配置.png"></a>
        </div>
        <div class="td12">
            <a href="#">
            <img src="details/灯光配置.png"></a>
        </div></div>
    <div style="margin: -719px 1180px">
        <div class="td13">
            <a href="#">
            <img src="details/玻璃、后视镜.png"></a>
        </div>
        <div class="td14">
            <a href="#">
            <img src="details/多媒体配置.png"></a>
        </div>
        <div class="td15">
            <a href="#">
            <img src="details/外观、内饰颜色.png"></a>
        </div></div>


    <div class="t1" style="margin: 355px 350px;">
        <img src="details/基本参数详情.png">
    </div>
    <div class="t2" style="margin: 355px 350px;">
        <img src="details/车身详情.png">
    </div>
    <div class="t3" style="margin: 355px 350px;">
        <img src="details/发动机详情.png">
    </div>
    <div class="t4" style="margin: 355px 350px;">
        <img src="details/变速箱详情.png">
    </div>
    <div class="t5" style="margin: 355px 350px;">
        <img src="details/底盘转向详情.png">
    </div>
    <div class="t6" style="margin: 355px 350px;">
        <img src="details/车轮制动详情.png">
    </div>
    <div class="t7" style="margin: 355px 350px;">
        <img src="details/安全装备详情.png">
    </div>
    <div class="t8" style="margin: 355px 350px;">
        <img src="details/辅助操控配置详情.png">
    </div>
    <div class="t9" style="margin: 355px 350px;">
        <img src="details/外部配置详情.png">
    </div>
    <div class="t10" style="margin: 355px 350px;">
        <img src="details/内部配置详情.png">
    </div>
    <div class="t11" style="margin: 355px 350px;">
        <img src="details/座椅配置详情.png">
    </div>
    <div class="t12" style="margin: 355px 350px;">
        <img src="details/灯光配置详情.png">
    </div>
    <div class="t13" style="margin: 355px 350px;">
        <img src="details/玻璃、后视镜详情.png">
    </div>
    <div class="t14" style="margin: 355px 350px;">
        <img src="details/多媒体配置详情.png">
    </div>
    <div class="t15" style="margin: 355px 350px;">
        <img src="details/外观、内饰颜色详情.png">
    </div>
</body>

</html>
