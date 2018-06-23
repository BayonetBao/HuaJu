<%--
  Created by IntelliJ IDEA.
  User: 狂妄小子
  Date: 2018/6/1
  Time: 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String imgPath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + "/upImage" + "/";
%>
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

        .success {
            color: #40ff1f;
        }

        .error {
            color: #ff0d20;
        }
    </style>
    <title>楼盘主页</title>
    <!---css--->
    <script src="${pageContext.request.contextPath}/user/bao/js/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/user/bao/js/bootstrap.js"></script>
    <link href="${pageContext.request.contextPath}/user/bao/css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <link href="${pageContext.request.contextPath}/user/bao/css/style.css" rel='stylesheet' type='text/css'/>
    <!---css--->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Real Space Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!---js--->
    <script type="text/javascript"
            src="http://api.map.baidu.com/api?v=2.0&ak=NHeOezVjNdxk5C1Q4i14l4SkfTeMdpLp"></script>
    <script src="${pageContext.request.contextPath}/user/bao/js/unslider.min.js"></script>
    <!---js--->
    <!---fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
    <!---fonts-->
    <script src="${pageContext.request.contextPath}/user/bao/js/responsiveslides.min.js"></script>
    <script>
        $(function () {
            $("#slider").responsiveSlides({
                auto: true,
                nav: false,
                speed: 500,
                namespace: "callbacks",
                pager: true,
            });
        });
    </script>
    <link href="${pageContext.request.contextPath}/user/bao/css/owl.carousel.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/user/bao/js/owl.carousel.js"></script>
    <script>
        $(document).ready(function () {
            $("#owl-demo").owlCarousel({
                items: 1,
                lazyLoad: true,
                autoPlay: true,
                navigation: false,
                navigationText: false,
                pagination: true,
            });
        });
    </script>
    <style>

        html, body {
            font-family: Segoe, "Segoe UI", "DejaVu Sans", "Trebuchet MS", Verdana, sans-serif;
        }

        ul, ol {
            padding: 0;
        }

        .banner {
            position: relative;
            overflow: auto;
            margin: 10px auto;
            text-align: center;
        }

        .banner li {
            list-style: none;
        }

        .banner ul li {
            float: left;
        }

        #b04 {
            width: 520px;
        }

        #b04 .dots {
            position: absolute;
            left: 0;
            right: 0;
            bottom: 10px;
        }

        #b04 .dots li {
            display: inline-block;

            width: 10px;

            height: 10px;

            margin: 0 4px;

            text-indent: -999em;

            border: 2px solid #fff;

            border-radius: 6px;

            cursor: pointer;

            opacity: .4;

            -webkit-transition: background .5s, opacity .5s;

            -moz-transition: background .5s, opacity .5s;

            transition: background .5s, opacity .5s;

        }

        #b04 .dots li.active {

            background: #fff;

            opacity: 1;

        }

        #b04 .arrow {
            position: absolute;
            top: 200px;
        }

        #b04 #al {
            left: 15px;
        }

        #b04 #ar {
            right: 15px;
        }

        li {
            list-style: none;
        }

        .map li:hover {
            background-color: #FAA43D;
        }

        a:visited {
            color: black;
        }

        .bgcolor {
            background-color: #FAA43D;
        }

    </style>
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
                    <li><i class="glyphicon glyphicon-phone" aria-hidden="true"></i>咨询热线：400-606-2695</li>
                    <c:if test="${not empty sessionScope.user}">
                        <c:if test="${sessionScope.userType==1}">
                            <li><i class="glyphicon glyphicon-user" aria-hidden="true"></i>普通用户&nbsp;&nbsp;&nbsp;<a
                                    style="color: #28ffef" href="">${user.uname}</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                                    href="${pageContext.request.contextPath}/exit.action"><i title="退出"
                                                                                             class="glyphicon glyphicon-log-out"
                                                                                             aria-hidden="true"></i></a>
                            </li>
                        </c:if>
                        <c:if test="${sessionScope.userType==2}">
                            <li><i class="glyphicon glyphicon-user" aria-hidden="true"></i>开发商用户&nbsp;&nbsp;&nbsp;<a
                                    style="color: #28ffef"
                                    href="${pageContext.request.contextPath}/developer/index.jsp">${user.comuname}</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                                    href="${pageContext.request.contextPath}/exit.action"><i title="退出"
                                                                                             class="glyphicon glyphicon-log-out"
                                                                                             aria-hidden="true"></i></a>
                            </li>
                        </c:if>
                        <c:if test="${sessionScope.userType==3}">
                            <li><i class="glyphicon glyphicon-user" aria-hidden="true"></i>咨询师用户&nbsp;&nbsp;&nbsp;<a
                                    style="color: #28ffef"
                                    href="${pageContext.request.contextPath}/developer/index.jsp">${user.ctaname}</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                                    href="${pageContext.request.contextPath}/exit.action"><i title="退出"
                                                                                             class="glyphicon glyphicon-log-out"
                                                                                             aria-hidden="true"></i></a>
                            </li>
                        </c:if>

                    </c:if>
                    <c:if test="${empty sessionScope.user}">
                        <li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a href="#" data-toggle="modal"
                                                                                            data-target="#myModal">登录</a>
                        </li>
                        <li><i class="glyphicon glyphicon-lock" aria-hidden="true"></i><a href="#" data-toggle="modal"
                                                                                          data-target="#myModal1">注册</a>
                        </li>
                    </c:if>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <nav class="navbar navbar-default">
            <!---Brand and toggle get grouped for better mobile display--->
            <div class="navbar-header">

                <div class="navbar-brand">
                    <h1>
                        <a href="${pageContext.request.contextPath}/build/index.action"><span>华&nbsp;&nbsp;&nbsp;&nbsp;居</span></a>
                    </h1>
                </div>

            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="${pageContext.request.contextPath}/build/index.action">&nbsp;&nbsp;&nbsp;&nbsp;首&nbsp;页&nbsp;&nbsp;&nbsp;&nbsp;<span
                            class="sr-only">(current)</span></a></li>
                    <li class="dropdown">
                        <a href="${pageContext.request.contextPath}/build/selectBuildQueryPojo.action">&nbsp;&nbsp;&nbsp;&nbsp;楼盘查询&nbsp;&nbsp;&nbsp;&nbsp;</a>

                    </li>

                    <li><a href="${pageContext.request.contextPath}/cta/ctalist.action">&nbsp;&nbsp;&nbsp;&nbsp;咨询师&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                    <li><a href="contact.html">&nbsp;&nbsp;&nbsp;&nbsp;联系我们&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                    <!--  <li><a href="contact.html">&nbsp;&nbsp;&nbsp;&nbsp;团队介绍&nbsp;&nbsp;&nbsp;&nbsp;</a></li>-->
                </ul>

                <div class="clearfix"></div>
            </div>
        </nav>
    </div>
