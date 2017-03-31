<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!-- 登录后的头部----------- -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<script src="js/top.js"></script>
<header class="header" style="z-index: 2000">
  <div class="container" >
    <div class="navbar-header pull-left"> <a href="skip_index.action" class="navbar-brand"> <img src="images/logo.png" class="img-responsive" alt="好知，howzhi.com"> </a>
      <button class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse" type="button"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
    </div>
    <nav class="collapse navbar-collapse pull-left">
      <ul class="nav navbar-nav topmenu">
        <li class="visible-xs"> <a href="javaScript:void(0);"><i class="fa fa-search mrm"></i>搜索</a> </li>
        <li class=""> <a href="learnCenter.action">学习中心 </a> </li>
        <li class="nav-hover" > <a href="toCourse.action">课程 <b class="caret"></b></a>
          <ul class="dropdown-menu"  role="menu" id="menu">
	          <c:forEach var="item" items="${category}" varStatus="status" >
	          		<li class="change"  id="${item.class_id}"><a href="toCourse.action/${item.class_id}">${item.class_categorys}</a></li>
	          </c:forEach>
          </ul>
        </li>
        <li class=""> <a href="javaScript:void(0);">班级 </a> </li>
        <li class=""> <a href="toGroups.action">小组 </a> </li>
      </ul>
      <div class="new-tips hz-triangle hidden-xs"> “我的好知” 正式更名为 “<span class="t-primary">学习中心</span>”
        <div class="colse" id="hz-head-update" data-dismiss="alert">×</div>
        <i class="left"></i> <i class="right"></i> </div>
    </nav>
    <div class="pull-right user-nav clearfix" id="topf" >
    	<ul class="nav pull-right">
	<c:set value="${users.user_category }" var="user_category"/>
    		<li class="hidden-xs hidden-sm"> <a class="btn btn-primary radius" href="toCreatecourse.action"><i style="color: rgb(255, 247, 255);" class="glyphicon glyphicon-plus"></i> 创建课程</a> </li>
    	
	        <li class="dropdown user-nav-dropdown user-img"> <a href="#" class="dropdown-toggle" id="toggle"> <img src="${users.pic }" class="user-avatar" alt="${users.user_name }" id="${users.user_id}"> </a>
          		<ul class="dropdown-menu" role="menu" id="dropdown-menu">
		            <li> <a href="learnCenter.action" ><i style="color:#666;" class="glyphicon glyphicon-home" ></i>学习中心</a> </li>
		            <li><a href="toPerson.action"><i style="color:#666;" class="glyphicon glyphicon-user" ></i>个人主页</a></li>
		            <li><a href="toInfo.action"><i style="color:#666;" class="glyphicon glyphicon-cog" ></i>个人设置</a></li>
		            <li><a href="toCoin.action/${users.user_id}"><i style="color:#666;" class="glyphicon glyphicon-credit-card" ></i>账户中心</a></li>
		            <li id="loginOut"><a href="javaScript:void(0);"><i style="color:#666;" class="glyphicon glyphicon-log-out" ></i>退出登录</a></li>
		        </ul>
        	</li>
				<li class="user-msg user-nav-dropdown hidden-xs "><a href=""
					class="dropdown-toggle" data-toggle="dropdown" role="button"
					aria-expanded="false"> <small id="SendMsg" style="display: none" class="badge"> </small><i style="font-size: 16px;"
						class="glyphicon glyphicon-bell"></i>
				</a>
					<ul class="dropdown-menu text-center" role="menu"
						id="dropdown-menu">
						<li><a href="javaScript:void(0);"><i style="color: #666;"
								class="glyphicon glyphicon-bullhorn"></i>通知<span id="inform" style="display:display">1</span></a></li>
						<li><a href="javaScript:void(0);"><i style="color: #666;"
								class=" glyphicon glyphicon-envelope"></i>私信<span id="letter" style="display:none"></span></a></li>
						<li><a href="javaScript:void(0);"><i style="color: #666;"
								class="glyphicon glyphicon-comment"></i>回复<span id="answer" style="display:none"></span></a></li>
						<li><a href="javaScript:void(0);"><i style="color: #666;"
								class="glyphicon glyphicon-question-sign"><span id="questionAndAnswer" style="display:none"></span></i>问答</a></li>
					</ul></li>
				<li class="hidden-xs hzapp hidden-sm"><a
					href="javaScript:void(0);"> <small class="badge"> </small> <i
						style="font-size: 16px;" class="glyphicon glyphicon-phone"></i>
						好知APP
				</a></li>

				<li class="hzshow-box hidden-xs" style="display: none ;" id="sysInform">
					<div class="hzshow-message alert-dismissible" role="alert">
						<p>
							1条系统通知, <a href="/howzhi/notification/Systemnotify"> 查看通知 </a>
						</p>
					</div> <span class="close" data-dismiss="alert">×</span>
				</li>
			</ul>
	    <form class="navbar-form pull-right hz-search hidden-xs"
				role="search" action="">
				<div class="form-group">
					<div id="search-left" class="pull-left search-left">
						<div class="search-type pull-left">
							<div class="choose"
								style="color: #666; font-size: 14px; margin-top: 3px;">
								课程<i style="color: #999; font-size: 11px; margin-left: 5px"
									class="glyphicon glyphicon-chevron-down"></i>
							</div>
							<ul class="text-center" id="text-center" style="color: #999;">
								<li data-type="course">课程</li>
								<li data-type="discussion">话题</li>
								<li data-type="user">用户</li>
								<li data-type="group">小组</li>
							</ul>
						</div>
						<input id="searchcontent" class="form-control js-search" name="q"
							placeholder="输入要查找的内容" autocomplete="off">
					</div>
					<input name="t" value="course" type="hidden">
					<button
						style="color: #15C288; font-size: 20px; margin-top: 7px; border: none; background: #fff; width: 50px;"
						class="glyphicon glyphicon-search" type="button"
						onclick="search()"></button>
				</div>
			</form>

    </div>
  </div>
</header>
