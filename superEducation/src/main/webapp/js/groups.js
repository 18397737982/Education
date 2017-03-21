$(function(){
	var userid=$('#toggle img').attr("id");
	var groupname=$("#status").val();
	//热门小组
	$.get("groups/hostgroups",function(data){
		var listStr="";
		for(var i=0;i<data.length;i++){		
			url = encodeURI('page/groupIntroduce.jsp?groupname='+data[i].groupname+'&userid='+userid+'');
			listStr+='<div class="col-lg2 col-md-2 col-sm-2 col-xs-4 grid">';
			listStr+='<p>';
			listStr+='<a href="'+url+'" title="'+data[i].groupname+'">';
			listStr+='<img src="'+data[i].pic+'" alt="'+data[i].groupname+'" class="group-avatar-sm"></a>';
			listStr+='<p>';
			listStr+='<p class="title"><a class="link-light" href="'+url+'" title="'+data[i].groupname+'">'+data[i].groupname+'</a></p>';
			listStr+='</div>';
			}
		$("#hostGroups").html(listStr);
	},"json");
	
	//新晋小组
	$.get("groups/newgroups",function(data){
		var listStr="";
		for(var i=0;i<data.length;i++){	
			url = encodeURI('page/groupIntroduce.jsp?groupname='+data[i].groupname+'&userid='+userid+'');
			listStr+='<div class="media media-group">';
			listStr+='<div class="media-left">';
			listStr+='<a href="'+url+'" title="'+data[i].groupname+'">';
			listStr+='<img src="'+data[i].pic+'" alt="'+data[i].groupname+'" class="avatar-square-md"></a>';
			listStr+='</div>';
			
			listStr+='<div class="media-body">';
			listStr+='<div class="title">';
			listStr+='<a class="gray-darker" href="'+url+'" title="'+data[i].groupname+'">'+data[i].groupname+'</a>';
			listStr+='</div>';
			listStr+='<div class="metas">';
			listStr+='<span><i class="glyphicon glyphicon-user"></i>'+data[i].peoplecount+'</span>';
			listStr+='<span><i class="glyphicon glyphicon-envelope"></i>1433</span>';
			listStr+='</div></div></div>';
			}
		$("#newGroups").html(listStr);
	},"json");
	
	
	$("#navid a").bind("click",function(){
		$(this).parent().parent().children().children().removeClass("active");
		$(this).addClass("active");
		var ctid=this.id;
		$.get("groups/navSearch",{"ctid":ctid},function(data){
			var listStr="";
			if(data){
				for(var i=0;i<data.length;i++){	
					url = encodeURI('page/groupIntroduce.jsp?groupname='+data[i].groupname+'&userid='+userid+'');
					listStr+='<div class="col-md-3" id="showGroup">';
					listStr+='<div class="media groavascript:vup-media group-media-sm">';
					listStr+='<a href="'+url+'" title='+data[i].groupname+'" class="pull-left">';
					listStr+='<img src="'+data[i].pic+'" alt="'+data[i].groupname+'" class="media-object">';
					listStr+='</a>';
					listStr+='<div class="media-body">';
					listStr+='<p>';
					listStr+='<a href="'+url+'" title="'+data[i].groupname+'">'+data[i].groupname+'</a>';
					listStr+='</p>';
					listStr+='<div class="text-muted text-normal">';
					listStr+=''+data[i].peoplecount+'&nbsp; 1362个话题';
					listStr+='</div></div></div></div>';
					}
			}else{
				listStr+='<div class="empty">暂无小组信息</div>';
			}
			$("#add").html(listStr);
		},"json");
	});
	
});