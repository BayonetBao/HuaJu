<%--
  Created by IntelliJ IDEA.
  User: 狂妄小子
  Date: 2018/6/5
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <title>添加楼盘</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content=""/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/developer/css/addbuildinfostyle.css" type="text/css" media="all" />
    <link href="http://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/developer/bootstrap/bootstrap.min.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/developer/Jequery/Jsquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/developer/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/developer/provincecitybarea/dist/distpicker.data.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/developer/provincecitybarea/dist/distpicker.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/developer/provincecitybarea/js/main.js"></script>
</head>
<body>
<!--header-->
<h1>
    <span>添加楼盘</span>
</h1>
<br>
<br>
<div class="container" >
    <div  style="min-width:1690px;" >
        <form enctype="multipart/form-data" action="${pageContext.request.contextPath}/build/addBuild.action" method="post" class="form-horizontal" style=" margin:0 auto;" >

            <div class="form-group">
                <label style="width:20%" for="building" class="col-sm-4 control-label">楼盘名称</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="building" id="building" placeholder="楼盘名称">
                </div>
                <!--楼盘名称:<input class="form-control" placeholder="楼盘名称" name="Name" type="text" required>-->
            </div>

            <div class="form-style-agile">
                <input placeholder="开发商ID" name="comid" value="${user.comid}" type="text" hidden="true">
            </div>

            <div class="ci" data-toggle="distpicker">
                <div class="form-group" >
                    <label style="width:20%" class="col-sm-4 control-label" for="province1">地址</label>
                    <div class="col-sm-1">
                        <select class="form-control " id="province1" name="province"></select>
                    </div>


                    <div class="col-sm-1">
                        <select class="form-control " id="city1" name="city"></select>
                    </div>


                    <div class="col-sm-1">
                        <select class="form-control " id="district1" name="barea"></select>
                    </div>
                </div>

            </div>


            <div class="form-group">
                <label style="width:20%" class="col-sm-4 control-label" for="bdetail">详细地址</label>
                <div class="col-sm-3">
                    <input class="form-control " name="bdetail" id="bdetail"/>
                </div>
            </div>

            <div class="form-group">
                <label style="width:20%" class="col-sm-4 control-label" for="bperprice">最低单价</label>
                <div class="col-sm-1" style="width:11%;">
                    <input style="width:65%; float:left;" class="form-control " name="bperprice" id="bperprice"/><span style=" line-height:40px;">元/㎡</span>
                </div>

                <label style="width:5%;" class="col-sm-1 control-label" for="btype">建筑类型</label>
                <div class="col-sm-1" style="width:11%;">
                    <select  style="width:78%; float:left;" name="btype" id="btype" class="form-control " required="">
                        <option value="高层">高层</option>
                        <option value="低层">低层</option>
                        <option value="中层">中层</option>

                    </select>
                </div>
            </div>
            <div class="form-group">
                <label style="width:20%" class="col-sm-4 control-label" for="btotalprice">楼房总价</label>
                <div class="col-sm-1" style="width:26%;">
                    <input style="width:40%; float:left;" class="form-control " name="btotalprice" id="btotalprice"/><span style=" line-height:40px; float:left;">万&nbsp;&nbsp;&nbsp;——&nbsp;&nbsp;&nbsp;</span>
                    <input style="width:40%; float:left;" class="form-control " name="bmaxtotalprice" id="bmaxtotalprice"/><span style=" line-height:40px;">万</span>
                </div>
            </div>

            <div class="form-group">
                <label style="width:20%" class="col-sm-4 control-label" for="acreage">楼房面积</label>
                <div class="col-sm-1" style="width:26%;">
                    <input style="width:40%; float:left;" class="form-control "name="acreage" id="acreage"/><span style=" line-height:40px; float:left;">㎡&nbsp;&nbsp;&nbsp;——&nbsp;&nbsp;&nbsp;</span>
                    <input style="width:40%; float:left;" class="form-control " name="maxacreage" id="maxacreage"/><span style=" line-height:40px;">㎡</span>
                </div>
            </div>
            <div class="form-group">
                <label style="width:20%"  class="col-sm-4 control-label" for="bpicture1">楼房主图</label>

                <div class="col-sm-2" style="width:25.5%;">
                    <input id="bpicture1" name="bpicture1" type="file" style="display:none">
                    <div class="input-append">
                        <input id="photoCover" class="form-control" type="text" style="width:53%; height:33px; float:left;">
                        <a class="btn btn-default" style="color: #FFF; background:#09F; width:45%;" onclick="$('input[id=bpicture1]').click();">上传图片</a>
                    </div>

                </div>
            </div>

            <div class="form-group">
                <label style="width:20%" class="col-sm-4 control-label" for="tenement">物业类型</label>
                <div class="col-sm-1" style="width:11%;">
                    <select class="form-control " name="tenement" id="tenement" style="width:80%;">
                        <option value="住宅" selected>住宅</option>
                        <option value="商业" >商业</option>
                        <option value="工业" >工业</option>
                        <option value="公益性物业" >公益性物业</option>
                    </select>
                </div>

                <label style="width:5%;" class="col-sm-1 control-label" for="conditions">销售状态</label>
                <div class="col-sm-1" style="width:11%;">
                    <select class="form-control " name="conditions" id="conditions" style="width:80%;">
                        <option value="预售" selected>预售</option>
                        <option value="在售" >在售</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label style="width:20%" class="col-sm-4 control-label" for="starttime">开盘时间</label>
                <div class="col-sm-1" style="width:11%;">
                    <input type="date" class="form-control" name="starttime" id="starttime"style="width:80%;"/>
                </div>

                <label style="width:5%;" class="col-sm-1 control-label" for="endtime">最早交房</label>
                <div class="col-sm-1" style="width:11%;">
                    <input type="date" class="form-control" name="endtime" id="endtime"  style="width:80%;"/>
                </div>


            </div>


            <div class="form-group">

                <div class="col-sm-3 control-label" style="width:29%">
                    <input type="reset" class="btn btn-default" style="" value="重置">

                </div>


                <div class="col-sm-3 control-label" style="width:13%">
                    <input type="submit" class="btn btn-default" style="background:#09F; color: #FFF;" value="确认提交">

                </div>
            </div>





    </form>
</div>
</div>
<button type="button" id="test">test</button>
</body>
<script type="text/javascript">
    $("#test").click(function () {
        alert("1");
        alert($("select[name='province']").val());
        alert("2");
        alert(document.getElementsByName("city").value)
    });
    $('input[id=bpicture1]').change(function() {
        $('#photoCover').val($(this).val());
    });
</script>

</html>
