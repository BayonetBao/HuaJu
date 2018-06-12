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
<%@ page import="java.util.*" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Single</title>
    <!---css--->
    <link href="${pageContext.request.contextPath}/user/ke/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="${pageContext.request.contextPath}/user/ke/css/style.css" rel='stylesheet' type='text/css' />
    <!---css--->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Real Space Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!---js--->
    <script src="${pageContext.request.contextPath}/user/ke/js/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/user/ke/js/bootstrap.js"></script>
    <!---js--->
    <!---fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>

    <!---fonts-->
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
    <!-- pop-up -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/swipebox.css">
    <script src="${pageContext.request.contextPath}/user/ke/js/jquery.swipebox.min.js"></script>
    <script type="text/javascript">
        jQuery(function($) {
            $(".swipebox").swipebox();
        });
    </script>
    <style>
        .red{
            color: red;
        }
        .dropdown-menu li a:hover{
            color: red;
            background-color: white;
        }

    </style>

    <!-- pop-up -->

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
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email: <a href="mailto:info@example.com">info@example.com</a> </li>
                    <li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a href="#" data-toggle="modal" data-target="#myModal">Login</a></li>
                    <li><i class="glyphicon glyphicon-lock" aria-hidden="true"></i><a href="#" data-toggle="modal" data-target="#myModal1">Register</a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <nav class="navbar navbar-default">
            <!---Brand and toggle get grouped for better mobile display--->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="navbar-brand">
                    <h1><a href="index.html"><span>Real </span>Space</a></h1>
                </div>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="index.html">Home <span class="sr-only">(current)</span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="about.html">About</a></li>
                            <li><a href="services.html">Services</a></li>
                            <li><a href="agents.html">Agents</a></li>
                            <li><a href="forrent.html">For Rent</a></li>
                            <li><a href="forsale.html">For Sale</a></li>
                            <li><a href="pricing.html">Pricing</a></li>
                            <li><a href="faqs.html">FAQs</a></li>
                            <li><a href="idxpress.html">IDXpress</a></li>
                            <li><a href="terms.html">Terms of Use</a></li>
                            <li><a href="privacy.html">Privacy Policy</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Property<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="defaultvariation.html">Default – Variation</a></li>
                            <li><a href="agentinsidebarvariation.html">Agent in Sidebar - Variation</a></li>
                            <li><a href="galleryvariation.html">Gallery - Variation</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Gallery <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="2columnsgallery.html">2 Columns Gallery</a></li>
                            <li><a href="3columnsgallery.html">3 Columns Gallery</a></li>
                            <li><a href="4columnsgallery.html">4 Columns Gallery</a></li>
                        </ul>
                    </li>
                    <li><a href="blog.html">Blog</a></li>
                    <li><a href="codes.html">Codes</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
                <div class="phone">
                    <span><i class="glyphicon glyphicon-phone" aria-hidden="true"></i>1-999-4563-555</span>
                </div>
                <div class="clearfix"></div>
            </div>
        </nav>
    </div>
</div>
<!---header--->
<!---banner--->
<div class="banner-section">
    <div class="container">
        <h2>Blog post</h2>
    </div>
