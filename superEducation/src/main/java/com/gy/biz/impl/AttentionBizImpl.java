package com.gy.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gy.beans.Attention;
import com.gy.beans.UserInfo;
import com.gy.biz.AttentionBiz;
import com.gy.dao.BaseDao;
@Service
public class AttentionBizImpl implements AttentionBiz {
	private BaseDao baseDao;
	public BaseDao getBaseDao() {
		return baseDao;
	}
	@Resource(name = "baseDaoMybabitsImpl")
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}
	@Override
	public List<UserInfo> getAttentionInfo(Attention attention) {
		
		return this.baseDao.findAll(attention, "getAttentionInfo");
	}
	@Override
	public String getAttentionCount(Attention attention) {
		return this.baseDao.findString(attention, "getAttentionCount");
	}
	@Override
	public String getFansCount(Attention attention) {
		return this.baseDao.findString(attention, "getFansCount");
	}
	@Override
	public List<Attention> getFansInfo(Attention attention) {
		return this.baseDao.findAll(attention, "getFansInfo");
	}
	@Override
	public int insertAttion(Attention attention) {
		
		return this.baseDao.add(attention, "insertAttion");
	}
	@Override
	public int delAttion(Attention attention) {
		
		return this.baseDao.delete(attention, "delAttion");
	}
	@Override
	public int isAttion(Attention attention) {
		
		return this.baseDao.findInteger(attention, "isAttion");
	}

}
