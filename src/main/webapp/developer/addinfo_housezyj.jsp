<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/4
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>主要内容区main</title>
    <link href="<%=basePath%>developer/css/css.css" type="text/css" rel="stylesheet" />
    <link href="<%=basePath%>developer/css/main.css" type="text/css" rel="stylesheet" />
    <link rel="shortcut icon" href="<%=basePath%>images/main/favicon.ico" />
    <link href="<%=basePath%>developer/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath%>developer/css/bootstrap-fileinput.css" rel="stylesheet">
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
            <a href="<%=basePath%>developer/楼盘信息详情页" target="mainFrame" onFocus="this.blur()" class="add">id楼盘名字&nbsp;&nbsp;</a>
            <a href="<%=basePath%>developer/houselistzyj.jsp" target="mainFrame" onFocus="this.blur()" class="add">&nbsp;&nbsp;返回</a>
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <form method="post" action="">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" id="main-tab">

                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">编号：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="text" name="" value="${addhouse.houseid}" readonly="readonly" class="text-word">
                        </td>
                    </tr>


                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">房名：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="text" name="" value="${addhouse.hname}" class="text-word">
                        </td>
                    </tr>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">参考总价：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="text" name="" value="${addhouse.hmoney}" class="text-word">
                        </td>
                    </tr>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">参考单价：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="text" name="" value="${addhouse.hperprice}" class="text-word">
                        </td>
                    </tr>

                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">户型：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <select name="level" id="level1">
                                <option value="1" >&nbsp;&nbsp;字段</option>
                                <option value="2" >&nbsp;&nbsp;字段</option>
                                <option value="3" >&nbsp;&nbsp;字段</option>
                            </select>
                        </td>
                    </tr>



                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">房型：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="radio" name="hsalestatus" value="A" checked="checked"/>A
                            <input type="radio" name="hsalestatus" value="B" checked="checked"/>B
                            <input type="radio" name="hsalestatus" value="C" checked="checked"/>C
                            <input type="radio" name="hsalestatus" value="D" checked="checked"/>D
                            <input type="radio" name="hsalestatus" value="其他" checked="checked"/>其他
                        </td>
                    </tr>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">朝向：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="text" name="" value="${addhouse.forward}" class="text-word">
                        </td>
                    </tr>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">面积：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="text" name="" value="${addhouse.harea}" class="text-word">
                        </td>
                    </tr>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">类型：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="text" name="" value="${addhouse.htype}" class="text-word">
                        </td>
                    </tr>


                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">销售状态：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <%--<select name="level" id="level">--%>
                                <%--<option value="1" >&nbsp;&nbsp;预售</option>--%>
                                <%--<option value="2" >&nbsp;&nbsp;在售</option>--%>
                                <%--<option value="3" >&nbsp;&nbsp;售罄</option>--%>
                            <%--</select>--%>
                                <input type="radio" name="hsalestatus" value="1" checked="checked"/>在售
                                <input type="radio" name="hsalestatus" value="1" checked="checked"/>预售
                                <input type="radio" name="hsalestatus" value="1" checked="checked"/>售罄
                        </td>
                    </tr>


                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">首付：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="text" name="" value="${addhouse.payment}" class="text-word">
                        </td>
                    </tr>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">月供：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="text" name="" value="${addhouse.monthpay}" class="text-word">
                        </td>
                    </tr>

                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">更新时间：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="date" name="updatename" value="<fmt:formatDate value='${addhouse.updatename}' pattern='yyyy-MM-dd' />" class="text-word">
                        </td>
                    </tr>

                    </tr>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">房型图：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <!--<input type="" name="" value="" class="text-word">-->

                            <form  enctype="multipart/form-data" action="${pageContext.request.contextPath}/houseInfo/imgFile.action"method="POST">
                                <div class="form-group" id="uploadForm" >

                                    <div class="fileinput fileinput-new" data-provides="fileinput"  id="exampleInputUpload">
                                        <div class="fileinput-new thumbnail" style="width: 200px;height: auto;max-height:150px;">
                                            <img id='picImg' style="width: 100%;height: auto;max-height: 140px;" src="images/noimage.png" alt="" />
                                        </div>
                                        <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                        <div>
                        <span class="btn btn-primary btn-file">
                            <span class="fileinput-new">选择文件</span>
                            <span class="fileinput-exists">换一张</span>
                            <input type="file" name="pic1" id="picID" accept="image/gif,image/jpeg,image/x-png" />
                        </span>
                                            <a href="javascript:;" class="btn btn-warning fileinput-exists" data-dismiss="fileinput">移除</a>
                                        </div>
                                    </div>
                                </div>
                                <%--<button type="submit" id="uploadSubmit" class="btn btn-info">提交</button>--%>
                            </form>
                        </td>
                    </tr>

                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">户型解析：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <!--  <input type="text" name="" value="" class="text-word">-->
                            <textarea  class="analysis" cols="110" rows="4">${addhouse.analysis}</textarea>
                        </td>



                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">&nbsp;</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input name=""  id="uploadSubmit"  type="submit" value="提交" class="text-but">
                            <input name="" type="reset" value="重置" class="text-but"></td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
</table>




<script src="js/jquery.min.js"></script>
<script src="js/bootstrap-fileinput.js"></script>
<script type="text/javascript">
    $(function () {
        //比较简洁，细节可自行完善
        $('#uploadSubmit').click(function () {
            var data = new FormData($('#uploadForm')[0]);
            $.ajax({
                url: '<%=basePath%>/houseInfo/imgFile.action',
                type: 'POST',
                data: data,
                async: false,
                cache: false,
                contentType: false,
                processData: false,
                success: function (data) {
                    console.log(data);
                    if(data.status){
                        console.log('upload success');
                    }else{
                        console.log(data.message);
                    }
                },
                error: function (data) {
                    console.log(data.status);
                }
            });
        });

    })
</script>
</body>
</html>
