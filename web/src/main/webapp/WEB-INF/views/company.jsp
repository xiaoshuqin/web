<%--
  Created by IntelliJ IDEA.
  User: 肖淑琴
  Date: 2018/6/7
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>企业介绍</title>
    <style type="text/css">
        #comp{
            height: 820px;
            background-color: #ece9e9;
        }
        .tu1{
            height: 400px;
            padding-top: 60px;
            margin-left: 40px;
        }
        .tu2{
            height: 400px;
            margin-left: 40px;
        }
        .t1{
            width: 500px;
            height: 300px;
            float: left;
            margin: auto;
            background-image: url("img/company1.png");
            background-size: 100% 100%;
        }
        .txt1{
            vertical-align:text-bottom;
            float: left;
            width: 620px;
            height: 300px;
            line-height: 30px;
            margin-left: 40px;
            font-size: 14px;
        }
        .txt2{
            width: 450px;
            height: 300px;
            float: left;
            margin-left: 30px;
            background-image: url("img/company2.png");
            background-size: 100% 100%;
        }
        .t2{
            vertical-align:text-bottom;
            float: left;
            width: 670px;
            height: 350px;
            line-height: 30px;
            margin-left: 20px;
            font-size: 14px;
        }
        .news{
            margin-top: 40px;
            height: 500px;
        }
        .t3{
            width: 4px;
            height: 30px;
            float: left;
            background-color: #d80f37;
            margin: 20px 20px;

        }
        .t31{
            width: 900px;
            height: 50px;
            float: left;
            padding-top: 20px;
            font-size: 20px;
        }
        .t32{
            width: 200px;
            height: 50px;
            float: right;
            padding-top: 20px;
            text-align: right;
            margin-right: 40px;
            font-size: 20px;
        }
        .t32 a{
            text-decoration: none;
        }
        .t32 a:hover{
            color: red;
        }
        .t4{
            height: 420px;
            padding: 40px 20px;
        }
        .t5{
            width: 280px;
            height: 320px;
            margin-left: 20px;
            background-color: #ece9e9;
            float: left;
        }
        .t51{
            height: 140px;
        }
        .t52{
            height: 220px;
            width: 240px;
            margin-left: 20px;
            margin-top: 20px;
            font-size: 14px;
            color: #9b9b9b;
            line-height: 28px;
        }
        .t52 a{
            font-size: 16px;
            color: #000000;
        }
        .t52 a:hover{
            color: red;
        }
    </style>
</head>
<body>
<div id="comp">
    <div class="tu1">
        <div class="t1"></div>
        <div class="txt1">
                <h3>公司信息<br/>COMPANY INTRODUCTION</h3>
            某汽车集团是一家致力于为全球中坚阶层提供突破豪华界限的智能产品及生态服务的汽车公司。<br/>
            1900年，汽车狂人XX创建XX品牌，其以革命性的技术，全面的产品谱系、超过当时X国60%的出口
            份额，一度成为X国第三大汽车生产制造商，是世界汽车工业奠基人之一。<br/>
            公司总部位于XX国XX市，主要负责战略运营、资本运营、知识资产运营、采购管理、智联/新能源、
            设计、工程测试、质量管控等核心业务，并特别在XX国、XX国、XX国、XX国、XX国等国家建立分公司。
            集团有来自全球12个国家，16个汽车品牌，以及世界优质互联网公司的2300多名的工程技术人员。
        </div>
    </div>
    <div class="tu2">
        <div class="t2">
            <h3>企业愿景<br/>ULRICH WALKER</h3>
            某汽车品牌是XX国历史上杰出的汽车品牌之一，曾在历史上留下浓墨重彩的一笔，多款经典车型也一直为行业所称道，成就了XX国汽车工业的传奇。<br/>
            诚然，我们的品牌发展任重道远，但某汽车集团有着坚实的基础、雄厚的资金支持和清晰的发展愿景与战略。
            这是一个充满无限机遇的品牌，我们必将致力于通过优秀的设计、优质的质量以及可持续的创新科技，不断满足消费者的需求。<br/>
            基于“突破豪华界限的XX国智能汽车品牌”的全新定位，我们将秉持XX国工业4.0理念，整合工程、设计、全球验证等领域的优势资源，结合全球布局、市场战略，打造XX系高品质产品，创建智能化用车生活生态圈。
        </div>
        <div class="txt2"></div>
    </div>
</div>
<div class="news">
    <div class="t3"></div>
      <div class="t31">媒体中心</div>
    <div class="t32"><a href="hello"> 更多>></a></div>
    <div class="t4">
        <div class="t5">
            <div class="t51" style="background-image: url(img/tu1.png);background-size: 100%"></div>
            <div class="t52">
              <a style="text-align: center">勇者的游戏 某车队XX感受过...</a><br/>
                XX拉力赛赛程已过大半，XX驾驶BX7赛车前八赛段总排名第13名。XX激战南美赛场，与团队紧密合作，无惧XX拉力赛...
            </div>
        </div>
        <div class="t5">
            <div class="t51" style="background-image: url(img/tu2.png);background-size: 100%"></div>
            <div class="t52">
                <a style="text-align: center">驱冰雪·无畏惧 XX冰雪体验即...</a><br/>
                XX拉力赛赛程已过大半，XX驾驶BX7赛车前八赛段总排名第13名。XX激战南美赛场，与团队紧密合作，无惧XX拉力赛...
            </div>
        </div>
        <div class="t5">
            <div class="t51" style="background-image: url(img/tu3.png);background-size: 100%"></div>
            <div class="t52">
                <a style="text-align: center">首赛段取得第三名 BX7 XX拉...</a><br/>
                XX拉力赛赛程已过大半，XX驾驶BX7赛车前八赛段总排名第13名。XX激战南美赛场，与团队紧密合作，无惧XX拉力赛...
            </div>
        </div>
        <div class="t5">
            <div class="t51" style="background-image: url(img/tu4.png);background-size: 100%"></div>
            <div class="t52">
                <a style="text-align: center">BX5 25T GDI以57.3分荣获C-...</a><br/>
                XX拉力赛赛程已过大半，XX驾驶BX7赛车前八赛段总排名第13名。XX激战南美赛场，与团队紧密合作，无惧XX拉力赛...
            </div>
        </div>
    </div>
</div>
</body>
</html>
