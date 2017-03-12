$(function(){
	$('#center_area').tabs('add',{
		title:'首页',
		href:"/newhaozhiwang/back/manager/zc.html"
	});
	
	$('#menu_tree').tree({
		onClick:function(node){
			var text=node.text;
			var tabs=$('#center_area');
			if(text=="课程类型管理"){
				if(tabs.tabs('exists','课程类型管理')){ //如果存在
					tabs.tabs('select',"课程类型管理");
				}else{
					tabs.tabs('add',{
						title:'课程类型管理',
						href:"/newhaozhiwang/back/manager/coursetype.html",
						closable:true
					});
				}
			}else if(text=="课程管理"){
				if(tabs.tabs('exists','课程管理')){ //如果存在
					tabs.tabs('select',"课程管理");
				}else{
					tabs.tabs('add',{
						title:'课程管理',
						href:"/newhaozhiwang/back/manager/course.html",
						closable:true
					});
				}
			}else if(text=="管理员管理"){
				if(tabs.tabs('exists','管理员管理')){ //如果存在
					tabs.tabs('select',"管理员管理");
				}else{
					tabs.tabs('add',{
						title:'管理员管理',
						href:"/newhaozhiwang/back/manager/admins.html",
						closable:true
					});
				}
			}else if(text=="会员管理"){
				if(tabs.tabs('exists','会员管理')){ //如果存在
					tabs.tabs('select',"会员管理");
				}else{
					tabs.tabs('add',{
						title:'会员管理',
						href:"/newhaozhiwang/back/manager/users.html",
						closable:true
					});
				}
			}else if(text=="个人信息"){
				if(tabs.tabs('exists','个人信息')){ //如果存在
					tabs.tabs('select',"个人信息");
				}else{
					tabs.tabs('add',{
						title:'个人信息',
						href:"/newhaozhiwang/back/manager/edit.html",
						closable:true
					});
				}
			}
			else if(text=="小组管理"){
				if(tabs.tabs('exists','小组管理')){ //如果存在
					tabs.tabs('select',"小组管理");
				}else{
					tabs.tabs('add',{
						title:'小组管理',
						href:"/newhaozhiwang/back/manager/group.html",
						closable:true
					});
				}
			}
		}
	});
	
});