<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/admins.js"></script>
<table id="admins_data"></table>  
<div id="add_admin" class="easyui-dialog" title="添加管理员" 
style="width:500px;height:360px;"
data-options="iconCls:'icon-add',resizable:true,model:true,closed:true">
	<form action="" method="post">
		<div id="admincss" style="margin-top:50px;">
		<label>管理员姓名：</label><input type="text" id="aname" name="aname" required="required" placeholder="请输入用户名..."/> <br/><br/><br/>
		<label>管理员密码：</label><input type="password" id="apassword" name="apassword" value="a" required="required"/> <br/><br/><br/>
		<label>电 子 邮 件：</label><input type="text" id="email" name="email" required="required" placeholder="请输入电子邮箱..."/> <br/><br/><br/>
		</div>
		<div style="margin-top:50px;">
		<a id="a1" href="javascript:addAdminInfo()" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" onclick="addadmin()">Ok</a>
		<a id="a2" href="javascript:closeDialog()"  class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" onclick="closedialog()">Cancel</a>
		</div>
	</form>
</div>

<style>
	#admincss label{
		margin-left:100px;
		font-size:16px;
		width:150px;
	}
	a{
		float:right;
	}
	#a1{
		margin-right:40px;
	}
	#a2{
		margin-right:20px;
	}
</style>

<script>
	
</script>
