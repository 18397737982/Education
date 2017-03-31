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
import com.gy.biz.CourseBiz;

@Controller
public class SearchController {
	private CourseBiz courseBiz;
	
	@Resource(name="courseBizImpl")
	public void setCourseAssessBiz(CourseBiz courseBiz) {
		this.courseBiz = courseBiz;
	}


	//搜索
		@RequestMapping(value = "/searchCourser.action", produces = "text/html;charset=UTF-8")
		public @ResponseBody String  getAssessByCourser_id(Course course,@RequestParam(value="key" ,required =false ) String key)throws IOException {
			Gson gson = new Gson();
			key="%"+key+"%";
			course.setCourse_description(key);
			System.out.println(key);
			return gson.toJson(this.courseBiz.searchCourse(course));
			
		}

	

}
