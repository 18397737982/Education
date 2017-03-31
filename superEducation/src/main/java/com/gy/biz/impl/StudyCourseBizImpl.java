package com.gy.biz.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gy.beans.Course;

import com.gy.beans.Notes;
import com.gy.beans.StudyCourse;
import com.gy.beans.TeachCourse;
import com.gy.beans.UserInfo;
import com.gy.biz.StudyCourseBiz;
import com.gy.dao.BaseDao;
@Service
public class StudyCourseBizImpl implements StudyCourseBiz {

	private BaseDao baseDao;
	public BaseDao getBaseDao() {
		return baseDao;
	}
	@Resource(name = "baseDaoMybabitsImpl")
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}
	@Override
	public List<Course> showStudyCourse(UserInfo userInfo) {
		StudyCourse studyCourse=new StudyCourse();
		studyCourse.setUserInfo(userInfo);
		return this.baseDao.findAll(studyCourse, "showStudyCourse");
	}
	
	/**
	 * 所有学习了某一门课程的总数
	 */
	@Override
	public List<StudyCourse> studyCourseOfCourse(Course course) {
		return this.baseDao.findAll(course, "studyCourseOfCourse");
	}
	
	 //所有学习了某一门课程评论的总数 -->
	@Override
	public List<StudyCourse> studyCourseOfassess(Course course) {
		return this.baseDao.findAll(course, "studyCourseOfassess");
	}
	@Override
	public List<Course> getCourseByUsid(UserInfo userInfo) {
		StudyCourse studyCourse=new StudyCourse();
		studyCourse.setUserInfo(userInfo);
		return this.baseDao.findAll(studyCourse, "getCourseByUsid");
	}
	@Override
	public List<Notes> getPersonNoteByUseid(UserInfo userInfo) {
		Notes notes=new Notes();
		notes.setStu_user(userInfo);
		return this.getBaseDao().findAll(notes, "getPersonNoteByUseid");
	}
	@Override
	public Notes getPersonNoteCountByUseId(UserInfo userInfo) {
		Notes notes=new Notes();
		notes.setStu_user(userInfo);
		return (Notes) this.getBaseDao().find(notes, "getPersonNoteCountByUseId");
	}
	@Override
	public String getCourseCount(StudyCourse studyCourse) {
		return this.baseDao.findString(studyCourse, "getCourseCount");
	}
	@Override
	public String getNoteCount(Notes notes) {
		return this.baseDao.findString(notes, "getNoteCount");
	}
	@Override
	public List<TeachCourse> getTeachByUsid(TeachCourse teachCourse) {
		return this.baseDao.findAll(teachCourse, "getTeachByUsid");
	}
	@Override
	public int insertNotes(Notes notes) {
		return this.baseDao.add(notes, "insertNotes");
	}
	@Override
	public List<Notes> getNoteByClass_hour_id(Notes notes) {
		return this.baseDao.findAll(notes, "getNoteByClass_hour_id");
	}
	@Override
	public List<Notes> getNoteByCourser_id(Map map) {
		System.out.println(map);
		return this.baseDao.findAll(new Notes(),map, "getNoteByCourser_id");
	}
	@Override
	public int getCountByCourser_id(Map map) {
		return this.baseDao.findInteger(new Notes(),map, "getCountByCourser_id");
	}
	@Override
	public int pinglunCourse(StudyCourse scourse) {
		return this.baseDao.update(scourse, "pinglunCourse");
	}
	@Override
	public int addStudyCourse(StudyCourse studyCourse) {
		return this.baseDao.add(studyCourse, "addStudyCourse");
	}
	@Override
	public StudyCourse getOneCourseCount(StudyCourse studyCourse) {
		List<StudyCourse> list=this.baseDao.findAll(studyCourse, "getOneCourseCount");
		System.out.println(list);
		if(list.size()>0){
			return list.get(0);
		}else{
			return null;
		}
		
	}

}
