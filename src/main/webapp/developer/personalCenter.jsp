<%--
  Created by IntelliJ IDEA.
  User: 狂妄小子
  Date: 2018/6/4
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>主要内容区main</title>
    <link href="${pageContext.request.contextPath}developer/css/css.css" type="text/css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}developer/css/main.css" type="text/css" rel="stylesheet" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}images/main/favicon.ico" />
    <link href="${pageContext.request.contextPath}/developer/bootstrap/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <script src="${pageContext.request.contextPath}/developer/Jequery/Jsquery.js"></script>
    <script src="${pageContext.request.contextPath}/developer/bootstrap/bootstrap.min.js"></script>
    <style>
    <style>
        body{overflow-x:hidden; background:#f2f0f5; padding:15px 0px 10px 5px;}
        #main{ font-size:12px;}
        #main span.time{ font-size:14px; color:#528dc5; width:100%; padding-bottom:10px; float:left}
        #main div.top{ width:100%; background:url(images/main/main_r2_c2.jpg) no-repeat 0 10px; padding:0 0 0 15px; line-height:35px; float:left}
        #main div.sec{ width:100%; background:url(images/main/main_r2_c2.jpg) no-repeat 0 15px; padding:0 0 0 15px; line-height:35px; float:left}
        .left{ float:left}
        #main div a{ float:left}
        #main span.num{  font-size:30px; color:#538ec6; font-family:"Georgia","Tahoma","Arial";}
        .left{ float:left}
        div.main-tit{ font-size:14px; font-weight:bold; color:#4e4e4e; background:url(images/main/main_r4_c2.jpg) no-repeat 0 33px; width:100%; padding:30px 0 0 20px; float:left}
        div.main-con{ width:100%; float:left; padding:10px 0 0 20px; line-height:36px; font-size:14px;}
        div.main-corpy{ font-size:14px; font-weight:bold; color:#4e4e4e; background:url(images/main/main_r6_c2.jpg) no-repeat 0 33px; width:100%; padding:30px 0 0 20px; float:left}
        div.main-order{ line-height:30px; padding:10px 0 0 0;}
    </style>
</head>
<body>
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="main">
    <tr>
        <td colspan="2" align="left" valign="top">
            <span class="time"><strong>欢迎您，admin</strong><u>[超级管理员]</u></span>
            <div class="top"><span class="left">您上次的登灵时间：2012-05-03  12:00   登录IP：127.0.0.1 &nbsp;&nbsp;&nbsp;&nbsp;如非您本人操作，请及时</span><a href="index.html" target="mainFrame" onFocus="this.blur()">更改密码</a></div>
            <div class="sec">这是您第<span class="num">80</span>次,登录！</div>
        </td>
    </tr>
    <tr>
        <td align="left" valign="top" width="45%">
            <div class="main-tit" style="margin-left:10%">基本信息</div>
            <div class="main-con" style="margin-left:10%">
                用户名：${user.comuname}<br/>
                公司：${user.comname}<br/>
                注册时间：<fmt:formatDate value="${user.ctime}" pattern="yyyy-MM-dd"></fmt:formatDate><br/>
                注册资金：${user.cmoney}万<br/>
                地址：${user.caddress}<br/>
                联系电话：${user.cphone}<br/>
            </div>
        </td>
        <td align="left" valign="top" width="49%">
            <div class="main-tit">认证信息</div>
            <div class="main-con">
                营业执照&nbsp;&nbsp;&nbsp;&nbsp;<a style="float:none;font-size:5px; color:#03F;" href="#" data-toggle="modal" data-target="#clicense">点击查看</a><br/>
                建设工程规划许可证&nbsp;&nbsp;&nbsp;&nbsp;<a style="float:none;font-size:5px; color:#03F;" href="#" data-toggle="modal" data-target="#construction">点击查看</a><br/>
                国有土地使用证&nbsp;&nbsp;&nbsp;&nbsp;<a style="float:none;font-size:5px; color:#03F;" href="#" data-toggle="modal" data-target="#landuse">点击查看</a><br/>
                建设用地规划许可证&nbsp;&nbsp;&nbsp;&nbsp;<a style="float:none;font-size:5px; color:#03F;" href="#" data-toggle="modal" data-target="#presale">点击查看</a><br/>
                商品房预售许可证&nbsp;&nbsp;&nbsp;&nbsp;<a style="float:none;font-size:5px; color:#03F;" href="#" data-toggle="modal" data-target="#permit">点击查看</a><br/>
                建筑工程实施许可证 &nbsp;&nbsp;&nbsp;&nbsp;<a style="float:none;font-size:5px; color:#03F;" href="#" data-toggle="modal" data-target="#implement">点击查看</a><br/>
                住宅质量保证书&nbsp;&nbsp;&nbsp;&nbsp;<a style="float:none;font-size:5px; color:#03F;" href="#" data-toggle="modal" data-target="#quality">点击查看</a><br/>
                住宅使用说明书&nbsp;&nbsp;&nbsp;&nbsp;<a style="float:none;font-size:5px; color:#03F;" href="#" data-toggle="modal" data-target="#instruction">点击查看</a><br/>
            </div>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="left" valign="top">
            <div class="main-corpy">系统提示</div>
            <div class="main-order">1=>如您在使用过程有发现出错请及时与我们取得联系；为保证您得到我们的后续服务，强烈建议您购买我们的正版系统或向我们定制系统！<br/>
                2=>强烈建议您将IE7以上版本或其他的浏览器</div>
        </td>
    </tr>
</table>
<div class="update_modal">
    <div class="modal fade" id="clicense" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="height: 610px;width: 600px;">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        营业执照
                    </h4>
                </div>
                <div class="modal-body">
                   <img width="560px" height="520px" src="${pageContext.request.contextPath}${user.clicense}">
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
    <div class="update_modal">
        <div class="modal fade" id="construction" tabindex="-1" role="dialog" aria-labelledby="myModalLabe2" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content" style="height: 610px;width: 600px;">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h4 class="modal-title" id="myModalLabe2">
                            建设工程规划许可证
                        </h4>
                    </div>
                    <div class="modal-body">
                        <img width="560px" height="520px" src="${pageContext.request.contextPath}${user.construction}">
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal -->
        </div>
        <div class="update_modal">
            <div class="modal fade" id="landuse" tabindex="-1" role="dialog" aria-labelledby="myModalLabe3" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content" style="height: 610px;width: 600px;">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h4 class="modal-title" id="myModalLabe3">
                                国有土地使用证
                            </h4>
                        </div>
                        <div class="modal-body">
                            <img width="560px" height="520px" src="${pageContext.request.contextPath}${user.landuse}">
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal -->
            </div>
            <div class="update_modal">
                <div class="modal fade" id="presale" tabindex="-1" role="dialog" aria-labelledby="myModalLabe4" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content" style="height: 610px;width: 600px;">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                    &times;
                                </button>
                                <h4 class="modal-title" id="myModalLabe4">
                                    商品房预售许可证
                                </h4>
                            </div>
                            <div width="560px" height="520px" class="modal-body">
                                <img src="${pageContext.request.contextPath}${user.presale}">
                            </div>
                        </div><!-- /.modal-content -->
                    </div><!-- /.modal -->
                </div>
                <div class="update_modal">
                    <div class="modal fade" id="permit" tabindex="-1" role="dialog" aria-labelledby="myModalLabe5" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content" style="height: 610px;width: 600px;">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        &times;
                                    </button>
                                    <h4 class="modal-title" id="myModalLabe5">
                                        建设用地规划许可证
                                    </h4>
                                </div>
                                <div class="modal-body">
                                    <img width="560px" height="520px" src="${pageContext.request.contextPath}${user.permit}">
                                </div>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal -->
                    </div>
                    <div class="update_modal">
                        <div class="modal fade" id="implement" tabindex="-1" role="dialog" aria-labelledby="myModalLabe6" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content" style="height: 610px;width: 600px;">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                        <h4 class="modal-title" id="myModalLabe6">
                                            建筑工程实施许可证
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <img width="560px" height="520px" src="${pageContext.request.contextPath}${user.implement}">
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>
                        <div class="update_modal">
                            <div class="modal fade" id="quality" tabindex="-1" role="dialog" aria-labelledby="myModalLabe7" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content" style="height: 610px;width: 600px;">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                &times;
                                            </button>
                                            <h4 class="modal-title" id="myModalLabe7">
                                                住宅质量保证书
                                            </h4>
                                        </div>
                                        <div class="modal-body">
                                            <img width="560px" height="520px" src="${pageContext.request.contextPath}${user.quality}">
                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal -->
                            </div>
                            <div class="update_modal">
                                <div class="modal fade" id="instruction" tabindex="-1" role="dialog" aria-labelledby="myModalLabe8" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content" style="height: 610px;width: 600px;">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                    &times;
                                                </button>
                                                <h4 class="modal-title" id="myModalLabe8">
                                                    住宅使用说明书
                                                </h4>
                                            </div>
                                            <div class="modal-body">
                                                <img width="560px" height="520px" src="${pageContext.request.contextPath}${user.instruction}">
                                            </div>
                                        </div><!-- /.modal-content -->
                                    </div><!-- /.modal -->
                                </div>
</body>
</html>
