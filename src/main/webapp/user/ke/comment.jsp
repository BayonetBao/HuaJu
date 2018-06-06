<%--
  Created by IntelliJ IDEA.
  User: 七年
  Date: 2018/6/5
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Single</title>
    <!---css--->
    <link href="${pageContext.request.contextPath}/user/ke/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="${pageContext.request.contextPath}/user/ke/css/style.css" rel='stylesheet' type='text/css' />
    <!---css--->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Real Space Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!---js--->
    <script src="${pageContext.request.contextPath}/user/ke/js/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/user/ke/js/bootstrap.js"></script>
    <!---js--->
    <!---fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>

    <!---fonts-->
    <!-- FlexSlider -->
    <script src="${pageContext.request.contextPath}/user/ke/js/jquery.flexslider.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/flexslider.css" type="text/css" media="screen" />
    <script>
        // Can also be used with $(document).ready()
        $(window).load(function() {
            $('.flexslider').flexslider({
                animation: "slide",
                controlNav: "thumbnails"
            });
        });
    </script>
    <!-- //FlexSlider-->
    <!-- pop-up -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/swipebox.css">
    <script src="${pageContext.request.contextPath}/user/ke/js/jquery.swipebox.min.js"></script>
    <script type="text/javascript">
        jQuery(function($) {
            $(".swipebox").swipebox();
        });
    </script>

    <!-- pop-up -->

</head>
<body>

<!---header--->
<div class="header-section">
    <div class="container">
        <div class="head-top">
            <div class="social-icon">
                <a href="#"><i class="icon"></i></a>
                <a href="#"><i class="icon1"></i></a>
                <a href="#"><i class="icon2"></i></a>
                <a href="#"><i class="icon3"></i></a>
                <a href="#"><i class="icon4"></i></a>
            </div>
            <div class="email">
                <ul>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email: <a href="mailto:info@example.com">info@example.com</a> </li>
                    <li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a href="#" data-toggle="modal" data-target="#myModal">Login</a></li>
                    <li><i class="glyphicon glyphicon-lock" aria-hidden="true"></i><a href="#" data-toggle="modal" data-target="#myModal1">Register</a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <nav class="navbar navbar-default">
            <!---Brand and toggle get grouped for better mobile display--->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="navbar-brand">
                    <h1><a href="index.html"><span>Real </span>Space</a></h1>
                </div>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="index.html">Home <span class="sr-only">(current)</span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="about.html">About</a></li>
                            <li><a href="services.html">Services</a></li>
                            <li><a href="agents.html">Agents</a></li>
                            <li><a href="forrent.html">For Rent</a></li>
                            <li><a href="forsale.html">For Sale</a></li>
                            <li><a href="pricing.html">Pricing</a></li>
                            <li><a href="faqs.html">FAQs</a></li>
                            <li><a href="idxpress.html">IDXpress</a></li>
                            <li><a href="terms.html">Terms of Use</a></li>
                            <li><a href="privacy.html">Privacy Policy</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Property<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="defaultvariation.html">Default – Variation</a></li>
                            <li><a href="agentinsidebarvariation.html">Agent in Sidebar - Variation</a></li>
                            <li><a href="galleryvariation.html">Gallery - Variation</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Gallery <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="2columnsgallery.html">2 Columns Gallery</a></li>
                            <li><a href="3columnsgallery.html">3 Columns Gallery</a></li>
                            <li><a href="4columnsgallery.html">4 Columns Gallery</a></li>
                        </ul>
                    </li>
                    <li><a href="blog.html">Blog</a></li>
                    <li><a href="codes.html">Codes</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
                <div class="phone">
                    <span><i class="glyphicon glyphicon-phone" aria-hidden="true"></i>1-999-4563-555</span>
                </div>
                <div class="clearfix"></div>
            </div>
        </nav>
    </div>
</div>
<!---header--->
<!---banner--->
<div class="banner-section">
    <div class="container">
        <h2>Blog post</h2>
    </div>