</div>
<!---banner--->
<div class="content">

    <div class="blog-section">

        <div class="grid_3 grid_5 container">

            <div class="btn-group"  style="width:100%;margin-bottom:5px;">
                <button type="button" class="btn btn-default btn-lg btn-warning" style="width:20%">楼盘详情</button>
                <button type="button" class="btn btn-default btn-lg btn-warning" style="width:20%">咨询师评论</button>
                <button type="button" class="btn btn-default btn-lg btn-warning" style="width:20%">好评</button>
                <button type="button" class="btn btn-default btn-lg btn-warning" style="width:20%">中评</button>
                <button type="button" class="btn btn-default btn-lg btn-warning" style="width:20%">差评</button>
            </div>

        </div>
        <div class="container">
            <div class="blog-grids">
                <div class="col-md-9 blog-grid">

                    <!---RESPONSES--->
                    <div class="coment-form">
                        <div class="blog">
                            <h3><a href="single.html">News From Nintendo</a></h3>
                            <p>January 05, 2016 / <a href="#">John Doe</a> / <a href="#">Uncategorized</a> / <a href="#">0 Comments</a></p>
                            <a href="single.html"><img src="images/b.jpg" class="img-responsive" alt=""></a>
                            <p>Tart donut gummi bears unerdwear.com tootsie roll chocolate bar gummi bears bear claw. Apple pie tart chocolate cake jelly beans. Unerdwear.com dragée sweet muffin icing macaroon. Jelly marzipan toffee cotton candy sweet roll. Jelly croissant jujubes carrot cake marshmallow donut biscuit wafer marzipan. Muffin pastry jujubes donut pastry chocolate bar cake candy chocolate. Dessert donut</p>
                            <a href="single.html" class="button5 hvr-shutter-out-horizontal">Read More</a>
                        </div>
                        <div class="container">


                            <div class="grid_3 grid_5">
                                <p style="font-size:24px;margin-bottom:5px;"><c:choose>
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
                                <form id="hiddenForm" action="${pageContext.request.contextPath}/comment/selectAllCommentByQueryPojoFront.action" method="post">
                                    <input type="hidden" id="curPage" name="curPage" value="1"/>
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
                                        <img src="${pageContext.request.contextPath}/user/ke/images/${pic}" alt="头像" class="img-circle" width="100px" height="100px"/>
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
                                            <ul data-stopPropagation="true" class="dropdown-menu" style="margin-left: -745px;width: 800px;">
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


                                <div class="col-md-offset-3">
                                    <nav>
                                        <ul class="pagination pagination-sm">
                                            <a href="javascript:getPage(${pageInfo.firstPage})"  >首页</a>
                                            <a href="javascript:getPage(${pageInfo.prePage})" >上一页</a>
                                            <span>${pageInfo.pageNum}/<b>${pageInfo.pages}</b></span>
                                            <c:if test="${!pageInfo.isLastPage}"><a href="javascript:void(0)" onclick="getPage(${pageInfo.nextPage})" >下一页</a></c:if>
                                            <a href="javascript:getPage(${pageInfo.lastPage})" target="mainFrame">末页</a>
                                       </ul>
                                    </nav>
                                </div>
                                <p style="font-size:24px">留下你的评论吧~~~</p>
                                <form method="post" action="#">
                                    <input type="hidden"  name="buildingid1" value="1"/>
                                    <input type="radio"  name="comtype1" value="好评" class="radio-danger"><span class="badge badge-danger">好评</span></input>
                                    <input type="radio"  name="comtype1" value="中评" class="radio-danger"><span class="badge badge-warning">中评</span></input>
                                    <input type="radio"  name="comtype1" value="差评" class="radio-danger"><span class="badge badge-info">差评</span></input>
                                    <textarea type="text" placeholder="Your Comments..." id="comcontent1" onfocus="this.value = '';" style="width:70%"  required="">Your Comment...</textarea>
                                    <div class="tags" style="margin-top: 0px;"><ul><li><a href="javascript:subm()">Submit Comment</a></li></ul></div>
                                    <label style="position: relative;left: 140px;top:-50px;"><input type="checkbox" value="Sign me up for the newsletter">Sign me up for the newsletter</label>
                                </form>
                                <script>
                                    function deleteComment(commentid) {
                                        if(confirm("此操作会删除所有回复，确定要删除么？")){
                                            $.ajax({
                                                type:"post",
                                                data:"commentid="+commentid,
                                                url:"${pageContext.request.contextPath}/comment/deleteCommentById.action",
                                                success:function (result) {
                                                    var divcom=$("#div_"+commentid);
                                                    divcom.remove();
                                                    alert(result);
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
                                                    alert(result);
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
                                        if(confirm("确认回复么？")){
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
                                    function  getPage(curPage) {
                                        //将我们这个隐藏域的值变成curPage
                                        $("#curPage").val(curPage);
                                        //触发表单提交事件
                                        $("#hiddenForm").submit();

                                    }
                                    function favor(commentid) {
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
                                                    alert(data+"刷新查看呦~");
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
            <div class="col-md-3 blog-grid1">
                <div class="categ">
                    <h3>Categories</h3>
                    <ul>
                        <li><a href="#">Lorem ipsum dolor sit amet</a></li>
                        <li><a href="#">Duis aute irure dolor in culpa</a></li>
                        <li><a href="#">Sunt in culpa qui illum</a></li>
                        <li><a href="#">vel illum qui dolorem man</a></li>
                        <li><a href="#">The wise man therefore culpa</a></li>
                        <li><a href="#">Sunt in culpa qui officia</a></li>
                        <li><a href="#">Lorem ipsum dolor sit qui</a></li>
                        <li><a href="#">Duis aute irure dolor</a></li>
                        <li><a href="#">Sunt in culpa qui officia</a></li>

                    </ul>
                </div>
                <div class="tags">
                    <h4>Tags</h4>
                    <ul>
                        <li><a href="blog.html">Lorem</a></li>
                        <li><a href="blog.html">consectetur</a></li>
                        <li><a href="blog.html">dolore</a></li>
                        <li><a href="blog.html">aliqua</a></li>
                        <li><a href="blog.html">sit amet</a></li>
                        <li><a href="blog.html">ipsum</a></li>
                        <li><a href="blog.html">Lorem</a></li>
                        <li><a href="blog.html">consectetur</a></li>
                        <li><a href="blog.html">dolore</a></li>
                        <li><a href="blog.html">aliqua</a></li>
                        <li><a href="blog.html">sit amet</a></li>
                        <li><a href="blog.html">ipsum</a></li>
                    </ul>
                </div>
                <div class="feature">
                    <h4>Featured Properties</h4>
                    <div class="feature-top">
                        <img src="images/s4.jpg" class="img-responsive" alt="/">
                        <h5>60 Merrick Way, Miami</h5>
                        <p>Lorem ipsum dolor sit amet, consectetuer  elit,… <a href="#">Know More</a></p>
                    </div>
                    <div class="feature-top top2">
                        <img src="images/s3.jpg" class="img-responsive" alt="/">
                        <h5>Villa in Hialeah, Dade</h5>
                        <p>Lorem ipsum dolor sit amet, consectetuer  elit,… <a href="#">Know More</a></p>
                    </div>
                    <div class="feature-top top2">
                        <img src="images/s5.jpg" class="img-responsive" alt="/">
                        <h5>Villa in Hialeah, Dade</h5>
                        <p>Lorem ipsum dolor sit amet, consectetuer  elit,… <a href="#">Know More</a></p>
                    </div>
                    <div class="feature-top top2">
                        <img src="images/s6.jpg" class="img-responsive" alt="/">
                        <h5>60 Merrick Way, Miami</h5>
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
                                    <input type="checkbox"  id="brand" value="">
                                    <label for="brand"><span></span>Remember Me.</label>
                                </div>
                                <input type="submit" value="Login Now" >
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

                                <input type="submit" value="Register Now" >
                            </form>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <p>By logging in you agree to our <a href="#">Terms</a> and <a href="#">Conditions</a> and <a href="#">Privacy Policy</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //Register -->

</body>
</html>
