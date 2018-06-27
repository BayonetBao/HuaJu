<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/7
  Time: 23:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    //图片路径
    String imgPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/upImage"+"/";

%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>主要内容区main</title>
    <link href="<%=basePath%>developer/css/css.css" type="text/css" rel="stylesheet" />
    <link href="<%=basePath%>developer/css/main.css" type="text/css" rel="stylesheet" />
    <link rel="shortcut icon" href="<%=basePath%>developer/images/main/favicon.ico" />
    <link href="<%=basePath%>developer/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath%>developer/css/bootstrap-fileinput.css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/developer/My97DatePicker/WdatePicker.js"></script>
    <script src="${pageContext.request.contextPath}/developer/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/developer/js/bootstrap-fileinput.js"></script>
    <style>
        body{overflow-x:hidden; background:#f2f0f5; padding:15px 0px 10px 5px;}
        #searchmain{ font-size:12px;}
        #search{ font-size:12px; background:#548fc9; margin:10px 10px 0 0; display:inline; width:100%; color:#FFF}
        #search form span{height:40px; line-height:40px; padding:0 0px 0 10px; float:left;}
        #search form input.text-word{height:24px; line-height:24px; width:180px; margin:8px 0 6px 0; padding:0 0px 0 10px; float:left; border:1px solid #FFF;}
        #search form input.text-but{height:24px; line-height:24px; width:55px; background:url(<%=basePath%>developer/images/main/list_input.jpg) no-repeat left top; border:none; cursor:pointer; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#666; float:left; margin:8px 0 0 6px; display:inline;}
        #search a.add{ background:url(<%=basePath%>developer/images/main/add.jpg) no-repeat 0px 6px; padding:0 10px 0 26px; height:40px; line-height:40px; font-size:14px; font-weight:bold; color:#FFF}
        #search a:hover.add{ text-decoration:underline; color:#d2e9ff;}
        #main-tab{ border:1px solid #eaeaea; background:#FFF; font-size:12px;}
        #main-tab th{ font-size:12px; background:url(<%=basePath%>developer/images/main/list_bg.jpg) repeat-x; height:32px; line-height:32px;}
        #main-tab td{ font-size:12px; line-height:40px;}
        #main-tab td a{ font-size:12px; color:#548fc9;}
        #main-tab td a:hover{color:#565656; text-decoration:underline;}
        .bordertop{ border-top:1px solid #ebebeb}
        .borderright{ border-right:1px solid #ebebeb}
        .borderbottom{ border-bottom:1px solid #ebebeb}
        .borderleft{ border-left:1px solid #ebebeb}
        .gray{ color:#dbdbdb;}
        td.fenye{ padding:10px 0 0 0; text-align:right;}
        .bggray{ background:#f9f9f9; font-size:14px; font-weight:bold; padding:10px 10px 10px 0; width:120px;}
        .main-for{ padding:10px;}
        .main-for input.text-word{ width:610px; height:36px; line-height:36px; border:#ebebeb 1px solid; background:#FFF; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; padding:0 10px;}
        .main-for select{ width:610px; height:36px; line-height:36px; border:#ebebeb 1px solid; background:#FFF; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#666;}
        .main-for input.text-but{
            width:100px;
            height:40px;
            line-height:30px;
            border: 1px solid #cdcdcd;
            background:#e6e6e6;
            font-family:"Microsoft YaHei","Tahoma","Arial",'宋体';
            color:#969696;
            float:left;
            margin:0 10px 0 0;
            display:inline;
            cursor:pointer;
            font-size:14px;
            font-weight:bold;}
        .main-for textarea.text-but{
            /*				width:610px;
                         height:136px;*/
            line-height:30px;
            border: 1px solid #cdcdcd;
            background:#e6e6e6;
            font-family:"Microsoft YaHei","Tahoma","Arial",'宋体';
            color:#969696;
            float:left;
            margin:0 10px 0 0;
            display:inline;
            cursor:pointer;
            font-size:14px;
            font-weight:bold;}
        #addinfo a{ font-size:14px; font-weight:bold;  no-repeat: 0 1px; padding:0px 0 0px 20px; line-height:45px;}

    </style>
</head>
<body>
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">

    <tr>
        <td align="left" valign="top" id="addinfo">
            <%--<input type=button value="楼盘列列表" onclick="window.history.go(-2)">--%>
            <%--<a href="main_message.html" target="mainFrame" onFocus="this.blur()" class="add" >&nbsp;&nbsp;返回</a>--%>
            <%--<input type=button style="background: none;border: none" value=返回 onclick="window.history.go(-1)">--%>
        </td>
    </tr>
    <tr>

        <td align="left" valign="top">
           <%-- <form method="post" action="${pageContext.request.contextPath}/picture/picture.action" enctype="multipart/form-data">--%>
                <form method="post" action="${pageContext.request.contextPath}/cta/updatecta.action?ctaid=${ctaid}" enctype="multipart/form-data">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
                    </tr>
                    <%--咨询师id--%>
                    <<input type="hidden" name="ctaid" value="${ctaid}"/>
                    <%--开发商id--%>
                  <input hidden="hidden" name="comid" value="${user.comid}"/>
                    <%--员工头像--%>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">员工头像：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <!--<input type="" name="" value="" class="text-word">-->
                            <div class="form-group" id="uploadForm" enctype='multipart/form-data'>
                                <div class="fileinput fileinput-new" data-provides="fileinput"  id="exampleInputUpload">

                                    <div class="fileinput-new thumbnail" style="width: 200px;height: auto;max-height:150px;">
                                        <img id='picImg' style="width: 100%;height: auto;max-height: 140px;" src="<%=imgPath%>${ctas.ctaimg}" alt="" />
                                    </div>

                                    <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                    <div>
                        <span class="btn btn-primary btn-file">
                            <span class="fileinput-new">选择文件</span>
                            <span class="fileinput-exists">换一张</span>
                            <input type="file" name="imgfile" id="picID" accept="image/gif,image/jpeg,image/x-png">
                        </span>
                                        <a href="javascript:;" class="btn btn-warning fileinput-exists" data-dismiss="fileinput">移除</a>
                                    </div>

                                </div>
                            </div>

                        </td>
                    </tr>
                    <%--员工号--%>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">员工号：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="text" readonly="readonly" name="ctaname" value="${ctas.ctaname}" class="text-word">(不可修改)
                        </td>
                    </tr>
                    <%--员工真实姓名--%>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">员工姓名：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="text" name="ctarelname"  value="${ctas.ctarelname}" class="text-word">
                        </td>
                    </tr>
                    <%--登录密码--%>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">登录密码：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="text" readonly="readonly"name="ctapassword" value="${ctas.ctapassword}" class="text-word">(不可修改)
                        </td>
                    </tr>
                    <%--电话--%>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">电话：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="text" name="ctaphone" value="${ctas.ctaphone}" class="text-word">
                        </td>
                    </tr>
                    <%--qq--%>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">QQ号：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="text" name="qq" value="${ctas.qq}" class="text-word">
                        </td>
                    </tr>
                    <%--毕业学校--%>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">毕业学校：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="text" name="school" value="${ctas.school}" class="text-word">
                        </td>
                    </tr>
                    <%--学历--%>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">学历：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="text" name="education" value="${ctas.education}" class="text-word">
                        </td>
                    </tr>
                    <%--性格特点--%>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">性格特点：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="text" name="charactere" value="${ctas.charactere}" class="text-word">
                        </td>
                    </tr>
                    <%--简介--%>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">简介：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="text" name="intro" value="${ctas.intro}" class="text-word">
                        </td>
                    </tr>
                    <%--提交--%>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">&nbsp;</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">

                            <input name="House"  type="submit" value="提交" class="text-but">
                            <input name="" type="reset" value="重置" class="text-but"></td>
                    </tr>

                </table>
            </form>

        </td>
    </tr>
</table>



</body>
</html>
