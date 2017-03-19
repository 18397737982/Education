package com.gy.biz;

import java.util.List;

import com.gy.beans.Admin;


public interface AdminBiz {
	//登录
	public Admin loginadmin(Admin admin);
	public Admin loginByEmail(Admin admin);
	
	//添加管理员
	public int regitadmin(Admin admin);
	
	//检验姓名
	public Admin checkName(Admin admin);
}
