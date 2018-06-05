<%--
  Created by IntelliJ IDEA.
  User: 七年
  Date: 2018/6/5
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<html>

<head>

    <style>
        .zixunshi {
            width: 110px;
            margin-left: 600px;
        }

        .name {
            width: 100px;
            margin-left: 600px;
        }
    </style>

    <title>For Rent</title>
    <!---css--->
    <link href="${pageContext.request.contextPath}/user/ke/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="${pageContext.request.contextPath}/user/ke/css/style.css" rel='stylesheet' type='text/css' />
    <!---css--->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Real Space Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript">
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!---js--->
    <script src="${pageContext.request.contextPath}/user/ke/js/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/user/ke/js/bootstrap.js"></script>
    <!---js--->
    <!---fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
    <!---fonts-->
    <!--三级联动-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/user/ke/jQueryDistpicker20160621/dist/distpicker.data.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/user/ke/jQueryDistpicker20160621/dist/distpicker.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/user/ke/jQueryDistpicker20160621/js/main.js"></script>
    <!-- FlexSlider -->
    <script src="${pageContext.request.contextPath}/user/ke/js/jquery.flexslider.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/flexslider.css" type="text/css" media="screen" />
    <script>
        // Can also be used with $(document).ready()
        $(window).load(function() {
            $('.flexslider').flexslider({
                animation: "slide",
                controlNav: "thumbnails"
            });
        });
    </script>
    <!-- //FlexSlider-->

</head>

<body>
<!---header--->
<div class="header-section">
    <div class="container">
        <div class="head-top">
            <div class="social-icon">
                <a href="#"><i class="icon"></i></a>
                <a href="#"><i class="icon1"></i></a>
                <a href="#"><i class="icon2"></i></a>
                <a href="#"><i class="icon3"></i></a>
                <a href="#"><i class="icon4"></i></a>
            </div>
            <div class="email">
                <ul>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>咨询热线：400-606-2695 </li>
                    <li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i>
                        <a href="#" data-toggle="modal" data-target="#myModal">登录</a>
                    </li>
                    <li><i class="glyphicon glyphicon-lock" aria-hidden="true"></i>
                        <a href="#" data-toggle="modal" data-target="#myModal1">注册</a>
                    </li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <nav class="navbar navbar-default">
            <!---Brand and toggle get grouped for better mobile display--->
            <div class="navbar-header">

                <div class="navbar-brand">
                    <h1><a href="index.html"><span>华&nbsp;&nbsp;&nbsp;&nbsp;居</span></a></h1>
                </div>

            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="index.html">&nbsp;&nbsp;&nbsp;&nbsp;首&nbsp;页&nbsp;&nbsp;&nbsp;&nbsp;<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="dropdown">
                        <a href="forrent.html">&nbsp;&nbsp;&nbsp;&nbsp;楼盘查询&nbsp;&nbsp;&nbsp;&nbsp;</a>

                    </li>

                    <li>
                        <a href="blog.html">&nbsp;&nbsp;&nbsp;&nbsp;咨询师&nbsp;&nbsp;&nbsp;&nbsp;</a>
                    </li>
                    <li>
                        <a href="contact.html">&nbsp;&nbsp;&nbsp;&nbsp;联系我们&nbsp;&nbsp;&nbsp;&nbsp;</a>
                    </li>
                    <!--  <li><a href="contact.html">&nbsp;&nbsp;&nbsp;&nbsp;团队介绍&nbsp;&nbsp;&nbsp;&nbsp;</a></li>-->
                </ul>

                <div class="clearfix"></div>
            </div>
        </nav>
    </div>
</div>
<!---header--->
<!---banner--->
<div class="banner-section">
    <div class="container">
        <h2 style="font-family: 'Open Sans', sans-serif">楼&nbsp;盘&nbsp;查&nbsp;询</h2>
    </div>
