package com.gy.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gy.beans.Course;
import com.gy.beans.UserInfo;
import com.gy.biz.UserInfoBiz;
import com.gy.dao.BaseDao;

@Service
public class UserInfoBizImpl implements UserInfoBiz {

	private BaseDao baseDao;

	public BaseDao getBaseDao() {
		return baseDao;
	}

	@Resource(name = "baseDaoMybabitsImpl")
	public void setBaseDao(BaseDao<UserInfo> baseDao) {
		this.baseDao = baseDao;
	}

	@Override
	public int addAdmin(UserInfo userInfo) {

		return this.baseDao.add(userInfo, "addAdmin");
	}

	@Override
	public boolean getUsername(UserInfo userInfo) {
		List<UserInfo> list = this.baseDao.findAll(userInfo, "findUsername");
		if(list.size()>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean getEmail(UserInfo userInfo) {
		List<UserInfo> list =this.baseDao.findAll(userInfo, "findEmail");
		if(list.size()>0){
			return true;
		}
		return false;
	}

	@Override
	public List<UserInfo> getUserInfoByUserName(UserInfo userInfo) {
		return this.baseDao.findAll(userInfo, "findUserInfoByUserName");
	}

	@Override
	public List<UserInfo> getUserInfoByEmail(UserInfo userInfo) {
		return this.baseDao.findAll(userInfo, "findUserInfoByUserMail");
	}

	@Override
	public List<UserInfo> getUserInfoByUserid(UserInfo userInfo) {
		return this.baseDao.findAll(userInfo, "findUserInfoByUserId");
	}

	@Override
	public List<UserInfo> getTeacherInfoByCourseid(Course course) {
		return this.baseDao.findAll(new UserInfo(), "getTeacherInfoByCourseid");
	}

	@Override
	public List<UserInfo> getUserInfoByCourseid(Course course) {
		return this.baseDao.findAll(course,"getUserInfoByCourseid");
	}

}
