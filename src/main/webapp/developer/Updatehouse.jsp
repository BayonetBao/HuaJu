<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/8
  Time: 9:27
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
        #addinfo a{ font-size:14px; font-weight:bold;  no-repeat:0 1px; padding:0px 0 0px 20px; line-height:45px;}

    </style>
</head>
<body>
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">

    <tr>
        <td align="left" valign="top" id="addinfo">
            <a href="楼盘信息详情页" target="mainFrame" onFocus="this.blur()" class="add">id楼盘名字&nbsp;&nbsp;</a>
            <a href="楼盘信息详情页" target="mainFrame" onFocus="this.blur()" class="add">房子编号${house.houseid}&nbsp;&nbsp;</a>
            <a href="main_message.html" target="mainFrame" onFocus="this.blur()" class="add">&nbsp;&nbsp;返回</a>
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <form method="post" action="${pageContext.request.contextPath}/houseInfo/updateTrue.action" enctype="multipart/form-data">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
                    <%--<tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">--%>
                        <%--<td align="right" valign="middle" class="borderright borderbottom bggray">编号：</td>--%>
                        <%--<td align="left" valign="middle" class="borderright borderbottom main-for">--%>
                            <%--<input type="" name="" value="${house.houseid}" readonly="readonly" class="text-word">--%>

                        <%--</td>--%>
                    <%--</tr>--%>
                        <input hidden="hidden" name="houseid" value="${house.houseid}"/>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">名字：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="" name="hname" value="${house.hname}" class="text-word">
                        </td>
                    </tr>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">更新时间：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input id="dytime" name="updatename" value="" readonly="readonly" onblur="check(this.value)" class="Wdate"  style="width:610px;height:36px; border-color: #8bc34a" type="text" onclick="WdatePicker({dateFmt:'yyyy-M-d H:mm:ss',minDate:'%y-%M-{%d} 00:00:00'})"/>


                        </td>
                    </tr>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">参考总价：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="" name="hmoney" value="${house.hmoney}" class="text-word">万元左右
                        </td>
                    </tr>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">参考单价：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="" name="hperprice" value="${house.hperprice}元左右" class="text-word">

                        </td>
                    </tr>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">首付：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="" name="" value="${house.payment}" class="text-word">万元左右

                        </td>
                    </tr>
                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">月供：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="" name="monthpay" value="${house.monthpay}" class="text-word">元左右

                        </td>
                    </tr>


                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">朝向：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="" name="forward" value="${house.forward}" class="text-word">

                        </td>
                    </tr>

                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">房型：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="" name="" value="${house.doorid}" readonly="readonly" class="text-word">

                        </td>
                    </tr>

                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">居室：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="" name="" value="${htype.buildType.type.typename}" readonly="readonly" class="text-word">

                        </td>
                    </tr>

                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">面积：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="" name="harea" readonly="readonly" value="${house.harea}" class="text-word">

                        </td>
                    </tr>

                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">类型：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="" name="htype" value="${house.htype}" class="text-word">
                        </td>
                    </tr>

                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">房型图：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <!--<input type="" name="" value="" class="text-word">-->


                            <div class="form-group" id="uploadForm" enctype='multipart/form-data'>
                                <div class="fileinput fileinput-new" data-provides="fileinput"  id="exampleInputUpload">

                                    <div class="fileinput-new thumbnail" style="width: 200px;height: auto;max-height:150px;">
                                        <img id='picImg' style="width: 100%;height: auto;max-height: 140px;" src="<%=imgPath%>${house.htypeimg}" alt="" />

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



                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">户型解析：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input type="" name="analysis" value="${house.analysis}" class="text-word">

                        </td>
                    </tr>

                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">&nbsp;</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <input name="House"  type="submit" value="提交" class="text-but">
                            <!-- <input name="" type="reset" value="重置" class="text-but">-->

                        </td>
                    </tr>

                </table>
            </form>
            <%--<button type="submit"  class="btn btn-info">提交</button>--%>

        </td>
    </tr>
</table>


<%--<div class="fileinput-new thumbnail" style="width: 200px;height: auto;max-height:150px;">--%>
    <%--<input type="file" name="imgfile" id="picID" accept="image/gif,image/jpeg,image/x-png">--%>
    <%--<img id='picImg' style="width:160px;height: 140px;" src="<%=imgPath%>/${house.htypeimg}" alt="" />--%>
<%--</div>--%>
<script type="text/javascript" src="<%=basePath%>jquery1.8.3.min.js"></script>
<script type="text/javascript">

    $(function () {
        //建立一個可存取到該file的url
        function getObjectURL(file) {
            var url = null;
            if (window.createObjectURL != undefined) { // basic
                url = window.createObjectURL(file);
            } else if (window.URL != undefined) { // mozilla(firefox)
                url = window.URL.createObjectURL(file);
            } else if (window.webkitURL != undefined) { // webkit or chrome
                url = window.webkitURL.createObjectURL(file);
            }
            return url;
        }

        //获取点击的元素
        var  divimg=$('.hahha').children('img');
//        获取上传图片的input标签
        var divinput=$('.hahha').children('input');
//        设置input的大小和img的大小一致
        divinput.css({'width':divimg.css('width'),'heigth':divimg.css('heigth'),'border':solid});
//       input透明度为0，定位，优先级比图片的高
        divinput.css({'opacity':0,'position':'absolute','z-index':100});
//        判断input的图文件改变则img图片也替换为input选择的图片
        divinput.change(function () {
            if(this.files&&this.files[0]){
                var objurl=getObjectURL(this.files[0]);
                if (objurl){
                    $(this).siblings('img').attr("src",objurl);
                }
            }
        })



    })


</script>



</body>
</html>
