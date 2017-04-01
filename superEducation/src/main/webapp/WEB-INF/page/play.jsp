<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html class="">
<head>
<base href="/superEducation/"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="renderer" content="webkit">
<meta name="baidu-site-verification" content="XN2OVFQdUg">
<title>好知网 播放</title>
<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/tcdPageCode.css">
<link rel="stylesheet" type="text/css" href="css/howzhi.css">
<link href="css/smohan.face.css" type="text/css" rel="stylesheet">
<link href="js/assets/css/font-awesome.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/smohan.face.js" charset="utf-8"></script>

<script type="text/javascript" src="js/play.js"></script>
<script type="text/javascript" src="js/jquery.page.js"></script>

<style>
#editor {
	resize: vertical;
	overflow: auto;
	border: 1px solid silver;
	border-radius: 5px;
	min-height: 200px;
	box-shadow: inset 0 0 10px silver;
	padding: 1em;
}
#editor2 {
	resize: vertical;
	overflow: auto;
	border: 1px solid silver;
	border-radius: 5px;
	min-height: 200px;
	box-shadow: inset 0 0 10px silver;
	padding: 1em;
}

#editparent .btn {
	width: 40px;
	text-align: center;
	background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);
	border-color: #cccccc #cccccc #b3b3b3;
	box-shadow: 0 1px 0 rgba(255, 255, 255, 0.2) inset, 0 1px 2px rgba(0, 0, 0, 0.05);
	color:#333;
}

</style>
<script type="text/javascript">
	var scroll = function(event, scroller) {
		alert("gjeighikh");
		var k = event.wheelDelta ? event.wheelDelta : -event.detail * 10;
		scroller.scrollTop = scroller.scrollTop - k;
		return false;
	};

	var flag = "${(empty users)? false : true}";
	var uname = '${users.user_name}';
	var userid = '${users.user_id}';
	var course_id ='${onecourse.course_id}';
	var class_hour_id='${theclass_hour[0].class_hour_id}';
	var attention='${onecourse.userInfo.user_id}';
	$(function() {
		
		
		
	});
</script>
</head>


