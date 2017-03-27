package com.gy.biz;

import java.util.List;

import com.gy.beans.Course;

import com.gy.beans.Notes;
import com.gy.beans.StudyCourse;
import com.gy.beans.TeachCourse;
import com.gy.beans.UserInfo;

public interface StudyCourseBiz {
	
	public List<Course> showStudyCourse(UserInfo userInfo);

	//所有学习了某一门课程的总数
	public List<StudyCourse> studyCourseOfCourse (Course course);
	//所有学习了某一门课程评论的总数
	public List<StudyCourse> studyCourseOfassess (Course course);
	

	
	public List<Course> getCourseByUsid(UserInfo userInfo);
	//通过用户id得到用户得笔记
	public List<Notes> getPersonNoteByUseid(UserInfo userInfo);
	//通过用户id得到用户得笔记数量
	public Notes getPersonNoteCountByUseId(UserInfo userInfo);
	
	//得到用户学习课程的数量
	public String getCourseCount(StudyCourse studyCourse) ;
	//得到笔记的数量
	public String getNoteCount(Notes notes) ;
	//得到用户在教的课程
	public List<TeachCourse> getTeachByUsid(TeachCourse teachCourse);
}
