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
<title>${onecourse.course_name}</title>

<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">

<link href="css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/howzhi.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/tcdPageCode.css">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="js/assets/css/font-awesome.css" rel="stylesheet">
<link href="css/smohan.face.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/top.js"></script>
<script type="text/javascript" src="js/smohan.face.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.page.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/joinproject.js"></script>
<script type="text/javascript" src="js/joinproject2.js"></script>
<style>
.form-group {
	margin-top: 14px;
	margin-left: 30px;
	
}
.form .btn .submit {
    background-color: #15c288;
    color: #fff;
}
.ly-course-img-moreproject {
	height: 147px;
	width: 261px;
	background-size: cover;
}

.modal-dialog {
	margin-left: 28%;
	margin-top: 6%;
	position: fixed;
}

.login-box .form-group .form-control {
	border-radius: 5px;
	height: 45px;
	padding-left: 65px;
	width: 100%;
}

.modal-content login-modal-reset {
	background-color: #ffc;
	text-align: center;
}

#login-modal .img-responsive {
	margin-left: 120px;
	margin-top: 20px;
}

#login-modal input {
	width: 300px;
	margin-left: 110px;
}

#log {
	width: 300px;
}
</style>
<script type="text/javascript">
	var attention;
	var flag = "${(empty users)? false : true}";
	var uname = '${users.user_name}';
	var userid = '${users.user_id}';
	var presentid='${users.user_id}';
	var course_id='${onecourse.course_id}';
	var techername='${onecourse.userInfo.user_name}';
	var techerid='${onecourse.userInfo.user_id}';
	var techerpic='${onecourse.userInfo.pic}';
	if("${users}"==""){
		console.info("yes");
		presentid=0;
	}
	function addAnswer(){
		console.info($("#add").val());
		if($("#add").val().trim()==""){
			return false;
		}
		
		
 		/* $.post('courseAnswer/AddAnswerbycqid/',{userid:"${users.user_id}",cqid:$("#cqid").val(),answerContent:$("#add").val()},function(data){
			window.location.href=window.location.href;
		}) */
		 
	}
	function Assessgrade(){
		var grade=${assessGrade};
		if(grade!=null){
			var star1='images/star-off.png',star2='images/star-off.png',star3='images/star-off.png',star4='images/star-off.png',star5='images/star-off.png';
			if(grade<=1){
				star1='images/star-on.png';
			}else if(grade<=2&&grade>1){
				star1='images/star-on.png';star2='images/star-on.png';
			}else if(grade<=3&&grade>2){
				star1='images/star-on.png';star2='images/star-on.png';star3='images/star-on.png';
			}else if(grade<=4&&grade>3){
				star1='images/star-on.png';star2='images/star-on.png';star3='images/star-on.png';star4='images/star-on.png';
			}else{
				star1='images/star-on.png';star2='images/star-on.png';star3='images/star-on.png';star4='images/star-on.png';star5='images/star-on.png';
			}
			$("#xinxin").html("<img src='"+star1+"' alt='1' title='很差'>&nbsp;"
			+"<img src='"+star2+"' alt='2' title='较差'>&nbsp;"
			+"<img src='"+star3+"'  alt='3' title='还行'>&nbsp;"
			+"<img src='"+star4+"' alt='4' title='推荐'>&nbsp;"
			+"<img src='"+star5+"' alt='5' title='力荐'>"
		/* 	+"<input type='hidden' name='score' value='3">" */
			);
			
		}
	}	
function myAssess(){
	if(userid!=null&&userid!=''){
		mystar=$("#mystar").val();
		if(mystar>5||mystar<1){
			return 0;
		}
		$.ajax({
			url:"toPingjiaCourse.action",
			data: {"user_id": userid,
						"course_id":course_id,
						"assess":mystar
			},
			method:"POST",
			type:"POST",
			dataType: 'json',
			success:function(data){
				if(data=="false1"){
					 alert("你还没加入该课程...")
				}else if(data=="false2"){
					 alert("评价分数异常...")
				}else if(data=="true"){
					 alert("评价成功...")
				}
				myrefresh()
			}
		});
		
		
		
	}else{
		alert("温馨提示：你还没有 登陆....");
	}
}

</script>
</head>

<body class="course-dashboard-page">

<c:set value="${users}" var="us"/>
<c:if test="${empty us }">
	<jsp:include page="topf.jsp"></jsp:include>
