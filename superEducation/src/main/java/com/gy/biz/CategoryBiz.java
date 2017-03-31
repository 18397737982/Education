package com.gy.biz;


import java.util.List;

import com.gy.beans.Class_category;


public interface CategoryBiz {
	public List<Class_category> findAllCategory();
	
	public List<Class_category> getAllCourseType(String pageNumber,String pageSize);
	
	public int getTotalCourseType();
	
	public int addCourseType(Class_category class_category);
	
	public int updateCourseType(Class_category class_category);
	
	public int delCourseType(Class_category class_category);
	
	//删除多个用户
	public int delCourseTypes(List<String> class_ids);
}
