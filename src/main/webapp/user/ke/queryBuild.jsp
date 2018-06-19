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
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

    <title>楼盘搜索</title>
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
                    <li><i class="glyphicon glyphicon-phone" aria-hidden="true"></i>咨询热线：400-606-2695 </li>
                    <c:if test="${not empty sessionScope.user}">
                        <c:if test="${sessionScope.userType==1}">
                            <li><i class="glyphicon glyphicon-user" aria-hidden="true"></i>普通用户&nbsp;&nbsp;&nbsp;<a style="color: #28ffef" href="">${user.uname}</a>&nbsp;&nbsp;&nbsp;&nbsp;<a  href="${pageContext.request.contextPath}/exit.action" ><i title="退出" class="glyphicon glyphicon-log-out" aria-hidden="true"></i></a></li>
                        </c:if>
                        <c:if test="${sessionScope.userType==2}">
                            <li><i class="glyphicon glyphicon-user" aria-hidden="true"></i>开发商用户&nbsp;&nbsp;&nbsp;<a style="color: #28ffef" href="${pageContext.request.contextPath}/developer/index.jsp">${user.comuname}</a>&nbsp;&nbsp;&nbsp;&nbsp;<a  href="${pageContext.request.contextPath}/exit.action"><i title="退出" class="glyphicon glyphicon-log-out" aria-hidden="true"></i></a></li>
                        </c:if>
                        <c:if test="${sessionScope.userType==3}">
                            <li><i class="glyphicon glyphicon-user" aria-hidden="true"></i>咨询师用户&nbsp;&nbsp;&nbsp;<a style="color: #28ffef" href="${pageContext.request.contextPath}/developer/index.jsp">${user.ctaname}</a>&nbsp;&nbsp;&nbsp;&nbsp;<a  href="${pageContext.request.contextPath}/exit.action"><i title="退出" class="glyphicon glyphicon-log-out" aria-hidden="true"></i></a></li>
                        </c:if>

                    </c:if>
                    <c:if test="${empty sessionScope.user}">
                        <li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a href="#" data-toggle="modal" data-target="#myModal">登录</a></li>
                        <li><i class="glyphicon glyphicon-lock" aria-hidden="true"></i><a href="#" data-toggle="modal" data-target="#myModal1">注册</a></li>
                    </c:if>
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
                    <li><a href="${pageContext.request.contextPath}/user/bao/index.jsp">&nbsp;&nbsp;&nbsp;&nbsp;首&nbsp;页&nbsp;&nbsp;&nbsp;&nbsp;<span class="sr-only">(current)</span></a></li>
                    <li class="active">
                        <a href="${pageContext.request.contextPath}/build/selectBuildQueryPojo.action">&nbsp;&nbsp;&nbsp;&nbsp;楼盘查询&nbsp;&nbsp;&nbsp;&nbsp;</a>
                    </li>

                    <li><a href="blog.html">&nbsp;&nbsp;&nbsp;&nbsp;咨询师&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
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
        <h2 style="font-family: 'Open Sans', sans-serif">楼&nbsp;盘&nbsp;查&nbsp;询</h2>
    </div>
