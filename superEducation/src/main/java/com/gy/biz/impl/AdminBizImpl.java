package com.gy.biz.impl;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gy.beans.Admin;
import com.gy.biz.AdminBiz;
import com.gy.dao.BaseDao;
@Service
public class AdminBizImpl implements AdminBiz {
	private BaseDao<Admin> baseDao;

	public BaseDao<Admin> getBaseDao() {
		return baseDao;
	}

	@Resource(name = "baseDaoMybabitsImpl")
	public void setBaseDao(BaseDao<Admin> baseDao) {
		this.baseDao = baseDao;
	}

	@Override
	public Admin loginadmin(Admin admin) {
		List<Admin> list=this.baseDao.findAll(admin, "loginadmin");
		if(list!=null){
			return list.get(0);
		}
		return null;
	}

	@Override
	public Admin loginByEmail(Admin admin) {
		List<Admin> list=this.baseDao.findAll(admin, "loginByEmail");
		if(list!=null){
			return list.get(0);
		}
		return null;
	}

	@Override
	public int regitadmin(Admin admin) {
		return this.baseDao.add(admin, "regitadmin");
				
				
	}

	@Override
	public Admin checkName(Admin admin) {
		List<Admin> list=this.baseDao.findAll(admin, "checkName");
		if(list.size()>0 ){
			return list.get(0);
		}
		return null;
	}
	
}