</div>
<!---banner--->
<div class="content">
    <div class="properties-section">
        <div class="container">
            <div class="properties-grids">
                <div class="col-md-9 forsales-left">
                    <div class="forsale">
                        <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                            <ul id="myTab" class="nav nav-tabs left-tab" role="tablist">
                                <li role="presentation" class="active">
                                    <a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">全部楼盘
                                    </a>
                                </li>
                                <li role="presentation">
                                    <a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">优惠楼盘</a>
                                </li>
                            </ul>
                            <div id="myTabContent" class="tab-content">
                                <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
                                    <div class="forsale-grids">

                                        <h4><a href="#" style="font-family: 'Open Sans', sans-serif" >华丽家族太湖汇景</a></h4>

                                        <div class="forsale1">

                                            <div class="forsale-left">
                                                <a href="#"><img src="images/p6.jpg" class="img-responsive" alt="/"></a>
                                            </div>
                                            <div class="forsale-right">

                                                <h5 style="font-family: 'Open Sans', sans-serif">最低13,000元每平方米起
                                                    &nbsp;&nbsp; &nbsp;&nbsp;   &nbsp;&nbsp;  &nbsp;&nbsp;
                                                    参考总价121-182万元
                                                    &nbsp;&nbsp; &nbsp;&nbsp;   &nbsp;&nbsp;  &nbsp;&nbsp;
                                                    <button style="border:none; background-color: #F60;">在售</button>
                                                </h5>

                                                <p>[吴中-环太湖]花丽路一号（香山中学向南...<br/>
                                                    <a href="地图链接"> 查看地图</a><br/> 2018.05.24
                                                    <a href="楼盘详情页面">太湖汇景93-140平房源在售</a>
                                                </p>

                                                <a href="楼盘详情页面" class="button4">更多详情</a>

                                            </div>

                                            <div class="zixunshi">
                                                <img style="border-radius:300px; width:90px; margin-top:-130px" src="images/a3.jpg" href="" />

                                                <p style="margin-top:-175px;font-size:13px;margin-left:15px">
                                                    <a>李安|咨询</a>
                                                </p>
                                            </div>

                                            <div class="clearfix"></div>
                                            <ul>
                                                <li>
                                                    <a href="楼盘详情页面">紧凑实用</a>
                                                </li>
                                                <li>
                                                    <a href="楼盘详情页面">幼儿园</a>
                                                </li>
                                                <li>
                                                    <a href="楼盘详情页面">公园地产</a>
                                                </li>
                                                <li>
                                                    <a href="楼盘详情页面">向他咨询</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="forsale-grids">

                                        <h4><a href="#" style="font-family: 'Open Sans', sans-serif" >华丽家族太湖汇景</a></h4>

                                        <div class="forsale1">

                                            <div class="forsale-left">
                                                <a href="#"><img src="images/p6.jpg" class="img-responsive" alt="/"></a>
                                            </div>
                                            <div class="forsale-right">

                                                <h5 style="font-family: 'Open Sans', sans-serif">最低13,000元每平方米起
                                                    &nbsp;&nbsp; &nbsp;&nbsp;   &nbsp;&nbsp;  &nbsp;&nbsp;
                                                    参考总价121-182万元
                                                    &nbsp;&nbsp; &nbsp;&nbsp;   &nbsp;&nbsp;  &nbsp;&nbsp;
                                                    <button style="border:none; background-color: #F60;">在售</button>
                                                </h5>

                                                <p>[吴中-环太湖]花丽路一号（香山中学向南...<br/>
                                                    <a href="地图链接"> 查看地图</a><br/> 2018.05.24
                                                    <a href="楼盘详情页面">太湖汇景93-140平房源在售</a>
                                                </p>

                                                <a href="楼盘详情页面" class="button4">更多详情</a>

                                            </div>

                                            <div class="zixunshi">
                                                <img style="border-radius:300px; width:90px; margin-top:-130px" src="images/a3.jpg" href="" />

                                                <p style="margin-top:-175px;font-size:13px;margin-left:15px">
                                                    <a>李安|咨询</a>
                                                </p>
                                            </div>

                                            <div class="clearfix"></div>
                                            <ul>
                                                <li>
                                                    <a href="楼盘详情页面">紧凑实用</a>
                                                </li>
                                                <li>
                                                    <a href="楼盘详情页面">幼儿园</a>
                                                </li>
                                                <li>
                                                    <a href="楼盘详情页面">公园地产</a>
                                                </li>
                                                <li>
                                                    <a href="楼盘详情页面">向他咨询</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="forsale-grids">

                                        <h4><a href="#" style="font-family: 'Open Sans', sans-serif" >华丽家族太湖汇景</a></h4>

                                        <div class="forsale1">

                                            <div class="forsale-left">
                                                <a href="#"><img src="images/p6.jpg" class="img-responsive" alt="/"></a>
                                            </div>
                                            <div class="forsale-right">

                                                <h5 style="font-family: 'Open Sans', sans-serif">最低13,000元每平方米起
                                                    &nbsp;&nbsp; &nbsp;&nbsp;   &nbsp;&nbsp;  &nbsp;&nbsp;
                                                    参考总价121-182万元
                                                    &nbsp;&nbsp; &nbsp;&nbsp;   &nbsp;&nbsp;  &nbsp;&nbsp;
                                                    <button style="border:none; background-color: #F60;">在售</button>
                                                </h5>

                                                <p>[吴中-环太湖]花丽路一号（香山中学向南...<br/>
                                                    <a href="地图链接"> 查看地图</a><br/> 2018.05.24
                                                    <a href="楼盘详情页面">太湖汇景93-140平房源在售</a>
                                                </p>

                                                <a href="楼盘详情页面" class="button4">更多详情</a>

                                            </div>

                                            <div class="zixunshi">
                                                <img style="border-radius:300px; width:90px; margin-top:-130px" src="images/a3.jpg" href="" />

                                                <p style="margin-top:-175px;font-size:13px;margin-left:15px">
                                                    <a>李安|咨询</a>
                                                </p>
                                            </div>

                                            <div class="clearfix"></div>
                                            <ul>
                                                <li>
                                                    <a href="楼盘详情页面">紧凑实用</a>
                                                </li>
                                                <li>
                                                    <a href="楼盘详情页面">幼儿园</a>
                                                </li>
                                                <li>
                                                    <a href="楼盘详情页面">公园地产</a>
                                                </li>
                                                <li>
                                                    <a href="楼盘详情页面">向他咨询</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="forsale-grids">

                                        <h4><a href="#" style="font-family: 'Open Sans', sans-serif" >华丽家族太湖汇景</a></h4>

                                        <div class="forsale1">

                                            <div class="forsale-left">
                                                <a href="#"><img src="images/p6.jpg" class="img-responsive" alt="/"></a>
                                            </div>
                                            <div class="forsale-right">

                                                <h5 style="font-family: 'Open Sans', sans-serif">最低13,000元每平方米起
                                                    &nbsp;&nbsp; &nbsp;&nbsp;   &nbsp;&nbsp;  &nbsp;&nbsp;
                                                    参考总价121-182万元
                                                    &nbsp;&nbsp; &nbsp;&nbsp;   &nbsp;&nbsp;  &nbsp;&nbsp;
                                                    <button style="border:none; background-color: #F60;">在售</button>
                                                </h5>

                                                <p>[吴中-环太湖]花丽路一号（香山中学向南...<br/>
                                                    <a href="地图链接"> 查看地图</a><br/> 2018.05.24
                                                    <a href="楼盘详情页面">太湖汇景93-140平房源在售</a>
                                                </p>

                                                <a href="楼盘详情页面" class="button4">更多详情</a>

                                            </div>

                                            <div class="zixunshi">
                                                <img style="border-radius:300px; width:90px; margin-top:-130px" src="images/a3.jpg" href="" />

                                                <p style="margin-top:-175px;font-size:13px;margin-left:15px">
                                                    <a>李安|咨询</a>
                                                </p>
                                            </div>

                                            <div class="clearfix"></div>
                                            <ul>
                                                <li>
                                                    <a href="楼盘详情页面">紧凑实用</a>
                                                </li>
                                                <li>
                                                    <a href="楼盘详情页面">幼儿园</a>
                                                </li>
                                                <li>
                                                    <a href="楼盘详情页面">公园地产</a>
                                                </li>
                                                <li>
                                                    <a href="楼盘详情页面">向他咨询</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="forsale-grids">
                                        <h4><a href="#" style="font-family: 'Open Sans', sans-serif" >华丽家族太湖汇景</a></h4>
                                        <div class="forsale1">
                                            <div class="forsale-left">
                                                <a href="#"><img src="images/p3.jpg" class="img-responsive" alt="/"></a>
                                            </div>
                                            <div class="forsale-right">
                                                <h5 style="font-family: 'Open Sans', sans-serif">最低13,000元每平方米起
                                                    &nbsp;&nbsp; &nbsp;&nbsp;   &nbsp;&nbsp;  &nbsp;&nbsp;
                                                    参考总价121-182万元
                                                    &nbsp;&nbsp; &nbsp;&nbsp;   &nbsp;&nbsp;  &nbsp;&nbsp;
                                                    <button style="border:none; background-color: #F60;">在售</button>
                                                </h5>
                                                <p>[吴中-环太湖]花丽路一号（香山中学向南...<br/>
                                                    <a href="地图链接"> 查看地图</a><br/> 2018.05.24
                                                    <a href="楼盘详情页面">太湖汇景93-140平房源在售</a>
                                                </p>

                                                <a href="楼盘详情页面" class="button4">更多详情</a>
                                            </div>

                                            <div class="zixunshi">
                                                <img style="border-radius:300px; width:90px; margin-top:-130px" src="images/a3.jpg" href="" />

                                                <p style="margin-top:-175px;font-size:13px;margin-left:15px">
                                                    <a>李安|咨询</a>
                                                </p>
                                            </div>

                                            <div class="clearfix"></div>
                                            <ul>
                                                <li>
                                                    <a href="楼盘详情页面">紧凑实用</a>
                                                </li>
                                                <li>
                                                    <a href="楼盘详情页面">幼儿园</a>
                                                </li>
                                                <li>
                                                    <a href="楼盘详情页面">公园地产</a>
                                                </li>
                                                <li>
                                                    <a href="楼盘详情页面">向他咨询</a>
                                                </li>

                                            </ul>
                                        </div>
                                    </div>

                                    <div class="col-md-offset-4">
                                        <nav>
                                            <ul class="pagination pagination-lg">
                                                <li>
                                                    <a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a>
                                                </li>
                                                <li>
                                                    <a href="#">1</a>
                                                </li>
                                                <li>
                                                    <a href="#">2</a>
                                                </li>
                                                <li>
                                                    <a href="#">3</a>
                                                </li>
                                                <li>
                                                    <a href="#">...</a>
                                                </li>
                                                <li>
                                                    <a href="#">6</a>
                                                </li>
                                                <li>
                                                    <a href="#">7</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Next"><span aria-hidden="true">»</span></a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>

                                </div>

                                <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
                                    <div class="forsale-grids1">
                                        <div class="col-md-4 forsale-grid1">
                                            <img src="images/s7.jpg" class="img-responsive" alt="/">
                                            <div class="sale-info">
                                                <span>For Rent</span>
                                            </div>
                                            <h5>114㎡, 升龙楼盘</h5>
                                            <p>朝向南, 在地铁附近,…
                                                <a href="#">Know More</a>
                                            </p>
                                            <h6>￥13222/㎡ </h6>
                                        </div>
                                        <div class="col-md-4 forsale-grid1">
                                            <img src="images/s5.jpg" class="img-responsive" alt="/">
                                            <div class="sale-info">
                                                <span>For Rent</span>
                                            </div>
                                            <h5>114㎡, 升龙楼盘</h5>
                                            <p>朝向南, 在地铁附近,…
                                                <a href="#">Know More</a>
                                            </p>
                                            <h6>￥13222/㎡ </h6>
                                        </div>
                                        <div class="col-md-4 forsale-grid1">
                                            <img src="images/s6.jpg" class="img-responsive" alt="/">
                                            <div class="sale-info">
                                                <span>For Rent</span>
                                            </div>
                                            <h5>114㎡, 升龙楼盘</h5>
                                            <p>朝向南, 在地铁附近,…
                                                <a href="#">Know More</a>
                                            </p>
                                            <h6>￥13222/㎡ </h6>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="forsale-grids1">
                                        <div class="col-md-4 forsale-grid1">
                                            <img src="images/s4.jpg" class="img-responsive" alt="/">
                                            <div class="sale-info">
                                                <span>For Rent</span>
                                            </div>
                                            <h5 style="font-family: 'Open Sans', sans-serif">114㎡, 升龙楼盘</h5>
                                            <p>朝向南, 在地铁附近,…
                                                <a href="#">Know More</a>
                                            </p>
                                            <h6>￥13222/㎡ </h6>
                                        </div>
                                        <div class="col-md-4 forsale-grid1">
                                            <img src="images/s2.jpg" class="img-responsive" alt="/">
                                            <div class="sale-info">
                                                <span>For Rent</span>
                                            </div>
                                            <h5>114㎡, 升龙楼盘</h5>
                                            <p>朝向南, 在地铁附近,…
                                                <a href="#">Know More</a>
                                            </p>
                                            <h6>￥13222/㎡ </h6>
                                        </div>
                                        <div class="col-md-4 forsale-grid1">
                                            <img src="images/s3.jpg" class="img-responsive" alt="/">
                                            <div class="sale-info">
                                                <span>For Rent</span>
                                            </div>
                                            <h5>114㎡, 升龙楼盘</h5>
                                            <p>朝向南, 在地铁附近,…
                                                <a href="#">Know More</a>
                                            </p>
                                            <h6>￥13222/㎡ </h6>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="forsale-grids1">
                                        <div class="col-md-4 forsale-grid1">
                                            <img src="images/s6.jpg" class="img-responsive" alt="/">
                                            <div class="sale-info">
                                                <span>For Rent</span>
                                            </div>
                                            <h5>114㎡, 升龙楼盘</h5>
                                            <p>朝向南, 在地铁附近,…
                                                <a href="#">Know More</a>
                                            </p>
                                            <h6>￥13222/㎡ </h6>
                                        </div>
                                        <div class="col-md-4 forsale-grid1">
                                            <img src="images/s4.jpg" class="img-responsive" alt="/">
                                            <div class="sale-info">
                                                <span>For Rent</span>
                                            </div>
                                            <h5>114㎡, 升龙楼盘</h5>
                                            <p>朝向南, 在地铁附近,…
                                                <a href="#">Know More</a>
                                            </p>
                                            <h6>￥13222/㎡ </h6>
                                        </div>
                                        <div class="col-md-4 forsale-grid1">
                                            <img src="images/s7.jpg" class="img-responsive" alt="/">
                                            <div class="sale-info">
                                                <span>For Rent</span>
                                            </div>
                                            <h5>114㎡, 升龙楼盘</h5>
                                            <p>朝向南, 在地铁附近,…
                                                <a href="#">Know More</a>
                                            </p>
                                            <h6>￥13222/㎡ </h6>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="forsale-grids1">
                                        <div class="col-md-4 forsale-grid1">
                                            <img src="images/s3.jpg" class="img-responsive" alt="/">
                                            <div class="sale-info">
                                                <span>For Rent</span>
                                            </div>
                                            <h5>114㎡, 升龙楼盘</h5>
                                            <p>朝向南, 在地铁附近,…
                                                <a href="#">Know More</a>
                                            </p>
                                            <h6>￥13222/㎡ </h6>
                                        </div>
                                        <div class="col-md-4 forsale-grid1">
                                            <img src="images/s5.jpg" class="img-responsive" alt="/">
                                            <div class="sale-info">
                                                <span>For Rent</span>
                                            </div>
                                            <h5>114㎡, 升龙楼盘</h5>
                                            <p>朝向南, 在地铁附近,…
                                                <a href="#">Know More</a>
                                            </p>
                                            <h6>￥13222/㎡ </h6>
                                        </div>
                                        <div class="col-md-4 forsale-grid1">
                                            <img src="images/s6.jpg" class="img-responsive" alt="/">
                                            <div class="sale-info">
                                                <span>For Rent</span>
                                            </div>
                                            <h5>114㎡, 升龙楼盘</h5>
                                            <p>朝向南, 在地铁附近,…
                                                <a href="#">Know More</a>
                                            </p>
                                            <h6>￥13222/㎡ </h6>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 properties-right">
                    <div class="properties-top">
                        <h4 style="font-family: 'Open Sans', sans-serif">找房</h4>

                        <form action="">
                            <input type="hidden" value="" name="curPage" />
                            <div data-toggle="distpicker">
                                <div class="form-group col-md-12">
                                    <h5>省份</h5>
                                    <label class="sr-only" for="province1">Province</label>
                                    <select class="form-control" id="province1" name="province"></select>
                                </div>
                                <div class="form-group col-md-12">
                                    <h5>城市</h5>
                                    <label class="sr-only" for="city1">City</label>
                                    <select class="form-control" id="city1" name="city"></select>
                                </div>
                                <div class="form-group col-md-12">
                                    <h5>区域</h5>
                                    <label class="sr-only" for="district1" name="district">District</label>
                                    <select class="form-control" id="district1" name="district"></select>
                                </div>
                            </div>
                            <div class="yourplace col-md-12">
                                <h5>开发商</h5>
                                <select class="sel2" name="comid">
                                    <option value="">升龙</option>
                                    <option value="">万达</option>
                                    <option value="">等等</option>
                                </select>
                            </div>
                            <div class="yourplace col-md-12">
                                <h5>户型</h5>
                                <select class="sel2" name="typeid">
                                    <option value="">不限</option>
                                    <option value="">一居</option>
                                    <option value="">二居</option>
                                    <option value="">三居</option>
                                    <option value="">四居</option>
                                    <option value="">五居及以上</option>
                                </select>
                            </div>
                            <div class="yourplace col-md-12">
                                <h5>特色</h5>
                                <select class="sel3" name="character">
                                    <option value="">不限</option>
                                    <option value="">小户型</option>
                                    <option value="">临地铁</option>
                                    <option value="">精装修</option>
                                    <option value="">现房</option>
                                    <option value="">品牌地产</option>
                                </select>
                            </div>
                            <div class="yourplace col-md-6">
                                <h5>类型</h5>
                                <select class="sel2" name="genre">
                                    <option value="">不限</option>
                                    <option value="">住宅</option>
                                    <option value="">别墅</option>
                                    <option value="">商业</option>
                                </select>
                            </div>
                            <div class="col-md-6 yourplace-grid">
                                <h5>总价</h5>
                                <select class="sel3" name="bTotalprice">
                                    <option value="">总价</option>
                                    <option value="">
                                        <100万</option>
                                    <option value="">100-200万</option>
                                    <option value="">200-300万</option>
                                    <option value="">300-500万</option>
                                    <option value="">>500万</option>
                                </select>
                            </div>
                            <div class="clearfix"></div>
                            <div class="yourplace-grids1">
                                <div class="col-md-6 yourplace-grid">
                                    <h5>单价</h5>
                                    <select class="sel3" name="bPerprice">
                                        <option value="">单价</option>
                                        <option value="">
                                            <2万</option>
                                        <option value="">2-3万</option>
                                        <option value="">3-4万</option>
                                        <option value="">4-5万</option>
                                        <option value="">5-6万</option>
                                        <option value="">6-7万</option>
                                        <option value="">7-8万</option>
                                        <option value="">8万及以上</option>
                                    </select>
                                </div>
                                <div class="col-md-6 yourplace-grid">
                                    <h5>面积</h5>
                                    <select class="sel3" name="acreage">
                                        <option value="30-50">30-50</option>
                                        <option value="50-100">50-100</option>
                                        <option value="100-150">100-150</option>
                                        <option value="150">150~</option>
                                    </select>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="search1">
                                <input type="submit" value="查找">
                            </div>
                        </form>
                    </div>

                    <div class="feature">
                        <h4>优惠楼盘</h4>
                        <div class="feature-top">
                            <img src="images/s6.jpg" class="img-responsive" alt="/">
                            <h5>114㎡, 升龙楼盘</h5>
                            <p>朝向南, 在地铁附近,…
                                <a href="#">Know More</a>
                            </p>
                        </div>
                        <div class="feature-top top2">
                            <img src="images/s7.jpg" class="img-responsive" alt="/">
                            <h5>114㎡, 升龙楼盘</h5>
                            <p>朝向南, 在地铁附近,…
                                <a href="#">Know More</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<!---footer--->
