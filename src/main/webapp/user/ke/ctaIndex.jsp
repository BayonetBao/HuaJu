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
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>咨询师详情</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="${pageContext.request.contextPath}/user/ke/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/user/ke/js/plugins.min.js"></script>
	<script src="${pageContext.request.contextPath}/user/ke/js/main.min.js"></script>
	<script src="${pageContext.request.contextPath}/user/ke/js/bootstrap.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/normalize.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/font-awesome.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/user/ke/css/templatemo-style.css">
	<script src="${pageContext.request.contextPath}/user/ke/js/modernizr-2.6.2.min.js"></script>
</head>
<body>
<!--[if lt IE 7]>
<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<div class="responsive-header visible-xs visible-sm">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="top-section">
					<div class="profile-image">
						<img src="${pageContext.request.contextPath}/${cta.ctaimg}" alt="/">
					</div>
					<div class="profile-content">
						<h3 class="profile-title">${cta.ctarelname}</h3>
						<p class="profile-description">${cta.intro}</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- SIDEBAR -->
<div class="sidebar-menu hidden-xs hidden-sm">
	<div class="top-section">
		<div class="profile-image">
			<img src="${pageContext.request.contextPath}/${cta.ctaimg}" alt="/">
		</div>
		<h3 class="profile-title">${cta.ctarelname}</h3>
		<p class="profile-description">${cta.education} ${cta.charactere}</p>
	</div> <!-- top-section -->
	<div class="main-navigation">
		<ul class="navigation">
			<li><a href="#about"><i class="glyphicon glyphicon-triangle-right"></i>楼盘</a></li>
			<li><a href="#projects"><i class="glyphicon glyphicon-triangle-right"></i>点评</a></li>
			<li><a href="#contact"><i class="glyphicon glyphicon-triangle-right"></i>联系我</a></li>
		</ul>
	</div> <!-- .main-navigation -->
</div> <!-- .sidebar-menu -->
<div class="banner-bg" id="top">
	<div class="banner-overlay"></div>
	<div class="welcome-text">
		<h2>${cta.ctaname} | ${cta.ctaphone}</h2>
		<h5>${cta.intro}</h5>
	</div>
</div>

<!-- MAIN CONTENT -->
<div class="main-content">
	<div class="fluid-container">

		<div class="content-wrapper">

			<!-- ABOUT -->
			<div class="page-section" id="about">
				<div class="row">
					<div class="col-md-12">
						<h4 class="widget-title">Learn About Me</h4>
						<div class="about-image">
							<img src="${pageContext.request.contextPath}/user/ke/img/8.jpg" alt="about me">
						</div>
						<p>Volton is free <a rel="nofollow" href="http://www.templatemo.com/page/1">responsive mobile template</a> from <span class="blue">template</span><span class="green">mo</span> website. You can use this template for any purpose. Please tell your friends about it. Thank you. Credit goes to <a rel="nofollow" href="#">Unsplash</a> for images used in this design. You can <strong>change menu icons</strong> by checking <a rel="nofollow" href="#/font-awesome-icon-world-map/">Font Awesome</a> (version 4). Example: <strong>&lt;i class=&quot;fa fa-camera&quot;&gt;&lt;/i&gt;</strong></p>
						<hr>
					</div>
				</div> <!-- #about -->
			</div>

			<!-- PROJECTS -->
			<div class="page-section" id="projects">
				<div class="row">
					<div class="col-md-12">
						<h4 class="widget-title">PHOTOS OF WHAT I DO</h4>
						<p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Maecenas et lorem molestie, maximus justo dignissim, cursus nisl. Nullam at ante quis ex pharetra pulvinar quis id dolor. Integer lorem odio, euismod ut sem sit amet, imperdiet condimentum diam.</p>
					</div>
				</div>
				<div class="row projects-holder">
					<div class="col-md-4 col-sm-6">
						<div class="project-item">
							<img src="img/1.jpg" alt="">
							<div class="project-hover">
								<div class="inside">
									<h5><a href="#">Pellentesque porta ligula</a></h5>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam cursus</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="project-item">
							<img src="img/2.jpg" alt="">
							<div class="project-hover">
								<div class="inside">
									<h5><a href="#">Pellentesque porta ligula</a></h5>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam cursus</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="project-item">
							<img src="img/3.jpg" alt="">
							<div class="project-hover">
								<div class="inside">
									<h5><a href="#">Pellentesque porta ligula</a></h5>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam cursus.</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="project-item">
							<img src="img/4.jpg" alt="">
							<div class="project-hover">
								<div class="inside">
									<h5><a href="#">Pellentesque porta ligula</a></h5>
									<p>Quisque mattis sit amet dolor eu scelerisque. Vivamus bibendum massa et nisl tempus commodo.</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="project-item">
							<img src="img/5.jpg" alt="">
							<div class="project-hover">
								<div class="inside">
									<h5><a href="#">Pellentesque porta ligula</a></h5>
									<p>Quisque mattis sit amet dolor eu scelerisque. Vivamus bibendum massa et nisl tempus commodo.</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="project-item">
							<img src="img/6.jpg" alt="">
							<div class="project-hover">
								<div class="inside">
									<h5><a href="#">Pellentesque porta ligula</a></h5>
									<p>Quisque mattis sit amet dolor eu scelerisque. Vivamus bibendum massa et nisl tempus commodo.</p>
								</div>
							</div>
						</div>
					</div>
				</div> <!-- .projects-holder -->
			</div>
			<hr>

			<!-- CONTACT -->
			<div class="page-section" id="contact">
				<div class="row">
					<div class="col-md-12">
						<h4 class="widget-title">PLACE TO TALK WITH ME</h4>
						<p>Vestibulum ac iaculis erat, in semper dolor. Maecenas et lorem molestie, maximus justo dignissim, cursus nisl. Nullam at ante quis ex pharetra pulvinar quis id dolor. Integer lorem odio, euismod ut sem sit amet, imperdiet condimentum diam.</p>
					</div>
				</div>
				<div class="row">
					<form action="#" method="post" class="contact-form">
						<fieldset class="col-md-4 col-sm-6">
							<input type="text" id="your-name" placeholder="Your Name...">
						</fieldset>
						<fieldset class="col-md-4 col-sm-6">
							<input type="email" id="email" placeholder="Your Email...">
						</fieldset>
						<fieldset class="col-md-4 col-sm-12">
							<input type="text" id="your-subject" placeholder="Subject...">
						</fieldset>
						<fieldset class="col-md-12 col-sm-12">
							<textarea name="message" id="message" cols="30" rows="6" placeholder="Leave your message..."></textarea>
						</fieldset>
						<fieldset class="col-md-12 col-sm-12">
							<input type="submit" class="button big default" value="Send Message">
						</fieldset>
					</form>
				</div> <!-- .contact-form -->
			</div>
			<hr>

			<div class="row" id="footer">
				<div class="col-md-12 text-center">
					<p class="copyright-text">Copyright &copy; 2084 Company Name | More Templates <a href="http://www.17sucai.com/" target="_blank" title="17素材网">17素材网</a> - Collect from <a href="http://www.17sucai.com/" title="网页模板" target="_blank">网页模板</a></p>
				</div>
			</div>

		</div>

	</div>
</div>
</body>
</html>