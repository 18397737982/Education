// JavaScript Document

/*	$(".register").click( function () {
		 $("#login-box").hide(); 
		 $("#register-box").show();
	});*/
	var nameFlag=false;
	var emailFlag=false;
	var codeFlag=false;
	
	function register(){
		$("#login-box").hide(); 
		$("#register-box")[0].style.display="block";
	}
	
	function login(){
		$("#register-box").hide(); 
		$("#login-box")[0].style.display="block";
	}
	
	//检查邮箱
	function check_email(){
		$(".error_name").html("");
		var email=$("#register_eamil").val();
		$.post("userinfo/checkemail",{"email":email},function(data){
			
			var message="";
			if(data>0){
				message+="<div id='error_eamil' style='margin-bottom:20px;'>此邮箱已经被注册！！！！</div>";
				$("#register_eamil").val("");
				emailFlag=false;
			}else{
				emailFlag=true;
			}
			$(".error_eamil").html(message);
		})
	}
	
	//检查用户名
	function check_uname(){
		$(".error_name").html("");
		$.post("userinfo/checkuname",{"uname":$("#register_username").val()},function(data){
			
			var message="";
			if(data>0){
				message+="<div id='error_name' style='margin-top:20px;'>此用户名已经被使用！！！！</div>";
				$("#register_username").val("");
				nameFlag=false;
			}else{
				nameFlag=true;
			}
			$(".error_name").html(message);
		})
	}
	
	//点击获取验证码
	/*function sendMail(){
		var emailBox=$("#register_eamil").val();
		alert(emailBox);
		var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
		if(emailBox=="" || emailBox==null){
			$.messager.alert('错误提示','您还没有输入邮箱!!!','error');
		}else{
			if(emailBox.match(reg)){
				$.post("userinfo/sendMail",{"email":emailBox},function(data){
					alert(data);
					var yzmBox=$("#captcha_num").val();
					if(yzmBox==data){
						codeFlag=true;
					}else{
						codeFlag=false;
					}
				})
			}else{
				$.messager.alert('错误提示','邮箱格式不正确!!!','error');
			}
		}
	}*/
	var timeObj;
	var time;
	function sendMail(){
		var emailBox=$("#register_eamil").val();
		//alert(emailBox);
		var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
		if(emailBox=="" || emailBox==null){
			$.messager.alert('错误提示','您还没有输入邮箱!!!','error');
		}else{
			if(emailBox.match(reg)){
				time=60;
				$.post("userinfo/sendMail",{"email":emailBox},function(data){
					//alert(data);
					var yzmBox=$("#captcha_num").val();
					if(data>0){
				    	   timeObj=window.setInterval(timeCode, 1000);
				    	   $("#submit").attr("disabled","false");
				       }
					
					if(yzmBox==data){
						codeFlag=true;
					}else{
						codeFlag=false;
					}
				})
			}else{
				$.messager.alert('错误提示','邮箱格式不正确!!!','error');
			}
		}
	}
	
	//判断是否到达注册标准
	function checkRegister(){
		if(emailFlag==true  &&  nameFlag==true  && codeFlag==true){
			return true;
		}else{
			$.messager.alert('错误提示','注册失败!!!','error');
			return false;
		}
	}
	
	
	function timeCode(){
		if(time>0){
			$("#submit").html(time+"s");
			time=time-1;
		}else{
			window.clearInterval(timeObj);
			$("#submit").html("发送邮箱验证码");
			$("#submit").removeAttr("disabled");
		}
	}