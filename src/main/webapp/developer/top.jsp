<%--
  Created by IntelliJ IDEA.
  User: 狂妄小子
  Date: 2018/6/8
  Time: 19:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>后台页面头部</title>
    <link href="css/css.css" type="text/css" rel="stylesheet" />
</head>
<body onselectstart="return false" oncontextmenu=return(false) style="overflow-x:hidden;">
<!--禁止网页另存为-->
<noscript><iframe scr="*.htm"></iframe></noscript>
<!--禁止网页另存为-->
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="header">
    <tr>
        <td rowspan="2" align="left" valign="top" id="logo"><img src="images/main/logo.jpg" width="74" height="64"></td>
        <td align="left" valign="bottom">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td align="left" valign="bottom" id="header-name">华居后台</td>
                    <td align="right" valign="top" id="header-right">
                        <a href="${pageContext.request.contextPath}/exit.action" target="_parent" onFocus="this.blur()" class="admin-out">注销</a>

                        <a href="${pageContext.request.contextPath}/user/bao/index.jsp" target="_parent"  onFocus="this.blur()" class="admin-index">网站首页</a>
                        <span>
<!-- 日历 -->
<SCRIPT type=text/javascript src="js/clock.js"></SCRIPT>
<SCRIPT type=text/javascript>showcal();</SCRIPT>
            </span>
                    </td>
                </tr>
            </table></td>
    </tr>
    <tr>
        <td align="left" valign="bottom">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td align="left" valign="top" id="header-admin">后台管理系统</td>
                    <td align="left" valign="bottom" id="header-menu">


                    </td>
                </tr>
            </table></td>
    </tr>
</table>
</body>
</html>
