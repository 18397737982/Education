<%@page import="com.gy.util.SessionAttributeInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false"  %> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"  %>
<!DOCTYPE html>
<html>
<head>
	<base href="/superEducation/"/>
	<meta charset="UTF-8"> 
	<meta charset=utf-8 />	
	<title>好知网</title>
	<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">
	<link rel="stylesheet" type="text/css" href="easyui/css/easyui.css">
	<link rel="stylesheet" type="text/css" href="easyui/css/icon.css">
	<link rel="stylesheet" type="text/css" href="easyui/css/demo.css">
	<link rel="stylesheet" type="text/css" href="back/css/style.css">
	<script type="text/javascript" src="back/js/jquery.min.js"></script>
	<script type="text/javascript" src="back/js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="back/js/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript"  src="back/js/ajaxfileupload.js"></script>
	<script type="text/javascript"  src="back/js/cropbox.js"></script>
	<script type="text/javascript" src="ckeditor/ckeditor.js"></script>  
    <script type="text/javascript" src="ckeditor/config.js"></script>  
    <script type="text/javascript" src="back/js/index.js"></script>
    <script type="text/javascript" src="back/js/showpic.js"></script>
   	
<style type="text/css">
	#toplogo{
		font-size:14px;
		float: right;
		width: 200px;
		height: 30px;
		margin-top:15px;
		margin-right:20px;
	}
	#toplogo a:hover{
		color:red;
	}
	#footer{
			font-size:20px;
			letter-spacing:8px;
		}
</style>
<script type="text/javascript">
	function exit(){
		 $.messager.confirm('信息确认','您确认要安全退出吗？',function(rs){
			 if(rs){
				 $.post("back/manager/doExit.jsp",function(data){
						if(data>0){
							location.href = "toAdmin.action";

							location.href = "login1.jsp";
						}
					});
			 }else{
			 return;
		 }
	 });
	}
	function CurentTime(){
        var nows = new Date();
        var year = nows.getFullYear();       //年
        var month = nows.getMonth() + 1;     //月
        var day = nows.getDate();            //日
        var hh = nows.getHours();            //时
        var mm = nows.getMinutes();          //分
        var ss =nows.getSeconds();           //秒
        var clock = year + "年"+"-";
        if(month < 10)
            clock += "0";
        clock += month + "月"+"-";
        if(day < 10)
            clock += "0";
        clock += day +"日"+ " ";
        if(hh < 10)
            clock += "0";
        clock += hh + ":";
        if (mm < 10) clock += '0'; 
        clock += mm +":";
        if (ss < 10) clock += '0';
        clock += ss;
        $("#Date").html(clock);
        var ww=nows.getDay();
        var str='';
        switch(ww){
         case 0:str='天';break;
         case 1:str='一';break;
         case 2:str='二';break;
         case 3:str='三';break;
         case 4:str='四';break;
         case 5:str='五';break;
         case 6:str='六';break;
        }
        $("#Date").append(""+"星期"+str); 
    } 
	$(function(){
		window.setInterval("CurentTime()", 1000);
	});  
</script>
</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px">
	<span id="Date" style="margin-left:10px;width:215px;"></span>
	<span id="titlespan" style="font-size:30px;letter-spacing:14px;margin-left:300px;position:fixed;">好知网后台管理</span>
	<div id="toplogo">
		<span style="float:left;font-size:14px;">当前管理员:${myself.admin_name}</span>
		<a href="javascript:exit()" style="float:left;font-size:14px;margin-left:20px;text-decoration:none;" id="tuichu">[安全退出]</a>
	</div>
	</div>
	<div data-options="region:'west',split:true,title:'菜单'" style="width:150px;padding:10px;">
		<div class="easyui-accordion" style="width: 100%;">
		<div title="管理员管理" style="padding:10px;overflow: auto;">
			<ul class="easyui-tree" >
				<li data-options="iconCls:'icon-save'">管理员管理</li>
			</ul>
		</div>
		<div title="会员管理" style="padding:10px;">
			<ul class="easyui-tree" >
				<li data-options="iconCls:'icon-save'">会员管理</li>
			</ul>
		</div>
		<div title="课程类型管理" style="padding:10px">
			<ul class="easyui-tree" >
				<li data-options="iconCls:'icon-save'">课程类型管理</li>
			</ul>
		</div>
		<div title="课程管理" style="padding:10px">
			<ul class="easyui-tree" >
				<li data-options="iconCls:'icon-save'">课程管理</li>
			</ul>
		</div>
		<div title="小组管理" style="padding:10px">
			<ul class="easyui-tree" >
				<li data-options="iconCls:'icon-save'">小组管理</li>
			</ul>
		</div>
		<div title="个人信息" style="padding:10px">
			<ul class="easyui-tree" >
				<li data-options="iconCls:'icon-save'">个人信息</li>
			</ul>
		</div>
		</div>
	</div>
	<div data-options="region:'east',split:true,collapsed:true,title:'帮助'" style="width:100px;padding:10px;">
	east region</div>
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px; text-align:center" id="footer">
	@源辰信息   版权所有
	</div>
	<div data-options="region:'center',title:'操作'">
		<div id="center_area" class="easyui-tabs" data-options="fit:true">
		</div>
	</div>
</body>
</html>
