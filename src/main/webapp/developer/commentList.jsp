<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%--
  Created by IntelliJ IDEA.
  User: 七年
  Date: 2018/6/2
  Time: 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>主要内容区main</title>
    <link href="${pageContext.request.contextPath}/developer/css/css.css" type="text/css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/developer/css/main.css" type="text/css" rel="stylesheet" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/developer/images/main/favicon.ico" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/developer/bootstrap/jquery.js"></script>

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
        .bggray{ background:#f9f9f9}
        #addinfo{ padding:0 0 10px 0;}
    </style>
    <script >
        function  getPage(curPage) {
            //将我们这个隐藏域的值变成curPage
            $("#curPage").val(curPage);
            //触发表单提交事件
            $("#mainForm").submit();

        }
        function removeComment(commentid) {
            if(confirm("你确认要删除吗?")){
                $.ajax({
                    url:"${pageContext.request.contextPath}/comment/deleteCommentById.action",
                    type:"get",
                    data:"commentid="+commentid,
                    success:function(data){
                        var tr=$("#tr_"+commentid);
                        tr.remove();
                        alert(data);
                    },
                    error:function(XMLHttpRequest, textStatus, errorThrown){
                        alert("Error");
                    }
                });
            }

        }
    </script>
</head>
<body>
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
    <tr>
        <td width="99%" align="left" valign="top" id="addinfo">
            <form id="mainForm" method="post" action="${pageContext.request.contextPath}/comment/selectAllCommentByQueryPojo.action">
                <input type="hidden" id="curPage" name="curPage" value="1"/>
                您的位置：留言板&nbsp;&nbsp;&nbsp;<span>楼盘：</span>
                <select name="buildingid" class="input-sm" style="width:170px;margin-left:20px;margin-top:5px;">
                    <option value="">请选择</option>
                    <c:forEach items="${blist}" var="b">
                        <c:choose>
                            <c:when test="${b.buildingid == commentQueryPojo.buildingid}">
                                <option value="${b.buildingid}" selected>${b.building}</option>
                            </c:when>
                            <c:otherwise>
                                <option value="${b.buildingid}">${b.building}</option>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </select>
                <span>$：</span>
                    <input name="comtype" <c:if test="${commentQueryPojo.comtype eq '好评'}">checked</c:if> type="radio" value="好评">好评</input>
                    <input name="comtype" <c:if test="${commentQueryPojo.comtype eq '中评'}">checked</c:if> type="radio" value="中评">中评</input>
                    <input name="comtype" <c:if test="${commentQueryPojo.comtype eq '差评'}">checked</c:if> type="radio" value="差评">差评</input>
                <span>评论人员：</span>
                <select name="idtype" class="input-sm" style="width:170px;margin-left:20px;margin-top:5px;">
                    <option value="" >请选择</option>
                    <option value="3" <c:if test="${commentQueryPojo.idtype eq 3}">selected</c:if>>咨询师</option>
                    <option value="1" <c:if test="${commentQueryPojo.idtype eq 1}">selected</c:if>>用户</option>
                    <option value="2" <c:if test="${commentQueryPojo.idtype eq 2}">selected</c:if>>开发商</option>
                </select>
                <input  type="submit" value="查询" class="text-but">
            </form>
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
                <tr>
                    <th align="left"  valign="middle" class="borderright">编号</th>
                    <th align="left"  valign="middle" class="borderright">评论类型</th>
                    <th align="left"  valign="middle" class="borderright">评论用户</th>
                    <th align="left"  valign="middle" class="borderright">用户名称</th>
                    <th align="left"  valign="middle" class="borderright">楼盘名称</th>
                    <th align="left"  valign="middle" class="borderright">评论内容</th>
                    <th align="left"  valign="middle" class="borderright">评论时间</th>
                </tr>
                <c:forEach items="${pageInfo.list}" var="c">
                <tr   id="tr_${c.commentid}" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                    <td  align="left" valign="middle" class="borderright borderbottom">${c.commentid}</td>
                    <td align="left" valign="middle" class="borderright borderbottom">${c.comtype}</td>
                    <td align="left" valign="middle" class="borderright borderbottom">
                        <c:choose>
                            <c:when test="${c.idtype eq 1}">用户</c:when>
                            <c:when test="${c.idtype eq 2}">开发商</c:when>
                            <c:otherwise>
                                咨询师
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td align="left" valign="middle" class="borderright borderbottom">${c.uname}</td>
                    <td align="left" valign="middle" class="borderright borderbottom"><a href="${c.buildingid}" target="mainFrame" onFocus="this.blur()">${c.building}</a></td>
                    <td align="left" valign="middle" class="borderright borderbottom">${c.comcontent}</td>
                    <td align="left" valign="middle" class="borderright borderbottom">
                        <fmt:formatDate value="${c.comtime}" pattern="yyyy-MM-dd hh:mm:ss"/>
                    </td>
                </tr>
                </c:forEach>
            </table></td>
    </tr>
    <tr>
        <td align="left" valign="top" class="fenye">
            共<b>${pageInfo.total}</b>条&nbsp;&nbsp;
            <a href="javascript:getPage(${pageInfo.firstPage})"  target="mainFrame">首页</a>
            <a href="javascript:getPage(${pageInfo.prePage})" target="mainFrame">上一页</a>
            <span><b>${pageInfo.pageNum}/${pageInfo.pages}</b></span>
            <c:if test="${!pageInfo.isLastPage}"><a href="javascript:getPage(${pageInfo.nextPage})" target="mainFrame">下一页</a></c:if>
            <a href="javascript:getPage(${pageInfo.lastPage})" target="mainFrame">末页</a>
        </td>
    </tr>

</table>
</body>
</html>
