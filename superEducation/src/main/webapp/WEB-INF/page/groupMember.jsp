<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%@page isELIgnored="false" %>

<html class="">
	
	<head>
		<base href="/superEducation/" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
		<meta name="renderer" content="webkit">
		<meta name="baidu-site-verification" content="XN2OVFQdUg">
		<title>
			小组成员 - 好知网 </title>
		<meta name="keywords" content="小组成员Photoshop照片后期处理学习交流">
		<meta name="description" content="小组成员,Photoshop照片后期处理学习交流">
		<meta content="736eccbce6174c855e0990d7f436738dd07b8a33" name="csrf-token">
		<meta content="0" name="is-login">
		<meta content="1" name="is-open">

		<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">

		<link href="css/bootstrap.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/howzhi.css">
		<link rel="stylesheet" type="text/css" href="css/main.css">
		
		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<script type="text/javascript" src="js/top.js"></script>
		<script type="text/javascript" src="js/groupsIntroduce.js"></script>
		<script type="text/javascript" src="js/groupsMember.js"></script>
	
	</head>

	<body class="group-page">
		<!--下面是头部-->
		
		<c:set value="${users}" var="us"/>
		<c:if test="${empty us}">
			<jsp:include page="topf.jsp"></jsp:include>
		</c:if>
		<c:if test="${us!=null }">
			<jsp:include page="topb.jsp"></jsp:include>
		</c:if>
	
		<div class="container" id="content-container">
			<ol class="breadcrumb breadcrumb-o" style="margin-top: -18px">
			<li><a href="page/index.jsp">首页</a></li>
			<li><a href="page/groups.jsp">小组频道</a></li>
			<li><a href="page/groupIntroduce.jsp" id="groupname"></a></li>
		</ol>
		<div class="group-header"
			style="background: url(http://f1.howzhi.com/group-icon/2013/02-17/2114262b3815751219.jpg); background-repeat: no-repeat; background-size: 100% 100%;">
			<div class="media">
				<div class="media-left">
					<a href="page/groupIntroduce.jsp"> <img src="images/111938a63532860008.jpg"
						alt="" class="avatar-square-md" id="img-groupname">
					</a>
				</div>
				<div class="media-body">
					<h2 class="media-heading" id="gname">
						
					</h2>
					<div class="media-metas" id="peoplecount"></div>
				</div>
			</div>
			<div class="image-overlay image-overlay-o"></div>
		</div>

			<div class="panel panel-default">
				<div class="panel-body">
					<ul class="nav nav-tabs" id="ul01">
						<!-- <li>
							<a href="http://www.howzhi.com/group/211/">小组首页</a>
						</li>
						<li class="active">
							<a href="http://www.howzhi.com/group/member/211">小组成员</a>
						</li>
						<li style="left: 104px; width: 104px; overflow: hidden;" class="highlight"></li> -->
					</ul>
					<h4 class="mtl">组长</h4>
					<div class="clearfix" id="getgroupleader">
						<!-- <div class="grouplist" style="width: 108px;" >
							<a class=" js-user-card" href="http://www.howzhi.com/u/187/" data-card-url="/user/187/card/show" data-user-id="187">
								<img class="avatar-sm" src="images/person03.jpg" alt="乱流">
								<span class="daren-icon" title="达人"></span>
							</a>
							<p class="text-center">
								<a class="link-light link-light" href="http://www.howzhi.com/u/187/">乱流</a>

							</p></div> -->
						
					</div>
					
					<form action="/group/member/delete/211" method="post" id="member-form" class="clearfix">
						<h4 class="mtl">组员</h4>
						<div id="groupMember"></div>
						
						<!-- <div class="grouplist" style="width: 108px;">
							<p>
								<a class=" js-user-card" href="http://www.howzhi.com/u/2358985/" data-card-url="/user/2358985/card/show" data-user-id="2358985">
									<img class="avatar-sm" src="images/person04.jpg" alt="The_free">
								</a>
							</p>
							<p class="text-center">
								<a class="link-light link-light" href="">The_free</a>
							</p>
							<br>
						</div>
						
						 -->
					</form>
					<nav class="text-center">
						<ul class="pagination ">
							<li class="active">
								<a href="http://www.howzhi.com/group/member/211?page=1">1</a>
							</li>
							<li>
								<a href="http://www.howzhi.com/group/member/211?page=2">2</a>
							</li>
							<li>
								<a href="http://www.howzhi.com/group/member/211?page=3">3</a>
							</li>
							<li>
								<a href="http://www.howzhi.com/group/member/211?page=4">4</a>
							</li>
							<li>
								<a href="http://www.howzhi.com/group/member/211?page=5">5</a>
							</li>

							<li>
								<a href="http://www.howzhi.com/group/member/211?page=2">>></a>
							</li>
							<li>
								<a href="http://www.howzhi.com/group/member/211?page=61">尾</a>
							</li>
						</ul>

					</nav>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</body>

</html>