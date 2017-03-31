<<<<<<< HEAD
$(function(){
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
=======

$(function(){
>>>>>>> branch 'master' of ssh://git@github.com/18397737982/Education.git

<<<<<<< HEAD
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
		$.post("studyCourse/joinStudyCourse/",{"userid":userid,"courseid":courseid},function(data){
			   if(data==1){
				   $("#joinCourse").css("display","none");
				   $("#joinedCourse").css("display","block");
				   $('#studyCurrentCourse').css('display','none');
					$('#loadingDiv').css('display','none');
			   }else{
				   alert("加入失败，请重试!!!");
			   }
		 });
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
	
	
=======
		
>>>>>>> branch 'master' of ssh://git@github.com/18397737982/Education.git
});

	
	//课时
	function showclasshour(){
		$.ajax({
			url:"findClasshourBycourseid.action",
			data: {"course_id":course_id},
			method:"POST",
			type:"POST",
			dataType: 'json',
			success:function(data){
				
				var str='<ul class="period-list hz-courselist" id="course-item-list">';
				$.each(data,function(index,item){
					str+='<li class="period lesson-item lesson-item-67383 " data-num="1" data-id="67383">'
									+'				<a title="'+item.title+'" href="toplay.action/'+course_id+'_'+item.class_hour_id+'">'
									+'		<i class="es-icon es-icon-undone status-icon"></i>'
									+'			<span class="title">L'+item.courseseq+'：'+item.title+'</span>'
									+'			<span class="course-type">'
									+'				<i class="glyphicon glyphicon-play" title="" data-placement="top" data-toggle="tooltip" data-original-title="视频课程"></i>'
									+'		</span>'
									+'		</a>'
									+'	</li>';
						});
				str+='</ul>';
//				alert(str);
				$("#courseInfo").html('');
				$("#courseInfo").html(str);
			}
				});
	}	
	
	//笔记
	function shownotes(starpage){
		var showcount=0;
		if(starpage<0){
			return false;
		}
		if(starpage>=allcount_note+1){
			alert("false");
			return false;
		}
		$.ajax({
			url:"findNoteByCourser_id.action",
			data: {"course_id":course_id,
				"starpage":starpage},
			method:"POST",
			type:"POST",
			dataType: 'json',
			success:function(data){
				var contentstr="";
		    	allcount_note=data.count;
				var str='<div class="course-notes course-in" id="courseNotes">'
								+'<div class="notes-header">'
								+'	<a href="javascript:void(0);"'
								+'	class="  active  nn">同学笔记</a> <span><a '
								+'href="javascript:void(0);">最热</a> <a href="javascript:void(0);"'
								+'class="active">最新</a></span>'
								+'</div>'
								+'<ul class="notes-list" id="noteslist">';
				$.each(data.notes,function(index,item){
					starpage++;showcount++;
					str+='	<li class="clearfix" style="color: #616161">'
							+'<div class="notes-img">'
							+'<a class=" js-user-card" href="javascript:void(0);" data-card-url="/user/2362180/card/show" data-user-id="2362180">'
							+'<img class="avatar-sm" src="'+item.stu_user.pic+'" alt="t"/></a>'
							+'</div>'
							+'<div class="notes-content">'
							+'<h4><a href="javascript:void(0);" class="title">'+item.stu_user.user_name+' </a></h4>'
							+'<p>'+item.notes_content+'</p>'
							+'<div class="metas">'
							+'<span class="name">by <a href="javascrit:;">t</a></span> '
							+'<spanclass="count pull-right"="">' 
							+'<a href="javascript:;" data-role="like" data-like-url="/course/note/43065/like">'
							+	'<i class="glyphicon glyphicon-thumbs-up" title="点我支持一下笔记的作者"></i>1'
							+	'</a> '
							+	'<a style="display: none" title="您已经支持过该笔记">'
							+	'<i class="glyphicon glyphicon-thumbs-up">'
							+	'</i><span class="newNoteLikeNumxxxxx">1</span>'
							+	'</a></spanclass="count">'
							+	'</div>'
							+	'</div>'	
							+'</li>';
						});
				str+='</ul></div>';
//				alert(str);
				$("#courseInfo").html('');
				$("#courseInfo").html(str);
				
				if(Math.ceil(starpage/data.page)!=0){
		    		thispage_note=Math.ceil((starpage-1)/data.page);
		    	}
				maxpage_note=Math.ceil(allcount_note/data.page);//最后一页有多少页
//				alert(thispage_note+"..."+maxpage_note+".."+allcount_note+".."+data.page);
				if(starpage<allcount_note){nextpage_note=starpage;}else{nextpage_note-=data.page;} //data.page每页显示页数
		    	if(data.count<=data.page){oldpage_note=0;}else{oldpage_note=starpage-data.page-showcount;}
				var strpage='<ul style="text-align:center !important;list-style-type:none !important;"class="pagination "><li><a onclick="shownotes('+oldpage_note+')">《《</a></li>';
				var thepage=thispage_note;//循环用的 当前页面
				for(var i=1;thepage<=maxpage_note;i++,thepage++){
					if(i>=5){
						break;
					}
					if(thepage==thispage_note){
						starpage-=showcount;
						if(thispage_note!=1){
							var x=starpage-showcount;
							var y=thispage_note-1;
							strpage+='<li style="display:inline !important;"> <a onclick="shownotes('+x+')">'+y+'</a></li>';
						}
					
						strpage+='<li class="active" style="display:inline !important;"><a onclick="shownotes('+starpage+')">'+thispage_note+'</a></li>';
						starpage+=data.page;
						continue;
					}
				
					if(starpage<allcount_note){starpage=starpage;}else{starpage-=data.page;} //data.page每页显示页数
					strpage+='<li style="display:inline !important;"><a onclick="shownotes('+starpage+')">'+thepage+'</a></li>';
					starpage+=data.page;
				}
		    	strpage+='<li><a onclick="shownotes('+nextpage_note+')">》》</a></li> </ul>';
		    	$("#courseInfo").append(strpage);
			}
				});
		
	}
	var thispage_note=1;  //当前页
	var nextpage_note=0;	//下一页
	var oldpage_note=0;	//上一页
	var allcount_note=0;		//所有数据条数
	var minpage_note=1;//首页
	var maxpage_note=1;//尾页
	
	function showAssess(starpage){
		var showcount=0;
		if(starpage<0){
			return false;
		}
		if(starpage>=allcount_assess+1){
			alert("false");
			return false;
		}
//		alert(".................++");
		$.ajax({
			url:"getAssessByCourser_id.action",
			data: {"course_id":course_id,
						"starpage":starpage
			},
			method:"POST",
			type:"POST",
			dataType: 'json',
			success:function(data){
	    	var contentstr='<ul class="notes-list" id="commentcontent">';
	    	allcount_assess=data.count;
	    	alert(starpage);
	    	$("#commentcontent").html("");
	    	$.each(data.assess,function(index,item){     	
	    		starpage++;showcount++;
	    		contentstr+='<li id="item'+item.caid+'">'
	    				+'<div class="notes-img" style="float:left">'
	    				+'<a class=" js-user-card" href="#"> '
	    				+'<img class="avatar-sm" ';
	    			if(item.userInfo.pic!=null){
	    				contentstr+="src='"+item.userInfo.pic+"' ";
	    			}else{
	    				contentstr+="src='images/avatar.png' ";
	    			}
	    		contentstr+=' alt="'+item.userInfo.user_name+'">'
	    				+'</a>'
	    				+'</div>'
	    				+'<div class="notes-content" style="margin-left:11%;font-size:14px">'
	    				+'<h4>'
						+'发布在课时 <a href="toplay.action/'+course_id+'_'+item.class_hour.class_hour_id+'">'+item.class_hour.title+'</a>'
						+'</h4>'
	    				+'<div class="body">'+item.content+'</div>'	
	    				+'<div class="metas">'
						+'<span class="name">by <a href="#">'+item.userInfo.user_name+'</a></span> --<span'
						+'class="time">'+item.time+'</span>'
						+'</div></div></li><br/>'
	    	});
	    	contentstr+=' </ul>'
	    	$("#courseInfo").html($(contentstr));
			$('#courseInfo').replaceface($('#commentcontent').html());//替换表情
	    	starpage--;
//	   	alert(starpage);
//	    	alert(data.count);
//	    	alert(data.page);
	    	if(Math.ceil(starpage/10)!=0){
	    		thispage_assess=Math.ceil((starpage-1)/10);
	    	}
	    	if(starpage<allcount_assess){nextpage_assess=starpage;}else{nextpage_assess-=data.page;}//data.page每页显示页数
	    	if(data.count<=data.page){oldpage_assess=0;}else{oldpage_assess=starpage-data.page-showcount;}
	    	$('#courseInfo').append("<div style='text-align:center;margin:0 auto'><a><span class='disabled' onclick='showAssess("+oldpage_assess+")'>上一页</span></a>" +
	    			"	<span class='current'>"+thispage_assess+"</span>" +
	    			"  <a><span class='disabled' onclick='showAssess("+nextpage_assess+")'>下一页</span><a></div>" );
			}
	    });
	}

	var thispage_assess=1;  //当前页
	var nextpage_assess=0;	//下一页
	var oldpage_assess=0;	//上一页
	var allcount_assess=0;		//所有数据条数
	
	
	//显示学员
	function showstudent(){
		
		$.ajax({
			url:"findstudentByCourser_id.action",
			data: {"course_id":course_id
			},
			method:"POST",
			type:"POST",
			dataType: 'json',
			success:function(data){
	    	var contentstr='<ul class="notes-list" id="commentcontent">';
	    	allcount_assess=data.count;
//	    	alert(starpage);
	    	$("#courseInfo").html("");
	    	$("#courseInfo").html('	<h4>'
					+'<span class="dash-icon"></span>授课老师'
					+'</h4>'
					+'<ul class="course-in-ul clearfix" id="studentsInfo">'
					+'<li><a id="teacher" class="js-user-card"'
					+'	href="http://www.howzhi.com/u/1687444/"'
					+'	data-card-url="/user/1687444/card/show" data-id="1687444">'
					+'		<img id="teacherimg" class="avatar-ll"'
					+'		src="images/125522a1b6f0301474.jpg" alt="杨最醉">'
					+'</a>'
					+'	<p>'
					+'	<a href="http://www.howzhi.com/u/1687444/" id="teachername">杨最醉</a>'
					+'	</p></li>'
					+'</ul>'
					+'<h4>'
					+'	<span class="dash-icon"></span>学员'
					+'</h4>'
					+'<ul class="course-in-ul" id="studentlist">'
					+'</ul>'
					+'<div class="tcdPageCode" id="stcpage"></div>');
	    	var contentstr="";
	    	$.each(data.student,function(index,item){     	
             		contentstr+="<li style='display:inline-block;padding:5px;'><a class=' js-user-card' href='page/person.jsp?userid="+item.user_id+"'"+
             		"data-card-url='/user/2364232/card/show' data-id='"+item.user_id+"'>"+
             		"<img class='avatar-ll' src=";
             		if(item.pic==null){
             			contentstr+="'images/avatar.png' alt='"+item.user_name+"'>";
             	
             		}else{
             			contentstr+="'"+item.pic+"' alt='"+item.user_name+"'>";
             		}
             		contentstr+="</a><p >&nbsp;&nbsp;&nbsp;&nbsp;<a href='page/person.jsp?user_id="+item.user_id+"'>"+item.user_name+"</a></p></li>"     		
//             	document.getElementById("studentlist").innerHTML=contentstr;
	    	});
	    	
         	var teacherphoto=techerpic!=null&&techerpic!=''?techerpic:"images/avatar.png";
         	$("#teacher").attr("href","page/person.jsp?userid="+techerid);
         	$("#teacherimg").attr("src",teacherphoto);
         	$("#teacherimg").attr("alt",techername);
         	$("#teachername").html(techername);
         	$("#studentlist").html(contentstr);
			}
	    });
		
	}

	
	//问答
function courseQuestion(starpage){
	var showcount=0;
	if(starpage<0){
		return false;
	}
	if(starpage>=allcount_question+1){
		alert("false");
		return false;
	}
	$.ajax({
		url:"getMyQuestionByCourseid.action",
		data: {"course_id":course_id,
			"starpage":starpage
		},
		method:"POST",
		type:"POST",
		dataType: 'json',
		success:function(data){
			allcount_question=data.count;
        	var contentstr='  <div class="question-header">共<span id="questionnumbertwo">'+data.count+'</span>个问题</div>'
        	$.each(data.question,function(index,item){     	
        		starpage++;showcount++;
         		contentstr+='   <ul class="course-in-ul">'
                    +'<li>'
                    +'<h4>'
                    +' <span class="q-icon"></span><a class="js-nav" href="javaScript:void(0);">'+item.cqcontent+'</a>'
                    +' </h4>'
                    +'<p>by     <a class="link-light link-muted" href="javaScript:void(0);">'+item.userInfo.user_name+'</a>'
                    +'• '+item.qreadstatus+' 回答 • '+item.cqview+'浏览</p>'
                    +'</li>'
                    +'</ul>';
    	});
        	$("#courseInfo").html($(contentstr));
        	$('#courseInfo').replaceface($('#courseInfo').html());// 替换表情
        	
           	if(Math.ceil(starpage/data.page)!=0){
	    		thispage_question=Math.ceil((starpage-1)/data.page);
	    	}
	    	if(starpage<allcount_question){nextpage_question=starpage;}else{nextpage_question-=data.page;}//data.page每页显示页数
	    	if(data.count<=data.page){oldpage_assess=0;}else{oldpage_question=starpage-data.page-showcount;}
	    	$('#courseInfo').append("<div style='text-align:center;margin:0 auto'><a><span class='disabled' onclick='courseQuestion("+oldpage_question+")'>上一页</span></a>" +
	    			"	<span class='current'>"+thispage_question+"</span>" +
	    			"  <a><span class='disabled' onclick='courseQuestion("+nextpage_question+")'>下一页</span><a></div>" );
			
		}
    });
}
var thispage_question=1;  //当前页
var nextpage_question=0;	//下一页
var oldpage_question=0;	//上一页
var allcount_question=0;		//所有数据条数
	

	//刷新
	function myrefresh()
	{
	       window.location.reload();
	}
	
