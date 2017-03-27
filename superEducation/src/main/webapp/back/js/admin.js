// JavaScript Document
$(function(){
	var obj;
	var editRow=undefined; //记录当前正在被编辑的行
	var currentOp;
	var flag;

    obj=$('#admins_data').datagrid({  
  	url:'admin/findAll',  
	fitColumns:true,//true将自动扩展/收缩columns大小适应grid的宽度,防止水平滚动.
	striped:true,//显示条纹所在行
	loadMsg:"数据加载中...",//当从远程服务器加载数据的时候,显示的提示消息.
	pagination:true,//分页
	fit:true,//满屏
	pageNumber:1,//初始页码
	pageSize:10,//分页大小
	pageList:[5,10,20,30,40,50],//设置属性
	sortName:'admin_id',//定义那个列可以排序.
	remoteSort:false,//定义是否远程排序.对数据库进行操作
    columns:[[ 
		{field:'aids',title:'',width:60,align:'center',checkbox:true}, 
        {field:'admin_id',title:'管理员编号',width:80,align:'center',sortable:true},  
        {field:'admin_name',title:'管理员名称',width:80,align:'center',editor:{type:"text",options:{requires:true}}},
        {field:'email',title:'管理员邮箱',width:80,align:'center',editor:{type:"text",options:{requires:true}}},
        {field:'admin_password',title:'管理员密码',width:80,align:'center',editor:{type:"text",options:{requires:true}}},
    ]],
    toolbar:[{
		text:"添加",
		iconCls:"icon-add",
		handler:function(){
			$('#add_admin').dialog('open');
			$('#add_admin').datagrid("reload");
		}
	},{
		text:"删除",
		iconCls:"icon-remove",
		handler:function(){
			var rows=obj.datagrid("getChecked");
			if(rows.length>0){
				$.messager.confirm('信息确认','您确认要删除选定的数据吗？',function(rs){
					if(rs){
						if(rows.length == 1){
							var admin_id=rows[0].admin_id;
							$.post("admin/deladmin",{admin_id:admin_id},function(data){
								if(data>0){
									$.messager.show({
										title:'成功提示',
										msg:'管理员删除成功',
										timeout:2000,
										showType:'slide'
									});
									rows=null;
									obj.datagrid("reload");//刷新表格
									$('#admins_data').datagrid("reload");
								}else{	
									$.messager.alert('失败提示','管理员删除失败','error');
								}
							});
						}else{
								var aids="";
								for(var i=0;i<rows.length-1;i++){
									aids+=rows[i].admin_id+",";
								}
								aids+=rows[i].admin_id;
								//发请求到数据库删除
								$.post("admin/deladmin",{admin_id:aids},function(data){
									if(data>0){
										$.messager.show({
											title:'成功提示',
											msg:'管理员删除成功',
											timeout:2000,
											showType:'slide'
										});
										rows=null;
										obj.datagrid("reload");//刷新表格
										$('#admins_data').datagrid("reload");
									}else{	
										$.messager.alert('失败提示','管理员删除失败','error');
									}
								});
							 }
							}else{
								return;
							}
						});
			}else{
				$.messager.show({
					title:'错误提示',
					msg:'请选中您要删除的数据...',
					timeout:2000,
					showType:'slide'
				});
			}
		}
	},{
		text:"保存",
		iconCls:"icon-save",
		handler:function(){
			obj.datagrid("endEdit",editRow); //关闭正在被编辑的行
	
			//获取正在编辑的数据
			var rows=obj.datagrid("getChanges")[0];
			 if(rows ==undefined){   //说明没有被保存到数据库
				obj.datagrid("rejectChanges"); //回滚所有的数据
				obj.datagrid("endEdit",editRow); //关闭正在被编辑的行
				editRow=undefined;
			}else if(rows.tname==""){
				editRow=undefined;
				obj.datagrid("rejectChanges");
			}else{
				//保存到数据库
				rows["op"]=currentOp;
				
				$.post("admin/rows",function(data){
					if(data>0){
						$.messager.show({
							title:'成功提示',
							msg:'新闻类型操作成功',
							timeout:2000,
							showType:'slide'
						});
						
						rows=null;
						obj.datagrid("reload"); 
						editRow=undefined;
						obj.datagrid("rejectChanges");
						obj.datagrid("endEdit",editRow);
					}else{
						$.messager.alert('失败提示','新闻类型操作失败','error');
					}
				});
				
			}

		}
	},{
		text:"撤销",
		iconCls:"icon-redo",
		handler:function(){
			obj.datagrid("rejectChanges"); //回滚所有的数据
			obj.datagrid("endEdit",editRow); //关闭正在被编辑的行
			editRow=undefined;
		}
	}]
});
    
   function closedialog(){
	   $("#add_admin").dialog("close");
   }
   function addadmin(){
	   var admin_name=$("#aname").val();
	   var admin_password=$("#apassword").val();
	   var email=$("#email").val();
	   if(admin_name == null || admin_name==""){
		   $.messager.show({
				title:'温馨提示',
				msg:'请填写管理员名称...',
				timeout:2000,
				showType:'slide'
			});
	   }else if(email == null || email==""){
		   $.messager.show({
				title:'温馨提示',
				msg:'请填写电子邮箱...',
				timeout:2000,
				showType:'slide'
			});
	   }else{
		   $.post("admin/addadmin",{admin_name:admin_name,admin_password:admin_password,email:email},function(data){
			   if(data>0){
				   $("#aname").val("");
				  $("#apassword").val("");
				  $("#email").val("");
				   $("#add_admin").dialog("close");
				   $.messager.show({
						title:'成功提示',
						msg:'管理员添加成功',
						timeout:2000,
						showType:'slide'
					});
				   obj.datagrid("reload");
				   $('#admins_data').datagrid("reload");
			   }else{
				   $("#add_admin").dialog("close");
				   $.messager.show({
						title:'成功提示',
						msg:'管理员添加失败',
						timeout:2000,
						showType:'slide'
					});
				   obj.datagrid("reload"); 
			   }
		   }); 
	   }
   }
});



function showOrHidden(id){
	if($("#"+id).css("display")=="none"){
		$("#"+id).css("display","block");
	}else{
		$("#"+id).css("display","none");
	}
}