</div>
<!---banner--->
<div class="content">

    <div class="blog-section">

        <div class="grid_3 grid_5 container">
            <div class="btn-group"  style="width:100%;margin-bottom:5px;">
                <button type="button" class="btn btn-default btn-lg btn-warning" style="width:20%">楼盘详情</button>
                <button type="button" class="btn btn-default btn-lg btn-warning" style="width:20%">咨询师评论</button>
                <button type="button" class="btn btn-default btn-lg btn-warning" style="width:20%">好评</button>
                <button type="button" class="btn btn-default btn-lg btn-warning" style="width:20%">中评</button>
                <button type="button" class="btn btn-default btn-lg btn-warning" style="width:20%">差评</button>
            </div>

        </div>
        <div class="container">
            <div class="blog-grids">
                <div class="col-md-9 blog-grid">

                    <!---RESPONSES--->
                    <div class="coment-form">
                        <div class="blog">
                            <h3><a href="single.html">News From Nintendo</a></h3>
                            <p>January 05, 2016 / <a href="#">John Doe</a> / <a href="#">Uncategorized</a> / <a href="#">0 Comments</a></p>
                            <a href="single.html"><img src="images/b.jpg" class="img-responsive" alt=""></a>
                            <p>Tart donut gummi bears unerdwear.com tootsie roll chocolate bar gummi bears bear claw. Apple pie tart chocolate cake jelly beans. Unerdwear.com dragée sweet muffin icing macaroon. Jelly marzipan toffee cotton candy sweet roll. Jelly croissant jujubes carrot cake marshmallow donut biscuit wafer marzipan. Muffin pastry jujubes donut pastry chocolate bar cake candy chocolate. Dessert donut</p>
                            <a href="single.html" class="button5 hvr-shutter-out-horizontal">Read More</a>
                        </div>
                        <div class="container">


                            <div class="grid_3 grid_5">
                                <p style="font-size:24px;margin-bottom:5px;">所有评论<span class="badge badge-info" style="font-size:12px">44</span></p>
                                <div class="btn-group"  style="width:70%;margin-bottom:5px;">
                                    <button type="button" class="btn btn-default btn-lg btn-warning" style="width:20%">用户评论</button>
                                    <button type="button" class="btn btn-default btn-lg btn-warning" style="width:20%">咨询师评论</button>
                                    <button type="button" class="btn btn-default btn-lg btn-warning" style="width:20%">好评</button>
                                    <button type="button" class="btn btn-default btn-lg btn-warning" style="width:20%">中评</button>
                                    <button type="button" class="btn btn-default btn-lg btn-warning" style="width:20%">差评</button>
                                </div>
                                <div class="alert alert-success" style="font-size:14px;width:70%;height:150px;">
                                    <img src="images/a2.jpg" alt="头像" class="img-circle" width="100px" height="100px"/>
                                    <p style="margin-top:3px;margin-left:20px;"><span class="glyphicon glyphicon-user">张翠山</span><p>
                                    <p class="" style="font-size:16px;padding-left:120px;margin-top:-125px;">这个楼不错，就是我买不起啦~~~~~就是我买不起啦~~~~~就是我买不起啦~~~~~</p>
                                    <p class="glyphicon glyphicon-thumbs-up" style="margin-top:30px;margin-left:130px;">2018-05-31 12:22:22</p><span class="glyphicon glyphicon-thumbs-up" style="margin-left:53%;">点赞</span>
                                </div>

                                <div class="alert alert-info" style="font-size:14px;width:70%;height:150px;">
                                    <img src="images/a2.jpg" alt="头像" class="img-circle" width="100px" height="100px"/>
                                    <p style="margin-top:3px;margin-left:20px;"><span class="glyphicon glyphicon-user">张翠山</span><p>
                                    <p class="" style="font-size:16px;padding-left:120px;margin-top:-125px;">这个楼不错，就是我买不起啦~~~~~就是我买不起啦~~~~~就是我买不起啦~~~~~</p>
                                    <p class="glyphicon glyphicon-hand-right" style="margin-top:30px;margin-left:130px;">2018-05-31 12:22:22</p><span class="glyphicon glyphicon-thumbs-up" style="margin-left:53%;">点赞</span>

                                </div>
                                <div class="alert alert-warning"style="font-size:14px;width:70%;height:150px;">
                                    <img src="images/a2.jpg" alt="头像" class="img-circle" width="100px" height="100px"/>
                                    <p style="margin-top:3px;margin-left:20px;"><span class="glyphicon glyphicon-user">张翠山</span><p>
                                    <p class="" style="font-size:16px;padding-left:120px;margin-top:-125px;">这个楼不错，就是我买不起啦~~~~~就是我买不起啦~~~~~就是我买不起啦~~~~~</p>
                                    <p class="glyphicon glyphicon-thumbs-down" style="margin-top:30px;margin-left:130px;">2018-05-31 12:22:22</p><span class="glyphicon glyphicon-thumbs-up" style="margin-left:53%;">点赞</span>

                                </div>
                                <div class="alert alert-warning"style="font-size:14px;width:70%;height:200px;">
                                    <img src="images/a2.jpg" alt="头像" class="img-circle" width="100px" height="100px"/>
                                    <p style="margin-top:3px;margin-left:20px;"><span class="glyphicon glyphicon-user">张翠山</span><p >已有<span style="color:red">234</span>人向他咨询<span class="glyphicon glyphicon-thumbs-up" style="margin-left:70%;">向TA咨询</span></p><p>
                                    <p class="" style="font-size:16px;margin-left:120px;margin-top:-170px;">这个楼不错，就是我买不起啦~~~~~就是我买不起啦~~~~~就是我买不起啦~~~~~</p>
                                    <p class="glyphicon glyphicon-thumbs-down" style="margin-top:40px;margin-left:130px;">2018-05-31 12:22:22</p><span class="glyphicon glyphicon-thumbs-up" style="margin-left:53%;">点赞</span>

                                </div>

                                <div class="col-md-offset-3">
                                    <nav>
                                        <ul class="pagination pagination-sm">
                                            <li><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                                            <li><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">...</a></li>
                                            <li><a href="#">6</a></li>
                                            <li><a href="#">7</a></li>
                                            <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                                        </ul>
                                    </nav>
                                </div>
                                <p style="font-size:24px">留下你的评论吧~~~</p>
                                <form method="post" action="#">
                                    <input type="hidden" name="id" value="1"/>
                                    <input type="hidden" name="idtype" value="用户"/>
                                    <input type="hidden"  name="buildingid" value="1"/>
                                    <input type="radio"  name="comtype" value="好评" class="radio-danger"><span class="badge badge-danger">好评</span></input>
                                    <input type="radio"  name="comtype" value="中评" class="radio-danger"><span class="badge badge-warning">中评</span></input>
                                    <input type="radio"  name="comtype" value="差评" class="radio-danger"><span class="badge badge-info">差评</span></input>
                                    <textarea type="text" name="comcontent" onfocus="this.value = '';" style="width:70%" onblur="if (this.value == '') {this.value = 'Your Comment...';}" required="">Your Comment...</textarea>
                                    <div class="tags" style="margin-top: 0px;"><ul><li><a href="javascript:subm()">Submit Comment</a></li></ul></div>
                                    <label style="position: relative;left: 140px;top:-50px;"><input type="checkbox" value="Sign me up for the newsletter">Sign me up for the newsletter</label>
                                </form>
                                <script>
                                    function subm() {
                                        var id=$("input[name='id']").val();
                                        var idtype=$("input[name='idtype']").val();
                                        var buildingid=$("input[name='buildingid']").val();
                                        var comtype=$("input[name='comtype']").val();
                                        var comcontent=$("input[name='comcontent']").val();
                                        if(confirm("要发表了奥~~")){
                                            $.ajax({
                                                type:"post",
                                                url:'${pageContext.request.contextPath}/comment/insertComment.action',
                                                data:"id="+id+"&idtype="+idtype+"&buildingid="+buildingid+"&comtype="+comtype+"&comcontent="+comcontent,
                                                success:function (data) {
                                                    alert(data);
                                                }
                                            });
                                        }
                                    }
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 blog-grid1">
                <div class="categ">
                    <h3>Categories</h3>
                    <ul>
                        <li><a href="#">Lorem ipsum dolor sit amet</a></li>
                        <li><a href="#">Duis aute irure dolor in culpa</a></li>
                        <li><a href="#">Sunt in culpa qui illum</a></li>
                        <li><a href="#">vel illum qui dolorem man</a></li>
                        <li><a href="#">The wise man therefore culpa</a></li>
                        <li><a href="#">Sunt in culpa qui officia</a></li>
                        <li><a href="#">Lorem ipsum dolor sit qui</a></li>
                        <li><a href="#">Duis aute irure dolor</a></li>
                        <li><a href="#">Sunt in culpa qui officia</a></li>

                    </ul>
                </div>
                <div class="tags">
                    <h4>Tags</h4>
                    <ul>
                        <li><a href="blog.html">Lorem</a></li>
                        <li><a href="blog.html">consectetur</a></li>
                        <li><a href="blog.html">dolore</a></li>
                        <li><a href="blog.html">aliqua</a></li>
                        <li><a href="blog.html">sit amet</a></li>
                        <li><a href="blog.html">ipsum</a></li>
                        <li><a href="blog.html">Lorem</a></li>
                        <li><a href="blog.html">consectetur</a></li>
                        <li><a href="blog.html">dolore</a></li>
                        <li><a href="blog.html">aliqua</a></li>
                        <li><a href="blog.html">sit amet</a></li>
                        <li><a href="blog.html">ipsum</a></li>
                    </ul>
                </div>
                <div class="feature">
                    <h4>Featured Properties</h4>
                    <div class="feature-top">
                        <img src="images/s4.jpg" class="img-responsive" alt="/">
                        <h5>60 Merrick Way, Miami</h5>
                        <p>Lorem ipsum dolor sit amet, consectetuer  elit,… <a href="#">Know More</a></p>
                    </div>
                    <div class="feature-top top2">
                        <img src="images/s3.jpg" class="img-responsive" alt="/">
                        <h5>Villa in Hialeah, Dade</h5>
                        <p>Lorem ipsum dolor sit amet, consectetuer  elit,… <a href="#">Know More</a></p>
                    </div>
                    <div class="feature-top top2">
                        <img src="images/s5.jpg" class="img-responsive" alt="/">
                        <h5>Villa in Hialeah, Dade</h5>
                        <p>Lorem ipsum dolor sit amet, consectetuer  elit,… <a href="#">Know More</a></p>
                    </div>
                    <div class="feature-top top2">
                        <img src="images/s6.jpg" class="img-responsive" alt="/">
                        <h5>60 Merrick Way, Miami</h5>
                        <p>Lorem ipsum dolor sit amet, consectetuer  elit,… <a href="#">Know More</a></p>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