</c:if>
<c:if test="${us!=null }">
	<jsp:include page="topb.jsp"></jsp:include>
</c:if>
	<section class="course-header-new">
		<div class="container">
			<!-- 面包屑 -->
			<div class="bread_crumb">

				<div class="breadcrumb">
					<a href="toCourse.action/${onecourse.class_id}" >${onecourse.lass_category.class_categorys}</a> <span> &gt; </span><a href="">${onecourse.course_name} <span class="in"></span>
					</a>
					
				</div>

			</div>

			<div class="row hz-course-before clearfix">
				<div class="pic col-md-5 col-xs-12">
					<img class="img-responsive" id="img-responsive" src="${onecourse.coursephoto}"
						alt="">
				</div>
				<div class="info col-md-7 col-xs-12 pull-right">
					<h1 id="title">${onecourse.course_name} </h1>
					<div class="action">
						<div class="share hz-share top pull-right">
							<a href="javaScript:void(0);" class=" dropdown-toggle"
								data-toggle="dropdown"> <i class="glyphicon glyphicon-link"
								style="color: rgb(0, 0, 0)"></i>分享
							</a>

						</div>
						<a class="favorite pull-right" href="javascript:"
							id="favorite-btn" data-url="/course/9573/favorite"> <i
							class="glyphicon glyphicon-heart" style="color: rgb(0, 0, 0);"></i>收藏
						</a> <a class="favorite active pull-right" id="unfavorite-btn"
							href="javascript:" data-url="/course/9573/unfavorite"
							style="display: none;"> <i class="glyphicon glyphicon-heart"
							style="color: rgb(0, 0, 0);"></i>已收藏
						</a>
					</div>
					<div class="score">
						<span class="rating-btn mls fsm" data-rating="3" id="xinxin"
									data-img-path="/assets/img/raty"
									style="cursor: pointer; width: 100px;">
									<c:if test="${!empty assessGrade}">
									<script>Assessgrade();</script>
									</c:if>
									<input
									type="hidden" name="score" value="3"></span> <span id="ass"></span> <span
							id="asscount">（${assessCount}人评价）</span>
							<b style="float:right"><span>我要评价：</span>
							<select id="mystar">
							  <option value ="1">1星</option>
							  <option value ="2">2星</option>
							  <option value="3">3星</option>
							  <option value="4">4星</option>
							  <option value="5">5星</option>
							</select>&nbsp&nbsp&nbsp&nbsp<a href="javascript:void(0);" onclick="myAssess()">提交</a>
							&nbsp&nbsp&nbsp&nbsp
							</b>
					</div>

					<ul class="metas clearfix">
						<li class="bd"><i class="glyphicon glyphicon-book"
							style="color: rgb(0, 0, 0);"></i>
							<p id="c1">课时：${class_hour.size()}</p></li>
						<li class="bd"><i class="glyphicon glyphicon-user"
							style="color: rgb(0, 0, 0);"></i>
							<p id="c2"></p>学员：${all_study.size() }</li>
						<li><i class="glyphicon glyphicon-zoom-in"
							style="color: rgb(0, 0, 0);"></i>
							<p id="c3"></p>关注：${stu_count}</li>
						<li class="join"><a class="btn btn-primary"
							data-toggle="modal" href="javascript:void(0);"
							data-url="/course/9573/buy?targetType=course" onclick="tojoinCOurse()" id="joinCourse">加入课程</a>
							
							<a class="btn btn-primary"
							data-toggle="modal" href="javascript:void(0);"
							 id="joinedCourse" style="display:none">已加入课程</a>
						
						</li>

					</ul>
				</div>
			</div>

		</div>
		<input id="isjoin" type="hidden" value="false">
	</section>

	<section class="container">
		<div class="row">
			<div class="col-md-9">

				<div class="alert alert-warning announcements aside-notice"
					role="alert">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<a style="color: #ff5e06" class="alert-link"
									href="http://www.howzhi.com/course/9573/#modal"
									data-toggle="modal"
									data-url="/announcement/254/9573/show?targetType=course"> <i
									class="es-icon es-icon-infooutline"></i>
									好知课堂官方讨论群：499012956欢迎各位小伙伴进群讨论。好知课堂会...
								</a>
							</div>
						</div>
					</div>
				</div>

				<div class="course-lessons flat" data-widget-cid="widget-1"  id="course-content">
					<div class="course-nav clearfix affix-top" id="myScrollspy">
						<ul class="nav" id="nav">

							<li class="active"><a href="javascript:void(0);"onclick="myrefresh()">简介</a></li>

							<li class=""  id="showallclasshour"><a  href="javascript:void(0);" onclick="showclasshour()">课时 <span
									id="cm"></span>
							</a></li>
							<li class="hz-x-hide "><a href="javascript:void(0);" onclick="shownotes(0)">笔记
									<span id="bj"></span>
							</a></li>
							<li class="hz-x-hide "><a href="javascript:void(0);" onclick="courseQuestion(0)">问答
									<span id="questionnumber"></span>
							</a></li>
							<li class="hz-x-hide "><a href="javascript:void(0);"onclick='showstudent()'>学员
									<span id="Allstudent">(${all_study.size() })</span>
							</a></li>
							<li class=""><a href="javascript:void(0);" onclick="showAssess(0)">评论 <span
									id="Allcomment"></span></a></li>
							<li class="btnbar pull-right"><a
								class="btn btn-primary joinbtn pull-right mlm"
								data-toggle="modal" href="javascript:void(0);"
								data-url="/course/9573/buy?targetType=course">加入课程</a></li>
						</ul>
					</div>
					<!--  课程详情 --------------------------------------------------- -->
					<div class="hz-overview hzcourse-detail" style="display: block;"
						id="courseInfo">
						<h3 class="overview-title hz-line-left">课程简介</h3>
						<div class="editor-text ptl">
							<p id="courseinfo">
							${onecourse.course_description }
								<br>
							</p>
						</div>
						<h3 class="overview-title hz-line-left">课程标签</h3>
						<ul class="tag mtl phl clearfix">
							<li><a href="" id="courseing">${onecourse.course_name }</a></li>
						</ul>

						<h3 class="overview-title hz-line-left">课程列表</h3>
							<ul class="period-list hz-courselist" id="course-item-list">
							<c:if test="${class_hour.size()>0}"> 
								<c:forEach items="${class_hour}" var="item" >
									<li class="period lesson-item lesson-item-67383 " data-num="1" data-id="67383">
											<a title="${item.title}" href="javascript:void(0);" onclick="toplaycourse(${onecourse.course_id},${item.class_hour_id})">
											<i class="es-icon es-icon-undone status-icon"></i>
											<span class="title">L${item.courseseq}：${item.title}</span>
										<!-- 	<span class="date" title="视频时长25:10">(75:10)</span> -->
											<span class="course-type">
												<i class="glyphicon glyphicon-play" title="" data-placement="top" data-toggle="tooltip" data-original-title="视频课程"></i>
											</span>
											</a>
									</li>
								</c:forEach>
							</c:if> 
							<c:if test="${class_hour.size()}<=0">
								<li class="period lesson-item lesson-item-67383 "style="text-align: center; color: #616161">
								该课程还未添加课时！！！
								</li>
							</c:if>
							</ul>
							
					</div>
					<!--  课程详情分割线 ------------------------------------ -->
					<!--  笔记 ----------------------------------- -->
					<div class="course-notes course-in" style="display: none;"
						id="courseNotes">
						<div class="notes-header">
							<a href="javascript:void(0);"
								class="  active  nn">同学笔记</a> <span><a
								href="javascript:void(0);">最热</a> <a href="javascript:void(0);"
								class="active">最新</a></span>
						</div>
						<ul class="notes-list" id="noteslist">
							<li class="clearfix" style="text-align: center; color: #616161">
								该课程还没有笔记！！！</li>
						</ul>

					</div>
					<!--  笔记分割线 ----------------------------------  -->
					<!--  w問答分割線 -------------------------------------- -->
					<div class="course-question course-in" style="display: none;"
						id="courseQuestion">
						<div class="question-header">
							共<span id="questionnumbertwo">24</span>个问题
						</div>
						<!-- <form class="form-horizontal" role="form">
							<input id="thread_title" class="form-control question_title"
								style="height: 60px;"
								placeholder="用一句话说清你的问题" name="title"
								data-url="/sensitive/check/course-question"
								data-widget-cid="widget-1" data-explain="" onfocus="join()">
							<div class="help-block">
								<span class="text-danger">请输入标题</span>
							</div>
							<div class="btns clearfix">
								<a class="more-detail pull-left" href="javascript:;"
									style="display: inline;"> <i
									class="fa fa-exclamation-circle"></i> 添加问题详细描述
								</a>
								<button id="question-submit" class="btn submit pull-right "
									style="background-color: #15c288; color: #fff;" data-id="153"
									type="submit">添加问题</button>

							</div>

						</form> -->

						<ul class="course-in-ul" id="questionAndAnswer">
							

						</ul>
						<div class="detail flat" id="detailquestion" style="display:none;">

							<div class="editor-text">
								<p id="questionContent">老师好 &nbsp;SHL调色跟相机校准啥区别 &nbsp; 谢谢</p>

							</div>
							<div class="related-course">
								<h2>
									该问题来自： <a class="con" href="http://www.howzhi.com/course/9573/" id="questionCourse">人像摄影高级教程</a>
								</h2>
								<p>
									相关课时： <a class="con"
										href="http://www.howzhi.com/course/9573/lesson/67389" id="questionCm">风光摄影后期</a>
								</p>
							</div>
							
							<div class="question-answer">
								<div class="head clearfix">
									<h4 id="answernumber">1个回答</h4>
								</div>
								<div class="sidebar-judge">
									<ul class="thread-post-list" id="showanswer">
										<li id="post-2529" class="media">
											<div class="media-left">
												<a class="js-user-card"
													href="http://www.howzhi.com/u/2360420/"
													data-card-url="/user/2360420/card/show"
													data-user-id="2360420"> <img class="avatar-sm  "
													src="./detailquestion_files/111544098f46302659.jpg"
													　alt="此间年少">
												</a>

											</div>
											<div class="question-contents media-body">
												<div class="name ">
													<a class="link-light "
														href="http://www.howzhi.com/u/2360420/">此间年少</a> <span
														class="day text-right">18秒前</span>
												</div>
												<div class="content">efef</div>
												<div class="answer-actions pull-right">
													<a
														href="http://www.howzhi.com/question/57595/post/2529/edit"><i
														class="glyphicon glyphicon-edit"></i> 编辑</a>
												</div>
											</div>
										</li>

									</ul>
								</div>

								<form class="form " id="course-thread-form" method="POST"
									action="courseAnswer/addAnswer" onsubmit="justifyAdd()">
								<input type="hidden" value="" id="cqid" name="cqid"/>
										
									<div class="form-group mb40 in-focus">
										<label class="control-label required hidden"
											for="thread_content">内容</label>
										<div class="controls">
											<input id="add" type="text"
												class="form-control note-content" name="content" onclick="justif()" /> 
											<p class="help-block"></p>
										</div>
									</div>

									<input type="hidden" name="_csrf_token"
										value="eba2b4726152ad38d153f754f50c926d4c665cc2">
									<div class="btns clearfix" onclick="addAnswer()">
										<input class="btn submit pull-right " type="button"
											id="question-submit-btn" data-id="9573" value="发表" >
									</div>
									<div class="hz-login-editor"></div>
								</form>


							</div>
						</div>
						<div class="tcdPageCode" id="qatcpage"></div>

					</div>
					<!--  问答分割线 ----------------------------------- -->
					<!--  学员分割线 --------------------------------- -->
					<div class="course-classmate course-in" style="display: none;"
						id="courseClassmate">
