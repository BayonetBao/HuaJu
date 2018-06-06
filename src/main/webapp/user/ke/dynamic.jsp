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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>动态时间轴</title>
<link rel="stylesheet" type="text/css" href="css/history.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/user/ke/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/user/ke/js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/user/ke/js/jquery.easing.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/user/ke/js/history.js"></script>

</head>
<body>

<div id="arrow">
	<ul>
		<li class="arrowup"></li>
		<li class="arrowdown"></li>
	</ul>
</div>

<div id="history">

	<div class="title">
		<h2>楼盘动态</h2>
		<div id="circle">
			<div class="cmsk"></div>
			<div class="circlecontent">
				<div thisyear="2013" class="timeblock">
					<span class="numf"></span>
					<span class="nums"></span>
					<span class="numt"></span>
					<span class="numfo"></span>
					<div class="clear"></div>
				</div>
				<div class="timeyear">YEAR</div>
			</div>
			<a href="http://www.777moban.com/list_35_1.html"  target="_blank" class="clock"></a>
		</div>
	</div>
	
	<div id="content">
		<ul class="list">
			<li >
				<div class="liwrap">
					<div class="lileft">
						<div class="date">
							<span class="year">动态年份</span>
							<span class="md">动态月份加日期</span>
						</div>
					</div>
					
					<div class="point"><b></b></div>
					
					<div class="liright">
						<div class="histt"><a href="http://www.777moban.com/list_35_1.html" style="font-size: 20px;" target="_blank">动态标题</a></div>
						<div class="hisct">动态内容动态内容动态内容动态内容动态内容动态内容动态内容动态内容动态内容</div>
					</div>
				</div>
			</li>
			<li>
				<div class="liwrap">
					<div class="lileft">
						<div class="date">
							<span class="year">2013</span>
							<span class="md">0807</span>
						</div>
					</div>
					
					<div class="point"><b></b></div>
					
					<div class="liright">
						<div class="histt"><a href="http://www.777moban.com/list_35_1.html"  target="_blank">HTML5 CSS3 发展历程 发布</a></div>
						<div class="hisct">随着用户的访问量增大,功能不能满足需求，我们进行了重大更新，对设计和功能都进行大幅度的升级,增加了原创，欣赏版块</div>
					</div>
				</div>
			</li>
			<li>
				<div class="liwrap">
					<div class="lileft">
						<div class="date">
							<span class="year">2013</span>
							<span class="md">0528</span>
						</div>
					</div>
					
					<div class="point"><b></b></div>
					
					<div class="liright">
						<div class="histt"><a href="http://www.777moban.com/list_35_1.html"  target="_blank">官方微博</a></div>
						<div class="hisct">推出了HTML5 CSS3 官方微博</div>
					</div>
				</div>
			</li>
			<li>
				<div class="liwrap">
				
					<div class="lileft">
						<div class="date">
							<span class="year">2013</span>
							<span class="md">0524</span>
						</div>
					</div>
					
					<div class="point"><b></b></div>
					
					<div class="liright">
						<div class="histt"><a href="http://www.777moban.com/list_35_1.html"  target="_blank">HTML5 CSS3 发展历程 上线</a></div>
						<div class="hisct">虽然功能还未健全，但是我们已迫不及待的让它去接受广大用户的火眼金睛</div>
					</div>
				</div>
			</li>
			<li>
				<div class="liwrap">
					<div class="lileft">
						<div class="date">
							<span class="year">2013</span>
							<span class="md">0508</span>
						</div>
					</div>
					
					<div class="point"><b></b></div>
					
					<div class="liright">
						<div class="histt"><a href="http://www.777moban.com/list_35_1.html"  target="_blank">初期讨论</a></div>
						<div class="hisct">在集体探讨下，发现目前的HTML5 CSS3 发展历程已经不能满足需求，集体讨论=，这时候，韩老师之前的设计稿被端上了会议桌。</div>
					</div>
				</div>
			</li>
			<li>
				<div class="liwrap">
					<div class="lileft">
						<div class="date">
							<span class="year">2012</span>
							<span class="md">0701</span>
						</div>
					</div>
					
					<div class="point"><b></b></div>
					
					<div class="liright">
						<div class="histt"><a href="http://www.777moban.com/list_35_1.html"  target="_blank">灵感迸发</a></div>
						<div class="hisct">某天晚上的凌晨三点一刻，预想建立这样一个功能的网站，专为网页设计师。</div>
					</div>
				</div>
			</li>
			<li>
				<div class="liwrap">
				
					<div class="lileft">
						<div class="date">
							<span class="year">2012</span>
							<span class="md">0524</span>
						</div>
					</div>
					
					<div class="point"><b></b></div>
					
					<div class="liright">
						<div class="histt"><a href="http://www.777moban.com/list_35_1.html"  target="_blank">HTML5 CSS3 发展历程 上线</a></div>
						<div class="hisct">虽然功能还未健全，但是我们已迫不及待的让它去接受广大用户的火眼金睛</div>
					</div>
				</div>
			</li>
			<li>
				<div class="liwrap">
					<div class="lileft">
						<div class="date">
							<span class="year">2013</span>
							<span class="md">3月1日</span>
						</div>
					</div>
					
					<div class="point"><b></b></div>
					
					<div class="liright">
						<div class="histt"><a href="http://www.777moban.com/list_35_1.html"  target="_blank">初见成效</a></div>
						<div class="hisct">代码笔记第一版上线</div>
					</div>
				</div>
			</li>
		</ul>
	</div>
</div>
<div style="text-align:center;clear:both">
<p>以上为楼盘所有动态。。。。。。。</p>
<p>来源：<a href="http://777moban.com/" target="_blank">华居数据库</a></p>
</div>
</body>
</html>