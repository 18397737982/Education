package com.gy.biz;

import java.util.List;

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

	//某一门课程的在教的老师
	public List<UserInfo> getTeacherInfoByCourseid(Course course);
	//某一门课程的在学的所有学生
	public List<UserInfo> getUserInfoByCourseid(Course course);
}