</div>
<!---header--->
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
                                    <a href="${pageContext.request.contextPath}/build/selectBuildQueryPojo.action?isonsale='abc'" role="tab"   aria-controls="profile">优惠楼盘</a>
                                </li>
                            </ul>
                            <div id="myTabContent" class="tab-content">
                                <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">

                                    <c:forEach items="${pageInfo.list}" var="b">
                                        <div class="forsale-grids">
                                            <h4><a href="${pageContext.request.contextPath}/build/buildIndex.action?buildingid=${b.buildingid}" style="font-family: 'Open Sans', sans-serif" >${b.building}</a>
                                                <p  style="position: relative; left: 500px;top: -25px;">
                                                    <c:forEach items="${b.buildType}" var="type">
                                                        ${type.typename}(${type.count}) &nbsp;
                                                    </c:forEach>
                                                </p>
                                            </h4>
                                            <div class="forsale1">
                                                <div class="forsale-left">
                                                    <a href="#"><img src="${pageContext.request.contextPath}/${b.bpicture}" class="img-responsive" alt="楼盘"></a>
                                                </div>
                                                <div class="forsale-right">
                                                    <h5 style="font-family: 'Open Sans', sans-serif">最低${b.bperprice}元每平方米起
                                                        &nbsp;&nbsp; &nbsp;&nbsp;   &nbsp;&nbsp;  &nbsp;&nbsp;
                                                        参考总价${b.btotalprice}-${b.bmaxtotalprice}万元
                                                        &nbsp;&nbsp; &nbsp;&nbsp;   &nbsp;&nbsp;  &nbsp;&nbsp;
                                                        <button style="border:none; background-color: #F60;">${b.conditions}</button>
                                                    </h5>
                                                    <p>${b.bdetail}<br/>
                                                        <a href="地图链接"> 查看地图</a><br/> ${b.starttime}
                                                        <a href="楼盘详情页面">${b.building}${b.acreage}-${b.maxacreage}平房源${b.conditions}</a>
                                                    </p>${b.discounts}
                                                    <a href="楼盘详情页面" class="button4">更多详情</a>
                                                </div>
                                                <div class="zixunshi">
                                                    <img style="border-radius:300px; width:90px; margin-top:-130px" src="${pageContext.request.contextPath}/user/ke/images/${b.cta.ctaimg}" href="" />

                                                    <p style="margin-top:-175px;font-size:13px;margin-left:15px">
                                                        <a>${b.cta.ctaname}|咨询</a>
                                                    </p>
                                                </div>
                                                <div class="clearfix"></div>
                                                <ul>
                                                    <c:choose>
                                                    <c:when test="${!empty b.charactere && !(b.charactere eq '')}">
                                                   <c:forEach items="${fn:split(b.charactere,'，')}" var="ch">
                                                       <li>
                                                           <a href="#">${ch}</a>
                                                       </li>
                                                   </c:forEach>
                                                    </c:when>
                                                        <c:otherwise>
                                                            <li><a href="#">敬请期待</a></li>
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <li>
                                                        <a href="楼盘详情页面">向他咨询</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </c:forEach>
                                    <div class="col-md-offset-4">
                                        <nav>
                                            <ul class="pagination pagination-lg">
                                               <li><a href="javascript:getPage(${pageInfo.firstPage})"  >首页</a></li>
                                                <li><a href="javascript:getPage(${pageInfo.prePage})" >上一页</a></li>
                                                <li><span><b>${pageInfo.pageNum}</b>/<b>${pageInfo.pages}</b></span></li>
                                                <c:if test="${!pageInfo.isLastPage}"><li><a href="javascript:void(0)" onclick="getPage(${pageInfo.nextPage})" >下一页</a></li></c:if>
                                               <li> <a href="javascript:getPage(${pageInfo.lastPage})">末页</a></li>
                                         
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 properties-right" >
                    <div class="properties-top">
                        <h4 style="font-family: 'Open Sans', sans-serif">我要找房</h4>
                        <form id="mainForm" action="${pageContext.request.contextPath}/build/selectBuildQueryPojo.action">
                            <input type="hidden" value="1" id="curPage" name="curPage" />
                            <div id="distpicker5">
                                <div class="form-group col-md-12">
                                    <h5>省份</h5>
                                    <label class="sr-only" for="province1">Province</label>
                                    <select class="form-control" name="province" id="province1">
                                    </select>
                                </div>
                                <div class="form-group col-md-12">
                                    <h5>城市</h5>
                                    <label class="sr-only" for="city1">City</label>
                                    <select class="form-control" name="city" id="city1"></select>
                                </div>
                                <div class="form-group col-md-12">
                                    <h5>区域</h5>
                                    <label class="sr-only" for="district1" name="district">District</label>
                                    <select class="form-control" name="district" id="district1"></select>
                                </div>
                            </div>
                            <div class="yourplace col-md-12">
                                <h5>户型</h5>
                            <select class="sel2" name="typeid">
                                <option value="">不限</option>
                                <c:forEach items="${types}" var="t">
                                    <option value="${t.typeid}" <c:if test="${buildQueryPojo.typeid eq t.typeid}">selected</c:if> >${t.typename}</option>
                                </c:forEach>
                            </select>
                            </div>
                            <div class="yourplace col-md-12">
                                <h5>开发商</h5>
                                <select class="sel2" name="comid">
                                    <option value="">不限</option>
                                    <c:forEach items="${companies}" var="c">
                                        <option value="${c.comid}" <c:if test="${buildQueryPojo.comid eq c.comid}">selected</c:if> >${c.comname}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="yourplace col-md-12">
                                <h5>特色</h5>
                                <select class="sel3" name="charactere">
                                    <option value="">不限</option>
                                    <option value="小户型" <c:if test="${buildQueryPojo.charactere eq '小户型'}">selected</c:if>>小户型</option>
                                    <option value="临地铁" <c:if test="${buildQueryPojo.charactere eq '临地铁'}">selected</c:if>>临地铁</option>
                                    <option value="现房" <c:if test="${buildQueryPojo.charactere eq '现房'}">selected</c:if>>现房</option>
                                    <option value="品牌地产" <c:if test="${buildQueryPojo.charactere eq '品牌地产'}">selected</c:if>>品牌地产</option>
                                </select>
                            </div>
                            <div class="yourplace col-md-6">
                                <h5>类型</h5>
                                <select class="sel2" name="genre">
                                    <option value="">不限</option>
                                    <option value="住宅" <c:if test="${buildQueryPojo.genre eq '住宅'}">selected</c:if>>住宅</option>
                                    <option value="别墅" <c:if test="${buildQueryPojo.genre eq '别墅'}">selected</c:if>>别墅</option>
                                    <option value="商业" <c:if test="${buildQueryPojo.genre eq '商业'}">selected</c:if>>商业</option>
                                </select>
                            </div>
                            <div class="col-md-6 yourplace-grid">
                                <h5>总价</h5>
                                <select class="sel3" name="bTotalprice">
                                    <option value="">总价</option>
                                    <option value="0-100" <c:if test="${buildQueryPojo.bTotalprice eq 0}">selected</c:if>>
                                        <100万</option>
                                    <option value="100-200" <c:if test="${buildQueryPojo.bTotalprice eq 100}">selected</c:if>>100-200万</option>
                                    <option value="200-300" <c:if test="${buildQueryPojo.bTotalprice eq 200}">selected</c:if>>200-300万</option>
                                    <option value="300-500" <c:if test="${buildQueryPojo.bTotalprice eq 300}">selected</c:if>>300-500万</option>
                                    <option value="500-10000" <c:if test="${buildQueryPojo.bTotalprice eq 500}">selected</c:if>>>500万</option>
                                </select>
                            </div>
                            <div class="yourplace-grids1">
                                <div class="col-md-6 yourplace-grid">
                                    <h5>单价</h5>
                                    <select class="sel3" name="bPerprice">
                                        <option value="">单价</option>
                                        <option value="0-20000" <c:if test="${buildQueryPojo.bPerprice eq 0}">selected</c:if>>
                                            <2万</option>
                                        <option value="20000-30000" <c:if test="${buildQueryPojo.bPerprice eq 20000}">selected</c:if>>2-3万</option>
                                        <option value="30000-40000" <c:if test="${buildQueryPojo.bPerprice eq 30000}">selected</c:if>>3-4万</option>
                                        <option value="40000-50000" <c:if test="${buildQueryPojo.bPerprice eq 40000}">selected</c:if>>4-5万</option>
                                        <option value="50000-10000000000" <c:if test="${buildQueryPojo.bPerprice eq 50000}">selected</c:if>>5万及以上</option>
                                    </select>
                                </div>
                                <div class="col-md-6 yourplace-grid">
                                    <h5>面积</h5>
                                    <select class="sel3" name="acreage">
                                        <option value="">请选择</option>
                                        <option value="30-50">30-50</option>
                                        <option value="50-100">50-100</option>
                                        <option value="100-150">100-150</option>
                                        <option value="150">150~</option>
                                    </select>
                                </div>
                            </div>
                            <button style="width: 140px;height: 50px;margin-top: 10px; font-size: 20px;" type="submit" class="btn btn-warning">搜索</button>
                        </form>
                    </div>