</div>
<div class="banner-section">
    <div class="container">
        <a href="${pageContext.request.contextPath}/build/selectBuildQueryPojo.action"><h2 style="font-family: 'Open Sans', sans-serif">楼&nbsp;盘&nbsp;查&nbsp;询</h2></a>
    </div>
</div>
<!---banner--->

<div style="margin:10px auto;width:1140px;">
    位置 ：华居>楼盘详情>${build.building}<p/>
    <p style="margin-top:20px;">
        <b style="font-size:30px; color: #222">${build.building}
        </b>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <span style=" color:#0cf;border:solid #0CF 1px;padding:0px 8px; font-size:9px;">${build.conditions}</span>
        <c:if test="${not empty build.charactere}">
            <c:set var="character" value="${build.charactere}"></c:set>
            <c:set var="characters" value='${fn:split(character, "，")}'></c:set>
            <c:forEach items="${characters}" var="characterss">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <span style=" color:#0cf;border:solid #0CF 1px;padding:0px 8px; font-size:9px;">${characterss}</span>
            </c:forEach>
        </c:if>
    </p>
</div>
<nav class="navbar-default" style="background-color:#f8f8f8;overflow:auto; min-width:1125px;">

    <!-- Collect the nav links, forms, and other content for toggling -->

    <ul class="nav navbar-nav" style="float:none; margin:0px auto; width:1120px;">

        <li style="margin-right:57px; margin-left:16px;" class="active"><a style="color: #0b0b0b;" href="${pageContext.request.contextPath}/build/buildIndex.action?buildingid=${build.buildingid}">楼盘主页<span
                class="sr-only">(current)</span></a></li>
        <li style="margin-right:57px;"><a
                href="${pageContext.request.contextPath}/build/buildDetailInfo.action?buildingid=${build.buildingid}"
                style="color: #0b0b0b;">楼盘详情</a></li>
        <li style="margin-right:57px;"><a
                href="${pageContext.request.contextPath}/comment/selectAllCommentByQueryPojoFrontSingle.action?buildingid=${build.buildingid}"
                style="color: #0b0b0b;">楼盘评论</a></li>
        <li style="margin-right:50px;"><a href="${pageContext.request.contextPath}/buildType/buildType.action?buildingid=${build.buildingid}" style="color: #0b0b0b;">户型分析</a></li>
        <li style="margin-right:50px;"><a href="${pageContext.request.contextPath}/dynamic/selectAllDynamicByBuild.action" style="color: #0b0b0b;">楼盘动态</a></li>
        <li style="margin-right:50px;"><a href="${pageContext.request.contextPath}/build/buildImages.action?buildingid=${build.buildingid}" style="color: #0b0b0b;">楼盘图册</a></li>
        <li style="margin-right:50px;"><a href="contact.html" style="color: #0b0b0b;">楼盘活动</a></li>
        <li><a href="${pageContext.request.contextPath}/build/buildAroundAnalysis.action?buildingid=${build.buildingid}"
               style="color: #0b0b0b;">楼盘周边</a></li>

    </ul>


