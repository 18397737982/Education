var flag_study=0;
$(function(){
	$.post("courseStudy/findCourse.action",{user_id:userid},function(data){
		if(data>0){
			$("#joinedCourse")[0].style.display = "block";
			$("#joinCourse")[0].style.display = "none";
			flag_study=1;
		}else{
			$("#joinCourse")[0].style.display = "block";
			$("#joinedCourse")[0].style.display = "none";
		}
	});
	// 评论分页初始化
	$.post("courseAssess/CMcountbycourseid/",{"_method":"POST",course_id:course_id},function(data){
		$("#Allcomment").html("("+data+")");
		var page;
		var count=parseInt(data);
		if(count%20==0){
			page=count/20;
		}else{
			page=Math.floor((count/20)+1);
		}
		$("#commenttcpage").createPage({
	        pageCount:page,
	        current:1,
	        backFn:function(p){
	            $.post("courseAssess/getAssessbypageDescTime/",{"p":p,"courseid":courseid},function(data){
	            	var contentstr="";
	            	for(var i=0;i<data.length;i++){
	            		
	            		contentstr+="<li><div class='notes-img'> <a class='js-user-card' data-id='"+data[i].user.userid+"' href='page/person.jsp?userid="+data[i].user.userid+"'>" +
	            				" <img class='avatar-sm' ";
	            		console.info(data[i].user.photo);
	            			if(data[i].user.photo!=null){
	            				contentstr+="src='"+data[i].user.photo+"'>";
	            			}else{
	            				contentstr+="src='images/avatar.png'>";
	            			}
	            			contentstr+="</a></div> <div class='notes-content'><h4>发布在课时<a>"+data[i].courseManage.title+"</a></h4>"
	            			+"<div class='body'>"+data[i].content+"</div>"+
	            			"<div class='metas'><span class='name'>by <a href='javascript:;'>"+data[i].user.uname+"</a></span>"+
	            			"<span class='time'>"+data[i].time+"</span></div></div></li>"
	            	
	            	}
	            	$("#commentcontent").html($(contentstr));
	            	$('#commentcontent').replaceface($('#commentcontent').html());// 替换表情

	            	// 悬停显示个人信息
	            	$(".js-user-card").hover(
	  					  function (){ 
	  						 
	  					    var position=getElementPos(this);
	  						var left = position.x;
	  						var top = position.y;
	  						
	  						var userid=$(this).attr("data-id");
	  						
	  						console.info(document.getElementById("user-card-store-"+userid));
	  						var obj=document.getElementById("user-card-store-"+userid);
	  						if(obj==null){
	  							console.info("yes");
	  							var courseid=window.location.href.split('=')[1];
	  							$.post("userinfo/getContactMsgbyUserid/",{userid:userid},function(data){
	  								var contentstr="";
	  								contentstr+="<div id='user-card-store-"+userid+"' style='display:none;border: 1px solid;background-color: white;width: 200px;'>"+
	  								"<div class='js-card-content'> <div class='card-header media-middle'>"+
	  								"<div class='media'><div class='media-left'><a><img class='avatar-md' src='";
	  									if(data.photo!=null){
	  										contentstr+=data.photo+"'alt='"+data.uname;
	  									}else{
	  										contentstr+="images/avatar.png' alt='"+data.uname;
	  									}
	  									contentstr+="' id='card-photo-"+data.userid+"'>"+
	  									"</a></div><div class='media-body'><a class='link-light'>"+data.uname+"</a></div>"+
	  									"<div class='content'></div></div></div></div>" +
	  									"<div class='card-body' style='height: 100px;'>";
	  									if(data.usign!=null){
	  										contentstr+=data.usign;
	  									}else{
	  										contentstr+="还没有签名";
	  									}
	  									contentstr+="</div>";
	  										
	  									contentstr+= "<div class='card-footer clearfix'> <span ><a class='link-light'>"+data.studynumber+"在学</a></span><span style='margin-left: 30px;'><a class='link-light'>"+
	  									data.attentionnumber+"关注</a></span><span style='margin-left: 30px;'><a class='link-light'>"+data.beattentionnumber+"粉丝</a></span></div></div></div>";
	  									
	  									
	  									$("body").append($(contentstr));
	  									$("#user-card-store-"+userid).css({
	  										"left" : left -70 + "px",
	  										"top" : top + 80 + "px"
	  									});			
	  									$("#user-card-store-"+userid).css("position", "absolute");
	  									$("#user-card-store-"+userid).css("display", "block");
	  									
	  							},"json");
	  						}else{
	  							var userid=$(this).attr("data-id");
	  							var position=getElementPos(this);
	  							var left = position.x;
	  							var top = position.y;
	  							$("#user-card-store-"+userid).css({
	  								"left" : left -70 + "px",
	  								"top" : top + 80 + "px"
	  							});
	  							
	  							$("#user-card-store-"+userid).css("display", "block");
	  						}
	  					  },
	  					  function () {
	  						var userid=$(this).attr("data-id");
	  					    $("#user-card-store-"+userid).css("display", "none");
	  					  }
	  					);
	            	$('#commentcontent').replaceface($('#commentcontent').html());//替换表情

	            	//悬停显示个人信息
	            },"json");
	        }
	    });
		
		var courseid=window.location.href.split('=')[1];
		$.post("courseAssess/getAssessbypageDescTime/",{"p":1,"courseid":courseid},function(data){
        	var contentstr="";
        	for(var i=0;i<data.length;i++){
        		contentstr+="<li><div class='notes-img'> <a class='js-user-card' data-id='"+data[i].user.userid+"' href='page/person.jsp?userid="+data[i].user.userid+"'>" +
        				" <img class='avatar-sm' ";
        		console.info(data[i].user.photo);
        			if(data[i].user.photo!=null){
        				contentstr+="src='"+data[i].user.photo+"'>";
        			}else{
        				contentstr+="src='images/avatar.png'>";
        			}
        			contentstr+="</a></div> <div class='notes-content'><h4>发布在课时<a>"+data[i].courseManage.title+"</a></h4>"
        			+"<div class='body'>"+data[i].content+"</div>"+
        			"<div class='metas'><span class='name'>by <a href='page/person.jsp?userid="+data[i].user.userid+"'>"+data[i].user.uname+"</a></span>"+
        			"<span class='time'>"+data[i].time+"</span></div></div></li>"
        	}
        	$("#commentcontent").html($(contentstr));
        	$('#commentcontent').replaceface($('#commentcontent').html());// 替换表情

        	// 悬停显示个人信息
        	$(".js-user-card").hover(
					  function (){ 
					    var position=getElementPos(this);
						var left = position.x;
						var top = position.y;
						var userid=$(this).attr("data-id");
						console.info(document.getElementById("user-card-store-"+userid));
						var obj=document.getElementById("user-card-store-"+userid);
						if(obj==null){
							console.info("yes");
							var courseid=window.location.href.split('=')[1];
							$.post("userinfo/getContactMsgbyUserid/",{userid:userid},function(data){
								var contentstr="";
								contentstr+="<div id='user-card-store-"+userid+"' style='display:none;border: 1px solid;background-color: white;width: 200px;'>"+
								"<div class='js-card-content'> <div class='card-header media-middle'>"+
								"<div class='media'><div class='media-left'><a><img class='avatar-md' src='";
									if(data.photo!=null){
										contentstr+=data.photo+"'alt='"+data.uname;
									}else{
										contentstr+="images/avatar.png' alt='"+data.uname;
									}
									contentstr+="' id='card-photo-"+data.userid+"'>"+
									"</a></div><div class='media-body'><a class='link-light'>"+data.uname+"</a></div>"+
									"<div class='content'></div></div></div></div>" +
									"<div class='card-body' style='height: 100px;'>";
									if(data.usign!=null){
										contentstr+=data.usign;
									}else{
										contentstr+="还没有签名";
									}
									contentstr+="</div>";
									contentstr+= "<div class='card-footer clearfix'> <span ><a class='link-light'>"+data.studynumber+"在学</a></span><span style='margin-left: 30px;'><a class='link-light'>"+
									data.attentionnumber+"关注</a></span><span style='margin-left: 30px;'><a class='link-light'>"+data.beattentionnumber+"粉丝</a></span></div></div></div>";
									$("body").append($(contentstr));
									$("#user-card-store-"+userid).css({
										"left" : left -70 + "px",
										"top" : top + 80 + "px"
									});			
									$("#user-card-store-"+userid).css("position", "absolute");
									$("#user-card-store-"+userid).css("display", "block");
							},"json");
						}else{
							var userid=$(this).attr("data-id");
							var position=getElementPos(this);
							var left = position.x;
							var top = position.y;
							$("#user-card-store-"+userid).css({
								"left" : left -70 + "px",
								"top" : top + 80 + "px"
							});
							
							$("#user-card-store-"+userid).css("display", "block");
						}
					  },
					  function () {
						var userid=$(this).attr("data-id");
					    $("#user-card-store-"+userid).css("display", "none");
					  }
					);
        	$('#commentcontent').replaceface($('#commentcontent').html());//替换表情

        	//悬停显示个人信息
        	
        },"json");
	
	
	// 点击关闭
	$('#close').bind("click",function(){
		$('#login-modal').css('display','none');
		$('#loadingDiv').css('display','none');
	});
	// 点击关闭
	$('#close2').bind("click",function(){
		$('#studyCurrentCourse').css('display','none');
		$('#loadingDiv').css('display','none');
	});
	
	// 切换块
	$('#nav li').bind("click",function(){
		 $(this).parent().children().removeClass("active");  
		 $(this).addClass("active"); 	  // 样式改变
		 var str = this.innerText;
		 if(str.indexOf("简介")>=0){
			 $('#courseInfo').css('display', 'block'); 
			 $('#courselist').css('display', 'none');
			 $('#courseNotes').css('display', 'none');
			 $('#courseQuestion').css('display', 'none');
			 $('#courseClassmate').css('display', 'none');
			 $('#courseAssess').css('display', 'none');
		 }else if(str.indexOf("课时")>=0){
			 $('#courselist').css('display', 'block'); 
			 $('#courseInfo').css('display', 'none');
			 $('#courseNotes').css('display', 'none');
			 $('#courseQuestion').css('display', 'none');
			 $('#courseClassmate').css('display', 'none');
			 $('#courseAssess').css('display', 'none');
			 
			 var courseid=window.location.href.split('=')[1];
			// 根据courseid查课时
			 var courseid=window.location.href.split('=')[1];
				$.post("courseManage/getCourseManageById/",{"_method":"POST",courseid:courseid},function(data){	
					var str = "";
					if(data){
						$.each(data,function(index,item){
							 if(item.type==1){
								 str +='<li class="period lesson-item lesson-item-85093 " data-num="1" data-id="85093">'
									+'<a title="'+item.title+'" href="page/play.jsp?cmid='+item.cmid+'">'
								 	+'<i class="es-icon es-icon-undone status-icon"></i>'
								 	+'<span class="title">L'+item.courseseq+'：'+item.title+'</span><span class="course-type">'
								 	+'<i class="glyphicon glyphicon-picture" data-original-title="图文课程" title="" data-placement="top" data-toggle="tooltip"></i>'
								 	+'</span></a></li>';
							 }else{
								 str+='<li class="period lesson-item lesson-item-67383 " data-num="1" data-id="67383">'
									 +'<a title="'+item.title+'" href="page/play.jsp?cmid='+item.cmid+'">'
								 	 +'<i class="es-icon es-icon-undone status-icon"></i>'
								 	 +'<span class="title">L'+item.courseseq+'：'+item.title+'</span>'
								 	 +'<span class="date" title=""></span>'
								 	 +'<span class="course-type">'
								 	 +'<i class="glyphicon glyphicon-play" title="" data-placement="top" data-toggle="tooltip" data-original-title="视频课程"></i>'
								 	 +'</span></a></li>'	
							 }	
							 $('#courselist').html("").append( $(str) );			
					 });
					}
				});	
		 }else if(str.indexOf("笔记")>=0){
			 $('#courselist').css('display', 'none'); 
			 $('#courseInfo').css('display', 'none');
			 $('#courseNotes').css('display', 'block');
			 $('#courseQuestion').css('display', 'none');
			 $('#courseClassmate').css('display', 'none');
			 $('#courseAssess').css('display', 'none');
			 
			 var courseid=window.location.href.split('=')[1];
			 // 根据courseid查笔记
			 $.post("courseNote/getCourseNoteById/",{"_method":"POST",courseid:courseid},function(data){	
					var str = "";
					if(data){
						$.each(data,function(index,item){
							str+='<li class="clearfix"><div class="notes-img"><a class=" js-user-card"'
								+'href="javascript:void(0);" data-card-url="/user/2362180/card/show" data-user-id="2362180">'
								+'<img class="avatar-sm" src="'+item.user.photo+'" alt="'+item.user.uname+'"></a></div>'
								+'<div class="notes-content"><h4><a href="javascript:void(0);" class="title">'+item.title+' </a></h4><p>'+item.noteContent+'</p>'
								+'<div class="metas"><span class="name">by <a href="javascrit:;">'+item.user.uname+'</a></span> <span'
								+'class="count pull-right"> <a href="javascript:;"data-role="like" data-like-url="/course/note/43065/like">'
								+'<i class="glyphicon glyphicon-thumbs-up" title="点我支持一下笔记的作者"></i>1</a> <a style="display: none" title="您已经支持过该笔记">' 
								+'<i class="glyphicon glyphicon-thumbs-up"></i><span class="newNoteLikeNumxxxxx">1</span></a>'
								+'</span></div></div></li>';
							
							$('#noteslist').html("").append( $(str) );
						});					
					}
					/*
					 * $(".js-user-card").hover( function () {
					 * console.info("yes"); var position=getElementPos(this);
					 * var left = position.x; var top = position.y;
					 * console.info(left); console.info(top);
					 * console.info("我进来了"); $("#user-card-store").css({ "left" :
					 * left -70 + "px", "top" : top + 80 + "px" });
					 * $("#user-card-store").css("display", "block");
					 * $("#user-card-store").css("position", "absolute"); },
					 * function () { $("#user-card-store").css("display",
					 * "none"); } );
					 */
			 });
		 }else if(str.indexOf("问答")>=0){
			 $('#courselist').css('display', 'none'); 
			 $('#courseInfo').css('display', 'none');
			 $('#courseNotes').css('display', 'none');
			 $('#courseQuestion').css('display', 'block');
			 $("#qatcpage").css("display","block");
			 $("#questionAndAnswer").css("display","block");
			 $("#detailquestion").css("display","none");
			 $('#courseClassmate').css('display', 'none');
			 $('#courseAssess').css('display', 'none');
		 }else if(str.indexOf("学员")>=0){
			 $('#courselist').css('display', 'none'); 
			 $('#courseInfo').css('display', 'none');
			 $('#courseNotes').css('display', 'none');
			 $('#courseQuestion').css('display', 'none');
			 $('#courseClassmate').css('display', 'block');
			 $('#courseAssess').css('display', 'none');
		 }else if(str.indexOf("评论")>=0){
			 $('#courselist').css('display', 'none'); 
			 $('#courseInfo').css('display', 'none'); 
			 $('#courseNotes').css('display', 'none');
			 $('#courseQuestion').css('display', 'none');
			 $('#courseClassmate').css('display', 'none');
			 $('#courseAssess').css('display', 'block');
			 
			 var courseid=window.location.href.split('=')[1];
			
		 }
		  
	});
	
	var courseid=window.location.href.split('=')[1];
	// 根据courseid查笔记 右侧显示最新两条
	 $.post("courseNote/getCourseNoteById/",{"_method":"POST",courseid:courseid},function(data){	
			var str = "";
			var count =0;
			if(data){
				$.each(data,function(index,item){
					 count +=1;
					if(count<3){
						str+='<li><h4><a href="javascript:void(0);"><iclass="glyphicon glyphicon-pencil"></i>'+item.title+'</a>'
							 +'</h4> <span>'+item.noteContent+'</span></li>';	
					}
					$('#rightNote').html("").append( $(str) );
				});					
			}
	 }); 
	});
	
	// 判断是否加入课程
	var courseid=window.location.href.split('=')[1];
	if(flag=="false"){
		$("#joinCourse").css("display","block");
		$("#joinedCourse").css("display","none");
		
		$("#attion").css("display","none");
		$("#attion2").css("display","none");
		$("#mes").css("display","none");
	}else{
		$.post("studyCourse/judgeStudyCourse",{"userid":userid,"courseid":courseid},function(data){
			if(data==0){
				$("#joinCourse").css("display","block");
				$("#joinedCourse").css("display","none");
			}else{
				$("#joinCourse").css("display","none");
				$("#joinedCourse").css("display","block");
			}
		},"json");
		
		
		$.get("attention/judgeAttion",{"attention":attention,"userid":userid},function(data){
			if(data==0){
				$("#attion").css("display","block");
				$("#attion2").css("display","none");
			}else{
				$("#attion").css("display","none");
				$("#attion2").css("display","block");
			}
		});
	}
	
	$('#joinCourse').bind("click",function(){
		if(flag=="false"){
			$('#login-modal').css('display','block');
			$('#loadingDiv').css('display','block');
		}else{
			$('#currentUname').html(uname);
			$('#currentCourseName').html( $('#title').html());  // 加入课程时的课程名
			$('#studyCurrentCourse').css('display','block');
			$('#loadingDiv').css('display','block');
		}
	});
	
	$('#add').bind("click",function(){
		if(flag=="false"){
			 $('#login-modal').css('display','block');
			 $('#loadingDiv').css('display','block');
		 }
	});
	
	$('#join-course-btn').bind("click",function(){
		tojoinCOurse();
/*		$.post("studyCourse/joinStudyCourse/",{"userid":userid,"courseid":courseid},function(data){
			   if(data==1){
				   $("#joinCourse").css("display","none");
				   $("#joinedCourse").css("display","block");
				   $('#studyCurrentCourse').css('display','none');
					$('#loadingDiv').css('display','none');
			   }else{
				   alert("加入失败，请重试!!!");
			   }
		 });*/
	});
	
	$('#attion').bind("click",function(){	
		$.post("attention/insertAttion",{"attention":attention,"userid":userid},function(data){
			if(data==1){
				$("#attion2").css("display","block");
				$("#attion").css("display","none");
			}
		});
		
	});
	
	$('#attion2').bind("click",function(){	
		$.post("attention/delAttion",{"attention":attention,"userid":userid},function(data){
			if(data==1){
				$("#attion").css("display","block");
				$("#attion2").css("display","none");
			}
		},"json");
	});
	
	$('#mes').bind("click",function(){
		$('#message').css("display","block");
		$('#loadingDiv').css("display","block");
		$('#message_receiver').val( $('#tname').text() );
	});
	
	$('#message-create-form-btn').bind("click",function(){
		scontent=$('#messageContent').val();
		$.post("selfMessage/insertMessage",{"sendman":userid,"receiveman":attention,"scontent":scontent},function(data){
			if(data==1){
				$('#message').css('display','none');
				$('#loadingDiv').css('display','none');
				$('#message_receiver').val("");
				$('#message_content').text("");
			}else{
				alert("发送失败!!!");
			}
		},"json");
	});
	// 点击关闭加入框
	$('#close3').bind("click",function(){
		$('#message').css('display','none');
		$('#loadingDiv').css('display','none');
	});
	
	//登录
	$('#login').bind("click",function(){
		var uname = $('#ajax-username').val();
		var pwd = $('#ajax-password').val();
		if(uname!=null&& pwd!=null){
			$.post("userinfo/loginDiv",{"uname":uname,"pwd":pwd},function(data){
				if(data=="true"){
					$('#ajax-username').val("");
					$('#ajax-password').val("");
					 $('#login-modal').css('display','none');
					$('#loadingDiv').css('display','none');
				}else{
					alert("用户或密码错误，请重新输入!!");
				}
			});
		}else{
			$('#login').setAttribute("disabled","disabled");
		}
	});
	
	
});


