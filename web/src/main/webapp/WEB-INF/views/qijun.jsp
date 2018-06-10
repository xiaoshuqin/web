<%--
  Created by IntelliJ IDEA.
  User: 肖淑琴
  Date: 2018/5/29
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path ;
%>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="csrf-token" content="FjT9RkmFVQFEVm2AvlCzm5296u4qDHF40fg0n19i">
    <meta name="keywords" content="东风日产,车巴巴,东风启辰" />
    <meta name="description" content="车巴巴是东风日产自营电商平台,为您提供官方最新的东风日产报价优惠,4S店信息及贷款方案.买日产,买东风启辰？就上东风日产车巴巴电商平台！" />
    <title>奇骏</title>

    <style>
        @font-face {
            font-family: 'cbb-iconfont';
            src: url('//s.chebaba.com/font/cbb/1.2.7/iconfont.eot'); /* IE9*/
            src: url('//s.chebaba.com/font/cbb/1.2.7/iconfont.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */
            url('//s.chebaba.com/font/cbb/1.2.7/iconfont.woff') format('woff'), /* chrome、firefox */
            url('//s.chebaba.com/font/cbb/1.2.7/iconfont.ttf') format('truetype'), /* chrome、firefox、opera、Safari, Android, iOS 4.2+*/
            url('//s.chebaba.com/font/cbb/1.2.7/iconfont.svg#iconfont') format('svg'); /* iOS 4.1- */
        }
        @font-face {
            font-family: 'iconfont';
            src: url('//s.chebaba.com/font/cbb/1.2.7/iconfont.eot'); /* IE9*/
            src: url('//s.chebaba.com/font/cbb/1.2.7/iconfont.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */
            url('//s.chebaba.com/font/cbb/1.2.7/iconfont.woff') format('woff'), /* chrome、firefox */
            url('//s.chebaba.com/font/cbb/1.2.7/iconfont.ttf') format('truetype'), /* chrome、firefox、opera、Safari, Android, iOS 4.2+*/
            url('//s.chebaba.com/font/cbb/1.2.7/iconfont.svg#iconfont') format('svg'); /* iOS 4.1- */
        }
    </style>
    <link rel="stylesheet" type="text/css" href="cars/css/base.css"></link>
    <script>
        var cbbGlobal = {
            staticPath:'//jt.chebaba.com/default/pc',
            provinceName:'北京',
            provinceId:'1',
            cityName:'北京',
            cityId:'36',
            countyName:'东城区',
            countyId:'37',
            isLocateConfig:0,   //是否显示城市
            homeUrl:'https://www.chebaba.com'
        }
        var $isVenucia=0
        //城市
        var gCityOps = {
            url:'https://www.chebaba.com/rest/index',
            param:{
                act:'rest',
                op: 'single_filter',
                data:{
                    "callClass": "area",
                    "callName": "getAreasByParentId",
                    "callParam":{
                        provinceId:0
                    }
                }
            },
        }
        var globalUrl = {
            defaultUserPortrait:'//jt.chebaba.com/build/default/pc/images/default-user-portrait-e0d4da5fd5.jpg',
            login:"//user.chebaba.com/user/api/auth/login",
            logout:"//user.chebaba.com/user/api/auth/logout",
            register:"//user.chebaba.com/user/api/auth/register",
            home:"//user.chebaba.com/user/index.html",
            memberMessage:"/home/index.php?act=member_message&amp;op=message",
            memberOrder:"/dsmp/index.php?act=member_order",
            memberConsult:"/dsmp/index.php?act=member_consult&amp;op=my_consult",
            memberFavoriteGoods:"/dsmp/index.php?act=member_favorite_goods&amp;op=fglist",
            memberVoucher:"/home/index.php?act=member_voucher",
            memberPoints:"/home/index.php?act=member_points"
        }

        var microTime = {
            microtime: '0.11124400 1527477111'
        }
    </script>
    <script src="cars/js/jquery.min.js" crossorigin="anonymous" ></script><script src="cars/js/lazyload.js" crossorigin="anonymous" ></script><script src="//s.chebaba.com/3rd/art-dialog/0.6.5/dialog-min.js" crossorigin="anonymous" ></script>
    <script src="cars/js/public-select.min.js" crossorigin="anonymous" ></script><script src="cars/js/jquery-flexslider.js" crossorigin="anonymous" ></script>
    <script src="cars/js/es5-shim.js" crossorigin="anonymous" ></script>
    <script src="cars/js/dndc.js" crossorigin="anonymous" ></script>

    <script src='cars/js/key-name-334eb87517.js'></script>
    <script src='cars/js/base-5d832bad0c.js'></script>
</head>
<div id="J-header-ad" class="header-ad">
    <div class="Head-ad-system ad" data-ad-id="67"></div>
</div>
<script>
    $(function(){
        $.ajaxSetup({
            type: "POST",
            dataType: 'JSON',
            beforeSend:function (xhr) {
                xhr.setRequestHeader("X-CSRF-TOKEN", $('meta[name="csrf-token"]').attr('content'))
            }
        });
        //广告
        var headAdShowOps = {
            url:'https://www.chebaba.com/rest/index',
            param:{
                act:'rest',
                op: 'single_filter',
                data:{
                    "callClass": "adv",
                    "callName": "findAdByAdPositionIdList",
                    "callParam": {
                        "positionIds":[67],
                        "type": 1,
                        "cityId":"36"
                    }
                }
            }
        }
        //广告
        CBB.adSystem('.Head-ad-system',headAdShowOps)
    })
</script>

<body>
<div class="global-header">
    <div class="top">
        <div class="mod-1200 clearfix">

            <div class="fl area-l">

                <div id="J-header-city-wrap" class="fl location m-dropdown-select" v-cloak></div>
                <div class="fl separator"></div>
                <div id="J-header-login" class="fl login-info"></div>

            </div>
            <div class="fr area-r">


                <ul class="quick-menu">
                    <li id="J-header-shop"></li>
                    <li>
                        关注公众号
                        <i class="cbb cbb-caret-down"></i>
                        <div class="contact-dropdown u-dropdown">
                            <div class="pic global-icon" onclick="NTKF.im_openInPageChat('kf_9255_1463036048814')"></div>
                        </div>
                    </li>
                    <li>
                        站点导航
                        <i class="cbb-iconfont">&#xe63c;</i>
                        <div class="base-dropdown u-dropdown">
                            <a href="http://wenda.chebaba.com?from=cbb-v3.0-right" target="_blank">有问必答</a>
                        </div>
                    </li>
                </ul>

            </div>
        </div>
    </div>
    <div class="mod-1200">
        <div class="middle clearfix">
            <a class="logo fl" href="https://www.chebaba.com"><img src='img/logo_new.png'/></a>
            <div class="search fl">
                <div class="clearfix">
                    <input id="search" type="text" name="search" autocomplete="off" class="fl s-input" placeholder="" value="">
                    <label class="s-placeholder" style="color: rgb(102, 102, 102); visibility: visible;">轩逸</label>
                    <a class="fl submit-btn" id="submit-bt"><i class="iconfont">&#xe63a;</i></a>
                </div>
                <ul class="hot-query clearfix">
                    <li><a href="http://wenda.chebaba.com/?from=cbb-v3.0" class="active" target="_blank">有问必答</a></li>
                    <li><a href="javascript:;" class="hot-series">轩逸</a></li>
                    <li><a href="javascript:;" class="hot-series">奇骏</a></li>
                    <li><a href="javascript:;" class="hot-series">逍客</a></li>
                    <li><a href="javascript:;" class="hot-series">蓝鸟</a></li>
                    <li><a href="javascript:;" class="hot-series">T70</a></li>
                    <li><a href="javascript:;" class="hot-series">D60</a></li>
                    <li><a href="javascript:;" class="hot-series">M50V</a></li>
                    <li><a href="javascript:;" class="hot-series">T90</a></li>
                </ul>
            </div>
            <div class="cart" style="display: none">
                <div class="global-icon icon">
                    <span class="num">5</span>
                </div>
                <span class="txt">购物车结算</span>
                <i class="cbb cbb-caret-down"></i>
                <div class="cart-dropdown u-dropdown">
                    <div class="hd clearfix">
                        <h1>最新加入车型</h1>
                        <ul>
                            <li>
                                <a class="pic" href="" target="_blank"><img src='img/car-18b830e69e.jpg'/></a>
                                <div class="info">
                                    <a class="title" href="" target="_blank">全新轩逸 1.8 XV CVT 智尊版</a>
                                    <p>¥9.50万</p>
                                </div>
                                <a class="delete" href="javascript:;">删除</a>
                            </li>
                            <li>
                                <a class="pic" href="" target="_blank"><img src='img/car-18b830e69e.jpg'/></a>
                                <div class="info">
                                    <a class="title" href="" target="_blank">全新轩逸 1.8 XV CVT 智尊版</a>
                                    <p>¥9.50万</p>
                                </div>
                                <a class="delete" href="javascript:;">删除</a>
                            </li>
                            <li>
                                <a class="pic" href="" target="_blank"><img src='img/car-18b830e69e.jpg'/></a>
                                <div class="info">
                                    <a class="title" href="" target="_blank">全新轩逸 1.8 XV CVT 智尊版</a>
                                    <p>¥9.50万</p>
                                </div>
                                <a class="delete" href="javascript:;">删除</a>
                            </li>
                            <li>
                                <a class="pic" href="" target="_blank"><img src='img/car-18b830e69e.jpg'/></a>
                                <div class="info">
                                    <a class="title" href="" target="_blank">全新轩逸 1.8 XV CVT 智尊版</a>
                                    <p>¥9.50万</p>
                                </div>
                                <a class="delete" href="javascript:;">删除</a>
                            </li>
                            <li>
                                <a class="pic" href="" target="_blank"><img src='img/car-18b830e69e.jpg'/></a>
                                <div class="info">
                                    <a class="title" href="" target="_blank">全新轩逸 1.8 XV CVT 智尊版</a>
                                    <p>¥9.50万</p>
                                </div>
                                <a class="delete" href="javascript:;">删除</a>
                            </li>
                        </ul>
                        <div class="total">
                            共<span class="num">5</span>种商品 总计金额：<strong>￥25346.00</strong>
                        </div>
                        <a class="u-btn-deepred fr" href="javascript:;">去结算</a>
                        <!-- <div class="tips">您的购物车中暂无商品、赶快选择心爱的商品吧！</div> -->
                    </div>
                    <div class="bd">
                        <h1>最近浏览车型</h1>
                        <ul class="clearfix">
                            <li>
                                <a class="pic" href="#" target="_blank"><img src='img/car-18b830e69e.jpg'/></a>
                                <a class="name" href="#">全新轩逸</a>
                            </li>
                            <li>
                                <a class="pic" href="#" target="_blank"><img src='img/car-18b830e69e.jpg'/></a>
                                <a class="name" href="#">全新轩逸</a>
                            </li>
                            <li class="last">
                                <a class="pic" href="#" target="_blank"><img src='img/car-18b830e69e.jpg'/></a>
                                <a class="name" href="#">全新轩逸</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
<div class="tab-agrs">
    <h3>车型参数</h3>
    <div class="args">

        <ul class="btn-tab-args-left">


            <li class="btn-tab-args active" title="基本参数">
                <span class="cbb cbb-th-large"></span>
                <strong>基本参数</strong>
                <em></em>
            </li>


            <li class="btn-tab-args" title="车身">
                <span class="cbb cbb-th-large"></span>
                <strong>车身</strong>
                <em></em>
            </li>



            <li class="btn-tab-args" title="发动机">
                <span class="cbb cbb-th-large"></span>
                <strong>发动机</strong>
                <em></em>
            </li>



            <li class="btn-tab-args" title="变速箱">
                <span class="cbb cbb-th-large"></span>
                <strong>变速箱</strong>
                <em></em>
            </li>



            <li class="btn-tab-args" title="底盘转向">
                <span class="cbb cbb-th-large"></span>
                <strong>底盘转向</strong>
                <em></em>
            </li>



            <li class="btn-tab-args" title="车轮制动">
                <span class="cbb cbb-th-large"></span>
                <strong>车轮制动</strong>
                <em></em>
            </li>












        </ul>

        <div class="btn-tab-args-right">

            <ul class="c1">

                <li class="btn-tab-args" title="安全装备">
                    <span class="cbb cbb-th-large"></span>
                    <strong>安全装备</strong>
                    <em></em>
                </li>


                <li class="btn-tab-args" title="辅助操控配置">
                    <span class="cbb cbb-th-large"></span>
                    <strong>辅助操控配置</strong>
                    <em></em>
                </li>


                <li class="btn-tab-args" title="外部配置">
                    <span class="cbb cbb-th-large"></span>
                    <strong>外部配置</strong>
                    <em></em>
                </li>


                <li class="btn-tab-args" title="内部配置">
                    <span class="cbb cbb-th-large"></span>
                    <strong>内部配置</strong>
                    <em></em>
                </li>


                <li class="btn-tab-args" title="座椅配置">
                    <span class="cbb cbb-th-large"></span>
                    <strong>座椅配置</strong>
                    <em></em>
                </li>


                <li class="btn-tab-args" title="灯光配置">
                    <span class="cbb cbb-th-large"></span>
                    <strong>灯光配置</strong>
                    <em></em>
                </li>


            </ul>

            <ul class="c2">

                <li class="btn-tab-args" title="玻璃/后视镜">
                    <span class="cbb cbb-th-large"></span>
                    <strong>玻璃/后视镜</strong>
                    <em></em>
                </li>


                <li class="btn-tab-args" title="多媒体配置">
                    <span class="cbb cbb-th-large"></span>
                    <strong>多媒体配置</strong>
                    <em></em>
                </li>


                <li class="btn-tab-args" title="外观/内饰颜色">
                    <span class="cbb cbb-th-large"></span>
                    <strong>外观/内饰颜色</strong>
                    <em></em>
                </li>

            </ul>

            <div class="clearfix"></div>
        </div>

        <div class="tab-args-c" >
            <table>

                <tr>
                    <td class="key">级别</td>

                    <td>紧凑型SUV</td>                        </tr>


                <tr>
                    <td class="key">发动机</td>

                    <td>2.0L 150马力 L4</td>                        </tr>


                <tr>
                    <td class="key">变速箱</td>

                    <td>CVT无级变速(7速手自一体)</td>                        </tr>


                <tr>
                    <td class="key">长*宽*高(mm)</td>

                    <td>4675*1820*1722</td>                        </tr>


                <tr>
                    <td class="key">车身结构</td>

                    <td>5门5座SUV</td>                        </tr>


                <tr>
                    <td class="key">最高车速(km/h)</td>

                    <td>183</td>                        </tr>


                <tr>
                    <td class="key">0-100km/h加速(s)</td>

                    <td>11.7</td>                        </tr>


                <tr>
                    <td class="key">最小转弯半径(m)</td>

                    <td>5.6</td>                        </tr>


                <tr>
                    <td class="key">90km/h等速油耗(L/100km)</td>

                    <td>5.3</td>                        </tr>


                <tr>
                    <td class="key">综合工况油耗(L/100km)</td>

                    <td>7.1</td>                        </tr>


                <tr>
                    <td class="key">整车质保</td>

                    <td>三年或10万公里</td>                        </tr>


            </table>
        </div>



        <div class="tab-args-c"  style="display: none;">
            <table>

                <tr>
                    <td class="key">长(mm)</td>

                    <td>4675</td>                        </tr>


                <tr>
                    <td class="key">宽(mm)</td>

                    <td>1820</td>                        </tr>


                <tr>
                    <td class="key">高(mm)</td>

                    <td>1722</td>                        </tr>


                <tr>
                    <td class="key">轴距(mm)</td>

                    <td>2706</td>                        </tr>


                <tr>
                    <td class="key">前/后轮距(mm)</td>

                    <td>1575/1570</td>                        </tr>


                <tr>
                    <td class="key">最小空载离地间隙(mm)</td>

                    <td>208</td>                        </tr>


                <tr>
                    <td class="key">车门数(个)</td>

                    <td>5</td>                        </tr>


                <tr>
                    <td class="key">座位数(个)</td>

                    <td>5</td>                        </tr>


                <tr>
                    <td class="key">行李厢容积(L)</td>

                    <td>700</td>                        </tr>


                <tr>
                    <td class="key">整备质量(kg)</td>

                    <td>1470</td>                        </tr>


            </table>
        </div>



        <div class="tab-args-c"  style="display: none;">
            <table>

                <tr>
                    <td class="key">发动机型号</td>

                    <td>MR20</td>                        </tr>


                <tr>
                    <td class="key">排量(cc)</td>

                    <td>1997</td>                        </tr>


                <tr>
                    <td class="key">进气形式</td>

                    <td>自然吸气</td>                        </tr>


                <tr>
                    <td class="key">气缸排列形式</td>

                    <td>L</td>                        </tr>


                <tr>
                    <td class="key">气缸数(个)</td>

                    <td>4</td>                        </tr>


                <tr>
                    <td class="key">压缩比</td>

                    <td>11.2</td>                        </tr>


                <tr>
                    <td class="key">最大马力(Ps)</td>

                    <td>150</td>                        </tr>


                <tr>
                    <td class="key">额定功率(kw/rpm)</td>

                    <td>110/6000</td>                        </tr>


                <tr>
                    <td class="key">最大扭矩(N&middot;m/rpm)</td>

                    <td>200/4400</td>                        </tr>


                <tr>
                    <td class="key">发动机特有技术</td>

                    <td>带双C-VTC连续可变气门正时智能控制系统</td>                        </tr>


                <tr>
                    <td class="key">燃料形式</td>

                    <td>汽油</td>                        </tr>


                <tr>
                    <td class="key">燃油标号</td>

                    <td>92号</td>                        </tr>


                <tr>
                    <td class="key">环保标准</td>

                    <td>国V(北京地区符合京5标准)</td>                        </tr>


            </table>
        </div>



        <div class="tab-args-c"  style="display: none;">
            <table>

                <tr>
                    <td class="key">变速箱名称</td>

                    <td>7速手自一体CVT无级变速箱</td>                        </tr>


                <tr>
                    <td class="key">挡位个数</td>

                    <td>7</td>                        </tr>


                <tr>
                    <td class="key">变速箱类型</td>

                    <td>无级变速箱(CVT)</td>                        </tr>


            </table>
        </div>



        <div class="tab-args-c"  style="display: none;">
            <table>

                <tr>
                    <td class="key">驱动方式</td>

                    <td>前轮驱动</td>                        </tr>


                <tr>
                    <td class="key">前悬架类型</td>

                    <td>带横向稳定杆的麦弗逊式独立前悬挂</td>                        </tr>


                <tr>
                    <td class="key">后悬架类型</td>

                    <td>带横向稳定杆的复合多连杆式独立后悬挂</td>                        </tr>


                <tr>
                    <td class="key">转向系统</td>

                    <td>EPS电子随速感应智能转向系统</td>                        </tr>


                <tr>
                    <td class="key">车体结构</td>

                    <td>承载式</td>                        </tr>


            </table>
        </div>



        <div class="tab-args-c"  style="display: none;">
            <table>

                <tr>
                    <td class="key">前制动器类型</td>

                    <td>通风盘式</td>                        </tr>


                <tr>
                    <td class="key">后制动器类型</td>

                    <td>通风盘式</td>                        </tr>


                <tr>
                    <td class="key">驻车制动类型</td>

                    <td>脚刹</td>                        </tr>


                <tr>
                    <td class="key">轮辋类型</td>

                    <td>●铝合金</td>                        </tr>


                <tr>
                    <td class="key">轮胎规格</td>

                    <td>225/65 R17</td>                        </tr>


                <tr>
                    <td class="key">备胎规格</td>

                    <td>非全尺寸</td>                        </tr>


            </table>
        </div>



        <div class="tab-args-c"  style="display: none;">
            <table>

                <tr>
                    <td class="key">ZONE BODY区域车身</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">高刚性强抗扭力车身</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">前席双辅助安全气囊</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">前席侧辅助安全气囊</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">窗帘式辅助安全气囊</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">前席安全带未系提醒</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">前排三点式预紧式安全带</td>

                    <td>●高度可调</td>                        </tr>


                <tr>
                    <td class="key">后席三点式安全带</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">胎压监测系统</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">ISOFIX儿童座椅接口</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">ABS制动防抱死系统</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">EBD电子制动力分配系统</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">BA辅助刹车制动系统</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">TCS牵引力控制系统</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">VDC车辆行驶动态控制系统</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">MOD移动物体&amp;行人探测预警系统</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">IEB预碰撞智能刹车</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">BSW变道盲区预警系统</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">LDW车道偏离预警系统</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">ILI车道偏离智能修正</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">CTA倒车车侧预警系统</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">EAPM油门误踩智能刹车辅助系统</td>

                    <td>-</td>                        </tr>


            </table>
        </div>



        <div class="tab-args-c"  style="display: none;">
            <table>

                <tr>
                    <td class="key">巡航系统</td>

                    <td>●ASCD定速巡航(带方向盘快捷键)</td>                        </tr>


                <tr>
                    <td class="key">倒车雷达</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">倒车影像监视系统</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">AVM全景式智能监控影像</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">HSA上坡起步辅助系统</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">HDC陡坡缓降控制系统</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">车速感应自动上锁</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">IRC智能行驶舒适控制</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">ITC智能循迹控制</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">iEB智能发动机制动</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">YMC动态扭矩控制系统</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">B-LSD电子制动差速锁</td>

                    <td>●</td>                        </tr>


            </table>
        </div>



        <div class="tab-args-c"  style="display: none;">
            <table>

                <tr>
                    <td class="key">车顶行李架</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">天窗</td>

                    <td>●EYE-MAX通览式全景天窗</td>                        </tr>


                <tr>
                    <td class="key">后车顶扰流板</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">智能遥控钥匙</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">一键式启动</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">智能感应式全电动尾门</td>

                    <td>-</td>                        </tr>


            </table>
        </div>



        <div class="tab-args-c"  style="display: none;">
            <table>

                <tr>
                    <td class="key">多功能方向盘</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">真皮方向盘</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">方向盘加热</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">ECO DRIVE节能驾驶</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">行车电脑</td>

                    <td>●(多功能彩色)</td>                        </tr>


                <tr>
                    <td class="key">车外温度显示</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">3D平视信息显示系统</td>

                    <td>●5英寸</td>                        </tr>


                <tr>
                    <td class="key">电动空调</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">双区独立控制自动空调</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">后排出风口</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">发动机防盗系统</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">车内中控锁</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">儿童安全门锁</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">12V电源插口</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">顶置高级眼镜盒</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">杯托</td>

                    <td>●制冷/保暖</td>                        </tr>


                <tr>
                    <td class="key">可伸缩行李厢遮物帘</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">组合式行李厢托盘</td>

                    <td>●</td>                        </tr>


            </table>
        </div>



        <div class="tab-args-c"  style="display: none;">
            <table>

                <tr>
                    <td class="key">座椅材质</td>

                    <td>●高级皮</td>                        </tr>


                <tr>
                    <td class="key">驾驶席座椅调节</td>

                    <td>●手动6向</td>                        </tr>


                <tr>
                    <td class="key">副驾驶座椅调节</td>

                    <td>●手动4向</td>                        </tr>


                <tr>
                    <td class="key">座椅加热</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">第二排靠背角度调节</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">第二排前后滑动座椅</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">第二排座椅放倒方式</td>

                    <td>●6:4分割</td>                        </tr>


                <tr>
                    <td class="key">可折叠第三排座椅</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">后排座椅放平功能</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">前席中央扶手</td>

                    <td>●(带储物盒)</td>                        </tr>


                <tr>
                    <td class="key">后席中央扶手</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">后排杯架</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">前席座椅背部储物</td>

                    <td>●</td>                        </tr>


            </table>
        </div>



        <div class="tab-args-c"  style="display: none;">
            <table>

                <tr>
                    <td class="key">前大灯</td>

                    <td>●卤素</td>                        </tr>


                <tr>
                    <td class="key">Follow me home(大灯延时关闭)</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">前大灯自动开闭系统</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">大灯高度调节</td>

                    <td>●手动调节</td>                        </tr>


                <tr>
                    <td class="key">日间行车灯</td>

                    <td>●LED</td>                        </tr>


                <tr>
                    <td class="key">转向信号灯</td>

                    <td>●(带轻触急闪功能)</td>                        </tr>


                <tr>
                    <td class="key">前后雾灯</td>

                    <td>前●/后●</td>                        </tr>


                <tr>
                    <td class="key">示廓灯</td>

                    <td>●LED</td>                        </tr>


                <tr>
                    <td class="key">LED组合尾灯</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">LED高位刹车灯</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">室内照明灯</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">地图灯</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">行李厢照明灯</td>

                    <td>●</td>                        </tr>


            </table>
        </div>



        <div class="tab-args-c"  style="display: none;">
            <table>

                <tr>
                    <td class="key">四门电动车窗</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">驾驶席一键升降防夹车窗</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">电动调节车外后视镜</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">车外后视镜电动折叠</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">车外后视镜电加热</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">车内防眩目内后视镜</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">带化妆镜遮阳板</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">速度感应式前雨刮器</td>

                    <td>●</td>                        </tr>


                <tr>
                    <td class="key">后雨刮</td>

                    <td>●</td>                        </tr>


            </table>
        </div>



        <div class="tab-args-c"  style="display: none;">
            <table>

                <tr>
                    <td class="key">智能手机互联系统</td>

                    <td>●(支持ios和安卓)</td>                        </tr>


                <tr>
                    <td class="key">中控台彩色显示屏</td>

                    <td>●7英寸触控屏</td>                        </tr>


                <tr>
                    <td class="key">车载蓝牙免提系统</td>

                    <td>●(带方向盘快捷键)</td>                        </tr>


                <tr>
                    <td class="key">单碟高保真CD+Audio音响系统</td>

                    <td>-</td>                        </tr>


                <tr>
                    <td class="key">高保真音响系统</td>

                    <td>●(带AUX/IPOD/USB多音源输入系统)</td>                        </tr>


                <tr>
                    <td class="key">外接音源接口</td>

                    <td>USB+AUX+IPOD</td>                        </tr>


                <tr>
                    <td class="key">扬声器数量</td>

                    <td>6喇叭</td>                        </tr>


            </table>
        </div>



        <div class="tab-args-c"  style="display: none;">
            <table>

                <tr>
                    <td class="key">外观颜色</td>

                    <td><span style="background: #981312" title="宝石红"></span><span style="background: #0c284e" title="极光蓝"></span><span style="background: #111111" title="曜石黑"></span><span style="background: #da8a4f" title="炫风橙"></span><span style="background: #e7e1db" title="月光银"></span><span style="background: #895e40" title="琥珀金"></span><span style="background: #fdfbf3" title="珠光白"></span></td>                        </tr>


                <tr>
                    <td class="key">内饰颜色</td>

                    <td><span style="background: #ede1d1" title="浅内饰"></span><span style="background: #000000" title="深内饰"></span></td>                        </tr>


            </table>
        </div>
        <div class="clearfix"></div>
    </div>
    <p>注： ● 为标配装备&nbsp;&nbsp;&nbsp;&nbsp;○ 为选装装备 &nbsp;&nbsp;&nbsp;&nbsp;- 无此项装备&nbsp;&nbsp;&nbsp;&nbsp;本公司保留规格配备变更或停用之权利，图中规格如与实车不符以实车为准。
    </p>
</div>
<div class="m-col-product-4">
    <h4>热销车推荐</h4>
    <div id="J-hot-car-ul" class="hotcar-wrap"></div>
    <div class="clear"></div>
</div>
<div class="m-col-article-4">
    <h4>评测</h4>
    <a href="http://cms.chebaba.com/list/mtsc?from=cbb" target="_blank" class="more">查看更多&gt;&gt;</a>
    <div class="cleafix"></div>
    <div id="J-article-test" class="bd clearfix" style="top:60px"></div>
</div>
<script>
    //车系文章
    var seriesArticleOps = {
        url:'https://www.chebaba.com/rest/index',
        param:{
            act:'rest',
            op: 'RestfulInvoke',
            data:{
                "method": "GET",
                "path": "cms/contents-slug",
                "condition": {
                    "series_id":21,
                    "slug" : "mtsc",
                    "current_page":1,
                    "page_num":8
                }
            }
        }
    }
    //文章测评
    setTimeout(function(){
        $('#J-article-test').waterfall({
            itemCls: 'item',
            colWidth: 285,
            fitWidthBooleantrue:true,
            loadingMsg:'<a href="" class="car-test-more">加载更多</a>',
            // loadingMsg:'',
            gutterWidth: 20,
            gutterHeight: 20,
            checkImagesLoaded: false,
            dataType: 'json',
            params:{},
            minCol:4,
            maxCol:4,
            path: function(page) {
                seriesArticleOps.param.data.condition.curPage = page;
                return seriesArticleOps.url+'?act=rest&op=RestfulInvoke&data='+JSON.stringify(seriesArticleOps.param.data);
            },
            callbacks:{
                renderData:function(data,dataType){
                    if(seriesArticleOps.param.data.condition.curPage <= 1 ){

                        var articleArr = [];
                        $(data.message.datas).each(function(i,e){
                            var voUrl = e['articleJumpUrl'],
                                aritle_time = e['articlePublishTime'] ? e['articlePublishTime'].split(" ") : '';
                            hasPic = '';


                            if(e['articleImage']){
                                hasPic = "<dt class=\"pic u-opacity\"><a href=\"" + voUrl + "\" target=\"_blank\">\n<img src=\"" + e['articleImage'] + "\"/></a></dt>";
                            }

                            articleArr.push("<dl class=\"item\">\n                                            " + hasPic + "\n                                            <dd class=\"title\"><a href=\"" + voUrl + "\" target=\"_blank\">" + e['articleTitle'] + "</a></dd>\n                                            <dd class=\"txt\">" + e['articleAbstract'] + "</dd>\n                                            <dd class=\"bottom clearfix\">\n                                                <div class=\"fl source\">来源：" + e['articleOrigin'] + "</div>\n                                                <div class=\"fr date\">" + aritle_time[0] + "</div>\n                                            </dd>\n                                        </dl>");
                        })

                        $('#J-article-test').append(articleArr.join(''));

                    }else{
                        $('#J-article-test').waterfall('pause')
                    }

                }
            }
        });

    },100);
</script>


</div>
</body>
</html>
