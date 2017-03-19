var   newClassID=0;

//	$(function(){ 
//		$.post("../newsInfoServlet",{op:"getInitTotal"},function(data){
//			if(data>0){
//				alert(data);
//				$("#demo5").myPagination({
//			            currPage: 1,
//			            pageCount: data,
//			            pageSize: 10,
//			            cssStyle: 'scott',
//			            info: {
//			              text: {
//			                background: '#fff',
//			                color: '#000',
//			                width: '20px',
//			                height: '20px',
//			                padding: '0px 0px 0px 3px'
//			              }
//			          }
//				});
//			}
//		});
//	})


	$(function(){
		$("#updown").css("top",window.screen.availHeight/2-100+"px");
		$(window).scroll(function() {		
			if($(window).scrollTop() >= 100){
				$('#updown').fadeIn(300); 
			}else{    
				$('#updown').fadeOut(300);    
			}  
		});
		$('#updown .up').click(function(){$('html,body').animate({scrollTop: '0px'}, 500);});
		$('#updown .down').click(function(){$('html,body').animate({scrollTop: document.body.clientHeight+'px'}, 500);});
	});
/*	$(function(){
		$.post("newsTypeServlet",null,function(data){
			var str="";
			$.each(data,function(index,item){
				str+="<a href='#'>"+item.tname+"</a>";
			});
			$("#class_month").append( $(str) );
		},"json");
	}); */
	
	
	
	function changeCss(id){
		$("#class_month a").css("color","#335884");
		$("#class_month a:hover").css("color","#f00");
		$(id).css("color","red");
		newClassID=id.id;
	}
	
	function showInfo(id){
		$.post("../newsInfoServlet",{op:"contextInfo",nid:id},function(data){
			if(data){
				location.href="show.jsp";
			}
		});
	}
	
	function userlogin(){
		var uname=$("#uname").val();
		var pwd=$("#pwd").val();
		var str="";
		$.post("../usersServlet",{op:"checkLogin",uname:uname,pwd:pwd},function(data){
			if(data==1){
				alert("登录失败，你输入的账号密码有误!!!");
			}else{
				hidenloginpage();
				str='<a href="javascript:void(0)"><font color="#FF0000" size="2">欢迎'+uname+'进入新闻中国</font></a>&nbsp;&nbsp;<a href="javascript:loginout()">退出登录</a>'
				$('#top_login_right').html("").append( $(str) );
			}
		});
	}
	
	
	
	function loginout(){
	    $.post("../usersServlet",{op:"loginout"},function(data){
		  if(data==1){
			 str="";
			 str='<a href="javascript:showlogin()"><font color="#FF0000" size="2">请登录</font></a>&nbsp;&nbsp;<a href="javascript:showzc()"><font color="#FF0000" size="2">免费注册</font></a>';
		     $("#top_login_right").html("").append($(str));
		  }else{
			 alert("退出失败请重试...");
		  }
	  });
	}

	
	var InterValObj; //timer变量，控制时间
	var count = 60; //间隔函数，1秒执行
	var curCount;//当前剩余秒数
	var code;

	function sendMessage() {
	  curCount = count;
	   //设置button效果，开始计时
	     $("#btnSendCode").attr("disabled", "true");
	     $("#btnSendCode").val("请在" + curCount + "秒内输入验证码");
	     InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次
	     
	     code=yzm();
	     
	  //向后台发送处理数据
	   $.post("../usersServlet",{op:"sendZccode",code:code},function(data){
	   });
	    
	}

	//timer处理函数
	function SetRemainTime() {
	            if (curCount == 0) {                
	                window.clearInterval(InterValObj);//停止计时器
	                $("#btnSendCode").removeAttr("disabled");//启用按钮
	                $("#btnSendCode").val("重新发送验证码");
	            }
	            else {
	                curCount--;
	                $("#btnSendCode").val("请在" + curCount + "秒内输入验证码");
	            }
	        }
	
	
     //随机生成4位验证码
      function yzm(){
        var arr = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9'];
        var str = '';
        for(var i = 0 ; i < 4 ; i ++ )
            str += ''+arr[Math.floor(Math.random() * arr.length)];
        return str;
    }
     
  	var checkZccode=true;
  	function checkzccode(){
  		var zccode=$("#zccode").val();
  		if(code==zccode){
  			checkZccode=true;
  		}else{
  			checkZccode=false;
  		}
  	}
  	

	function userzc(){
		var uname=$("#zcuname").val();
		var pwd=$("#zcpwd").val();
		var email=$("#zcemail").val();
		var zccode=$("#zccode").val();
		if(uname!=null&&pwd!=null&&email!=null&&zccode!=null){
	    if(checkname&&checknpwd&&checkemail&&checkZccode){
		$.post("../usersServlet",{op:"userzc",uname:uname,pwd:pwd,email:email},function(data){
			if(data>0){
				hidenzcpage();
				str='<a href="javascript:void(0)"><font color="#FF0000" size="2">欢迎'+uname+'进入新闻中国</font></a>&nbsp;&nbsp;<a href="javascript:loginout()">退出登录</a>'
				$('#top_login_right').html("").append( $(str) );
			}else{
				str="<p style='font-size:18px;color:red;'>注册失败<p>";
				$("#zcinfo").html("").append( $(str) );
			}
		});
	    }else{
	    	$("#zcuname").val("");
	    	$("#zcpwd").val("");
	    	$("#zcpwdagain").val("");
	    	$("#zcemail").val("");
	    	str="<p style='font-size:18px;color:red;'>注册失败<p>";
			$("#zcinfo").html("").append( $(str) );
	      }
		}
	}
	
	
	$(function(){
		$.post("../newsInfoServlet",{op:"getInitTotal"},function(data){
			if(data>0){
				$(".tcdPageCode").createPage({
			        pageCount:data,
			        current:1,
			        backFn:function(p){
			        	var str="";
			           $.post("../newsInfoServlet",{op:"findAllNewsByPage",pageNo:p,pageSize:"5",newClassID:newClassID},function(data){
			        	   $.each(data,function(index,item){

			   				str+='<li><a href="javascript:showInfo('+item.nid+')" title="'+item.title+'">'+item.title20;
			   				
//			   				if(item.pics!=undefined&&item.pics!=""){
//			   					str+='<img src="../images/xiao.jpg">';
//			   				}
			   				str+='</a><span>'+item.mdate+'</span></li>';
			   				if(index!= 0&& (index+1)%5==0){
			   					str+='<li class="space"></li>';
			   				}
			        	   });
			        	   $(".classlist ul").html( $(str) );
			           },"json");
			   	 	}
				});
			}
		});
	});
	
	//点击新闻类别进行分类展示标题信息
	function findNewsByTid(id){
		$.post("../newsInfoServlet",{op:"findNewsByTTid",tid:id},function(data){
			//console.info(data);
			$(".tcdPageCode").createPage({
		        pageCount:data.total
		    });
			$(".classlist ul").html("");
			var str="";
			//json格式解析      解析后回掉函数（循环对象的位置，当前对象）
			$.each(data.rows,function(index,item){
				str+='<li><a href="javaScript:showInfo('+item.nid+')" title="'+item.title+'">'+item.title20+'</a><span>'+item.mdate+'</span></li>';
//				if(item.pics!=undefined&&item.pics!=""){
//					str+='<img src="../images/xiao.jpg">';
//				}
			//	str+='</a><span>'+item.mdate+'</span></li>';
				if(index!=0&&index%5==0){
					str+='<li class="space"></li>';
				}
			});
			$("#newsInfos").html("").append( $(str) );
		},"json");
	}

	