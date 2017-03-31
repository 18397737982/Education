package com.gy.biz;

 import java.util.List;

import com.gy.beans.AccountNotes;
     
public interface AccountNotesBiz {
	
	//添加记录
	public int addnotes(AccountNotes accountNotess);
	//查询所有记录
	public List<AccountNotes> findAll(AccountNotes accountNotes);
	
	//查询所有充值记录
	public List<AccountNotes> findBymoney(AccountNotes accountNotes);
	public List<AccountNotes> findBymoneys(AccountNotes accountNotes);

	
	
}
