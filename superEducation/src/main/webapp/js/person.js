$(function(){
	var userid=$('#toggle img').attr("id");
	
	$("#showImg").bind("click",function(){
		$("#showImg")[0].style.display="none";
		$("#showLook")[0].style.display="block";
	});
	
	$("#showLook img").click(function(){
		var content= $("#scontent").val();
		var alt=$(this).attr("alt");
		$("#scontent").val(content+"[["+alt+"]]");
	});
	
	$("#comment-btns").click(function(){
		var receiveman=$("#receiveman").val();
		var sendType=$("#receiveman").val();
		var scontent=$("#scontent").val();
		$.post("message/addMessage.action",{"_method":"POST","user_id":user_id,"receiveman":receiveman,"sendType":sendType,"scontent":scontent},function(data){
			var listStr="";
			listStr+="<p><h2>";
			listStr+="我的留言板";
			listStr+="</h2><p>"
			if(data.length!=0){
				for(var i=0;i<data.length;i++){
					listStr+='<div class="imgtest">';
					listStr+='<figure>';
					listStr+='<div>';
					listStr+='<img class="img-responsive" src="'+data[i].userInfo.pic+'" alt="'+data[i].userInfo.user_name+'">';
					listStr+='</div>';
					listStr+='</figure>';
					listStr+='</div>';
					listStr+='<div class="userInfos">';
					listStr+='<a href="/u/2419296/">'+data[i].userInfo.user_name+'</a>';
					listStr+='<span>刚刚</span>';
					listStr+='</p>';
					listStr+='<div class="body">';
					listStr+=data[i].scontent;
					listStr+='</div>';
					listStr+='<div class="pull-right ">';
					listStr+='<a class="con" href="javascript:;" data-role="revert" data-url="/comment/96043/post" data-revertto="天降大任">回复</a>&nbsp;&nbsp;';
					listStr+='<a class="con" href="javascript:;" data-role="delete" data-target="item96043" data-url="/comment/96043/delete">删除</a>';
					listStr+='</div></div>';
					listStr+='</br></br>';
				}
			}
			$("#commentList").html(listStr);
		},"json");
	});


	
	
	$.post("studyCourse/personCourse",{"_method":"POST","user_id":user_id},function(data){
		var listStr="";
		if(data.length!=0){
			for(var i=0;i<data.length;i++){
				listStr+='<div class="col-md-4 col-sm-6 " >';
				listStr+='<div class="course-item">';
				listStr+='<div class="course-img">';
				listStr+='<img src="'+data[i].coursephoto+'" alt="'+data[i].course_name+'" class="">';
				listStr+='<div class="mask"><a href="toOneCourse.action/'+data[i].course_id+'"> <span class="btn btn-primary">开始学习</span></a></div></div>';
				listStr+='<div class="course-info">';
				listStr+='<div class="title">';
				listStr+='<span class="label label-p">'+data[i].lass_category.class_categorys+'</span> <a class="transition" href="page/joinproject.jsp?courseid='+data[i].course_id+'">'+data[i].course_name+'</a></div>';
				listStr+='<div class="metas"><span>'+data[i].course_view+'浏览</span>/ <span>'+data[i].memberCount+'学员</span>/ <span>'+data[i].assessAvg+'评分</span></div>';
				listStr+='<div class="teacher text-o-show">';
				listStr+='<a class=" js-user-card" href="javaScript:void(0);"';
				listStr+='data-card-url="/user/1931873/card/show" data-user-id="'+data[i].userInfo.user_id+'">';
				listStr+='<img class="avatar-ss " src="'+data[i].userInfo.pic+'" alt="'+data[i].userInfo.user_name+'"> '+data[i].userInfo.user_uname+'</a>';
				listStr+='<div class="price free pull-right"><span>免费</span></div></div></div></div></div>';
			}
		}else{
			listStr+='<div class="empty"><i class="es-icon es-icon-locallibrary"></i>ta还没有参加任何课程</div>';
		}
		
		$("#course-item").html(listStr);
	},"json");
	
	
	$.post("studyCourse/personNote",{"_method":"POST","user_id":user_id},function(data){
		var listStr="";
		if(data.length!=0){
			listStr+='<div class="classroom-item row">';
			for(var i=0;i<data.length;i++){
				listStr+='<div class="col-md-6">';
				listStr+='<div class=" home-out under-line">';
				listStr+='<h4><i class="fa fa-pencil"></i> 来自 <a class="first"';
				listStr+='href="/note/43180">'+data[i].class_hour.title+'</a> <a class="pull-right last"';
				listStr+='href="javascript:;"> <i class="fa fa-heart-o"></i> (0)</a></h4>';
				listStr+='<div class="f-content notes-style">'+data[i].notes_content+'</div></div></div>';
			}
			listStr+='</div>';
		}else{
			listStr+='<div class="empty">ta没有公开的笔记</div>';
		}
		$("#personNote").html(listStr);
	},"json");
	
	
	$.post("attention/attentionInfo",{"_method":"POST","user_id":user_id},function(data){
		var listStr="";
		for(var i=0;i<data.length;i++){
			listStr+='<li><a class=" js-user-card" href="http://www.howzhi.com/u/5759/" data-card-url="/user/5759/card/show" data-user-id="'+data[i].user_id+'">';
			listStr+='<img class="avatar-sm" src="'+data[i].pic+'" alt="'+data[i].user_name+'">';
			listStr+='</a> <a href="http://www.howzhi.com/u/5759/" class="name">'+data[i].user_name+'</a></li>';
		}
		$("#home-attent").html(listStr);
	},"json");
	
	$.post("studyCourse/courseCount",{"_method":"POST","user_id":user_id},function(data){
		$("#courseCount").html(data);
	},"json");
	
	$.post("studyCourse/teachCount",{"_method":"POST","user_id":user_id},function(data){
		$("#teachCount").html(data);
	},"json");
	
	$.post("studyCourse/noteCount",{"_method":"POST","userid":user_id},function(data){
		$("#noteCount").html(data);
	},"json");
	
	$.post("attention/attentionCount",{"_method":"POST","user_id":user_id},function(data){
		$("#attentionCount").html("关注（"+data+"）");
	},"json");
	
	$.post("attention/fansCount",{"_method":"POST","user_id":user_id},function(data){
		$("#fansCount").html("粉丝（"+data+"）");
	},"json");
	
	$("#fansCount").bind("mouseover",function(){
		$("#attentionCount").removeClass("first active");
		$("#attentionCount").addClass("first");
		$(this).addClass("pull-right active");
		$.post("attention/fansInfo",{"_method":"POST","user_id":user_id},function(data){
			var listStr="";
			for(var i=0;i<data.length;i++){
				listStr+='<li><a class=" js-user-card" href="http://www.howzhi.com/u/5759/" data-card-url="/user/5759/card/show" data-user-id="'+data[i].user.userid+'">';
				listStr+='<img class="avatar-sm" src="'+data[i].pic+'" alt="'+data[i].user_name+'">';
				listStr+='</a> <a href="http://www.howzhi.com/u/5759/" class="name">'+data[i].user_name+'</a></li>';
			}
			$("#home-attent").html(listStr);
		},"json");
	});
	
	
	$("#attentionCount").bind("mouseover",function(){
		$("#fansCount").removeClass("pull-right active");
		$("#fansCount").addClass("pull-right");
		$(this).removeClass("first");
		$(this).addClass("first active");
		$.post("attention/attentionInfo",{"_method":"POST","user_id":user_id},function(data){
			var listStr="";
			for(var i=0;i<data.length;i++){
				listStr+='<li><a class=" js-user-card" href="http://www.howzhi.com/u/5759/" data-card-url="/user/5759/card/show" data-user-id="'+data[i].user_id+'">';
				listStr+='<img class="avatar-sm" src="'+data[i].pic+'" alt="'+data[i].user_name+'">';
				listStr+='</a> <a href="http://www.howzhi.com/u/5759/" class="name">'+data[i].user_name+'</a></li>';
			}
			$("#home-attent").html(listStr);
		},"json");
	});
	
	
	//获取用户在教的课程
	$("#teaching").bind("click",function(){
		$("#nav-mian").children().removeClass("active");
		$(this).addClass("active");
		var status=1;
		$.post("studyCourse/teachingCourse",{"_method":"POST","user_id":user_id,"status":status},function(data){
			var listStr="";
			listStr+='<div class="flat myhz-course"> '; 
			listStr+='<h3>我的在教课程</h3>';
			listStr+='<div class="course phPublic-course">';
			listStr+=' <div class="section-body">';
			listStr+='<div class="row">';
				if(data.length!=0){
					for(var i=0;i<data.length;i++){
						listStr+='<div class="col-md-4 col-sm-6">';
						listStr+='<div class="course-item">';
						listStr+='<div class="course-img">';
						listStr+='<a href="javaScript:void(0);">';
						listStr+='<img src="'+data[i].course.coursephoto+'" class="img-responsive" alt="'+data[i].course.course_name+'">';
						listStr+='<span class="load" style="width:0%"></span>';
						listStr+='<div class="image-overlay"></div></a>';
						listStr+='<span class="pere">0%</span></div>';
						listStr+='<div class="course-info">';
						listStr+='<div class="title"><span class="label label-p">'+data[i].course.courseting+'</span>';
						listStr+='<a class="transition" href="javaScript:void(0);">'+data[i].course.course_name+'</a></div>';
						listStr+='<div class="metas"><span><a>'+data[i].course.course_view+'</a>浏览</span>/<span><a>'+data[i].memberCount+'</a>学员</span>/<span><a>'+data[i].assessAvg+'</a>评分</span></div>';
						listStr+='<div class="teacher"><a class=" js-user-card" href="http://www.howzhi.com/u/1400247/" data-card-url="/user/1400247/card/show" data-user-id="'+data[i].userInfo.user_id+'">';
						listStr+='<img class="avatar-ss " src="'+data[i].userInfo.pic+'" 　alt="'+data[i].userInfo.user_name+'">'+data[i].userInfo.user_name+'</a></div></div></div></div>';
					}
				}else{
					listStr+='<div class="empty"><i class="es-icon es-icon-locallibrary"></i>ta还没有教授任何课程</div>';
				}
			listStr+='</div></div></div>';
			$("#replaceable").html(listStr);
	},"json");
	});
	
	
	//获取用户在学的课程
	$("#studying").bind("click",function(){
		$("#nav-mian").children().removeClass("active");
		$(this).addClass("active");
		$.post("studyCourse/personCourse",{"_method":"POST","user_id":user_id},function(data){
			var listStr="";
			listStr+='<div class="flat myhz-course">'; 
			listStr+='<h3>我的在学课程';
			listStr+='<a href="javaScript:void(0);" class="active">学习中 </a>';
			listStr+='</h3>';
			listStr+='<div class="course phPublic-course">';
			listStr+='<div class="section-body">';
			listStr+='<div class="row">';
			if(data.length!=0){
				for(var i=0;i<data.length;i++){
					listStr+='<div class="col-md-4 col-sm-6">';
					listStr+='<div class="course-item">';
					listStr+='<div class="course-img">';
					listStr+='<a href="page/joinproject.jsp?courseid='+data[i].course_id+'">';	
					listStr+='<img src="'+data[i].coursephoto+'" class="img-responsive" alt="'+data[i].course_name+'">';
					listStr+='<span class="load" style="width:0%"></span>';
					listStr+='<div class="image-overlay"></div></a>';
					//console.info(data[i].studyPeriodcount/data[i].totalCm);
					if(data[i].totalCm==0){
						data[i].totalCm=1;
					}
					listStr+='<span class="pere">'+(data[i].studyPeriodcount/data[i].totalCm).toFixed(2)*100+'%</span></div>';
					listStr+='<div class="course-info">';
					listStr+='<div class="title"><span class="label label-p">'+data[i].lass_category.class_categorys+'</span>';
					listStr+='<a class="transition" href="page/joinproject.jsp?courseid='+data[i].course_id+'">'+data[i].course_name+'</a></div>';
					listStr+='<div class="metas"><span><a>'+data[i].course_view+'</a>浏览</span>/<span><a>'+data[i].memberCount+'</a>学员</span>/<span><a>'+data[i].assessAvg+'</a>评分</span></div>';
					listStr+='<div class="teacher"><a class=" js-user-card" href="http://www.howzhi.com/u/1400247/" data-card-url="/user/1400247/card/show" data-user-id="'+data[i].userInfo.user_id+'">';
					listStr+='<img class="avatar-ss " src="'+data[i].userInfo.photo+'" 　alt="'+data[i].userInfo.user_name+'">'+data[i].userInfo.user_name+'</a></div></div></div></div>';
				}
			}else{
				listStr+='<div class="empty"><i class="es-icon es-icon-locallibrary"></i>ta还没有参加任何课程</div>';
			}
			listStr+='</div></div></div>';
		$("#replaceable").html(listStr);
	},"json");
	});
	
	//参加的小组
	$("#group").bind("click",function(){
		$("#nav-mian").children().removeClass("active");
		$(this).addClass("active");
		var user_id=$('#toggle img').attr("id");
		$.post("groups/getAllGroup",{"_method":"POST"},function(data){
			var listStr="";
			listStr+='<div class="myhz-group flat">'; 
			listStr+='<h3>参加的小组</h3>';
			listStr+='<div class="group-item course-in">';
			listStr+='<ul class="course-in-ul clearfix">';
			if(data.length!=0){
				for(var i=0;i<data.length;i++){
					var strs= new Array(); 
					var groupnumber=data[i].groupnumber;
					strs=groupnumber.split(",")
					for(var j=0;j<strs.length;j++){
							listStr+='<li>';
							listStr+='<a href="toGroupIntroduce.action?groupname='+data[i].groupname+'&user_id='+user_id+'"><img src="'+data[i].pic+'"></a>';
							listStr+='<p><a href="toGroupIntroduce.action?groupname='+data[i].groupname+'&userid='+user_id+'">'+data[i].groupname+'</a></p></li>';
					}
					
				}
			}else{
				listStr+=' <li class="empty"><i class="es-icon es-icon-forum"></i>TA没有参加任何小组！</li>';
			}
			listStr+='</ul></div></div>';
		$("#replaceable").html(listStr);
	},"json");
	});
	
	
	//我的笔记
	$("#notes").bind("click",function(){
		$("#nav-mian").children().removeClass("active");
		$(this).addClass("active");
		$.post("studyCourse/personNote",{"_method":"POST","user_id":user_id},function(data){
			var listStr="";
			listStr+='<div class="notes flat">'; 
			listStr+='<div class="section-header"><h2>我的笔记</h2></div>';
			listStr+='<div class="section-body">';
			listStr+='<div class="classroom-item row">';
			if(data.length!=0){
				for(var i=0;i<data.length;i++){
					listStr+='<div class="col-md-6">';
					listStr+='<div class=" home-out under-line">';
					listStr+='<h4><i class="fa fa-pencil"></i> 来自 <a class="first"';
					listStr+='href="page/joinproject.jsp?courseid='+data[i].class_hour.course_id+'">'+data[i].class_hour.title+'</a> <a class="pull-right last"';
					listStr+='href="javascript:;"> <i class="fa fa-heart-o"></i> (0)</a></h4>';
					listStr+='<div class="f-content notes-style">'+data[i].notes_content+'</div></div></div>';
				}
			}else{
				listStr+=' <li class="empty"><i class="es-icon es-icon-forum"></i>TA没有参加任何小组！</li>';
			}
			listStr+='</div></div></div></div>';
		$("#replaceable").html(listStr);
	},"json");
	});
	
});
	//我的回答
