package com.gy.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.gy.beans.SelfMessage;
import com.gy.beans.UserInfo;
import com.gy.biz.SelfMessageBiz;

@Controller
public class SelfMessageController {
	private SelfMessageBiz selfMessageBiz;
	
	@Resource(name="selfMessageBizImpl")
	public void setSelfMessageBiz(SelfMessageBiz selfMessageBiz) {
		this.selfMessageBiz = selfMessageBiz;
	}

	@ResponseBody
	@RequestMapping(value = "/message/addMessage.action", method = RequestMethod.POST)
	public List<SelfMessage> studyingByUserid(SelfMessage selfMessage,Integer user_id) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date=sdf.format(new Date());
		selfMessage.setSmtime(date);
		UserInfo userInfo=new UserInfo();
		userInfo.setUser_id(user_id);
		selfMessage.setUserInfo(userInfo);
		selfMessageBiz.addSelfMessage(selfMessage);
		//得到留言者的信息
		List<SelfMessage> list=selfMessageBiz.getInfoByreceiveman(selfMessage);
		return list;
	}
	
	//插入 私信
	@RequestMapping(value = "selfMessage/insertMessage", method = RequestMethod.POST)
	public @ResponseBody int insertMessage(SelfMessage selfMessage) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date=sdf.format(new Date());
		selfMessage.setUser_id(selfMessage.getSendman());
		selfMessage.setSmtime(date);
		selfMessage.setSendType(1);
		selfMessage.setSreadstatus(0);
		selfMessageBiz.addSelfMessage(selfMessage);
		return 1;
	}
}
