package com.gy.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gy.beans.Joingroup;
import com.gy.biz.JoingroupBiz;
import com.gy.dao.BaseDao;
@Service
public class JoingroupBizImpl implements JoingroupBiz {
	private BaseDao<Joingroup> baseDao;
	public BaseDao<Joingroup> getBaseDao() {
		return baseDao;
	}
	@Resource(name = "baseDaoMybabitsImpl")
	public void setBaseDao(BaseDao<Joingroup> baseDao) {
		this.baseDao = baseDao;
	}
	@Override
	public Joingroup selectgroup(Joingroup joingroup) {
		List<Joingroup> list=this.baseDao.findAll(joingroup, "findOneJoingroup");
		
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}
	@Override
	public int addjoin(Joingroup join) {
		return this.baseDao.add(join, "addjoingroup");
	}
	@Override
	public int exitjoin(Joingroup join) {
		return this.baseDao.delete(join, "exitjoingroup");
	}
	@Override
	public List<Joingroup> selectAllgroup(Joingroup join) {
		 return this.baseDao.findAll(join, "findOAllJoingroup");
	}

}
