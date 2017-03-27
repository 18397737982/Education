
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>

<html class="">
	<head>
		<base href="/superEducation/"/>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<title>在学 </title>
		<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">
		<link href="css/bootstrap.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/howzhi.css">
		
		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<script type="text/javascript" src="js/show.js"></script>
		<script type="text/javascript" src="js/top.js"></script>
		<style>
			.cke {
				visibility: hidden;
			}
		.bar {width:0px;height:18px;border:0px;background:#00f;}
		#box {width:400px;height:18px;border:1px solid;}
		</style>
	</head>

	<body class="hzme">
		<!---------------我是头部分隔线-------------------------------------------------------------->
		<jsp:include page="topb.jsp"></jsp:include>
		<!---------------中间部分内容------------------------------------------------------------------->
		<!---------------个人信息----------------------------------------->
		<section class="p-home">
			<div class="container">
				<div class="personImg">
					<a class=" js-user-card" href="http://www.howzhi.com/u/2358985/" data-card-url="/user/2358985/card/show" data-user-id="2358985">
						<img class="img-responsive" src="images/avatar.png" alt="The_free">
					</a>

					<div class="user-info">
						<span class="user-name">${users.user_name}</span>
						<p>${users.usign}</p>
					</div>
				</div>
				<ul class="clearfix">
					<li><span>学分</span><a class="count" href="http://www.howzhi.com/me/point">30</a></li>
					<li class="line"></li>
					<li><span>等级</span><a class="count" title="2级(30学分), 升级还需50学分!" href="http://www.howzhi.com/help/">2</a></li>
					<li class="line"></li>
					<li><span>金币</span><a class="count" href="http://www.howzhi.com/me/coin">0</a></li>
				</ul>
			</div>
		</section>
		
		<!-----------------菜单导航栏------------------------------------------>
		<nav class="home-nav">
			<div class="container">
				<ul class="nav nav-mian">
					<li class=""><a href="learnCenter.action">首页</a></li>
					<li class=" active  "><a href="toStudying.action">在学</a></li>
					<li class=" "><a href="toTeaching.action"> 在教</a></li>
					<li class=""><a href="toMygroups.action">小组</a></li>
					<li class=" "><a href="javascript:void(0)">好友</a></li>
					<li class=" "><a href="javascript:void(0)">收藏夹</a></li>
					<li class="more dropdown"><a href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">更多<b class="caret"></b></a>
						<ul class="dropdown-menu" role="menu">
							<li class=" "><a href="javascript:void(0)">作业</a></li>
							<li class=" "><a href="javascript:void(0)">笔记</a></li>
							<li class=""><a href="javascript:void(0)">问答</a></li>
							<li class="  "><a href="javascript:void(0)">任务</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
		
		<!---------------在学部分-------------------------------------------------->
		<section class="container home">
			<div class="row">
				<div class="col-md-9">
					<div class="flat myhz-course">
						<h3>在学课程
						 	<a href="javascript:void(0)" id="learning" class="active">学习中 </a>
						 	<a href="javascript:void(0)" id="learned">已学完 </a>
						 	<a href="javascript:void(0)" id="classroom">班级</a>
						 </h3>
						
						<!------------学习中--------------------------------->
						<div id="studying" style="display: block;">
							<div class="hz-progress">
								<p>
									<span class="dash-icon"></span>学习计划综合进度：<span class="count"></span><span class="rule">( 已学课时数 / 所有课时数 * 100% ) </span>
								</p>
								<!--------------------学习进度条------------------------------->
								<div id="box">
									<div class="bar"></div>
								</div>
							</div>
	
							<div class="course  phjoin-course">
								<div class="section-body">
									<!--------------------开始学习了，则显示这个模块------------------------------------------------------------->
									<div class="row" style="display: none;">
										<div class="col-md-4 col-sm-6">
											<div class="course-item">
												<div class="course-img">
													<a href="Javascript:void(0)">
														<img src="images/course02.jpg" class="img-responsive" alt="AK：AE特效教程">
														<span class="load" style="width:0%"></span>
														<div class="image-overlay"></div>
													</a>
													<span class="pere">0%</span>
													<div class="mask"><a href="Javascript:void(0)">继续学习</a></div>
												</div>
												<div class="course-info">
													<div class="title">
														<span class="label label-p">影视设计</span>
														<a class="transition" href="Javascript:void(0)">AK：AE特效教程</a>
													</div>
													<div class="metas">
														<span><a>3万+</a>浏览</span>/
														<span><a>1682</a>学员</span>/
														<span><a>5</a>评分</span>
													</div>
													<div class="teacher">
														<a class=" js-user-card" href="Javascript:void(0)" data-card-url="/user/7797/card/show" data-user-id="7797">
															<img class="avatar-ss " src="images/avatar.png" alt="艾影">														艾影
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-------------------------如果没有正在学习的课程，则显示这个--------------------------------------->
									<div class="row" style="display: block;">
			                            <div class="empty"><i class="es-icon es-icon-locallibrary"></i>您还未开始学习课程，去<a href="getAllCourseInformation.action">发现</a>好课</div>
			                        </div>
								</div>
							</div>
						</div>
						
						
						<!------------已学完 ---------------------------------->
						<div id="studied" style="display: none;">
							<div class="course phjoin-course">
								<div class="section-body">
									<!--------------还未学完任何一门课程时------------------->
									<div class="row" id="notStudy" style="display: block;">
										<div class="empty"><i class="es-icon es-icon-locallibrary"></i>您还未开始学习课程，去<a href="getAllCourseInformation.action">发现</a>好课</div>
									</div>
									
									<!----------------有学完课程时的显示样式----------------------------------->
									<div class="row" id="study" style="display: none;">
										<div class="col-md-4 col-sm-6">
											<div class="course-item">
												<div class="course-img">
													<a href="http://www.howzhi.com/course/2730/">
														<img src="images/course02.jpg" class="img-responsive" alt="AK：AE特效教程">
														<div class="image-overlay"></div>
													</a>
													<div class="mask"><a href="http://www.howzhi.com/course/2730/">查看课程</a></div>
												</div>
												<div class="course-info">
													<div class="title">
														<span class="label label-p">影视设计</span>
														<a class="transition" href="http://www.howzhi.com/course/2730/">AK：AE特效教程</a>
													</div>
													<div class="metas">
														<span><a>3万+</a>浏览</span>/
														<span><a>1682</a>学员</span>/
														<span><a>5</a>评分</span>
													</div>
													<div class="teacher">
														<a class=" js-user-card" href="http://www.howzhi.com/u/7797/" data-card-url="/user/7797/card/show" data-user-id="7797">
															<img class="avatar-ss " src="images/avatar.png" alt="艾影">						艾影
														</a>
									                </div>
									            </div>
									        </div>
									    </div>
									                           
									</div>
								</div>
							</div>
						</div>
						

						<!------------班级 ---------------------------------->
						<div id="studyroom" style="display: none;">
							<div class="class-list meclassroom row">
								<div class="col-md-6">
									<div class="class-item ">
										<div class="class-img">
											<a href="http://www.howzhi.com/classroom/16" target="_blank">
												<img src="images/course03.jpg" class="img-responsive">
												<h3 style="text-align: center;">零基础摄影入门班</h3>
												<div class="image-overlay"></div>
											</a>
										</div>
										
									</div>
								</div>
	      					</div> 
						</div>
						 
					</div>
				</div>
				
					
				<!-------------------------------右边每日签到,从数据库获取--------------------------------------------->
				<aside class="col-md-3 course-sidebar ss" id="qindao">
					<div class="flat hz-sign-in">
						<h3> 每日一拾</h3>

						<!----------------------未签到信息显示---------------------------->
						<div id="sign-no" style="">
							<div class="not-sign text-center ">
								<p class="t-gray">已连续拾到</p>
								<p>
									<font id="keep-nums">0</font>天</p>
							</div>
							<div class="has-sign" style="display:none;">
								<p>已连续拾到
									<font id="keep-num"></font>天</p>
								<p class="sentence"></p>
							</div>
							<div class="more-sign text-center">
								<a href="javascript:void(0);" id="tocheckin"><span class="calendar-icon t-dark mrm">24</span>拾到</a>
								<a href="javascript:void(0);" class="has-data" style="display:none;"><span class="calendar-icon t-dark mrm">24</span>已拾到</a>
							</div>

							<div class="share-out hz-share clearfix t-gray">
								<span class="pull-left">分享到：</span>

								<div class="dropdown-menu  js-social-share-params" data-title="每日一拾" data-summary="#好知每日一拾#生活只有在平淡无味的人看来才是空虚而平淡无味的。---车尔尼雪夫斯基" data-message="#好知每日一拾#生活只有在平淡无味的人看来才是空虚而平淡无味的。---车尔尼雪夫斯基" data-url="http://www.howzhi.com" data-picture="http://www.howzhi.com/assets/img/logo.png">
									<a href="javascript:void(0);" class="js-social-share weixin" data-cmd="weixin" title="分享到微信" data-share="weixin" data-qrcode-url="/common/qrcode?text=http%3A%2F%2Fwww.howzhi.com"><i class="es-icon es-icon-weixin"></i></a>
									<a href="javascript:void(0);" class="js-social-share weibo" data-cmd="tsina" title="分享到新浪微博" data-share="weibo"><i class="es-icon es-icon-weibo"></i></a>
								</div>

							</div>
						</div>

						<!----------------------已签到信息显示---------------------------->
						<div id="sign-in" style="display: none;">
							<div style="display: none;" class="not-sign text-center ">
								<p class="t-gray">已连续拾到</p>
								<p>
									<font id="keep-nums">0</font>天</p>
							</div>
							<div class="has-sign" style="">
								<p>已连续拾到
									<font id="keep-num">2</font>天</p>
								<p class="sentence">生活只有在平淡无味的人看来才是空虚而平淡无味的。<br>---车尔尼雪夫斯基</p>
							</div>
							<div class="more-sign text-center">
								<a style="display: none;" href="javascript:;" id="tocheckin"><span class="calendar-icon t-dark mrm">23</span>拾到</a>
								<a href="javascript:void(0);" class="has-data" style=""><span class="calendar-icon t-dark mrm">23</span>已拾到</a>
							</div>
							<div class="share-out hz-share clearfix t-gray">
								<span class="pull-left">分享到：</span>

								<div class="dropdown-menu  js-social-share-params" data-title="每日一拾" data-summary="#好知每日一拾#生活只有在平淡无味的人看来才是空虚而平淡无味的。---车尔尼雪夫斯基" data-message="#好知每日一拾#生活只有在平淡无味的人看来才是空虚而平淡无味的。---车尔尼雪夫斯基" data-url="http://www.howzhi.com" data-picture="http://www.howzhi.com/assets/img/logo.png">
									<a href="javascript:void(0);" class="js-social-share weixin" data-cmd="weixin" title="分享到微信" data-share="weixin" data-qrcode-url="/common/qrcode?text=http%3A%2F%2Fwww.howzhi.com"><i class="es-icon es-icon-weixin"></i></a>
									<a href="javascript:void(0);" class="js-social-share weibo" data-cmd="tsina" title="分享到新浪微博" data-share="weibo"><i class="es-icon es-icon-weibo"></i></a>
								</div>

							</div>
						</div>

						<div class="hz-ad flat">
							<!--这里插入要显示的班级图片，然后点击跳转到班级信息-->
							<a href="javascript:void(0)" target="_blank"><img src="images/block_picture.jpg" class="img-responsive" alt="小九入门班"></a>
						</div>
					</div>
					<!--------------------------------任务信息------------------------------------------>
					<div class="flat task">
						<h3>今日任务</h3>
						<div class="empty">暂无新任务</div>
						<div class="more"><a href="javascript:void(0)"><i class="fa fa-angle-right"></i> >&nbsp;&nbsp;查看更多</a></div>
					</div>

					<!--------------------------------访客信息------------------------------------------>
					<div class="flat person-visitor">
						<h3>最新来访<span class="count"></span></h3>
						<div class="empty">暂无访客！</div>
					</div>

				</aside>
			</div>
		</section>

		<!--------------------------尾部--------------------------------------------->
		<jsp:include page="footer.jsp"></jsp:include>

	</body>

</html>
