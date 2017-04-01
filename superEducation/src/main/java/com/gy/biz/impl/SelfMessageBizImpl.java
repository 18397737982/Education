package com.gy.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gy.beans.Admin;
import com.gy.beans.SelfMessage;
import com.gy.beans.UserInfo;
import com.gy.biz.SelfMessageBiz;
import com.gy.dao.BaseDao;
@Service
public class SelfMessageBizImpl implements SelfMessageBiz {
	private BaseDao baseDao;

	public BaseDao getBaseDao() {
		return baseDao;
	}

	@Resource(name = "baseDaoMybabitsImpl")
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}

	@Override
	public void addSelfMessage(SelfMessage selfMessage) {
		this.baseDao.add(selfMessage, "addSelfMessage");
	}

	@Override
	public List<SelfMessage> getInfoByreceiveman(SelfMessage selfMessage) {
		return this.baseDao.findAll(selfMessage, "getInfoByreceiveman");
	}


}
