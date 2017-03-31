package com.gy.biz;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.gy.beans.Course;
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

	//得到用户的个数
	public int getTotal(UserInfo userInfo);
	//删除用户
	public int delUserInfo(UserInfo userInfo);
	//删除多个用户
	public int delUserInfos(List<String> user_ids);


	//某一门课程的在教的老师
	public List<UserInfo> getTeacherInfoByCourseid(Course course);
	//某一门课程的在学的所有学生
	public List<UserInfo> getUserInfoByCourseid(Course course);
}
