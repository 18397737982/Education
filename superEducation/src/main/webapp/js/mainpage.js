
$(function() {



		$.post("course/getMainCoruseByctid/",{ctid:0},function(data){
				contentstr="";
				
				for(var i=0;i<8;i++){
					contentstr+="<div class='col-sm-3 col-xs-12 '><div class='course-item'>"+
					"<div class='course-img'><a href='page/joinproject.jsp?courseid="+data[i].courseid+"'>"+
					"<img src='"+data[i].coursephoto+"' alt='"+data[i].ctitle+"' class=''></a> </div>"+
					"<div class='course-info'><div class='title'><a href='page/joinproject.jsp?courseid="+data[i].courseid+"'>"+
					data[i].ctitle+"</a></div><div class='teacher text-o-show'><a class='js-user-card' href='page/person.jsp?userid="+data[i].user.userid+"'"+
					"data-id='"+data[i].user.userid+"'><img class='avatar-ss' src='";
					if(data[i].user.photo!=null){
						contentstr+=data[i].user.photo;
					}else{
						contentstr+="images/avatar.png";
					}
					contentstr+="' alt='"+data[i].user.uname+"'> "+data[i].user.uname+"</a>"+
					"<span class='daren-icon-t' title='达人'></span><div class='price free pull-right'></div>"+
					"</div></div></div>";
					i=i+1;
				
					contentstr+="<div class='course-item'>"+
					"<div class='course-img'><a href='page/joinproject.jsp?courseid="+data[i].courseid+"'>"+
					"<img src='"+data[i].coursephoto+"' alt='"+data[i].ctitle+"' class=''></a> </div>"+
					"<div class='course-info'><div class='title'><a href='page/joinproject.jsp?courseid="+data[i].courseid+"'>"+
					data[i].ctitle+"</a></div><div class='teacher text-o-show'><a class='js-user-card' href='page/person.jsp?userid="+data[i].user.userid+"'"+
					"data-id='"+data[i].user.userid+"'><img class='avatar-ss' src='";
					if(data[i].user.photo!=null){
						contentstr+=data[i].user.photo;
					}else{
						contentstr+="images/avatar.png";
					}
					contentstr+="' alt='"+data[i].user.uname+"'> "+data[i].user.uname+"</a>"+
					"<span class='daren-icon-t' title='达人'></span><div class='price free pull-right'></div>"+
					"</div></div></div></div>";
					
					
				}	
				$("#course-commend4").html($(contentstr));
			},"json")
		$.post("course/mainHotCourse/",function(data){
			var contentstr="";
			for(var i=0;i<6;i++){
				
				if(i==0){
					contentstr+="<div class='swiper-slide swiper-slide-visible swiper-slide-active'";
				}else{
					contentstr+="<div class='swiper-slide'";
				}
				
					contentstr+=" style='width: 1140px; height: 315px;'>"+
				"<div class='col-xs-6 '> " +
					"<a href='page/joinproject.jsp?courseid="+data[i].courseid+"'> <img src='"+data[i].coursephoto+"' alt='"+data[i].ctitle+"'>"+
					"<div class='show'>" +
						"<div class='live-title'>" +
							"<h3 class='text-center'>"+data[i].ctitle+"</h3>" +
						"</div></div>"+
						"<div class='layer'><p class='text-center'>"+
						"<img class='avatar-sm' src='";
						if(data[i].user.photo!=null){
							contentstr+=data[i].user.photo+"'>";
						}else{
							contentstr+="images/avatar.png'>"
						}
						contentstr+="</p><p class='text-center'><strong>"+data[i].user.uname+" </strong></p>"+
						"<p class='subheading'>构图是什么？构图是你摄影理念的具现手段。</p>" +
						"<div class='info'><p>现在参加，<strong>"+data[i].studentlist.length+"</strong> 人已经加入课程</p>"+
						"<p class='avatar'>";
						if(data[i].studentlist.length>=6){
							for(var j=0;j<6;j++){
								contentstr+="";
								if(data[i].studentlist[j].photo!=null){
									contentstr+="<img src='"+data[i].studentlist[j].photo+"' alt='"+data[i].studentlist[j].uname+"'>";
								}else{
									contentstr+="<img src='images/avatar.png' alt='"+data[i].studentlist[j].uname+"'>";
								}
							}
						}else{
							for(var j=0;j<data[i].studentlist.length;j++){
								contentstr+="";
								if(data[i].studentlist[j].photo!=null){
									contentstr+="<img src='"+data[i].studentlist[j].photo+"' alt='"+data[i].studentlist[j].uname+"'>";
								}else{
									contentstr+="<img src='images/avatar.png' alt='"+data[i].studentlist[j].uname+"'>";
								}
							}
						}
						contentstr+="<span>...</span></p></div></div></a></div>";
						i=i+1;
				//右边的热门课程
						contentstr+="<div class='col-xs-6 double'> " +
						"<a href='page/joinproject.jsp?courseid="+data[i].courseid+"'> <img src='"+data[i].coursephoto+"' alt='"+data[i].ctitle+"'>"+
						"<div class='show'>" +
							"<div class='live-title'>" +
								"<h3 class='text-center'>"+data[i].ctitle+"</h3>" +
							"</div></div>"+
							"<div class='layer'><p class='text-center'>"+
							"<img class='avatar-sm' src='";
							if(data[i].user.photo!=null){
								contentstr+=data[i].user.photo+"'>";
							}else{
								contentstr+="images/avatar.png'>"
							}
							contentstr+="</p><p class='text-center'><strong>"+data[i].user.uname+" </strong></p>"+
							"<p class='subheading'>构图是什么？构图是你摄影理念的具现手段。</p>" +
							"<div class='info'><p>现在参加，<strong>"+data[i].studentlist.length+"</strong> 人已经加入课程</p>"+
							"<p class='avatar'>";
							if(data[i].studentlist.length>=6){
								for(var j=0;j<6;j++){
									contentstr+="";
									if(data[i].studentlist[j].photo!=null){
										contentstr+="<img src='"+data[i].studentlist[j].photo+"' alt='"+data[i].studentlist[j].uname+"'>";
									}else{
										contentstr+="<img src='images/avatar.png' alt='"+data[i].studentlist[j].uname+"'>";
									}
								}
							}else{
								for(var j=0;j<data[i].studentlist.length;j++){
									contentstr+="";
									if(data[i].studentlist[j].photo!=null){
										contentstr+="<img src='"+data[i].studentlist[j].photo+"' alt='"+data[i].studentlist[j].uname+"'>";
									}else{
										contentstr+="<img src='images/avatar.png' alt='"+data[i].studentlist[j].uname+"'>";
									}
								}
							}
							contentstr+="<span>...</span></p></div></div></a></div></div>";
							
							
				
			}
			$("#hotCourse").append($(contentstr));	
		},"json");
		
		/*精品课程*/
		$.post("course/goodCourse/",function(data){
			contentstr="";
			
			for(var i=0;i<8;i++){
				contentstr+="<div class='col-sm-3 col-xs-12 '><div class='course-item'>"+
				"<div class='course-img'><a href='page/joinproject.jsp?courseid="+data[i].courseid+"'>"+
				"<img src='"+data[i].coursephoto+"' alt='"+data[i].ctitle+"' class=''></a> </div>"+
				"<div class='course-info'><div class='title'><a href='page/joinproject.jsp?courseid="+data[i].courseid+"'>"+
				data[i].ctitle+"</a></div><div class='teacher text-o-show'><a class='js-user-card' href='page/person.jsp?userid="+data[i].user.userid+"'"+
				"data-id='"+data[i].user.userid+"'><img class='avatar-ss' src='";
				if(data[i].user.photo!=null){
					contentstr+=data[i].user.photo;
				}else{
					contentstr+="images/avatar.png";
				}
				contentstr+="' alt='"+data[i].user.uname+"'> "+data[i].user.uname+"</a>"+
				"<span class='daren-icon-t' title='达人'></span><div class='price free pull-right'></div>"+
				"</div></div></div>";
				i=i+1;
			
				contentstr+="<div class='course-item'>"+
				"<div class='course-img'><a href='page/joinproject.jsp?courseid="+data[i].courseid+"'>"+
				"<img src='"+data[i].coursephoto+"' alt='"+data[i].ctitle+"' class=''></a> </div>"+
				"<div class='course-info'><div class='title'><a href='page/joinproject.jsp?courseid="+data[i].courseid+"'>"+
				data[i].ctitle+"</a></div><div class='teacher text-o-show'><a class='js-user-card' href='page/person.jsp?userid="+data[i].user.userid+"'"+
				"data-id='"+data[i].user.userid+"'><img class='avatar-ss' src='";
				if(data[i].user.photo!=null){
					contentstr+=data[i].user.photo;
				}else{
					contentstr+="images/avatar.png";
				}
				contentstr+="' alt='"+data[i].user.uname+"'> "+data[i].user.uname+"</a>"+
				"<span class='daren-icon-t' title='达人'></span><div class='price free pull-right'></div>"+
				"</div></div></div></div>";
				
				
			}	
			$("#course-commend4").html($(contentstr));
		},"json");
		$("#course-recommed ul li").bind("click",function(){
			$.post("course/getMainCoruseByctid/",{ctid:$(this).attr("data-id")},function(data){
				contentstr="";
				
				for(var i=0;i<8;i++){
					contentstr+="<div class='col-sm-3 col-xs-12 '><div class='course-item'>"+
					"<div class='course-img'><a href='page/joinproject.jsp?courseid="+data[i].courseid+"'>"+
					"<img src='"+data[i].coursephoto+"' alt='"+data[i].ctitle+"' class=''></a> </div>"+
					"<div class='course-info'><div class='title'><a href='page/joinproject.jsp?courseid="+data[i].courseid+"'>"+
					data[i].ctitle+"</a></div><div class='teacher text-o-show'><a class='js-user-card' href='page/person.jsp?userid="+data[i].user.userid+"'"+
					"data-id='"+data[i].user.userid+"'><img class='avatar-ss' src='";
					if(data[i].user.photo!=null){
						contentstr+=data[i].user.photo;
					}else{
						contentstr+="images/avatar.png";
					}
					contentstr+="' alt='"+data[i].user.uname+"'> "+data[i].user.uname+"</a>"+
					"<span class='daren-icon-t' title='达人'></span><div class='price free pull-right'></div>"+
					"</div></div></div>";
					i=i+1;
				
					contentstr+="<div class='course-item'>"+
					"<div class='course-img'><a href='page/joinproject.jsp?courseid="+data[i].courseid+"'>"+
					"<img src='"+data[i].coursephoto+"' alt='"+data[i].ctitle+"' class=''></a> </div>"+
					"<div class='course-info'><div class='title'><a href='page/joinproject.jsp?courseid="+data[i].courseid+"'>"+
					data[i].ctitle+"</a></div><div class='teacher text-o-show'><a class='js-user-card' href='page/person.jsp?userid="+data[i].user.userid+"'"+
					"data-id='"+data[i].user.userid+"'><img class='avatar-ss' src='";
					if(data[i].user.photo!=null){
						contentstr+=data[i].user.photo;
					}else{
						contentstr+="images/avatar.png";
					}
					contentstr+="' alt='"+data[i].user.uname+"'> "+data[i].user.uname+"</a>"+
					"<span class='daren-icon-t' title='达人'></span><div class='price free pull-right'></div>"+
					"</div></div></div></div>";
					
					
				}	
				$("#course-commend4").html($(contentstr));
			},"json")
		});
		//学员的最新动态
		
		$.post("studyCourse/dynamicStudy/",function(data){
			var content="";
			for(var i=0;i<8;i++){
				content+="<div class='swiper-slide' style='width: 1098px; height: 56px;'>"+
				"<div class='col-md-6'> <a  class='test' data-id='"+data[i].user.userid+"'   href='page/person.jsp?userid="+data[i].user.userid+"'> <img class='avatar-ss' src='";
				if(data[i].user.photo!=null){
					content+=data[i].user.photo;
				}else{
					content+="images/avatar.png";
				}
				content+="' alt="+data[i].user.uname+"><p> <a href='page/person.jsp?userid="+data[i].user.userid+"'>"+data[i].user.uname+"</a>"+
				"开始学习<a class='active' href='page/joinproject.jsp?courseid="+data[i].course.courseid+"'>"+data[i].course.ctitle+"</a>"+
				"</p><span class='time'>"+data[i].begintime+"</span> </div>";
				i=i+1;
				content+=
				"<div class='col-md-6'> <a class='test' data-id='"+data[i].user.userid+"' href='page/person.jsp?userid="+data[i].user.userid+"'> <img class='avatar-ss' src='";
				if(data[i].user.photo!=null){
					content+=data[i].user.photo;
				}else{
					content+="images/avatar.png";
				}
				content+="' alt="+data[i].user.uname+"><p> <a  href='page/person.jsp?userid="+data[i].user.userid+"'>"+data[i].user.uname+"</a>"+
				"开始学习<a class='active' href='page/joinproject.jsp?courseid="+data[i].course.courseid+"'>"+data[i].course.ctitle+"</a>"+
				"</p><span class='time'>"+data[i].begintime+"</span> </div></div>";
				/*<div class="swiper-slide" style="width: 1098px; height: 56px;">
	            <div class="col-md-6"> <a href="http://www.howzhi.com/u/1546008/"> <img class="avatar-ss" src="images/avatar.png" alt="微梦星光"> </a>
	              <p> <a href="http://www.howzhi.com/u/1546008/"> 微梦星光</a> 加入了<a class="active" href="http://www.howzhi.com/classroom/17">牛牛人像摄影班</a> </p>
	              <span class="time">14小时前</span> </div>
	            <div class="col-md-6"> <a href="http://www.howzhi.com/u/2343829/"> <img class="avatar-ss" src="images/avatar.png" alt="mathildaf"> </a>
	              <p> <a href="http://www.howzhi.com/u/2343829/"> mathildaf</a> 加入了<a class="active" href="http://www.howzhi.com/classroom/17">牛牛人像摄影班</a> </p>
	              <span class="time">21小时前</span> </div>
	          </div>*/
				
			}
			
			$("#dynamic-swiper").html($(content));
			
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
								contentstr+="<div id='user-card-store-"+userid+"' style='display:none;border: 1px solid;background-color: white;width: 200px;z-index:2000'>"+
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
			$(".test").hover(
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
								contentstr+="<div id='user-card-store-"+userid+"' style='display:none;border: 1px solid;background-color: white;width: 200px;z-index:2000'>"+
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
		},"json")
});
function getElementPos(el) {
	var ua = navigator.userAgent.toLowerCase();
	var isOpera = (ua.indexOf('opera') != -1);
	var isIE = (ua.indexOf('msie') != -1 && !isOpera); // not opera spoof 

	if (el.parentNode === null || el.style.display == 'none') {
		return false;
	}
	var parent = null;
	var pos = [];
	var box;
	if (el.getBoundingClientRect) //IE 
	{
		box = el.getBoundingClientRect();
		var scrollTop = Math.max(document.documentElement.scrollTop,
				document.body.scrollTop);
		var scrollLeft = Math.max(document.documentElement.scrollLeft,
				document.body.scrollLeft);
		return {
			x : box.left + scrollLeft,
			y : box.top + scrollTop
		};
	} else if (document.getBoxObjectFor) // gecko 
	{
		box = document.getBoxObjectFor(el);
		var borderLeft = (el.style.borderLeftWidth) ? parseInt(el.style.borderLeftWidth)
				: 0;
		var borderTop = (el.style.borderTopWidth) ? parseInt(el.style.borderTopWidth)
				: 0;
		pos = [ box.x - borderLeft, box.y - borderTop ];
	} else // safari & opera 
	{
		pos = [ el.offsetLeft, el.offsetTop ];
		parent = el.offsetParent;
		if (parent != el) {
			while (parent) {
				pos[0] += parent.offsetLeft;
				pos[1] += parent.offsetTop;
				parent = parent.offsetParent;
			}
		}
		if (ua.indexOf('opera') != -1
				|| (ua.indexOf('safari') != -1 && el.style.position == 'absolute'))

		{
			pos[0] -= document.body.offsetLeft;
			pos[1] -= document.body.offsetTop;
		}
	}
	if (el.parentNode) {
		parent = el.parentNode;
	} else {
		parent = null;
	}
	while (parent && parent.tagName != 'BODY'
			&& parent.tagName != 'HTML') { // account for any scrolled 

		ancestors
		pos[0] -= parent.scrollLeft;
		pos[1] -= parent.scrollTop;
		if (parent.parentNode) {
			parent = parent.parentNode;
		} else {
			parent = null;
		}
	}
	return {
		x : pos[0],
		y : pos[1]
	};
}


