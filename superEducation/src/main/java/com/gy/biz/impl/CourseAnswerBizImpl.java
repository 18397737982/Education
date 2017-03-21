package com.gy.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gy.beans.CourseAnswer;
import com.gy.biz.CourseAnswerBiz;
import com.gy.dao.BaseDao;
@Service
public class CourseAnswerBizImpl implements CourseAnswerBiz {

	private BaseDao baseDao;
	public BaseDao getBaseDao() {
		return baseDao;
	}
	@Resource(name = "baseDaoMybabitsImpl")
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}
	@Override
	public List<CourseAnswer> getMyAnswerByUsid(CourseAnswer courseAnswer) {
		return this.baseDao.findAll(courseAnswer, "getMyAnswerByUsid");
	}

}
