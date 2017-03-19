package com.gy.biz.impl;

import java.util.List;

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
	public List<StudyCourse> showStudyCourse(UserInfo userInfo) {
		StudyCourse studyCourse=new StudyCourse();
		studyCourse.setUserInfo(userInfo);
		return this.baseDao.findAll(studyCourse, "showStudyCourse");
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

}
