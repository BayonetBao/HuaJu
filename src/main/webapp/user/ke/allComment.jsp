
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.*" %>
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
    <title>楼盘动态</title>
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
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=NHeOezVjNdxk5C1Q4i14l4SkfTeMdpLp"></script>
    <script src="${pageContext.request.contextPath}/user/bao/js/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/user/bao/js/unslider.min.js"></script>
    <script src="${pageContext.request.contextPath}/user/bao/js/bootstrap.js"></script>
    <!---js--->
    <!---fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
    <%--消息框--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/message.css" type="text/css" />
    <script src="${pageContext.request.contextPath}/user/ke/js/message.js"></script>
    <!---fonts-->
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
    <!-- FlexSlider -->
    <script src="${pageContext.request.contextPath}/user/ke/js/jquery.flexslider.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/flexslider.css" type="text/css" media="screen" />

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
    <style>

        html, body { font-family: Segoe, "Segoe UI", "DejaVu Sans", "Trebuchet MS", Verdana, sans-serif;}

        ul, ol { padding: 0;}
        .red{
            color: red;
        }
        .dropdown-menu li a:hover{
            color: red;
            background-color: white;
        }

        .banner { position: relative; overflow: auto; margin:10px auto; text-align: center;}

        .banner li { list-style: none; }

        .banner ul li { float: left; }


        #b04 { width: 520px;}
        #b04 .dots { position: absolute; left: 0; right: 0; bottom: 10px;}

        #b04 .dots li
        {
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

        #b04 .dots li.active

        {

            background: #fff;

            opacity: 1;

        }


        #b04 .arrow { position: absolute; top: 200px;}

        #b04 #al { left: 15px;}

        #b04 #ar { right: 15px;}
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
                    <h1><a href="${pageContext.request.contextPath}/user/bao/index.jsp"><span>华&nbsp;&nbsp;&nbsp;&nbsp;居</span></a></h1>
                </div>

            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="${pageContext.request.contextPath}/user/bao/index.jsp">&nbsp;&nbsp;&nbsp;&nbsp;首&nbsp;页&nbsp;&nbsp;&nbsp;&nbsp;<span class="sr-only">(current)</span></a></li>
                    <li class="dropdown">
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
        <h2 style="font-family: 'Open Sans', sans-serif">楼&nbsp;盘&nbsp;评&nbsp;论</h2>
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
            <c:set var="characters" value='${fn:split(character, ",")}'></c:set>
            <c:forEach items="${characters}" var="characterss">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <span style=" color:#0cf;border:solid #0CF 1px;padding:0px 8px; font-size:9px;">${characterss}</span>
            </c:forEach>
        </c:if>
    </p>
</div>
<nav class="navbar-default" style="background-color:#f8f8f8;overflow:auto; min-width:1125px;">

    <!-- Collect the nav links, forms, and other content for toggling -->

    <ul class="nav navbar-nav" style="float:none; margin:10px auto; width:1120px;">

        <li style="margin-right:57px; margin-left:16px;"><a style="color: #0b0b0b;" href="index.html">楼盘主页<span class="sr-only">(current)</span></a></li>
        <li style="margin-right:57px;"><a href="blog.html" style="color: #0b0b0b;">楼盘详情</a></li>
        <li style="margin-right:57px;"><a href="${pageContext.request.contextPath}/comment/selectAllCommentByQueryPojoFront.action?buildingid=${b.buildingid}" style="color: #0b0b0b;">楼盘评论</a></li>
        <li style="margin-right:57px;" class="active"><a href="codes.html" style="color: #0b0b0b;">户型</a></li>
        <li style="margin-right:57px;"><a href="${pageContext.request.contextPath}/dynamic/selectAllDynamicByBuild.action?${build.buildingid}" style="color: #0b0b0b;">楼盘动态</a></li>
        <li style="margin-right:57px;" ><a href="contact.html" style="color: #0b0b0b;">楼盘图册</a></li>
        <li style="margin-right:57px;"><a href="contact.html" style="color: #0b0b0b;">楼盘活动</a></li>
        <li><a href="${pageContext.request.contextPath}/build/buildAroundAnalysis.action?buildingid=${build.buildingid}" style="color: #0b0b0b;">楼盘周边</a></li>
    </ul>
</nav>
<!---header--->
<!---banner--->
<div class="content" style="margin-top:0px;">
    <div class="properties-section" style="margin-top:0px;padding-top:0px;">
        <div class="container" style="margin-top:0px;padding-top:0px;background-color:rgba(98,98,98,0.15);width:1180px;">
            <div class="properties-grids" >
                <div class="col-md-9 properties-left" >
                    <%--楼盘动态--%>
                    <div class="content">
                        <div class="blog-section"  style="margin-top: 0px;padding-top: 0px;">
                            <div  style="padding: 0px;margin: 0px;">
                                <div class="blog-grids" style="width: 1180px;"  style="margin-top: 0px;padding-top: 0px;">
                                    <div class="col-md-12 blog-grid" >
                                        <!---RESPONSES--->
                                        <div class="coment-form col-md-12">
                                            <div>
                                                <div class="grid_3 grid_5 col-md-12"  style="margin-top: 0px;padding-top: 0px;">
                                                    <p style="font-size:24px;margin-bottom:5px;margin-top: 0px;padding-top: 0px;"><c:choose>
                                                        <c:when test="${commentQueryPojo.idtype!=null && commentQueryPojo.idtype != '' }">
                                                            <c:choose>
                                                                <c:when test="${commentQueryPojo.idtype eq 1}">用户</c:when>
                                                                <c:when test="${commentQueryPojo.idtype eq 2}">开发商</c:when>
                                                                <c:otherwise>
                                                                    咨询师
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </c:when>
                                                        <c:otherwise>
                                                            所有
                                                        </c:otherwise>
                                                    </c:choose>评论<span class="badge badge-info" style="font-size:12px">${fn:length(comments)}
                                <c:choose>
                                    <c:when test="${commentQueryPojo.comtype!=null && commentQueryPojo.idtype != '' }">
                                        (${commentQueryPojo.comtype})
                                    </c:when>
                                    <c:otherwise>

                                    </c:otherwise></c:choose>

                                </span>
                                                    </p>
                                                    <div class="btn-group"  style="width:71%;margin-bottom:0px;">
                                                        <button value="" onclick="hiddenIdtype(this.value)" type="button" class="btn btn-default btn-lg btn-warning" style="width:25%">
                                                            所有评论
                                                        </button>
                                                        <button value="1" onclick="hiddenIdtype(this.value)" type="button" class="btn btn-default btn-lg btn-warning" style="width:25%">用户评论</button>
                                                        <button value="2" onclick="hiddenIdtype(this.value)" type="button" class="btn btn-default btn-lg btn-warning" style="width:25%">开发商评论</button>
                                                        <button value="3" onclick="hiddenIdtype(this.value)" type="button" class="btn btn-default btn-lg btn-warning" style="width:24%">咨询师评论</button>
                                                    </div>
                                                    <div class="btn-group"  style="width:71%;margin-bottom:10px;">
                                                        <button value="好评" type="button" onclick="hiddenComtype(this.value)" class="btn btn-default btn-lg btn-warning" style="width:33%">
                                                            好评
                                                        </button>
                                                        <button value="中评" type="button" onclick="hiddenComtype(this.value)" class="btn btn-default btn-lg btn-warning" style="width:33%">中评</button>
                                                        <button value="差评" type="button" onclick="hiddenComtype(this.value)" class="btn btn-default btn-lg btn-warning" style="width:33%">差评</button>
                                                    </div>
                                                    <%--查找评论的隐藏表单 通过按钮触发script 更改hidden的input的value submit--%>
                                                    <form id="hiddenForm" action="${pageContext.request.contextPath}/comment/selectAllCommentByQueryPojoFrontSingle.action" method="post">
                                                        <input type="hidden" id="curPage" name="curPage" value="1"/>
                                                        <input type="hidden" id="buildingid" name="buildingid" value="${build.buildingid}"/>
                                                        <input type="hidden" id="comtype" name="comtype" value="${commentQueryPojo.comtype}"/>
                                                        <input type="hidden" id="idtype" name="idtype" value="${commentQueryPojo.idtype}"/>
                                                    </form>
                                                    <c:forEach items="${pageInfo.list}" var="comment">
                                                        <div id="div_${comment.commentid}"
                                                                <c:choose>
                                                                    <c:when test="${fn:contains(comment.comtype,'好评')}"> class="alert alert-success" </c:when>
                                                                    <c:when test="${fn:contains(comment.comtype,'中评')}">class="alert alert-info"</c:when>
                                                                    <c:otherwise>class="alert alert-warning"</c:otherwise>
                                                                </c:choose>
                                                             style="font-size:14px;width:70%;height:190px;">
                                                            <c:set value="${comment.userpic}" var="pic"/>
                                                            <c:if test="${comment.userpic eq null||comment.userpic eq ''}"><c:set value="a2.jpg" var="pic"></c:set></c:if>
                                                            <img src="${pageContext.request.contextPath}/user/ke/images/userImg/${pic}" alt="头像" class="img-circle" width="100px" height="100px"/>
                                                            <p style="margin-top:10px;margin-left:20px;margin-bottom: 60px;"><span class="glyphicon glyphicon-user">${comment.uname}
                                            <c:choose>
                                                <c:when test="${comment.idtype eq 3}"><a href=""><img src="${pageContext.request.contextPath}/user/ke/images/zixunshi.png"
                                                                                                      style="margin-left:-93px;margin-top:-65px;width: 135px;height: 60px;" alt="咨询师" title="向他咨询"></a></c:when><c:when test="${comment.idtype eq 2}"><a href=""><img src="" alt="开发商" title="向他咨询"></a></c:when><c:otherwise><a href=""><img src="" alt="用 户" title="与他讨论"></a></c:otherwise>
                                            </c:choose>
                                        </span><p>
                                                            <p class="" style="font-size:16px;padding-left:15%;margin-top:-180px;">${comment.comcontent}</p>
                                                            <p
                                                            <c:choose>
                                                            <c:when test="${fn:contains(comment.comtype,'好评')}"> class="glyphicon glyphicon-thumbs-up"  </c:when>
                                                            <c:when test="${fn:contains(comment.comtype,'中评')}"> class="glyphicon glyphicon-hand-right"</c:when>
                                                                                                                 <c:otherwise>class="glyphicon glyphicon-thumbs-down"</c:otherwise>
                                                            </c:choose>

                                                                                                                 style="position: relative;top:29%;left: 17%;">
                                                                    <fmt:formatDate value="${comment.comtime}" pattern="yyyy-MM-dd hh:mm:ss"/>
                                                                <c:choose>
                                                                <c:when test="${sessionScope.userType eq comment.idtype && sessionScope.uid eq comment.id}">
                                                                <a href="javascript:deleteComment(${comment.commentid})">删除</a>
                                                                </c:when>
                                                                <c:otherwise>&nbsp;&nbsp;</c:otherwise>
                                                                </c:choose>
                                                            <p
                                                                    <c:choose>
                                                                        <c:when test="${fn:contains(comment.comtype,'好评')}"> class="glyphicon glyphicon-thumbs-up"  </c:when>
                                                                        <c:when test="${fn:contains(comment.comtype,'中评')}"> class="glyphicon glyphicon-hand-right"</c:when>
                                                                        <c:otherwise>class="glyphicon glyphicon-thumbs-down"</c:otherwise>
                                                                    </c:choose>
                                                                    style="position: relative;left: 58%;top:25%;">
                                                                <a href="javascript:void(0)"  onclick="favor(${comment.commentid})">
                                                                    <c:set var="flag" value="false"/>
                                                                    <c:forEach items="${comment.favors}" var="fa">
                                                                        <c:if test="${fa.userid eq sessionScope.uid && fa.favortype eq sessionScope.userType}">
                                                                            <c:set var="flag" value="true"/>
                                                                        </c:if>
                                                                    </c:forEach>
                                                                    <c:if test="${flag}"> <span class="red" id="click_favor_${comment.commentid}">取消点赞</span></c:if><c:if test="${!flag}"><span  id="click_favor_${comment.commentid}">点赞</span></c:if>(<span id="count_${comment.commentid}">${fn:length(comment.favors)}</span>)
                                                                </a></p>
                                                            <div class="dropdown" style="margin-top: 5px;margin-left:95%;">
                                                                <a data-toggle="dropdown" href="javascript:void(0)" onmousedown="seeRecomment(${comment.commentid})">回复<span  class="caret"></span></a>
                                                                <ul data-stopPropagation="true" class="dropdown-menu" style="margin-left: -750px;width: 800px;">
                                                                    <li  id="ul_${comment.commentid}" > <a name="hui"></a><textarea  type="text" id="recontent_${comment.commentid}" data-stopPropagation="true" onfocus="this.value = '';" style="width:95%; margin-left: 15px;"  onblur="if (this.value == '') {this.value = 'Your Comment...';}" required="">Your Comment...</textarea>
                                                                        <div class="tags" style="margin-top: 0px;" data-stopPropagation="true">
                                                                            <ul data-stopPropagation="true" style="margin-left: 80%">
                                                                                <input type="hidden" id="reobjectname_${comment.commentid}"+ value="${comment.uname}"/>
                                                                                <input type="hidden" id="reobjectid_${comment.commentid}" value="${comment.id}"/>
                                                                                <input type="hidden" id="reobjecttype_${comment.commentid}" value="${comment.idtype}"/>
                                                                                <input type="hidden" id="reobjectnamee_${comment.commentid}"+ value="${comment.uname}"/>
                                                                                <input type="hidden" id="reobjectide_${comment.commentid}" value="${comment.id}"/>
                                                                                <input type="hidden" id="reobjecttypee_${comment.commentid}" value="${comment.idtype}"/>
                                                                                <li data-stopPropagation="true"><a href="javascript:addrecomment(${comment.commentid})">Submit Comment</a></li>
                                                                            </ul></div>
                                                                    </li>
                                                                </ul>
                                                            </div>

                                                        </div>
                                                    </c:forEach>

                                                    <div class="col-md-offset-1">
                                                        <nav>
                                                            <ul class="pagination pagination-lg">
                                                                <li><a href="javascript:getPage(${pageInfo.firstPage})"  >首页</a></li>
                                                                <li><a href="javascript:getPage(${pageInfo.prePage})" >上一页</a></li>
                                                                <li><span><b>${pageInfo.pageNum}</b>/<b>${pageInfo.pages}</b></span></li>
                                                                <c:if test="${!pageInfo.isLastPage}"><li><a href="javascript:getPage(${pageInfo.nextPage})"  >下一页</a></li></c:if>
                                                                <li> <a href="javascript:getPage(${pageInfo.lastPage})" target="mainFrame">末页</a></li>

                                                            </ul>
                                                        </nav>
                                                    </div>
                                                    <p style="font-size:24px">留下你的评论吧~~~</p>
                                                    <form method="post" action="#">
                                                        <input type="hidden"  name="buildingid1" value="${commentQueryPojo.buildingid}"/>
                                                        <input type="radio"  name="comtype1" value="好评" class="radio-danger"><span class="badge badge-danger">好评</span></input>
                                                        <input type="radio"  name="comtype1" value="中评" class="radio-danger"><span class="badge badge-warning">中评</span></input>
                                                        <input type="radio"  name="comtype1" value="差评" class="radio-danger"><span class="badge badge-info">差评</span></input>
                                                        <textarea type="text" placeholder="Your Comments..." id="comcontent1" onfocus="this.value = '';" style="width:70%"  required="">Your Comment...</textarea>
                                                        <div class="tags" style="margin-top: 0px;"><ul><li><a href="javascript:subm()">Submit Comment</a></li></ul></div>
                                                        <label style="position: relative;left: 140px;top:-50px;"><input type="checkbox" value="Sign me up for the newsletter">Sign me up for the newsletter</label>
                                                    </form>
                                                    <script>
                                                        function  getPage(curPage) {
                                                            //将我们这个隐藏域的值变成curPage
                                                            $("#curPage").val(curPage);
                                                            //触发表单提交事件
                                                            $("#hiddenForm").submit();

                                                        }


                                                        function deleteComment(commentid) {
                                                            if(confirm("此操作会删除所有回复，确定要删除么？")){
                                                                $.ajax({
                                                                    type:"post",
                                                                    data:"commentid="+commentid,
                                                                    url:"${pageContext.request.contextPath}/comment/deleteCommentById.action",
                                                                    success:function (result) {
                                                                        var divcom=$("#div_"+commentid);
                                                                        divcom.remove();
                                                                        $.message("删除成功");
                                                                    }
                                                                });
                                                            }

                                                        }
                                                        function seeRecomment(commentid) {
                                                            $.ajax({
                                                                type:"post",
                                                                data:"commentid="+commentid,
                                                                url:"${pageContext.request.contextPath}/recomment/selectRecoment.action",
                                                                success:function (recomments) {
                                                                    var reul=$("#ul_"+commentid);
                                                                    var recom=$(".ul_recomment");
                                                                    recom.remove();
                                                                    for(var i=0;i<recomments.length;i++){
                                                                        var s=getMyDate(recomments[i].recomtime);
                                                                        var recomment=recomments[i];
                                                                        var zxdxx=JSON.stringify(recomment);
                                                                        reul.before("<li id='reli_"+recomment.recommentid+ "' style='margin-left: 10px;margin-top: 10px;' class='ul_recomment'>"
                                                                            +"<a style='color: blue;display: inline;' href='id=recomment'>"+recomment.reusername+"</a>"+"回复 @"
                                                                            +"<a style='color: blue;display: inline;' href='id=recomments'>"+recomment.reobjectname+"</a>"+":  "
                                                                            +recomment.recontent+"      "+s+"      <a style='color:darkslategray;display: inline;' href='javascript:hui1("+zxdxx+")'>"+"回复</a></li>");
                                                                        var type=${sessionScope.userType};
                                                                        var id=${sessionScope.uid};
                                                                        if(id==recomment.reuserid&&type==recomment.reusertype){
                                                                            $("#reli_"+recomment.recommentid).append("<a  style='color:darkslategray;display: inline;' href='javascript:deleteRecomment("+recomment.recommentid+")'>删除</a>");
                                                                        }

                                                                    }

                                                                }
                                                            });
                                                        }
                                                        function deleteRecomment(recommentid) {
                                                            if(confirm("确认删除么？")){
                                                                var re=$("#reli_"+recommentid);
                                                                $.ajax({
                                                                    type:"post",
                                                                    url:"${pageContext.request.contextPath}/recomment/deleterecomment.action",
                                                                    data:"recommentid="+recommentid,
                                                                    success:function (result) {
                                                                        re.remove();
                                                                        $.message("删除成功");
                                                                    }
                                                                });
                                                            }
                                                        }

                                                        $("body").on('click','[data-stopPropagation]',function (e) {
                                                            e.stopPropagation();
                                                        });
                                                        function hui1(zxdxx) {
                                                            var recontent=$("#recontent_"+zxdxx.commentid);
                                                            recontent.val("@"+zxdxx.reusername);
                                                            var reobjectname=$("#reobjectname_"+zxdxx.commentid);
                                                            var reobjectid=$("#reobjectid_"+zxdxx.commentid);
                                                            var reobjecttype=$("#reobjecttype_"+zxdxx.commentid);
                                                            reobjecttype.val(zxdxx.reusertype);
                                                            reobjectname.val(zxdxx.reusername);
                                                            reobjectid.val(zxdxx.reuserid);
                                                        }
                                                        function addrecomment(commentid) {
                                                            var id=${sessionScope.uid};
                                                            if(id==-1){
                                                                alert("先登录呦");
                                                            }else if(confirm("确认回复么？")){
                                                                var reul=$("#ul_"+commentid);
                                                                var reobjectname=$("#reobjectname_"+commentid);
                                                                var reobjectid=$("#reobjectid_"+commentid);
                                                                var reobjecttype=$("#reobjecttype_"+commentid);
                                                                var reobjectname1=$("#reobjectnamee_"+commentid);
                                                                var reobjectid1=$("#reobjectide_"+commentid);
                                                                var reobjecttype1=$("#reobjecttypee_"+commentid);
                                                                var recontent=$("#recontent_"+commentid);
                                                                $.ajax({
                                                                    type:"post",
                                                                    data:"commentid="+commentid+"&recontent="+recontent.val()
                                                                    +"&reobjectname="+reobjectname.val()+"&reobjectid="+reobjectid.val()
                                                                    +"&reobjecttype="+reobjecttype.val(),
                                                                    url:"${pageContext.request.contextPath}/recomment/addrecomment.action",
                                                                    success:function (recomment) {
                                                                        if(recomment !=null){
                                                                            var s=getMyDate(recomment.recomtime);
                                                                            var zxdxx=JSON.stringify(recomment);
                                                                            reul.before("<li id='reli_"+recomment.recommentid+ "' style='margin-left: 10px;margin-top: 10px;' class='ul_recomment'>"
                                                                                +"<a style='color: blue;display: inline;' href='id=recomment'>"+recomment.reusername+"</a>"+"回复 @"
                                                                                +"<a style='color: blue;display: inline;' href='id=recomments'>"+recomment.reobjectname+"</a>"+":  "
                                                                                +recomment.recontent+"      "+s+"      <a style='color:darkslategray;display: inline;' href='javascript:hui1("+zxdxx+")'>"+"回复</a><a  style='color:darkslategray;display: inline;'  href='javascript:deleteRecomment("+recomment.recommentid+")'>删除</a></li>");
                                                                            recontent.val("");
                                                                            reobjectname.val(reobjectname1.val());
                                                                            reobjectid.val(reobjectid1.val());
                                                                            reobjecttype.val(reobjecttype1.val());
                                                                            $.message("回复成功");
                                                                        }
                                                                    }
                                                                });
                                                            }

                                                        }
                                                        function getMyDate(str){
                                                            var oDate = new Date(str);
                                                            var  oYear = oDate.getFullYear();
                                                            var   oMonth = oDate.getMonth()+1;
                                                            var  oDay = oDate.getDate();
                                                            var  oHour = oDate.getHours();
                                                            var  oMin = oDate.getMinutes();
                                                            var  oSen = oDate.getSeconds();
                                                            var oTime = oYear +'-'+oMonth+'-'+oDay+' '+ oHour+':'+ oMin+':'+oSen;//最后拼接时间
                                                            return oTime;
                                                        }
                                                        function hiddenIdtype(idtype) {
                                                            var hiddenForm=$("#hiddenForm");
                                                            var obj1=$("#comtype");
                                                            var obj=$("#idtype");
                                                            if(idtype==""){
                                                                obj.val("");
                                                                obj1.val("");
                                                            }else{
                                                                obj.val(idtype);
                                                            }
                                                            hiddenForm.submit();
                                                        }
                                                        function hiddenComtype(comtype) {
                                                            var hiddenForm=$("#hiddenForm");
                                                            var obj=$("#comtype");
                                                            obj.val(comtype);
                                                            hiddenForm.submit();
                                                        }

                                                        function favor(commentid) {
                                                            var id=${sessionScope.uid};
                                                            if(id==-1){
                                                                alert("先登录呦");
                                                                return;
                                                            }
                                                            $.ajax({
                                                                type:"post",
                                                                url:"${pageContext.request.contextPath}/favor/clickFavor.action",
                                                                data:"commentid="+commentid,
                                                                success:function(data){
                                                                    var d=document.getElementById("count_"+commentid);
                                                                    var span2=$("#click_favor_"+commentid);
                                                                    if('点赞'== span2.html()){
                                                                        span2.html("取消点赞");
                                                                        span2.addClass("red");
                                                                        d.innerText=Number(d.innerText)+1;
                                                                    }else{
                                                                        span2.html("点赞");
                                                                        span2.removeClass("red");
                                                                        d.innerText=Number(d.innerText)-1;
                                                                    }
                                                                }

                                                            });
                                                        }
                                                        function subm() {
                                                            var buildingid=$("input[name='buildingid1']").val();
                                                            var comtype=$("input[name='comtype1']").val();
                                                            var comcontent=$("#comcontent1").val();
                                                            if(confirm("要发表了奥~~")){
                                                                $.ajax({
                                                                    type:"post",
                                                                    url:'${pageContext.request.contextPath}/comment/insertComment.action',
                                                                    data:"buildingid="+buildingid+"&comtype="+comtype+"&comcontent="+comcontent,
                                                                    success:function (data) {
                                                                        $("#comcontent1").val("");
                                                                        $.message("成功~刷新查看");
                                                                    }
                                                                });
                                                            }
                                                        }
                                                    </script>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 properties-right">
                    <div class="feature">
                        <h4 style="font-size: 30px;">推荐楼盘</h4>
                        <div class="feature-top">
                            <img src="images/s1.jpg" class="img-responsive" alt="/">
                            <h5>60 Merrick Way, Miami</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer  elit,… <a href="#">Know More</a></p>
                        </div>
                        <div class="feature-top top2">
                            <img src="images/s2.jpg" class="img-responsive" alt="/">
                            <h5>Villa in Hialeah, Dade</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer  elit,… <a href="#">Know More</a></p>
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