</nav>
<!---header--->
<!---banner--->
<div class="content" style="margin-top:10px;">
    <div class="properties-section" style="margin-top:0px;padding-top:10px;">
        <div class="container" style="margin-top:0px;background-color:rgba(98,98,98,0.15);width:1100px;">
            <div class="properties-grids" >
                <div class="col-md-9 properties-left">
                    <div class="flexslider">
                        <div class="banner" id="b04" style="border:solid #0F0 1px;">
                            <ul>
                                <li><img src="${pageContext.request.contextPath}/${build.bpicture}" alt="" width="520"
                                         height="350"></li>
                                <c:if test="${not empty graphList}">

                                    <c:forEach items="${graphList}" var="graphimg" varStatus="i">
                                    <c:if test="${i.index<2}">
                                        <li><img src="${pageContext.request.contextPath}/${graphimg.graphurl}" alt="" width="520" height="350"> </li>
                                    </c:if>
                                </c:forEach>

                                    </c:if>
                                <c:if test="${not empty protoTypeImgList}">
                                    <c:forEach items="${protoTypeImgList}" var="protoTypeImg" varStatus="i">
                                        <c:if test="${i.index<2}">
                                            <li><img src="${pageContext.request.contextPath}/${protoTypeImg.prototype}" alt="" width="520" height="350"> </li>
                                        </c:if>
                                    </c:forEach>

                                </c:if>
                                <c:if test="${not empty environmentImgList}">
                                    <c:forEach items="${environmentImgList}" var="environmentImg" varStatus="i">
                                        <c:if test="${i.index<2}">
                                            <li><img src="${pageContext.request.contextPath}/${environmentImg.envirimg}" alt="" width="520" height="350"> </li>
                                        </c:if>
                                    </c:forEach>

                                </c:if>
                                <c:if test="${not empty arroundimgList}">
                                    <c:forEach items="${arroundimgList}" var="arroundimg" varStatus="i">
                                        <c:if test="${i.index<2}">
                                            <li><img src="${pageContext.request.contextPath}/${arroundimg.arrimg}" alt="" width="520" height="350"> </li>
                                        </c:if>
                                    </c:forEach>

                                </c:if>
                                <c:if test="${not empty buildimgList}">
                                    <c:forEach items="${buildimgList}" var="buildimg" varStatus="i">
                                        <c:if test="${i.index<2}">
                                            <li><img src="${pageContext.request.contextPath}/${buildimg.buildimg}" alt="" width="520" height="350"> </li>
                                        </c:if>
                                    </c:forEach>

                                </c:if>

                            </ul>

                            <a href="javascript:void(0);" class="unslider-arrow04 prev"><img class="arrow" id="al"
                                                                                             src="${pageContext.request.contextPath}/user/bao/images/arrowl.png"
                                                                                             alt="prev" width="20"
                                                                                             height="35"></a>

                            <a href="javascript:void(0);" class="unslider-arrow04 next"><img class="arrow" id="ar"
                                                                                             src="${pageContext.request.contextPath}/user/bao/images/arrowr.png"
                                                                                             alt="next" width="20"
                                                                                             height="37"></a>

                        </div>
                        <script>
                            $(document).ready(function (e) {
                                var unslider04 = $('#b04').unslider({
                                        dots: true
                                    }),
                                    data04 = unslider04.data('unslider');
                                $('.unslider-arrow04').click(function () {
                                    var fn = this.className.split(' ')[1];
                                    data04[fn]();
                                });
                            });
                        </script>
                    </div>
                    <div class="clearfix"></div>
                    <div style="width:100%; min-width:520px;">
                        <table style="width:520px; margin: auto auto">

                            <tr>
                                <td><span style="color: #666;">参考单价：</span><b
                                        style="font-size:30px; color:#ff6d6f;"><fmt:formatNumber
                                        value="${build.bperprice}" type="number"
                                        maxFractionDigits="3"></fmt:formatNumber> 元/㎡</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                                        href="#" style=" text-decoration:none;border:solid #ff6d6f 1px;color:#ff6d6f;">获取最新价格变动</a>
                                </td>


                            </tr>
                            <tr>
                                <td style="width:80px; height:40px;"><span
                                        style="color: #666;">房屋面积：</span>${build.acreage}—${build.maxacreage}㎡
                                </td>


                            </tr>
                            <tr>
                                <td style="width:80px; height:40px;"><span
                                        style="color: #666;">参考总价：</span>${build.btotalprice}—${build.bmaxtotalprice}万元
                                </td>


                            </tr>
                            <tr>
                                <td style="width:80px;height:40px;"><span style="color: #666;">楼盘户型：</span><c:set
                                        var="flag" value="true"></c:set>
                                    <c:forEach items="${buildTypes}" var="typeCount">

                                        <c:if test="${typeCount.count==0}">

                                        </c:if>
                                        <c:if test="${typeCount.count!=0 }">
                                            <c:set var="flag" value="false"></c:set>
                                            <c:if test="${typeCount.typeid==1}">
                                                一居（${typeCount.count}）
                                            </c:if>

                                            <c:if test="${typeCount.typeid==2}">
                                                二居（${typeCount.count}）
                                            </c:if>

                                            <c:if test="${typeCount.typeid==3}">
                                                三居（${typeCount.count}）
                                            </c:if>
                                            <c:if test="${typeCount.typeid==4}">
                                                四居（${typeCount.count}）
                                            </c:if>
                                        </c:if>
                                    </c:forEach>
                                    <c:if test="${flag}">
                                        暂无数据
                                    </c:if>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:80px;height:40px;"><span
                                        style="color: #666;">楼盘地址：</span>${build.province}${build.city}${build.barea}${build.bdetail}
                                </td>


                            </tr>
                            <tr>
                                <td style="width:80px;height:40px;"><span
                                        style="color: #666;">最新开盘时间：</span><fmt:formatDate value="${build.starttime}"
                                                                                           pattern="yyyy-MM-dd"></fmt:formatDate>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                                        href="#" style=" text-decoration:none;border:solid #ff6d6f 1px;color:#ff6d6f;">关注下次开盘时间</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <%--推荐理由--%>
                    <c:if test="${not empty build.advice}">
                    <div class="note" style="border: solid cornsilk 1px;padding-bottom: 10px;">
                        <div style="border-bottom: solid rgba(116,117,112,0.93) 1px;height: 50px;overflow: auto;">
                            <span style="line-height:48px;font-size: 22px;color:black;">推荐理由</span>
                        </div>
                        <br>
                        <div style="margin: auto auto">
                            <p style="color: black;">${build.advice}</p>
                        </div>
                    </div>
                    </c:if>
                    <%--楼盘详情--%>
                    <div class="additional-details">
                        <br>
                        <h3>楼盘详情</h3>
                        <ul>
                            <div>
                                <li><b style="font-size:30px; color:#000;">基本信息</b></li>
                                <br>
                                <br>
                                <div style="margin-left: 130px;">
                                    <li><span>楼盘名称</span> :${build.building}</li>
                                    <li><span>楼盘地址</span> : ${build.province}${build.city}${build.barea}${build.bdetail}
                                    </li>
                                    <li><span>物业类型</span> : ${build.tenement}</li>
                                    <li><span>建筑类型</span> : ${build.btype}</li>
                                    <li><span>环&nbsp;&nbsp;&nbsp;&nbsp;线</span> :<c:if test="${empty build.bline}">
                                        暂无数据
                                    </c:if>
                                        <c:if test="${not empty build.bline}">
                                            ${build.bline}
                                        </c:if></li>
                                    <li><span>开发商</span> : ${company.comname}</li>
                                    <li><span>楼盘特点</span> : <c:if test="${empty build.charactere}">
                                        暂无数据
                                    </c:if>
                                        <c:if test="${not empty build.charactere}">
                                            <c:forEach items="${characters}" var="characterss">
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <span style=" color:#0cf;border:solid #0CF 1px;padding:0px 8px; font-size:9px;">${characterss}</span>
                                            </c:forEach>
                                        </c:if></li>
                                </div>
                                <br>
                                <br>
                                <li><span style="color:#000; font-size:30px;">销售信息</span></li>
                                <br>
                                <br>
                                <div style="margin-left: 130px;">
                                    <li><span>参考单价</span> : <fmt:formatNumber value=" ${build.bperprice}" type="number"
                                                                              maxFractionDigits="3"/>元/㎡
                                    </li>
                                    <li><span>销售状态</span> : ${build.conditions}</li>
                                    <li><span>销售情况</span> : <c:if test="${empty build.bsalestatus}">
                                        暂无数据
                                    </c:if>
                                        <c:if test="${not empty build.bsalestatus}">
                                            ${build.bsalestatus}
                                        </c:if></li>

                                    <li><span>优惠信息</span> : <c:if test="${empty build.discounts}">
                                        暂无数据
                                    </c:if>
                                        <c:if test="${not empty build.discounts}">
                                            ${build.discounts}
                                        </c:if></li>
                                    <li><span>最早开盘</span> : <fmt:formatDate value="${build.starttime}"
                                                                            pattern="yyyy-MM-dd"></fmt:formatDate></li>
                                    <li><span>最早交房</span> : <fmt:formatDate value="${build.endtime}"
                                                                            pattern="yyyy-MM-dd"></fmt:formatDate></li>
                                    <li><span>楼盘户型</span> : <c:forEach items="${buildTypes}" var="typeCount">

                                        <c:if test="${typeCount.count==0}">

                                        </c:if>
                                        <c:if test="${typeCount.count!=0 }">
                                            <c:set var="flag" value="false"></c:set>
                                            <c:if test="${typeCount.typeid==1}">
                                                一居（${typeCount.count}）
                                            </c:if>

                                            <c:if test="${typeCount.typeid==2}">
                                                二居（${typeCount.count}）
                                            </c:if>

                                            <c:if test="${typeCount.typeid==3}">
                                                三居（${typeCount.count}）
                                            </c:if>
                                            <c:if test="${typeCount.typeid==4}">
                                                四居（${typeCount.count}）
                                            </c:if>
                                        </c:if>
                                    </c:forEach>
                                        <c:if test="${flag}">
                                            暂无数据
                                        </c:if>
                                    </li>
                                    <li><span>产权年限</span> : <c:if test="${empty build.agelimit}">
                                        暂无数据
                                    </c:if>
                                        <c:if test="${not empty build.agelimit}">
                                            ${build.agelimit}
                                        </c:if></li>
                                    <li><span>拿地时间</span> : <c:if test="${empty build.landtime}">
                                        暂无数据
                                    </c:if>
                                        <c:if test="${not empty build.landtime}">
                                            <fmt:formatDate value="${build.landtime}"
                                                            pattern="yyyy-MM-dd"></fmt:formatDate>
                                        </c:if></li>
                                </div>
                                <br>
                                <br>
                                <li><b style="color:#000; font-size:30px;">小区详情</b></li>
                                <br>
                                <br>
                                <div style="margin-left: 130px;">
                                    <li><span>物业公司</span> : <c:if test="${empty build.tencompany}">
                                        暂无数据
                                    </c:if>
                                        <c:if test="${not empty build.tencompany}">
                                            ${build.tencompany}
                                        </c:if></li>
                                    <li><span>物业费用</span> : <c:if test="${empty build.tencost || build.tencost==''}">
                                        暂无数据
                                    </c:if>
                                        <c:if test="${not empty build.tencost}">
                                            ${build.tencost}元/㎡/月
                                        </c:if></li>
                                    <li><span>物业类型</span> : ${build.tenement}</li>
                                    <li><span>水电燃气</span> : <c:if test="${empty build.tentype || build.tentype==''}">
                                        暂无数据
                                    </c:if>
                                        <c:if test="${not empty build.tentype}">
                                            ${build.tentype}
                                        </c:if></li>
                                    <li><span>绿化率</span> : <c:if test="${empty build.greenrate}">
                                        暂无数据
                                    </c:if>
                                        <c:if test="${not empty build.greenrate}">
                                            ${build.greenrate}%
                                        </c:if></li>
                                    <li><span>车位情况</span> : <c:if test="${empty build.carport}">
                                        暂无数据
                                    </c:if>
                                        <c:if test="${not empty build.carport}">
                                            ${build.carport}
                                        </c:if></li>
                                    <li><span>容积率</span> : <c:if test="${empty build.cubage}">
                                        暂无数据
                                    </c:if>
                                        <c:if test="${not empty build.cubage}">
                                            ${build.cubage}
                                        </c:if></li>
                                    <li><span>装修状况</span> :
                                        <c:if test="${empty build.fitment}">
                                            暂无数据
                                        </c:if>
                                        <c:if test="${not empty build.fitment}">
                                            ${build.fitment}
                                        </c:if></li>
                                </div>

                    </div>
                        </ul>
                    <%--楼盘户型--%>
                    <div class="note" style="border: solid cornsilk 1px;width:1040px;padding-bottom: 10px;">
                        <div style="border-bottom: solid rgba(116,117,112,0.93) 1px;height: 50px;overflow: auto;">
                            <span style="line-height:48px;font-size: 22px;color:black;">户型分析</span>
                            <span style="float: right;line-height:48px;">
                                <c:forEach items="${buildTypes}" var="typeCount">
                                    <c:if test="${typeCount.count==0}">
                                    </c:if>
                                    <c:if test="${typeCount.count!=0 }">
                                        <c:set var="flag" value="false"></c:set>
                                        <c:if test="${typeCount.typeid==1}">
                                            一居（${typeCount.count}）
                                        </c:if>

                                        <c:if test="${typeCount.typeid==2}">
                                            二居（${typeCount.count}）
                                        </c:if>

                                        <c:if test="${typeCount.typeid==3}">
                                            三居（${typeCount.count}）
                                        </c:if>
                                        <c:if test="${typeCount.typeid==4}">
                                            四居（${typeCount.count}）
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                                <c:if test="${flag}">
                                    暂无数据
                                </c:if></span>
                        </div>
                        <br>
                        <%--房子信息--%>
                        <c:forEach items="${houseList}" var="house" varStatus="i">
                            <c:if test="${i.index<3}">
                                <div style="border:solid rgba(116,117,112,0.93) 1px; height: 200px;overflow: auto;margin-bottom: 20px;">
                                        <%--图片信息--%>
                                    <div style="height: 140px;width: 135px;float: left;margin-top:28px;">
                                        <img width="135" height="140" src="<%=imgPath%>${house.htypeimg}"/>
                                    </div>
                                    <div style="float:left;margin-top:18px; margin-left:80px;height: 160px;width: 575px;">

                                        <b style="font-size:24px;">${house.hname}</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <c:if test="${house.hsalestatus=='售罄'}"><span style="border: solid #c3c3c3 1px; color:#c3c3c3;">${house.hsalestatus}</span></c:if>
                                        <c:if test="${house.hsalestatus!='售罄'}"><span style="border: solid rgba(251,97,95,1) 1px; color:#ff6d6f;">${house.hsalestatus}</span></c:if>

                                        <br>
                                        <br>
                                        <p>总价<span style="color:#ff6d6f;">${house.hmoney}</span>万左右&nbsp;&nbsp;&nbsp;&nbsp;
                                            首付<span style="color:#ff6d6f;">${house.payment}</span>万左右&nbsp;&nbsp;&nbsp;&nbsp;报价更新时间<span
                                                    style="color: black;"><fmt:formatDate value="${house.updatename}"
                                                                                          pattern="yyyy-MM-dd"></fmt:formatDate></span>
                                        </p>

                                        <p>朝向：<span
                                                style="color:black;">${house.forward}</span>&nbsp;&nbsp;&nbsp;&nbsp;类型：<span
                                                style="color:black;">${house.htype}</span></p>

                                        <p>户型分析：是哭的今飞凯达交房的房间打开房间打开飞机快递费...<a>查看全文</a></p>
                                    </div>

                                </div>
                            </c:if>
                        </c:forEach>
                        <div style="padding-bottom:1px;height: 50px;font-size: 24px;text-align: center;">
                            <span style="display:block;margin-top:7px;"><a href="#">查看全部</a></span>
                        </div>

                    </div>
                    <%--楼盘动态--%>
                    <div class="container" style="border: solid cornsilk 1px;padding-bottom: 10px;width:1100px;margin-left: -50px;">
                        <iframe src="${pageContext.request.contextPath}/dynamic/selectDynamicByBuild.action?buildingid=${build.buildingid}"
                                name="myframe" width='100%' height='78%' frameborder='0' id="myframe">
                        </iframe>
                        <p style="margin-left: 17%"><a href="${pageContext.request.contextPath}/dynamic/selectAllDynamicByBuild.action?buildingid=${build.buildingid}">查看更多>></a></p>
                    </div>
                    <%--楼盘周边--%>
                    <div class="note" style="border: solid cornsilk 1px;padding-bottom: 10px;width: 1045px;">
                        <div style="border-bottom: solid rgba(116,117,112,0.93) 1px;height: 50px;overflow: auto;">
                            <span style="border:solid chartreuse 1px;line-height:48px;font-size: 22px;color:black;">楼盘周边</span>
                        </div>
                        <br>
                        <div style="width:100%;overflow: auto;">
                            <div style=" margin-right:10px;width:510px;height:600px;border:#ccc solid 1px;float:left;"
                                 id="l-map"></div>
                            <div style=" background-color:cornsilk;float:left;border: solid rgba(255,31,32,0.75) 1px;width:455px; height:35px;">
                                <ul class="map" style="height: 35px;overflow: auto;">
                                    <li class="dianji bgcolor"
                                        style="float: left;margin-right: 5px; text-align: center; width:80px;line-height:35px;">
                                        <a href="javascript:search('公交站',1000)">公交</a></li>
                                    <li class="dianji"
                                        style="float: left; margin-right: 5px;text-align: center; width:80px;line-height:35px;">
                                        <a href="javascript:search('地铁站',2000)">地铁</a></li>
                                    <li class="dianji"
                                        style="float: left;margin-right: 5px; text-align: center; width:80px;line-height:35px;">
                                        <a href="javascript:search('学校',3000)">学校</a></li>
                                    <li class="dianji"
                                        style="float: left; margin-right: 5px;text-align: center; width:80px;line-height:35px;">
                                        <a href="javascript:search('购物',3000)">购物</a></li>
                                    <li class="dianji"
                                        style="float: left;margin-right: 5px; text-align: center; width:80px;line-height:35px;">
                                        <a href="javascript:search('医疗',5000)">医疗</a></li>
                                </ul>
                            </div>

                            <div class="map"
                                 style=" background-color:cornsilk;width:455px;height:565px;border:solid crimson 1px;float:left;"
                                 id="r-result">

                            </div>
                        </div>


                    </div>
                    <%--//评论--%>
                    <div style="width: 1000px;margin-left: 0px;padding: 0px;height:2000px;">
                        <iframe src="${pageContext.request.contextPath}/comment/selectAllCommentByQueryPojoFront.action?buildingid=${build.buildingid}"
                                name="myframe1" width='100%' height='100%' frameborder='0' id="myframe1">
                        </iframe>
                    </div>
                    <!--popupbox-->


                </div>
                <div class="col-md-3 properties-right">
                    <div class="properties-top">
                        <h4>咨询师</h4>
                        <img src="${pageContext.request.contextPath}/${cta.ctaimg}" class="img-responsive" alt=""/>
                        <ul class="">
                            <li>姓名:${cta.ctaname}
                            </li>
                            <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i> 联系方式:${cta.ctaphone}
                            </li>
                            <li>毕业于${cta.school}</li>
                            <li>${cta.education}</li>
                        </ul>
                        <c:if test="${not empty cta.charactere}">
                            <c:set var="character" value="${cta.charactere}"></c:set>
                            <c:set var="characters" value='${fn:split(character, "，")}'></c:set>
                            <c:forEach items="${characters}" var="characterss">
                                &nbsp;&nbsp
                                <span style=" color:#0cf;border:solid #0CF 1px;padding:0px 8px; font-size:9px;">${characterss}</span>
                            </c:forEach>
                        </c:if>
                        <p>个人简历：</p>
                        <p>${cta.intro}</p>
                        <a href="#" class="button2">向TA咨询</a>

                    </div>

                    <div class="feature">
                        <h4 style="font-size: 30px;">相似楼盘</h4>
                        <div class="feature-top">
                            <img src="images/s1.jpg" class="img-responsive" alt="/">
                            <h5>60 Merrick Way, Miami</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer elit,… <a href="#">Know More</a></p>
                        </div>
                        <div class="feature-top top2">
                            <img src="images/s2.jpg" class="img-responsive" alt="/">
                            <h5>Villa in Hialeah, Dade</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer elit,… <a href="#">Know More</a></p>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
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
                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
                    laoreet dolore magna aliquam erat volutpat.</p>
            </div>
            <div class="col-md-3 footer-grid">
                <h4>Recent Posts</h4>
                <ul>
                    <li><a href="#">Lorem Post With Image Format</a></li>
                    <li><a href="#">Example Video Blog Post</a></li>
                    <li><a href="#">Example Post With Gallery Post </a></li>
                    <li><a href="#">Example Video Blog Post</a></li>
                    <li><a href="#">Lorem Post With Image Format</a></li>
                    <li><a href="#">Example Video Blog Post</a></li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid">
                <h4>Useful links</h4>
                <ul>
                    <li><a href="terms.html">Terms of Use</a></li>
                    <li><a href="privacy.html">Privacy Policy</a></li>
                    <li><a href="contact.html">Contact Support </a></li>
                    <li><a href="../../../../../../../../高博大三实习/项目/agents.html"> All Agents</a></li>
                    <li><a href="blog.html">Blog</a></li>
                    <li><a href="faqs.html">FAQs</a></li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid">
                <h4>Get In Touch</h4>
                <p>8901 Marmora Road</p>
                <p>Glasgow, DO4 89GR.</p>
                <p>Freephone : +1 234 567 890</p>
                <p>Telephone : +1 234 567 890</p>
                <p>FAX : + 1 234 567 890</p>
                <p>E-mail : <a href="mailto:example@mail.com"> example@mail.com</a></p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!---footer--->
