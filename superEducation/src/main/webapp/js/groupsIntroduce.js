$(function(){
	var groupname=window.location.href.split('/')[7];
	var user_id=window.location.href.split('/')[6];
	groupname=decodeURI(groupname);
	
	$.post("groups/showsearch.action",{"_method" : "POST",groupname:groupname,user_id :user_id},function(gdata){
		$("#keywords").attr("content",gdata.groupname+"小组 好知网");
		var href='groups/groupIntroduce.action/'+user_id+'/'+groupname+'';
		$("#groupname").attr("href",href);
		$("#img-groupname").attr("src",gdata.pic);
		$("#img-groupname").attr("alt",gdata.groupname);
		
		var introduce="";
		if(gdata.introduction!=null){
			introduce='<p>'+gdata.introduction+'</p>';
		}else{
			introduce='<p>暂无小组简介</p>';
		}
		$("#introduce").html(introduce);
		
		$("#createtime01").html("创建时间："+gdata.createtime);
		$("#leader").html("组长："+gdata.user_name);
		var ul="";
		ul+='<li class="active"><a href="groups/groupIntroduce.action/'+user_id+'/'+gdata.groupname+'">小组首页</a></li>';
		ul+='<li><a href="groups/togroupMember.action/'+user_id+'/'+gdata.groupname+'">小组成员</a></li>';
		$("#ul").html(ul);
		
		$.post("groups/user.action",{"_method":"POST","gid":gdata.gid,"user_id":user_id},function(data){
			var listStr="";
			if(data!="" && data!=undefined){
				listStr+=gdata.groupname+'<a id="exit-btn" class="btn btn-default btn-sm mlm" href="groups/exitgroup/'+user_id+'/'+gdata.groupname+'/'+gdata.gid+'">退出小组</a>';
				$("#gname").html(listStr);
				$("#gname").attr("data-gid",gdata.gid);
				var gexit='<span class="text-muted fsn ">你已经是小组成员，<a id="exit-btn" class="text-muted" href="groups/exitgroup/'+user_id+'/'+gdata.groupname+'/'+gdata.gid+'"> » 退出小组</a></span>';
				$("#gexit").html(gexit);
				var write='<a class="btn btn-primary btn-sm" role="button" href="/group/211/thread/create">发话题</a>';
				$("#write").html(write);
				var mygroup="";
				mygroup+='<div class="panel-heading">我在小组</div>';
				mygroup+='<div class="panel-body">';
				mygroup+='<div class="media group-item">';
				mygroup+='<a class="pull-left media-object media-object-small js-user-card" data-user-id="'+data.user_id+'" data-card-url="/user/2358985/card/show"';
				mygroup+='href="/u/2358985/" data-original-title="" title=""> <img class="avatar-sm " 　alt="'+data.user_name+'"';
				mygroup+='src="'+data.pic+'"></a>';
				mygroup+='<div class="media-body"><p>';
				mygroup+='<a class="link-light link-muted" href="/u/2358985/">'+data.user_name+'</a>';
				mygroup+='<p class="text-muted fsn">';
				mygroup+='<span class="mrm">我的话题: 0</span> <span>我的回复: 0</span>';
				mygroup+='</p></div></div></div>';
				$("#mygroup").html(mygroup);
			}else{
				listStr+=gdata.groupname+'<a id="add-btn" class="btn btn-success btn-sm mlm" href="groups/joingroup/'+user_id+'/'+gdata.groupname+'/'+gdata.gid+'">加入小组</a>';
				$("#gname").html(listStr);
				var status='<a id="add-btn" class="btn btn-info btn-sm pull-right" href="groups/joingroup/'+user_id+'/'+gdata.groupname+'/'+gdata.gid+'">加入小组</a>';
				$("#status").html(status);
			}
		});
		
		$.post("groups/groupMember.action",{"_method":"POST","gid":gdata.gid},function(data){
			var listStr="";
			if(data){
				for(var i=0;i<data.length;i++){
					listStr+='<li><a title="" data-original-title="" class=" js-user-card" href="javascript:void(0);"';
					listStr+='data-card-url="/user/2364063/card/show" data-user-id="2364063">';
					listStr+='<img class="avatar-sm" src="'+data[i].pic+'" alt="'+data[i].user_name+'"></a>';
					listStr+='<div class="name">';
					listStr+='<a class="link-light " href="javascript:void(0);">'+data[i].user_name+'</a>';
					listStr+='</div></li>';
				}
				$("#addMemberNow").html(listStr);
			}
			
			$.post("groups/Countusers.action",{"_method" : "POST"},function(adata){
				var str=adata+'个成员<span class="mlm">4608个话题</span> <span class="fsn mlm">创建时间：'+gdata.createtime+'</span>';
				$("#peoplecount").html(str);
			});
		});
	});
});

	

