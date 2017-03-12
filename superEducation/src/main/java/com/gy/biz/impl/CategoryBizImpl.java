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

}