<body class="hz-learning">
	<div class="learn-dashboard-header breadcrumb ">
		<a data-step="1" data-intro="点此回到课程首页" data-position="right" href="toCourse.action/${onecourse.class_id}" >${onecourse.lass_category.class_categorys}</a> <span class="phm"> &gt; </span>
		<a data-step="1" data-intro="点此回到课程首页" data-position="right" href="toOneCourse.action/${onecourse.course_id} ">${onecourse.course_name} </a><span class="phm"> &gt; </span>
		<a data-step="1" data-intro="点此回到课程首页" data-position="right" href="">${theclass_hour[0].title}</a>
		<a data-step="1" data-intro="点此回到课程首页" data-position="right"
			href="toOneCourse.action/${onecourse.course_id}" style="float:right;" class=""  id="returnJoin">点击返回课程详细页面</a>			
	</div>
	<div class="learn-dashboard toolbarhide" id="lesson-dashboard"
		data-course-id="2155" data-course-uri="/course/2155/"
		data-dashboard-uri="/course/2155/learn" data-watch-limit=""
		data-hide-media-lesson-learn-btn="" data-lesson-id="33117"
		data-hzsource="UGC" data-lesson-type="video" style="height: 563px;"
		data-widget-cid="widget-7">
		<div class="dashboard-content">
			<div class="dashboard-body" id="dashboard-body">
			<section id="player">
			  <video id="media" width="100%" height="400" controls> 
			    <source src="${theclass_hour[0].content}">
			  </video> 
			</section>
			</div>
		</div>

		<!--  右侧视频旁的div 课程列表  笔记  问答 等----------------------------------------------------------- -->
		<div class="dashboard-toolbar pull-right">
			<ul class="options clearfix" id="clearfix">
				<li class="active" id="keshi" data-position="left"><a
					data-toggle="tab" href="javascript:void(0)"><i
						class="hz-icon icon-formatlistbulleted"></i><span>课时</span></a></li>
				<li id="note" data-position="left"><a data-toggle="tab"
					href="javascript:void(0)"><i class="hz-icon icon-edit"></i><span>笔记</span></a>
				</li>
				<li id="quesion" data-position="left"><a data-toggle="tab"
					href="javascript:void(0)"><i class="hz-icon icon-forum"></i><span>问答</span></a>
				</li>
			</ul>
			<div class="tab-content" style="display: block;">
				<div id="toolbar-1" class="tab-pane courselist active">
					<div class="tab-title">
						<i class="hz-icon icon-formatlistbulleted mrm"></i>课时列表
					</div>
					<ul class="period-list hz-courselist" id="course-item-list">
						<!-- 课程列表------------------------------------------------------------------------------ -->
						<c:forEach items="${allclass_hour }" var="item">
							<li class="period lesson-item lesson-item-33117  item-active"
							data-id="33117" data-num="1"><a
							href="toplay.action/${onecourse.course_id}_${item.class_hour_id}"
							title="${item.title}"> <i
								class="es-icon es-icon-undone status-icon"></i> <span
								class="title">L1：${item.title}</span> <!-- 紧跟标题 --> <!-- 右边图标 -->
								<span class="course-type"> <i
									class="hz-icon icon-play-nobg" data-toggle="tooltip"
									data-placement="top" title="" data-original-title="视频课程"></i>
							</span>
							<c:if test="${item.class_hour_id==theclass_hour[0].class_hour_id}">
							 <span class="learning">学习中</span>
							</c:if>
							 </a></li>
						</c:forEach>

					</ul>
					<!-- ---------------------------------------------------------------------------------------------------- -->
				</div>
				<!-- 笔记--------------------------------------------------------------------------------- -->
				<div id="toolbar-2" class="tab-pane tab-notes">
					<div class="tab-title">
						<i class="hz-icon icon-edit mrm"></i>笔记
					</div>
					<div class="course-notes phl pbl">
						<ul class="notes-header clearfix options" id="notes-options">
							<li class="active"><a href="javascript:void(0);"data-toggle="tab">我的笔记</a></li>
							<li><a href="javascript:void(0);"data-toggle="tab">同学笔记</a></li>
						</ul>
						<div class="tab-content">
						<!-- 写笔记  插件 -->
							<div class="tab-pane active" id="tab-notes-1">
								<form class="form  " method="post"action=""id="course_lesson-note-form" novalidate="novalidate"data-widget-cid="widget-2">
									<div class="form-group">
										<label class="control-label hidden" for="note_content">笔记</label>
										<div class="controls">
											<div class="content">
									<div id='pad-wrapper'>
										<div id="editparent" style="width: 260px;">
											<div id='editControls' class='span9'
												style='width: 260px; text-align: center; margin-left: 15px;'>
												<div class='btn-group' style="height: 40px; width: 90px;">
													<a class='btn' data-role='undo' href='javascript:void(0);'><i
														class='icon-undo'></i></a> <a class='btn' data-role='redo'
														href='javascript:void(0);'><i class='icon-repeat'></i></a>
												</div>
												<div class='btn-group' style="height: 40px;">
													<a class='btn' data-role='bold' href='javascript:void(0);'><b>B</b></a>
													<a class='btn' data-role='italic'
														href='javascript:void(0);'><em>I</em></a> <a class='btn'
														data-role='underline' href='javascript:void(0);'><u><b>U</b></u></a>
													<a class='btn' data-role='strikeThrough'
														href='javascript:void(0);'><strike>abc</strike></a>
												</div>

											</div>
											<div id='editor' class='span9'
												style='width: 250px; height: 250px; color: #000; font-size: 13px; margin-left: 20px;'
												contenteditable></div>
										</div>
									</div>
								</div>
										</div>
									</div>

									<input type="hidden" id="note_id" name="id" value=""> <input
										type="hidden" id="note_courseId" name="courseId" value="2155">
									<input type="hidden" id="note_lessonId" name="lessonId"
										value="33117">
									<div class="btns clearfix">
										<button class="btn submit pull-right"  type="button" id="course_lesson-note-form-btn" style="margin-top:20px;margin-left:-20px;">保存</button>
									</div>
									<div class="hz-login-editor"></div>
								</form>

							</div>
							<!-- 写笔记  插件 --------------------------------------------------------------------------------- -->
							<!-- -------成员的笔记--------------------------------------------------------------------------- -->
							<div class="tab-pane" id="tab-notes-2">
								<ul class="notes-list ">
								<!-- <li>
									<div class="notes-img">
										<a class=" js-user-card" data-user-id="1256070" data-card-url="/user/1256070/card/show" href="/u/1256070/" data-original-title="" title="">
										<img class="avatar-mm" alt="Chino" src="http://f1.howzhi.com/avatar/2012/09-26/2254317379a3743580.jpg">
										</a>
										</div>
										<div class="notes-content">
										<span class="name">
										<a href="javascrit:;">Chino</a>
										</span>
										<div class="content">
										<div class="short-content" style="display: block;">打奶棒加拉花壶</div>
										<div class="full-content" style="display: none;">
										<p>打奶棒加拉花壶</p>
										</div>
										</div>
										<div class="actions">
										<a class="show-full-btn" href="javascript:;" style="display: inline;">[展开全文]</a>
										<a class="show-short-btn" style="display: none;" href="javascript:;">[收起全文]</a>
										</div>
										</div>
								</li> -->

								</ul>

							</div>
							<!-- -------成员的笔记--------------------------------------------------------------------------- -->
						</div>
					</div>

				</div>
				<!-- 问答----------------------------------------------------------------------- -->
				<div id="toolbar-3" class="tab-pane tab-question">
					<div class="tab-title">
						<i class="hz-icon icon-forum mrm"></i>问答
					</div>
					<a id="showquestion_form" onclick="showquestion_form()">->_->我要提问</a>
					<a style="float:right" onclick="hiddenquestion_form()">[X]&nbsp&nbsp&nbsp</a>
					<form class="form " id="lesson_qustion_form" method="post"
						action="" novalidate="novalidate" data-widget-cid="widget-4" style="display:none">
						<div class="form-group">
							<div class="controls">
								<!-- textarea id="question_title"
									class="form-control question_title"
									data-url="/sensitive/check/course-question" placeholder="问题标题"
									name="title" data-widget-cid="widget-5" data-explain=""></textarea> -->
								<div style="margin-top:-20px;"><h4>问题内容</h4></div>
								<div class="help-block" style="display: none;"></div>
							</div>
						</div>
						<!-- -----插件--------------------------------------------------------------- -->
						<div class="form-group">
							<div class="controls">
								<div class="content">
									<div id='pad-wrapper'>
										<div id="editparent" style="width: 260px;">
											<div id='editControls' class='span9'
												style='width: 260px; text-align: center; margin-left: 15px;'>
												<div class='btn-group' style="height: 40px; width: 90px;">
													<a class='btn' data-role='undo' href='javascript:void(0);'><i
														class='icon-undo'></i></a> <a class='btn' data-role='redo'
														href='javascript:void(0);'><i class='icon-repeat'></i></a>
												</div>
												<div class='btn-group' style="height: 40px;">
													<a class='btn' data-role='bold' href='javascript:void(0);'><b>B</b></a>
													<a class='btn' data-role='italic'
														href='javascript:void(0);'><em>I</em></a> <a class='btn'
														data-role='underline' href='javascript:void(0);'><u><b>U</b></u></a>
													<a class='btn' data-role='strikeThrough'
														href='javascript:void(0);'><strike>abc</strike></a>
												</div>

											</div>
											<div id='editor2' class='span9'
												style='width: 250px; height: 250px; color: #000; font-size: 13px; margin-left: 20px;'
												contenteditable></div>
										</div>
									</div>
								</div>
								
							</div>
						</div>
						<!-- -----插件--------------------------------------------------------------- -->
						<input type="hidden" name="type" value="question"> <input
							type="hidden" name="_csrf_token"
							value="cfe9b96f569703f379d055687bf9a957774ae94c">

						<div class="btns clearfix">
							<button class="btn submit pull-right" type="button"
								style="margin-top: 20px;" id="lesson_qustion_form_btn">提交</button>
						</div>
						<div class="hz-login-editor"></div>
					</form>

					<ul id="questionList" style="margin-top: 40px;">
						<!-- <li><span>0回答</span><a
							href="javascript:void(0);" target="_black">高光怎样去找</a></li> -->
					</ul>

				</div>
				<!-- 问答----------------------------------------------------------------------- -->
			</div>
		</div>


		<div class="learn-dashboard-foot">
			<div data-step="5" data-intro="觉得课程内容好，那就分享给更多人来一起学习吧"
				data-position="right" class="share-out hz-share pull-left hidden-xs">
				<span class="pull-left">分享到：</span>

				<div class="dropdown-menu  js-social-share-params"
					data-title="Mark Crilley漫画教程合集-Mark Crilley漫画教程:头发的画法"
					data-summary="我正在好知网学习Mark Crilley漫画教程合集第1课Mark Crilley漫画教程:头发的画法，老师讲得太棒了，好东西要分享，别说我没告诉你们哦！"
					data-message="我正在好知网学习Mark Crilley漫画教程合集第1课Mark Crilley漫画教程:头发的画法，老师讲得太棒了，好东西要分享，别说我没告诉你们哦！"
					data-url="http://www.howzhi.com/course/2155/lesson/33117"
					data-picture="http://f1.howzhi.com/course/2015/07-09/0649139ae9ae494339.jpg">
					<a href="javascript:;" class="js-social-share weixin"
						data-cmd="weixin" title="分享到微信" data-share="weixin"
						data-qrcode-url="/common/qrcode?text=http%3A%2F%2Fwww.howzhi.com%2Fcourse%2F2155%2Flesson%2F33117"><i
						class="es-icon es-icon-weixin"></i></a> <a href="javascript:;"
						class="js-social-share weibo" data-cmd="tsina" title="分享到新浪微博"
						data-share="weibo"><i class="es-icon es-icon-weibo"></i></a> <a
						href="javascript:;" class="js-social-share qq" data-cmd="qq"
						title="分享到QQ好友" data-share="qq"><i class="es-icon es-icon-qq"></i></a>
					<a href="javascript:;" class="js-social-share qzone"
						data-cmd="qzone" title="分享到QQ空间" data-share="qzone"><i
						class="es-icon es-icon-qzone"></i></a>

				</div>

			</div>
			<a data-step="6" data-intro="看不到视频怎么办？点击查看解决办法" data-position="right"
				href="http://www.howzhi.com/feedback/user/list?feedurl=http://www.howzhi.com/course/2155/lesson/33117"
				class="mlm t-gray"> <i class="hz-icon icon-question"></i> 看不到视频
			</a>
			<div class="right">
				<a data-step="7" data-intro="为了更好地记录自己的学习进度，学完课程记得点击“学过了”按钮哦"
					data-position="right" class="btn btn-primary mrs"
					data-role="finish-lesson" data-id="2155" id="learned"><i
					class="glyphicon glyphicon-unchecked mrs"></i>学过了</a> <a
					href="toplay.action/${onecourse.course_id}_${theclass_hour[1].class_hour_id}"
					data-role="next-lesson" data-placement="right" title="下一课时"
					class="course-title t-gray"> ${theclass_hour[1].title } </a>

			</div>
		</div>
	</div>

	<div class="container" id="content-container">
		<div class="row">
			<div class="col-md-9">
				<div class="person-comment course-in flat">
					<h2 class="nopadding">学员评论</h2>
					<!-- 发评论 ----------------- -->
					<div id="Smohan_FaceBox">
						<textarea name="text" id="Smohan_text" class="smohan_text"></textarea>
						<p>
							<a href="javascript:void(0)" class="face" title="表情"></a>
							<button class="btn btn-primary pull-right" id="comment-btn"
								type="button">发布</button>
						</p>
					</div>

					<!--  评论 --------------------------------- -->
					<ul class=" comment-item-list" id="commentList">
						<li id="item92627">
							<div class="userimg">
								<a class=" js-user-card" href="#"
									data-card-url="/user/2357277/card/show" data-user-id="2357277">
									<img class="img-responsive" src="images/21584339cab2094074.jpg"
									alt="楚嫣然">
								</a>
							</div>
							<div class="userInfo">
								<p class="head">
									<a href="#">楚嫣然</a><span>7天前</span>
								</p>
								<div class="body">老师用的橡皮是哪种、？</div>
								<div class="pull-right  ">
									<a class="con" id="revert" href="javascript:;"
										data-role="revert" data-url="/comment/92627/post"
										data-revertto="楚嫣然" onclick="revert()">回复</a>
								</div>
							</div>
						</li>
					</ul>
					<!-- 分页 ---------------------------------------------------------------------------------  -->
					<div class="tcdPageCode" id="commenttcpage"></div>
					<!-- 分页  ---------------------------------------------------------------------------------  -->
				</div>

				<div class="course flat nopad">
					<div class="section-header">
						<h2>你感兴趣的课程</h2>
					</div>
					<div class="section-body">
						<div class="row" id="recommedCourse">
							<!--  --- 推荐课程 ------------------------------------------------------------------------- -->
							<div class="col-md-4 col-sm-6 ">
								<div class="course-item">
									<div class="course-img">
										<img src="images/0650251c4120932070.jpg" alt="sai基础教程"
											class=""> <a href="javaScript:void(0);">
											<div class="mask">
												<span class="btn btn-primary">开始学习</span>
											</div>
										</a>
									</div>
									<div class="course-info">
										<div class="title">
											<span class="label label-p">动漫插画</span> <a class="transition"
												href="javaScript:void(0);">sai基础教程</a>
										</div>
										<div class="metas">
											<span>69万+浏览</span>/ <span>19361学员</span>/ <span>4.7评分</span>
										</div>
										<div class="teacher text-o-show">
											<a class=" js-user-card" href="javaScript:void(0);"
												data-card-url="/user/1282433/card/show"
												data-user-id="1282433"> <img class="avatar-ss "
												src="images/2001255a2bbc776915.jpg" alt="木桃"> 木桃
											</a>
											<div class="price free pull-right">
												<span>免费</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--  --- 推荐课程 ------------------------------------------------------------------------- -->

						</div>
					</div>
				</div>

			</div>
			<aside class="col-md-3 course-sidebar">
				<div class="flat ">
					<h3>课时简介</h3>
					<div class="words">
						<i class="fa fa-flag pull-left">
							${theclass_hour[0].introduction}
						</i>
					</div>
				</div>
				<div class="flat sidebar-teach media">
					<h3>课程教师</h3>
					<div class="media-left">
						<a class=" js-user-card" href="javaScript:void(0);"
							data-card-url="/user/8441/card/show" data-user-id="8441"> <img
							class="avatar-sm" id="teachImg" 
							<c:choose>
								<c:when test="${onecourse.userInfo.pic!=null}">src="${onecourse.userInfo.pic}"</c:when>
								<c:otherwise>src="images/avatar.png"</c:otherwise>
							</c:choose>
							alt="${onecourse.userInfo.user_name}">
						</a>

					</div>
					<div class="teach-info media-body">
						<p class="text-o-show">
							<a class="link-light " href="javaScript:void(0);">${onecourse.userInfo.user_name}</a> <span
								class="daren-icon-t" title="达人"></span>
						</p>
						<p><!--TODO:两个人之间的互粉  -->
							<a href="javaScript:void(0);"><span id="teach">20</span>在教</a> <a
								href="javaScript:void(0);"><span id="fans">3285</span>粉丝</a>
						</p>
					</div>
					<div class="info">${onecourse.userInfo.introduce}</div>
					<div class="ta clearfix" data-role="followUser">
						<a class="act first follow-btn" href="javaScript:void(0);"
							data-url="/user/8441/follow" id="attion"> <i
							class="fa fa-plus"></i> 关注TA
						</a> <a class="act first unfollow-btn" href="javascript:;"
							data-url="/user/8441/unfollow" style="display: none"
							 id="attion2"> <i class="fa fa-check" ></i> 已关注
						</a> <a id="mes" class="act" href="javaScript:void(0);" data-toggle="modal"
							data-target="#modal" data-url="/message/create/8441"> <i
							class="fa fa-envelope"></i> 私信
						</a>
					</div>
				</div>

				<div class="flat sidebar-learner ">
										<h3>
						最新加入学员<span class="count">(${all_study.size() })</span>
					</h3>
					<ul class="clearfix" id="top12">
					<c:if test="${all_study.size()>0}"> 
								<c:forEach items="${all_study}" var="item" begin="0" end="5">
										
										<li><a class=" js-user-card"  href="http://www.howzhi.com/u/2359828/"
											data-card-url="/user/2359828/card/show" data-user-id="2359828">
												<img class="avatar-sm" 
												<c:choose> 
													<c:when test="${item.userInfo.pic!=null}">
														src="${item.userInfo.pic}" 
													</c:when>
													<c:otherwise>
														src="images/avatar.png" 
													</c:otherwise>
													</c:choose> 
												alt="${item.userInfo.user_name }">
										</a> <a href="http://www.howzhi.com/u/2359828/" title="${item.userInfo.user_name }"
											class="name">${item.userInfo.user_name }</a></li>
								</c:forEach>
					</c:if>
					</ul>
				</div>

			</aside>
		</div>
		<input id="isjoin" type="hidden" value="false">
	</div>

	<!-- 尾部 --------------------------------------------------------------------------------------------  -->
	<jsp:include page="footer.jsp"></jsp:include>

	<!-- 为登录就弹出框 ---------------------------------------------- -->
	<div aria-hidden="false"
		style="display: none; position: absolute; z-index: 20000;"
		id="login-modal" class="modal in" data-url="/login/ajax">
		<div class="modal-dialog ">
			<div class="modal-content login-modal-reset">
				<div class="modal-header">
					<button type="button" class="close" id="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title text-center">登录好知</h4>
					<img class="img-responsive" src="images/login-model.png">
				</div>
				<div class="modal-body">
					<div class="login-box reset">

						<form data-widget-cid="widget-5" novalidate="novalidate"
							id="login-ajax-form" class="form-vertical form-vertical-small"
							method="post" action="">

							<div class="alert alert-danger" style="display: none;"></div>

							<div class="form-group">
								<div class="controls">
									<label class="fa-label"> <i class=""
										style="color: #15C288"></i>
									</label> <input data-explain="" data-widget-cid="widget-6"
										class="form-control" id="ajax-username" name="_username"
										placeholder="邮箱/手机/昵称" data-display="请输入邮箱/手机/昵称" type="text">
									<div class="help-block" style="display: none; color: red;width:200px;margin-left:110px;">请输入用户名</div>
								</div>
							</div>

							<div class="form-group">
								<div class="controls">
									<label class="fa-label"> <i class="fa fa-unlock-alt"></i>
									</label> <input data-explain="" data-widget-cid="widget-7"
										class="form-control" id="ajax-password" name="_password"
										placeholder="密码" data-display="密码" type="password">
									<div class="help-block" style="display: none; color: red;margin-left:110px;">请输入密码</div>
								</div>
							</div>
							<div class="form-group" id="log">
								<div class="controls">
									<span class="checkbox mtm "> <a
										class="pull-right active"
										href="">忘记密码</a>
									</span>
								</div>
								<input class="login-btn btn btn-primary" id="login" value="登录"
									type="button">


							</div>
							<input name="_csrf_token"
								value="e5ba33c2f523f18887afc283816ce0e566e8c07e" type="hidden">
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<div class="toregister">
						<a class="active" href="">如果没有好知账号？立即注册&gt;</a>
						<!--?</div-->
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="studyCurrentCourse" class="modal in"
		style="display: none; position: absolute; z-index: 20000;">
		<div class="modal-dialog ">
			<div class="modal-content login-modal-reset">
				<div class="modal-header">
					<button type="button" class="close" id="close2" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title text-center" style="color: #333;">您还未加入学习此课程，请加入课程后再评论!</h4>
					<img class="img-responsive" src="images/login-model.png"
						style="margin-left: 120px; margin-top: 10px">
				</div>
				<div class="modal-body">
					<div class="login-box reset">
						<form data-widget-cid="widget-5" novalidate="novalidate"
							id="login-ajax-form" class="form-vertical form-vertical-small"
							method="post">
							<div class="alert alert-danger" style="display: none;"></div>
							<div class="form-group">
								<div class="col-sm-3 control-label"
									style="margin-top: 5px; padding-left: 40px;">课程名称:</div>
								<div class="col-sm-9 controls">
									<span id="joincourseid" style="display:none;"></span>
									<span class="control-text text-muted" id="currentCourseName">《【已结束】室外人像用光指南》</span>
									<input type="hidden" value="" name="lessonId">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-3 control-label"
									style="margin-top: 5px; padding-left: 40px;">用户名称:</div>
								<div class="col-sm-9 controls">
									<span class="control-text text-muted" id="currentUname">珘珘</span>
									<input type="hidden" value="" name="lessonId">
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button id="join-course-btn" class="btn btn-primary"
						data-target="#course-buy-form" data-toggle="form-submit"
						type="button" data-submiting-text="正在加入..."
						data-loading-text="正在加入...">加入学习</button>
				</div>
			</div>
		</div>
	</div>
	
	<div id="message" class="modal in" style="display: none; position: absolute; z-index: 20000;">
	    <div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
		<button class="close" id="close3" aria-hidden="true" data-dismiss="modal" type="button">×</button>
		<h4 class="modal-title">发送私信</h4>
		</div>
		<div class="modal-body">
		<form id="message-create-form" class="form-horizontal" action="" method="post" novalidate="novalidate" data-widget-cid="widget-12">
		<div class="form-group">
		<div class="col-md-2 control-label">
		<label class="required" for="message_receiver">收件人</label>
		</div>
		<div class="col-md-8 controls">
		<input id="message_receiver" class="form-control" type="text" value="" data-url="/message/check/receiver" rows="1" required="required" name="message[receiver]" data-widget-cid="widget-13" data-explain="">
		<div class="help-block" style="display:none;"></div>
		</div>
		</div>
		<div class="form-group">
		<div class="col-md-2 control-label">
		<label class="required" for="message_content">内容</label>
		</div>
		<div class="col-md-8 controls">
		<textarea id="messageContent" class="form-control" rows="5" required="required" name="message[content]" data-widget-cid="widget-14" data-explain=""></textarea>
		<div class="help-block" style="display:none;"></div>
		</div>
		</div>
		<input type="hidden" value="" name="_csrf_token">
		</form>
		</div>
		<div class="modal-footer">
		<button id="message-create-form-btn" class="btn btn-primary" data-target="#message-create-form" data-toggle="form-submit" data-loading-text="发送中...">发送</button>
		</div>
		</div>
	</div>
	</div>

	<div id="loadingDiv"
		style="position: fixed; display: none; z-index: 2000; top: 0px; left: 0px; width: 100%; height: 100%; background-color: #333; opacity: 0.8"></div>

</body>

</html>