package com.gy.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gy.beans.Account;
import com.gy.beans.UserInfo;
import com.gy.biz.AccountBiz;
import com.gy.dao.BaseDao;
@Service
public class AccountBizImpl implements AccountBiz {
	private BaseDao<Account> baseDao;
	

	public BaseDao<Account> getBaseDao() {
		return baseDao;
	}

	@Resource(name = "baseDaoMybabitsImpl")
	public void setBaseDao(BaseDao<Account> baseDao) {
		this.baseDao = baseDao;
	}


	@Override
	public Account selectBalance(Account account) {
		List<Account> list=this.baseDao.findAll(account, "selectBalance");
		if(list!=null){
			return list.get(0);	
		}else{
			return null;
		}
	
	}

	@Override
	public int addBalance(Account accounts) {
		return this.baseDao.add(accounts,"addBalance");
	}

	@Override
	public void addAccount(Account account) {
		this.baseDao.add(account, "addAcount");
		
	}

}
