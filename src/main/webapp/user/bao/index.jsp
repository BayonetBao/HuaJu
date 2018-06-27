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
<html>
<head>
    <style>
        .zixunshi{
            width:110px;
            margin-left:600px;

        }
        .name{
            width:100px;
            margin-left:600px;
        }
        .success{
            color: #40ff1f;
        }
        .error{
            color: #ff0d20;
        }
    </style>



    <title>首页</title>
    <!---css--->
    <link href="${pageContext.request.contextPath}/user/bao/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="${pageContext.request.contextPath}/user/bao/css/style.css" rel='stylesheet' type='text/css' />
    <!---css--->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Real Space Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!---js--->
    <script src="${pageContext.request.contextPath}/user/bao/js/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/user/bao/js/bootstrap.js"></script>
    <!---js--->
    <!---fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
    <!---三级联-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/user/ke/jQueryDistpicker20160621/dist/distpicker.data.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/user/ke/jQueryDistpicker20160621/dist/distpicker.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/user/ke/jQueryDistpicker20160621/js/main.js"></script>

    <script src="${pageContext.request.contextPath}/user/bao/js/responsiveslides.min.js"></script>
    <script>
        $(function () {
            $("#slider").responsiveSlides({
                auto:true,
                nav: false,
                speed: 500,
                namespace: "callbacks",
                pager:true,
            });
        });
    </script>
    <link href="${pageContext.request.contextPath}/user/bao/css/owl.carousel.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/user/bao/js/owl.carousel.js"></script>
    <script>
        $(document).ready(function() {
            $("#owl-demo").owlCarousel({
                items : 1,
                lazyLoad : true,
                autoPlay : true,
                navigation : false,
                navigationText :  false,
                pagination : true,
            });
        });
    </script>
</head>
<body>
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
                            <li><i class="glyphicon glyphicon-user" aria-hidden="true"></i>普通用户&nbsp;&nbsp;&nbsp;<a style="color: #28ffef" href="${pageContext.request.contextPath}/user/ke/single.jsp">${user.uname}</a>&nbsp;&nbsp;&nbsp;&nbsp;<a  href="${pageContext.request.contextPath}/exit.action" ><i title="退出" class="glyphicon glyphicon-log-out" aria-hidden="true"></i></a></li>
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
                    <li class="active"><a href="${pageContext.request.contextPath}/build/index.action">&nbsp;&nbsp;&nbsp;&nbsp;首&nbsp;页&nbsp;&nbsp;&nbsp;&nbsp;<span class="sr-only">(current)</span></a></li>
                    <li class="dropdown">
                        <a href="${pageContext.request.contextPath}/build/selectBuildQueryPojo.action">&nbsp;&nbsp;&nbsp;&nbsp;楼盘查询&nbsp;&nbsp;&nbsp;&nbsp;</a>

                    </li>

                    <li><a href="${pageContext.request.contextPath}/cta/ctalist.action">&nbsp;&nbsp;&nbsp;&nbsp;咨询师&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                    <li><a href="">&nbsp;&nbsp;&nbsp;&nbsp;联系我们&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                    <!--  <li><a href="contact.html">&nbsp;&nbsp;&nbsp;&nbsp;团队介绍&nbsp;&nbsp;&nbsp;&nbsp;</a></li>-->
                </ul>

                <div class="clearfix"></div>
            </div>
        </nav>
    </div>
</div>
<!---header--->
<!---banner--->
<div class="slider">
    <div class="callbacks_container">
        <ul class="rslides" id="slider">
            <div class="slid banner1">
                <div class="caption">
                    <h3>1400 Anastasia Avenue</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec pellentesque ex. Morbi iaculis mi in varius auctor. Nullam feugiat erat .</p>
                    <a href="#" class="button">know more</a>
                </div>
            </div>
            <div class="slid banner2">
                <div class="caption">
                    <h3>Oakland, NJ94605</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec pellentesque ex. Morbi iaculis mi in varius auctor. Nullam feugiat erat .</p>
                    <a href="#" class="button">know more</a>
                </div>
            </div>
            <div class="slid banner3">
                <div class="caption">
                    <h3>Florida 5, Pinecrest, FL</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec pellentesque ex. Morbi iaculis mi in varius auctor. Nullam feugiat erat .</p>
                    <a href="#" class="button">know more</a>
                </div>
            </div>
        </ul>
    </div>
