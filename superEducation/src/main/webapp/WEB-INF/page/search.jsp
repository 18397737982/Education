
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<!-- saved from url=(0056)http://www.howzhi.com/search?q=%E7%94%BB%E7%94%BB&t=user -->
<html class="">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<base href="/superEducation/" />
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
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/es-icon.css">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script src="js/top.js"></script>


</head>
<body class="index">
	<!-- 头部 -------------------------------------------------------------------  -->
	<c:set value="${users}" var="us" />
	<c:if test="${empty us }">
		<jsp:include page="topf.jsp"></jsp:include>
	</c:if>
	<c:if test="${us!=null }">
		<jsp:include page="topb.jsp"></jsp:include>
	</c:if>
	<!-- 头部 分割线------------------------------------------------------------------------------------  -->


	<div class="search-banner">
		<div class="container">
			<form class="input-group search-input-group" id="search-input-group"
				>
				<div class="input-wrap">
					<input id="formsearch" name="q" class="form-control" placeholder="可搜索课程、教师、话题"
						value="${key}" type="text"> <i
						class="js-btn-clear es-icon es-icon-close01"
						style="display: inline;"></i>
				</div>
				<span class="input-group-btn">
					<a href="javascript:void(0);" onclick="formsearch()"><input class="btn btn-primary" type = "button"  value="搜索"></input></a>
				</span> <input name="type" value="course" type="hidden">
			</form>
		</div>
	</div>
	<div class="container" id="content-container">
		<div class="row">
			<div class="col-md-8">
				<div class="es-section">
					<ul class="nav nav-tabs" id="search-nav-tabs" role="tablist">
						<li class="active"><a
							href="/cloud/search?q=%E9%BA%BB%E7%9C%81%E7%90%86%E5%B7%A5%EF%BC%9A%E7%94%B5%E5%BD%B1%E5%93%B2%E5%AD%A6&amp;type=course"
							data-type="course">课程</a></li>
		<!-- 				<li><a
							href="/cloud/search?q=%E9%BA%BB%E7%9C%81%E7%90%86%E5%B7%A5%EF%BC%9A%E7%94%B5%E5%BD%B1%E5%93%B2%E5%AD%A6&amp;type=teacher"
							data-type="teacher">教师</a></li>
						<li><a
							href="/cloud/search?q=%E9%BA%BB%E7%9C%81%E7%90%86%E5%B7%A5%EF%BC%9A%E7%94%B5%E5%BD%B1%E5%93%B2%E5%AD%A6&amp;type=thread"
							data-type="thread">小组话题</a></li> -->
						<li class="highlight" style="left: 0px; width: 72px;"></li>
					</ul>
					<div class="search-result" id="search-result">
						<div class="alert alert-blank alert-sm">
							为您找到课程结果约 <span class="color-danger">147</span>个
						</div>
						<!--课程..........................  -->
						<div class="search-course-list" id="search-course">
							<div class="course-item clearfix">
								<div class="course-img">
									<a href="/course/2099/" target="_blank"><img
										class="img-responsive"
										src="http://f1.howzhi.com/course/2015/07-09/0649085000ed572590.jpg"
										alt=""></a>
								</div>
								<div class="course-info">
									<h3 class="title">
										<a href="/course/2099/" target="_blank"> <em>麻省理工</em>：<em>电影</em><em>哲学</em>
										</a>
									</h3>
									<div class="score">

										<i class="es-icon es-icon-star"></i> <i
											class="es-icon es-icon-star"></i> <i
											class="es-icon es-icon-star"></i> <i
											class="es-icon es-icon-starhalf"></i> <i
											class="es-icon es-icon-staroutline"></i> <span>5人评价(243人学习)</span>
									</div>
									<div class="content">
										课程是针对<em>电影</em>艺术的<em>哲学</em>分析研讨会，重点是通过创造技术的方式，定义一个正式的影片结构。
										特别关注外表与现实，文学和视觉效果，交流和隔阂诸如此类<em>电影</em>中的美学问题。
									</div>
									<ul class="ul-lesson">
										<li><i class="es-icon es-icon-arrowdropleft"></i> <a
											class="link-light" href="/course/2099/" target="_blank">
												课时 1: <em>电影</em><em>哲学</em>第1课
										</a></li>
										<li><i class="es-icon es-icon-arrowdropleft"></i> <a
											class="link-light" href="/course/2099/" target="_blank">
												课时 2: <em>电影</em><em>哲学</em>第2课
										</a></li>
										<li><i class="es-icon es-icon-arrowdropleft"></i> <a
											class="link-light" href="/course/2099/" target="_blank">
												课时 3: <em>电影</em><em>哲学</em>第3课
										</a></li>
									</ul>
								</div>
							</div>
							
							
							
							<div class="course-item clearfix">
								<div class="course-img">
									<a href="/course/1863/" target="_blank"><img
										class="img-responsive"
										src="http://f1.howzhi.com/course/2015/07-09/0648579e573d077181.jpg"
										alt=""></a>
								</div>
								<div class="course-info">
									<h3 class="title">
										<a href="/course/1863/" target="_blank"> 开源<em>电影</em>制作教程
										</a>
									</h3>
									<div class="score">

										<i class="es-icon es-icon-star"></i> <i
											class="es-icon es-icon-star"></i> <i
											class="es-icon es-icon-star"></i> <i
											class="es-icon es-icon-star"></i> <i
											class="es-icon es-icon-star"></i> <span>4人评价(145人学习)</span>
									</div>
									<div class="content">《Sintel》是Blender基金会使用开源免费3D软件Blender制作的一部开源动画片，制作团队一共12人，耗时10个月和40w欧元完成。其主要制作软件均使用的是开源软件，并且制作的素材和技术都...</div>
									<ul class="ul-lesson">
										<li><i class="es-icon es-icon-arrowdropleft"></i> <a
											class="link-light" href="/course/1863/" target="_blank">
												课时 1: sintel<em>电影</em>原片欣赏
										</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<nav class="text-center">
						<ul class="pagination ">
							<li class="active"><a
								href="/cloud/search?q=%E9%BA%BB%E7%9C%81%E7%90%86%E5%B7%A5%EF%BC%9A%E7%94%B5%E5%BD%B1%E5%93%B2%E5%AD%A6&amp;type=course&amp;page=1">1</a></li>
							<li><a
								href="/cloud/search?q=%E9%BA%BB%E7%9C%81%E7%90%86%E5%B7%A5%EF%BC%9A%E7%94%B5%E5%BD%B1%E5%93%B2%E5%AD%A6&amp;type=course&amp;page=2">2</a></li>
							<li><a
								href="/cloud/search?q=%E9%BA%BB%E7%9C%81%E7%90%86%E5%B7%A5%EF%BC%9A%E7%94%B5%E5%BD%B1%E5%93%B2%E5%AD%A6&amp;type=course&amp;page=3">3</a></li>
							<li><a
								href="/cloud/search?q=%E9%BA%BB%E7%9C%81%E7%90%86%E5%B7%A5%EF%BC%9A%E7%94%B5%E5%BD%B1%E5%93%B2%E5%AD%A6&amp;type=course&amp;page=4">4</a></li>
							<li><a
								href="/cloud/search?q=%E9%BA%BB%E7%9C%81%E7%90%86%E5%B7%A5%EF%BC%9A%E7%94%B5%E5%BD%B1%E5%93%B2%E5%AD%A6&amp;type=course&amp;page=5">5</a></li>

							<li><a
								href="/cloud/search?q=%E9%BA%BB%E7%9C%81%E7%90%86%E5%B7%A5%EF%BC%9A%E7%94%B5%E5%BD%B1%E5%93%B2%E5%AD%A6&amp;type=course&amp;page=2"><i
									class="es-icon es-icon-chevronright"></i></a></li>
							<li><a
								href="/cloud/search?q=%E9%BA%BB%E7%9C%81%E7%90%86%E5%B7%A5%EF%BC%9A%E7%94%B5%E5%BD%B1%E5%93%B2%E5%AD%A6&amp;type=course&amp;page=15">尾</a></li>
						</ul>

					</nav>
				</div>
			</div>
			<div class="col-md-4">
				<div class="panel panel-default live-course-body">
					<div class="panel-heading">
						<h3 class="panel-title">推荐课程</h3>
					</div>
					<div class="panel-body es-live-recommend">
						<div class="media">
							<div class="media-left">
								<a href="/course/11662/" title="新版好知使用指南 " target="_blank">
									<img
									src="http://f1.howzhi.com/default/2015/07-09/053732cbb7ad153715.png">
								</a>

							</div>
							<div class="media-body">
								<div class="title">
									<a href="/course/11662/" class="gray-darker" title="新版好知使用指南 "
										target="_blank">新版好知使用指南...</a>
								</div>
								<div class="metas">


									<span class="course-price-widget"> <span class="price">
											<span class="text-success">免费</span>
									</span>


									</span>
								</div>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<a href="/course/10587/" title="方所“创作者现场”" target="_blank">
									<img
									src="http://f1.howzhi.com/course/2015/07-09/0656077bcbfc939242.jpg">
								</a>

							</div>
							<div class="media-body">
								<div class="title">
									<a href="/course/10587/" class="gray-darker" title="方所“创作者现场”"
										target="_blank">方所“创作者现场”...</a>
								</div>
								<div class="metas">


									<span class="course-price-widget"> <span class="price">
											<span class="text-success">免费</span>
									</span>


									</span>
								</div>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<a href="/course/11381/" title="从零开始学化妆" target="_blank"> <img
									src="http://f1.howzhi.com/course/2015/07-09/065647fe0d38580936.jpg">
								</a>

							</div>
							<div class="media-body">
								<div class="title">
									<a href="/course/11381/" class="gray-darker" title="从零开始学化妆"
										target="_blank">从零开始学化妆...</a>
								</div>
								<div class="metas">


									<span class="course-price-widget"> <span class="price">
											<span class="text-success">免费</span>
									</span>


									</span>
								</div>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<a href="/course/11042/" title="国外Nuke教程“换脸”" target="_blank">
									<img
									src="http://f1.howzhi.com/course/2015/07-09/065630e96706165263.jpg">
								</a>

							</div>
							<div class="media-body">
								<div class="title">
									<a href="/course/11042/" class="gray-darker"
										title="国外Nuke教程“换脸”" target="_blank">国外Nuke教程“换脸”...</a>
								</div>
								<div class="metas">


									<span class="course-price-widget"> <span class="price">
											<span class="text-success">免费</span>
									</span>


									</span>
								</div>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<a href="/course/11033/" title="淘宝女装摄影教程" target="_blank"> <img
									src="http://f1.howzhi.com/course/2015/07-09/065630e15baa954747.jpg">
								</a>

							</div>
							<div class="media-body">
								<div class="title">
									<a href="/course/11033/" class="gray-darker" title="淘宝女装摄影教程"
										target="_blank">淘宝女装摄影教程...</a>
								</div>
								<div class="metas">


									<span class="course-price-widget"> <span class="price">
											<span class="text-success">免费</span>
									</span>


									</span>
								</div>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<a href="/course/10774/" title="原来手机摄影＋后期这么简单，5分钟搞定了！"
									target="_blank"> <img
									src="http://f1.howzhi.com/course/2015/07-09/06561821509e180641.jpg">
								</a>

							</div>
							<div class="media-body">
								<div class="title">
									<a href="/course/10774/" class="gray-darker"
										title="原来手机摄影＋后期这么简单，5分钟搞定了！" target="_blank">原来手机摄影＋后期这么简单，5分钟搞定了...</a>
								</div>
								<div class="metas">


									<span class="course-price-widget"> <span class="price">
											<span class="text-success">免费</span>
									</span>


									</span>
								</div>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<a href="/course/10514/" title="淘宝摄影这点事儿" target="_blank"> <img
									src="http://f1.howzhi.com/course/2015/07-09/065604491cba794425.jpg">
								</a>

							</div>
							<div class="media-body">
								<div class="title">
									<a href="/course/10514/" class="gray-darker" title="淘宝摄影这点事儿"
										target="_blank">淘宝摄影这点事儿...</a>
								</div>
								<div class="metas">


									<span class="course-price-widget"> <span class="price">
											<span class="text-success">免费</span>
									</span>


									</span>
								</div>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<a href="/course/10951/"
									title="ocjp认证高级工程师(Java大数据云计算方向企业级开发)-我赢职场" target="_blank">
									<img
									src="http://f1.howzhi.com/course/2015/07-09/065626a0912f487741.jpg">
								</a>

							</div>
							<div class="media-body">
								<div class="title">
									<a href="/course/10951/" class="gray-darker"
										title="ocjp认证高级工程师(Java大数据云计算方向企业级开发)-我赢职场" target="_blank">ocjp认证高级工程师(Java大数据云...</a>
								</div>
								<div class="metas">


									<span class="course-price-widget"> <span class="price">
											<span class="text-success">免费</span>
									</span>


									</span>
								</div>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<a href="/course/2288/" title="Photoshop CS6从头学" target="_blank">
									<img
									src="http://f1.howzhi.com/course/2015/07-09/064921143e38445568.jpg">
								</a>

							</div>
							<div class="media-body">
								<div class="title">
									<a href="/course/2288/" class="gray-darker"
										title="Photoshop CS6从头学" target="_blank">Photoshop
										CS6从头学...</a>
								</div>
								<div class="metas">


									<span class="course-price-widget"> <span class="price">
											<span class="text-success">免费</span>
									</span>


									</span>
								</div>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<a href="/course/10343/" title="加州艺术学院公开课：建筑学" target="_blank">
									<img
									src="http://f1.howzhi.com/course/2015/07-09/065557d2bbd7049082.jpg">
								</a>

							</div>
							<div class="media-body">
								<div class="title">
									<a href="/course/10343/" class="gray-darker"
										title="加州艺术学院公开课：建筑学" target="_blank">加州艺术学院公开课：建筑学...</a>
								</div>
								<div class="metas">


									<span class="course-price-widget"> <span class="price">
											<span class="text-success">免费</span>
									</span>


									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>

<script type="text/javascript" >
var searchdata;
var showcount=10;//每页显示条数
var length;
$.ajax({
	url:"searchCourser.action",
	data: {"key": '${key}'
	},
	method:"POST",
	type:"POST",
	dataType: 'json',
	success:function(data){
	alert(data.length);
	searchdata=data;
	length=data.length;
	$(".color-danger").html(data.length);
	$("#search-course").html('');
	fenye(data,1);
	var page=Math.ceil(length/showcount);
	$('.pagination').html('');
	for(var i=1;i<=page;i++){
		$('.pagination').append('<li ><a href="javascript:void(0);" '
		+'onclick="fenye(searchdata,'+i+')">'+i+'</a></li>');
		}
	}
});

function fenye(data,page){
	$.each(data,function(index,item){
		if(index<((page-1)*showcount)||index>page*showcount){
			return;
		}
	$("#search-course").append('<div class="course-item clearfix">'
			+'<div class="course-img">'
			+'<a href="toOneCourse.action/'+item.course_id+'" target="_blank"><img'
			+'	class="img-responsive"'
			+'src="'+item.coursephoto+'"'
			+'alt=""></a>'
			+'</div>'
			+'<div class="course-info">'
			+'<h3 class="title">'
			+'<a href="toOneCourse.action/'+item.course_id+'" target="_blank"> <em>'+item.course_name+'</em>'
			+'</a>'
			+'</h3>'
			+'<div class="content">'+item.course_description
			+'</div>'
			+'</div>');
});
}

function formsearch(){
	 var key=encodeURI($("#formsearch").val());
	 window.location.href="toSearch.action/"+key;
}
</script>

