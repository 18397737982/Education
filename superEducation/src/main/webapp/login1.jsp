<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="">
<head>
<base href="/superEducation/"/>
<meta charset="UTF-8">
<title>课程图片 - 好知网-重拾学习乐趣-Powered By Howzhi  </title>
<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">
<script type="text/javascript" src="back/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="back/js/login.js"></script>
<link href="back/css/login2.css" rel="stylesheet" type="text/css" />
<style type="text/css">
	#msg{
		color:red;
	}
	#clear{ clear:both}
</style>
<script>
//加载验证码
function loadimage() {
	document.getElementById("randImage").src = "back/manager/img.jsp?" + Math.random();
}
function shuaxin(){
	loadimage();
}
//验证码校验
var flag=false;
function InputYZcode(){
	var yzm=$("#YZcodeInput").val();
	if(yzm.length==4){
		$.post("back/manager/CheckYZcode.jsp",{"yzm":yzm},function(data){
			if(data>0){
			flag=true;
		}else{
			flag=false;
			alert("温馨提示：验证码输入错误");
			loadimage();
		}
	});
	}
}
	function loginadmin(){
		var admin_name=$("#aname").val();
		var admin_password=$("#apassword").val();
		if(admin_name==null || admin_name==""){
			$("#msg").html("账号不能为空！");
		}else if(admin_password==null || admin_password==""){
			$("#msg02").html("两次密码不一致！");
		}else if(flag==false){
			alert("温馨提示：验证码输入错误");
		}else{
			$.post("admin/loginadmin.action",{admin_name:admin_name,admin_password:admin_password},function(data){
				if(data>0){
					$("#aname").val("");
					$("#apassword").val("");
					location.href = "back/manager/index.jsp";
				}else{
					alert("账户或密码错误");
				}
			});
		}
	}
	
	function register(){
		var admin_name=$("#user").val();
		var admin_password=$("#passwd").val();
		var email=$("#qq").val();
		var password=$("#passwd2").val();
		if(admin_name==null || admin_name==""){
			$("#userCue").html("账号不能为空！");
		}else if(admin_password==null || admin_password==""){
			$("#userCue").html("密码不能为空！");
		}else if(admin_password!=password){
			$("#userCue").html("密码输入不一致！");
		}else if(email==null || email==""){
			$("#userCue").html("电子邮箱不能为空");
		}else{
			$.post("admin/register.action",{admin_name:admin_name,admin_password:admin_password,email:email},function(data){
			});
		}
	}
</script>
</head>
<body>
	<body>
<h1>好知网后台登录<sup>V2016</sup></h1>

<div class="login" style="margin-top:50px;">
    
    <div class="header">
        <div class="switch" id="switch"><a class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">快速登录</a>
			<a class="switch_btn" id="switch_login" href="javascript:void(0);" tabindex="8">快速注册</a><div class="switch_bottom" id="switch_bottom" style="position: absolute; width: 64px; left: 0px;"></div>
        </div>
    </div>    
  
    
    <div class="web_qr_login" id="web_qr_login" style="display: block; height:300px;">    

            <!--登录-->
            <div class="web_login" id="web_login">
               
               
               <div class="login-box">
    
            
			<div class="login_form">
				<form action="" name="loginform" accept-charset="utf-8" id="login_form" class="loginForm" method="post">
                <div class="uinArea" id="uinArea">
                <label class="input-tips" for="u">帐号：</label>
                <div class="inputOuter" id="uArea">
                    <input type="text" id="aname" name="aname" class="inputstyle"/><span id="msg"></span>
                </div>
                </div>
                <div class="pwdArea" id="pwdArea">
               <label class="input-tips" for="p">密码：</label> 
               <div class="inputOuter" id="pArea">
                    <input type="password" id="apassword" name="apassword" class="inputstyle"/><span id="msg02"></span>
                </div>
                </div>
               <div style="width:310px;">
                <label style="font-size:16px;margin-top:20px;float:left;">验证码：</label>
               	<input  class="Captcha" name="YZcodeInput" style="height:25px;width:80px;float:left;margin-top:20px;" placeholder="请输入验证码！" onblur="InputYZcode()" id="YZcodeInput" />
				<img alt="加载失败" name="randImage" id="randImage" src="back/manager/img.jsp" style="margin-left:10px;float:left; width:80px; height:40px; margin-top:10px;" border="1" onclick="shuaxin()">
				<a href="javascript:loadimage();" style="margin-left:5px;margin-top:35px;float:left;">点击刷新</a>
               </div>
                <div id="clear" style="padding-left:50px;margin-top:100px;"><input type="button" value="登 录" style="width:150px;" class="button_blue" onclick="loginadmin()"/></div>
             	
              </form>
           </div>
           
            	</div>
               
            </div>
            <!--登录end-->
  </div>

  <!--注册-->
    <div class="qlogin" id="qlogin" style="display: none; ">
   
    <div class="web_login"><form name="form2" id="regUser" accept-charset="utf-8"  action="" method="post">
	      <input type="hidden" name="to" value="reg"/>
		      		       <input type="hidden" name="did" value="0"/>
        <ul class="reg_form" id="reg-ul">
        		<div id="userCue" class="cue">快速注册请注意格式</div>
                <li>
                	
                    <label for="user"  class="input-tips2">用户名：</label>
                    <div class="inputOuter2">
                        <input type="text" id="user" name="user" maxlength="30" class="inputstyle1" value=""/><span id="tishi1"></span>
                    </div>
                    
                </li>
                
                <li>
                <label for="passwd" class="input-tips2">密码：</label>
                    <div class="inputOuter2">
                        <input type="password" id="passwd"  name="passwd" maxlength="16" class="inputstyle2"/><span id="tishi2"></span>
                    </div>
                    
                </li>
                <li>
                <label for="passwd2" class="input-tips2">确认密码：</label>
                    <div class="inputOuter2">
                        <input type="password" id="passwd2" name="" maxlength="16" class="inputstyle3" /><span id="tishi3"></span>
                    </div>
                    
                </li>
                
                <li>
                 <label for="qq" class="input-tips2">QQ邮箱：</label>
                    <div class="inputOuter2">
                       
                        <input type="text" id="qq" name="qq" maxlength="30" class="inputstyle4"/>
                    </div>
                   
                </li>
                
                <li>
                    <div class="inputArea">
                        <input type="button" id="reg" onclick="register()" style="margin-top:10px;margin-left:85px;" class="button_blue" value="同意协议并注册"/> <a href="javascript:void(0)" class="zcxy" >注册协议</a>
                    </div>
                    
                </li><div class="cl"></div>
            </ul></form>
    </div>
    </div>
    <!--注册end-->
</div>
<div class="jianyi">*推荐使用ie8或以上版本ie浏览器或Chrome内核浏览器访问本站</div>
</body>

</body>
</html>
