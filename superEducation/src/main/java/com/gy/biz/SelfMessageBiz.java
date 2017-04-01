package com.gy.biz;

import java.util.List;

import com.gy.beans.SelfMessage;
import com.gy.beans.UserInfo;

public interface SelfMessageBiz {
	
	public void addSelfMessage(SelfMessage selfMessage);
	
	public List<SelfMessage> getInfoByreceiveman(SelfMessage selfMessage);
	
}
