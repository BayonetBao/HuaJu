<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.*" %>
<%--
  Created by IntelliJ IDEA.
  User: 七年
  Date: 2018/6/13
  Time: 18:28
  To change this template use File | Settings | File Tempates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="description" content="app, web app, responsive, responsive layout, admin, admin panel, admin dashboard, flat, flat ui, ui kit, AngularJS, ui route, charts, widgets, components" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <script src="${pageContext.request.contextPath}/user/ke/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/user/ke/js/bootstrap.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/bootstrapSingle.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/animate.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/simple-line-icons.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/app.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/font.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/font-awesome.min.css" type="text/css" />
</head>
<body>
<a href class="off-screen-toggle hide" data-toggle="class:off-screen" data-target=".app-aside" ></a>
<div class="app-content-body fade-in-up">
    <!-- COPY the content from "tpl/" -->
    <div class="hbox hbox-auto-xs hbox-auto-sm">
        <div class="col">
            <div style="background:url('${pageContext.request.contextPath}/user/ke/img/c4.jpg') center center; background-size:cover">
                <div class="wrapper-lg bg-white-opacity">
                    <div class="row m-t">
                        <div class="col-sm-7">
                            <a href class="thumb-lg pull-left m-r">
                                <img class="img-circle" style="width: 100px;height: 100px" src="${pageContext.request.contextPath}/user/ke/images/userImg/${user.userpic}" >
                            </a>
                            <div class="clear m-b">
                                <div class="m-b m-t-sm">
                                    <span class="h3 text-black">${sessionScope.user.uname}</span>
                                    <small class="m-l">${sessionScope.user.remark}</small>
                                </div>
                                <a href="updatePassword.jsp" class="btn btn-sm btn-success btn-rounded">修改密码</a>
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div class="pull-right pull-none-xs text-center">
                                <a href class="m-b-md inline m">
                                    <span class="h3 block font-bold">2k</span>
                                    <small>Followers</small>
                                </a>
                                <a href class="m-b-md inline m">
                                    <span class="h3 block font-bold">250</span>
                                    <small>Following</small>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- .comment-reply -->
            <c:forEach items="${comments}" var="comment">
            <div class="padder">
                <div class="streamline b-l b-info m-l-lg m-b padder-v">
                    <div>
                        <a class="pull-left thumb-sm avatar m-l-n-md">
                            <img src="${pageContext.request.contextPath}/user/ke/images/userImg/${user.userpic}" class="img-circle" alt="...">
                        </a>
                        <div class="m-l-lg">
                            <div class="m-b-xs">
                                <a href class="h4">${sessionScope.user.uname}</a>
                                <span class="text-muted m-l-sm pull-right">
                               <fmt:formatDate value="${comment.comtime}" pattern="yyyy-MM-dd hh:mm:ss"/>
                        </span>
                            </div>
                            <div class="m-b">
                                <div> ${comment.comcontent} </div>
                                <div class="m-t-sm">
                                    <a href class="text-muted m-xs"><i class=""></i></a>
                                    <a href class="text-muted m-xs"><i class=""></i></a>
                                    <a href class="text-muted m-xs"><i class="glyphicon glyphicon-thumbs-up"></i> ${fn:length(comment.favors)}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                    </c:forEach>


        </div>
    </div>
    <!-- PASTE above -->
</div>
</body>
</html>
