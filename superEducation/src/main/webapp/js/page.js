$(function(){
/*	<!-- 插入表情  ------------------------------------>
*/	$("#emotion").bind("click",function(){
		$("#emotion")[0].style.display = "none";	
		$("#emotions")[0].style.display = "block";
	});
/*	<!-- 插入表情  ------------------------------------>
*/	
	/*$("#emotions img").bind("click",function(){
		alert("giedhdh");
		var str = this.getAttribute("src");
		var sstr = this.getAttribute("title");
		sstr = "[["+sstr+"]]";
		alert(str);
		
		s = $("#comment").val()+sstr;
		alert(s);
		$("#comment").val(" ");
		$("#comment").val(s);
	});*/
	
/*	<!-- 详细信息显示框--------------------------------------- -->
*/	$(".img-responsive").bind("mousemove",function(){
		$(".popover-content")[0].style.display="block";
	});
	
	$(".img-responsive").bind("mouseout",function(){
		$(".popover-content")[0].style.display="none";
	});
/*	<!--  详细信息显示框---------------------------------------- -->
	
	<!--  回复-------------------------------------------------  -->*/
	$("#comment-btn").bind("click",function(){
		var content = $("#comment").val();
/*		var con = content.split("[");
		alert(con);
		var imgstr;
		if(con.contains("委屈")){
			imgstr = "image/10.gif";
		}*/
		str= '<li id="item92705"><div class="userimg"><a class=" js-user-card" href="javaScript:void(0)" data-card-url="/user/2358982/card/show" data-user-id="2358982">'+
		'<img class="img-responsive" src="../images/avatar.png" alt="珘珘"></a></div><div class="userInfo"><p class="head"><a href="javaScript:void(0)">珘珘</a><span>1天前</span></p>'+
		'<div class="body">'+content+'<img src="../images/2.gif" title="哈哈大笑" alt="哈哈大笑"></div>'+
		'<div class="pull-right  "><a class="con" href="javascript:;" data-role="revert" data-url="/comment/92705/post" data-revertto="珘珘">回复</a>'+
		'<a class="con" href="javascript:;" data-role="delete" data-target="item92705" data-url="/comment/92705/delete">删除</a></div></div></li>';
										
		$("#commentList").append(str);											
	    $("#comment").val(" ");					
	});
/*	<!--  回复 -------------------------------------------------  -->
*/	

	
	
});