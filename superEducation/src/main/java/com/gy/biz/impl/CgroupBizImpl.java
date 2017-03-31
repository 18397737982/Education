package com.gy.biz.impl;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gy.beans.Cgroup;
import com.gy.biz.CgroupBiz;
import com.gy.dao.BaseDao;
@Service
public class CgroupBizImpl implements CgroupBiz {

	private BaseDao baseDao;
	public BaseDao getBaseDao() {
		return baseDao;
	}
	@Resource(name = "baseDaoMybabitsImpl")
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}
	@Override
	public List<Cgroup> getAllgroupBypage(Cgroup cgroup) {
		return this.baseDao.findAll(cgroup, "findAllgroupBypage");
	}
	@Override
	public String getCgroupCount(Cgroup cgroup) {
		
		return this.baseDao.findString(cgroup, "getCgroupCount");
	}
	@Override
	public List<Cgroup> getAllGroupInfo() {
		Cgroup cgroup=new Cgroup();
		return this.baseDao.findAll(cgroup, "getAllGroupInfo");
	}
	@Override
	public Cgroup searchGroup(Cgroup group) {
		List<Cgroup> list=this.baseDao.findAll(group, "searchGroup");
		System.out.println(list);
		if(list.size()>0){
			System.out.println(list.get(0));
			return list.get(0);
		}else{
			return null;
		}	
	}

}
