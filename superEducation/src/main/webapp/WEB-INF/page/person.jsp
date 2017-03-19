<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"  %>

<!DOCTYPE html>
<html class="">
<head>
<base href="/superEducation/" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<title>首页 - ${users.user_name}的个人主页 - 好知网</title>
<link
	href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico"
	rel="shortcut icon">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/howzhi.css">
<link rel="stylesheet" type="text/css" href="css/swiper.css">
<link href="css/smohan.face.css" type="text/css" rel="stylesheet">
<link href="js/assets/css/font-awesome.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/swiper-3.3.1.min.js"></script>
<script type="text/javascript" src="js/smohan.face.js" charset="utf-8"></script>
<script type="text/javascript" src="js/page.js"></script>
<script type="text/javascript" src="js/top.js"></script>
<script type="text/javascript" src="js/person.js"></script>
<script type="text/javascript">
	$(function() {

		$(".nav-hover").bind("mouseover", function() {
			$(".dropdown-menu")[0].style.display = "block";
		});
		$(".nav-hover").bind("mouseout", function() {
			$(".dropdown-menu")[0].style.display = "none";
		});
		$(".choose").bind("mouseover", function() {
			$("#text-center")[0].style.display = "block";
		});
		$(".choose").bind("mouseout", function() {
			$("#text-center")[0].style.display = "none";
		});
		$("#text-center").bind("mouseover", function() {
			$("#text-center")[0].style.display = "block";
		});
		$("#text-center").bind("mouseout", function() {
			$("#text-center")[0].style.display = "none";
		});
	});
	

	var user_id = '${users.user_id}';
	
</script>
</head>

