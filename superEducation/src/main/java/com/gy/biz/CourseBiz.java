package com.gy.biz;

import java.util.List;

import com.gy.beans.Course;

public interface CourseBiz {
	//所有课程
	public List<Course> findAllCourse();
	//某一类所有课程
	public List<Course> findOneCategoryCourse(Course course);
	//某一类所有课程 热门排序
	public List<Course> findOneCategoryHotCourse(Course course);
	//所有课程 热门排序
	public List<Course> findAllHotCourse();	
	//某一类所有课程 最新排序
	public List<Course> findOneCategoryNewCourse(Course course);
	//所有课程 最新排序
	public List<Course> findAllNewCourse();
}
