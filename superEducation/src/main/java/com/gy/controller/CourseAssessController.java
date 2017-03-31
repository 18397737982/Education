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
import com.gy.beans.CourseAssess;
import com.gy.beans.CourseQuestion;
import com.gy.beans.Notes;
import com.gy.beans.UserInfo;
import com.gy.biz.CourseAssessBiz;

@Controller
public class CourseAssessController {
	private CourseAssessBiz courseAssessBiz; 
	
	@Resource(name="courseAssessBizImpl")
	public void setCourseAssessBiz(CourseAssessBiz courseAssessBiz) {
		this.courseAssessBiz = courseAssessBiz;
	}
	//获取评论 by--ty  分页显示  每页显示评论页数   public static final int page=10;
	@RequestMapping(value = "/getcourseAssessByclass_hour_id.action", produces = "text/html;charset=UTF-8")
	public @ResponseBody String  getcourseAssessByclass_hour_id(CourseAssess courseAssess,Class_hour class_hour) throws IOException {
		courseAssess.setClass_hour(class_hour);
		Gson gson = new Gson();
		System.out.println("评论..............");
		Map<String,Object> map=new HashMap<>();
		map.put("assess", this.courseAssessBiz.findAssessByclass_hourid(courseAssess));
		map.put("count", this.courseAssessBiz.countAssessByclass_hourid(courseAssess));
		map.put("page", CourseAssess.page);
		System.out.println(this.courseAssessBiz.findAssessByclass_hourid(courseAssess));
		return gson.toJson(map);
	}
	//添加评论 by--ty  
	@RequestMapping(value = "/insertcourseAssess.action", produces = "text/html;charset=UTF-8")
	public @ResponseBody String  insertcourseAssess(CourseAssess courseAssess,Class_hour class_hour,UserInfo userInfo) throws IOException {
		courseAssess.setClass_hour(class_hour);
		courseAssess.setUserInfo(userInfo);
		long l = System.currentTimeMillis();
		Date time=new Date(l);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		courseAssess.setTime((sdf.format(time)).toString());
		courseAssess.setReadstatus(0);
		Gson gson = new Gson();
		
		//TODO:是否学习了该门课程
		
		//插入
		this.courseAssessBiz.insertAssess(courseAssess);
		return gson.toJson(1);
	}


	//获取某一门课程的所有评论
		@RequestMapping(value = "/getAssessByCourser_id.action", produces = "text/html;charset=UTF-8")
		public @ResponseBody String  getAssessByCourser_id(Course course,@RequestParam(value="starpage" ,required =false ) String starpage)throws IOException {
			Gson gson = new Gson();
			Map<String,Object> map=new HashMap<>();
			map.put("course", course);
			map.put("starpage",Integer.valueOf(starpage));
			map.put("page", CourseAssess.page);
			map.put("assess", this.courseAssessBiz.findAssessBycourseid(map));
			map.put("count", this.courseAssessBiz.countAssessBycourseid(map));
			return gson.toJson(map);
			
		}

	

}
