<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

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
<style type="text/css">
	.imgtest{
	margin:10px 5px;
	width:200px;
	float:left;
	overflow:hidden;}
	.list_ul figcaption p{
	font-size:12px;
	color:#aaa;
	}

.imgtest figure div {
	display: inline-block;
	margin: 5px auto;
	width: 100px;
	height: 100px;
	border-radius: 100px;
	border: 2px solid #fff;
	overflow: hidden;
	-webkit-box-shadow: 0 0 3px #ccc;
	box-shadow: 0 0 3px #ccc;
}

.imgtest img {
	width: 100%;
	min-height: 100%;
	text-align: center;
}

.userInfos{
	float:left;
	height:140px;
	width:600px;
}



</style>

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

	var scontent = $("content").val();
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
						<img class="img-responsive" src="${users.pic }"
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
								${users.usign} <a href="toInfo.action" class="tool"
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
						<form id="comment-form" class="form " method="post" action=""
							novalidate="novalidate" data-widget-cid="widget-0">
							<div class="form-group">
								<label class="control-label hidden" for="comment">内容</label>
								<div class="controls">
									<textarea id="scontent" class="form-control question_title"
										name="scontent" data-url="/sensitive/check/leave-message"
										data-widget-cid="widget-1" data-explain=""></textarea>
									<input name="user_id" value="${users.user_id }" type="hidden">
									<input name="receiveman" value="${users.user_id }"
										id="receiveman" type="hidden"> <input name="sendType"
										value="0" id="sendType" type="hidden">
									<div class="help-block"></div>
								</div>
							</div>
							<div class="">
								<input value="comment" type="hidden"> <a
									class="mlm emotion-expand-btn" id="showImg"
									href="javascript:void(0)"
									style="font-weight: normal; font-size: 12px;">插入表情</a>
								<div class="emotions mvm" id="showLook" style="display: none;">
									<img src="images/emotions/default/1.gif" alt="微笑" title="微笑"
										style="cursor: pointer;" data-code="[[微笑]]"> <img
										src="images/emotions/default/2.gif" alt="哈哈大笑" title="哈哈大笑"
										style="cursor: pointer;" data-code="[[哈哈大笑]]"> <img
										src="images/emotions/default/3.gif" alt="调皮" title="调皮"
										style="cursor: pointer;" data-code="[[调皮]]"> <img
										src="images/emotions/default/5.gif" alt="惊讶" title="惊讶"
										style="cursor: pointer;" data-code="[[惊讶]]"> <img
										src="images/emotions/default/6.gif" alt="惊恐" title="惊恐"
										style="cursor: pointer;" data-code="[[惊恐]]"> <img
										src="images/emotions/default/7.gif" alt="撇嘴" title="撇嘴"
										style="cursor: pointer;" data-code="[[撇嘴]]"> <img
										src="images/emotions/default/8.gif" alt="困" title="困"
										style="cursor: pointer;" data-code="[[困]]"> <img
										src="images/emotions/default/9.gif" alt="难过" title="难过"
										style="cursor: pointer;" data-code="[[难过]]"> <img
										src="images/emotions/default/10.gif" alt="委屈" title="委屈"
										style="cursor: pointer;" data-code="[[委屈]]"> <img
										src="images/emotions/default/11.gif" alt="生气" title="生气"
										style="cursor: pointer;" data-code="[[生气]]"> <img
										src="images/emotions/default/12.gif" alt="流泪" title="流泪"
										style="cursor: pointer;" data-code="[[流泪]]"> <img
										src="images/emotions/default/16.gif" alt="酷" title="酷"
										style="cursor: pointer;" data-code="[[酷]]"> <img
										src="images/emotions/default/18.gif" alt="抓狂" title="抓狂"
										style="cursor: pointer;" data-code="[[抓狂]]"> <img
										src="images/emotions/default/19.gif" alt="吐" title="吐"
										style="cursor: pointer;" data-code="[[吐]]"> <img
										src="images/emotions/default/20.gif" alt="偷笑" title="偷笑"
										style="cursor: pointer;" data-code="[[偷笑]]"> <img
										src="images/emotions/default/21.gif" alt="可爱" title="可爱"
										style="cursor: pointer;" data-code="[[可爱]]"> <img
										src="images/emotions/default/22.gif" alt="白眼" title="白眼"
										style="cursor: pointer;" data-code="[[白眼]]"> <img
										src="images/emotions/default/24.gif" alt="饥饿" title="饥饿"
										style="cursor: pointer;" data-code="[[饥饿]]"> <img
										src="images/emotions/default/27.gif" alt="流汗" title="流汗"
										style="cursor: pointer;" data-code="[[流汗]]"> <img
										src="images/emotions/default/28.gif" alt="憨笑" title="憨笑"
										style="cursor: pointer;" data-code="[[憨笑]]"> <img
										src="images/emotions/default/30.gif" alt="奋斗" title="奋斗"
										style="cursor: pointer;" data-code="[[奋斗]]"> <img
										src="images/emotions/default/31.gif" alt="咒骂" title="咒骂"
										style="cursor: pointer;" data-code="[[咒骂]]"> <img
										src="images/emotions/default/32.gif" alt="疑问" title="疑问"
										style="cursor: pointer;" data-code="[[疑问]]"> <img
										src="images/emotions/default/33.gif" alt="嘘" title="嘘"
										style="cursor: pointer;" data-code="[[嘘]]"> <img
										src="images/emotions/default/34.gif" alt="晕" title="晕"
										style="cursor: pointer;" data-code="[[晕]]"> <img
										src="images/emotions/default/35.gif" alt="抓狂" title="抓狂"
										style="cursor: pointer;" data-code="[[抓狂]]"> <img
										src="images/emotions/default/38.gif" alt="敲头" title="敲头"
										style="cursor: pointer;" data-code="[[敲头]]"> <img
										src="images/emotions/default/49.gif" alt="拥抱" title="拥抱"
										style="cursor: pointer;" data-code="[[拥抱]]"> <img
										src="images/emotions/default/76.gif" alt="强" title="强"
										style="cursor: pointer;" data-code="[[强]]"> <img
										src="images/emotions/default/77.gif" alt="弱" title="弱"
										style="cursor: pointer;" data-code="[[弱]]"> <img
										src="images/emotions/default/78.gif" alt="握手" title="握手"
										style="cursor: pointer;" data-code="[[握手]]"> <img
										src="images/emotions/default/96.gif" alt="冷汗" title="冷汗"
										style="cursor: pointer;" data-code="[[冷汗]]"> <img
										src="images/emotions/default/97.gif" alt="擦汗" title="擦汗"
										style="cursor: pointer;" data-code="[[擦汗]]"> <img
										src="images/emotions/default/98.gif" alt="抠鼻" title="抠鼻"
										style="cursor: pointer;" data-code="[[抠鼻]]"> <img
										src="images/emotions/default/99.gif" alt="鼓掌" title="鼓掌"
										style="cursor: pointer;" data-code="[[鼓掌]]"> <img
										src="images/emotions/default/100.gif" alt="糗大了" title="糗大了"
										style="cursor: pointer;" data-code="[[糗大了]]"> <img
										src="images/emotions/default/101.gif" alt="坏笑" title="坏笑"
										style="cursor: pointer;" data-code="[[坏笑]]"> <img
										src="images/emotions/default/104.gif" alt="哈欠" title="哈欠"
										style="cursor: pointer;" data-code="[[哈欠]]"> <img
										src="images/emotions/default/105.gif" alt="鄙视" title="鄙视"
										style="cursor: pointer;" data-code="[[鄙视]]"> <img
										src="images/emotions/default/107.gif" alt="快哭了" title="快哭了"
										style="cursor: pointer;" data-code="[[快哭了]]"> <img
										src="images/emotions/default/108.gif" alt="阴险" title="阴险"
										style="cursor: pointer;" data-code="[[阴险]]"> <img
										src="images/emotions/default/109.gif" alt="亲亲" title="亲亲"
										style="cursor: pointer;" data-code="[[亲亲]]"> <img
										src="images/emotions/default/110.gif" alt="吓" title="吓"
										style="cursor: pointer;" data-code="[[吓]]"> <img
										src="images/emotions/default/111.gif" alt="可怜" title="可怜"
										style="cursor: pointer;" data-code="[[可怜]]"> <img
										src="images/emotions/default/118.gif" alt="抱拳" title="抱拳"
										style="cursor: pointer;" data-code="[[抱拳]]"> <img
										src="images/emotions/default/124.gif" alt="OK" title="OK"
										style="cursor: pointer;" data-code="[[OK]]"> <img
										src="images/emotions/default/202.gif" alt="色" title="色"
										style="cursor: pointer;" data-code="[[色]]"> <img
										src="images/emotions/default/203.gif" alt="发呆" title="发呆"
										style="cursor: pointer;" data-code="[[发呆]]"> <img
										src="images/emotions/default/204.gif" alt="得意" title="得意"
										style="cursor: pointer;" data-code="[[得意]]"> <img
										src="images/emotions/default/206.gif" alt="害羞" title="害羞"
										style="cursor: pointer;" data-code="[[害羞]]"> <img
										src="images/emotions/default/207.gif" alt="闭嘴" title="闭嘴"
										style="cursor: pointer;" data-code="[[闭嘴]]"> <img
										src="images/emotions/default/208.gif" alt="睡觉" title="睡觉"
										style="cursor: pointer;" data-code="[[睡觉]]"> <img
										src="images/emotions/default/209.gif" alt="大哭" title="大哭"
										style="cursor: pointer;" data-code="[[大哭]]"> <img
										src="images/emotions/default/210.gif" alt="尴尬" title="尴尬"
										style="cursor: pointer;" data-code="[[尴尬]]"> <img
										src="images/emotions/default/4.gif" alt="抛媚眼" title="抛媚眼"
										style="cursor: pointer;" data-code="[[抛媚眼]]">
								</div>
								<input id="comment-btns" class="btn btn-primary pull-right"
									type="button" value="留言">
							</div>
							<div class="hz-login-editor"></div>
						</form>
					</div>

					<ul class="clearfix" id="commentList">

					</ul>
				</div>
			</div>
			<aside class="col-md-3">
				<div class="person-count">
					<ul class="clearfix">
						<li><a class="count" href="javaScript:void(0)"
							id="teachCount">0</a><span>在教</span></li>
						<li class="line"></li>
						<li><a class="count" href="javaScript:void(0)"
							id="courseCount"></a><span>课程</span></li>
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
						<a href="toInfo.action">编辑个人资料<i class="fa fa-angle-right"></i></a>
					</div>
				</div>

				<div class="flat person-learner">
					<h3>
						好友<span class="count"></span>
					</h3>
					<a class="first active" href="javaScript:void(0)"
						id="attentionCount">关注</a> <a href="javaScript:void(0)"
						class="pull-right" id="fansCount">粉丝（1）</a>

					<div class="person-student">
						<ul class="clearfix" id="home-attent" style="display: block;">

						</ul>

					</div>
				</div>
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
							data-card-url="/user/2358982/card/show"
							data-user-id="${users.user_id}"> <img class="avatar-md"
							src="images/avatar.png" alt="${users.user_name}">
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
								data-card-url="/user/2358982/card/show"
								data-user-id="${users.user_id}"> <img class="avatar-md"
								src="images/avatar.png" alt="${users.user_name}"
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
