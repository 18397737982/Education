$(function(){
	var groupname=window.location.href.split('/')[7];
	var user_id=window.location.href.split('/')[6];
	groupname=decodeURI(groupname);
	$.post("groups/showOneUser.action",{"_method" : "POST",groupname:groupname},function(gdata){
		var listStr="";
		listStr+='<div class="grouplist" style="width: 108px;">';
		listStr+='<a class=" js-user-card" href="http://www.howzhi.com/u/187/" data-card-url="/user/187/card/show" data-user-id="187">';
		listStr+='<img class="avatar-sm" src="'+gdata.pic+'" alt="'+gdata.user_name+'">';
		listStr+='</a>';
		listStr+='<p class="text-center">';
		listStr+='<a class="link-light link-light" href="http://www.howzhi.com/u/187/">'+gdata.user_name+'</a>';
		listStr+='</p></div>';
		$("#getgroupleader").html($(listStr));
		var ul="";
		var ul="";
		ul+='<li class="active"><a href="groups/groupIntroduce.action/'+user_id+'/'+groupname+'">小组首页</a></li>';
		ul+='<li><a href="groups/togroupMember.action/'+user_id+'/'+groupname+'">小组成员</a></li>';
		$("#ul01").html($(ul));
	},"json");
	
	
	$.post("groups/AllgroupMember.action",{"_method":"POST"},function(data){
		var listStr="";
		if(data){
			for(var i=0;i<data.length;i++){
				console.info(data[i]);
				listStr+='<div class="grouplist" style="width: 108px;">';
				listStr+='<p>';
				listStr+='<a class=" js-user-card" href="http://www.howzhi.com/u/2358985/" data-card-url="/user/2358985/card/show" data-user-id="'+data[i].user_id+'">';
				listStr+='<img class="avatar-sm" src="'+data[i].pic+'" alt="'+data[i].user_name+'">';
				listStr+='</a></p>';
				listStr+='<p class="text-center">';
				listStr+='<a class="link-light link-light" href="">'+data[i].user_name+'</a></p><br></div>';
			}
			$("#groupMember").html(listStr);
		}
	},"json");
	
	
});