
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- saved from url=(0056)http://www.howzhi.com/search?q=%E7%94%BB%E7%94%BB&t=user -->
<html class="">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<base href="/newhaozhiwang/" />
<title>搜索 -画画 好知网-重拾学习乐趣-Powered By Howzhi</title>
<meta name="keywords"
	content="免费教程 在线教育  在线学习  知识分享 教程 视频教程 视频教学  网络教学  自学教程 摄影教程 折纸教程 编程教程  电脑教程  健身教程  ps教程  公开课">
<meta name="description"
	content="好知网是一个综合性在线学习平台。这里有大量的在线课程，课程涵盖计算机知识，企业管理，摄影，photoshop，职业技能，运动、外语、美食，时尚，手工艺，公开课，职业资格考试等。">
<meta content="eddcc642cfa56a89ccfd3354288943d6b9a82008"
	name="csrf-token">
<meta content="0" name="is-login">
<meta content="1" name="is-open">
<link href="css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/howzhi.css">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script src="js/top.js"></script>


</head>
<body class="index">
	<c:set value="${users}" var="us" />
	<c:if test="${empty us }">
		<jsp:include page="topf.jsp"></jsp:include>
	</c:if>
	<c:if test="${us!=null }">
		<jsp:include page="topb.jsp"></jsp:include>
	</c:if>


	<div class="container" id="content-container">

		<section class="container flat" style="margin-top: 50px;">
			<div class="search col-md-9">
				<div class="toptip clearfix">
					<a
						href="http://www.howzhi.com/search?q=%E7%94%BB%E7%94%BB&amp;t=course">课程</a>

					<a
						href="http://www.howzhi.com/search?q=%E7%94%BB%E7%94%BB&amp;t=discussion">话题</a>
					<span class="active">用户</span> <a
						href="http://www.howzhi.com/search?q=%E7%94%BB%E7%94%BB&amp;t=group">小组</a>
				</div>
				<form class="search-form col-md-9">
					<input class="form-control search" type="text" name="q" value="画画">
					<input type="hidden" name="t" value="user">
					<button class="fa fa-search" type="submit"></button>
				</form>
				<ul class="list">
					
					<li class="item row">
						<div class="pull-left user-img">
							<a target="_blank" href="http://www.howzhi.com/u/1295086/"> <img
								class="img-responsive"
								src="images/avatar.png">
							</a>
						</div>
						<h2>
							[用户] <a target="_blank" href="http://www.howzhi.com/u/1295086/">画画花花</a>
							<span></span>
						</h2>
						<div class="mbs"></div>
					</li>
					<li class="item row">
						<div class="pull-left user-img">
							<a target="_blank" href="http://www.howzhi.com/u/1295661/"> <img
								class="img-responsive"
								src="images/avatar.png">
							</a>
						</div>
						<h2>
							[用户] <a target="_blank" href="http://www.howzhi.com/u/1295661/">为了学画画</a>
							<span></span>
						</h2>
						<div class="mbs"></div>
					</li>
				</ul>
				

			</div>
		</section>

	</div>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>