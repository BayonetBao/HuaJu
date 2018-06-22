<%--
  Created by IntelliJ IDEA.
  User: 七年
  Date: 2018/6/14
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no">

    <title>信息照片上传</title>
    <script src="${pageContext.request.contextPath}/user/ke/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/user/ke/js/bootstrap.js" ></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/message.css" type="text/css" />
    <script src="${pageContext.request.contextPath}/user/ke/js/message.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/bootstrap.css" type="text/css" />
    <link href="${pageContext.request.contextPath}/user/ke/css/cropper.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/ImgCropping.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/user/ke/css/base.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/user/ke/css/home.css"/>
    <script src="${pageContext.request.contextPath}/user/ke/js/cropper.js"></script>

</head>
<body >
<button style="position: relative;left: 320px;top: 170px" id="replaceImg" class="l-btn">更换图片</button>
<div style="height: 2px;">
    <img id="finalImg" style="position: relative;left: 180px;top: 50px" src="${pageContext.request.contextPath}/user/ke/images/userImg/${user.userpic}" width="120px;" height="120px" class="img-circle">
</div>
<!--图片裁剪框 start-->
<div style="display: none;width:500px;height:360px;" class="tailoring-container" >
    <div class="black-cloth" onClick="closeTailor(this)"></div>
    <div class="tailoring-content">
        <div class="tailoring-content-one">
            <label title="上传图片" for="chooseImg" class="l-btn choose-btn">
                <form enctype="multipart/form-data" id="upImg">
                <input type="file" accept="image/jpg,image/jpeg,image/png" name="userpic" id="chooseImg" class="hidden" onChange="selectImg(this)">
                选择图片
                </form>
            </label>
            <div class="close-tailoring"  onclick="closeTailor(this)">×</div>
        </div>
        <div class="tailoring-content-two">
            <div class="tailoring-box-parcel">
                <img id="tailoringImg">
            </div>
            <div class="preview-box-parcel">
                <p>图片预览：</p>
                <div class="square previewImg"></div>
                <div class="circular previewImg"></div>
            </div>
        </div>
        <div class="tailoring-content-three">
            <button class="l-btn cropper-reset-btn">复位</button>
            <button class="l-btn cropper-rotate-btn">旋转</button>
            <button class="l-btn cropper-scaleX-btn">换向</button>
            <button class="l-btn sureCut " id="sureCut">确定</button>
        </div>
    </div>
</div>
<!--图片裁剪框 end-->
<script type="text/javascript">

    //弹出框水平垂直居中
    (window.onresize = function () {
        var win_height = $(window).height();
        var win_width = 700;
        if (win_width <= 768){
            $(".tailoring-content").css({
                "top": 5,
                "left": 60,
            });
        }else{
            $(".tailoring-content").css({
                "top": (win_height - $(".tailoring-content").outerHeight())/2,
                "left": (win_width - $(".tailoring-content").outerWidth())/2
            });
        }
    })();

    //弹出图片裁剪框
    $("#replaceImg").on("click",function () {
        $(".tailoring-container").toggle();
    });
    //图像上传
    function selectImg(file) {
        if (!file.files || !file.files[0]){
            return;
        }
        var reader = new FileReader();
        reader.onload = function (evt) {
            var replaceSrc = evt.target.result;
            //更换cropper的图片
            $('#tailoringImg').cropper('replace', replaceSrc,false);//默认false，适应高度，不失真
        }
        reader.readAsDataURL(file.files[0]);
    }
    //cropper图片裁剪
    $('#tailoringImg').cropper({
        aspectRatio: 1/1,//默认比例
        preview: '.previewImg',//预览视图
        guides: false,  //裁剪框的虚线(九宫格)
        autoCropArea: 0.5,  //0-1之间的数值，定义自动剪裁区域的大小，默认0.8
        movable: false, //是否允许移动图片
        dragCrop: true,  //是否允许移除当前的剪裁框，并通过拖动来新建一个剪裁框区域
        movable: true,  //是否允许移动剪裁框
        resizable: true,  //是否允许改变裁剪框的大小
        zoomable: false,  //是否允许缩放图片大小
        mouseWheelZoom: false,  //是否允许通过鼠标滚轮来缩放图片
        touchDragZoom: true,  //是否允许通过触摸移动来缩放图片
        rotatable: true,  //是否允许旋转图片
        crop: function(e) {
            // 输出结果数据裁剪图像。
        }
    });
    //旋转
    $(".cropper-rotate-btn").on("click",function () {
        $('#tailoringImg').cropper("rotate", 45);
    });
    //复位
    $(".cropper-reset-btn").on("click",function () {
        $('#tailoringImg').cropper("reset");
    });
    //换向
    var flagX = true;
    $(".cropper-scaleX-btn").on("click",function () {
        if(flagX){
            $('#tailoringImg').cropper("scaleX", -1);
            flagX = false;
        }else{
            $('#tailoringImg').cropper("scaleX", 1);
            flagX = true;
        }
        flagX != flagX;
    });

    //裁剪后的处理
    $("#sureCut").on("click",function () {
        if ($("#tailoringImg").attr("src") == null ){
            return false;
        }else{
            var cas = $('#tailoringImg').cropper('getCroppedCanvas');//获取被裁剪后的canvas
            var base64url = cas.toDataURL('image/png'); //转换为base64地址形式
            $("#finalImg").prop("src",base64url);//显示为图片的形式
            var form = new FormData($("#upImg")[0]);
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/user/uploadImg.action",
                dataType : 'json',
                data:form,
                processData:false,
                contentType:false,
                success:function (data) {

                }

            });
            $.message("上传成功");
            closeTailor();
        }
    });
    //关闭裁剪框
    function closeTailor() {
        $(".tailoring-container").toggle();
    }
