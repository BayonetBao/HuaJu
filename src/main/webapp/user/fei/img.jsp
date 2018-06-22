<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>Gallery</title>
<!---css--->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!---css--->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Real Space Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!---js--->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<!---js--->
<!---fonts-->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
<!---fonts-->
<!-- pop-up -->
<link rel="stylesheet" href="css/swipebox.css">
			<script src="js/jquery.swipebox.min.js"></script> 
			    <script type="text/javascript">
					jQuery(function($) {
						$(".swipebox").swipebox();
					});
				</script>
<style type="text/css">
	#divs{
		margin-top: 20px;
	}
</style>
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
							<li><i class="glyphicon glyphicon-phone" aria-hidden="true"></i>咨询热线：400-606-2695 </li>
							<c:if test="${not empty sessionScope.user}">
								<c:if test="${sessionScope.userType==1}">
									<li><i class="glyphicon glyphicon-user" aria-hidden="true"></i>普通用户&nbsp;&nbsp;&nbsp;<a style="color: #28ffef" href="">${user.uname}</a>&nbsp;&nbsp;&nbsp;&nbsp;<a  href="${pageContext.request.contextPath}/exit.action" ><i title="退出" class="glyphicon glyphicon-log-out" aria-hidden="true"></i></a></li>
								</c:if>
								<c:if test="${sessionScope.userType==2}">
									<li><i class="glyphicon glyphicon-user" aria-hidden="true"></i>开发商用户&nbsp;&nbsp;&nbsp;<a style="color: #28ffef" href="${pageContext.request.contextPath}/developer/index.jsp">${user.comuname}</a>&nbsp;&nbsp;&nbsp;&nbsp;<a  href="${pageContext.request.contextPath}/exit.action"><i title="退出" class="glyphicon glyphicon-log-out" aria-hidden="true"></i></a></li>
								</c:if>
								<c:if test="${sessionScope.userType==3}">
									<li><i class="glyphicon glyphicon-user" aria-hidden="true"></i>咨询师用户&nbsp;&nbsp;&nbsp;<a style="color: #28ffef" href="${pageContext.request.contextPath}/developer/index.jsp">${user.ctaname}</a>&nbsp;&nbsp;&nbsp;&nbsp;<a  href="${pageContext.request.contextPath}/exit.action"><i title="退出" class="glyphicon glyphicon-log-out" aria-hidden="true"></i></a></li>
								</c:if>

							</c:if>
							<c:if test="${empty sessionScope.user}">
								<li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a href="#" data-toggle="modal" data-target="#myModal">登录</a></li>
								<li><i class="glyphicon glyphicon-lock" aria-hidden="true"></i><a href="#" data-toggle="modal" data-target="#myModal1">注册</a></li>
							</c:if>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
				<nav class="navbar navbar-default">
					<!---Brand and toggle get grouped for better mobile display--->
					<div class="navbar-header">

						<div class="navbar-brand">
							<h1><a href="${pageContext.request.contextPath}/user/bao/index.jsp"><span>华&nbsp;&nbsp;&nbsp;&nbsp;居</span></a></h1>
						</div>

					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a href="${pageContext.request.contextPath}/user/bao/index.jsp">&nbsp;&nbsp;&nbsp;&nbsp;首&nbsp;页&nbsp;&nbsp;&nbsp;&nbsp;<span class="sr-only">(current)</span></a></li>
							<li class="dropdown">
								<a href="${pageContext.request.contextPath}/build/selectBuildQueryPojo.action">&nbsp;&nbsp;&nbsp;&nbsp;楼盘查询&nbsp;&nbsp;&nbsp;&nbsp;</a>

							</li>

							<li><a href="blog.html">&nbsp;&nbsp;&nbsp;&nbsp;咨询师&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
							<li><a href="contact.html">&nbsp;&nbsp;&nbsp;&nbsp;联系我们&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
							<!--  <li><a href="contact.html">&nbsp;&nbsp;&nbsp;&nbsp;团队介绍&nbsp;&nbsp;&nbsp;&nbsp;</a></li>-->
						</ul>

						<div class="clearfix"></div>
					</div>
				</nav>
			</div>
		</div>
		<div class="banner-section">
			<div class="container">
				<h2 style="font-family: 'Open Sans', sans-serif">楼&nbsp;盘&nbsp;图&nbsp;册</h2>
			</div>
		</div>
		<!---banner--->

		<div style="margin:10px auto;width:1140px;">
			位置 ：华居>楼盘详情>${build.building}<p/>
			<p style="margin-top:20px;">
				<b style="font-size:30px; color: #222">${build.building}
				</b>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<span style=" color:#0cf;border:solid #0CF 1px;padding:0px 8px; font-size:9px;">${build.conditions}</span>
				<c:if test="${not empty build.charactere}">
					<c:set var="character" value="${build.charactere}"></c:set>
					<c:set var="characters" value='${fn:split(character, ",")}'></c:set>
					<c:forEach items="${characters}" var="characterss">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<span style=" color:#0cf;border:solid #0CF 1px;padding:0px 8px; font-size:9px;">${characterss}</span>
					</c:forEach>
				</c:if>
			</p>
		</div>
		<nav class="navbar-default" style="background-color:#f8f8f8;overflow:auto; min-width:1125px;">

			<!-- Collect the nav links, forms, and other content for toggling -->

			<ul class="nav navbar-nav" style="float:none; margin:10px auto; width:1120px;">

				<li style="margin-right:57px; margin-left:16px;"><a style="color: #0b0b0b;" href="index.html">楼盘主页<span class="sr-only">(current)</span></a></li>
				<li style="margin-right:57px;"><a href="blog.html" style="color: #0b0b0b;">楼盘详情</a></li>
				<li style="margin-right:57px;"><a href="${pageContext.request.contextPath}/comment/selectAllCommentByQueryPojoFront.action?buildingid=${b.buildingid}" style="color: #0b0b0b;">楼盘评论</a></li>
				<li style="margin-right:57px;" class="active"><a href="codes.html" style="color: #0b0b0b;">户型</a></li>
				<li style="margin-right:57px;"><a href="${pageContext.request.contextPath}/dynamic/selectAllDynamicByBuild.action?${build.buildingid}" style="color: #0b0b0b;">楼盘动态</a></li>
				<li style="margin-right:57px;" ><a href="contact.html" style="color: #0b0b0b;">楼盘图册</a></li>
				<li style="margin-right:57px;"><a href="contact.html" style="color: #0b0b0b;">楼盘活动</a></li>
				<li><a href="${pageContext.request.contextPath}/build/buildAroundAnalysis.action?buildingid=${build.buildingid}" style="color: #0b0b0b;">楼盘周边</a></li>
			</ul>
		</nav>
		<!---header--->
		<!---banner--->
		<div class="banner-section">
			<div class="container">
				<h2>Gallery</h2>
			</div>
		</div>
		<!---banner--->
		<div class="content">
			<div class="gallery-section">
				<div class="container">
					<div class="gallery-grids">
						<p style="font-size: 20px;color:#F2F2F2">效果图</p>
						<hr />
						<c:forEach items="${graphs}" var="graphs">
						<div class="col-md-3 gallery-grid" id="divs">
						<a href="<%=basePath%>${graphs.graphuil}" class="swipebox"><span class="rollover1"> </span></a>
						<img src="<%=basePath%>${graphs.graphuil}" class="img-responsive" alt="/">
						</div>
						</c:forEach>
						
						<div class="clearfix"></div>
					</div>
					<div class="gallery-grids galry">
						<p style="font-size: 20px;color: #F2F2F2;">楼盘实景图</p>
						<hr />
						<c:forEach items="${buildimgs}" var="buildimgs">
						<div class="col-md-3 gallery-grid"id="divs">
						<a href="<%=basePath%>${buildimgs.buildimg}" class="swipebox"><span class="rollover1"> </span></a>
						<img src="<%=basePath%>${buildimgs.buildimg}" class="img-responsive" alt="/">
						</div>
						</c:forEach>
						<div class="clearfix"></div>
					</div>
					<div class="gallery-grids galry">
						<p style="font-size: 20px;color: #F2F2F2;">环境规划图</p>
						<hr />
						<c:forEach items="${arroundimgs}" var="arroundimgs">
						<div class="col-md-3 gallery-grid"id="divs">
						<a href="<%=basePath%>${arroundimgs.arrimg}" class="swipebox"><span class="rollover1"> </span></a>
						<img src="<%=basePath%>${arroundimgs.arrimg}" class="img-responsive" alt="/">
						</div>
						</c:forEach>
						
						<div class="clearfix"></div>
					</div>
					<div class="gallery-grids galry">
						<p style="font-size: 20px;color: #F2F2F2;">样板间</p>
						<hr />
						<c:forEach items="${protoTypeImgs}" var="protoTypeImgs">
						<div class="col-md-3 gallery-grid"id="divs">
						<a href="<%=basePath%>${protoTypeImgs.prototype}" class="swipebox"><span class="rollover1"> </span></a>
						<img src="<%=basePath%>${protoTypeImgs.prototype}" class="img-responsive" alt="/">
					</div>
					</c:forEach>

						<div class="clearfix"></div>
					</div>
					<div class="gallery-grids galry">
						<p style="font-size: 20px;color: #F2F2F2;">配套实景图</p>
						<hr />
						<c:forEach items="${environmentImgs}" var="environmentImgs">
						<div class="col-md-3 gallery-grid"id="divs">
						<a href="<%=basePath%>${environmentImgs.envirimg}" class="swipebox"><span class="rollover1"> </span></a>
						<img src="<%=basePath%>${environmentImgs.envirimg}" class="img-responsive" alt="/">
						</div>
						</c:forEach>
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