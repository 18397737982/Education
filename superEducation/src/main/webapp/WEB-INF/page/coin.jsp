<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<base href="/superEducation/" />

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
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
	href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico"
	rel="shortcut icon">
<link rel="stylesheet" media="screen" href="css/common.css">

<link href="css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/howzhi.css">
<link href="css/bootstrap.css" rel="stylesheet">
<style type="text/css">
.tijiao {
	width: 100px;
	height: 40px;
	margin-left: 100px;
}

#chongzhi {
	width: 200px;
	height: 60px;
}

.formcontrol {
	width: 200px;
	height: 40px;
}
</style>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/top.js"></script>
<script type="text/javascript" src="js/coin.js"></script>
<script type="text/javascript">
	var user_id = '${users.user_id}';
</script>
<script type="text/javascript">	
	 function findBymoney(){
		$.post("findAccountBymoney", {"_method" : "POST",user_id:user_id},function(json){
			var obj = $.parseJSON(json);
			$("#accountList").html("");
			for ( var i=0 ; i < obj.length ; i++ ){
				var o = obj[i];
				$("#accountList").append(
					"<tr><td>" + o.user_id
				   +"</td><td>" + o.money
				   +"</td><td>" + o.payment
				   +"</td><td>" + o.times);
			}
		});
	}
	 
	 function findBymoneys(){
			$.post("findAccountBymoneys", {"_method" : "POST",user_id:user_id},function(json){
				var obj = $.parseJSON(json);
				$("#accountList").html("");
				for ( var i=0 ; i < obj.length ; i++ ){
					var o = obj[i];
					$("#accountList").append(
						"<tr><td>" + o.user_id
					   +"</td><td>" + o.money
					   +"</td><td>" + o.payment
					   +"</td><td>" + o.times);
				}
			});
		}
	 
	 
</script>
</head>
<body class="index">
	<jsp:include page="topb.jsp"></jsp:include>
	<div id="content-container" class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="sidenav">
					<ul class="list-group">
						<li class="list-group-item">账户中心</li>
						<li class="list-group-item"><a href="javascript:void(0);">我的账户</a></li>
						<li class="list-group-item"><a href="javascript:void(0);">充值中心</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-9" id="dingdan">
				<div class="es-section h400">
					<div class="section-header">
						<h3>充值中心</h3>
					</div>
					<br />

					<div>
						<strong>充值金额： </strong><input type="text" id="chongzhi" value="" />
					</div>
					<br />
					<div class="form-group">
						<strong>支付方式：<strong> <select
								class="formcontrol" name="payWays" id="formcontrol">
									<option value="alipay">支付宝</option>
									<option value="wxpay">微信支付</option>
									<option value="heepay">网银支付</option>
									<option value="quickpay">快捷支付</option>
									<option value="" selected="selected">支付方式</option>
							</select>
					</div>
					<input type="button" class="tijiao" onclick="chongzhi()" value="充值" />
					<br /> <br />
					<div class="table-responsive">
						<table id="orders-table" class="table table-striped table-hover">
							<thead>
								<tr>
									<th>名称</th>
									<th>创建时间</th>
									<th>状态</th>
									<th>实付(元)</th>
									<th>支付方式</th>
									<th style="min-width: 100px">操作</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td colspan="20">
										<div class="empty">暂无订单记录</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="col-md-9" id="zhanghu">
				<div class="es-section h400">
					<ul class="nav nav-tabs">

						<li class="highlight" style="left: 0px; width: 120px;"></li>
					</ul>
					<span class="label label-primary label-md">账户余额</span> <br>
					<div class="coin-block clearfix">
						<div class="coin-text">
							<strong><input type="text" name="yue" id="yue" value="" />好知币</strong>
						</div>
						<div class="coin-btn"></div>
					</div>
					<hr>
					<ul class="nav nav-pills" role="tablist">
						<li class="active" role="presentation"><a
							href="">全部记录</a></li>
						<li role="presentation"><a href="javascript:void(0);" onclick="findBymoney()">充值记录</a>
						</li>
						<li role="presentation"><a href="javascript:void(0);" onclick="findBymoneys()">消费记录</a>
						</li>
					</ul>
					<br>
					<form id="user-search-form"
						class="form-inline well well-sm clearfix" action="" method="get"
						novalidate="">
						<div class="form-group">
							<input name="type" value="" type="hidden"> <select
								class="form-control" name="lastHowManyMonths"
								onchange="submit();">
								<option value="">全部记录</option>
								<option value="oneWeek" selected="selected">最近一周</option>
								<option value="twoWeeks">最近两周</option>
								<option value="oneMonth">最近一个月</option>
								<option value="twoMonths">最近两个月</option>
								<option value="threeMonths">最近三个月</option>
							</select>
						</div>
						<div class="control-label pull-right" style="padding-top: 8px;">
							收入： <span style="color: #1bb974;">0</span> 好知币 支出： <span
								style="color: #ff7b0e;">0</span> 好知币
						</div>
					</form>
					<br>
					<div class="table-responsive">
						<table class="table table-striped">
							<tr>
								<th>用户id</th>
								<th>金额</th>
								<th>支付方式</th>
								<th>日期</th>
							</tr>
							<tbody id="accountList">
								<c:forEach items="${accountList }" var="accountNotes">
									<tr>
										<td>${accountNotes.user_id}</td>
										<td>${accountNotes.money }</td>
										<td>${accountNotes.payment }</td>
										<td>${accountNotes.times }</td>	
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<nav class="text-center"></nav>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>