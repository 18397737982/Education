<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!Doctype html>
<html>
<head>
<base href="/superEducation/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>
<link
	href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico"
	rel="shortcut icon">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="easyui/css/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/css/icon.css">
<link rel="stylesheet" type="text/css" href="easyui/css/demo.css">
<script type="text/javascript" src="easyui/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/js/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/register.js"></script>
<script type="text/javascript" src="js/top.js"></script>
<link rel="stylesheet" type="text/css" href="css/howzhi.css">
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

<style type="text/css">
* {
	padding: 0px;
	margin: 0px auto;
}

#header {
	height: 100px;
	width: 100%;
}

#body {
	padding-top: 50px;
	height: 773px;
	width: 100%;
	background: rgba(0, 0, 0, 0) url("images/login_bg.jpg") no-repeat scroll
		center top;
	background-size: cover;
}

#body #login-box {
	width: 380px;
	height: 400px;
	background-color: #FFF;
	margin-right: 120px;
}

#body #login-in, #register-in {
	width: 300px;
	height: 400px;
	margin-left: 30px;
}

#body #register-box {
	width: 380px;
	min-height: 300px;
	background-color: #FFF;
	margin-right: 120px;
	display: none;
}

#body #login-box #login_password, #register-box #register_password {
	width: 300px;
	height: 45px;
	margin-top: 20px;
	margin-bottom: 20px;
}

#body #login-box #login_username, #register-box #register_username {
	width: 300px;
	height: 45px;
}

#register_eamil {
	width: 300px;
	height: 45px;
	margin-bottom: 20px;
}

#body #login-box #submit-login, #body #register-box #submit-register {
	width: 300px;
	height: 44px;
	background-color: #0C9;
	color: #FFF;
	font-size: 17px;
	margin-top: 10px;
}

h3 {
	padding-top: 50px;
}

h3 a {
	color: #0C9;
	font-size: 20px;
	text-decoration: none;
}

h3 .register {
	margin-left: 100px;
}

h3 .registericon {
	margin-left: 5px;
}

#register-in h3 .register {
	margin-left: 80px;
}

#foot {
	height: 200px;
	width: 100%;
}

#register-in i {
	float: left;
}

#login-in a:hover {
	color: #0F9;
	text-decoration: none;
}

.form-group {
	margin-top: 14px;
}

button:hover {
	color: ##008040;
}

#error {
	text-align: center;
}

.error_eamil, .error_name {
	color: red;
}
</style>

</head>

<body>

	<jsp:include page="topf.jsp" />

	<div id="body">
		<div id="login-box">
			<div id="login-in">
				<h3>
					登录好知<a class="register" href="javascript:void(0)"
						onClick="register()">注册</a><a class="registericon"
						href="javascript:void(0)" onClick="register()"> <span
						class="glyphicon glyphicon-circle-arrow-right"></span>
					</a>
				</h3>
				<br>
				<div class="conten">
					<form method="post" action="login.action" accept-charset="UTF-8">
						<c:set value="${Message }" var="ms" />
						<c:if test="${ms!=null }">
							<div class="alert alert-danger" id="error">帐号或密码错误！！！</div>
						</c:if>

						<input id="login_username" class="form-control" type="text"
							placeholder="邮箱/用户名" required value="" name="user_name"> <input
							id="login_password" class="form-control" type="password"
							placeholder="密码" required value="" name="password">

						<div class="controls">
							<label id="remember_me"><input name="_remember_me"
								checked="checked" type="checkbox">记住密码</label> <a
								class="pull-right active" href="#">忘记密码</a>
						</div>
						<button id="submit-login" type="submit" class="btn btn-default">登录</button>
					</form>
				</div>
			</div>
		</div>

		<div id="register-box">
			<div id="register-in">
				<h3>
					注册好知账号<a class="register" href="javascript:void(0)"
						onClick="login()">登录</a><a class="registericon"
						href="javascript:void(0)" onClick="login()"> <span
						class="glyphicon glyphicon-circle-arrow-right"></span>
					</a><i class="fa fa-arrow-circle-o-right"></i>
				</h3>
				<br>
				<div class="conten">
					<form method="post" action="register" onsubmit="return register()">
						<input id="register_eamil" class="form-control" type="email" placeholder="常用邮箱" value="" name="email" onblur="check_email()">
						<div class="error_eamil"></div>
						<input id="register_username" class="form-control" type="text" placeholder="请输入昵称" value="" name="user_name" onblur="check_uname()">
						<div class="error_name"></div>
						<input id="register_password" class="form-control" type="password" placeholder="密码" required value="" name="password">
						<div class="form-group mb40 captcha_div">
							<div class="controls row">
								<div class="col-xs-6">
									<input data-explain="" data-widget-cid="widget-1"
										class="form-control ident" id="captcha_num" name="code"
										maxlength="6" placeholder="验证码" required
										data-url="/register/captcha/check" type="text">
								</div>
								<div class="col-xs-6 ident-img">
									<button type="button" class="btn btn-default" id="submit" onclick="sendMail()">发送邮箱验证码</button>
								</div>
								<div class="help-block" style="display: none;"></div>
							</div>
						</div>

						<div class="form-group mb40 agren">
							<div class="controls">
								<label><input data-explain="" data-widget-cid="widget-5"
									id="user_terms" checked="checked" type="checkbox">我已阅读并同意
									<a href="page/container.jsp" target="_blank">《服务协议》</a> </label>
								<div class="help-block" style="display: none;"></div>
							</div>
						</div>
						<button id="submit-register" type="submit" class="btn btn-default">注册</button>
					</form>
				</div>
			</div>

		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
