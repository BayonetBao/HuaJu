<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/10
  Time: 18:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
        //图片路径
        String imgPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/upImage"+"/";
    %>
</head>
<body>


    <span style="white-space:pre"> </span>
    <div class='fileImgs1'>
        <input type="file" name='img4'>
        <img src="<%=imgPath%>noimage.png" style='width:145px;height:125px' alt="">
    </div>

<script type="text/javascript" src=${pageContext.request.contextPath}/jquery1.8.3.min.js"></script>
<script type="text/javascript">
    $(function() {
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
        //获取点击的图片元素
        var cdimg = $('.fileImgs1').children('img');
        //获取上传图片的 input 标签元素
        var cdfile = $('.fileImgs1').children('input[type="file"]');
        //设置input 大小和图片一致
        cdfile.css({'width':cdimg.css('width'),'height':cdimg.css('height')});
        //input透明度为0,定位，优先级比图片高
        cdfile.css({'opacity':0,'position':'absolute','z-index':10});
        //判断input的图片文件改变则img的图片也替换为input选择的图片
        cdfile.change(function() {
            if (this.files && this.files[0]) {
                var objUrl = getObjectURL(this.files[0]);
                if (objUrl) {
                    $(this).siblings('img').attr("src", objUrl);
                }
            }
        });
    })
</script>


</body>
</html>
