<%--
  Created by IntelliJ IDEA.
  User: 七年
  Date: 2018/6/2
  Time: 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <title>网站后台管理系统</title>
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link href="${pageContext.request.contextPath}developer/css/css.css" type="text/css" rel="stylesheet" />
</head>
<!--框架样式-->
<frameset rows="95,*,30" cols="*" frameborder="no" border="0" framespacing="0">
    <!--top样式-->
    <frame src="${pageContext.request.contextPath}/developer/top.jsp" name="topframe" scrolling="no" noresize id="topframe" title="topframe" />
    <!--contact样式-->
    <frameset id="attachucp" framespacing="0" border="0" frameborder="no" cols="194,12,*" rows="*">
        <frame scrolling="auto" noresize="" frameborder="no" name="leftFrame" src="${pageContext.request.contextPath}/developer/left.jsp"></frame>
        <frame id="leftbar" scrolling="no" noresize="" name="switchFrame" src="${pageContext.request.contextPath}/developer/swich.html"></frame>
        <frame scrolling="auto" noresize="" border="0" name="mainFrame" src="${pageContext.request.contextPath}/developer/personalCenter.jsp"></frame>
    </frameset>
    <!--bottom样式-->
    <frame src="${pageContext.request.contextPath}/developer/bottom.html" name="bottomFrame" scrolling="No" noresize="noresize" id="bottomFrame" title="bottomFrame" />
</frameset><noframes></noframes>
<!--不可以删除-->
</html>