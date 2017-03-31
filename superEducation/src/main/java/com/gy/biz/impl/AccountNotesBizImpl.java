package com.gy.biz.impl;
import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.gy.beans.AccountNotes;
import com.gy.biz.AccountNotesBiz;
import com.gy.dao.BaseDao;
@Service
public class AccountNotesBizImpl implements AccountNotesBiz {
	private BaseDao<AccountNotes> baseDao;
	

	public BaseDao<AccountNotes> getBaseDao() {
		return baseDao;
	}

	@Resource(name = "baseDaoMybabitsImpl")
	public void setBaseDao(BaseDao<AccountNotes> baseDao) {
		this.baseDao = baseDao;
	}

	@Override
	public int addnotes(AccountNotes accountNotess) {
		int result=this.baseDao.add(accountNotess, "addnotes");
		return result;
	}

	@Override
	public List<AccountNotes> findAll(AccountNotes accountNotes) {
		return this.baseDao.findAll(accountNotes, "findAll");
	}

	@Override
	public List<AccountNotes> findBymoney(AccountNotes accountNotes) {
		return this.baseDao.findAll(accountNotes, "findAllBymoney");
	}

	@Override
	public List<AccountNotes> findBymoneys(AccountNotes accountNotes) {
		return this.baseDao.findAll(accountNotes, "findAllBymoneys");
	}


}
