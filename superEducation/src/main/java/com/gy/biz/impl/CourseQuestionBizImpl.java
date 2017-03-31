package com.gy.biz.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gy.beans.CourseAssess;
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
	/**
	 * 插入课程提问的问题
	 */
	@Override
	public int insertcourseQuestion(CourseQuestion courseQuestion) {
		return this.baseDao.add(courseQuestion, "insertcourseQuestion");
	}
	/**
	 * 通过课程id 分页查询提问
	 */
	@Override
	public List<CourseQuestion> getMyQuestionByCourseid(Map map) {
		return this.baseDao.findAll(new CourseQuestion(), map,"getMyQuestionByCourseid");
	}
	@Override
	public int countMyQuestionByCourseid(Map map) {
		return this.baseDao.findInteger(new CourseQuestion(),map, "countMyQuestionByCourseid");
	}

}