<body class="index">
	<!-- 头部 -------------------------------------------------------------------  -->
	<jsp:include page="topb.jsp"></jsp:include>
	<!-- 头部 -------------------------------------------------------------------  -->


	<section class="m-home">
		<div class="container">
			<!-- 显示用户的头像  个性签名   ----------------------------------------------->
			<div class="userImg">
				<div id="personImg">
					<a class=" js-user-card" href="javaSscript:void(0)"
						data-card-url="/user/2358982/card/show"
						data-user-id="${users.user_id}" data-original-title="" title="">
						<img class="img-responsive" src="images/avatar.png"
						alt="${users.user_name}">
					</a>
				</div>


				<div class="user-info">
					<a class="user-name" id="personname">${users.user_name}</a>
					<c:choose>
						<c:when test="${users.usign==null}">
							<p>
								“TA还未设置签名哦” <a href="toInfo.action" class="tool"
									style="display: block;"> <i style="color: #666;"
									class="glyphicon glyphicon-edit" title="" data-toggle="tooltip"
									data-placement="top" data-original-title="编辑"></i>
								</a>
						</c:when>
						<c:otherwise>
							<p>
								“${users.usign}” <a href="toInfo.action" class="tool"
									style="display: block;"> <i style="color: #666;"
									class="glyphicon glyphicon-edit" title="" data-toggle="tooltip"
									data-placement="top" data-original-title="编辑"></i>
								</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			<!-- --------显示用户的头像  个性签名 ---------------------------------------------------------------->
		</div>
	</section>

	<nav class="home-nav">
		<div class="container">
			<ul class="nav nav-mian" id="nav-mian">
				<li class=" active "><a href="toPerson.action">首页</a></li>
				<li class=""><a href="javaScript:void(0);" id="studying">在学</a></li>
				<li class=""><a href="javaScript:void(0);" id="teaching">在教</a></li>
				<li class=""><a href="javaScript:void(0);" id="group">小组</a></li>
				<li class=""><a href="javaScript:showanswer()" id="answer">回答</a></li>
				<li class=""><a href="javaScript:showquestion()" id="question">问题</a></li>
				<li class=""><a href="javaScript:void(0);" id="notes">笔记</a></li>
				<li class=""><a href="javaScript:void(0);">留言</a></li>
			</ul>
		</div>
	</nav>

	<section class="container home">
		<div class="row">
			<div class="col-md-9" id="replaceable">
				<!-- 课程信息 -->
				<div class="course flat nopad">
					<div class="section-header">
						<h2>
							课程<span class="count"></span><a href="javaScript:void(0);"
								class="pull-right last-icon"><i class="fa fa-ellipsis-h"></i></a>
						</h2>

					</div>
					<div class="section-body">
						<div class="row" id="course-item">
							<!--   根据用户id去查用户的课程------------------------------------------------------------------->
							
						</div>
					</div>
				</div>

				<div class="notes flat">
					<div class="section-header">
						<h2>
							笔记<a href="javaScript:void(0);" class="pull-right last-icon"><i
								class="fa fa-ellipsis-h"></i></a>
						</h2>
					</div>
					
					<div id="personNote">
					<!--  笔记的具体信息-->
					</div>
					
				</div>

				<div class="course-question flat">
					<h2>留言</h2>
					<div class="person-comment">
						<div id="Smohan_FaceBox">
						<textarea name="text" id="Smohan_text" class="smohan_text"></textarea>
						<p>
							<a href="javascript:void(0)" class="face" title="表情"></a>
							<button class="btn btn-primary pull-right" id="comment-btn"
								type="button">发布</button>
						</p>
					</div>

						<ul class="clearfix" id="commentList">
							<!--  回复--------------------------------------------------------  -->
							<li id="item92705">
								<div class="userimg">
									<a class=" js-user-card" href="javaScript:void(0)"
										data-card-url="/user/2358982/card/show" data-user-id="2358982">
										<img class="img-responsive" src="images/avatar.png" alt="珘珘">
									</a>

								</div>
								<div class="userInfo">
									<p class="head">
										<a href="javaScript:void(0)">珘珘</a><span>1天前</span>
									</p>
									<div class="body">
										4traytry<img src="images/2.gif" title="哈哈大笑" alt="哈哈大笑">
									</div>
									<div class="pull-right  ">
										<a class="con" href="javascript:;" data-role="revert"
											data-url="/comment/92705/post" data-revertto="珘珘">回复</a> <a
											class="con" href="javascript:;" data-role="delete"
											data-target="item92705" data-url="/comment/92705/delete">删除</a>
									</div>
								</div>
							</li>
							<!--  ---回复-------------------------------------------------------------   -->
						</ul>
					</div>
				</div>

			</div>
			<aside class="col-md-3">
				<div class="person-count">
					<ul class="clearfix">
						<li><a class="count" href="javaScript:void(0)" id="teachCount">0</a><span>在教</span></li>
						<li class="line"></li>
						<li><a class="count" href="javaScript:void(0)" id="courseCount"></a><span>课程</span></li>
						<li class="line"></li>
						<li><a class="count" href="javaScript:void(0)" id="noteCount"></a><span>笔记</span></li>
						<li class="line"></li>
						<li><a class="count" href="javaScript:void(0)" id="">0</a><span>回答</span></li>
					</ul>
				</div>
				<!-- ---------------从数据库里面查出来的用户信息-------------------------------------------------------------------  -->
				<div class="person-info flat">
					<ul>
						<li><span class="first">昵称：</span><span>${users.user_name}</span></li>
						<li><span class="first">等级：</span><a
							href="javaScript:void(0)">1</a></li>
						<li><span class="first">简介：</span><span class="content">${users.introduce}</span></li>
					</ul>
					<div class="more">
						<a href="toInfo.action">编辑个人资料<i
							class="fa fa-angle-right"></i></a>
					</div>
				</div>

				<div class="flat person-learner">
					<h3>
						好友<span class="count"></span>
					</h3>
					<a class="first active" href="javaScript:void(0)" id="attentionCount"></a><a
						href="javaScript:void(0)" class="pull-right" id="fansCount">粉丝（1）</a>
					<div class="person-student">
						<ul class="clearfix" id="home-attent" style="display: block;">
						<!-- 显示关注的人的信息 -->
						</ul>
						
					</div>
				</div>

				<!-- <div class="flat person-visitor">
					<h3>
						最新来访<span class="count"></span>
					</h3>
					<div class="empty">暂无访客！</div>
				</div> -->

			</aside>
		</div>
	</section>

	<!-- 尾部 ---------------------------------------------------------- -->


	<!-- 学员信息--------------------------------------------------------------------------- -->
	<div id="user-card-store" class="hidden">
		<div id="user-card-2358982" class="js-card-content"
			data-user-id="${users.user_id}">
			<div class="card-header media-middle">
				<div class="media">
					<div class="media-left">
						<a class=" " href="http://www.howzhi.com/u/2358982/"
							data-card-url="/user/2358982/card/show" data-user-id="${users.user_id}">
							<img class="avatar-md" src="images/avatar.png" alt="${users.user_name}">
						</a>

					</div>
					<div class="media-body">
						<div class="title">
							<a class="link-light " href="http://www.howzhi.com/u/2358982/"></a>

						</div>
						<div class="content"></div>
					</div>
				</div>
			</div>
			<div class="card-body">还没有签名</div>

			<div class="card-footer clearfix ">

				<span><a class="link-light"
					href="http://www.howzhi.com/u/2358982/library">1<br>在学
				</a></span> <span><a class="link-light"
					href="http://www.howzhi.com/u/2358982/following">1<br>关注
				</a></span> <span><a class="link-light"
					href="http://www.howzhi.com/u/2358982/fans">1<br>粉丝
				</a></span>
			</div>

		</div>
	</div>
	
	<div class="popover es-card fade bottom in"
		style="top: 237px; left: 509px; display: block;">
		<!--<div class="arrow"></div>-->

		<div class="popover-content" style="display: none">
			<div id="user-card-2358982" class="js-card-content"
				data-user-id="${users.user_id}">
				<div class="card-header media-middle">
					<div class="media">
						<div class="media-left">
							<a class=" " href="http://www.howzhi.com/u/2358982/"
								data-card-url="/user/2358982/card/show" data-user-id="${users.user_id}">
								<img class="avatar-md" src="images/avatar.png" alt="${users.user_name}"
								style="width: 60px; height: 60px;">
							</a>

						</div>
						<div class="media-body">
							<div class="title">
								<a class="link-light " href="http://www.howzhi.com/u/2358982/">${users.user_name}</a>
							</div>
							<div class="content"></div>
						</div>
					</div>
				</div>
				<div class="card-body">还没有签名</div>

				<div class="card-footer clearfix ">

					<span><a class="link-light"
						href="http://www.howzhi.com/u/2358982/library">1<br>在学
					</a></span> <span><a class="link-light"
						href="http://www.howzhi.com/u/2358982/following">${count }<br>关注
					</a></span> <span><a class="link-light"
						href="http://www.howzhi.com/u/2358982/fans">1<br>粉丝
					</a></span>
				</div>

			</div>
		</div>

	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
