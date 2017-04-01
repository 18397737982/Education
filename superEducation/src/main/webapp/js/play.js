//学习中心的js
	var page=1;
	var starpage=0;
$(function() {
	//是否已经关注
	$.post("attention/isAttion",{"attention":attention,"user_id":userid},function(data){
		if(data!=1){
			$("#attion2").css("display","block");
			$("#attion").css("display","none");
		}else{
			$("#attion").css("display","block");
			$("#attion2").css("display","none");
		}
	});
	//查出授课老师相关信息

	
	
	//查出新晋成员
	

	//评论分页初始化
/*$("#commenttcpage").createPage({
	        pageCount:page,
	        current:1,
	        backFn:function(p){*/
	        	showAssess(0);
/*	        	      }
	   });*/
	
	//显示第一页的评论
	/*var cmid=window.location.href.split('=')[1];
	 $.post("courseAssess/getAssessByCmidByPage/",{"p":1,"cmid":cmid},function(data){
     	var contentstr="";
     	if(data){
	     	$.each(data,function(index,item){     		
	     		contentstr+='<li id="'+item.csid+'"><div class="userimg"><a class="js-user-card" href="page/person.jsp?userid='+item.user.userid+'"><img class="img-responsive" ';
	     			if(item.user.photo!=null){
	     				contentstr+="src='"+item.user.photo+"' ";
	     			}else{
	     				contentstr+="src='images/avatar.png' ";
	     			}
	     			contentstr+='alt="'+item.user.uname+'"></a></div><div class="userInfo">'
								+'<p class="head"><a href="#">'+item.user.uname+'</a><span>'+item.time+'</span></p>'
								+'<div class="body">'+item.content+'</div><div class="pull-right">'
								+'<a class="con"  href="javascript:;" onclick="revert(this)" data-revert="'+item.user.uname+'">回复</a>';
					if(uname.indexOf(item.user.uname) >= 0){
						contentstr+='<a class="con" onclick="del(this)" data-del="'+item.csid+'"  href="javascript:void(0);"  style="display:block">删除</a>';
					}	
						contentstr+'</div></div></li>';	
						
					 $("#commentList").html("").append($(contentstr));
					 $('#commentList').replaceface($('#commentList').html());//替换表情
				});   
			}
		},"json");
	 
	 var cmid=window.location.href.split('=')[1];
	 //推荐的课程
		 $.post("course/recommedCourseByCmid/",{"cmid":cmid},function(data){
			 var str="";
			 if(data){
				 $.each(data,function(index,item){ 
					 str+= '<div class="col-md-4 col-sm-6 "><div class="course-item"><div class="course-img"><img' 
					if(item.coursephoto==null){
					   str+='src="images/course.png"';
					}else{
					   str+='src="'+item.coursephoto+'"';
					}
					  str+='alt="'+item.ctitle+'" class=""><a href="page/joinproject.jsp?courseid='+item.courseid+'">'
						   +'<div class="mask"><span class="btn btn-primary">开始学习</span></div></a></div>'
						   +'<div class="course-info"><div class="title"><span class="label label-p">'+item.courseting+'</span>'
						   +'<a class="transition" href="page/joinproject.jsp?courseid='+item.courseid+'">'+item.ctitle+'</a>'
						   +'</div><div class="metas"><span>'+item.cview+'+浏览</span>/<span>'+item.memberCount+'学员</span>/<span>'+item.assessAvg+'评分</span></div>'
						   +'<div class="teacher text-o-show"><a class=" js-user-card" href="page/person.jsp?userid='+item.user.userid+'">'
						   +'<img class="avatar-ss " src="'+item.user.photo+'" alt="'+item.user.uname+'">'+item.user.uname+'</a>'
						   +'<div class="price free pull-right"><span>免费</span></div></div></div></div></div>';
					 
					  $("#recommedCourse").html("").append($(str));
				 });
			 }
		 });
		 
		*/
		 //发评论
	 $("a.face").smohanfacebox({
				Event : "click",	//触发事件	
				divid : "Smohan_FaceBox", //外层DIV ID
				textid : "Smohan_text" //文本框 ID
			});
		$('#Smohan_text').replaceface($('#Smohan_text').val());//替换表情
		$('#Smohan_text').replaceface($('#Smohan_text').html());//替换表情
			//解析表情  $('#Zones').replaceface($('#Zones').html());
	
		 var cmid=window.location.href.split('=')[1];
	  //判断是否有用户登录 没有就不能进行评论
		$('#Smohan_FaceBox').bind("click",function(){
			 if(flag=="false"){
				 $('#login-modal').css('display','block');
				 $('#loadingDiv').css('display','block');
			 }
		 }); 
		//点击关闭登录框
		$('#close').bind("click",function(){
			$('#ajax-username').val("");
			$('#ajax-password').val("")
			$('#login-modal').css('display','none');
			$('#loadingDiv').css('display','none');
		});
		//点击关闭加入框
		$('#close2').bind("click",function(){
			$('#studyCurrentCourse').css('display','none');
			$('#loadingDiv').css('display','none');
		});
		
		
		
		//发发发
		$('#currentUname').html(uname);
		$('#comment-btn').click(function() {
			//查询当前用户是否已学习了该课程
//		   $.post("studyCourse/countStudyCourseByUseridCmid/",{"userid":userid,"cmid":cmid},function(data){
//			   if(data>0){
				   var con=$('#Smohan_text').val();
					$.ajax({
						url:"insertcourseAssess.action",
						data: {"class_hour_id":class_hour_id,
									"content":con,
									"user_id": userid
						},
						method:"POST",
						type:"POST",
						dataType: 'json',
						success:function(data){
							if(data=="1"){
								alert("评论成功...")
								window.location.reload();
							}else{
								alert("错误：评论添加失败...");
								window.location.reload();
							}
						}
					 });
				   	
				   
				   
/*			   }else{
				   $('#studyCurrentCourse').css('display','block');
				   $('#loadingDiv').css('display','block');
			   }
			   $('#Smohan_text').val("");
		   });*/
		}); 
	  
		
		//右侧  课时 笔记 问答的切换
		var count=0;
		var count1=0;
		var count2=0;
		$('#clearfix li').bind(
				"click",
				function() {	
					$(this).parent().children().removeClass("active");
					$(this).addClass("active"); //样式改变						
					$('.learn-dashboard.toolbarhide .dashboard-toolbar').css("cssText", "right:0px !important;");
					$('#dashboard-body').css("width", "80%");
					
					var str = this.innerHTML;
					if (str.indexOf("课时") >= 0) {
						count+=1;
						if(count==1){
							
						}else{
						if($('#toolbar-1').css("display")=="block"){

							$('#toolbar-1').css("display", "none");$('#toolbar-2').css("display", "none");$('#toolbar-3').css("display", "none");
							$('.learn-dashboard.toolbarhide .dashboard-toolbar').css("cssText", "right:-342px !important;");	
							$('#dashboard-body').css("width", "100%");
						}else{
		
						$('#toolbar-1').css("display", "block");
						$('#toolbar-2').css("display", "none");
						$('#toolbar-3').css("display", "none");
				
						}
						}
						
					} else if (str.indexOf("笔记") >= 0) {
						/*count1+=1;
						if(count1==1){}*/
						if($('#toolbar-2').css("display")=="block"){				
							$('#toolbar-1').css("display", "none");$('#toolbar-2').css("display", "none");$('#toolbar-3').css("display", "none");
							$('.learn-dashboard.toolbarhide .dashboard-toolbar').css("cssText", "right:-342px !important;");	
							$('#dashboard-body').css("width", "100%");
						}else{
						$('#toolbar-1').css("display", "none");
						$('#toolbar-2').css("display", "block");
						$('#toolbar-3').css("display", "none");
						}
						
					} else {
						if($('#toolbar-3').css("display")=="block"){
							$('#toolbar-1').css("display", "none");$('#toolbar-2').css("display", "none");$('#toolbar-3').css("display", "none");
							$('.learn-dashboard.toolbarhide .dashboard-toolbar').css("cssText", "right:-342px !important;");	
							$('#dashboard-body').css("width", "100%");
						}else{
						$('#toolbar-1').css("display", "none");
						$('#toolbar-2').css("display", "none");
						$('#toolbar-3').css("display", "block");
						if(flag=="false"){
							$('#questionList').html("<li><span onclick='tologin()'>你还没登陆，无法看到提问哦！--点击登陆</span></li>")
							return;
						}
						$.ajax({
							url:"getQuestionByuserid.action",
							data: {"user_id": userid},
							method:"POST",
							type:"POST",
							dataType: 'json',
							success:function(data){
								$('#questionList').html("");
							 var questionStr="";
							 if(data){
								 if(data==null){
									 $('#questionList').html("<li><span onclick='tologin()'>你还没有提问过哦...</span></li>");
								 }
								 $.each(data,function(index,item){ 
									 questionStr+='<li id=question'+item.cqid+'><span>'+item.cqview+'回答</span><a href="javascript:void(0);"'
										 +'target="_black">'+item.cqcontent+'</a></li>';
									 $('#questionList').html("").append( $(questionStr) );
								 });
							 }
							}
						 });
					}
					}
					
				});
		//文本编辑器
		$('#editControls a')
				.click(
						function(e) {
							switch ($(this).data('role')) {
							case 'h1':
							case 'h2':
							case 'p':
								document.execCommand('formatBlock', false, '<'
										+ $(this).data('role') + '>');
								break;
							default:
								document.execCommand($(this).data('role'),
										false, null);
								break;
							}
					});
		
		//我的笔记 和同学笔记的切换
		$("#notes-options li").bind("click",function(){
			$(this).parent().children().removeClass("active");
			$(this).addClass("active"); //样式改变
			var str= this.innerHTML;
			if (str.indexOf("我的笔记") >= 0) {
				$('#tab-notes-1').css("display","block");
				$('#tab-notes-2').css("display","none");
			}else if(str.indexOf("同学笔记") >= 0){
				$('#tab-notes-1').css("display","none");
				$('#tab-notes-2').css("display","block");
				$.ajax({
					url:"getNoteByClass_hour_id.action",
					data: {"class_hour_id":class_hour_id},
					method:"POST",
					type:"POST",
					dataType: 'json',
					success:function(data){
					 var noteStr="";
					 if(data){
						 $.each(data,function(index,item){ 
							 noteStr+='<li><div class="notes-img"><a class=" js-user-card"  href="javascript:void(0);"  title="">'
									+'<img class="avatar-mm" alt="'+item.stu_user.user_name+'" src="'+item.stu_user.pic+'"></a></div>'
									+'<div class="notes-content"><span class="name"><a href="javascript:void(0);">'+item.stu_user.user_name+'</a>'
									+'</span><div class="content"><div class="short-content" style="display: block;">'+item.notes_content+'</div>'
									+'<div class="full-content" style="display: none;"><p>'+item.notes_content+'</p></div></div>'
									+'<div class="actions"><a class="show-full-btn" href="javascript:;" style="display: inline;">[展开全文]</a>'
									+'<a class="show-short-btn" style="display: none;" href="javascript:;">[收起全文]</a></div>'
									+'</div></li>';		
							$('#tab-notes-2').html("").append( $(noteStr) );
					 	});
					 }
					}
				 });
			}
		});
	//未 登录不可以发笔记
	$('#editor').bind("click",function(){
		if(flag=="false"){
			tologin();
		 }
	});
	
	//笔记保存
	$('#course_lesson-note-form-btn').bind("click",function(){
		var str=$('#editor').text();

			   if("!${(empty users)"){
					$.ajax({
						url:"addCourseNote.action",
						data: {"user_id": userid,
									"course_id":course_id,
									"class_hour_id":class_hour_id,
									"notes_content":str},
						method:"POST",
						type:"POST",
						dataType: 'json',
						success:function(data){
							  if(data==1){
								   alert("保存成功！！！");
								   $('#editor').html("");
							   }else{
								   alert("保存失败！请重新尝试");
							   }
						}
					});
			   }else{
				   $('#studyCurrentCourse').css('display','block');
				   $('#loadingDiv').css('display','block');
			   }
	});	
//问答
	$('#editor2').bind("click",function(){
		if(flag=="false"){
			tologin();
		 }
	});
	//问答
	$('#lesson_qustion_form_btn').bind("click",function(){
		var str=$('#editor2').text();
		if(str!=null){
			 if("!${(empty users)"){
					$.ajax({
						url:"addCourseQustion.action",
						data: {"user_id": userid,
									"class_hour_id":class_hour_id,
									"cqcontent":str},
						method:"POST",
						type:"POST",
						dataType: 'json',
						success:function(data){
							  if(data==1){
								   alert("提交成功！！！");
								   $('#editor2').html("");
							   }else{
								   alert("提交失败！请重新尝试");
							   }
						}
					});
			   }else{
				   $('#studyCurrentCourse').css('display','block');
				   $('#loadingDiv').css('display','block');
			   }
		}else{   
			alert("问题不能为空!!!");
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
	$('.form-control').bind("focus",function(){
		var str = $(this).val();
		$(this).next().css('display', 'none');
		$(this).parent().prev().css('color', '#333333');
		$(this).css('border-color', '#E1E1E1');
	});
	
	//登录
	$('#login').bind("click",function(){
		var user_name = $('#ajax-username').val();
		var password = $('#ajax-password').val();
		if(user_name!=null&& password!=null){
			$.ajax({
				url:"loginDiv.action",
				data: {"user_name": user_name,
							"password":password},
				method:"POST",
				type:"POST",
				dataType: 'json',
				success:function(data){
					if(data==true){
						$('#ajax-username').val("");
						$('#ajax-password').val("");
						 $('#login-modal').css('display','none');
						$('#loadingDiv').css('display','none');
						flag="true";
						uname=user_name;
						alert("登陆成功...");
						myrefresh();
					}else{
						alert("用户或密码错误，请重新输入!!");
					}
				}
			});
		}else{
			$('#login').setAttribute("disabled","disabled");
		}
	});
	
	//加入学习
	$('#join-course-btn').bind("click",function(){
		var courseid=$('#joincourseid').html();
		$.post("studyCourse/joinStudyCourse",{"userid":userid,"courseid":courseid},function(data){
			if(data==1){ 			
				alert("加入成功!!!");
				$('#studyCurrentCourse').css('display','none');
				$('#loadingDiv').css('display','none');
			}else{
				alert("加入失败,请重新尝试!!");
			}
		})
	});
	
	if(flag=="false"){
		$("#attion").css("display","none");
		$("#attion2").css("display","none");
		$("#mes").css("display","none");
	}else{
		/*alert(attention);
		$.get("attention/judgeAttion",{"attention":attention,"userid":userid},function(data){
			if(data==0){
				$("#attion").css("display","block");
				$("#attion2").css("display","none");
			}else{
				$("#attion").css("display","none");
				$("#attion2").css("display","block");
			}
		});*/
	}
	
	$('#attion').bind("click",function(){	
		$.post("attention/insertAttion",{"attention":attention,"user_id":userid},function(data){
			if(data==1){
				$("#attion2").css("display","block");
				$("#attion").css("display","none");
			}
		});
	});
	
	$('#attion2').bind("click",function(){	
		$.post("attention/delAttion",{"attention":attention,"user_id":userid},function(data){
			if(data==1){
				$("#attion").css("display","block");
				$("#attion2").css("display","none");
			}
		},"json");
	});
	
	$('#mes').bind("click",function(){
		$('#message').css("display","block");
		$('#loadingDiv').css("display","block");
		$('#message_receiver').val( $('.link-light').text() );
	});
	
	$('#message-create-form-btn').bind("click",function(){
		scontent=$('#messageContent').val();
		$.post("selfMessage/insertMessage",{"sendman":userid,"receiveman":attention,"scontent":scontent},function(data){
			if(data==1){
				alert("发送成功...");
				$('#message').css('display','none');
				$('#loadingDiv').css('display','none');
				$('#message_receiver').val("");
				$('#message_content').text("");
			}
		},"json");
	});
	//点击关闭加入框
	$('#close3').bind("click",function(){
		$('#message').css('display','none');
		$('#loadingDiv').css('display','none');
	});
	
	
});

function revert(obj){
	var rename = $(obj).attr("data-revert");
	$("#Smohan_text").val("@"+rename);
}

function del(obj){
	var recsid = $(obj).attr("data-del");
	alert("确认删除吗？");
	$.post("courseAssess/delcourseAssess",{"csid":recsid},function(data){
		if(data==1){
			 myrefresh();
		}else{
			alert("删除失败!!!");
		}
	});
}

function showquestion_form(){
	if($('#lesson_qustion_form').css("display")=="block"){
		$("#lesson_qustion_form").css("display","none");
	}else{
		$("#lesson_qustion_form").css("display","block");
	}
	
}
function hiddenquestion_form(){
		$("#lesson_qustion_form").css("display","none");	
}

//登陆
function tologin(){
	$('#login-modal').css('display','block');
	 $('#loadingDiv').css('display','block');
}

//刷新
function myrefresh()
{
       window.location.reload();
}

/*var page;
var starpage = 0;*/
//显示评论
function showAssess(starpage){
	var showcount=0;
	if(starpage<0){
		return false;
	}
	if(starpage>=allcount_assess+1){
		alert("false");
		return false;
	}
/*	alert(".................++");*/
	$.ajax({
		url:"getcourseAssessByclass_hour_id.action",
		data: {"class_hour_id":class_hour_id,
					"starpage":starpage
		},
		method:"POST",
		type:"POST",
		dataType: 'json',
		success:function(data){
    	var contentstr="";
    	allcount_assess=data.count;
    /*	alert(starpage);*/
    	$.each(data.assess,function(index,item){     	
    		$("#commentList").html("");
    		starpage++;showcount++;
    		contentstr+='<li id="'+item.caid+'"><div class="userimg"><a class="js-user-card" href="page/person.jsp?'+item.userInfo.user_id+'"><img class="img-responsive" ';
    			if(item.userInfo.pic!=null){
    				contentstr+="src='"+item.userInfo.pic+"' ";
    			}else{
    				contentstr+="src='images/avatar.png' ";
    			}
    				contentstr+='alt="'+item.userInfo.user_name+'"></a></div><div class="userInfo">'
								+'<p class="head"><a href="#">'+item.userInfo.user_name+'</a><span>'+item.time+'</span></p>'
								+'<div class="body">'+item.content+'</div><div class="pull-right">'
								+'<a class="con" onclick="revert(this)" data-revert="'+item.userInfo.user_name+'" href="javascript:;">回复</a>';
    			if(uname.indexOf(item.userInfo.user_name) >= 0){
    				contentstr+='<a class="con" onclick="del(this)" data-del="'+item.caid+'" href="javascript:void(0);" style="display:block">删除</a>';
    			}
    				contentstr+'</div></div></li>';	
    			$("#commentList").append($(contentstr));
    			$('#commentList').replaceface($('#commentList').html());//替换表情
    	});
    	/*starpage--;*/
   	/*alert(starpage);
    	alert(data.count);
    	alert(data.page);*/
    	if(Math.ceil(starpage/10)!=0){
    		thispage_assess=Math.ceil((starpage-1)/10);
    	}
    	if(starpage<allcount_assess){nextpage_assess=starpage;}else{nextpage_assess-=data.page;}//data.page每页显示页数
    	if(data.count<=data.page){oldpage_assess=0;}else{oldpage_assess=starpage-data.page-showcount;}
    	$('#commenttcpage').html("<span class='disabled' onclick='showAssess("+oldpage_assess+")'>上一页</span>" +
    			"	<span class='current'>"+thispage_assess+"</span>" +
    			"  <span class='disabled' onclick='showAssess("+nextpage_assess+")'>下一页</span>" );
		}
    });
}

var thispage_assess=1;  //当前页
var nextpage_assess=0;	//下一页
var oldpage_assess=0;	//上一页
var allcount_assess=0;		//所有数据条数