<!--copy-->
<div class="copy-section">
    <div class="container">
        <p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/"
                                                                                    target="_blank"
                                                                                    title="模板之家">模板之家</a> - Collect from
            <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
    </div>
</div>
<!--copy-->
<!-- login -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info" style="min-width: 550px;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body real-spa">
                <div class="login-grids">
                    <div class="login">

                        <div class="login-right">
                            <form action="${pageContext.request.contextPath}/login.action" method="post"
                                  onsubmit="return loginsubmint('p')">
                                <h3>Login</h3>
                                <div class="form-group">
                                    <label for="uname"><span style="font-size:18px">用户名:</span></label>
                                    <input id="uname" name="uname" type="text" placeholder="用户名">
                                    <span></span>
                                </div>
                                <p/>
                                <div class="form-group">
                                    <label for="password"><span
                                            style="font-size:18px">密&nbsp;&nbsp;&nbsp;&nbsp;码:</span></label>
                                    <input id="password" name="password" type="password" placeholder="密码">
                                    <span></span>
                                </div>
                                <label class="radio-inline">
                                    <input type="radio" name="userType" value="1" checked>普通用户
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="userType" value="2">开发商
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="userType" value="3">咨询师
                                </label>
                                <p/>
                                <div class="single-bottom">
                                    <label class="checkbox-inline">
                                        <input type="checkbox" id="inlineCheckbox2" value="option2">记住密码
                                    </label>
                                </div>
                                <input type="submit" value="登录">
                            </form>
                        </div>

                    </div>
                    <p>By logging in you agree to our <a href="#">Terms</a> and <a href="#">Conditions</a> and <a
                            href="#">Privacy Policy</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //login -->
