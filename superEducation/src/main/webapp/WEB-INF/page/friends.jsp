<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html class="">

<head>
<base href="/superEducation/"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<title>关注</title>

<link
	href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico"
	rel="shortcut icon">
<link href="css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/howzhi.css">

<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/show.js"></script>
<script type="text/javascript" src="js/top.js"></script>
<script type="text/javascript" src="js/learnCenter.js"></script> 

<style>
.cke {
	visibility: hidden;
}

.fri-img {
	float: left;
}

.fri-lists {
	float: left;
	display: inline-block;
	width: 150px;
}

.fir-text span {
	color: #666;
}
</style>
<script type="text/javascript">
		var flag = "${(empty users)? false : true}";
		var uname = '${users.uname}';
		var userid = '${users.userid}';
	
	$(function(){
		
		
		
	})

</script>
</head>

<body class="hzme">

	<jsp:include page="topb.jsp"></jsp:include>
	<!---------------我是头部分隔线-------------------------------------------------------------->

	<!---------------中间部分内容------------------------------------------------------------------->
	<!---------------个人信息------------------------------------------>
	<section class="p-home">
		<div class="container">
			<div class="personImg">
				<a class=" js-user-card" href="http://www.howzhi.com/u/2358985/"
					data-card-url="/user/2358985/card/show" data-user-id="2358985">
					<img class="img-responsive" src="images/avatar.png" alt="The_free">
				</a>

				<div class="user-info">
					<span class="user-name">The_free</span>
					<p>
						“<a href="http://www.howzhi.com/settings">您还未设置签名哦</a> ”
					</p>
				</div>
			</div>
			<ul class="clearfix">
				<li><span>学分</span><a class="count"
					href="http://www.howzhi.com/me/point">30</a></li>
				<li class="line"></li>
				<li><span>等级</span><a class="count" title="2级(30学分), 升级还需50学分!"
					href="http://www.howzhi.com/help/">2</a></li>
				<li class="line"></li>
				<li><span>金币</span><a class="count"
					href="http://www.howzhi.com/me/coin">0</a></li>
			</ul>
		</div>
	</section>

	<!-----------------菜单导航栏------------------------------------------>
	<nav class="home-nav">
		<div class="container">
			<ul class="nav nav-mian">
				<li class=" active "><a href="learnCenter.action">首页</a></li>
				<li class=" "><a href="toStudying.action">在学</a></li>
				<li class=" "><a href="toTeaching.action"> 在教</a></li>
				<li class=""><a href="toMygroups.action">小组</a></li>
				<li class=" active"><a href="toFriends.action">好友</a></li>
				<li class=" "><a href="javascript:void(0)">收藏夹</a></li>
				<li class="more dropdown"><a href="" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">更多<b class="caret"></b></a>
					<ul class="dropdown-menu" role="menu">
						<li class=" "><a href="javascript:void(0)">作业</a></li>
						<li class=" "><a href="javascript:void(0)">笔记</a></li>
						<li class=""><a href="javascript:void(0)">问答</a></li>
						<li class="  "><a href="javascript:void(0)">任务</a></li>
					</ul></li>
			</ul>
		</div>
	</nav>

	<!---------------小组部分-------------------------------------------------->
	<section class="container home">
		<div class="row">
			<div class="col-md-9">
				<div class="myhz-friattention flat">
					<h3 id="fmenu">
						好友 <a class="active" href="javascript:void(0);">关注的人</a> <a
							href="javascript:void(0);">粉丝</a> <a href="javascript:void(0);">已邀请</a>
					</h3>
					<div class="fri-content" id="attentionM">
						<p class="all-count">共2人</p>
						<input id="all-count" type="hidden" value="2">
						<div id="relation" class="friend-list row">
							<div class="col-md-4">
								<div class="fri-img">
									<a class=" js-user-card" data-user-id="87" href=""
										data-original-title="" title=""> <img class="avatar-sm"
										alt="卷卷"
										src="http://f1.howzhi.com/avatar/2015/07-08/22500800974f867554.jpg">
										<span class="daren-icon" title="达人"></span>
									</a>
								</div>
								<div class="fri-lists">
									<div class="fri-name">
										<a href="/u/87/">卷卷</a>
									</div>
									<div class="fir-text">
										<span>突然很想喝咖啡 </span>
									</div>
									<div class="add-attention myFollowing">
										<span class="has-attent" data-url="/user/87/unfollow">
											<i class=" glyphicon glyphicon-ok"></i> 已关注
										</span> <span class="has-attent" style="display: none"
											data-url="/user/87/unfollow"> <i
											class="glyphicon glyphicon-transfer"></i> 相互关注
										</span>
									</div>
								</div>
							</div>
							<!-- <div class="col-md-4">
								<div class="fri-img">
									<a class=" js-user-card" data-user-id="5759"
										data-card-url="/user/5759/card/show" href=""> <img
										class="avatar-sm" alt="知了"
										src="http://f1.howzhi.com/avatar/2013/05-10/1453371e5503236335.jpg">
										<span class="daren-icon" title="达人"></span>
									</a>
								</div>
								<div class="fri-lists">
									<div class="fri-name">
										<a href="/u/5759/">知了</a>
									</div>
									<div class="fir-text">
										<span>如果有问题，请直接留言或者发送邮件到service@howzhi.com </span>
									</div>
									<div class="add-attention myFollowing">
										<span class="has-attent" style="display: none"
											data-url="/user/5759/unfollow"> <i
											class=" 	glyphicon glyphicon-ok"></i> 已关注
										</span> <span class="has-attent" data-url="/user/5759/unfollow">
											<i class="glyphicon glyphicon-transfer"></i> 相互关注
										</span>
									</div>
								</div>
							</div> -->
						</div>
					</div>
					
					<!--  粉丝 --------------------- -->
					<div class="fri-content" id="fans" style="display:none">
						<p class="all-count">共2人</p>
						<input id="all-count" type="hidden" value="2">
						<div id="relation" class="friend-list row">
							<div class="col-md-4">
								<div class="fri-img">
									<a class=" js-user-card" data-user-id="87" href=""
										data-original-title="" title=""> <img class="avatar-sm"
										alt="卷卷"
										src="http://f1.howzhi.com/avatar/2015/07-08/22500800974f867554.jpg">
										<span class="daren-icon" title="达人"></span>
									</a>
								</div>
								<div class="fri-lists">
									<div class="fri-name">
										<a href="/u/87/">卷卷</a>
									</div>
									<div class="fir-text">
										<span>突然很想喝咖啡 </span>
									</div>
									<div class="add-attention myFollowing">
										<span class="has-attent" data-url="/user/87/unfollow">
											<i class=" glyphicon glyphicon-ok"></i> 已关注
										</span> <span class="has-attent" style="display: none"
											data-url="/user/87/unfollow"> <i
											class="glyphicon glyphicon-transfer"></i> 相互关注
										</span>
									</div>
								</div>
							</div>
							
						</div>
					</div>
					<!--  粉丝-------------------------- -->
					
					
				</div>
			</div>

			<!-------------------------------右边每日签到,从数据库获取--------------------------------------------->
			<aside class="col-md-3 course-sidebar ss" id="qindao">
				<div class="flat hz-sign-in">
					<h3>每日一拾</h3>

					<!----------------------未签到信息显示---------------------------->
					<div id="sign-no" style="">
						<div class="not-sign text-center ">
							<p class="t-gray">已连续拾到</p>
							<p>
								<font id="keep-nums">0</font>天
							</p>
						</div>
						<div class="has-sign" style="display: none;">
							<p>
								已连续拾到 <font id="keep-num"></font>天
							</p>
							<p class="sentence"></p>
						</div>
						<div class="more-sign text-center">
							<a href="javascript:void(0);" id="tocheckin"><span
								class="calendar-icon t-dark mrm">24</span>拾到</a> <a
								href="javascript:void(0);" class="has-data"
								style="display: none;"><span
								class="calendar-icon t-dark mrm">24</span>已拾到</a>
						</div>

						<div class="share-out hz-share clearfix t-gray">
							<span class="pull-left">分享到：</span>

							<div class="dropdown-menu  js-social-share-params"
								data-title="每日一拾"
								data-summary="#好知每日一拾#生活只有在平淡无味的人看来才是空虚而平淡无味的。---车尔尼雪夫斯基"
								data-message="#好知每日一拾#生活只有在平淡无味的人看来才是空虚而平淡无味的。---车尔尼雪夫斯基"
								data-url="http://www.howzhi.com"
								data-picture="http://www.howzhi.com/assets/img/logo.png">
								<a href="javascript:void(0);" class="js-social-share weixin"
									data-cmd="weixin" title="分享到微信" data-share="weixin"
									data-qrcode-url="/common/qrcode?text=http%3A%2F%2Fwww.howzhi.com"><i
									class="es-icon es-icon-weixin"></i></a> <a
									href="javascript:void(0);" class="js-social-share weibo"
									data-cmd="tsina" title="分享到新浪微博" data-share="weibo"><i
									class="es-icon es-icon-weibo"></i></a>
							</div>

						</div>
					</div>

					<!----------------------已签到信息显示---------------------------->
					<div id="sign-in" style="display: none;">
						<div style="display: none;" class="not-sign text-center ">
							<p class="t-gray">已连续拾到</p>
							<p>
								<font id="keep-nums">0</font>天
							</p>
						</div>
						<div class="has-sign" style="">
							<p>
								已连续拾到 <font id="keep-num">1</font>天
							</p>
							<p class="sentence">
								生活只有在平淡无味的人看来才是空虚而平淡无味的。<br>---车尔尼雪夫斯基
							</p>
						</div>
						<div class="more-sign text-center">
							<a style="display: none;" href="javascript:;" id="tocheckin"><span
								class="calendar-icon t-dark mrm">23</span>拾到</a> <a
								href="javascript:void(0);" class="has-data" style=""><span
								class="calendar-icon t-dark mrm">23</span>已拾到</a>
						</div>
						<div class="share-out hz-share clearfix t-gray">
							<span class="pull-left">分享到：</span>

							<div class="dropdown-menu  js-social-share-params"
								data-title="每日一拾"
								data-summary="#好知每日一拾#生活只有在平淡无味的人看来才是空虚而平淡无味的。---车尔尼雪夫斯基"
								data-message="#好知每日一拾#生活只有在平淡无味的人看来才是空虚而平淡无味的。---车尔尼雪夫斯基"
								data-url="http://www.howzhi.com"
								data-picture="http://www.howzhi.com/assets/img/logo.png">
								<a href="javascript:void(0);" class="js-social-share weixin"
									data-cmd="weixin" title="分享到微信" data-share="weixin"
									data-qrcode-url="/common/qrcode?text=http%3A%2F%2Fwww.howzhi.com"><i
									class="es-icon es-icon-weixin"></i></a> <a
									href="javascript:void(0);" class="js-social-share weibo"
									data-cmd="tsina" title="分享到新浪微博" data-share="weibo"><i
									class="es-icon es-icon-weibo"></i></a>
							</div>

						</div>
					</div>

					<div class="hz-ad flat">
						<!--这里插入要显示的班级图片，然后点击跳转到班级信息-->
						<a href="javascript:void(0)" target="_blank"><img
							src="images/block_picture.jpg" class="img-responsive" alt="小九入门班"></a>
					</div>
				</div>
				<!--------------------------------任务信息------------------------------------------>
				<div class="flat task">
					<h3>今日任务</h3>
					<div class="empty">暂无新任务</div>
					<div class="more">
						<a href="javascript:void(0)"><i class="fa fa-angle-right"></i>
							>&nbsp;&nbsp;查看更多</a>
					</div>
				</div>

				<!--------------------------------访客信息------------------------------------------>
				<div class="flat person-visitor">
					<h3>
						最新来访<span class="count"></span>
					</h3>
					<div class="empty">暂无访客！</div>
				</div>

			</aside>
		</div>
	</section>

	<!--------------------------尾部--------------------------------------------->
	<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>