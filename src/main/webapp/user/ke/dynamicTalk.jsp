<%--
  Created by IntelliJ IDEA.
  User: 七年
  Date: 2018/6/14
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.*" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="Keywords" content="关键词一，关键词二">
    <meta name="Description" content="网站描述内容">
    <title>Document</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/user/ke/js/jquery.min.js"></script>
    <style type="text/css">
        *{margin:0px; padding:0px;}
        body{background:url("${pageContext.request.contextPath}/user/ke/images/bg1.jpg")}
        #qq{width:600px;/*宽*/height:170px;/*高*/background:#fff;/*背景颜色*/
            margin:10px auto 30px; border-radius:5px;/*Html5 圆角*/}
        #qq p{font-size:12px; color:#666; font-family:"微软雅黑";
            line-height:45px; text-indent:20px;}
        #qq .message{width:560px; height:70px;margin:0px auto; outline:none;
            border:1px solid #ddd; /*粗细 风格 颜色*/}
        #qq .But{width:560px;height:35px;margin:15px auto 0px; position:relative;/*相对，参考对象*/}
        #qq .But img.bq{float:left;/*左浮动*/}
        #qq .But span.submit{width:80px;height:30px; background:#ff8140;					display:block; float:right;/*右浮动*/								line-height:30px;border-radius:5px;								cursor:pointer;/*手指*/color:#fff;font-size:12px;					text-align:center;font-family:"微软雅黑";}

        /*face begin*/
        #qq .But .face{width:390px; height:160px; background:#fff; padding:10px;
            border:1px solid #ddd; box-shadow:2px 2px 3px #666;
            position:absolute;/*绝对定位*/ top:21px; left:15px;
            display:none;/*隐藏*/}
        #qq .But .face ul li{width:22px;height:22px;
            list-style-type:none;/*去掉圆点*/ float:left;
            margin:2px; cursor:pointer;}

        /*msgCon begin*/
        .msgCon{width:600px;height:500px; margin:0px auto;}
        .msgCon .msgBox{ background:#fff;
            padding:10px; margin-bottom:20px;}
        .msgCon .msgBox dl{height:60px; border-bottom:1px dotted #ddd;}
        .msgCon .msgBox dl dt{width:50px; height:50px;float:left;}
        .msgCon .msgBox dl dt img{border-radius:25px;}
        .msgCon .msgBox dl dd{width:500px; height:50px;line-height:50px;float:right; position:relative;top:-15px; font-size:16px;font-family:"微软雅黑";}
        .msgCon .msgBox .msgTxt{font-size:12px; color:#666; line-height:25px;}
        .msgCon .imsgBox dl{height:60px; border-bottom:1px dotted #ddd;}
        .msgCon .imsgBox dl dt{width:50px; height:50px;float:right;}
        .msgCon .imsgBox dl dt img{border-radius:25px;}
        .msgCon .imsgBox dl dd{width:100px; height:50px;line-height:50px; position:relative;top:-15px; left:430px;font-size:16px;font-family:"微软雅黑";}
        .msgCon .imsgBox .msgTxt{font-size:12px;width: 200px; color:#666; line-height:25px; position:relative; left:380px;}
    </style>


</head>
<body>
<!--qq end-->
<div id="time1"></div>
<!--msgCon begin-->
<div class="msgCon" style="height:410px; overflow:scroll; padding:0px;background-color:white">
    <div class='imsgBox'><dl><dt><img src='images/tx.jpg' width='50' height='50'/>
    </dt><dd>兽兽小客服</dd></dl><div class='msgTxt'>你好，如果想要了解回复1哟</div></div>
</div>
<div id="qq">
    <p>有什么新鲜事想告诉大家?</p>
    <input type="hidden" value="1" id="cart"/>
    <div class="message" contentEditable='true'>

    </div>
    <div class="But">
        <span class='submit'>发表</span>
    </div>
</div>
<script type="text/javascript">

    //点击小图片，显示表情
    $(".bq").click(function(e){
        $(".face").slideDown();//慢慢向下展开
        e.stopPropagation();   //阻止冒泡事件
    });

    //在桌面任意地方点击，他是关闭
    $(document).click(function(){
        $(".face").slideUp();//慢慢向上收
    });

    //点击小图标时，添加功能
    $(".face ul li").click(function(){
        var simg=$(this).find("img").clone();
        $(".message").append(simg);
    });

    //点击发表按扭，发表内容
    $("span.submit").click(function(){
        var txt=Number($(".message").html());
        if(txt==""){
            $('.message').focus();//自动获取焦点
            return;
        }
        $(".msgCon").append("<div class='msgBox'><dl><dt><img src='${pageContext.request.contextPath}/${sessionScope.user.userpic}' width='50' height='50'/></dt><dd>${sessionScope.user.uname}</dd></dl><div class='msgTxt'>"+txt+"</div></div>");
        var s=$("#cart").val().split(",");
        if(check(s,txt)){
            $.ajax({
                type:"post",
                data:"questioncart="+txt,
                url:"${pageContext.request.contextPath}/question/selectQuestionByCart.action",
                success:function (questions) {
                    var answer="";
                    var message="";
                    if(questions.length>0){
                    for(var i=0;i<questions.length;i++){
                        answer =answer+","+questions[i].answercart;
                        message=message+questions[i].answercart+">"+questions[i].questionname+"<br/>";
                    }}else{
                        message="没有了啊哦~~";
                    }
                    $("#cart").val($("#cart").val()+answer);
                    $(".msgCon").append("<div class='imsgBox'><dl><dt><img src='images/tx.jpg' width='50' height='50'/></dt><dd>兽兽小客服</dd></dl><div class='msgTxt'>"+message+"</div></div>");
                    $(".message").html("");
                }
            });
        }else{
            alert("不合法呦"+s);
        }
    });
    function  check(obj,substring) {
        for(var i=0;i<obj.length;i++){
            if(obj[i].toString()===substring.toString()){
                return true;
            }
        }
        return false;
    }
</script>


</body>
</html>

