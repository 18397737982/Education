package com.gy.back.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.gy.beans.Class_category;
import com.gy.beans.Course;
import com.gy.beans.UserInfo;
import com.gy.biz.CourseBiz;
import com.gy.web.util.UploadFileUtil;
import com.gy.web.util.UploadFileUtil.UploadFile;

@Controller
@RequestMapping("/course")
public class CourseControllerBack {
	
	private CourseBiz courseBiz;
	@Resource(name="courseBizImpl")
	public void setCourseBiz(CourseBiz courseBiz) {
		this.courseBiz = courseBiz;
	}
	@ResponseBody
	@RequestMapping("/getAllcoursebypage.action")
	public Map<String,Object> getAllcoursebypage(String page, String rows) {
		Map<String,Object> map=new HashMap<String,Object>();
		List<Course> list = courseBiz.getAllcoursebypage(page,rows);
		map.put("rows", list);
		map.put("total", courseBiz.getTotalCourse());
		return map;
	}
	
	private String pdfRootName = "education";
	@ResponseBody
	@RequestMapping(value = "/addCourse.action", method = RequestMethod.POST)
	public void addUserInfo(@RequestParam("coursephoto") MultipartFile coursephoto,Integer user_id,Integer class_id,String course_name
			,String courseting,String course_description
			,HttpServletRequest request,PrintWriter out) {
		String pdfs = "";
		// 上传
		Map<String, UploadFile> map = UploadFileUtil.uploadFile(request, coursephoto, pdfRootName);
		for (Entry<String, UploadFile> entry : map.entrySet()) {
			UploadFile uploadFile = entry.getValue();
			pdfs += uploadFile.getNewFileUrl();
		}
		Course course=new Course();
		course.setCourse_description(course_description);
		course.setCourse_name(course_name);
		course.setCourseting(courseting);
		course.setCoursephoto(pdfs);
		UserInfo userInfo=new UserInfo();
		userInfo.setUser_id(user_id);
		course.setClass_id(class_id);
		course.setUserInfo(userInfo);
		// 上传
		courseBiz.save(course);
		out.print(1);
	}
	@ResponseBody
	@RequestMapping("/delCourse")
	public void delUserInfo(Integer course_id,PrintWriter out) {
		Course course=new Course();
		course.setCourse_id(course_id);
		int result=courseBiz.delCourse(course);
		if(result>0){
			out.print(1);
		}
		out.print("");
	}
	@ResponseBody
	@RequestMapping("/delCourses")
	public void delUserInfos(String course_ids,PrintWriter out) {
		String[] id=course_ids.split(","); 
		List<String> list=new ArrayList<String>();
		for(String course_id:id){
			list.add(course_id);
		}
		int result=courseBiz.delCourses(list);
		if(result>0){
			out.print(1);
		}
		out.print("");
	}
}
