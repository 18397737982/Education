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

	public int saveInfo(UserInfo user);

	public void editPic(UserInfo user);

	public void editPwd(UserInfo userInfo);

}
