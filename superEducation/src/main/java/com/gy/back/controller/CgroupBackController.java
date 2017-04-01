package com.gy.back.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gy.beans.Class_category;

@Controller
@RequestMapping("/group")
public class CgroupBackController {

	
//	@ResponseBody
//	@RequestMapping("/getAllgroupbypage")
//	public Map<String,Object> findallCourseType(String page, String rows) {
//		Map<String,Object> map=new HashMap<String,Object>();
//		List<Class_category> list = categoryBiz.getAllCourseType(page, rows);
//		map.put("rows", list);
//		map.put("total", categoryBiz.getTotalCourseType());
//		return map;
//	}
}
