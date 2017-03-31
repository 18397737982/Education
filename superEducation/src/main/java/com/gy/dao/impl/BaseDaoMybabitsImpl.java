package com.gy.dao.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.gy.dao.BaseDao;
//操作sqlSession.find  selectOne  insert update delete
@Repository  //ioc
public class BaseDaoMybabitsImpl<T> extends SqlSessionDaoSupport implements BaseDao<T> {
	
	private String mapperLocation="com.gy.mapper.";

	@Override
	@Resource(name="sqlSessionFactory") //di
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	private String getMapperId(T t,String sqlId){
		String s=mapperLocation+t.getClass().getSimpleName()+"Mapper."+sqlId;
		System.out.println(s);
		return mapperLocation+t.getClass().getSimpleName()+"Mapper."+sqlId;
		
	}
	
	@Override
	public String findString(T t, String sqlId) {
		return super.getSqlSession().selectOne(this.getMapperId(t, sqlId), t);
	}
	
	@Override
	public T find(T t, String sqlId) {
		return super.getSqlSession().selectOne(this.getMapperId(t, sqlId), t);
	}

	@Override
	public List<T> findAll(T t, String sqlId) {

		return super.getSqlSession().selectList(this.getMapperId(t, sqlId),t);
	}

	@Override
	public List<T> findAll(T t, Map map, String sqlId) {
		return super.getSqlSession().selectList(this.getMapperId(t, sqlId),map);
	}

	@Override
	public int add(T t, String sqlId) {
		return super.getSqlSession().insert(this.getMapperId(t, sqlId),t);
	}

	@Override
	public int add(T t, Map map, String sqlId) {
		return super.getSqlSession().insert(this.getMapperId(t, sqlId),map);
		
	}

	@Override
	public int delete(T t, String sqlId) {
		return super.getSqlSession().delete(this.getMapperId(t, sqlId),t);
	}

	@Override
	public int deleteMany(T t, List list, String sqlId) {
		return super.getSqlSession().delete(this.getMapperId(t, sqlId),list);
	}

	@Override
	public int delete(T t, Map map, String sqlId) {
		return super.getSqlSession().delete(this.getMapperId(t, sqlId),map);
	}

	@Override
	public int update(T t, String sqlId) {
		return super.getSqlSession().update(this.getMapperId(t, sqlId),t);
	}

	@Override
	public int update(T t, Map map, String sqlId) {
		return super.getSqlSession().update(this.getMapperId(t, sqlId),map);
	}

	@Override
	public int updateMany(T t, List list, String sqlId) {
		return super.getSqlSession().update(this.getMapperId(t, sqlId),list);
	}

	@Override
	public double fiondFunc(T t, String sqlId) {
		return super.getSqlSession().selectOne(this.getMapperId(t, sqlId),t);
	}

	@Override
	public double fiondFunc(T t, Map map, String sqlId) {
		return super.getSqlSession().selectOne(this.getMapperId(t, sqlId),map);
	}

	@Override
	public int deletes(T t, List param, String sqlId) {
		
		return super.getSqlSession().delete(this.getMapperId(t, sqlId),param);
	}

	public Integer findInteger(T t, String sqlId) {
		return super.getSqlSession().selectOne(this.getMapperId(t, sqlId), t);
	}

	@Override
	public Integer findInteger(T t, Map map, String sqlId) {
		return super.getSqlSession().selectOne(this.getMapperId(t, sqlId),map);
	}

}
