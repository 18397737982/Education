package com.gy.biz.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gy.beans.Course;
import com.gy.beans.CourseAssess;
import com.gy.beans.Notes;
import com.gy.biz.CourseAssessBiz;
import com.gy.dao.BaseDao;

@Service
public class CourseAssessBizImpl implements CourseAssessBiz {
	private BaseDao baseDao;
	public BaseDao getBaseDao() {
		return baseDao;
	}
	@Resource(name = "baseDaoMybabitsImpl")
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}
	@Override
	public List<CourseAssess> findAssessByclass_hourid(CourseAssess courseAssess) {
		return this.baseDao.findAll(courseAssess, "findAssessByclass_hourid");
	}
	@Override
	public int countAssessByclass_hourid(CourseAssess courseAssess) {
		return this.baseDao.findInteger(courseAssess, "countAssessByclass_hourid");
	}
	@Override
	public int insertAssess(CourseAssess courseAssess) {
		
		return this.baseDao.add(courseAssess, "insertAssess");
	}
	
	
	
	@Override
	public List<CourseAssess> findAssessBycourseid(Map map) {
		return this.baseDao.findAll(new CourseAssess(),map, "findAssessBycourseid");
	}
	@Override
	public int countAssessBycourseid(Map map) {
		return this.baseDao.findInteger(new CourseAssess(),map, "countAssessBycourseid");
	}

}
