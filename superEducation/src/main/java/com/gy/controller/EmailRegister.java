package com.gy.controller;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.gy.beans.UserInfo;
import com.gy.biz.UserInfoBiz;
import com.gy.util.RandomNumUtil;


@Controller
@RequestMapping("/userinfo")
@SessionAttributes(value={"users","yzm"})
public class EmailRegister {
	private UserInfoBiz userInfoBiz;

	public UserInfoBiz getUserInfoBiz() {
		return userInfoBiz;
	}
	@Resource(name="userInfoBizImpl")
	public void setUserInfoBiz(UserInfoBiz userInfoBiz) {
		this.userInfoBiz = userInfoBiz;
	}

	@RequestMapping("/sendMail")
	public void sendMail(ModelMap map,String email,PrintWriter out,Model model){
		System.out.println(email);
		//int yzm=(int)(Math.random()*1000000);
		int yzm=RandomNumUtil.getRandomNumber();//生成六位不重复随机数
		model.addAttribute("yzm", yzm);
		//map.put("yzm", yzm);
		activeAccountMail("超级学习网注册验证信息","您的验证码是："+yzm+",请认真确认后在是您的操作之后，在执行操作","18397737982@163.com",email);
		out.print(yzm);
		out.flush();
		out.close();
	}
	
	@Autowired
	private JavaMailSender mailSender;
	private void activeAccountMail(String subject, String content,String from, String to) {
		try {
			MimeMessage mm=mailSender.createMimeMessage();
			MimeMessageHelper mmh=new MimeMessageHelper(mm, true,"utf-8");
			mmh.setTo(to);//设置邮件接收者
			mmh.setFrom(from);
			mmh.setSubject(subject);//设置主题
			mmh.setText(content,true);//设置内容
			mailSender.send(mm);//发送邮件
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	@RequestMapping(value="/checkemail")
	public void checkEmail(String email,PrintWriter out){
		UserInfo userInfo=new UserInfo();
		userInfo.setEmail(email);
		if(email!=null && userInfoBiz.getEmail(userInfo)){
			out.print(1);
		}else{
			out.print(0);
		}


	}
	@RequestMapping(value="/checkuname")
	public void checkUname(String uname,PrintWriter out){
		UserInfo userInfo=new UserInfo();
		userInfo.setUser_name(uname);
		if(uname!=null && userInfoBiz.getUsername(userInfo)){
			out.print(1);
		}else{
			out.print(0);
		}
	}

}