function showanswer(){
	var userid=$('#toggle img').attr("id");
	$("#nav-mian").children().children().removeClass("active");
	$(this).addClass("active");
	console.info("yes");
	$.post("courseAnswer/myAnswer",{"_method":"POST","user_id":user_id},function(data){
		var listStr="";
		listStr+='<div class="flat myhz-question">';
		listStr+='<h3>我答过的问题';
		listStr+='<a href="javaScript:void(0);" class="active">答过的问题</a></h3>';
		listStr+='<ul class="course-in-ul" id="quesOranswer">';
		if(data.length!=0){
			for(var i=0;i<data.length;i++){
				listStr+='<li><div class="user-Img">';
				listStr+='<a class=" js-user-card" href="javaScript:void(0);" data-card-url="/user/2358985/card/show" data-user-id="'+data[i].userInfo.user_id+'">';
				listStr+='<img class="avatar-mm" src="'+data[i].userInfo.pic+'" alt="'+data[i].userInfo.user_name+'"></a></div>';
				listStr+='<div class="user-content"><h4><a href="http://www.howzhi.com/question/57627">'+data[i].courseQuestion.cqcontent+'</a>';
				listStr+='<span class="from">来自<a href="http://www.howzhi.com/course/1442/"></a></span>';
				listStr+='</h4><p>by '+data[i].userInfo.user_name+' • 回答</p> </div> </li>';
			}
		}else{
			listStr+=' <li class="empty"><i class="es-icon es-icon-forum"></i>TA还没有回答任何问题！</li>';
		}
		listStr+='</ul></div></div>';
	$("#replaceable").html(listStr);
	},"json");
}