<!-- 						<h4>
							<span class="dash-icon"></span>授课老师
						</h4>
						<ul class="course-in-ul clearfix" id="studentsInfo">
							<li><a id="teacher" class="js-user-card"
								href="http://www.howzhi.com/u/1687444/"
								data-card-url="/user/1687444/card/show" data-id="1687444">
									<img id="teacherimg" class="avatar-ll"
									src="images/125522a1b6f0301474.jpg" alt="杨最醉">
							</a>

								<p>
									<a href="http://www.howzhi.com/u/1687444/" id="teachername">杨最醉</a>
								</p></li>
						</ul>
						<h4>
							<span class="dash-icon"></span>学员
						</h4>
						<ul class="course-in-ul clearfix" id="studentlist">
							
						

						</ul>



						<div class="tcdPageCode" id="stcpage"></div> -->



					</div>
					<!--  学员分割线 ------------------------------ -->
					<!-- 评论分割线 ---------------------------------------- -->
					<div class="course-notes course-in"  style="display: none;"
						id="courseAssess">
						
						  <ul class="course-in-ul">
                                  <li>
                 <h4>
                    <span class="q-icon"></span><a class="js-nav" href="/question/57888">请问能下载吗？</a>
                                                             
                  </h4>
                   <p>by     <a class="link-light link-muted" href="/u/2423289/">泡宓</a>
   • 0 回答 • 18浏览</p>
                </li>
                </ul>
						<div class="tcdPageCode" id="commenttcpage"></div>
					</div>
					<!--  评论分割线 ------------------------------------- -->

				</div>

				<div class="course flat nopad">
					<div class="section-header">
						<h2>你感兴趣的课程</h2>
					</div>
					<div class="section-body">
						<div class="row">
							<div class="col-md-4 col-sm-6 ">

								<div class="course-item">
									<div class="">

										<img src="images/065523b78450837537.jpg" alt="人像摄影入门"
											class="ly-course-img-moreproject"> <a
											href="http://www.howzhi.com/course/106/">
											<div class="mask">
												<span class="btn btn-primary">开始学习</span>
											</div>
										</a>
									</div>
									<div class="course-info">
										<div class="title">
											<span class="label label-p">人像</span> <a class="transition"
												href="http://www.howzhi.com/course/106/">人像摄影入门</a>
										</div>
										<div class="metas">
											<span>12万+浏览</span>/ <span>7064学员</span>/ <span>4.1评分</span>
										</div>
										<div class="teacher text-o-show">
											<a class=" js-user-card" href="http://www.howzhi.com/u/187/"
												data-card-url="/user/187/card/show" data-user-id="187">
												<img class="avatar-ss " src="images/145733d2af26635228.jpg"
												alt="乱流"> 乱流
											</a> <span class="daren-icon-t" title="达人"></span>

											<div class="price free pull-right">
												<span>免费</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6  nobd">

								<div class="course-item">
									<div class="course-img">

										<img src="images/0650262eb443828220.jpg" alt="人像摄影布光入门"
											class="ly-course-img-moreproject"> <a
											href="http://www.howzhi.com/course/157/">
											<div class="mask">
												<span class="btn btn-primary">开始学习</span>
											</div>
										</a>
									</div>
									<div class="course-info">
										<div class="title">
											<span class="label label-p">人像</span> <a class="transition"
												href="http://www.howzhi.com/course/157/">人像摄影布光入门</a>
										</div>
										<div class="metas">
											<span>11万+浏览</span>/ <span>3989学员</span>/ <span>4.3评分</span>
										</div>
										<div class="teacher text-o-show">
											<a class=" js-user-card" href="http://www.howzhi.com/u/187/"
												data-card-url="/user/187/card/show" data-user-id="187">
												<img class="avatar-ss " src="images/145733d2af26635228.jpg"
												　alt="乱流"> 乱流
											</a> <span class="daren-icon-t" title="达人"></span>

											<div class="price free pull-right">
												<span>免费</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6 ">

								<div class="course-item">
									<div class="course-img">

										<img src="images/0646571e86d5209598.jpg" alt="人像摄影课程"
											class="class="ly-course-img-moreproject"> <a
											href="http://www.howzhi.com/course/3559/">
											<div class="mask">
												<span class="btn btn-primary">开始学习</span>
											</div>
										</a>
									</div>
									<div class="course-info">
										<div class="title">
											<span class="label label-p">人像</span> <a class="transition"
												href="http://www.howzhi.com/course/3559/">人像摄影课程</a>
										</div>
										<div class="metas">
											<span>10万+浏览</span>/ <span>9091学员</span>/ <span>4.1评分</span>
										</div>
										<div class="teacher text-o-show">
											<a class=" js-user-card"
												href="http://www.howzhi.com/u/1304328/"
												data-card-url="/user/1304328/card/show"
												data-user-id="1304328"> <img class="avatar-ss "
												src="images/165229dcc0b7462331.jpg" alt="维纳斯学院">
												维纳斯学院
											</a>

											<div class="price free pull-right">
												<span>免费</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<aside class="col-md-3 course-sidebar">

				<div class="flat sidebar-teach media">
					<h3>课程教师</h3>
					<div class="media-left">
						<a class="js-user-card" id="Tmsg" href="page/person.jsp?userid="
							data-card-url="/user/1687444/card/show" data-id="1687444">
							<img class=" avatar-sm " id="tphoto" src="images/avatar.png"
							alt="">
						</a>

					</div>
					<div class="teach-info media-body">
						<p class="text-o-show"> 
							<a class="link-light " href="http://www.howzhi.com/u/1687444/" id="tname">${onecourse.userInfo.user_name}</a>
						</p>
						<p>
							<a href="http://www.howzhi.com/u/1687444/course/created"><span id="teachnumber">1</span>在教</a>
							<a href="http://www.howzhi.com/u/1687444/fans"><span id="fans">2</span>粉丝</a>
						</p>
					</div>
					<div class="ta clearfix" data-role="followUser">
						<a class="act first follow-btn" href="javaScript:void(0);"
							data-url="/user/8441/follow" id="attion"> <i
							class="fa fa-plus"></i> 关注TA
						</a> <a class="act first unfollow-btn" href="javaScript:void(0);"
							data-url="/user/8441/unfollow" style="display: none"
							 id="attion2"> <i class="fa fa-check" ></i> 已关注
						</a> <a id="mes" class="act" href="javaScript:void(0);" data-toggle="modal"
							data-target="#modal" data-url="/message/create/8441"> <i
							class="fa fa-envelope"></i> 私信
						</a>
					</div>
				</div>

				<div class="hz-ad flat">
					<a href="http://www.howzhi.com/classroom/17" target="_blank"><img
						src="http://f1.howzhi.com/system/block_picture_1460094834.jpg"
						class="img-responsive" alt="牛牛人像摄影班"></a>
				</div>

				<div class="flat sidebar-judge">
					<h3>最新评论</h3>
					<ul id="mediacomment">
						<!-- 右边的评论 -->
						<c:if test="${assess.size()>0}"> 
						<c:forEach items="${assess}" var="item" >
						<li class="media">
							<div class="media-left">
								<a class=" js-user-card" href="javascript:void(0);"
									data-card-url="/user/1559536/card/show" data-user-id="1559536">
									<img class="avatar-xs " src="${item.userInfo.pic}" 　alt="${item.userInfo.user_name}">
								</a>
							</div>
							<div class="comment-content media-body ">
								<div class="name">
									<a class="link-light " href="javascript:void(0);">${item.userInfo.user_name}</a>
									<span class="day">${item.time}</span>
								</div>
								<div class="content">${item.content}</div>
							</div>
						</li>
					</c:forEach>
					</c:if>
					</ul>
					<div class="more">
						<a href="javascript:void(0);"><i
							class="glyphicon glyphicon-chevron-right"></i>查看更多</a>
					</div>
				</div>

				<div class="panel panel-default student-dynamic">

					<div class="panel-heading">
						<h3 class="panel-title">
							<i class="es-icon es-icon-recentactors"></i>学员动态
						</h3>
					</div>

					<div class="panel-body" id="studentsdynamic">

						<c:if test="${all_study.size()>0}"> 
						<c:forEach items="${all_study}" var="item"  begin='0'  end='2'>
						<div class="media media-number-o">
							<div class="media-body">
								<a class="link-light " href="http://www.howzhi.com/u/2355584/">${item.userInfo.user_name}</a>
								开始学习课时 <a class="link-dark"
									href="http://www.howzhi.com/course/9573/" title="来自《${item.course.course_name}》">${item.course.course_name}</a>
							</div>
						</div>
						</c:forEach>
						</c:if>
					</div>

				</div>

				<div class="flat sidebar-notes">
					<h3>课程最新笔记</h3>
					<ul id="rightNote">
						<c:if test="${notes.size()>0}"> 
						<c:forEach items="${notes}" var="item" >
						<li>
							<h4>
								<a href="javascript:void(0);"><i
									class="glyphicon glyphicon-pencil"></i>${item.stu_user.user_name}的笔记</a>
							</h4> <span>${item.notes_content}</span>
						</li>
						</c:forEach>
						</c:if>
					</ul>
					<div class="more">
						<a href="http://www.howzhi.com/course/9573/notes"><i
							class="glyphicon glyphicon-chevron-right"></i>查看更多</a>
					</div>
				</div>