/*
 * function join(){ var st = $('.color-gray-one').val(); if(st == ""){
 * $('#login-modal').css('display','block');
 * $('#loadingDiv').css('display','block'); return false; } return
 * "${user.userid}" } $("#thread_title").bind("click", function(){ join(); });
 * 
 * function justif(){ var userid=join();
 *  }
 */


	function join(){	
		var st = $('.color-gray-one').val();
		if(st == ""){
			$('#login-modal').css('display','block');
			$('#loadingDiv').css('display','block');
			return false;
		}
		
	}
	$("#thread_title").bind("click", function(){
		join();
	});

	function justif(){
		var userid=join();
		
		
	}

	function showquestiondetail(cqid){
		$("#detailquestion").css("display","block");
		$("#questionAndAnswer").css("display","none");
		$("#qatcpage").css("display","none");
		$.post("courseQuestion/detailQuestion/",{cqid:cqid},function(data){
			console.info(data.cqcontent);
			$("#questionContent").html(data.cqcontent);
			$("#cqid").val(data.cqid);
			$("#questionCourse").html(data.courseManage.course.ctitle);
			console.info(data.courseManage);
			$("#questionCourse").attr("href","page/joinproject.jsp?id="+data.courseManage.courseid);
			$("#questionCm").html(data.courseManage.title);
			$("#questionCm").attr("href","page/play.jsp?cmid="+data.courseManage.cmid);
			$("#answernumber").html(data.courseAnswer.length+"个回答");
			
			var contentstr="";
			for(var i=0;i<data.courseAnswer.length;i++){
				console.info("yes");
				if(data.courseAnswer[i]==null){
					continue;
				}
				contentstr+="<li class='media'><div class='media-left'><a class='js-user-card' "+
				"href='page/person.jsp?userid='"+data.courseAnswer[i].userinfo.userid+"><img class='avatar-sm' src='";
				if(data.courseAnswer[i].userinfo.photo!=null){
						contentstr+=data.courseAnswer[i].userinfo.photo+"'alt='"+data.courseAnswer[i].userinfo.uname;
					}else{
						contentstr+="images/avatar.png' alt='"+data.courseAnswer[i].userinfo.uname;
					}
				contentstr+="'></a></div><div class='question-contents media-body'><div class='name'>"+
				"<a class='link-light ' href='page/person.jsp?userid='"+data.courseAnswer[i].userinfo.userid+">"+
				data.courseAnswer[i].userinfo.uname+"</a><span class='day text-right'>"+data.courseAnswer[i].answertime+"</span></div>"+
				"<div class='content'>"+data.courseAnswer[i].answerContent+"</div>"+
				"<div class='answer-actions pull-right'><a href='#'><i class='glyphicon glyphicon-edit'></i>"+"编辑"+
				"</a></div></div></li>" ;
				
			}
			
			$("#showanswer").html($(contentstr));
		},"json");
	}

	function tojoinCOurse(){
		$.post("course/joinCourse",{user_id:userid},function(data){
			alert(data);
			if(data>2){
				alert("添加成功...");
				$("#joinedCourse")[0].style.display = "block";
				$("#joinCourse")[0].style.display = "none";
			}else if(data>1){
				alert("加入失败");
			}else{
				alert("余额不足");
			}
		});
		
		
		
		
	}
