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
<%@ taglib  prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>动态时间轴</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/user/ke/css/history.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/user/ke/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/user/ke/js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/user/ke/js/jquery.easing.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/user/ke/js/history.js"></script>

</head>
<body style="overflow: hidden;margin-left: -230px;margin-top: -50px;">

<div id="arrow" >
	<ul >
		<li class="arrowup"></li>
		<li class="arrowdown"></li>
	</ul>
</div>

<div id="history" style="margin-left: 0px; padding-left: 0px;">

	<div class="title" >
		<h2>楼盘动态</h2>
		<div id="circle">
			<div class="cmsk"></div>
			<div class="circlecontent">
				<div thisyear="2018" class="timeblock">
					<span class="numf"></span>
					<span class="nums"></span>
					<span class="numt"></span>
					<span class="numfo"></span>
					<div class="clear"></div>
				</div>
				<div class="timeyear">YEAR</div>
			</div>
			<a href="#"  target="_blank" class="clock"></a>
		</div>
	</div>
	
	<div id="content">
		<ul class="list">
			<c:forEach items="${dynamics}" var="d">
				<li >
					<div class="liwrap">
						<div class="lileft">
							<div class="date">
							   <span class="year">${d.dytime.year+1900}</span>

								<span class="md">${d.dytime.month+1}
										${fn:substring(d.dytime,8,10)}</span>
							</div>
						</div>

						<div class="point"><b></b></div>

						<div class="liright">
							<div class="histt"><a href="http://www.777moban.com/list_35_1.html" style="font-size: 20px;" target="_blank">${d.dytitle}</a></div>
							<div class="hisct">${d.dcontent}</div>
						</div>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>
</div>
</body>
</html>