package com.gy.biz;

import java.util.List;

import com.gy.beans.Course;
import com.gy.beans.StudyCourse;
import com.gy.beans.UserInfo;

public interface StudyCourseBiz {
	
	public List<StudyCourse> showStudyCourse(UserInfo userInfo);
	//所有学习了某一门课程的总数
	public List<StudyCourse> studyCourseOfCourse (Course course);
	//所有学习了某一门课程评论的总数
	public List<StudyCourse> studyCourseOfassess (Course course);
	
}
