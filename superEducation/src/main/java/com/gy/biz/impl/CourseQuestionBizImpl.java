package com.gy.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gy.beans.CourseQuestion;
import com.gy.biz.CourseQuestionBiz;
import com.gy.dao.BaseDao;
@Service
public class CourseQuestionBizImpl implements CourseQuestionBiz {

	private BaseDao baseDao;
	public BaseDao getBaseDao() {
		return baseDao;
	}
	@Resource(name = "baseDaoMybabitsImpl")
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}
	@Override
	public List<CourseQuestion> getMyQuestionByUsid(CourseQuestion courseQuestion) {
		return this.baseDao.findAll(courseQuestion, "getMyQuestionByUsid");
	}

}
