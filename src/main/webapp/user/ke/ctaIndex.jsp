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
	<script type="text/javascript" src="${pageContext.request.contextPath}/developer/My97DatePicker/WdatePicker.js"></script>
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
		<p class="profile-description">${cta.school}${cta.education} <p>${cta.charactere}</p></p>
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
						<h4 class="widget-title">>>主要楼盘</h4>
						<c:forEach items="${builds}" var="b" varStatus="s">
						<div>
							<img src="${pageContext.request.contextPath}/${b.bpicture}" height="250px;" width="100%" alt="/">
						</div>
						<p> ${s.index+1}.<a rel="nofollow" href="${pageContext.request.contextPath}/build/buildIndex.action?buildingid=${b.buildingid}">${b.building}</a> : <span class="blue">${b.province}${b.city}${b.barea}${b.bdetail}.</span><span class="green">单价：均${b.bperprice}/㎡.</span> 总价：${b.btotalprice}-${b.bmaxtotalprice}万元 . ${b.advice}</p>
						<hr>
						</c:forEach>
					</div>
				</div> <!-- #about -->
			</div>

			<!-- PROJECTS -->
			<div class="page-section" id="projects">

				<div class="row">
					<div class="col-md-12">
						<h4 class="widget-title">最近点评</h4>
					</div>
				</div>

				<div class="row">
					<c:forEach items="${comments}" var="c" varStatus="s">
						<c:if test="${s.index lt 6}">
					<div class="col-md-4 col-sm-6">
						<div class="project-item">
							<p>${c.building}>>${c.comtype}</p>
							<img src="${pageContext.request.contextPath}/${c.bpicture}" alt="">
							<div class="project-hover">
								<div class="inside">
									<h5><a href="#">${c.comtype}</a></h5>
									<p>${s.index+1}>><a href="${pageContext.request.contextPath}/build/buildIndex.action?buildingid=${c.buildingid}">${c.building}>></a>
										${c.comcontent}<p><fmt:formatDate value="${c.comtime}" pattern="yyyy-MM-dd hh:mm:ss"/> </p>
									</p></div>
							</div>
						</div>
					</div>
						</c:if>
					</c:forEach>
				</div> <!-- .projects-holder -->
			</div>
			<hr>

			<!-- CONTACT -->
			<div class="page-section" id="contact">
				<div class="row">
					<div class="col-md-12">
						<h4 class="widget-title">联系我>><a href="http://wpa.qq.com/msgrd?v=3&uin=${cta.qq}&site=qq&menu=yes">在线咨询</a></h4>
					<hr/>
					</div>
				</div>
				<div class="row">
					<form action="#" method="post" class="contact-form">
						<fieldset class="col-md-2 col-sm-6">
							<input type="text" id="urealname" placeholder="你的名字.">
						</fieldset>
						<fieldset class="col-md-2 col-sm-6">
							<input type="text" id="apphone" placeholder="你的电话">
						</fieldset>
						<fieldset class="col-md-2 col-sm-12">
							<select id="sex" style="width: 100%;height: 45px;border:lightslategray 1px solid;">
								<option value="男士">男士</option>
								<option value="女士">女士</option>
							</select>
						</fieldset>
						<fieldset class="col-md-3 col-sm-6">
							<input id="apptime" name="apptime" placeholder="预约时间" value="" class="Wdate"  style="width:100%;height: 45px;" type="text" onclick="WdatePicker({dateFmt:'yyyy-M-d H:mm:ss',minDate:'%y-%M-{%d} 00:00:00'})"/>
						</fieldset>
						<fieldset class="col-md-3 col-sm-12">
							<select id="buildingid" style="width: 100%;height: 45px;border:lightslategray 1px solid;">
								<option value="">请选择..</option>
								<c:forEach items="${builds}" var="ctaBuild">
									<option value="${ctaBuild.buildingid}">${ctaBuild.building}</option>
								</c:forEach>
							</select>
						</fieldset>
						<fieldset class="col-md-12 col-sm-12">
							<textarea name="appnote" id="appnote" cols="30" rows="6" placeholder="你的备注（非必填）..."></textarea>
						</fieldset>
						<fieldset class="col-md-12 col-sm-12">
							<input type="button" class="button big default" onclick="appointSub()" value="预约咨询">
						</fieldset>
					</form>
					<script>
						function appointSub() {
						    if(${!(sessionScope.userType eq 1)}){
						        alert("只有用户可以预约呦~");
							}else{
                            if (confirm("确认预约么")) {
                            var urealname = $("#urealname");
                            var apphone = $("#apphone");
                            var buildingid = $("#buildingid");
                            var sex = $("#sex");
                            var appnote = $("#appnote");
                            var apptime=$("#apptime");
                            $.ajax({
								type:"post",
								url:"${pageContext.request.contextPath}/appointment/insertAppointment.action",
								data:"urealname="+urealname.val()+"&apphone="+apphone.val()+"&buildingid="+buildingid.val()+"&sex="+sex.val()+"&appnote="+appnote.val()+"&apptime="+apptime.val(),
								success:function (data) {
                                    alert("亲爱的"+urealname.val()+",你已经预约咨询师${cta.ctarelname},时间为"+apptime.val());
                                    urealname.val("");
                                    apphone.val("");
                                    appnote.val("");
                                    buildingid.val("");
                                    apptime.val("");
                                }
							});
                        }
							}
                        }
					</script>
				</div> <!-- .contact-form -->
			</div>
			<hr>

			<div class="row" id="footer">
				<div class="col-md-12 text-center">
					<p class="copyright-text">这个不合适？ | 更多>> <a href="" target="_blank" title="全部咨询师">全部咨询师</a>-->前去查看 <a href="" title="all" target="_blank">点我</a></p>
				</div>
			</div>

		</div>

	</div>
</div>
</body>
</html>