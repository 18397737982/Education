package com.gy.biz.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gy.beans.Class_category;
import com.gy.biz.CategoryBiz;
import com.gy.dao.BaseDao;



@Service
public class CategoryBizImpl implements CategoryBiz{
	private BaseDao  baseDao;
	@Resource(name = "baseDaoMybabitsImpl")
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}
	@Override
	public List<Class_category> findAllCategory( ) {

		return this.baseDao.findAll(new Class_category(),"findAllcategory");
	}
	@Override
	public List<Class_category> getAllCourseType(String pageNumber, String pageSize) {
		Class_category class_category=new Class_category();
		int pageN=Integer.parseInt(pageNumber);
		int pageS=Integer.parseInt(pageSize);
		Map<String,Integer> map=new HashMap<String,Integer>();
		
		map.put("pageNumber", (pageN-1)*pageS);
		map.put("pageSize", pageS);
		return this.baseDao.findAll(class_category, map, "getAllCourseType");
	}
	@Override
	public int getTotalCourseType() {
		Class_category class_category=new Class_category();
		int total=Integer.parseInt( this.baseDao.findString(class_category, "getTotalCourseType"));
		return total;
	}
	@Override
	public int addCourseType(Class_category class_category) {
		return this.baseDao.add(class_category, "addCourseType");
	}
	@Override
	public int updateCourseType(Class_category class_category) {
		return this.baseDao.update(class_category, "updateCourseType");
	}
	@Override
	public int delCourseType(Class_category class_category) {
		return this.baseDao.delete(class_category, "delCourseType");
	}
	@Override
	public int delCourseTypes(List<String> class_ids) {
		Class_category class_category=new Class_category();
		return this.baseDao.deleteMany(class_category, class_ids, "delCourseTypes");
	}

}
