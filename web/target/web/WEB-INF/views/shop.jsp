<%--
  Created by IntelliJ IDEA.
  User: 肖淑琴
  Date: 2018/6/4
  Time: 8:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>购物车结算</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="renderer" content="webkit">
    <!--<![endif]-->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <title>在线购</title>
    <script type="text/javascript" src="cars/js/jquery-3.0.0.min.js" charset="utf-8"></script>
    <style type="text/css">
        #data{
            width: 1230px;
            text-align: center;
            vertical-align:middle
        }
      table
        {
            border-collapse:collapse;
        }
        /*table,tr
        {
            border: 1px solid rgba(250,150,50,0.8);
        }*/

        #data th{
            height: 40px;
            font-size: 18px;
            background: #d80f37;
            color: #ffffff;
        }
        .texts *{
            display:inline-block;
            vertical-align:middle;
        }
        .texts img{
            width: 150px;
            height: 100px;
        }
        td a{
            text-decoration: none;
        }
        .tfoot{
            font-size: 20px;
        }
        .box{
            width: 100px;
            height: 40px;
            margin-left: 50px;
            color: #ffffff;
            font-size: 20px;
            line-height: 40px;
            text-align: center;
            background-color: #d80f37;
        }

    </style>
</head>
<body>
<table id="data">
    <thead>
    <tr>
        <th><input type="checkbox" id="AllCheck"/>选中</th>
        <th>商品名称</th>
        <th>单价(/万元)</th>
        <th>数量(/辆)</th>
        <th>小计(/万元)</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <tr class="cars">
        <td><input type="checkbox" name="goodsCheck"/></td>
        <td class="texts"><img src="img/05735806966811523.jpg"><a href="hello">奇骏 2017款 2.0L CVT 2WD 舒适版</a></td>
        <td class="goodsPrice">40</td>
        <td>
            <button type="button" class="minus">-</button>
            <input type="text" class="am-num-text" value="1" />
            <button type="button" class="plus">+</button>
        </td>
        <td class="totalPrice"></td>
        <td><a href="#" >删除</a></td>
    </tr>
    <tr class="cars">
        <td><input type="checkbox" name="goodsCheck"/></td>
        <td class="texts"><img src="img/05735808394790536.jpg"><a href="hello"> 轩逸 2017款 2.0L CVT 2WD 舒适版</a></td>
        <td class="goodsPrice">23</td>
        <td>
            <button type="button" class="minus">-</button>
            <input type="text" class="am-num-text" value="1" />
            <button type="button" class="plus">+</button>
        </td>
        <td class="totalPrice"></td>
        <td><a href="#" >删除</a></td>
    </tr>
    <tr class="cars">
        <td><input type="checkbox" name="goodsCheck"/></td>
        <td class="texts"><img src="img/05735808099656290.jpg"><a href="hello">奇骏 2017款 2.0L CVT 2WD 舒适版</a></td>
        <td class="goodsPrice">42</td>
        <td>
            <button type="button" class="minus">-</button>
            <input type="text" class="am-num-text" value="1" />
            <button type="button" class="plus">+</button>
        </td>
        <td class="totalPrice"></td>
        <td><a href="#" >删除</a></td>
    </tr>
    <tr class="cars">
        <td><input type="checkbox" name="goodsCheck"/></td>
        <td class="texts"><img src="img/05735807134348497.jpg"><a href="hello">天籁 2017款 2.0L CVT 2WD 舒适版</a></td>
        <td class="goodsPrice">58</td>
        <td>
            <button type="button" class="minus">-</button>
            <input type="text" class="am-num-text" value="1" />
            <button type="button" class="plus">+</button>
        </td>
        <td class="totalPrice"></td>
        <td><a href="#" >删除</a></td>
    </tr>
    <tr class="cars">
        <td><input type="checkbox" name="goodsCheck"/></td>
        <td class="texts"><img src="img/05735807884088565.jpg"><a href="hello">途达 2017款 2.0L CVT 2WD 舒适版</a></td>
        <td class="goodsPrice">11</td>
        <td>
            <button type="button" class="minus">-</button>
            <input type="text" class="am-num-text" value="1" />
            <button type="button" class="plus">+</button>
        </td>
        <td class="totalPrice"></td>
        <td><a href="#" >删除</a></td>
    </tr>
    </tbody>
    <tr>
        <td colspan="4"></td>
        <td colspan="2" class="tfoot">总计:&nbsp;&nbsp;&nbsp;<span class="AllTotal"></span>&nbsp;&nbsp;&nbsp;万元</td>
    </tr>
    <tr>
        <td colspan="4"></td>
        <td colspan="2">
            <div class="box" onclick="sub()">点击购买</div>
        </td>
    </tr>
