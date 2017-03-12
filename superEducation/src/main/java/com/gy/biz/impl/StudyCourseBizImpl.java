package com.gy.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gy.beans.StudyCourse;
import com.gy.beans.UserInfo;
import com.gy.biz.StudyCourseBiz;
import com.gy.dao.BaseDao;
@Service
public class StudyCourseBizImpl implements StudyCourseBiz {

	private BaseDao<StudyCourse> baseDao;
	public BaseDao<StudyCourse> getBaseDao() {
		return baseDao;
	}
	@Resource(name = "baseDaoMybabitsImpl")
	public void setBaseDao(BaseDao<StudyCourse> baseDao) {
		this.baseDao = baseDao;
	}
	@Override
	public List<StudyCourse> showStudyCourse(UserInfo userInfo) {
		StudyCourse studyCourse=new StudyCourse();
		studyCourse.setUserInfo(userInfo);
		return this.baseDao.findAll(studyCourse, "showStudyCourse");
	}

}
