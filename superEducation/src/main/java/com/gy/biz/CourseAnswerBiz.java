package com.gy.biz;

import java.util.List;

import com.gy.beans.CourseAnswer;
public interface CourseAnswerBiz {

	public List<CourseAnswer> getMyAnswerByUsid(CourseAnswer courseAnswer);
}
