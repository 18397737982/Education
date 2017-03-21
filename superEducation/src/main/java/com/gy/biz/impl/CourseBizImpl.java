package com.gy.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gy.beans.Class_category;
import com.gy.beans.Class_hour;
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

	@Override
	public Course save(Course course) {
		this.baseDao.add(course, "addcourse");
		return course;
	}

	@Override
	public List<Class_category> getAllCategories() {
		return this.baseDao.findAll(new Class_category(),"getAllCategory");
	}

	@Override
	public Class_category findbycalss_id(int id) {
		Class_category c = new Class_category ();
		c.setClass_id(id);
		List<Class_category> list= this.baseDao.findAll(  c  ,  "findbycalss_id");
		return list != null && list.size() >0 ? list.get(0) : null ;
	}

	@Override
	public Course findcourse_id() {
		Course c=new Course();
		List<Course> list=this.baseDao.findAll(c, "findcourseid");
		return list != null && list.size() >0 ? list.get(0) : null ;
	}

	@Override
	public Class_hour findcourseseq(Course course) {
		Class_hour c=new Class_hour();
		c.setCourse(course);
		List<Class_hour> list=this.baseDao.findAll(c, "findcourseseq");
		return list != null && list.size() >0 ? list.get(0) : null ;
	}

	@Override
	public int addlession(Class_hour class_hour) {
		return this.baseDao.add(class_hour, "addlession");
	}

	@Override
	public List<Class_hour> findAllcourseseq(Course course) {
		Class_hour c = new Class_hour();
		c.setCourse(course);	
		return this.baseDao.findAll(  c  ,  "findAllcourseseq");
	}

	@Override
	public Course findOneCourse(Course course) {
		List<Course> list=this.baseDao.findAll(course, "findOneCourse");
		return list != null && list.size() >0 ? list.get(0) : null ;
	}

	@Override
	public int findAttentionCount(Course course) {
		List<Object> list=this.baseDao.findAll(  course  ,  "findAttentionCount");
		return list != null ? list.size():0 ;
	}

	@Override
	public List<Class_hour> findNowclasshour(Class_hour class_hour) {
		return this.baseDao.findAll(  class_hour  ,  "findNowclasshour");
	}

}
