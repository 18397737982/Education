<%@page import="com.gy.beans.Cgroup"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>

<html class="">

<head>
<base href="/superEducation/" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="renderer" content="webkit">
<meta name="baidu-site-verification" content="XN2OVFQdUg">
<title>${showgroups.groupname}小组 - 好知网</title>
<meta name="keywords" content="摄影公社小组 好知网">
<meta name="description"
	content="摄影公社（原称爱摄公社），集结好知网喜欢摄影的同学。欢迎大家在小组里发表作品、提问和分享信息。PS：大家传图片记得先处理一下，控制在1M以下哦。本组Q群：113410968本组微信：photo-tips新浪微博：@howzhifoto常见摄影问答：摄影知识之你问我答摄影基础概念：光圈、景深、对焦，连...">
<meta content="783d2780243a713e381a2657201ae9fc7f4e4f78"
	name="csrf-token">
<meta content="1" name="is-login">
<meta content="1" name="is-open">

<link
	href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico"
	rel="shortcut icon">

<link href="css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/howzhi.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/top.js"></script>
<script type="text/javascript" src="js/groupsIntroduce.js"></script>

<style>
.navbar-form {
	margin-top: 25px;
}
</style>
<style>
.cke {
	visibility: hidden;
}
</style>
</head>

<body class="group-page">

	<!--下面是头部-->
	<c:set value="${users}" var="us" />
	<c:if test="${empty us}">
		<jsp:include page="topf.jsp"></jsp:include>
	</c:if>
	<c:if test="${us!=null }">
		<jsp:include page="topb.jsp"></jsp:include>
	</c:if>
	<!--小组简介-->
	<div class="container" id="content-container">
		<ol class="breadcrumb breadcrumb-o" style="margin-top: -18px">
			<li><a href="skip_index.action">首页</a></li>
			<li><a href="toGroups.action">小组频道</a></li>
			<li><a href="toGroupIntroduce.action" id="groupname"></a></li>
		</ol>
		<div class="group-header"
			style="background: url(http://f1.howzhi.com/group-icon/2013/02-17/2114262b3815751219.jpg); background-repeat: no-repeat; background-size: 100% 100%;">
			<div class="media">
				<div class="media-left">
					<a href="toGroupIntroduce.action"> <img
						src="" alt=""
						class="avatar-square-md" id="img-groupname">
					</a>
				</div>
				<div class="media-body">
					<h2 class="media-heading" id="gname">
						<%-- <c:if test="${flag==true}">
							<a id="exit-btn" class="btn btn-default btn-sm mlm" href="groups/exitgroup?userid=${users.userid}&groupname=${showgroups.groupname }">退出小组</a>
						</c:if>
						<c:if test="${empty joingroups}">
							<a id="add-btn" class="btn btn-success btn-sm mlm" href="groups/joingroup?groupMember=${users.userid}&groupname=${showgroups.groupname }">加入小组</a>
						</c:if> --%>
						<%-- <c:choose>
							<c:when test="${flag==true or joingroups!=null}">
								<a id="exit-btn" class="btn btn-default btn-sm mlm" href="groups/exitgroup?userid=${users.userid}&groupname=${showgroups.groupname }">退出小组</a>
							</c:when>
							<c:otherwise>
								<a id="add-btn" class="btn btn-success btn-sm mlm" href="groups/joingroup?groupMember=${users.userid}&groupname=${showgroups.groupname }">加入小组</a>
							</c:otherwise>
						</c:choose> --%>
					</h2>
					<div class="media-metas" id="peoplecount"></div>
				</div>
			</div>
			<div class="image-overlay image-overlay-o"></div>
		</div>
		<div class="row">
			<div class="col-md-8 group-main">
				<div class="panel panel-default">
					<div class="panel-body">

						<ul class="nav nav-tabs" id="ul">
							<%-- <li class="active"><a href="page/groupIntroduce.jsp?groupname=${showgroups.groupname }&userid=${users.userid }">小组首页</a></li>
							<li><a href="page/groupMember.jsp?groupname=${showgroups.groupname }&userid=${users.userid }">小组成员</a></li>
							<li style="left: 0px; width: 104px; overflow: hidden;"
								class="highlight"></li>
 --%>
						</ul>
						<!-- 小组简介 -->
						<div class="alert alert-info clearfix">
							<div id="introduce">
								<!-- <p>摄影公社（原称爱摄公社），集结好知网喜欢摄影的同学。欢迎大家在小组里发表作品、提问和分享信息。</p>

								<p>PS：大家传图片记得先处理一下，控制在1M以下哦。</p> -->
							</div>
							
							<p>&nbsp;</p>
							<hr>
							<div class="">
								<div id="status"></div>
								<span class="text-muted fsn mrm" id="createtime01"></span> <span
									class="text-muted fsn mrm" id="leader"> <a
									class="link-light link-muted "
									href="http://www.howzhi.com/u/187/"></a></span> <span id="gexit"></span>
								<%-- <c:set value="${joingroups}" var="join"/>
									<c:if test="${empty join}">
										
									</c:if>
									<c:if test="${join!=null or flag==true }">
										<span class="text-muted fsn ">你已经是小组成员，<a id="exit-btn" class="text-muted" href="groups/exitgroup?userid=${users.userid}&groupname=${showgroups.groupname }"> » 退出小组</a></span>
									</c:if> --%>
							</div>
						</div>

						<div class="nav-filter clearfix mbl">

							<ul class="nav nav-pills nav-pills-sm">

								<li class="active"><a class="js-nav"
									data-target="#thread-pane"
									href="http://www.howzhi.com/group/2/?num=25&amp;sort=byCreatedTime&amp;isElite=0">全部</a></li>

								<li><a class="js-nav" data-target="#thread-pane"
									href="http://www.howzhi.com/group/2/?type=elite&amp;num=25&amp;sort=byCreatedTime">精华</a></li>

								<li><a class="js-nav" data-target="#thread-pane"
									href="http://www.howzhi.com/group/2/?type=reward&amp;num=25&amp;sort=byCreatedTime">悬赏</a></li>

								<li class="dropdown"><a class="dropdown-toggle"
									data-toggle="dropdown" href="#"> <span class="text-muted">排序：</span>
										最新发帖 <span class="caret"></span>
								</a>
									<ul class="dropdown-menu">
										<li class="active"><a class="js-nav"
											href="http://www.howzhi.com/group/2/?isElite=all&amp;num=25&amp;sort=byCreatedTime">最新发帖</a></li>
										<li class=""><a class="js-nav"
											href="http://www.howzhi.com/group/2/?isElite=all&amp;num=25&amp;sort=byLastPostTime">最后回复</a></li>
										<li class=""><a class="js-nav"
											href="http://www.howzhi.com/group/2/?isElite=all&amp;num=25&amp;sort=byPostNum">回复数</a></li>
									</ul></li>
							</ul>
							<!-- 加入小组后可以发帖子 -->
							<div class="pull-right" id="write">
								<!-- <a class="btn btn-primary btn-sm" role="button" href="/group/211/thread/create">发话题</a> -->
							</div>
						</div>

						<!--小组热帖-->
						<ul class="media-list thread-list">
							<li class="media"><a class="pull-left js-user-card"
								href="http://www.howzhi.com/u/187/"
								data-card-url="/user/187/card/show" data-user-id="187"> <img
									class="avatar-md " src="images/person04.jpg" alt="乱流">
							</a>

								<div class="media-body">
									<div class="media-heading">
										<span class="label label-danger">置顶</span> <a class="title"
											href="http://www.howzhi.com/group/2/discuss/265661">【好知活动】冬日唯美人像外拍第一期回顾</a>
									</div>

									<div class="metas">
										<a class="link-light link-muted"
											href="http://www.howzhi.com/u/187/">乱流</a> <span
											class="daren-icon-t" title="达人"></span> <span class="divider">•</span>
										04-18 <span class="divider">•</span> 最后回复 <a
											class="link-light link-muted"
											href="http://www.howzhi.com/u/2355437/">赵小渔</a> 28天前
									</div>
								</div></li>
							<li class="media"><a title="" data-original-title=""
								class="pull-left js-user-card"
								href="http://www.howzhi.com/u/187/"
								data-card-url="/user/187/card/show" data-user-id="187"> <img
									class="avatar-md " src="images/person04.jpg" 　alt="乱流">
							</a>

								<div class="media-body">
									<div class="media-heading">
										<span class="label label-danger">置顶</span> <a class="title"
											href="http://www.howzhi.com/group/2/discuss/265626">Lightroom预设资源分享（第一期）</a>
									</div>

									<div class="metas">
										<a class="link-light link-muted"
											href="http://www.howzhi.com/u/187/">乱流</a> <span
											class="daren-icon-t" title="达人"></span> <span class="divider">•</span>
										03-13 <span class="divider">•</span> 最后回复 <a
											class="link-light link-muted"
											href="http://www.howzhi.com/u/1648670/">源源酱</a> 4天前
									</div>
								</div></li>
							<li class="media"><a class="pull-left js-user-card"
								href="http://www.howzhi.com/u/1897142/"
								data-card-url="/user/1897142/card/show" data-user-id="1897142">
									<img class="avatar-md " src="images/person01.jpg" 　alt="姚振华">
							</a>

								<div class="media-body">
									<div class="media-heading">
										<span class="label label-danger">置顶</span> <a class="title"
											href="http://www.howzhi.com/group/2/discuss/265624">开学季福利到！我要加入好知摄影入门班，快来帮我赢学费红包！</a>

									</div>

									<div class="metas">
										<a class="link-light link-muted"
											href="http://www.howzhi.com/u/1897142/">姚振华</a> <span
											class="divider">•</span> 03-10
									</div>
								</div></li>
							<li class="media"><a class="pull-left js-user-card"
								href="http://www.howzhi.com/u/187/"
								data-card-url="/user/187/card/show" data-user-id="187"> <img
									class="avatar-md " src="images/person04.jpg" 　alt="乱流">
							</a>

								<div class="media-body">
									<div class="media-heading">
										<span class="label label-danger">置顶</span> <a class="title"
											href="http://www.howzhi.com/group/2/discuss/11979">说说你觉得好的摄影书籍</a>
										<span class="label label-warning">精</span>

									</div>

									<div class="metas">
										<a class="link-light link-muted"
											href="http://www.howzhi.com/u/187/">乱流</a> <span
											class="daren-icon-t" title="达人"></span> <span class="divider">•</span>
										2013-07-25 <span class="divider">•</span> 最后回复 <a
											class="link-light link-muted"
											href="http://www.howzhi.com/u/2313406/">小舒</a> 05-09
									</div>
								</div></li>
						</ul>
						
					</div>
				</div>
			</div>
			
			<div class="col-md-4 group-side">
				<div class="panel panel-default" id="mygroup">
					
				</div>
				
				
				<!--组内搜索，用来搜索话题-->
				<!-- <form action="/group/2/serach" method="get">
					<div class="input-group group-search">
						<input name="_csrf_token"
							value="783d2780243a713e381a2657201ae9fc7f4e4f78" type="hidden">
						<input class="form-control" placeholder="组内搜索" name="keyWord"
							type="text"> <span class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</span>
					</div>
				</form> -->

				<!--最近加入的成员，按加入时间排序-->
				<div class="panel panel-default">
				
					<div class="panel-heading">最近加入</div>
					<!--最近加入成员，从数据库获取-->
					
					<div class="panel-body">
						<ul class="user-avatar-list clearfix" id="addMemberNow">
							
						</ul>
					</div>
				</div>

			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>


</body>

</html>