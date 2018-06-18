<%--
  Created by IntelliJ IDEA.
  User: 狂妄小子
  Date: 2018/6/4
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>开发商注册</title>
    <link rel="stylesheet" href="css/style.css">
    <link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700,300,200' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>

    <!-- For-Mobile-Apps-and-Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Impressive Multiple Form  Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
    <script language="javascript" src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script type="application/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
        function hideURLbar(){ window.scrollTo(0,1);

        }

    </script>
    <!-- //For-Mobile-Apps-and-Meta-Tags -->

</head>
<body>
<h1>开发商注册</h1>
<div class="container">
    <%--enctype="multipart/form-data" 文件上传 --%>
    <form enctype="multipart/form-data" action="/registerCompany.action" method="post">
    <div class="left w3l">
        <h3>REGISTER MUST</h3>
        <div class="register agileits">

                <input type="text" class="name" id="comuname" name="comuname" placeholder="用户名" required/>
                <input type="password" class="password" name="compassword" id="compassword" placeholder="密码" required/>
                <input type="password" class="password" name="repassword" id="repassword" placeholder="确认密码" required/>
                <input type="text" class="email" name="cphone" id="cphone" placeholder="Phone" required/>
                <input type="text" class="time" name="comname" id="comname" placeholder="公司名称" required/>
                <input type="date" class="time" name="ctime" id="ctime" placeholder="注册时间" required/>
                <input type="number" class="capital" name="cmoney" id="cmoney" placeholder="注册资金" required/>
                <input type="text" class="location" name="caddress" id="caddress" placeholder="地址" required/>

        </div>
    </div>
    <div class="right">

        <h3>REGISTER MUST</h3>
        <div class="register agileits">


                <input type="file" name="clicenses">点击这里上传营业执照

            <a href="javascript:void(0);" class="a-upload">
                <input type="file" name="constructions" id="Constructions">点击这里上传建设工程规划许可证<span class="showFileName"></span>
            </a>
            <a href="javascript:void(0);" class="a-upload">
                <input type="file" name="landuses" id="landuses" value="hahahah">点击这里上传国有土地使用证许可证<span class="showFileName"></span>
            </a>
            <a href="javascript:void(0);" class="a-upload">
                <input type="file" name="presales" id="presales"><span class="showFileName">点击这里上传商品房预售许可证许可证</span>
            </a>
            <a href="javascript:void(0);" class="a-upload">
                <input type="file" name="permits" id="permits"><span class="showFileName">点击这里上传建设用地规划许可证</span>
            </a>
            <a href="javascript:void(0);" class="a-upload">
                <input type="file" name="implementss" id="implementss"><span class="showFileName">点击这里上传建筑工程实施许可证</span>
            </a>
            <a href="javascript:void(0);" class="a-upload">
                <input type="file" name="qualitys" id="qualitys"><span class="showFileName">点击这里上传住宅质量保证书</span>
            </a>
            <a href="javascript:void(0);" class="a-upload">
                <input type="file" name="instructions" id="instructions"><span class="showFileName">点击这里上传住宅使用说明书</span>
            </a>
            <input type="submit" value="注册">
            </form>
        </div>
    </div>
    <script>

    </script>
    <div class="clear"></div>

</div>
<div class="footer agile">
    <p> &copy; 2016 Impressive Multiple Forms . All Rights Reserved | Design by <a href="http://www.smallseashell.com">.小贝壳网站模板.</a></p>
</div>
</body>

</html>