<!-- 				<div class="flat sidebar-question">
					<h3>课程最新问题</h3>
					<ul id="topquestion">

						<li><span></span> <span
							class="glyphicon glyphicon-question-sign"
							style="color: rgb(4, 188, 131);"></span><a
							href="http://www.howzhi.com/question/57542">后期修图问题</a></li>



					</ul>
					<div class="more">
						<a href="http://www.howzhi.com/course/9573/questions"><i
							class="glyphicon glyphicon-chevron-right"></i>查看更多</a>
					</div>
				</div> -->

				<!--新加入学员-->
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
	</section>

	<div class="modal fade" aria-hidden="true" style="display: none;"
		data-url="/hzpop/view/0" id="pop-box-show" data-target-id="0"
		data-target-type="course" data-is-show="0"></div>

	<!--  尾部  -->
	<jsp:include page="footer.jsp"></jsp:include>

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
							method="post" action="/login_check">

							<div class="alert alert-danger" style="display: none;"></div>

							<div class="form-group">
								<div class="controls">
									<label class="fa-label"> <i class="fa fa-user"></i>
									</label> <input data-explain="" data-widget-cid="widget-6"
										class="form-control" id="ajax-username" name="_username"
										placeholder="邮箱/手机/昵称" data-display="请输入邮箱/手机/昵称" type="text">
									<div class="help-block" style="display: none;"></div>
								</div>
							</div>

							<div class="form-group">
								<div class="controls">
									<label class="fa-label"> <i class="fa fa-unlock-alt"></i>
									</label> <input data-explain="" data-widget-cid="widget-7"
										class="form-control" id="ajax-password" name="_password"
										placeholder="密码" data-display="密码" type="password">
									<div class="help-block" style="display: none;"></div>
								</div>
							</div>
							<div class="form-group" id="log">
								<div class="controls">
									<span class="checkbox mtm "> <a
										class="pull-right active"
										href="http://www.howzhi.com/password/reset">忘记密码</a>
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

	<script type="text/javascript"> 
		var mouseXPosition = 0;
		var mouseYPosition = 0;

		function getElementPos(el) {
			var ua = navigator.userAgent.toLowerCase();
			var isOpera = (ua.indexOf('opera') != -1);
			var isIE = (ua.indexOf('msie') != -1 && !isOpera); // not opera spoof 

			if (el.parentNode === null || el.style.display == 'none') {
				return false;
			}
			var parent = null;
			var pos = [];
			var box;
			if (el.getBoundingClientRect) //IE 
			{
				box = el.getBoundingClientRect();
				var scrollTop = Math.max(document.documentElement.scrollTop,
						document.body.scrollTop);
				var scrollLeft = Math.max(document.documentElement.scrollLeft,
						document.body.scrollLeft);
				return {
					x : box.left + scrollLeft,
					y : box.top + scrollTop
				};
			} else if (document.getBoxObjectFor) // gecko 
			{
				box = document.getBoxObjectFor(el);
				var borderLeft = (el.style.borderLeftWidth) ? parseInt(el.style.borderLeftWidth)
						: 0;
				var borderTop = (el.style.borderTopWidth) ? parseInt(el.style.borderTopWidth)
						: 0;
				pos = [ box.x - borderLeft, box.y - borderTop ];
			} else // safari & opera 
			{
				pos = [ el.offsetLeft, el.offsetTop ];
				parent = el.offsetParent;
				if (parent != el) {
					while (parent) {
						pos[0] += parent.offsetLeft;
						pos[1] += parent.offsetTop;
						parent = parent.offsetParent;
					}
				}
				if (ua.indexOf('opera') != -1
						|| (ua.indexOf('safari') != -1 && el.style.position == 'absolute'))

				{
					pos[0] -= document.body.offsetLeft;
					pos[1] -= document.body.offsetTop;
				}
			}
			if (el.parentNode) {
				parent = el.parentNode;
			} else {
				parent = null;
			}
			while (parent && parent.tagName != 'BODY'
					&& parent.tagName != 'HTML') { // account for any scrolled 

				ancestors
				pos[0] -= parent.scrollLeft;
				pos[1] -= parent.scrollTop;
				if (parent.parentNode) {
					parent = parent.parentNode;
				} else {
					parent = null;
				}
			}
			return {
				x : pos[0],
				y : pos[1]
			};
		}

		function messagedetail(obj) {
			var position = getElementPos(obj);
			var left = position.x;
			var top = position.y;
			console.info(left);
			console.info(top);
			console.info("我进来了");
			$("#user-card-store").css({
				"left" : left - 70 + "px",
				"top" : top + 80 + "px"
			});
			$("#user-card-store").css("display", "block");
			$("#user-card-store").css("position", "absolute");
		}
		function hiddenMsg() {
			console.info('我出发了');
			$("#user-card-store").css("display", "none");
		}

		
	</script>
	
	

</body>
<style>
.pagination{
text-align:center !important;list-style-type:none !important;
}
.pagination li{
display:inline !important;
}
</style>
</html>