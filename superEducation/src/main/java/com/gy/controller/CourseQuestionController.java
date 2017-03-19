package com.gy.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gy.beans.CourseQuestion;
import com.gy.beans.UserInfo;
import com.gy.biz.CourseQuestionBiz;


@Controller
public class CourseQuestionController {
	private CourseQuestionBiz courseQuestionBiz;
	public CourseQuestionBiz getCourseQuestionBiz() {
		return courseQuestionBiz;
	}
	@Resource(name = "courseQuestionBizImpl")
	public void setCourseQuestionBiz(CourseQuestionBiz courseQuestionBiz) {
		this.courseQuestionBiz = courseQuestionBiz;
	}
	@ResponseBody
	@RequestMapping("courseQuestion/myQuestion")
	public List<CourseQuestion> getMyQuestion(Integer user_id){
		CourseQuestion courseQuestion=new CourseQuestion();
		UserInfo userInfo=new UserInfo();
		userInfo.setUser_id(user_id);
		courseQuestion.setUserInfo(userInfo);
		List<CourseQuestion> question=courseQuestionBiz.getMyQuestionByUsid(courseQuestion);
		return question;
	}
	
}
