<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html class="">

	<head>
		<base href="/superEducation/"/>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<title>小组  --好知网</title> 
		<meta name="keywords" content="小组">
		<meta name="description" content="小组首页">
		<meta content="2fbd468350a8348322e8aed780d7f3178511d79d" name="csrf-token">
		<meta content="1" name="is-login">
		<meta content="1" name="is-open">
		<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">
		<link href="css/bootstrap.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/howzhi.css">
		<link rel="stylesheet" type="text/css" href="css/main.css">
		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<script type="text/javascript" src="js/top.js"></script>
		<script type="text/javascript" src="js/groups.js"></script>
		
		<style>
			.navbar-form{
				margin-top: 25px;
			}
		</style>
	</head>

	<body class="group-page">	
		<jsp:include page="topb.jsp"></jsp:include>
		
		<div class="container" id="content-container">
			<div class="row">
				<div class="col-md-8">
					<div class="panel panel-default">

						<div class="panel-heading">
							热门小组<a href="groups/moresearch" class="pull-right">»更多</a>
						</div>
						<div class="panel-body">
							<div class="row group-grids" id="hostGroups">

								<!-- -------------------从数据库获取热门小组的数据，重复代码---------------------------->
							</div>
						</div>
					</div>

					<!----------------------------从数据库获取热门话题-------------------------------------------->
					<div class="panel panel-default">
						<div class="panel-heading">热门话题</div>

						<div class="panel-body">
							<ul class="media-list thread-list">
								<li class="media">
									<a class="pull-left js-user-card" id="introduce" href="javascript:void(0)" data-card-url="/user/1321903/card/show" data-user-id="1321903">
										<img class="avatar-md " src="images/touxiang.jpg" alt="曹佳佳的熊猫眼">
									</a>

									<div class="media-body">
										<div class="media-heading">
											<a class="title" href="http://www.howzhi.com/group/2/discuss/265385">这11张照片讲述了摄影演变史</a>

										</div>

										<div class="metas">
											<a class="link-muted" href="http://www.howzhi.com/group/2/" title="摄影公社">摄影公社</a>
											<span class="divider">•</span>
											<a class="link-light link-muted" href="http://www.howzhi.com/u/1321903/">曹佳佳的熊猫眼</a>

											<span class="divider">•</span> 12-18
											<span class="divider">•</span> 最后回复 <a class="link-light link-muted" href="http://www.howzhi.com/u/1946174/">lijingwei03</a> 7天前
										</div>
									</div>
								</li>
								<!---------------------------------------------------->
								<li class="media">
									<a class="pull-left js-user-card" href="http://www.howzhi.com/u/187/" data-card-url="/user/187/card/show" data-user-id="187">
										<img class="avatar-md " src="images/touxiang.jpg" alt="乱流">
									</a>

									<div class="media-body">
										<div class="media-heading">
											<a class="title" href="http://www.howzhi.com/group/2/discuss/265349">Flickr公布2015年最受欢迎作品和相机</a>

										</div>

										<div class="metas">
											<a class="link-muted" href="http://www.howzhi.com/group/2/" title="摄影公社">摄影公社</a>
											<span class="divider">•</span>
											<a class="link-light link-muted" href="http://www.howzhi.com/u/187/">乱流</a>
											<span class="daren-icon-t" title="达人"></span>

											<span class="divider">•</span> 12-08
											<span class="divider">•</span> 最后回复 <a class="link-light link-muted" href="http://www.howzhi.com/u/2325459/">zhujiash</a> 06-02
										</div>
									</div>
								</li>
								<!---------------------------------------------------->
								<li class="media">
									<a class="pull-left js-user-card" href="http://www.howzhi.com/u/1321903/" data-card-url="/user/1321903/card/show" data-user-id="1321903">
										<img class="avatar-md " src="images/touxiang.jpg" alt="曹佳佳的熊猫眼">
									</a>

									<div class="media-body">
										<div class="media-heading">
											<a class="title" href="http://www.howzhi.com/group/2/discuss/265268">自然风光摄影之美</a>

										</div>

										<div class="metas">
											<a class="link-muted" href="http://www.howzhi.com/group/2/" title="摄影公社">摄影公社</a>
											<span class="divider">•</span>
											<a class="link-light link-muted" href="http://www.howzhi.com/u/1321903/">曹佳佳的熊猫眼</a>

											<span class="divider">•</span> 11-18
											<span class="divider">•</span> 最后回复 <a class="link-light link-muted" href="http://www.howzhi.com/u/1884995/">haohao_a</a> 01-07
										</div>
									</div>
								</li>
								<!---------------------------------------------------->
								<li class="media">
									<a class="pull-left js-user-card" href="http://www.howzhi.com/u/1321903/" data-card-url="/user/1321903/card/show" data-user-id="1321903">
										<img class="avatar-md " src="images/touxiang.jpg" alt="曹佳佳的熊猫眼">
									</a>

									<div class="media-body">
										<div class="media-heading">
											<a class="title" href="http://www.howzhi.com/group/2/discuss/265245">Elena Shumilova 温情人像摄影 | 记录成长</a>
											<span class="label label-warning">精</span>

										</div>

										<div class="metas">
											<a class="link-muted" href="http://www.howzhi.com/group/2/" title="摄影公社">摄影公社</a>
											<span class="divider">•</span>
											<a class="link-light link-muted" href="http://www.howzhi.com/u/1321903/">曹佳佳的熊猫眼</a>

											<span class="divider">•</span> 11-10
											<span class="divider">•</span> 最后回复 <a class="link-light link-muted" href="http://www.howzhi.com/u/1928168/">逸趣闲云</a> 01-07
										</div>
									</div>
								</li>
								<!---------------------------------------------------->
								<li class="media">
									<a class="pull-left js-user-card" id="card01" href="http://www.howzhi.com/u/187/" data-card-url="/user/187/card/show" data-user-id="187">
										<img class="avatar-md " src="images/touxiang.jpg" alt="乱流">
									</a>

									<div class="media-body">
										<div class="media-heading">
											<a class="title" href="http://www.howzhi.com/group/2/discuss/265229">2015索尼世界摄影奖优秀作品</a>

										</div>

										<div class="metas">
											<a class="link-muted" href="http://www.howzhi.com/group/2/" title="摄影公社">摄影公社</a>
											<span class="divider">•</span>
											<a class="link-light link-muted" href="http://www.howzhi.com/u/187/">乱流</a>
											<span class="daren-icon-t" title="达人"></span>

											<span class="divider">•</span> 11-05
											<span class="divider">•</span> 最后回复 <a class="link-light link-muted" href="http://www.howzhi.com/u/7416/">喜洋洋</a> 3小时前
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>

				<!--------------------------右边的div--------------------------------------------------------->
				<div class="col-md-4">
					<!-----------------------个人介绍------------------->
					<div class="panel panel-default" style="display: none">
						<div class="panel-body">
							<div class="media">
								<div class="media-left">
									<a title="" data-original-title="" class=" js-user-card"  href="javascript:void(0)" data-card-url="/user/2358982/card/show" data-user-id="2358982">
										<img class="avatar-md " src="images/avatar.png" alt="珘珘">
									</a>
								</div>
								<div class="media-body">
									<p> <a class="link-light link-light" href="http://www.howzhi.com/u/2358982/">珘珘</a>
									</p>
									<div class="metas">
									</div>
								</div>
							</div>
						</div>
					</div>


					<!-----------------------小组搜索------------------
					<form class="mbl" action="groups/search" method="get">
						<div class="input-group group-search">
							<input name="_csrf_token" value="2fbd468350a8348322e8aed780d7f3178511d79d" type="hidden">
							<input class="form-control" placeholder="小组搜索" name="keyWord" type="text">
							<span class="input-group-btn">
            					<button class="btn btn-default" type="submit">
            					<span class="glyphicon glyphicon-search"></span></button>
							</span>
						</div>
					</form>
					-->
					<!-----------------------新晋小组模块----------------------->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">新晋小组</h3></div>
						<div class="panel-body">
							<div class="media-group-list" id="newGroups">
								<!------------------新晋小组1----------------->

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!---------------------------------------我是底部分割线------------------------------------------------------>
		<jsp:include page="footer.jsp"></jsp:include>
	</body>

</html>
