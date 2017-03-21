package com.gy.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.gy.beans.Class_hour;
import com.gy.beans.Course;
import com.gy.beans.Notes;
import com.gy.beans.StudyCourse;
import com.gy.beans.UserInfo;
import com.gy.biz.CategoryBiz;
import com.gy.biz.CourseBiz;
import com.gy.biz.StudyCourseBiz;
import com.gy.biz.UserInfoBiz;
import com.gy.util.UsuallyUtil;

@Controller
public class PlayVideoController {

	private CourseBiz courseBiz;
	private CategoryBiz categoryBiz;
	private StudyCourseBiz studyCourseBiz;

	@Resource(name = "studyCourseBizImpl")
	public void setCategoryBiz(StudyCourseBiz studyCourseBiz) {
		this.studyCourseBiz = studyCourseBiz;
	}
	
	@Resource(name = "categoryBizImpl")
	public void setCategoryBiz(CategoryBiz categoryBiz) {
		this.categoryBiz = categoryBiz;
	}

	public CourseBiz getuserInfoBiz() {
		return courseBiz;
	}

	@Resource(name = "courseBizImpl")
	public void setuserInfoBiz(CourseBiz courseBiz) {
		this.courseBiz = courseBiz;
	}

	
	@RequestMapping(value = "/playVideo.action/{course_id}_{class_hour_id}")
	public String  getVideoInformation(Model model,@PathVariable int course_id,@PathVariable int class_hour_id,Course course,Class_hour class_hour) throws IOException {
		course.setCourse_id(course_id);class_hour.setClass_hour_id(class_hour_id);
		System.out.println(course);
		model.addAttribute("onecourse",this.courseBiz.findOneCourse(course));

		//评论
		model.addAttribute("assess",this.studyCourseBiz.studyCourseOfassess(course));
		//学习人数
		model.addAttribute("all_study",this.studyCourseBiz.studyCourseOfCourse(course));
		//关注人数
		model.addAttribute("stu_count",this.courseBiz.findAttentionCount(course));
		//所有课时
		model.addAttribute("allclass_hour",this.courseBiz.findAllcourseseq(course));
		//当前课时 和//下一课时
		model.addAttribute("theclass_hour",this.courseBiz.findNowclasshour(class_hour));
		
		return "page/play";
		
	}
	@RequestMapping(value = "/addCourseNote.action", produces = "text/html;charset=UTF-8")
	public @ResponseBody String  addCourseNote(HttpServletResponse response,Notes notes,Course course,UserInfo userInfo
			) throws IOException {
		notes.setStu_user(userInfo);notes.setCourse(course);
		System.out.println(notes);
		
		Gson gson = new Gson();
		return gson.toJson(1);
		
	}

@RequestMapping(value = "/addCourseQustion.action", produces = "text/html;charset=UTF-8")
	public @ResponseBody String  addCourseQustion(Notes notes) throws IOException {
		System.out.println(notes);
		Gson gson = new Gson();
		return gson.toJson(1);
		
	}
}