</script>
<section class="aui-content">
    <div class="aui-content-up" style="margin-left: 20px;margin-top: -10px;">
        <form action="${pageContext.request.contextPath}/user/updateMessage.action" id="mainform" method="post">
            <input type="hidden" name="userid" value="${sessionScope.user.userid}"/>
            <div class="aui-content-up-form">
                <h2>修改信息</h2>
            </div>
            <div class="aui-form-group clear" style="height: 130px;">
                <label class="aui-label-control">
                    头像 <em>*</em>
                    <span style="margin-left: 10px; margin-right: 0px;">小于5M</span>
                </label>
            </div>
            <div class="aui-form-group clear">
                <label class="aui-label-control">
                    姓名 <em>*</em>
                </label>
                <div class="aui-form-input">
                    <input type="text" class="aui-form-control-two" name="uname" value="${sessionScope.user.uname}" onBlur="checkna()" required id="1" placeholder="请输入名字">
                    <span class="tips" id="divname">长度1~6个字符</span>
                </div>
            </div>
            <div class="aui-form-group clear">
                <label class="aui-label-control">
                    手机号码 <em>*</em>
                </label>
                <div class="aui-form-input">
                    <input type="text" class="aui-form-control-two" value="${sessionScope.user.uphone}" name="uphone" id="2" placeholder="请输入11位的手机号码" onBlur="checkpsd1()" required/>
                    <span class="tips" id="phone">必须是11位的数字</span>
                </div>
            </div>
            <div class="aui-form-group clear">
                <label class="aui-label-control">
                    个性签名
                </label>
                <div class="aui-form-input">
                    <textarea class="aui-form-control"  name="remark" id="4" minlength="5">${sessionScope.user.remark}</textarea>
                </div>
            </div>
        </form>
    </div>
    <div class="aui-btn-default"style="margin-left: 50px;">
        <button class="aui-btn aui-btn-account btn-success" onclick="submain()">保存并提交审核</button>
    </div>
    <script>
       function submain(){
            $.message({
                messgae:"成功",
                type:"success"
            });
            $("#mainform").submit();
        }

    </script>
</section>
<!-- mask begin -->
<div class="aui-mask aui-works-mask">
    <div class="aui-mask-content">
        <p class="aui-delete-text">确定要删除你上传的资料？</p>
        <p class="aui-check-text">
            <span class="aui-delete aui-accept-ok">确定</span>
            <span class="aui-accept-no">取消</span>
        </p>
    </div>
</div>

<script type="text/javascript">
    //验证姓名
    function checkna(){
        na=form1.yourname.value;
        if( na.length <1 || na.length >6)
        {
            divname.innerHTML='<font class="tips_false">长度是1~6个字符</font>';
        }else{
            divname.innerHTML='<font class="tips_true">输入正确</font>';
        }
    }
    //验证手机号码
    function checkpsd1(){
        na=form1.youphone.value;
        if( na.length <11 || na.length >11)
        {
            phone.innerHTML='<font class="tips_false">必须是11位的数字</font>';
        }else{
            phone.innerHTML='<font class="tips_true">输入正确</font>';
        }
    }

    //验证社会统一代码
    function checkpsd2(){
        na=form1.youziz.value;
        if( na.length <18 || na.length >18)
        {
            zizhi.innerHTML='<font class="tips_false">必须是18位社会信用代码</font>';
        }else{
            zizhi.innerHTML='<font class="tips_true">输入正确</font>';
        }
    }
</script>
</body>
</html>

