package com.gy.biz.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gy.beans.TeachCourse;
import com.gy.biz.TeachCourseBiz;
import com.gy.dao.BaseDao;
@Service
public class TeachCourseBizImpl implements TeachCourseBiz {

	private BaseDao baseDao;
	public BaseDao getBaseDao() {
		return baseDao;
	}
	@Resource(name = "baseDaoMybabitsImpl")
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}
	@Override
	public void addTeachCourse(TeachCourse teachCourse) {
		this.baseDao.add(teachCourse, "addTeachCourse");
	}
	@Override
	public String getTeachCourseCount(TeachCourse teachCourse) {
		return this.baseDao.findString(teachCourse, "getTeachCourseCount");
	}

}