<!-- Register -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info" style="min-width: 550px;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body real-spa">
                <div class="login-grids">
                    <div class="login">
                        <div class="login-right">
                            <form action="${pageContext.request.contextPath}/register.action" method="post"
                                  onsubmit="return registersubmit('p')">
                                <h3>普通用户注册 </h3>
                                <input style="color:#000" id="runame" name="runame" type="text" placeholder="用户名">
                                <span></span>
                                <input style="color:#000" id="rpass" name="rpass" type="password" placeholder="密码">
                                <span></span>
                                <input style="color:#000" id="repass" name="repass" type="password" placeholder="确认密码">
                                <span></span>
                                <input style="color:#000" id="rphone" name="rphone" type="text" placeholder="手机号">
                                <span></span>
                                <br>
                                <input style="color:#000;width:160px;" id="yanzm" name="yanzm" type="text"
                                       placeholder="验证码">

                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <button type="button"
                                        style="background: #2EA9E0; width:250px;border-radius:5px; height:45px; text-align:center; color:#FFF"
                                        id="b1">获取验证码
                                </button>
                                <span></span>

                                <input type="submit" value="注册">
                            </form>
                        </div>
                    </div>
                    <p><a href="${pageContext.request.contextPath}/user/bao/developerRegister/register.jsp">开发商注册>></a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    <!--短信验证-->
    var timer;
    var time = 5;
    var yznum;
    $("#b1").click(function () {
        var phonea = $("#rphone");
        var regphonea = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
        if (regphonea.test(phonea.val())) {
            yznum = "";
            for (var i = 0; i < 6; i++) {
                yznum += Math.floor(Math.random() * 10);
            }
            alert(yznum);
            $.ajax({
                type: "get",
                url: "${pageContext.request.contextPath}/sendyanzm.action",
                data: "yznum=" + yznum + "&rphone=" + $('#rphone').val(),
                success: function (da) {

                    if (da == 1) {

                    }
                }
            });
            $("#b1").text("5秒后重新获取");

            $("#b1").attr("disabled", true);
            $("#b1").css("background", "#F0F0F0");
            $("#b1").css("color", "black");
            timer = setInterval('time1()', 1000);
        } else {
            phonea.next("SPAN").text("请输入正确的手机号");
            phonea.next("SPAN").removeClass();

            phonea.next("SPAN").addClass("error");
        }

//
    });

    function time1() {
        time--;
        $("#b1").text(time + "秒后重新获取");
        if (time == 0) {
            clearInterval(timer);
            $("#b1").removeAttr("disabled");
            $("#b1").text("获取验证码");
            time = 5;
            $("#b1").css("background", "#3587FF");
            $("#b1").removeAttr("color");
            $("#b1").css("color", "white");
            return;
        }
    }

    onload = registersubmit;

    function registersubmit(param) {
        var flag = true;
        //验证用户名
        var uname = $("#runame");
        var regname = /^[a-zA-Z][a-zA-Z0-9_]{4,15}$/;
        checkuanme(uname, function (val1) {
            if (regname.test(val1)) {
                return true;
            } else {
                flag = false;
                return false;
            }
        }, function (val2) {
            if (val2 == 0) {
                return true;
            } else {
                flag = false;
                return false;
            }
        }, param);

        //验证密码
        var pass = $("#rpass");
        var regpass = /^[\w]{6,12}$/;
        checkData(pass, function (val) {
            if (regpass.test(val)) {
                return true;
            } else {
                flag = false;
                return false;
            }
        }, "密码长度在6~12之间，只能包含字母、数字和下划线", param)
        //验证密码
        var repass = $("#repass");

        checkData(repass, function (val) {
            if (val != "" && pass.val() == val) {
                return true;
            } else {
                flag = false;
                return false;
            }
        }, "两次密码输入不一致", param)
        //验证手机号
        var phone = $("#rphone");
        var regphone = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
        checkData(phone, function (val) {
            if (regphone.test(val)) {
                return true;
            } else {
                flag = false;
                return false;
            }
        }, "请输入正确的手机号", param);
        //验证验证码

        var reyanznum = $("#yanzm");
//
        reyanznum.focus(function () {
            $("#b1").next("SPAN").text("");
        });
        if (param == 'p') {
            if (reyanznum.val() == yznum) {
                //验证码正确
            } else {
                //alert(${pageContext.session.getAttribute("yznum")});
                $("#b1").next("SPAN").text("验证码错误");
                $("#b1").next("SPAN").removeClass();
                $("#b1").next("SPAN").addClass("error");
                flag = false;
            }
        }
        return flag;
    }

    //验证用户名函数
    function checkuanme(obj, fun1, fun2, param) {
        var span = obj.next("SPAN");

        obj.focus(function () {
            span.text("");
            span.removeClass();
        });
        obj.blur(function () {
            var value = obj.val();
            if (fun1(value)) {

                $.ajax({
                    type: "get",
                    url: "${pageContext.request.contextPath}/checkUname.action",
                    data: "runame=" + $("#runame").val(),
                    success: function (da) {

                        if (fun2(da)) {
                            span.text("OK");
                            span.removeClass();
                            span.addClass("success");
                        } else {
                            span.text("用户名已存在");
                            span.removeClass();
                            span.addClass("error")
                        }
                    }
                });
            } else {
                span.text("用户名字母开头，5-16位，字母数字下划线");
                span.removeClass();
                span.addClass("error");
            }
        });
        if (param == 'p') {
            obj.blur();
        }
    }

    //验证其他
    function checkData(obj, fun, info, param) {
        var span = obj.next("SPAN");
        obj.focus(function () {
            span.text("");
            span.removeClass();
        });
        obj.blur(function () {
            var value = obj.val();
            if (fun(value)) {
                span.text("OK");
                span.addClass("success");
            } else {
                span.text(info);
                span.removeClass();
                span.addClass("error");
            }

        });
        if (param == 'p') {
            obj.blur();
        }

    }

    function loginsubmint(param) {

        var flag = true;
        var uname = $("#uname");
        var password = $("#password");
        if (param == 'p') {
            $.ajax({
                async: false,
                type: "get",
                url: "${pageContext.request.contextPath}/checkLoginUname.action",
                data: "uname=" + uname.val() + "&userType=" + $("input[name='userType']:checked").val() + "&password=" + password.val(),
                success: function (da) {

                    if (da == 0) {

                        uname.next("SPAN").text("用户名不存在");
                        uname.next("SPAN").removeClass();
                        uname.next("SPAN").addClass("error");
                        flag = false;
                    } else if (da == 1) {

                        password.next("SPAN").text("密码错误");
                        password.next("SPAN").removeClass();
                        password.next("SPAN").addClass("error");
                        flag = false;
                    }
                },
                error: function () {
                    alert("sb")
                }
            });
        }

        return flag;
    }

    $("#uname").focus(function () {
        $("#uname").next("SPAN").text("");
    });
    $("#password").focus(function () {
        $("#password").next("SPAN").text("");
    });
