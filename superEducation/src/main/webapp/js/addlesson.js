 $(function(){
	 //隐藏视频的简介
	 $("#textarea").hide();
	 $("#jieshao01").hide();
	 $("#wangluovideo").hide();
	 
	 $("#form-group for-text-type").hide();
	 //本地和网络视频的切换
	 $("#clickradio01").click(function(){
			$(".input-group").show();
			$("#wangluovideo").hide();
		});
		$("#clickradio02").click(function(){
			$(".input-group").hide();
			$("#wangluovideo").show();
		});
		
	//视频和图文的切换
	$("#addvideo").click(function(){
		$("#form-group").show();
		$(".form-group").css("display","block");
		$("#shipin02").show();
		$("#shipin03").show();
		
		$("#textarea").hide();
		$("#jieshao01").hide();
		$(".form-group for-text-type").hide();
		$("#form-group0011").hide();
		$("#form-group0011").css("display","none");
		$(".form-group for-text-type").css("display","none");
		$("#lesson-content-field").hide();
		$(".for-flash-type for-text-type for-ppt-type for-document-type").hide();	
		$("#texttime").hide();
		$("#myckeditor").hide();
		$("#parentmyckeditor").hide();
	});
	$("#addtext").click(function(){
		$("#textarea").show();
		$("#jieshao01").show();
		$(".form-group for-text-type").show();
		$(".for-flash-type for-text-type for-ppt-type for-document-type").show();	
		$(".form-group").show();
		$("#texttime").show();
		
		$(".for-video-type").hide();
		$(".form-group for-video-type for-audio-type").hide();
		$("#myckeditor").show();
		$("#parentmyckeditor").show();
	});
 });


