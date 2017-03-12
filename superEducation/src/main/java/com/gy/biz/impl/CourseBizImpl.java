package com.gy.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gy.beans.Class_category;
import com.gy.beans.Course;
import com.gy.biz.CourseBiz;
import com.gy.dao.BaseDao;

@Service
public class CourseBizImpl implements CourseBiz {
	private BaseDao  baseDao;
	@Resource(name = "baseDaoMybabitsImpl")
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}
	
	@Override
	public List<Course> findAllCourse() {
		
		return this.baseDao.findAll(new Course(),"findAllCourse");
	}

	@Override
	public List<Course> findOneCategoryCourse(Course course) {
		return this.baseDao.findAll(course,"findOneCategoryCourse");
	}

	@Override
	public List<Course> findOneCategoryHotCourse(Course course) {
		return this.baseDao.findAll(course,"findOneCategoryHotCourse");
	}

	@Override
	public List<Course> findAllHotCourse() {
		return this.baseDao.findAll(new Course(),"findAllHotCourse");
	}

	@Override
	public List<Course> findOneCategoryNewCourse(Course course) {
		return this.baseDao.findAll(course,"findOneCategoryNewCourse");
	}

	@Override
	public List<Course> findAllNewCourse() {
		return this.baseDao.findAll(new Course(),"findAllNewCourse");
	}

}
