<%--
  Created by IntelliJ IDEA.
  User: 狂妄小子
  Date: 2018/6/9
  Time: 8:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>楼盘详情</title>
    <link href="${pageContext.request.contextPath}/developer/css/css.css" type="text/css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/developer/css/main.css" type="text/css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/developer/bootstrap/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <script src="${pageContext.request.contextPath}/developer/Jequery/Jsquery.js"></script>
    <script src="${pageContext.request.contextPath}/developer/bootstrap/bootstrap.min.js"></script>
    <style>
        body{overflow-x:hidden; background:#f2f0f5; padding:15px 0px 10px 5px;}
        #searchmain{ font-size:12px;}
        #search{ font-size:12px; background:#548fc9; margin:10px 10px 0 0; display:inline; width:100%; color:#FFF; float:left}
        #search form span{height:40px; line-height:40px; padding:0 0px 0 10px; float:left;}
        #search form input.text-word{height:24px; line-height:24px; width:180px; margin:8px 0 6px 0; padding:0 0px 0 10px; float:left; border:1px solid #FFF;}
        #search form input.text-but{height:24px; line-height:24px; width:55px; background:url(${pageContext.request.contextPath}/developer/images/main/list_input.jpg) no-repeat left top; border:none; cursor:pointer; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#666; float:left; margin:8px 0 0 6px; display:inline;}
        #search a.add{ background:url(images/main/add.jpg) no-repeat -3px 7px #548fc9; padding:0 10px 0 26px; height:40px; line-height:40px; font-size:14px; font-weight:bold; color:#FFF; float:right}
        #search a:hover.add{ text-decoration:underline; color:#d2e9ff;}
        #main-tab{ border:1px solid #eaeaea; background:#FFF; font-size:12px;}
        #main-tab th{ font-size:12px; background:url(images/main/list_bg.jpg) repeat-x; height:32px; line-height:32px;}
        #main-tab td{ font-size:12px; line-height:40px;}
        #main-tab td a{ font-size:12px; color:#548fc9;}
        #main-tab td a:hover{color:#565656; text-decoration:underline;}
        .bordertop{ border-top:1px solid #ebebeb}
        .borderright{ border-right:1px solid #ebebeb}
        .borderbottom{ border-bottom:1px solid #ebebeb}
        .borderleft{ border-left:1px solid #ebebeb}
        .gray{ color:#dbdbdb;}
        td.fenye{ padding:10px 0 0 0; text-align:right;}
        .bggray{ background:#f9f9f9}
    </style>
</head>
<body>
<!--main_top-->

<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
    <tr>
        <td width="99%" align="left" valign="top">您的位置：楼盘详情</td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" id="search">
                <tr>
                    <td width="90%" align="left" valign="middle">
                        <form method="get" action="${pageContext.request.contextPath}/build/showBuildInfo.action">
                            <span>楼盘查询：</span>
                            <input type="text" name="building" class="form-control" value="${building}" style="height:24px; line-height:24px; width:180px; margin:8px 0 6px 0; padding:0 0px 0 10px; float:left; border:1px solid #FFF;">
                            <input name="" type="submit" value="查询" class="text-but">
                        </form>
                    </td>
                    <td width="10%" align="center" valign="middle" style="text-align:right; width:150px;"></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <div style="background-color:#F4F4F4;width:100%; height:auto; min-width:1142px;">
                <div style="width:1140px;border:solid #666 1px; position:relative;margin:auto auto; overflow:auto;">
                    <div style=" float:left;width:710px; height:auto; margin-left:15px; margin-bottom:10px; margin-top:10px;border:solid #999 1px; background-color:#fff;">
                        <!--基本信息-->
                        <div style="width:690px; margin:10px auto 0px; ">
                            <div style="border-bottom:solid #CCC 1px; overflow:auto;">
                                <div style="font-size:24px; margin-left:25px; margin-top:10px; margin-bottom:10px; float:left;">基本信息</div>
                                <div style="float:left; margin-left:495px; margin-top:23px;"><a style="color:#06F" href="#" data-toggle="modal" data-target="#modifyBasicInfo">修改资料</a></div>
                            </div>
                            <!--信息详情 -->
                            <table style="border-collapse:separate; border-spacing:25px 10px;">
                                <tr>
                                    <td>楼盘名称:</td>
                                    <td>${build.building}</td>
                                </tr>


                                <tr>
                                    <td>建筑类型:</td>
                                    <td>${build.btype}</td>
                                </tr>
                                <tr>
                                    <td>环&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;线:</td>
                                    <c:if test="${empty build.bline}">
                                        <td>暂无数据</td>
                                    </c:if>
                                    <c:if test="${not empty build.bline}">
                                        <td>${build.bline}</td>
                                    </c:if>
                                </tr>
                                <tr>
                                    <td>开 发 商:</td>
                                    <td>${user.comname}</td>
                                </tr>
                                <tr>
                                    <td>楼盘特点:</td>
                                    <c:if test="${empty build.charactere}">
                                        <td>暂无数据</td>
                                    </c:if>
                                    <c:if test="${not empty build.charactere}">
                                        <td>${build.charactere}</td>
                                    </c:if>
                                </tr>
                                <tr>
                                    <td>楼盘地址:</td>
                                    <td>${build.province}${build.city}${build.barea}${build.bdetail}</td>
                                </tr>
                            </table>

                        </div>
                        <!--销售信息-->
                        <div style="width:690px;margin:0px auto; ">
                            <div style="border-bottom:solid #CCC 1px; overflow:auto;">
                                <div style="font-size:24px; margin-left:25px; margin-top:10px; margin-bottom:10px; float:left;">销售信息</div>
                                <div style="float:left; margin-left:495px; margin-top:23px;"><a style="color:#06F" href="#" data-toggle="modal" data-target="#modifySaleInfo">修改资料</a></div>
                            </div>
                            <!--信息详情 -->
                            <table style="border-collapse:separate; border-spacing:25px 10px;">
                                <tr>
                                    <td>参考单价:</td>
                                    <td><fmt:formatNumber value=" ${build.bperprice}" type="number" maxFractionDigits="3"/>元/㎡</td>
                                </tr>
                                <tr>
                                    <td>参考总价:</td>
                                    <td>${build.btotalprice}—${build.bmaxtotalprice}万</td>
                                </tr>
                                <tr>
                                    <td>房屋面积:</td>
                                    <td>${build.acreage}—${build.maxacreage}㎡</td>
                                </tr>
                                <tr>
                                    <td>销售状态:</td>
                                    <td>${build.conditions}</td>
                                </tr>
                                <tr>
                                    <td>销售情况:</td>
                                    <c:if test="${empty build.bsalestatus}">
                                        <td>暂无数据</td>
                                    </c:if>
                                    <c:if test="${not empty build.bsalestatus}">
                                        <td>${build.bsalestatus}</td>
                                    </c:if>
                                </tr>
                                <tr>
                                    <td>优惠信息:</td>
                                    <c:if test="${empty build.discounts}">
                                        <td>暂无数据</td>
                                    </c:if>
                                    <c:if test="${not empty build.discounts}">
                                        <td>${build.discounts}</td>
                                    </c:if>
                                </tr>
                                <tr>
                                    <td>最早开盘:</td>
                                    <td><fmt:formatDate value="${build.starttime}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
                                </tr>
                                <tr>
                                    <td>最早交房:</td>
                                    <td><fmt:formatDate value="${build.endtime}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
                                </tr>
                                <tr>
                                    <td>楼盘户型:</td>
                                    <td>
                                    <c:set var="flag" value="true"></c:set>
                                    <c:forEach items="${buildTypes}" var="typeCount" >

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
                                    <td>产权年限:</td>
                                    <c:if test="${empty build.agelimit}">
                                        <td>暂无数据</td>
                                    </c:if>
                                    <c:if test="${not empty build.agelimit}">
                                        <td>${build.agelimit}</td>
                                    </c:if>
                                </tr>
                                <tr>
                                    <td>拿地时间:</td>
                                    <c:if test="${empty build.landtime}">
                                        <td>暂无数据</td>
                                    </c:if>
                                    <c:if test="${not empty build.landtime}">
                                        <td><fmt:formatDate value="${build.landtime}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
                                    </c:if>
                                </tr>
                            </table>

                        </div>




                        <div style="width:690px; margin:0px auto;">
                            <div style="border-bottom:solid #CCC 1px; overflow:auto;">
                                <div style="font-size:24px; margin-left:25px; margin-top:10px; margin-bottom:10px; float:left;">小区详情</div>
                                <div style="float:left; margin-left:495px; margin-top:23px;"><a style="color:#06F" href="#"data-toggle="modal" data-target="#modifySpaceInfo">修改资料</a></div>
                            </div>
                            <!--信息详情 -->
                            <table style="border-collapse:separate; border-spacing:25px 10px;">
                                <tr>
                                    <td>物业公司:</td>
                                    <c:if test="${empty build.tencompany}">
                                        <td>暂无数据</td>
                                    </c:if>
                                    <c:if test="${not empty build.tencompany}">
                                        <td>${build.tencompany}</td>
                                    </c:if>
                                </tr>
                                <tr>
                                    <td>物业费用:</td>
                                    <c:if test="${empty build.tencost}">
                                        <td>暂无数据</td>
                                    </c:if>
                                    <c:if test="${not empty build.tencost}">
                                        <td>${build.tencost}</td>
                                    </c:if>
                                </tr>
                                <tr>
                                    <td>物业类型:</td>
                                    <td>${build.tenement}</td>
                                </tr>
                                <tr>
                                    <td>水电燃气:</td>
                                    <c:if test="${empty build.tentype}">
                                        <td>暂无数据</td>
                                    </c:if>
                                    <c:if test="${not empty build.tentype}">
                                        <td>${build.tentype}</td>
                                    </c:if>
                                </tr>
                                <tr>
                                    <td>绿 化 率:</td>
                                    <c:if test="${empty build.greenrate}">
                                        <td>暂无数据</td>
                                    </c:if>
                                    <c:if test="${not empty build.greenrate}">
                                        <td>${build.greenrate}</td>
                                    </c:if>
                                </tr>
                                <tr>
                                    <td>车位情况:</td>
                                    <c:if test="${empty build.carport}">
                                        <td>暂无数据</td>
                                    </c:if>
                                    <c:if test="${not empty build.carport}">
                                        <td>${build.carport}</td>
                                    </c:if>
                                </tr>
                                <tr>
                                    <td>容积率:</td>
                                    <c:if test="${empty build.cubage}">
                                        <td>暂无数据</td>
                                    </c:if>
                                    <c:if test="${not empty build.cubage}">
                                        <td>${build.cubage}</td>
                                    </c:if>
                                </tr>
                                <tr>
                                    <td>装修状况:</td>

                                    <c:if test="${empty build.fitment}">
                                        <td>暂无数据</td>
                                    </c:if>
                                    <c:if test="${not empty build.fitment}">
                                        <td>${build.fitment}</td>
                                    </c:if>
                                </tr>
                            </table>

                        </div>
                    </div>
                    <!--效果图-->
                    <div style=" float:left;width:350px; height:400px; margin-left:30px; margin-top:10px;border:solid #666 1px; background-color:#fff;">
                    </div>
                </div>
            </div>
        </td>
    </tr>

</table>

<!--修改基本信息-->
<div class="update_modal">
    <div class="modal fade" id="modifyBasicInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        修改基本信息
                    </h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/build/updateBuildAllInfo.action">
                        <input type="hidden" name="updateType" value="1">
                        <input type="hidden" name="buildingid" value="${build.buildingid}">
                        <div class="form-group">
                            <label for="building" class="col-sm-2 control-label">楼盘名称</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="building" id="building" value="${build.building}" placeholder="楼盘名称">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="btype" class="col-sm-2 control-label">建筑类型</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="btype" id="btype" value="${build.btype}" placeholder="建筑类型">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="bline" class="col-sm-2 control-label">环&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;线</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="bline" id="bline" value="${build.bline}" placeholder="环线">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="kfs" class="col-sm-2 control-label">开 发 商</label>
                            <div class="col-sm-10">
                                <input type="text" readonly="readonly" value="${user.comname}" class="form-control" name="kfs" id="kfs">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="charactere" class="col-sm-2 control-label">楼盘特点</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="charactere" id="charactere" value="${build.charactere}" placeholder="楼盘特点">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="address" class="col-sm-2 control-label">楼盘地址</label>
                            <div class="col-sm-10">
                                <input type="text" readonly="readonly" value="${build.province}${build.city}${build.barea}${build.bdetail}" class="form-control" name="address" id="address">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                            </button>
                            <button type="submit" class="btn btn-info">
                                提交更改
                            </button>
                        </div>
                    </form>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
</div>
    <!--修改销售信息-->
    <div class="update_modal">
        <div class="modal fade" id="modifySaleInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabe2" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content" style="width:600px;">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h4 class="modal-title" id="myModalLabe2">
                            修改销售信息
                        </h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/build/updateBuildAllInfo.action">
                            <input type="hidden" name="updateType" value="2">
                            <input type="hidden" name="buildingid" value="${build.buildingid}">
                            <div class="form-group">
                                <label for="bperprice" class="col-sm-2 control-label">参考单价</label>
                                <div class="col-sm-10">
                                    <input type="number" class="form-control" name="bperprice" id="bperprice" value="${build.bperprice}" placeholder="参考单价">
                                </div>
                            </div>
                            <div class="form-group">
                                <label style="" class="col-sm-2 control-label" for="btotalprice">参考总价</label>
                                <div class="col-sm-8" style="width:80%;border: solid #48ffd6 1px;">
                                    <input style="width:40%; float:left; border: solid #48ffd6 1px;" class="form-control "name="btotalprice" id="btotalprice" value="${build.btotalprice}"/><span style=" line-height:40px; float:left;">万&nbsp;&nbsp;&nbsp;——&nbsp;&nbsp;&nbsp;</span>
                                    <input style="width:40%; float:left; border: solid #48ffd6 1px;" class="form-control " name="bmaxtotalprice" id="bmaxtotalprice" value="${build.bmaxtotalprice}"/><span style=" line-height:40px;">万</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label style="" class="col-sm-2 control-label" for="acreage">楼房面积</label>
                                <div class="col-sm-8" style="width:80%;border: solid #48ffd6 1px;">
                                    <input style="width:40%; float:left; border: solid #48ffd6 1px;" class="form-control "name="acreage" id="acreage" value="${build.acreage}"/><span style=" line-height:40px; float:left;">㎡&nbsp;&nbsp;&nbsp;——&nbsp;&nbsp;&nbsp;</span>
                                    <input style="width:40%; float:left; border: solid #48ffd6 1px;" class="form-control " name="maxacreage" id="maxacreage" value="${build.maxacreage}"/><span style=" line-height:40px;">㎡</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="conditions" class="col-sm-2 control-label">销售状态</label>
                                <div class="col-sm-10">
                                    <select class="form-control" name="conditions" id="conditions">
                                        <option <c:if test="${build.conditions=='预售'}">selected</c:if>>预售</option>
                                        <option <c:if test="${build.conditions=='在售'}">selected</c:if>>在售</option>
                                        <option <c:if test="${build.conditions=='售罄'}">selected</c:if>>售罄</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="bsalestatus" class="col-sm-2 control-label">销售情况</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="bsalestatus" id="bsalestatus" value="${build.bsalestatus}" placeholder="销售状况">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="discounts" class="col-sm-2 control-label">优惠信息</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="discounts" id="discounts" value="${build.discounts}" placeholder="优惠信息">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="starttime" class="col-sm-2 control-label">最早开盘</label>
                                <div class="col-sm-10">
                                    <input type="date" class="form-control" name="starttime" id="starttime" value="<fmt:formatDate value="${build.starttime}" pattern="yyyy-MM-dd"></fmt:formatDate>" placeholder="最早开盘">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="endtime" class="col-sm-2 control-label">最早交房</label>
                                <div class="col-sm-10">
                                    <input type="date" class="form-control" name="endtime" id="endtime" value="<fmt:formatDate value="${build.endtime}" pattern="yyyy-MM-dd"></fmt:formatDate>" placeholder="最早交房">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="agelimit" class="col-sm-2 control-label">产权年限</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="agelimit" id="agelimit" value="${build.agelimit}" placeholder="产权年限">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="landtime" class="col-sm-2 control-label">拿地时间</label>
                                <div class="col-sm-10">
                                    <input type="date" class="form-control" name="landtime" id="landtime" value="<fmt:formatDate value="${build.landtime}" pattern="yyyy-MM-dd"></fmt:formatDate>" placeholder="拿地时间">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                </button>
                                <button type="submit" class="btn btn-info">
                                    提交更改
                                </button>
                            </div>
                        </form>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal -->
        </div><!-- /.update_modal -->
    </div>
        <!--修改小区详情信息-->
        <div class="update_modal">
            <div class="modal fade" id="modifySpaceInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabe3" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h4 class="modal-title" id="myModalLabe3">
                                修改小区信息
                            </h4>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/build/updateBuildAllInfo.action">
                                <input type="hidden" name="updateType" value="3">
                                <input type="hidden" name="buildingid" value="${build.buildingid}">
                                <div class="form-group">
                                    <label for="tencompany" class="col-sm-2 control-label">物业公司</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="tencompany" id="tencompany" value="${build.tencompany}" placeholder="物业公司">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="tenement" class="col-sm-2 control-label">物业类型</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="tenement" id="tenement" value="${build.tenement}" placeholder="物业类型">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="tencost" class="col-sm-2 control-label">物业费用</label>
                                    <div class="col-sm-10">
                                        <input type="number" class="form-control" name="tencost" id="tencost" value="${build.tencost}" placeholder="物业费用">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="tentype" class="col-sm-2 control-label">水电燃气</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="tentype" id="tentype" value="${build.tentype}"  placeholder="水电燃气">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="greenrate" class="col-sm-2 control-label">绿化率</label>
                                    <div class="col-sm-10">
                                        <input type="number" class="form-control" name="greenrate" id="greenrate" value="${build.greenrate}" placeholder="绿化率">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="carport" class="col-sm-2 control-label">车位情况</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="carport" id="carport" value="${build.carport}"  placeholder="车位情况">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="cubage" class="col-sm-2 control-label">容积率</label>
                                    <div class="col-sm-10">
                                        <input type="number" class="form-control" name="cubage" id="cubage" value="${build.cubage}" placeholder="容积率">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="fitment" class="col-sm-2 control-label">装修状况</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="fitment" id="fitment" value="${build.fitment}" placeholder="装修状况">
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                    </button>
                                    <button type="submit" class="btn btn-info">
                                        提交更改
                                    </button>
                                </div>
                            </form>
                        </div>

                    </div><!-- /.modal-content -->
                </div><!-- /.modal -->
            </div><!-- /.update_modal -->

</body>
<script>

    if(${upState eq 'success'}){
        alert("修改成功！");

    }
</script>
</html>
