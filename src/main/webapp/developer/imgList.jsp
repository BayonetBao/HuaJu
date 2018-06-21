<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
    <style>
        body{overflow-x:hidden; background:#f2f0f5; padding:15px 0px 10px 5px;}
        #searchmain{ font-size:12px;}
        #search{ font-size:12px; background:#548fc9; margin:10px 10px 0 0; display:inline; width:100%; color:#FFF; float:left}
        #search form span{height:40px; line-height:40px; padding:0 0px 0 10px; float:left;}
        #search form input.text-word{height:24px; line-height:24px; width:180px; margin:8px 0 6px 0; padding:0 0px 0 10px; float:left; border:1px solid #FFF;}
        #search form input.text-but{height:24px; line-height:24px; width:55px; background:url(images/main/list_input.jpg) no-repeat left top; border:none; cursor:pointer; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#666; float:left; margin:8px 0 0 6px; display:inline;}
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
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
    <tr>
        <td width="99%" align="left" valign="top">您的位置：楼盘活动</td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" id="search">
                <tr>
                    <td width="40%" align="left" valign="middle">
                        <form id="mainForm" method="post" action="<%=basePath%>Activity/activityBybuild.action">
                            <input type="hidden" id="curPage" name="curPage" value="1"/>
                            <div class="form-group">
                                <span style="font-size:14px;">楼盘：</span>
                                <select name="buildingid" class="input-sm" style="width:170px;margin-left:20px;margin-top:5px;">
                                    <option value="">请选择</option>
                                    <c:forEach items="${builds}" var="b">
                                        <option value="${b.buildingid}">${b.building}</option>
                                    </c:forEach>
                                </select>
                                <input name="" type="submit" value="查询" class="form-control input-sm" style="width:70px;margin-left:250px;margin-top:-30px;">
                            </div>
                        </form>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">

            <table width="100%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
                <tr  onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">

                </tr>

                <tr  onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                    <c:forEach items="${graphs}" var="graphs">
                        <td  valign="middle" class="borderright borderbottom"><img src="<%=basePath%>/${graphs.graphurl}"/></td>
                    </c:forEach>
                    <td  valign="middle" class="borderright borderbottom"><a href="${pageContext.request.contextPath}/Img/addGraph.action">增加效果图</a></td>
                </tr>
                <tr  onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                    <c:forEach items="${buildimgs}" var="buildimgs">
                        <td  valign="middle" class="borderright borderbottom"><img src="<%=basePath%>/${buildimgs.buildimg}"/></td>
                    </c:forEach>
                    <td  valign="middle" class="borderright borderbottom"><a href="${pageContext.request.contextPath}/Img/addBuildimg.action">增加效果图</a></td>
                </tr>
                <tr  onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                    <c:forEach items="${arroundimgs}" var="arroundimgs">
                        <td  valign="middle" class="borderright borderbottom"><img src="<%=basePath%>/${arroundimgs.arrimg}"/></td>
                    </c:forEach>
                    <td  valign="middle" class="borderright borderbottom"><a href="${pageContext.request.contextPath}/Img/addArround.action">增加效果图</a></td>
                </tr>
                <tr  onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                    <c:forEach items="${protoTypeImgs}" var="protoTypeImgs">
                        <td  valign="middle" class="borderright borderbottom"><img src="<%=basePath%>/${protoTypeImgs/prototype}"/></td>
                    </c:forEach>
                    <td  valign="middle" class="borderright borderbottom"><a href="${pageContext.request.contextPath}/Img/addProto.action">增加效果图</a></td>
                </tr>
                <tr  onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                    <c:forEach items="${environmentImgs}" var="environmentImgs">
                        <td  valign="middle" class="borderright borderbottom"><img src="<%=basePath%>/${environmentImgs.envirimg}"/></td>
                    </c:forEach>
                    <td  valign="middle" class="borderright borderbottom"><a href="${pageContext.request.contextPath}/Img/addEnvironment.action">增加效果图</a></td>
                </tr>


            </table>
        </td>
    </tr>

</table>
<script >
    function  getPage(curPage) {
        //将我们这个隐藏域的值变成curPage
        $("#curPage").val(curPage);
        //触发表单提交事件
        $("#mainForm").submit();

    }

    function addGraph(){
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
                    buildingid.val("");
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
</body>
</html>
