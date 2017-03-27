//学习中心的js
$(function(){
	$("#more-dropdown").bind("mousemove",function(){
		$("#dropdown-menu")[0].style.display="none";
	});
	
	//点击签到
	$("#tocheckin").bind("click",function(){
		$("#sign-no")[0].style.display="none";
		$("#sign-in")[0].style.display="block";
	});
	
	//学习中心，在学，点击已学完
	$("#learned").bind("click",function(){
		$("#learning")[0].setAttribute("class","");
		$("#studying")[0].style.display="none";
		$("#classroom")[0].setAttribute("class","");
		$("#studyroom")[0].style.display="none";
		$("#learned")[0].setAttribute("class","active");
		$("#studied")[0].style.display="block";
		
	});
	
	//学习中心，在学，点击学习中
	$("#learning").bind("click",function(){
		$("#learned")[0].setAttribute("class","");
		$("#studied")[0].style.display="none";
		$("#classroom")[0].setAttribute("class","");
		$("#studyroom")[0].style.display="none";
		$("#learning")[0].setAttribute("class","active");
		$("#studying")[0].style.display="block";
	});
	
	//学习中心，在学，点击班级
	$("#classroom").bind("click",function(){
		$("#learned")[0].setAttribute("class","");
		$("#studied")[0].style.display="none";
		$("#learning")[0].setAttribute("class","");
		$("#studying")[0].style.display="none";
		$("#classroom")[0].setAttribute("class","active");
		$("#studyroom")[0].style.display="block";
	});
	
	//学习中心首页，点击学习动态
	$("#studyactive").bind("click",function(){
		$("#friendactive")[0].setAttribute("class","");
		$("#friend")[0].style.display="none";
		$("#studyactive")[0].setAttribute("class","active");
		$("#studentactive")[0].style.display="block";
	});
	
	//学习中心首页，点击好友动态
	$("#friendactive").bind("click",function(){
		$("#studyactive")[0].setAttribute("class","");
		$("#studentactive")[0].style.display="none";
		$("#friendactive")[0].setAttribute("class","active");
		$("#friend")[0].style.display="block";
	});
	
	//学习中心,在教，点击已发布
	$("#teach-published").bind("click",function(){
		$("#teach-auditing")[0].setAttribute("class","");
		$("#auditing")[0].style.display="none";
		
		$("#teach-unpublished")[0].setAttribute("class","");
		$("#unpublished")[0].style.display="none";
		
		$("#teach-classroom")[0].setAttribute("class","");
		$("#teachroom")[0].style.display="none";
		
		$("#teach-published")[0].setAttribute("class","active");
		$("#published")[0].style.display="block";
		
		var status =1;
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
	
	//学习中心,在教，点击审核中
	$("#teach-auditing").bind("click",function(){
		
		$("#teach-published")[0].setAttribute("class","");
		$("#published")[0].style.display="none";
		
		$("#teach-unpublished")[0].setAttribute("class","");
		$("#unpublished")[0].style.display="none";
		
		$("#teach-classroom")[0].setAttribute("class","");
		$("#teachroom")[0].style.display="none";
		
		$("#teach-auditing")[0].setAttribute("class","active");
		$("#auditing")[0].style.display="block";
		
		var status =0;
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
			$("#replaceabling").html(listStr);
		},"json");
	});
	
	//学习中心,在教，点击未发布
	$("#teach-unpublished").bind("click",function(){
		$("#teach-published")[0].setAttribute("class","");
		$("#published")[0].style.display="none";
		
		$("#teach-auditing")[0].setAttribute("class","");
		$("#auditing")[0].style.display="none";
		
		$("#teach-classroom")[0].setAttribute("class","");
		$("#teachroom")[0].style.display="none";
		
		$("#teach-unpublished")[0].setAttribute("class","active");
		$("#unpublished")[0].style.display="block";
		
		
	});
	
	//学习中心,在教，点击班级
	$("#teach-classroom").bind("click",function(){
		$("#teach-published")[0].setAttribute("class","");
		$("#published")[0].style.display="none";
		
		$("#teach-auditing")[0].setAttribute("class","");
		$("#auditing")[0].style.display="none";
		
		$("#teach-unpublished")[0].setAttribute("class","");
		$("#unpublished")[0].style.display="none";
		
		$("#teach-classroom")[0].setAttribute("class","active");
		$("#teachroom")[0].style.display="block";
	});
	
	var total = 100; //总数
	var curN = 80; //当前值
	function show()
	{
		var percent=(curN / total) * 400;
		$(".bar").css("width",percent); //200是外框的宽度
	}
	show();
});

