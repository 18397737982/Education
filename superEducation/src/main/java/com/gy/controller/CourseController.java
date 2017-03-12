package com.gy.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.gy.beans.Course;
import com.gy.biz.CategoryBiz;
import com.gy.biz.CourseBiz;
import com.gy.biz.UserInfoBiz;

@Controller
@SessionAttributes({"category","class_id"}) //①将ModelMap中属性名为users的属性  
public class CourseController {

	private CourseBiz courseBiz;
	private CategoryBiz categoryBiz;
	@Resource(name="categoryBizImpl")
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
	
	//使用JSON回传数据  综合排序显示课程 某一类的所有课程
	@RequestMapping(value = "/getCourseInformation.action",produces="text/html;charset=UTF-8")
	public @ResponseBody String getCourseInformation(HttpServletResponse response,Course course,@RequestParam("rang") int rang) throws IOException {
//		System.out.println(course.getClass_id());
		Gson gson=new Gson();
		List<Course> list;
		if(course.getClass_id()<1){//查询所有
			if(rang==-1||"-1".equals(rang)){//最热排行
				list=this.courseBiz.findAllHotCourse();
			}else if(rang==-2||"-2".equals(rang)){
				list=this.courseBiz.findAllNewCourse();
			}else{
				list=this.courseBiz.findAllCourse();
			}
		
			return	gson.toJson(list);
		}
//		model.addAttribute("course",this.courseBiz.findAllCourse());
		if(rang==-1||"-1".equals(rang)){//最热排行
			list=this.courseBiz.findOneCategoryHotCourse(course);
		}else if(rang==-2||"-2".equals(rang)){
			list=this.courseBiz.findOneCategoryNewCourse(course);
		}else{
			list=this.courseBiz.findOneCategoryCourse(course);
		}
		return	gson.toJson(list);
	}
	
	//topb的跳转到指定类型的课程页面
	@RequestMapping(value = "/getCourseInformation.action/{class_id}")
	public  String getCategoryCourseInformation(Model model,HttpServletResponse response,Course course,@PathVariable int class_id) throws IOException {
		course.setClass_id(class_id);
		List<Course> list=this.courseBiz.findOneCategoryCourse(course);
		if(list.size()>0){
			model.addAttribute("courses",list);
			model.addAttribute("class_id",list.get(0).getClass_id());
		}
		
		return	 "page/course";
	}
	//所有课程
	@RequestMapping(value = "/getAllCourseInformation.action")
	public  String getAllCourseInformation(Model model)  {
		System.out.println("getAllCourseInformation...........");
		model.addAttribute("courses",this.courseBiz.findAllCourse());
		if(!model.containsAttribute("category")){
			model.addAttribute("category",this.categoryBiz.findAllCategory());
		}
		model.addAttribute("class_id",0);
		return "page/course";
	}
	
	//课程类
	@RequestMapping(value = "getCategoryInformation.action",produces="text/html;charset=UTF-8")
	public  void getCategoryInformation(Model model) throws IOException {
		model.addAttribute("category",this.categoryBiz.findAllCategory());
	}
	
}
