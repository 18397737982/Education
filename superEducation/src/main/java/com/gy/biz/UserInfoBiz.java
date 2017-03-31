package com.gy.biz;

import java.util.List;

import com.gy.beans.UserInfo;

public interface UserInfoBiz {
	public int addAdmin(UserInfo userInfo);
	
	public boolean getUsername(UserInfo userInfo);
	
	public boolean getEmail(UserInfo userInfo);
	//通过密码和用户名登录
	public List<UserInfo> getUserInfoByUserName(UserInfo userInfo);
	//通过密码和邮箱登录
	public List<UserInfo> getUserInfoByEmail(UserInfo userInfo);
	//通过id查询用户信息
	public List<UserInfo> getUserInfoByUserid(UserInfo userInfo);

	//编辑信息
	public int saveInfo(UserInfo user);
	//获取头像
	public UserInfo getUserPicByUserid(UserInfo userInfo);
	
	public UserInfo getUserPicByUsername(UserInfo user);
	//编辑头像
	public int editPhoto(UserInfo user);
	//修改密码
	public void editPwd(UserInfo userInfo);
	//
	

}