</table>
<script>
    mon();
    function mon(){
        $(".goodsPrice").each(function(index,element){/*element代表当前元素  */
            //获取一个商品的单价
            var price = $(this).html();//获取每列单价
            var num = $(this).next().find(".am-num-text").val();//获取每一列的数量
            $(this).next().next().html(price*num);//关联三段td

        });
    }
    /* 减去商品数量，最小值为1 */
    $(".minus").click(function(){
        var s = $(this).next().val();//获取图片-后的input值
        if(s>1){
            $(this).next().val(1);
        }
        mon();//函数回调，重新计算价格
        res();
    });
    /* 向上累加商品数量 */
    $(".plus").click(function(){
        var s = parseInt($(this).prev().val());//prev获取同胞元素
        $(this).prev().val(s+1);
        mon();//函数回调，重新计算价格
        res();
    });



    /* 实现复选框与总价关联 */
    $("input[name='goodsCheck']").click(function(){
        if(!$(this).attr("checked")){
            $(this).attr("checked",true);
        }else{
            $(this).attr("checked",false);
             var ress = $(".AllTotal").html();
            //查找每个段落包含.cart_td_7类的父元素
            var r = $(this).parent().find(".totalPrice").html();
            $(".AllTotal").html(ress-r);

        }
        res();
    });
    /* 计算总价 */
    function res(){
        var sum = 0;
        $("input[name='goodsCheck']").each(function(index,element){
            if($(this).attr("checked")){
                var s = $(this).parent().parent().find(".totalPrice").html();
                sum+=parseInt(s);
            }
        });
        $(".AllTotal").html(sum);
    }
    // 点击全选按钮
    $("#AllCheck").click(function() {
        if($("#AllCheck").is(":checked")){
            regAll();
        }else{
            regDAll();
        }
        /* var names = document.getElementsByName("goodsCheck");
         for(var i = 0;i<names.length;i++){
         names[i].checked=document.getElementById("AllCheck").checked;

         }*/
        res();
    });
    /*全选  */
    function regAll(){
        var sum = 0;
        $("input[name='goodsCheck']").each(function(index,element){
            $(this).attr("checked",true);
            var s = $(this).parent().parent().find(".totalPrice").html();
            sum+=parseInt(s);
        });
        $(".AllTotal").html(sum);
    }
    /*全不选  */
    function regDAll(){
        $("input[name='goodsCheck']").each(function(index,element){
            if($(this).attr("checked",true)){
                $(this).attr("checked",false);
            }

        });
        $(".AllTotal").html(0);
    }
    
    $("input[name='goodsCheck']").click(function () {
        var len = $("input[name='goodsCheck']").length;
        var checkedLen= $("input[name='goodsCheck']:checked").length;
        if(len == checkedLen){
            $('#AllCheck').prop('checked',true);
        }else {
            $('#AllCheck').prop('checked', false);
        }
        res();
    })

    // 使用事业委托，删除节点
    $("table").on("click","a",function(){
        $(this).parents("tr").remove();
    })

    /* /!* 当鼠标移到表格时，当前一行背景变色 *!/*/

     $(document).ready(function(){
           $("#data tr td").mouseover(function(){
           $(this).parent().find("td").css("background-color","#d5f4fe");
     });

     })

    /* /!* 当鼠标移动时，离开的那一行背景恢复 *!/*/

     $(document).ready(function(){
        $("#data tr td").mouseout(function(){
        var bgc = $(this).parent().attr("bg");
        $(this).parent().find("td").css("background-color",bgc);
     });

     })


   $(document).ready(function(){

        var color="#ffeab3";

       /* $("#data tr:even td").css("background-color",color);  //改变偶数行背景色*/

        /*/!* 把背景色保存到属性中 *!/*/

        $("#data tr:even").attr("bg","#fff");

        $("#data tr:odd").attr("bg","#fff");

    })
    function sub() {
        alert("购买成功！");
    }

</script>
</body>
</html>
