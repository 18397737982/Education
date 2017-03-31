package com.gy.biz;

import java.util.List;

import com.gy.beans.Class_category;
import com.gy.beans.Class_hour;
import com.gy.beans.Course;

public interface CourseBiz {
	// 所有课程
	public List<Course> findAllCourse();

	// 某一类所有课程
	public List<Course> findOneCategoryCourse(Course course);

	// 某一类所有课程 热门排序
	public List<Course> findOneCategoryHotCourse(Course course);

	// 所有课程 热门排序
	public List<Course> findAllHotCourse();

	// 某一类所有课程 最新排序
	public List<Course> findOneCategoryNewCourse(Course course);

	// 所有课程 最新排序
	public List<Course> findAllNewCourse();

	Course save(Course course);

	public List<Class_category> getAllCategories();

	public Class_category findbycalss_id(int id);

	public Course findcourse_id();

	public Class_hour findcourseseq(Course course);

	public int addlession(Class_hour class_hour);

	public List<Class_hour> findAllcourseseq(Course course);


	public int deletelesson(Class_hour class_hour);

	public Course findOneCourse(Course course);

	public int findAttentionCount(Course course);

	public List<Class_hour> findNowclasshour(Class_hour class_hour);
	//得到课程分页
	public List<Course> getAllcoursebypage(String pageNumber,String pageSize);
	
	public int getTotalCourse();

	public int delCourse(Course course);

	public int delCourses(List<String> list);
	
	//搜索
	public List<Course> searchCourse(Course course);
}