</div>
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>
<!---banner--->
<div class="content">
    <div class="place-section">
        <div class="container">
            <p style="font-size: 30px;text-align: center;font-weight: 200">我要找房</p>
            <form id="mainForm" action="${pageContext.request.contextPath}/build/selectBuildQueryPojo.action">
                <div class="place-grids">
                <input type="hidden" value="1" id="curPage" name="curPage" />
                <input type="hidden" value="" id="isonsale" name="isonsale"/>
                    <div id="distpicker5">
                    <div class="yourplace col-md-2" style="width: 250px;">
                        <h5>省份</h5>
                        <label class="sr-only" for="province1">Province</label>
                        <select class="sel3" name="province" id="province1">
                        </select>
                    </div>
                    <div class="yourplace col-md-2" style="width: 250px;">
                        <h5>城市</h5>
                        <label class="sr-only" for="city1">City</label>
                        <select class="sel3" name="city" id="city1"></select>
                    </div>
                    <div class="yourplace col-md-2" style="width: 250px;">
                        <h5>区域</h5>
                        <label class="sr-only" for="district1" name="district">District</label>
                        <select class="sel3" name="district" id="district1"></select>
                    </div>
                </div>
                    <div class="yourplace col-md-2">
                        <h5>特色</h5>
                        <select class="sel3" name="charactere">
                            <option value="">不限</option>
                            <option value="小户型" <c:if test="${buildQueryPojo.charactere eq '小户型'}">selected</c:if>>小户型</option>
                            <option value="临地铁" <c:if test="${buildQueryPojo.charactere eq '临地铁'}">selected</c:if>>临地铁</option>
                            <option value="现房" <c:if test="${buildQueryPojo.charactere eq '现房'}">selected</c:if>>现房</option>
                            <option value="品牌地产" <c:if test="${buildQueryPojo.charactere eq '品牌地产'}">selected</c:if>>品牌地产</option>
                        </select>
                    </div>
                <div class="yourplace col-md-2">
                    <h5>户型</h5>
                    <select class="sel2" name="typeid">
                        <option value="">不限</option>
                        <option value="1">一居</option>
                        <option value="2">二居</option>
                        <option value="3">三居</option>
                    </select>
                </div>
                    <div class="clearfix"></div>
                </div>
                <div class="place-grids">
                    <div class="yourplace col-md-2">
                        <h5>类型</h5>
                        <select class="sel2" name="genre">
                            <option value="">不限</option>
                            <option value="住宅" <c:if test="${buildQueryPojo.genre eq '住宅'}">selected</c:if>>住宅</option>
                            <option value="别墅" <c:if test="${buildQueryPojo.genre eq '别墅'}">selected</c:if>>别墅</option>
                            <option value="商业" <c:if test="${buildQueryPojo.genre eq '商业'}">selected</c:if>>商业</option>
                        </select>
                    </div>
                <div class="col-md-2 yourplace-grid">
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
                    <div class="col-md-2 yourplace-grid">
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
                    <div class="col-md-2 yourplace-grid">
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
                    <div class="col-md-4 search">
                            <input type="submit" value="Search">
                    </div>
                </div>
            </form>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <c:if test="${not empty ctas}">
    <div class="friend-agent">
        <div class="container" >
            <div style="overflow: auto;height: 50px;margin-top: 15px;"><h3 style="float: left;margin-left: 30px;text-align: left; width:160px;">华居咨询师</h3><span style="margin-left: 800px;font-size: 16px;line-height: 48px;"><a href="${pageContext.request.contextPath}/cta/ctalist.action">更多咨询师</a></span></div>
            <div class="friend-grids">
                    <c:forEach items="${ctas}" var="cta" varStatus="i">
                        <c:if test="${i.index<3}">
                            <div class="col-md-4 friend-grid" >
                                <img src="${pageContext.request.contextPath}/${cta.ctaimg}">
                                <h4 style="font-family: 微软雅黑">优秀咨询师</h4>${cta.ctarelname}&nbsp;&nbsp;&nbsp;<span>${cta.education}</span>
                                <p>毕业于${cta.school}</p>
                                <%--<p>${cta.education}</p>--%>
                                <p style="width:350px; text-overflow:ellipsis;  white-space:nowrap;overflow:hidden;">${cta.intro}</p>
                                <p>${cta.education}</p>
                                <p style="height: 50px;overflow: hidden;word-wrap: break-word;"><span>个人介绍：</span>${cta.intro}</p>
                            </div>
                        </c:if>
                    </c:forEach>

                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    </c:if>
    <div class="offering">
        <div class="container" style="border: solid #c3c3c3 1px;">
            <div style="overflow: auto;height: 50px; margin-top: 15px;"><h3 style="float: left;margin-left: 30px;text-align: left; width:160px; font-family:微软雅黑">优惠楼盘</h3><span style="margin-left: 800px;font-size: 16px;line-height: 48px;"><a href="${pageContext.request.contextPath}/build/selectBuildQueryPojo.action">更多优惠楼盘</a></span></div>
            <div class="offer-grids" style="margin-top: 15px;">
                <c:forEach items="${discountBuildList}" var="disblist" varStatus="i">
                    <c:if test="${i.index<4}">
                <div class="col-md-6 offer-grid" style="margin-bottom:30px;width: 540px;height: 230px;">
                    <div class="offer-grid1">
                        <h4><a href="${pageContext.request.contextPath}/build/buildIndex.action?buildingid=${disblist.buildingid}">${disblist.building}</a></h4>
                        <div class="offer1">
                            <div class="offer-left">
                                <a href="${pageContext.request.contextPath}/build/buildIndex.action?buildingid=${disblist.buildingid}" class="mask"><img width="245" height="170" src="${pageContext.request.contextPath}/${disblist.bpicture}" class="img-responsive zoom-img" alt="${disblist.building}"/></a>
                            </div>
                            <div class="offer-right">
                                <h5>最低<label>￥</label><fmt:formatNumber value=" ${disblist.bperprice}" type="number" maxFractionDigits="3"/>元/㎡起<span></span></h5>
                                <p>建面 ${disblist.acreage}—${disblist.maxacreage} ㎡&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${blist.city}</p>
                                <p>${disblist.discounts}</p>
                                <p><a style="color: #00ccff" href="${pageContext.request.contextPath}/build/buildIndex.action?buildingid=${disblist.buildingid}">查看详情</a></p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                    </c:if>
                </c:forEach>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!---Featured Properties--->
    <div class="feature-section">
        <div class="container" style="border: solid #c3c3c3 1px;">
            <div style="overflow: auto;height: 50px; margin-top: 15px;">
                <h3 style="float: left;margin-left: 30px;text-align: left; width:160px; font-family:微软雅黑 ">品质楼盘</h3><span style="margin-left: 800px;font-size: 16px;line-height: 48px;"><a href="${pageContext.request.contextPath}/build/selectBuildQueryPojo.action">更多好盘</a></span>
            </div>
                <c:forEach items="${adviceBuildList}" var="advblist" varStatus="i">
                <c:if test="${i.index<5}">
            <div class="feature-grids">
                <div class="col-md-3 feature-grid">
                    <img width="255" height="175" src="${pageContext.request.contextPath}/${advblist.bpicture}" class="img-responsive zoom-img" alt="${advblist.building}">
                    <h5 style="font-size: 24px;font-family: 'arial', '微软雅黑'"><a href="${pageContext.request.contextPath}/build/buildIndex.action?buildingid=${advblist.buildingid}"></a>${advblist.building}</h5>
                    <a href="${pageContext.request.contextPath}/build/buildIndex.action?buildingid=${advblist.buildingid}"><img width="255" height="175" src="${pageContext.request.contextPath}/${advblist.bpicture}" class="img-responsive zoom-img" alt="${advblist.building}"></a>
                    <h5 style="font-size: 24px;"><a href="${pageContext.request.contextPath}/build/buildIndex.action?buildingid=${advblist.buildingid}">${advblist.building}</a></h5>

                    <p><fmt:formatNumber value=" ${advblist.bperprice}" type="number" maxFractionDigits="3"/>元/㎡起</p>
                    <p>建面 ${advblist.acreage}—${advblist.maxacreage} ㎡&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${advblist.city}</p>
                    推荐理由：<p style=" height: 50px; overflow: hidden; width: 260px; word-wrap: break-word;">${advblist.advice}</p>
                    <p><a style="color: #00ccff" href="${pageContext.request.contextPath}/build/buildIndex.action?buildingid=${advblist.buildingid}">查看详情</a></p>
                    推荐理由：<p style="text-indent: 2em;height: 100px;text-overflow:ellipsis;overflow: hidden;word-wrap: break-word;">${advblist.advice}</p>
                    <%--推荐理由：<p style="text-indent: 2em;display:-webkit-box;-webkit-box-orient:vertical;-webkit-line-clamp:4;overflow: hidden;">${advblist.advice}</p>--%>
                    <%--style=" height: 50px; overflow: hidden; width: 260px; word-wrap: break-word;"--%>

                    <p>.....&nbsp;&nbsp;&nbsp;&nbsp;<a style="color: #00ccff" href="${pageContext.request.contextPath}/build/buildIndex.action?buildingid=${advblist.buildingid}">查看详情</a></p>
                </div>
            </div>
            </c:if>
            </c:forEach>
            <div class="clearfix"></div>
        </div>
    </div>
    <!---testimonials--->
    <div class="testimonials">
        <div class="container">
            <h3>testimonial</h3>
            <span></span>
            <div id="owl-demo" class="owl-carousel">
                <div class="item">
                    <div class="col-md-2 testmonial-img">
                        <img src="images/t1.png" class="img-responsive" alt=""/>
                    </div>
                    <div class="col-md-10 testmonial-text">
                        <p>Lorem ipsum dolor sit amet, offendit volutpat sea ex, at omnium scripta pro, at omnium scripta pro, ei mea oratio malorum forensibus. ei mea oratio malorum forensibus. Sed ei omnes laoreet posidonium ei mea oratio malorum forensibus.</p>
                        <h4><a href="#">Michael Feng</a></h4>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="item">
                    <div class="col-md-2 testmonial-img">
                        <img src="images/t2.png" class="img-responsive" alt=""/>
                    </div>
                    <div class="col-md-10 testmonial-text">
                        <p>Lorem ipsum dolor sit amet, offendit volutpat sea ex, at omnium scripta pro, at omnium scripta pro, ei mea oratio malorum forensibus. ei mea oratio malorum forensibus. Sed ei omnes laoreet posidonium ei mea oratio malorum forensibus.</p>
                        <h4><a href="#">Stacy Barron</a></h4>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="item">
                    <div class="col-md-2 testmonial-img">
                        <img src="images/t3.png" class="img-responsive" alt=""/>
                    </div>
                    <div class="col-md-10 testmonial-text">
                        <p>Lorem ipsum dolor sit amet, offendit volutpat sea ex, at omnium scripta pro, at omnium scripta pro, ei mea oratio malorum forensibus. ei mea oratio malorum forensibus. Sed ei omnes laoreet posidonium ei mea oratio malorum forensibus.</p>
                        <h4><a href="#">Johnson </a></h4>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
    </div>
    <!---testmonials--->
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
                    <li><a href="agents.html"> All Agents</a></li>
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
            <div class="clearfix"> </div>
        </div>

    </div>
</div>
<!---footer--->
<!--copy-->
<div class="copy-section">
    <div class="container">
        <p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
    </div>
</div>
<!--copy-->
<!-- login -->
<div class="update_modal">
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
                                        <%--<input type="checkbox" id="inlineCheckbox2" value="option2">记住密码--%>
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
</div>
<!-- //login -->
<!-- Register -->
<div class="update_modal">
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