</script>
</body>
</html>
<script type="text/javascript">

    search("公交站", 1000);

    function search(val, distance) {
        var map = new BMap.Map("l-map", {enableMapClick: false});
        map.centerAndZoom(new BMap.Point(${build.lng}, ${build.lat}), 15);
        var options = {
            onSearchComplete: function (results) {
                // 判断状态是否正确
                if (local.getStatus() == BMAP_STATUS_SUCCESS) {
                    var s = [];
                    for (var i = 0; i < results.getCurrentNumPois(); i++) {
                        s.push(results.getPoi(i).title + ", " + results.getPoi(i).address);
                    }
                    //document.getElementById("r-result").innerHTML ="";
                    document.getElementById("r-result").innerHTML = s.join("<br/>");
                }
            }
        };
        var markers = new Array();
        var pois = new Array();
        var local = new BMap.LocalSearch(map, {
            onSearchComplete: function (results) {
                // 判断状态是否正确
                if (local.getStatus() == BMAP_STATUS_SUCCESS) {
                    var s = [];
                    for (var i = 0; i < results.getCurrentNumPois(); i++) {
                        var label = new BMap.Label(i + 1, {offset: new BMap.Size(5, 3)});
                        label.setStyle({
                            background: 'none',
                            color: '#fff',
                            border: 'none'
                        });
                        s.push("<li style='height: 50px; float: none;'><a style='line-height: 50px;' href='javascript:void(0)' id=" + "'res" + i + "'>" + (i + 1) + "----" + results.getPoi(i).title + ", " + results.getPoi(i).address) + "</a></li>";
                        var marker = new BMap.Marker(results.getPoi(i).point);
                        marker.setLabel(label);
                        var content = results.getPoi(i).address;
                        map.addOverlay(marker);
                        var opts = {
                            width: 200,     // 信息窗口宽度
                            height: 100,     // 信息窗口高度
                            title: results.getPoi(i).title, // 信息窗口标题
                            offset: new BMap.Size(0, -20)  //设置文本偏移量
                        }
                        addClickHandler(content, marker, opts)
                    }
                    document.getElementById("r-result").innerHTML = s.join("");
                    for (var j = 0; j < results.getCurrentNumPois(); j++) {
                        var opts1 = {
                            width: 200,     // 信息窗口宽度
                            height: 100,     // 信息窗口高度
                            offset: new BMap.Size(0, -20),  //设置文本偏移量
                            title: results.getPoi(j).title, // 信息窗口标题
                            enableMessage: true,//设置允许信息窗发送短息
                            message: "亲耐滴，晚上一起吃个饭吧？戳下面的链接看下地址喔~"
                        }
                        var content1 = results.getPoi(j).address;
                        var point1 = results.getPoi(j).point;
                        addClickHandler1(content1, $("#res" + j), opts1, point1);
                    }
                } else {
                    var s1 = ["暂时没有数据哦"];
                    document.getElementById("r-result").innerHTML = s1.join("");
                }
            }
        });

        function addClickHandler1(content1, obj, opts1, point1) {
            obj.bind("click", function () {
                    openInfo1(content1, point1, opts1)
                }
            );
        }

        function addClickHandler(content, marker, opts) {
            marker.addEventListener("click", function (e) {
                    openInfo(content, e, opts)
                }
            );
        }

        function openInfo1(content1, point1, opts1) {
            var infoWindow = new BMap.InfoWindow(content1, opts1);  // 创建信息窗口对象
            map.openInfoWindow(infoWindow, point1); //开启信息窗口
        }

        function openInfo(content, e, opts) {
            var p = e.target;
            var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
            var infoWindow = new BMap.InfoWindow(content, opts);  // 创建信息窗口对象
            map.openInfoWindow(infoWindow, point); //开启信息窗口
        }

        var opts2 = {
            width: 200,     // 信息窗口宽度
            height: 100,     // 信息窗口高度
            offset: new BMap.Size(0, -30),  //设置文本偏移量
            title: "我的位置" // 信息窗口标题
        }
        var marker_myposi = new BMap.Marker(new BMap.Point(${build.lng}, ${build.lat}));  // 创建标注
        map.addOverlay(marker_myposi);               // 将标注添加到地图中
        marker_myposi.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
        var infoWindow2 = new BMap.InfoWindow("${build.building}", opts2);
        map.openInfoWindow(infoWindow2, new BMap.Point(${build.lng}, ${build.lat})); //开启信息窗口

        local.searchNearby(val, new BMap.Point(${build.lng}, ${build.lat}), distance);
        initMap(map);
    }

    //地图事件设置函数：
    function setMapEvent(map) {
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }

    //地图控件添加函数：
    function addMapControl(map) {
        //向地图中添加缩放控件
        var ctrl_nav = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_LEFT, type: BMAP_NAVIGATION_CONTROL_LARGE});
        map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
        var ctrl_ove = new BMap.OverviewMapControl({anchor: BMAP_ANCHOR_BOTTOM_RIGHT, isOpen: 1});
        map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
        var ctrl_sca = new BMap.ScaleControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT});
        map.addControl(ctrl_sca);
    }

    function initMap(map) {

        setMapEvent(map);//设置地图事件
        addMapControl(map);//向地图添加控件

    }

    $(".dianji").each(function () {
        $(this).click(function () {
            $(".dianji").removeClass("bgcolor");//bgcolor是点击之后的样式,   .dianji是要点击的地方（事件触发）
            $(this).addClass("bgcolor");
        });
    });
</script>