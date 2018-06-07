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

    <script src="${pageContext.request.contextPath }/developer/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/developer/js/bootstrap-fileinput.js"></script>
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
            <a href="${pageContext.request.contextPath}/houseInfo/addHouseInfo.action" target="mainFrame" onFocus="this.blur()" class="add">&nbsp;&nbsp;返回</a>
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <form enctype='multipart/form-data'  method="post" action="${pageContext.request.contextPath}/houseInfo/imgFile.action">
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
                            <select name="level1" id="level1">
                                <c:forEach items="${buildtype}" var="btype">
                                <option value="${buildtype.typeid}" <c:if test="${buildtype.typeid==typeid}"></c:if> >&nbsp;&nbsp;${buildtype.typeList.typename}
                                </option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>


                    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                        <td align="right" valign="middle" class="borderright borderbottom bggray">房型：</td>
                        <td align="left" valign="middle" class="borderright borderbottom main-for">
                            <select name="level2" id="level2">
                                <c:forEach items="${door}" var="d">
                                    <option value="${d.doorid}"<c:if test='${d.doorid==doorid}'>selected</c:if> >&nbsp;&nbsp;${d.doorname}</option>
                                </c:forEach>
                            </select>
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
                            <input type="text" name="" value="${addhouse.hsalestatus}" class="text-word">
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
                            <table id="upload" enctype="multipart/form-data" >
                                <tr>
                                    <td><input type=file name="myfiles" mu id="doc0" onchange="showImage();"></td>
                                    <td><img id="preview0" width=200px height=150px style="diplay:block"/> </td>
                                </tr>
                                <tr>
                                    <td><input type="submit" value="提交" /> </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
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

<script type="text/javascript">
    var count=1;
    function shun(e){
        alert(e.val());
    }

    function addLow(){
        $("#upload").append('<tr><td><input type=file name="myfiles" id="doc'+
            count+'" onchange="showImage();"> </td><td><img id="preview'+count+'"  width=300px height=120px style="diplay:block	" /><td> <input type="button" onclick="shun()" value="顺时针旋转90" id="shun'+count+'"><input type="button" value="逆时针旋转90" onclick="ni()" id="ni'+count+'"></tr>');
        count++;
    }
    function showImage() {
        for(var i=0;i<count;i++){
            var docObj = document.getElementById("doc"+i);
            var imgObjPreview = document.getElementById("preview"+i);
            if (docObj.files && docObj.files[0]) {
//火狐下，直接设img属性
                imgObjPreview.style.display = 'block';
                imgObjPreview.style.width = '200px';
                imgObjPreview.style.height = '150px';
//imgObjPreview.src = docObj.files[0].getAsDataURL();
//火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
                imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
            } else {
//IE下，使用滤镜
                docObj.select();
                var imgSrc = document.selection.createRange().text;
                var localImagId = document.getElementById("localImag");
//必须设置初始大小
                localImagId.style.width = "250px";
                localImagId.style.height = "250px";
//图片异常的捕捉，防止用户修改后缀来伪造图片
                try {
                    localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                    localImagId.filters
                        .item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
                } catch (e) {
                    alert("您上传的图片格式不正确，请重新选择!");
                    return false;
                }
                imgObjPreview.style.display = 'none';
                document.selection.empty();
            }
        }
        return true;

    }

</script>
<script>

</script>
</body>
</html>
