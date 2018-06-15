<%--
  Created by IntelliJ IDEA.
  User: 七年
  Date: 2018/6/13
  Time: 18:28
  To change this template use File | Settings | File Templates.
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
                          Just now
                        </span>
                            </div>
                            <div class="m-b">
                                <div>Lorem ipsum dolor sit amet, consecteter adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet. ullamcorper sodales nisi nec adipiscing elit. Morbi id neque quam. Aliquam sollicitudin </div>
                                <div class="m-t-sm">
                                    <a href class="text-muted m-xs"><i class="icon-action-redo"></i></a>
                                    <a href class="text-muted m-xs"><i class="icon-star"></i></a>
                                    <a href class="text-muted m-xs"><i class="icon-refresh"></i> 13</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- .comment-reply -->
                    <div class="m-l-lg">
                        <a class="pull-left thumb-sm avatar">
                            <img src="${pageContext.request.contextPath}/user/ke/images/userImg/${user.userpic}" alt="...">
                        </a>
                        <div class="m-l-xxl panel b-a">
                            <div class="panel-heading pos-rlt">
                                <span class="arrow left pull-up"></span>
                                <span class="text-muted m-l-sm pull-right">
                          10m ago
                        </span>
                                <a href>Mika Sam</a>
                                Report this comment is helpful
                            </div>
                        </div>
                    </div>
                    <!-- / .comment-reply -->
                    <div>
                        <a class="pull-left thumb-sm avatar m-l-n-md">
                            <img src="${pageContext.request.contextPath}/user/ke/images/userImg/${user.userpic}" alt="...">
                        </a>
                        <div class="m-l-lg m-b-lg panel b-a bg-light lt">
                            <div class="panel-heading pos-rlt b-light">
                                <span class="arrow arrow-light left"></span>
                                <a href>By me</a>
                                <span class="text-muted m-l-sm pull-right">
                          1h ago
                        </span>
                            </div>
                            <div class="panel-body">
                                <div>This comment was posted by you.</div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <a class="pull-left thumb-sm avatar m-l-n-md">
                            <img src="${pageContext.request.contextPath}/user/ke/img/a6.jpg" class="img-circle" alt="...">
                        </a>
                        <div class="m-l-lg m-b-lg">
                            <div class="m-b-xs">
                                <a href class="h4">Jessica</a>
                                <span class="text-muted m-l-sm pull-right">
                          3h ago
                        </span>
                            </div>
                            <div class="m-b">
                                <div class="m-b">Cecteter adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet. ullamcorper sodales nisi nec adipiscing elit. Morbi id neque quam. Aliquam sollicitudin </div>
                                <img src="${pageContext.request.contextPath}/user/ke/img/c5.jpg" class="b b-a wrapper-xs bg-white img-responsive">
                                <div class="m-t-sm">
                                    <a href class="text-muted m-xs"><i class="icon-action-redo"></i></a>
                                    <a href class="text-muted m-xs"><i class="icon-star"></i></a>
                                    <a href class="text-muted m-xs"><i class="icon-refresh"></i> 13</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <a class="pull-left thumb-sm avatar m-l-n-md">
                            <img src="${pageContext.request.contextPath}/user/ke/img/a4.jpg" class="img-circle" alt="...">
                        </a>
                        <div class="m-l-lg m-b-lg">
                            <div class="m-b-xs">
                                <a href class="h4">Fisio</a>
                                <span class="text-muted m-l-sm pull-right">
                          4h ago
                        </span>
                            </div>
                            <div>
                                <div class="m-b">Diam nonummy nibh euismod tincidunt ut laoreet. ullamcorper sodales nisi nec adipiscing elit. Morbi id neque quam. Aliquam sollicitudin </div>
                                <div class="panel panel-default m-t-md m-b-n-sm pos-rlt">
                                    <form>
                                        <textarea class="form-control no-border" rows="3" placeholder="Your comment..."></textarea>
                                    </form>
                                    <div class="panel-footer bg-light lter">
                                        <button class="btn btn-info pull-right btn-sm">Comment</button>
                                        <ul class="nav nav-pills nav-sm">
                                            <li><a href><i class="fa fa-camera text-muted"></i></a></li>
                                            <li><a href><i class="fa fa-video-camera text-muted"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <a class="pull-left thumb-sm avatar m-l-n-md">
                            <img src="${pageContext.request.contextPath}/user/ke/img/a2.jpg" alt="...">
                        </a>
                        <div class="m-l-lg panel b-a">
                            <div class="panel-heading pos-rlt b-b b-light">
                                <span class="arrow left"></span>
                                <a href>Peter</a>
                                <label class="label bg-light m-l-xs">VIP</label>
                                <span class="text-muted m-l-sm pull-right">
                          9h ago
                        </span>
                            </div>
                            <div class="panel-body">
                                <blockquote>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                                    <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
                                </blockquote>
                                <div>Lorem ipsum dolor sit amet, consecteter adipiscing elit...</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- PASTE above -->
</div>
</body>
</html>
