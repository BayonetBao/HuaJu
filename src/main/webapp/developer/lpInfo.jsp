<%--
  Created by IntelliJ IDEA.
  User: 狂妄小子
  Date: 2018/6/5
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>楼盘列表</title>
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
        #search a.add{ background:url(${pageContext.request.contextPath}/developer/images/main/add.jpg) no-repeat -3px 7px #548fc9; padding:0 10px 0 26px; height:40px; line-height:40px; font-size:14px; font-weight:bold; color:#FFF; float:right}
        #search a:hover.add{ text-decoration:underline; color:#d2e9ff;}
        #main-tab{ border:1px solid #eaeaea; background:#FFF; font-size:12px;}
        #main-tab th{ font-size:12px; background:url(${pageContext.request.contextPath}/developer/images/main/list_bg.jpg) repeat-x; height:32px; line-height:32px;}
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
    <script >
        function getPage(curPage) {
            //将隐藏域的值变成curPage
            document.getElementById("scurPage").value=curPage;

//             触发表单的提交事件
            document.getElementById("mainForm").submit();
        }
    </script>

</head>
<body>
<!--main_top-->

<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
    <tr>
        <td width="99%" align="left" valign="top">您的位置：楼盘列表</td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" id="search">
                <tr>
                    <td width="90%" align="left" valign="middle">
                        <form id="mainForm" method="get" action="${pageContext.request.contextPath}/build/showBuildInfo.action">
                            <span>楼盘查询：</span>
                            <%--隐藏域 保存我们当前的页面数--%>
                            <%--<input style="float: left;" type="hidden" name="scurPage" id="scurPage"/>--%>
                            <input type="hidden" name="comid" id="comid" value="${user.comid}"/>
                            <input type="text" name="building" class="text-word">
                            <input name="" type="button" value="查询" class="text-but">
                        </form>
                    </td>
                    <td width="10%" align="center" valign="middle" style="text-align:right; width:150px;"><a href="${pageContext.request.contextPath}/developer/addBuild.jsp" target="mainFrame" onFocus="this.blur()" class="add">新增楼盘</a></td>
                </tr>
            </table>
        </td>
    </tr>
    <c:if test="${empty pageInfo.list}">
        <tr>
            <td>
                <p>暂无数据${user.comid}</p>
            </td>
        </tr>
    </c:if>
    <c:if test="${not empty pageInfo.list}">
        <c:forEach items="${pageInfo.list}" var="build">
            <tr>
                <td colspan="2">
                    <div style="width:1000px; height:205px;margin:10px auto; background-color:#FFF; overflow:auto;">
                        <!--楼盘图片-->
                        <div style="float:left; margin:10px 10px;"><img width="260px" height="180" src="${pageContext.request.contextPath}/${build.bpicture}">

                        </div>
                        <!--楼盘名称-->
                        <div style="overflow:auto;">
                            <div style=" float:left;margin:10px 10px;"><a href="楼盘详情.html" style="font-size:22px;"><b>${build.building}</b></a>&nbsp;&nbsp;&nbsp;&nbsp;<span style=" color:#0cf;border:solid #0CF 1px; border-radius:15px;padding:0px 8px; font-size:9px;">在售</span>
                            </div>
                            <!--添加房型-->
                            <div style="float:right;margin:10px 10px;"><a href="#"style=" color:#09F;">添加房型信息</a>
                            </div>
                        </div>
                        <!--楼盘简介-->
                        <div style="overflow:auto; float:left; width:30%">
                            <table style="border-collapse:separate; border-spacing:10px 10px;">
                                <tr>
                                    <td>报价:</td>
                                    <td>最低${build.btotalprice}元/㎡</td>

                                </tr>
                                <tr>
                                    <td>地址:</td>
                                    <td>${build.province}${build.city}${build.barea}${build.bdetail}</td>
                                </tr>
                                <tr>
                                    <td>优惠信息:</td>
                                    <c:if test="${empty build.discounts}">
                                        <td>暂无</td>
                                    </c:if>
                                    <c:if test="${not empty build.discounts}">
                                        <td>
                                                ${build.discounts}
                                        </td>
                                    </c:if>

                                </tr>
                                <tr>
                                    <td>最早开盘:</td>
                                    <td>${build.starttime}</td>
                                </tr>
                            </table>
                        </div>
                        <div style="overflow:auto; float:left;">
                            <table style="border-collapse:separate; border-spacing:10px 10px;">

                                <tr>
                                    <td>户型:</td>
                                    <td>

                                                <c:forEach items="${typeCountsMap}" var="typeCounts">
                                                    ${typeCounts.key}
                                                    ${typeCounts.value}
                                                <%--<c:if test="${typeCounts[''].build.buildingid=build.buildingid}">--%>
                                                    <%--<c:forEach items="${typeCounts.value}" var="typeCount" >--%>
                                                        <%--<c:if test="${typeCount.count=0}">--%>

                                                        <%--</c:if>--%>
                                                        <%--<c:if test="${typeCount.count!=0}">--%>
                                                            <%--<c:if test="${typeCount.typeid=1}">--%>
                                                                <%--一居（${typeCount.count}）--%>
                                                            <%--</c:if>--%>

                                                            <%--<c:if test="${typeCount.typeid=2}">--%>
                                                                <%--二居（${typeCount.count}）--%>
                                                            <%--</c:if>--%>

                                                            <%--<c:if test="${typeCount.typeid=3}">--%>
                                                                <%--三居（${typeCount.count}）--%>
                                                            <%--</c:if>--%>

                                                            <%--<c:if test="${typeCount.typeid=4}">--%>
                                                                <%--四居（${typeCount.count}）--%>
                                                            <%--</c:if>--%>

                                                        <%--</c:if>--%>
                                                    <%--</c:forEach>--%>
                                                <%--</c:if>--%>
                                                    <c:if test="${typeCounts.key!=build.buildingid}">
                                                    暂无数据
                                                    </c:if>
                                                </c:forEach>



                                    </td>

                                </tr>
                                <tr>
                                    <td>特点:</td>
                                    <c:if test="${empty build.charactere}">
                                        <td>暂无</td>
                                    </c:if>
                                    <c:if test="${not empty build.charactere}">
                                        <td>
                                                ${build.charactere}
                                        </td>
                                    </c:if>

                                </tr>
                                <tr>
                                    <td>物业类型:</td>
                                    <td>${build.tenement}</td>
                                </tr>
                                <tr>
                                    <td>最早交房:</td>
                                    <td>${build.endtime}</td>

                                </tr>
                            </table>
                        </div>
                        <!-- 删除楼盘-->
                        <div style="float:right; margin-right:10px; margin-top:115px;"><a style="color:#06F" href="#">删除楼盘</a></div>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </c:if>

    <tr>
        <td align="left" valign="top" class="fenye">${pageInfo.total}条数据 &nbsp;&nbsp;<a href="javascript:getPage(${pageInfo.firstPage})">首页</a>&nbsp;&nbsp;
            <c:if test="${!pageInfo.isFirstPage}">
            <a href="javascript:getPage(${pageInfo.prePage})" >上一页</a>
        </c:if>&nbsp;&nbsp;
            当前第<span>${pageInfo.pageNum}</span>页
            <c:if test="${!pageInfo.isLastPage}">
                <a href="javascript:getPage(${pageInfo.nextPage})" >下一页</a>
            </c:if>&nbsp;&nbsp;
            <a href="javascript:getPage(${pageInfo.lastPage})"></a>
        <a href="javascript:getPage(${pageInfo.lastPage})" >末页</a>
        </td>
    </tr>
</table>
</body>
</html>