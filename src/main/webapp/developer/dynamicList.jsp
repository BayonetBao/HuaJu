<%--
  Created by IntelliJ IDEA.
  User: 七年
  Date: 2018/6/2
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>主要内容区main</title>
    <link href="css/css.css" type="text/css" rel="stylesheet" />
    <link href="css/main.css" type="text/css" rel="stylesheet" />
    <link rel="shortcut icon" href="images/main/favicon.ico" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript" src="bootstrap/jquery.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
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
    <script >
        function  getPage(curPage) {
            //将我们这个隐藏域的值变成curPage
            document.getElementById("curPage").value=curPage;
            //触发表单提交事件
            document.getElementById("mainForm").submit();

        }
    </script>
</head>
<body>
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
    <tr>
        <td width="99%" align="left" valign="top">您的位置：楼盘动态</td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" id="search">
                <tr>
                    <td width="90%" align="left" valign="middle">
                        <form id="mainForm" method="post" action="">
                            <div class="form-group">
                                <span style="font-size:14px;">楼盘：</span>
                                <select name="buildingid" class="form-control input-sm" style="width:170px;margin-left:20px;margin-top:10px;">
                                    <option value="">请选择</option>
                                    <option value="2">升龙楼盘</option>
                                    <option value="6">6</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                                <input name="" type="button" value="查询" class="form-control input-sm" style="width:70px;margin-left:30px;margin-top:10px;">
                            </div>
                        </form>
                    </td>
                    <td width="10%" align="center" valign="middle" style="text-align:right; width:150px;"><a  href="dynamicAdd.jsp" target="mainFrame" onFocus="this.blur()" class="add">新增动态</a></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">

            <table width="100%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
                <tr>
                    <input type="hidden"  name="curPage" id="curPage" value="1">
                    <th align="center" valign="middle" class="borderright">编号</th>
                    <th align="center" valign="middle" class="borderright">楼盘</th>
                    <th align="center" valign="middle" class="borderright">标题</th>
                    <th align="center" valign="middle" class="borderright">动态内容</th>
                    <th align="center" valign="middle" class="borderright">动态时间</th>
                    <th align="center" valign="middle">操作</th>
                </tr>
                <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                    <td align="center" valign="middle" class="borderright borderbottom">1</td>
                    <td align="center" valign="middle" class="borderright borderbottom">升龙楼盘</td>
                    <td align="center" valign="middle" class="borderright borderbottom">全面降价！！</td>
                    <td align="center" valign="middle" class="borderright borderbottom">部分楼盘减价，机不可失</td>
                    <td align="center" valign="middle" class="borderright borderbottom">2013-04-26 11:00:59</td>
                    <td align="center" valign="middle" class="borderbottom"><a href="dynamicUpdate.jsp" target="mainFrame" onFocus="this.blur()" class="add">编辑</a><span class="gray">&nbsp;|&nbsp;</span><a href="add.html" target="mainFrame" onFocus="this.blur()" class="add">删除</a></td>
                </tr>

            </table></td>
    </tr>
    <tr>
            <td align="left" valign="top" class="fenye">共<b>${pageInfo.total}</b>条&nbsp;&nbsp;
            <a href="javascript:getPage(${pageInfo.firstPage})"  target="mainFrame">首页</a>
            <a href="javascript:getPage(${pageInfo.prePage})" target="mainFrame">上一页</a>

            当前第<span>${pageInfo.pageNum}</span>/<b>${pageInfo.totalPage}</b>页
            <a href="javascript:getPage(${pageInfo.nextPage})" target="mainFrame">下一页</a>
            <a href="javascript:getPage(${pageInfo.lastPage})" target="mainFrame">末页</a>
           </td>
    </tr>
</table>
</body>
</html>
