<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"  %>
<!DOCTYPE html>
<html>
<head>
<base href="/superEducation/" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="renderer" content="webkit">
<meta name="baidu-site-verification" content="XN2OVFQdUg">
<title>基础信息 - 个人设置 - 好知网-重拾学习乐趣-Powered By Howzhi</title>

<link
	href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico"
	rel="shortcut icon">
<link href="css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/howzhi.css">
<link href="css/main.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/top.js"></script>
<script type="text/javascript" src="js/info.js"></script>

<style type="text/css">
#profile-save-btn {
	margin-top: 20px;
	margin-left: 10px;
}

#unload {
	background: #15c288 none repeat scroll 0 0;
	border: 1px solid #15c288;
	color: #fff !important;
}

.form-group {
	margin-top: 14px;
	margin-left: 35px;
}
</style>
<script type="text/javascript">
var flag = "${(empty users)? false : true}";
var user_name = '${users.user_name}';
var user_id = '${users.user_id}';
</script>

</head>

<body class="index">
	<!-- 头部 -------------------------------------------------------------------  -->
	<jsp:include page="topb.jsp"></jsp:include>
	<!-- 头部 -------------------------------------------------------------------  -->

	<div class="container" id="content-container">
		<div class="row">
			<div class="col-md-3">
				<div class="sidenav">
					<ul class="list-group">
						<li class="list-group-heading">个人设置</li>

						<li class="list-group-item"><a href="javascript:void(0)"
							id="cc"><i class="glyphicon glyphicon-user"></i> 基础信息</a></li>
						<li class="list-group-item "><a href="javascript:void(0)"><i
								class="glyphicon glyphicon-picture"></i> 头像设置</a></li>
						<li class="list-group-item "><a href="javascript:void(0)"><i
								class="glyphicon glyphicon-lock"></i> 安全设置</a></li>
					</ul>
				</div>
			</div>
			<!--  --------------基础信息-------------------------------------------------------------------- -->
			<div class="col-md-9" id="baseinfo" style="display: block;">
				<div id="info"></div>
				<div class="panel panel-default panel-col">
					<div class="panel-heading">基础信息</div>
					<div class="panel-body">

						<form id="user-profile-form" class="form-horizontal" method="post"
							novalidate="novalidate" data-widget-cid="widget-0">

							<div class="form-group">
								<label class="col-md-2 control-label">昵称</label>
								<div class="col-md-7 controls">
									<div class="control-text">
										<input type="text" name="userid" value="${users.user_id}"
											style="display: none;">${users.user_name}</div>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-2 control-label" for="usign">真实姓名</label>
								<div class="col-md-7 controls">
									<input type="text" id="profile_realnameture" name="usign"
										data-url="/sensitive/check" class="form-control"
										value="${users.realname}" data-widget-cid="widget-1"
										data-explain="">
									<div class="help-block" style="display: none;"></div>
								</div>
							</div>


							<div class="form-group">
								<label class="col-md-2 control-label">性别</label>
								<div class="col-md-7 controls radios">
									<div id="profile_gender">
										<c:choose>
											<c:when test="${users.sex}==null">
												<input type="radio" id="profile_gender_0" name="gender"
													required="required" value="男">
												<label for="profile_gender_0" class="required">男</label>
												<input type="radio" id="profile_gender_1" name="gender"
													required="required" value="女">
												<label for="profile_gender_1" class="required">女</label>
											</c:when>
											<c:when test="${users.sex}=='男'">
												<input type="radio" id="profile_gender_0" name="gender"
													required="required" value="男" checked="checked">
												<label for="profile_gender_0" class="required">男</label>
												<input type="radio" id="profile_gender_1" name="gender"
													required="required" value="女">
												<label for="profile_gender_1" class="required">女</label>
											</c:when>
											<c:otherwise>
												<input type="radio" id="profile_gender_0" name="gender"
													required="required" value="男">
												<label for="profile_gender_0" class="required">男</label>
												<input type="radio" id="profile_gender_1" name="gender"
													required="required" value="女" checked="checked">
												<label for="profile_gender_1" class="required">女</label>
											</c:otherwise>
										</c:choose>

									</div>
								</div>
							</div>


							<div class="form-group">
								<label class="col-md-2 control-label" for="usign">年龄</label>
								<div class="col-md-7 controls">
									<input type="text" id="profile_agesture" name="usign"
										data-url="/sensitive/check" class="form-control"
										value="${users.age}" data-widget-cid="widget-1"
										data-explain="">
									<div class="help-block" style="display: none;"></div>
								</div>
							</div>
							
							
							<div class="form-group">
								<label class="col-md-2 control-label" for="usign">个人签名</label>
								<div class="col-md-7 controls">
									<input type="text" id="profile_signature" name="usign"
										data-url="/sensitive/check" class="form-control"
										value="${users.usign}" data-widget-cid="widget-1"
										data-explain="">
									<div class="help-block" style="display: none;"></div>
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-md-2 control-label" for="usign">邮箱</label>
								<div class="col-md-7 controls">
									<input type="text" id="profile_emailture" name="usign"
										data-url="/sensitive/check" class="form-control"
										value="${users.email}" data-widget-cid="widget-1"
										data-explain="">
									<div class="help-block" style="display: none;"></div>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-2 control-label" for="introdution">自我介绍</label>
								<div class="col-md-7 controls">
									<textarea rows="10" id="profile_about" class="form-control"
										data-url="/sensitive/check">${users.introduce}</textarea>
								</div>
								<br>
							</div>
							<div class="row">
								<div class="col-md-7 col-md-offset-2">
									<button id="profile-save-btn" data-submiting-text="正在保存"
										type="button" class="btn btn-primary"
										 onclick="save()">保存</button>
								</div>
							</div>

							<input type="hidden" name="_csrf_token"
								value="cfe9b96f569703f379d055687bf9a957774ae94c">
						</form>


					</div>
				</div>

			</div>
			<!--  --------------基础信息-------------------------------------------------------------------- -->

			<!--  --------------更换头像-------------------------------------------------------------------- -->
			<div class="col-md-9" id="touxiang" style="display: none">
				<div class="panel panel-default panel-col">
					<div class="panel-heading">头像</div>
					<div class="panel-body">

						<form id="settings-avatar-form" class="form-horizontal"
							method="post"
							action="${pageContext.request.contextPath}/userInfo/editPhoto"
							enctype="multipart/form-data">

							<div class="form-group">
								<div class="col-md-2 control-label">
									<b>当前头像</b>
								</div>
								<div class="controls col-md-8 controls" id="showimg">
									<input name="userid" value="${users.user_id}"
										style="display: none;" />
									<c:choose>
										<c:when test="${users.pic==null}">
											<img id="imgPrc" src="images/avatar.png"
												style="width: 200px; height: 180px;">
										</c:when>
										<c:when test=""></c:when>
									</c:choose>
									<c:if test="${users.pic!=null}">
										<img id="imgPrc" src="../img/headimg/${users.pic}"
											style="width: 200px; height: 180px;">
									</c:if>
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-2 control-label"></div>
								<div class="controls col-md-8 controls">
									<p class="help-block">
										你可以上传JPG、GIF或PNG格式的文件，文件大小不能超过<strong>2M</strong>。
									</p>
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-2 control-label"></div>
								<div class="controls col-md-8 controls">
									<div id="updateImg">
										<input type="file" name="items_pic" id="unload"
											style="border: none;" onchange="preImg(this.id);">
									</div>
									<!-- accept="image/*"   class="webuploader-element-invisible"-->
									<button class="btn btn-primary" type="submit"
										id="profile-save-btn2" style="margin-top: 20px;">保存</button>
									<button class="btn btn-primary" type="button"
										id="profile-edit-btn"
										style="margin-top: 20px; margin-left: 10px;">取消</button>
								</div>
							</div>

						</form>

					</div>
				</div>
			</div>

			<!--  --------------更改头像------------------------------------------------------------------- -->

			<!--  --------------安全设置------------------------------------------------------------------ -->
			<div class="col-md-9" id="update" style="display: none;">

				<div class="panel panel-default panel-col">
					<div class="panel-heading">安全设置</div>
					<div class="panel-body">
						<ul class="breadcrumb">
							<li><a href="http://www.howzhi.com/settings/security">安全设置</a></li>
							<li class="active">登录密码修改</li>
						</ul>
						<form data-widget-cid="widget-0" novalidate="novalidate"
							id="settings-password-form" class="form-horizontal" method="post">
							<div class="form-group">
								<div class="col-md-2 control-label">
									<label for="form_currentPassword" class="required">当前密码</label>
								</div>

								<div class="controls col-md-8 controls">
									<input data-explain="" data-widget-cid="widget-1"
										id="form_currentPassword" name="form[currentPassword]"
										required="required" class="form-control" type="password">
									<div class="help-block" style="display: none;">请输入当前密码</div>
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-2 control-label">
									<label for="form_newPassword" class="required">新密码</label>
								</div>
								<div class="controls col-md-8 controls">
									<input data-explain="" data-widget-cid="widget-2"
										id="form_newPassword" name="form[newPassword]"
										required="required" class="form-control" type="password">
									<div class="help-block" style="display: none;">请输入新密码</div>
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-2 control-label">
									<label for="form_confirmPassword" class="required">确认密码</label>
								</div>
								<div class="controls col-md-8 controls">
									<input data-explain="" data-widget-cid="widget-3"
										id="form_confirmPassword" name="form[confirmPassword]"
										required="required" class="form-control" type="password">
									<div class="help-block" style="display: none;">请输入确认密码</div>
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-2 control-label"></div>
								<div class="controls col-md-8 controls">
									<input id="form__token" name="form[_token]"
										value="e9ebfb386adef9aa744408549e5c164aeca9f16d" type="hidden">
									<button id="password-save-btn4" data-submiting-text="正在保存"
										type="button" class="btn btn-primary">提交</button>
								</div>
							</div>

							<input name="_csrf_token"
								value="46cef15361d5499f163cc1430d5ed1e4bc9ee1e7" type="hidden">
						</form>

					</div>
				</div>
			</div>
			<!--  --------------安全设置------------------------------------------------------------------ -->
		</div>
	</div>
	<!-- 尾部 -------------------------------------------------------------------  -->
	<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>