<%--
  Created by IntelliJ IDEA.
  User: 七年
  Date: 2018/6/14
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="${pageContext.request.contextPath}/user/ke/js/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/user/ke/js/bootstrap.js"></script>
    <link href="${pageContext.request.contextPath}/user/ke/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <style>
        span{
            color:grey;
        }
        .s1{
            color:green;
        }
        .s2{
            color:red;
        }
    </style>
</head>
<body>
<div style="border: 1px solid gray;padding: 30px; margin: 50px 100px;">
<form class="form-horizontal" id="form" method="post" action="${pageContext.request.contextPath}/user/updatePassword.action">
    <div class="form-group">
        <label for="upwd" class="col-sm-2 control-label">原密码</label>
        <div class="col-sm-6">
            <input type="password" name="upwd" class="form-control" id="upwd" placeholder="password" onblur="check(this)"/>
        </div>
        <span id="upwdspan"></span>
    </div>
    <div class="form-group">
        <label for="newpwd" class="col-sm-2 control-label">新密码</label>
        <div class="col-sm-6">
            <input type="password" name="newpwd" class="form-control" id="newpwd" placeholder="Password">
        </div>
        <span></span>
    </div>
    <div class="form-group">
        <label for="newpwd1" class="col-sm-2 control-label">确认密码</label>
        <div class="col-sm-6">
            <input type="password" name="newpwd1" onblur="checkpwd(this)" class="form-control" id="newpwd1" placeholder="Password">
        </div>
        <span id="newupwd1span"></span>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="button" class="btn btn-default" onclick="sub()">确认修改</button>
            <button type="reset" style="margin-left: 70px;" class="btn btn-default">重置</button>
        </div>
    </div>
</form>
</div>

<script>
    function sub() {
        var span1=$("#upwdspan");
        var span2=$("#newupwd1span");
        if(span1.is(".s1")&&span2.is(".s1")){
            $("#form").submit();
        }
    }
    function check(obj) {
        var pwd=${sessionScope.user.upwd};
        var span=$("#upwdspan");
        if(pwd==obj.value){
            span.removeClass("s2");
            span.removeClass(" glyphicon glyphicon-remove");
            document.getElementById("upwdspan").innerHTML="密码正确";
            span.addClass("s1");
            span.addClass("glyphicon glyphicon-ok");
        }else {
            span.removeClass("s1");
            span.removeClass("glyphicon glyphicon-ok");
            document.getElementById("upwdspan").innerHTML="密码错误";
            span.addClass("s2");
            span.addClass(" glyphicon glyphicon-remove");
        }
    }
    function checkpwd(obj) {
        var span=$("#newupwd1span");
        var newpwd=$("#newpwd");
        if(newpwd.val()==obj.value){
            span.removeClass("s2");
            span.removeClass(" glyphicon glyphicon-remove");
            document.getElementById("newupwd1span").innerHTML="密码一致";
            span.addClass("s1");
            span.addClass("glyphicon glyphicon-ok");
        }else {
            span.removeClass("s1");
            span.removeClass("glyphicon glyphicon-ok");
            document.getElementById("newupwd1span").innerHTML="密码不一致";
            span.addClass("s2");
            span.addClass(" glyphicon glyphicon-remove");
        }
    }
</script>
</body>
</html>
