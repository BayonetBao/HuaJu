<%--
  Created by IntelliJ IDEA.
  User: 七年
  Date: 2018/6/13
  Time: 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta charset="utf-8" />
    <title>个人主页</title>
    <meta name="description" content="app, web app, responsive, responsive layout, admin, admin panel, admin dashboard, flat, flat ui, ui kit, AngularJS, ui route, charts, widgets, components" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <script src="${pageContext.request.contextPath}/user/ke/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/user/ke/js/bootstrap.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/bootstrapSingle.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/animate.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/simple-line-icons.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/app.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/font.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/font-awesome.min.css" type="text/css" />
    <style>
        body{
            background-color: rgba(255,229,9,0.3);
            overflow: hidden;
        }
    </style>
</head>
<body style="height: auto" >
<div style="border: 1px;height: 30px;"></div>
<div class="app app-header-fixed container  bg-dark" id="maindiv" >
    <!-- navbar -->
    <div class="app-header navbar" >
        <!-- navbar header -->
        <div class="navbar-header bg-dark" >
            <button class="pull-right visible-xs dk" data-toggle="class:show" data-target=".navbar-collapse">
                <i class="glyphicon glyphicon-cog"></i>
            </button>
            <button class="pull-right visible-xs" data-toggle="class:off-screen" data-target=".app-aside" ui-scroll="app">
                <i class="glyphicon glyphicon-align-justify"></i>
            </button>
            <!-- brand -->
            <a href="#/" class="navbar-brand text-lt">
                <i class="glyphicon glyphicon-user"></i>
                <img src="${pageContext.request.contextPath}/user/ke/img/logo.png" alt="." class="hide">
                <span class="hidden-folded m-l-xs">个人中心</span>
            </a>
            <!-- / brand -->
        </div>
        <!-- / navbar header -->

        <!-- navbar collapse -->
        <div class="collapse pos-rlt navbar-collapse box-shadow bg-white-only" style="margin-left: 200px; padding-left: 0px;" >
            <!-- link and dropdown -->
            <ul class="nav navbar-nav hidden-sm">
                <li>
                    <a href="${pageContext.request.contextPath}/build/selectBuildQueryPojo.action" >
                        <span>去查房源</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/user/ke/dynamicTalk.jsp" target="myframe">
                        <span >welcome小客服</span>
                    </a>
                </li>
            </ul>
            <!-- / link and dropdown -->

            <!-- search form -->
            <form class="navbar-form navbar-form-sm navbar-left shift" ui-shift="prependTo" data-target=".navbar-collapse" role="search" ng-controller="TypeaheadDemoCtrl">
                <div class="form-group">
                    <div class="input-group">
                        <input type="text" ng-model="selected" typeahead="state for state in states | filter:$viewValue | limitTo:8" class="form-control input-sm bg-light no-border rounded padder" placeholder="Search projects...">
                        <span class="input-group-btn">
                <button type="submit" class="btn btn-sm bg-light rounded"><i class="glyphicon glyphicon-search"></i></button>
              </span>
                    </div>
                </div>
            </form>
            <!-- / search form -->

            <!-- nabar right -->
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">
                        <i class="glyphicon glyphicon-bell"></i>
                        <span class="badge badge-sm up bg-danger pull-right-xs">2</span>
                    </a>
                </li>
                <li class="dropdown">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle clear" data-toggle="dropdown">
                 <span class="thumb-sm avatar pull-right m-t-n-sm m-b-n-sm m-l-sm">
                <img src="${pageContext.request.contextPath}/user/ke/img/a0.jpg" alt="...">
                <i class="on md b-white bottom"></i>
                </span>
                        <span class="hidden-sm hidden-md">${sessionScope.user.uname}</span>
                    </a>
                </li>
            </ul>
            <!-- / navbar right -->

        </div>
        <!-- / navbar collapse -->
    </div>
    <!-- / navbar -->

    <!-- menu -->
    <div class="app-aside hidden-xs bg-dark">
        <div class="aside-wrap">
            <div class="navi-wrap">
                <!-- user -->
                <div class="clearfix hidden-xs text-center hide" id="aside-user">
                    <div class="dropdown wrapper">
                        <a ui-sref="app.page.profile">
                <span class="thumb-lg w-auto-folded avatar m-t-sm">
                  <img src="${pageContext.request.contextPath}/user/ke/img/a0.jpg" class="img-full" alt="...">
                </span>
                        </a>

                    </div>
                    <div class="line dk hidden-folded"></div>
                </div>
                <!-- / user -->

                <!-- nav -->
                <nav ui-nav class="navi">
                    <ul class="nav">
                         <li >
                             <a href="${pageContext.request.contextPath}/user/ke/content.jsp" target="myframe" class="auto">
                             <span class="pull-right text-muted">
                          </span>
                                 <i class="glyphicon glyphicon-hand-right"></i>
                                 <span >个人信息</span>
                             </a>
                         </li>
                         <li>
                            <a href="${pageContext.request.contextPath}/user/ke/updateInfo.jsp" target="myframe" class="auto">
                             <span class="pull-right text-muted">
                          </span>
                                <i class="glyphicon glyphicon-edit"></i>
                                <span>修改信息</span>
                            </a>


                        </li>
                        <li>
                            <a href="javascript:clickdiv(single.jsp)" class="auto">
                                <i class="glyphicon glyphicon-stats icon text-primary-dker"></i>
                                <span >我的预约</span>
                            </a>
                        </li>
                        <li ui-sref-active="active">
                            <a href="${pageContext.request.contextPath}/recomment/selectRecommentById.action?reobjectid=${sessionScope.uid}&reobjectType=${sessionScope.userType}&restate=0"  target="myframe"  class="auto">
                                <b class="badge bg-info pull-right">9</b>
                                <i class="glyphicon glyphicon-envelope icon text-info-lter"></i>
                                <span >我的消息</span>
                            </a>
                        </li>
                        <li>
                            <a href class="auto">
                  <span class="pull-right text-muted">

                  </span>
                                <b class="badge bg-info pull-right">3</b>
                                <i class="glyphicon glyphicon-th"></i>
                                <span>我的活动</span>
                            </a>

                        </li>
                    </ul>
                </nav>
                <!-- nav -->

                <!-- aside footer -->
                <div class="wrapper m-t">
                    <div class="text-center-folded">
                        <span class="pull-right pull-none-folded">60%</span>
                        <span class="hidden-folded" translate="aside.MILESTONE">Milestone</span>
                    </div>
                    <div class="progress progress-xxs m-t-sm dk">
                        <div class="progress-bar progress-bar-info" style="width: 60%;">
                        </div>
                    </div>
                    <div class="text-center-folded">
                        <span class="pull-right pull-none-folded">35%</span>
                        <span class="hidden-folded" translate="aside.RELEASE">Release</span>
                    </div>
                    <div class="progress progress-xxs m-t-sm dk">
                        <div class="progress-bar progress-bar-primary" style="width: 35%;">
                        </div>
                    </div>
                </div>
                <!-- / aside footer -->
            </div>
        </div>
    </div>
    <!-- / menu -->

    <!-- content -->
    <div class="app-content bg-white" id="app" >
        <iframe src="${pageContext.request.contextPath}/comment/selectCommentByUser.action" name="myframe" width='100%' height='100%' frameborder='0'  id="myframe" >
        </iframe>
    </div >
    <!-- /content -->

    <!-- aside right -->
    <div class="app-aside-right pos-fix no-padder w-md w-auto-xs bg-white b-l animated fadeInRight hide">
        <div class="vbox">
            <div class="wrapper b-b b-t b-light m-b">
                <a href class="pull-right text-muted text-md" data-toggle="class:show" data-target=".app-aside-right"><i class="icon-close"></i></a>
                Chat
            </div>
            <div class="row-row">
                <div class="cell">
                    <div class="cell-inner padder">
                        <!-- chat list -->
                        <div class="m-b">
                            <a href class="pull-left thumb-xs avatar"><img src="${pageContext.request.contextPath}/user/ke/img/a2.jpg" alt="..."></a>
                            <div class="clear">
                                <div class="pos-rlt wrapper-sm b b-light r m-l-sm">
                                    <span class="arrow left pull-up"></span>
                                    <p class="m-b-none">Hi ${sessionScope.user.uname}, What's up...</p>
                                </div>
                                <small class="text-muted m-l-sm"><i class="fa fa-ok text-success"></i> 2 minutes ago</small>
                            </div>
                        </div>
                        <div class="m-b">
                            <a href class="pull-right thumb-xs avatar"><img src="${pageContext.request.contextPath}/user/ke/img/a3.jpg" class="img-circle" alt="..."></a>
                            <div class="clear">
                                <div class="pos-rlt wrapper-sm bg-light r m-r-sm">
                                    <span class="arrow right pull-up arrow-light"></span>
                                    <p class="m-b-none">Lorem ipsum dolor :)</p>
                                </div>
                                <small class="text-muted">1 minutes ago</small>
                            </div>
                        </div>
                        <div class="m-b">
                            <a href class="pull-left thumb-xs avatar"><img src="${pageContext.request.contextPath}/user/ke/img/a2.jpg" alt="..."></a>
                            <div class="clear">
                                <div class="pos-rlt wrapper-sm b b-light r m-l-sm">
                                    <span class="arrow left pull-up"></span>
                                    <p class="m-b-none">Great!</p>
                                </div>
                                <small class="text-muted m-l-sm"><i class="fa fa-ok text-success"></i>Just Now</small>
                            </div>
                        </div>
                        <!-- / chat list -->
                    </div>
                </div>
            </div>
            <div class="wrapper m-t b-t b-light">
                <form class="m-b-none">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Say something">
                        <span class="input-group-btn">
                <button class="btn btn-default" type="button">SEND</button>
              </span>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- / aside right -->

    <!-- footer -->
    <div class="app-footer wrapper b-t bg-light">
        <span class="pull-right">1.0.0 <a href="#app" class="m-l-sm text-muted"><i class="fa fa-long-arrow-up"></i></a></span>
        &copy; 2014 Copyright. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
    </div>
    <!-- / footer -->
</div>

</body>
</html>

