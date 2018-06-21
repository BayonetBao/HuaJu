<%--
  Created by IntelliJ IDEA.
  User: 七年
  Date: 2018/6/4
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>左侧导航menu</title>
    <link href="${pageContext.request.contextPath}/developer/css/css.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/developer/js/sdmenu.js"></script>
    <script type="text/javascript">
        // <![CDATA[
        var myMenu;
        window.onload = function() {
            myMenu = new SDMenu("my_menu");
            myMenu.init();
        };
        // ]]>
    </script>
    <style type="text/css">
        html{ SCROLLBAR-FACE-COLOR: #538ec6; SCROLLBAR-HIGHLIGHT-COLOR: #dce5f0; SCROLLBAR-SHADOW-COLOR: #2c6daa; SCROLLBAR-3DLIGHT-COLOR: #dce5f0; SCROLLBAR-ARROW-COLOR: #2c6daa;  SCROLLBAR-TRACK-COLOR: #dce5f0;  SCROLLBAR-DARKSHADOW-COLOR: #dce5f0; overflow-x:hidden;}
        body{overflow-x:hidden; background:url(images/main/leftbg.jpg) left top repeat-y #f2f0f5; width:194px;}
    </style>
</head>
<body onselectstart="return false;" ondragstart="return false;" oncontextmenu="return false;">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div id="left-top">
    <div><img src="images/main/member.gif" width="44" height="44" /></div>
    <span>用户：${user.comuname}<br>角色：开发商</span>
</div>
<div style="float: left" id="my_menu" class="sdmenu">
    <div class="collapsed">
        <span>楼盘信息</span>
        <%--developer/personalCenter.jsp--%>
        <a href="${pageContext.request.contextPath}/developer/personalCenter.jsp" target="mainFrame" onFocus="this.blur()">后台首页</a>
        <a href="${pageContext.request.contextPath}/build/showBuildInfo.action" target="mainFrame" onFocus="this.blur()">楼盘信息</a>
        <a href="${pageContext.request.contextPath}/developer/addBuild.jsp" target="mainFrame" onFocus="this.blur()">添加楼盘</a>
    </div>
    <div>
        <span>楼盘动态</span>
        <a href="${pageContext.request.contextPath}/dynamic/selectAllDynamicByQueryPojo.action" target="mainFrame" onFocus="this.blur()">楼盘动态</a>
        <a href="${pageContext.request.contextPath}/dynamic/insertDynamicBefore.action" target="mainFrame" onFocus="this.blur()">动态添加</a>
   </div>
    <div>
        <span>楼盘图册</span>
        <a href="${pageContext.request.contextPath}/Graph/selectAllGraphByQueryPojo.action" target="mainFrame" onFocus="this.blur()">效果图</a>
        <a href="${pageContext.request.contextPath}/ProtoType/selectAllProtoTypeByQueryPojo.action" target="mainFrame" onFocus="this.blur()">样板间</a>
        <a href="${pageContext.request.contextPath}/Arround/selectAllArroundByQueryPojo.action" target="mainFrame" onFocus="this.blur()">环境规划图</a>
        <a href="${pageContext.request.contextPath}/Buildimg/selectAllBuildimgByQueryPojo.action" target="mainFrame" onFocus="this.blur()">楼盘实景图</a>
        <a href="${pageContext.request.contextPath}/Environment/selectAllEnvirByQueryPojo.action" target="mainFrame" onFocus="this.blur()">配套实景图</a>
    </div>
    <div>
        <span>评论信息</span>
        <a href="${pageContext.request.contextPath}/comment/selectAllCommentByQueryPojo.action" target="mainFrame" onFocus="this.blur()">所有评论</a>
    </div>
    <div>
        <span>活动信息</span>
        <a href="${pageContext.request.contextPath}/Activity/activityList.action" target="mainFrame" onFocus="this.blur()">活动信息</a>
        <a href="${pageContext.request.contextPath}/Activity/selectctaandbuild.action" target="mainFrame" onFocus="this.blur()">活动添加</a>
    </div>
    
</div>
</body>
</html>