<script>
    function  getPage(curPage) {

        //将我们这个隐藏域的值变成curPage
        $("#curPage").val(curPage);
        //触发表单提交事件
        $("#mainForm").submit();

    }
    function mainForm() {
        $("#mainForm").submit();
    }
</script>

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
        <div class="modal-content modal-info" style="min-width: 550px;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body real-spa">
                <div class="login-grids">
                    <div class="login">

                        <div class="login-right">
                            <form  action="${pageContext.request.contextPath}/login.action" method="post" onsubmit="return loginsubmint('p')">
                                <h3>Login</h3>
                                <div class="form-group">
                                    <label for="uname"><span style="font-size:18px">用户名:</span></label>
                                    <input id="uname" name="uname" type="text" placeholder="用户名">
                                    <span></span>
                                </div>
                                <p/>
                                <div class="form-group">
                                    <label for="password"><span style="font-size:18px">密&nbsp;&nbsp;&nbsp;&nbsp;码:</span></label>
                                    <input id="password" name="password" type="password" placeholder="密码">
                                    <span></span>
                                </div>
                                <label class="radio-inline">
                                    <input type="radio" name="userType"  value="1" checked>普通用户
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="userType"  value="2">开发商
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="userType"  value="3">咨询师
                                </label>
                                <p/>
                                <div class="single-bottom">
                                    <label class="checkbox-inline">
                                        <input type="checkbox" id="inlineCheckbox2" value="option2">记住密码
                                    </label>
                                </div>
                                <input type="submit" value="登录" >
                            </form>
                        </div>

                    </div>
                    <p>By logging in you agree to our <a href="#">Terms</a> and <a href="#">Conditions</a> and <a href="#">Privacy Policy</a></p>
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
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body real-spa">
                <div class="login-grids">
                    <div class="login">
                        <div class="login-right">
                            <form action="${pageContext.request.contextPath}/register.action" method="post" onsubmit="return registersubmit('p')">
                                <h3>普通用户注册 </h3>
                                <input style="color:#000" id="runame" name="runame" type="text" placeholder="用户名" >
                                <span></span>
                                <input style="color:#000" id="rpass" name="rpass" type="password" placeholder="密码" >
                                <span></span>
                                <input style="color:#000" id="repass" name="repass" type="password" placeholder="确认密码" >
                                <span></span>
                                <input style="color:#000" id="rphone" name="rphone" type="text" placeholder="手机号">
                                <span></span>
                                <br>
                                <input style="color:#000;width:160px;" id="yanzm" name="yanzm" type="text" placeholder="验证码">

                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <button type="button" style="background: #2EA9E0; width:250px;border-radius:5px; height:45px; text-align:center; color:#FFF" id="b1">获取验证码</button>
                                <span></span>

                                <input type="submit" value="注册" >
                            </form>
                        </div>
                    </div>
                    <p><a href="${pageContext.request.contextPath}/user/bao/developerRegister/register.jsp">开发商注册>></a></p>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    <!--短信验证-->
    var timer;
    var time=5;
    var yznum;
    $("#b1").click(function(){
        var phonea=$("#rphone");
        var regphonea=/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
        if(regphonea.test(phonea.val())){
            yznum="";
            for(var i=0;i<6;i++){
                yznum+=Math.floor(Math.random()*10);
            }
            alert(yznum);
            $.ajax({
                type:"get",
                url:"${pageContext.request.contextPath}/sendyanzm.action",
                data:"yznum="+yznum+"&rphone="+$('#rphone').val(),
                success:function (da) {

                    if(da==1){

                    }
                }
            });
            $("#b1").text("5秒后重新获取");

            $("#b1").attr("disabled", true);
            $("#b1").css("background","#F0F0F0");
            $("#b1").css("color","black");
            timer=setInterval('time1()',1000);
        }else{
            phonea.next("SPAN").text("请输入正确的手机号");
            phonea.next("SPAN").removeClass();

            phonea.next("SPAN").addClass("error");
        }

//
    });
    function time1(){
        time--;
        $("#b1").text(time+"秒后重新获取");
        if(time==0){
            clearInterval(timer);
            $("#b1").removeAttr("disabled");
            $("#b1").text("获取验证码");
            time=5;
            $("#b1").css("background","#3587FF");
            $("#b1").removeAttr("color");
            $("#b1").css("color","white");
            return;
        }
    }
    onload=registersubmit;
    function registersubmit(param){
        var flag=true;
        //验证用户名
        var uname=$("#runame");
        var regname=/^[a-zA-Z][a-zA-Z0-9_]{4,15}$/;
        checkuanme(uname,function (val1) {
            if(regname.test(val1)){
                return true;
            }else {
                flag= false;
                return false;
            }
        },function (val2) {
            if(val2==0){
                return true;
            }else {
                flag= false;
                return false;
            }
        },param);

        //验证密码
        var pass=$("#rpass");
        var regpass=/^[\w]{6,12}$/;
        checkData(pass,function (val) {
            if(regpass.test(val)){
                return true;
            }else {
                flag=false;
                return false;
            }
        },"密码长度在6~12之间，只能包含字母、数字和下划线",param)
        //验证密码
        var repass=$("#repass");

        checkData(repass,function (val) {
            if(val!=""&&pass.val()==val){
                return true;
            }else {
                flag=false;
                return false;
            }
        },"两次密码输入不一致",param)
        //验证手机号
        var phone=$("#rphone");
        var regphone=/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
        checkData(phone,function (val) {
            if(regphone.test(val)){
                return true;
            }else{
                flag=false;
                return false;
            }
        },"请输入正确的手机号",param);
        //验证验证码

        var reyanznum=$("#yanzm");
//
        reyanznum.focus(function () {
            $("#b1").next("SPAN").text("");
        });
        if(param=='p'){
            if(reyanznum.val()==yznum){
                //验证码正确
            }else {
                //alert(${pageContext.session.getAttribute("yznum")});
                $("#b1").next("SPAN").text("验证码错误");
                $("#b1").next("SPAN").removeClass();
                $("#b1") .next("SPAN").addClass("error");
                flag=false;
            }
        }
        return flag;
    }
    //验证用户名函数
    function checkuanme(obj,fun1,fun2,param) {
        var span=obj.next("SPAN");

        obj.focus(function () {
            span.text("");
            span.removeClass();
        });
        obj.blur(function () {
            var value=obj.val();
            if(fun1(value)){

                $.ajax({
                    type:"get",
                    url:"${pageContext.request.contextPath}/checkUname.action",
                    data:"runame="+$("#runame").val(),
                    success:function (da) {

                        if(fun2(da)){
                            span.text("OK");
                            span.removeClass();
                            span.addClass("success");
                        }else{
                            span.text("用户名已存在");
                            span.removeClass();
                            span.addClass("error")
                        }
                    }
                });
            }else {
                span.text("用户名字母开头，5-16位，字母数字下划线");
                span.removeClass();
                span.addClass("error");
            }
        });
        if(param=='p'){
            obj.blur();
        }
    }
    //验证其他
    function checkData(obj,fun,info,param){
        var span=obj.next("SPAN");
        obj.focus(function () {
            span.text("");
            span.removeClass();
        });
        obj.blur(function () {
            var value=obj.val();
            if(fun(value)){
                span.text("OK");
                span.addClass("success");
            }else {
                span.text(info);
                span.removeClass();
                span.addClass("error");
            }

        });
        if(param =='p'){
            obj.blur();
        }

    }
    function  loginsubmint(param) {

        var flag=true;
        var uname=$("#uname");
        var password=$("#password");
        if(param=='p'){
            $.ajax({
                async:false,
                type:"get",
                url:"${pageContext.request.contextPath}/checkLoginUname.action",
                data:"uname="+uname.val()+"&userType="+$("input[name='userType']:checked").val()+"&password="+password.val(),
                success:function (da){

                    if(da==0){

                        uname.next("SPAN").text("用户名不存在");
                        uname.next("SPAN").removeClass();
                        uname.next("SPAN").addClass("error");
                        flag=false;
                    }else if(da==1){

                        password.next("SPAN").text("密码错误");
                        password.next("SPAN").removeClass();
                        password.next("SPAN").addClass("error");
                        flag=false;
                    }
                },
                error:function () {
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
