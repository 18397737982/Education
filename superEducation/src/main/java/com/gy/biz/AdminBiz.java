package com.gy.biz;

import java.util.List;

import com.gy.beans.Admin;
import com.gy.beans.UserInfo;


public interface AdminBiz {
	//登录
	public Admin loginadmin(Admin admin);
	public Admin loginByEmail(Admin admin);
	
	//添加管理员
	public int regitadmin(Admin admin);
	
	//检验姓名
	public Admin checkName(Admin admin);
	

	//查询所有
	public List<Admin> findAll(Admin admin);
	
	//获取总数
	public int count();
	public List<UserInfo> findAllUsers(UserInfo userInfo);
	
	public List<Admin> findAllAdmin();
}
