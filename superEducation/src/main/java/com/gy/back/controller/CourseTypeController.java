package com.gy.back.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gy.beans.Class_category;
import com.gy.beans.UserInfo;
import com.gy.biz.CategoryBiz;

@Controller
public class CourseTypeController {
	private CategoryBiz categoryBiz;
	
	@Resource(name="categoryBizImpl")
	public void setCategoryBiz(CategoryBiz categoryBiz) {
		this.categoryBiz = categoryBiz;
	}
	
	@ResponseBody
	@RequestMapping("/courseType/getAllCourseType.action")
	public Map<String,Object> findallCourseType(String page, String rows) {
		Map<String,Object> map=new HashMap<String,Object>();
		List<Class_category> list = categoryBiz.getAllCourseType(page, rows);
		map.put("rows", list);
		map.put("total", categoryBiz.getTotalCourseType());
		return map;
	}
	
	@ResponseBody
	@RequestMapping("/courseType/addCourseType.action")
	public void addCourseType(Class_category class_category,PrintWriter out) {
		int result=categoryBiz.addCourseType(class_category);
		if(result>0){
			out.print(1);
		}
		out.print("");
	}
	
	@ResponseBody
	@RequestMapping("/courseType/updateCourseType.action")
	public void updateCourseType(Class_category class_category,PrintWriter out) {
		int result=categoryBiz.updateCourseType(class_category);
		if(result>0){
			out.print(1);
		}
		out.print("");
	}
	
	@ResponseBody
	@RequestMapping("/admin/delCourseType")
	public void delUserInfo(Integer class_id,PrintWriter out) {
		Class_category class_category=new Class_category();
		class_category.setClass_id(class_id);
		int result=categoryBiz.delCourseType(class_category);
		if(result>0){
			out.print(1);
		}
		out.print("");
	}
	
	@ResponseBody
	@RequestMapping("/admin/delCourseTypes")
	public void delUserInfos(String class_ids,PrintWriter out) {
		String[] id=class_ids.split(","); 
		List<String> list=new ArrayList<String>();
		for(String class_id:id){
			list.add(class_id);
		}
		int result=categoryBiz.delCourseTypes(list);
		if(result>0){
			out.print(1);
		}
		out.print("");
	}
}
