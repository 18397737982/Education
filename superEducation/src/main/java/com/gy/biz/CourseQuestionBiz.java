package com.gy.biz;

import java.util.List;
import java.util.Map;

import com.gy.beans.CourseQuestion;


public interface CourseQuestionBiz {
	public List<CourseQuestion> getMyQuestionByUsid(CourseQuestion courseQuestion);
	
	//添加问题
	public int insertcourseQuestion(CourseQuestion courseQuestion);
	
	//课程的所有问题 分页查询
	public List<CourseQuestion> getMyQuestionByCourseid(Map map);
	
	//课程的所有问题 个数
	public int countMyQuestionByCourseid(Map map);
}
