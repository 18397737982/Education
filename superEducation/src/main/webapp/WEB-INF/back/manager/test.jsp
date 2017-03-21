<%@page import="com.gy.util.SessionAttributeInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<base href="/newhaozhiwang/"/>
	<meta charset="UTF-8">
	<title>好知网</title>
	<link rel="stylesheet" type="text/css" href="easyui/css/easyui.css">
	<link rel="stylesheet" type="text/css" href="easyui/css/icon.css">
	<link rel="stylesheet" type="text/css" href="easyui/css/demo.css">
	<script type="text/javascript" src="easyui/js/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/js/index.js"></script>
	<script type="text/javascript" src="easyui/js/easyui-lang-zh_CN.js"></script>

	<script type="text/javascript" charset="utf-8" src="js/showpic.js"></script>

	<script type="text/javascript"  src="js/ajaxfileupload.js"></script>
<style type="text/css">
#login{
	float: right;
	width: 100px;
	height: 30px;
}
</style>

</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px">
	<div id="login">
		<%if(null!=session.getAttribute("Admin")){ %>
		<c:forEach items="${Admin}" var="item" varStatus="s"> 	
                	<p>欢迎 ${item.aname} 登陆</p><a href="javascript:outLogin()">退出登录</a>
        </c:forEach>
        <%} %>
	</div>
	</div>
	<div data-options="region:'west',split:true,title:'菜单'" style="width:150px;padding:10px;">
		<ul class="easyui-tree" id="menu_tree">
			<li>
				<span>菜单</span>
				<ul>
					<li>管理员管理</li>
					<li>会员管理</li>
					<li>课程类型管理</li>
					<li>课程管理</li>
					<li>小组管理</li>
				    <li>个人信息</li>
							
				</ul>
			</li>
		</ul>
	</div>
	<div data-options="region:'east',split:true,collapsed:true,title:'帮助'" style="width:100px;padding:10px;">
	east region</div>
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;">
	south region</div>
	<div data-options="region:'center',title:'操作'">
		<div id="center_area" class="easyui-tabs" data-options="fit:true">
		</div>
	</div>
</body>
</html>