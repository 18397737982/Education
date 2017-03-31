package com.gy.dao;

import java.util.List;
import java.util.Map;


//这是dao层的接口
public interface BaseDao<T> {
	
	public T  find(T t,String sqlId);
	public Integer  findInteger(T t,String sqlId);
	public Integer  findInteger(T t,Map map,String sqlId);
	public String  findString(T t,String sqlId);

	//用于分页查询

	public List<T> findAll(T t,String sqlId);
	
	public List<T> findAll(T t,Map map,String sqlId);
	
	//添加
	public int add(T t,String sqlId);
	
	public int deletes(T t,List param,String sqlId);
	
	public int add(T t,Map map,String sqlId);
	//删除
	public int delete(T t,String sqlId);
	
	public int deleteMany(T t,List list,String sqlId);
	
	public int delete(T t,Map map,String sqlId);
	//修改
	public int update(T t, String sqlId);
	
	public int update(T t,Map map,String sqlId);
	
	public int updateMany(T t,List list,String sqlId);
	
	//聚合查询
	public double fiondFunc(T t,String sqlId);
	
	public double fiondFunc(T t,Map map,String sqlId);
	//条件查询
}
