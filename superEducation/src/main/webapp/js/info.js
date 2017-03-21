//学习中心的js
$(function() {
	var user_id = $("input[name='userid']").val();
	$(".list-group-item a").bind("click", function() {
		var str = this.innerText;
		if (str.trim() == "基础信息") {
			$("#baseinfo")[0].style.display = "block";
			$("#touxiang")[0].style.display = "none";
			$("#update")[0].style.display = "none";
		} else if (str.trim() == "头像设置") {
			$("#touxiang")[0].style.display = "block";
			$("#baseinfo")[0].style.display = "none";
			$("#update")[0].style.display = "none";
			
			$.post("userInfo/selectTouxiang.action", {"_method" : "POST",user_id :user_id},function(data){
				if(data){
					var st="";
					//alert(data);
					alert(data);
					st=data.pic;
					if(st.indexOf("avatar") > 0 ){
						$("#imgPrc").attr('src',"images/avatar.png");
					}else{
						$("#imgPrc").attr('src',"/touxiangPic/"+data.pic);
					}
								
				}
			});
			
		} else if (str.trim() == "安全设置") {
			$("#update")[0].style.display = "block";
			$("#baseinfo")[0].style.display = "none";
			$("#touxiang")[0].style.display = "none";
		}
	});
	
	$('#password-save-btn4').bind("click", function(){
		var curpwd = $('#form_currentPassword').val();
		var newpwd = $('#form_newPassword').val();
		var conpwd = $('#form_confirmPassword').val();
		if(curpwd!=null&newpwd!=null&conpwd!=null){
			$.post("userInfo/editpwd.action", {"_method" : "POST",user_id :user_id,curpwd:curpwd,newpwd:newpwd,conpwd:conpwd},function(data){
				if(data==1){
					alert("当前密码输入错误!!!");
				}else if(data==2){
					alert("确认密码输入错误!!!");
				}else{
					alert("修改密码成功!!!");
					$('#form_currentPassword').val("");
					$('#form_newPassword').val("");
					$('#form_confirmPassword').val("");
				}
			});
		}
	});
	
	$('.form-control').bind("blur",function(){
		var str = $(this).val();
		if(str ==""){
			var st = $(this).next().text();
			$(this).next().css('display', 'block');
			$(this).next().css('color', 'red');
			$(this).parent().prev().css('color', '#A94442');
			$(this).css('border-color', '#F03D7B');
		}
	});
	
	$('#profile_emailture').bind("blur",function(){
		
		var str = $(this).val();
		if(str ==""){
			alert("邮箱不能为空");
		}else{
			sendMail();
		}
	});
	
	$('.form-control').bind("focus",function(){
		var str = $(this).val();
		$(this).next().css('display', 'none');
		$(this).parent().prev().css('color', '#333333');
		$(this).css('border-color', '#E1E1E1');
	});
	
	
	$('#profile-edit-btn').bind("click", function(){
		var str='<img id="imgPrc" src="images/avatar.png" style="width:200px;height:180px;">';
		var str2='<input type="file" accept="image/*" class="webuploader-element-invisible" name="file" id="unload" style="border: none;"onchange="preImg(this.id);">';
		$('#showimg').html('').append($(str));
		$('#updateImg').html('').append($(str2));
	});
	
	
	$('#profile-save-btn3').bind("click", function(){
		var oldpwd = $('oldpwd').val();
		var newpwd = $('newold').val();
	});
});

function sendMail(){
	var emailBox=$("#profile_emailture").val();
	//alert(emailBox);
	var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
		if(emailBox.match(reg)){
			time=60;
			$.post("userinfo/sendMail",{"email":emailBox},function(data){
				var yzmBox=$("#captcha_num").val();
				if(data>0){
			    	 //  timeObj=window.setInterval(timeCode, 1000);
			    	   $("#submit").attr("disabled","false");
			       }
				if(yzmBox==data){
					codeFlag=true;
				}else{
					codeFlag=false;
				}
			})
		}else{
			alert('错误提示邮箱格式不正确!!!');
		}
	
}

function save() {
	var realname=$("#profile_realnameture").val();
	var age=$("#profile_agesture").val();
	var email=$("#profile_emailture").val();
	var usign = $("#profile_signature").val();
	var introduce = $("#profile_about").val();
	var sex = $("input[name='gender']:checked").val();
	
	$.post("userinfo/save", {user_id:user_id,user_name:user_name,sex:sex,age:age,realname:realname,email:email,usign:usign,introduce:introduce},function(data) {
		var str = "";
		if (data == 1) {
			str = '<div class="alert alert-success">基础信息保存成功。</div>';
			alert("修改成功!!!");
		}
		$('#info').append($(str));
	}, 'json');
}



function preImg(sourceId, targetId) {  
    if (typeof FileReader === 'undefined') {  
        alert('Your browser does not support FileReader...');  
        return;  
    }  
    var reader = new FileReader();  
  
    reader.onload = function(e){  
        var img = document.getElementById("imgPrc");  
        img.src = this.result;  
    }  
    reader.readAsDataURL(document.getElementById(sourceId).files[0]);  
}  