<div class="footer-section">
    <div class="container">
        <div class="footer-grids">
            <div class="col-md-3 footer-grid">
                <h4>About Real Homes</h4>
                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
            </div>
            <div class="col-md-3 footer-grid">
                <h4>Recent Posts</h4>
                <ul>
                    <li>
                        <a href="#">Lorem Post With Image Format</a>
                    </li>
                    <li>
                        <a href="#">Example Video Blog Post</a>
                    </li>
                    <li>
                        <a href="#">Example Post With Gallery Post </a>
                    </li>
                    <li>
                        <a href="#">Example Video Blog Post</a>
                    </li>
                    <li>
                        <a href="#">Lorem Post With Image Format</a>
                    </li>
                    <li>
                        <a href="#">Example Video Blog Post</a>
                    </li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid">
                <h4>Useful links</h4>
                <ul>
                    <li>
                        <a href="terms.html">Terms of Use</a>
                    </li>
                    <li>
                        <a href="privacy.html">Privacy Policy</a>
                    </li>
                    <li>
                        <a href="contact.html">Contact Support </a>
                    </li>
                    <li>
                        <a href="agents.html"> All Agents</a>
                    </li>
                    <li>
                        <a href="blog.html">Blog</a>
                    </li>
                    <li>
                        <a href="faqs.html">FAQs</a>
                    </li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid">
                <h4>Get In Touch</h4>
                <p>8901 Marmora Road</p>
                <p>Glasgow, DO4 89GR.</p>
                <p>Freephone : +1 234 567 890</p>
                <p>Telephone : +1 234 567 890</p>
                <p>FAX : + 1 234 567 890</p>
                <p>E-mail :
                    <a href="mailto:example@mail.com"> example@mail.com</a>
                </p>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!---footer--->
