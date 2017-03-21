if("${users}"!=""){//登陆验证
		//获取页面课程信息
	var d;
	$.ajax({
		url:"getCourseInformation.action",
		data: {"user_id": "${users.user_id}"},
		method:"POST",
		type:"JSON",
		success:function(data){
			alert(data);
			$("#SendMsg").css("display","block");
			$("#inform").css("display","block");
			
			
		}
	});
	}