<%--
  Created by IntelliJ IDEA.
  User: 肖淑琴
  Date: 2018/6/7
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>服务保障</title>
    <style type="text/css">
        #heading{
            padding-top: 30px;
            height: 200px;
            line-height: 30px;
            text-align: center;
        }
        .linian{
            height: 550px;
            background-color: #ece9e9;
        }
        .foot{
            width: 200px;
            height: 30px;
            text-align: center;
            font-size: 25px;
            color: #ece9e9;
            text-decoration: none;
        }
        .foot a{
            text-decoration: none;
        }
        .foot a:hover{
            color: red;
        }
        .hea1{
            width: 360px;
            height: 450px;
            margin-top: 50px;
            margin-left: 40px;
            float: left;
            overflow: hidden;
            background-color:#FFFFFF;
        }
        .t{
            height: 250px;
            background-color: #FFFFFF;
        }
        .t1{
            height: 240px;
            background-image: url("img/help1.png");
            background-size: 100% 100%;
        }
        .t1:hover{
            height: 250px;
            width: 400px;
            overflow: hidden;
        }
        .t2{
            height: 240px;
            background-image: url("img/help2.png");
            background-size: 100% 100%;
        }
        .t2:hover{
            height: 250px;
            width: 400px;
            overflow: hidden;
        }
        .t3{
            height: 240px;
            background-image: url("img/help3.png");
            background-size: 100% 100%;
        }
        .t3:hover{
            height: 250px;
            width: 400px;
            overflow: hidden;
        }
        .txt{
            width: 300px;
            margin-left: 30px;
            font-size: 14px;
            line-height: 20px;
        }
        .txt h4{
            text-align: center;
            font-size: 20px;
            color: #9b9b9b;
        }
    </style>
    <script type="text/javascript" src="cars/js/jquery-3.0.0.min.js" charset="utf-8">

    </script>
</head>
<body>
  <div id="heading">
      <div class="foot"><a href="hello"><< TO BACK</a></div>
    <h1 style="font-size: 25px">服务理念</h1>
    “主动智能专属”是我们对客户的服务宗旨<br/>
    将车联网、移动互联、APP、透明车间等先进的智联技术运用到客户服务中，彰显品牌严谨而先进的服务理念
  </div>
  <div class="linian">
    <div class="hea1">
        <div class="t">
            <div class="t1"></div>
        </div>
        <div class="txt">
           <h4>主动</h4>
            变被动服务为主动服务，在客户用车生涯内，为客户提供全周期关爱提醒和主动保养预约；
            通过移动服务站、上门服务、卫星店等服务形态的有机结合，为客户提供主动、便捷的维修服务。
        </div>
    </div>
      <div class="hea1">
          <div class="t">
              <div class="t2"></div>
          </div>
          <div class="txt">
              <h4>智能</h4>
              通过TSP智能检测，实现车辆维修预先提醒；开展透明服务工程，实现价格透明、时间透明、过程透明，
              通过覆盖全服务过程的透明车间系统，以及配件物流在线查询，让用户感受到透明、可视的服务体验。
          </div>
      </div>
      <div class="hea1">
          <div class="t">
              <div class="t3"></div>
          </div>
          <div class="txt">
              <h4>专属</h4>
              建立管家式服务流程，为客户提供“管家式”服务；推行维修代步服务，节省客户维修时间；开展星光服务，
              实施24小时值守服务；开展“1+N”服务关爱活动；在全国范围内提供365天*24小时的全天候紧急援助。
          </div>
      </div>
  </div>

</body>
</html>
