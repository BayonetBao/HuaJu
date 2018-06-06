<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/4
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>主要内容区main</title>


<link href="<%=basePath%>developer/css/css.css" type="text/css" rel="stylesheet" />
<link href="<%=basePath%>developer/css/main.css" type="text/css" rel="stylesheet" />
<link rel="shortcut icon" href="<%=basePath%>developer/images/main/favicon.ico" />
<script type="text/javascript" src="${pageContext.request.contextPath }/developer/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/developer/js/bootstrap.js"></script>
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
    .bggray{ background:#f9f9f9}
    /*#addinfo{ padding:0 0 10px 0;}*/
    #addinfo a{ font-size:14px; font-weight:bold;  no-repeat: 0 1px; padding:0px 0 0px 20px; line-height:45px;}

    .image{
        margin-left: 480px;
    }
    a{

        width: 40px;
        height: 40px;
        overflow: hidden;:

    display: inline-block;

    }
    a:hover img{

        -webkit-transform:scale(1.3);-o-transform:scale(1.3);

    }
</style>
</head>
<body>
<div class="image">
    <a href="addinfo_housezyj.jsp"><img src="<%=basePath%>developer/images/main/add.svg" /></a>
</div>


<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
    <tr>
        <td align="left" valign="top" id="addinfo">

            <a href="main.html" onFocus="this.blur()" class="add">返回</a>
        </td>
    </tr>

    <tr>
        <td align="left" valign="top">

            <table width="100%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
                <%--表格字段名--%>
                <tr>
                    <th align="center" valign="middle" class="borderright">编号</th>
                    <th align="center" valign="middle" class="borderright">房名</th>
                    <th align="center" valign="middle" class="borderright">参考总价</th>
                    <th align="center" valign="middle" class="borderright">面积</th>
                    <th align="center" valign="middle" class="borderright">销售状态</th>
                    <th align="center" valign="middle">操作</th>
                </tr>
                <%--内容--%>
                <c:forEach items="${houselist}" var="houselist">
                    <tr id="${houselist.houseid}_house"  onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">

                        <td align="center" valign="middle" class="borderright borderbottom">${houselist.houseid}</td>
                        <td align="center" valign="middle" class="borderright borderbottom">${houselist.hname}</td>
                        <td align="center" valign="middle" class="borderright borderbottom">${updatename.hmoney}万元左右</td>
                        <td align="center" valign="middle" class="borderright borderbottom">${houselist.harea}㎡</td>
                        <td align="center" valign="middle" class="borderright borderbottom">${houselist.hsalestatus}</td>
                        <td align="center" valign="middle" class="borderbottom">
                            <a href="<%=basePath%>/houseInfo/detailhouse.action?id=${houselist.houseid}>" target="mainFrame" onFocus="this.blur()" class="add">详情</a>
                            |<a href="javascript:void(0)" onclick="remove('${houselist.houseid}')" target="mainFrame" onFocus="this.blur()" class="add">删除</a>

                        </td>

                    </tr>

                </c:forEach>
            </table></td>
    </tr>

</table>

<script type="text/javascript">
    function remove(id) {
        if (confirm("确定要删除么？")){
            var url="${pageContext.request.contextPath}/houseInfo/remove.action";
            alert(111111);
            $.get(url,"houseid="+id,function(data){
                alert(2222);
                if(data=="1"){

                    var hid=id+"_house";
                    var tr=$("#"+hid);
                    tr.remove();
                    alert("删除成功");
                }else {
                    alert("删除失败");
                }
            });
        }

    }

</script>

</body>

</html>