</div>
<!---footer--->
<div class="footer-section">
    <div class="container">
        <div class="footer-grids">
            <div class="col-md-3 footer-grid">
                <h4>About Real Homes</h4>
                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
            </div>
            <div class="col-md-3 footer-grid">
                <h4>Recent Posts</h4>
                <ul>
                    <li><a href="#">Lorem Post With Image Format</a></li>
                    <li><a href="#">Example Video Blog Post</a></li>
                    <li><a href="#">Example Post With Gallery Post </a></li>
                    <li><a href="#">Example Video Blog Post</a></li>
                    <li><a href="#">Lorem Post With Image Format</a></li>
                    <li><a href="#">Example Video Blog Post</a></li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid">
                <h4>Useful links</h4>
                <ul>
                    <li><a href="terms.html">Terms of Use</a></li>
                    <li><a href="privacy.html">Privacy Policy</a></li>
                    <li><a href="contact.html">Contact Support </a></li>
                    <li><a href="agents.html"> All Agents</a></li>
                    <li><a href="blog.html">Blog</a></li>
                    <li><a href="faqs.html">FAQs</a></li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid">
                <h4>Get In Touch</h4>
                <p>8901 Marmora Road</p>
                <p>Glasgow, DO4 89GR.</p>
                <p>Freephone : +1 234 567 890</p>
                <p>Telephone : +1 234 567 890</p>
                <p>FAX : + 1 234 567 890</p>
                <p>E-mail : <a href="mailto:example@mail.com"> example@mail.com</a></p>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!---footer--->
