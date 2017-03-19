package com.gy.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gy.beans.Course;
import com.gy.beans.Notes;
import com.gy.beans.StudyCourse;
import com.gy.beans.TeachCourse;
import com.gy.beans.UserInfo;
import com.gy.biz.StudyCourseBiz;

@Controller
public class StudyCourseController {
	private StudyCourseBiz studyCourseBiz;

	public StudyCourseBiz getStudyCourseBiz() {
		return studyCourseBiz;
	}

	@Resource(name = "studyCourseBizImpl")
	public void setStudyCourseBiz(StudyCourseBiz studyCourseBiz) {
		this.studyCourseBiz = studyCourseBiz;
	}

	@ResponseBody
	@RequestMapping(value = "/studyingByUserid", method = RequestMethod.POST)
	public List<StudyCourse> studyingByUserid(Integer user_id, String p) {
		int pagesize = 2;
		int pagenumber = Integer.parseInt(p);
		UserInfo userInfo = new UserInfo();
		userInfo.setUser_id(user_id);
		userInfo.setPageSize(pagesize);
		userInfo.setBeginRow(pagenumber);
		List<StudyCourse> courselist = studyCourseBiz.showStudyCourse(userInfo);
		return courselist;
	}


	// 查询用户学习的课程
	@RequestMapping("/studyCourse/personCourse")
	@ResponseBody
	public List<Course> personCourse(int user_id, ModelMap map) {
		UserInfo userInfo = new UserInfo();
		userInfo.setUser_id(user_id);
		List<Course> list = studyCourseBiz.getCourseByUsid(userInfo);
		for (Course c : list) {
			if (c.getStudyPeriod() != null) {
				c.setStudyPeriodcount(c.getStudyPeriod().split(",").length);
			}
		}
		map.put("personCourse", list);
		return list;
	}

	// 查询用户的笔记
	@RequestMapping("/studyCourse/personNote")
	@ResponseBody
	public List<Notes> personNote(int user_id, ModelMap map) {
		UserInfo userInfo = new UserInfo();
		userInfo.setUser_id(user_id);
		List<Notes> courseNote = studyCourseBiz.getPersonNoteByUseid(userInfo);
		Notes noteCount = studyCourseBiz.getPersonNoteCountByUseId(userInfo);
		if (noteCount != null) {
			map.put("noteCount", noteCount.getNotesCount());
		} else {
			map.put("noteCount", 0);
		}
		return courseNote;
	}

	@RequestMapping("/studyCourse/courseCount")
	@ResponseBody
	public String getCourseCount(Integer user_id) {
		StudyCourse studyCourse = new StudyCourse();
		UserInfo userInfo = new UserInfo();
		userInfo.setUser_id(user_id);
		studyCourse.setUserInfo(userInfo);
		String courseCount = studyCourseBiz.getCourseCount(studyCourse);
		return courseCount;
	}

	// 得到笔记的数量
	@RequestMapping("/studyCourse/noteCount")
	@ResponseBody
	public String getNoteCount(Integer user_id) {
		Notes notes = new Notes();
		UserInfo userInfo = new UserInfo();
		userInfo.setUser_id(user_id);
		notes.setStu_user(userInfo);
		String noteCount = studyCourseBiz.getNoteCount(notes);
		return noteCount;
	}

	// 获取用户的在教课程
	@RequestMapping("/studyCourse/teachingCourse")
	@ResponseBody
	public List<TeachCourse> teachCourse(Integer user_id) {
		TeachCourse teachCourse=new TeachCourse();
		UserInfo userInfo = new UserInfo();
		userInfo.setUser_id(user_id);
		teachCourse.setUserInfo(userInfo);
		List<TeachCourse> teachcourse = studyCourseBiz.getTeachByUsid(teachCourse);
		return teachcourse;
	}
}
