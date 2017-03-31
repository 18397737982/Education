package com.gy.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.gy.beans.Class_hour;
import com.gy.beans.Course;
import com.gy.beans.CourseQuestion;
import com.gy.beans.Notes;
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
	
	//添加问题  by--ty
@RequestMapping(value = "/addCourseQustion.action", produces = "text/html;charset=UTF-8")
	public @ResponseBody String  addCourseQustion(CourseQuestion courseQuestion,UserInfo userInfo,Class_hour class_hour) throws IOException {
		System.out.println(courseQuestion);
		courseQuestion.setClass_hour(class_hour);courseQuestion.setUserInfo(userInfo);
		courseQuestion.setCqview(0);courseQuestion.setQreadstatus(0);
		long l = System.currentTimeMillis();
		Date time=new Date(l);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		courseQuestion.setCqtime((sdf.format(time)).toString());
		this.courseQuestionBiz.insertcourseQuestion(courseQuestion);
		Gson gson = new Gson();
		return gson.toJson(1);
	}
	
	//获取提问 by--ty
	@RequestMapping(value = "/getQuestionByuserid.action", produces = "text/html;charset=UTF-8")
	public @ResponseBody String  getQuestionByuserid(CourseQuestion courseQuestion,UserInfo userInfo) throws IOException {
		courseQuestion.setUserInfo(userInfo);
		List<CourseQuestion> questions=this.courseQuestionBiz.getMyQuestionByUsid(courseQuestion);
		Gson gson = new Gson();
		return gson.toJson(questions);
	}
	//获取某一门课程的所有问题 分页  BY --ty
			@RequestMapping(value = "/getMyQuestionByCourseid.action", produces = "text/html;charset=UTF-8")
			public @ResponseBody String  getMyQuestionByCourseid(Course course,@RequestParam(value="starpage" ,required =false ) String starpage)throws IOException {
				Gson gson = new Gson();
				Map<String,Object> map=new HashMap<>();
				map.put("course", course);
				map.put("starpage",Integer.valueOf(starpage));
				map.put("page", CourseQuestion.QUESTION_PAGE);//15
				map.put("question", this.courseQuestionBiz.getMyQuestionByCourseid(map));
				map.put("count", this.courseQuestionBiz.countMyQuestionByCourseid(map));
				return gson.toJson(map);
				
			}
	
}