<!--copy-->
<div class="copy-section">
    <div class="container">
        <p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
    </div>
</div>
<!--copy-->
<!-- login -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body real-spa">
                <div class="login-grids">
                    <div class="login">

                        <div class="login-right">
                            <form>
                                <h3>Login</h3>
                                <input type="text" value="Enter your Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your Email';}" required="">
                                <input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
                                <h4><a href="#">Forgot password</a> / <a href="#">Create new password</a></h4>
                                <div class="single-bottom">
                                    <input type="checkbox"  id="brand" value="">
                                    <label for="brand"><span></span>Remember Me.</label>
                                </div>
                                <input type="submit" value="Login Now" >
                            </form>
                        </div>

                    </div>
                    <p>By logging in you agree to our <a href="#">Terms</a> and <a href="#">Conditions</a> and <a href="#">Privacy Policy</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //login -->
<!-- Register -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body real-spa">
                <div class="login-grids">
                    <div class="login">
                        <div class="login-right">
                            <form>
                                <h3>Register </h3>
                                <input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
                                <input type="text" value="Mobile number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Mobile number';}" required="">
                                <input type="text" value="Email id" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email id';}" required="">
                                <input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">

                                <input type="submit" value="Register Now" >
                            </form>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <p>By logging in you agree to our <a href="#">Terms</a> and <a href="#">Conditions</a> and <a href="#">Privacy Policy</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //Register -->

</body>
</html>
