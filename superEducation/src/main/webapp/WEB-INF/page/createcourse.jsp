 <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="">
<head>
<base href="/superEducation/"/>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="renderer" content="webkit">
<meta name="baidu-site-verification" content="XN2OVFQdUg">
<title>创建课程 - 好知网-重拾学习乐趣-Powered By Howzhi</title>
<meta name="keywords"
	content="免费教程 在线教育  在线学习  知识分享 教程 视频教程 视频教学  网络教学  自学教程 摄影教程 折纸教程 编程教程  电脑教程  健身教程  ps教程  公开课">
<meta name="description"
	content="好知网是一个综合性在线学习平台。这里有大量的在线课程，课程涵盖计算机知识，企业管理，摄影，photoshop，职业技能，运动、外语、美食，时尚，手工艺，公开课，职业资格考试等。">
<meta content="07a4f60e59a06d6a2bb50653922d7fcc9d0a9ea5"
	name="csrf-token">
<meta content="1" name="is-login">
<meta content="1" name="is-open">
<link
	href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/howzhi.css">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/top.js"></script>
<script type="text/javascript">
	function createcourse(){
		var coursename=$("#course_title").val();
		/* location.href="page/manage.jsp?coursename="+coursename+""; */
		$.post("course/sendtitle",{coursename:coursename},function(data){
			if(data==1){
				location.href="course/manage.action";
			}                             
		});
	}
</script>
<%  String coursename=(String)session.getAttribute("ctitle");
		 if(coursename!=null){
			 session.removeAttribute("ctitle");
			 session.removeAttribute("cintroduction");
			 session.removeAttribute("ctid");
			 session.removeAttribute("courseting");
			 session.removeAttribute("basicstatus");
			 session.removeAttribute("courseType");
			 session.removeAttribute("coursephoto");
			session.removeAttribute("picturestatus");
			session.removeAttribute("courseseq");
			session.removeAttribute("addlessions");
			session.removeAttribute("cManage");
		 }
   
   %>
</head>
<body class="index">
	<jsp:include page="topb.jsp"></jsp:include>

	<div class="container" id="content-container">

		<section class="container flat create-course">
			<h1>
				创建课程<span>CREATE A COURSE</span>
			</h1>
			<div class="create-index clearfix one">
				<div class="col-md-6 left">
					<form id="course-create-form" class="form-horizontal" method="post" action="page/manage.jsp" novalidate="novalidate"
						data-widget-cid="widget-0">
						<div class="form-group create-title">
							<div class="control-label">
								<label class="required title" for="course_title">课程标题</label>
							</div>
							<div class="controls">
								<input id="course_title" class="form-control" type="text"
									data-explain="" placeholder="请填写课程标题"
									data-widget-cid="widget-1" required="required" name="title">
								<a class="text-muted" target="_blank"
									href="http://www.howzhi.com/course/11662/"> <i
									class="glyphicon glyphicon-question-sign"
									style="font-size: 12px;"></i>如何创建课程
								</a>
							</div>
						</div>
						<div class="form-group">
							<input id="course-create-btn"
								class="btn active btn-primary pull-right" type="button"
								value="创建课程" data-submiting-text="正在创建" onclick="createcourse()">
						</div>

						<input type="hidden" name="_csrf_token"
							value="07a4f60e59a06d6a2bb50653922d7fcc9d0a9ea5"> <input
							type="hidden" value="UGC" name="howzhi_course_source">
					</form>
				</div>
				<div class="col-md-6">
					<div class="import-title">
						<i class="glyphicon glyphicon-file" style="font-size: 16px;"></i>
						从视频专辑导入课程
					</div>
					<p class="inport_info">
						已支持优酷、腾讯视频、网易公开课、爱奇艺教育<br>的视频专辑导入。
					</p>
					<p class="inport_info">
						<a class="active"
							href="http://www.howzhi.com/ugc/course/import/index">» 立即使用</a>
					</p>
				</div>
			</div>
		</section>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>