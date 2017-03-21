package com.gy.biz;

import java.util.List;

import com.gy.beans.CourseQuestion;


public interface CourseQuestionBiz {
	public List<CourseQuestion> getMyQuestionByUsid(CourseQuestion courseQuestion);
}
