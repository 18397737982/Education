package com.gy.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gy.beans.CourseAnswer;
import com.gy.beans.UserInfo;
import com.gy.biz.CourseAnswerBiz;


@Controller
public class CourseAnswerController {
	private CourseAnswerBiz courseAnswerBiz;
	public CourseAnswerBiz getCourseAnswerBiz() {
		return courseAnswerBiz;
	}
	@Resource(name="courseAnswerBizImpl")
	public void setCourseAnswerBiz(CourseAnswerBiz courseAnswerBiz) {
		this.courseAnswerBiz = courseAnswerBiz;
	}
	@ResponseBody
	@RequestMapping("courseAnswer/myAnswer")
	public List<CourseAnswer> getMyAnswer(Integer user_id){
		CourseAnswer courseAnswer=new CourseAnswer();
		UserInfo userInfo=new UserInfo();
		userInfo.setUser_id(user_id);
		courseAnswer.setUserInfo(userInfo);
		List<CourseAnswer> question=courseAnswerBiz.getMyAnswerByUsid(courseAnswer);
		return question;
	}
}