function showquestion(){
	var user_id=$('#toggle img').attr("id");
	
		$("#nav-mian").children().removeClass("active");
		$(this).addClass("active");
		$.post("courseQuestion/myQuestion",{"_method":"POST","user_id":user_id},function(data){
			var listStr="";
			listStr+='<div class="flat myhz-question"> ';
			listStr+='<h3>我的提问';
			listStr+='<a href="javaScript:void(0);" class="active">提问</a></h3>';
			listStr+='<ul class="course-in-ul">';
			if(data.length!=0){
				for(var i=0;i<data.length;i++){
					listStr+='<li><div class="user-Img">';
					listStr+='<a class=" js-user-card" href="javaScript:void(0);" data-card-url="/user/2358985/card/show" data-user-id="'+data[i].userInfo.user_id+'">';
					listStr+='<img class="avatar-mm" src="'+data[i].userInfo.pic+'" alt="'+data[i].userInfo.user_name+'"></a></div>';
					listStr+='<div class="user-content"><h4><a href="http://www.howzhi.com/question/57627">'+data[i].cqcontent+'</a>';
					listStr+='<span class="from">来自<a href="http://www.howzhi.com/course/1442/"></a></span>';
					listStr+='</h4><p>by '+data[i].userInfo.user_name+' •问题</p> </div> </li>';
				}
			}else{
				listStr+=' <li class="empty"><i class="es-icon es-icon-forum"></i>TA还没有提出任何疑问！</li>';
			}
			listStr+='</ul></div></div>';
		$("#replaceable").html(listStr);
	},"json");
		
		
}


