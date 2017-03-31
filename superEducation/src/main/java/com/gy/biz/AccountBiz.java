package com.gy.biz;

import com.gy.beans.Account;
import com.gy.beans.UserInfo;

public interface AccountBiz {
	
	public Account selectBalance(Account account);

	public int addBalance(Account accounts);

	public void addAccount(Account account);

}