<!--copy-->
<div class="copy-section">
    <div class="container">
        <p>Copyright &copy; 2016.Company name All rights reserved.More Templates
            <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from
            <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
        </p>
    </div>
</div>
<!--copy-->
<!-- login -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body real-spa">
                <div class="login-grids">
                    <div class="login">

                        <div class="login-right">
                            <form>
                                <h3>Login</h3>
                                <input type="text" value="Enter your Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your Email';}" required="">
                                <input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
                                <h4><a href="#">Forgot password</a> / <a href="#">Create new password</a></h4>
                                <div class="single-bottom">
                                    <input type="checkbox" id="brand" value="">
                                    <label for="brand"><span></span>Remember Me.</label>
                                </div>
                                <input type="submit" value="Login Now">
                            </form>
                        </div>

                    </div>
                    <p>By logging in you agree to our
                        <a href="#">Terms</a> and
                        <a href="#">Conditions</a> and
                        <a href="#">Privacy Policy</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //login -->
<!-- Register -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body real-spa">
                <div class="login-grids">
                    <div class="login">
                        <div class="login-right">
                            <form>
                                <h3>Register </h3>
                                <input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
                                <input type="text" value="Mobile number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Mobile number';}" required="">
                                <input type="text" value="Email id" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email id';}" required="">
                                <input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">

                                <input type="submit" value="Register Now">
                            </form>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <p>By logging in you agree to our
                        <a href="#">Terms</a> and
                        <a href="#">Conditions</a> and
                        <a href="#">Privacy Policy</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //Register -->
</body>

</html>