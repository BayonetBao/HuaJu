<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>主要内容区main</title>
    <link href="${pageContext.request.contextPath}/developer/css/css.css" type="text/css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/developer/css/main.css" type="text/css" rel="stylesheet" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/developer/images/main/favicon.ico" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/developer/bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/developer/bootstrap/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/developer/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/developer/My97DatePicker/WdatePicker.js"></script>
    <style>
        body{overflow-x:hidden; background:#f2f0f5; padding:15px 0px 10px 5px;}
        #searchmain{ font-size:12px;}
        #search{ font-size:12px; background:#548fc9; margin:10px 10px 0 0; display:inline; width:100%; color:#FFF}
        #search form span{height:40px; line-height:40px; padding:0 0px 0 10px; float:left;}
        #search form input.text-word{height:24px; line-height:24px; width:180px; margin:8px 0 6px 0; padding:0 0px 0 10px; float:left; border:1px solid #FFF;}
        #search form input.text-but{height:24px; line-height:24px; width:55px; background:url(images/main/list_input.jpg) no-repeat left top; border:none; cursor:pointer; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#666; float:left; margin:8px 0 0 6px; display:inline;}
        #search a.add{ background:url(images/main/add.jpg) no-repeat 0px 6px; padding:0 10px 0 26px; height:40px; line-height:40px; font-size:14px; font-weight:bold; color:#FFF}
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
        .bggray{ background:#f9f9f9; font-size:14px; font-weight:bold; padding:10px 10px 10px 0; width:120px;}
        .main-for{ padding:10px;}
        .main-for input.text-word{ width:310px; height:36px; line-height:36px; border:#ebebeb 1px solid; background:#FFF; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; padding:0 10px;}
        .main-for select{ width:310px; height:36px; line-height:36px; border:#ebebeb 1px solid; background:#FFF; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#666;}
        .main-for input.text-but{ width:100px; height:40px; line-height:30px; border: 1px solid #cdcdcd; background:#e6e6e6; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#969696; float:left; margin:0 10px 0 0; display:inline; cursor:pointer; font-size:14px; font-weight:bold;}
        #addinfo a{ font-size:14px; font-weight:bold; background:url(images/main/addinfoblack.jpg) no-repeat 0 1px; padding:0px 0 0px 20px; line-height:45px;}
        #addinfo a:hover{ background:url(images/main/addinfoblue.jpg) no-repeat 0 1px;}
    </style>
</head>
<body>
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
    <tr>
        <td width="99%" align="left" valign="top">您的位置：楼盘活动&nbsp;&nbsp;>&nbsp;&nbsp;新增活动</td>
    </tr>
    <tr>
        <td align="left" valign="top" id="addinfo">
            <a href="main_info.html" target="mainFrame" onFocus="this.blur()" class="add">新增楼盘活动</a>
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <form method="post" action="#">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">楼盘名称：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <select id="buildingid" onblur="check(this.value)" name="buildingid" class="form-control input-sm" style="width:315px;margin-left:20px;margin-top:10px;">
                                <option value="">请选择</option>
                                <c:forEach items="${builds}" var="b">
                                    <option value="${b.buildingid}">${b.building}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">咨询师名称：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <select id="ctaid" onblur="check(this.value)" name="ctaid" class="form-control input-sm" style="width:315px;margin-left:20px;margin-top:10px;">
                                <option value="">请选择</option>
                                <c:forEach items="${ctas}" var="ctas">
                                    <option value="${ctas.ctaid}">${ctas.ctaname}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>

                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right"  valign="middle" class="borderright borderbottom bggray">总人数：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="text" id="totalnum" name="totalnum" value="" onblur="check(this.value)" class="text-word"  style="width: 330px;">
                        </td>
                    </tr><tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                    <td align="right"  valign="middle" class="borderright borderbottom bggray">已报名人数：</td>
                    <td align="left" valign="middle" class="borderright borderbottom main-for">
                        <input type="text" id="parnum" name="parnum" value="" onblur="check(this.value)" class="text-word"  style="width: 330px;">
                    </td>
                </tr>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">活动时间：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input id="actime" name="actime" value="" onblur="check(this.value)" class="Wdate"  style="width: 330px;" type="text" onclick="WdatePicker({dateFmt:'yyyy-M-d H:mm:ss',minDate:'%y-%M-{%d} 00:00:00'})"/>
                        </td>
                    </tr>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">活动内容：</td>
                        <td align="left"  valign="middle" class="borderright borderbottom main-for">
                            <textarea id="actcontent" onblur="check(this.value)" name="actcontent" cols="58" rows="4" align="center"></textarea>
                        </td>
                    </tr>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">备注：</td>
                        <td align="left"  valign="middle" class="borderright borderbottom main-for">
                            <textarea id="actnote" onblur="check(this.value)" name="actnote" cols="58" rows="4" align="center"></textarea>
                        </td>
                    </tr>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">&nbsp;</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input  type="button" value="提交" onclick="addActivity()" class="text-but">
                            <input type="reset" value="重置" class="text-but"></td>
                    </tr>
                </table>
            </form>
            <script>
                function check(zhi) {
                    if(zhi==""){
                        alert("不能为空奥~~");
                    }
                }
                function addActivity(){
                    if(confirm("你确认要添加吗?")){
                        var buildingid=$("#buildingid");
                        var ctaid=$("#ctaid");
                        var totalnum=$("#totalnum");
                        var parnum=$("#parnum");
                        var actime=$("#actime");
                        var actcontent=$("#actcontent");
                        var actnote=$("#actnote");
                        $.ajax({
                            url:"${pageContext.request.contextPath}/Activity/addActivity.action",
                            type:"post",
                            data:"buildingid="+buildingid.val()+"&ctaid="+ctaid.val()+"&totalnum="+totalnum.val()+"&parnum="+parnum.val()+"&actime="+actime.val()+"&actcontent="+actcontent.val()+"&actnote="+actnote.val(),
                            success:function(data){
                                ctaid.val("");
                                totalnum.val("");
                                parnum.val("");
                                actime.val("");
                                actcontent.val("");
                                actnote.val("");
                                alert(data);
                            },
                            error:function(XMLHttpRequest, textStatus, errorThrown){
                                alert("Error")
                                alert(XMLHttpRequest.readyState);
                            }
                        });
                    }

                }
            </script>
        </td>
    </tr>
</table>
</body>
</html>
