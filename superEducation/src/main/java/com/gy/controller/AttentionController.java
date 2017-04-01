package com.gy.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gy.beans.Attention;
import com.gy.beans.UserInfo;
import com.gy.biz.AttentionBiz;

@Controller
public class AttentionController {
	private AttentionBiz attentionBiz;
	
	public AttentionBiz getAttentionBiz() {
		return attentionBiz;
	}
	@Resource(name="attentionBizImpl")
	public void setAttentionBiz(AttentionBiz attentionBiz) {
		this.attentionBiz = attentionBiz;
	}
	
	@ResponseBody
	@RequestMapping("/attention/attentionInfo")
	public List<UserInfo> getAttentionInfo(Integer user_id){
		UserInfo userInfo=new UserInfo();
		userInfo.setUser_id(user_id);
		Attention attention=new Attention();
		attention.setUserInfo(userInfo);
		List<UserInfo> attentionInfo =attentionBiz.getAttentionInfo(attention);
		return attentionInfo;
	}
	//关注的个数
	@RequestMapping("/attention/attentionCount")
	@ResponseBody
	public String getAttentionCount(Integer user_id){
		UserInfo userInfo=new UserInfo();
		userInfo.setUser_id(user_id);
		Attention attention=new Attention();
		attention.setUserInfo(userInfo);
		String attentionCount=attentionBiz.getAttentionCount(attention);
		return attentionCount;
	}
	//粉丝的个数
	@RequestMapping("/attention/fansCount")
	@ResponseBody
	public String getFansCount(Integer user_id){
		UserInfo userInfo=new UserInfo();
		userInfo.setUser_id(user_id);
		Attention attention=new Attention();
		attention.setUserInfo(userInfo);
		String fansCount=attentionBiz.getFansCount(attention);
		return fansCount;
	}
	
	@RequestMapping("/attention/fansInfo")
	@ResponseBody
	public List<Attention> getFans(Integer user_id){
		UserInfo userInfo=new UserInfo();
		userInfo.setUser_id(user_id);
		Attention attention=new Attention();
		attention.setUserInfo(userInfo);
		List<Attention> fans=attentionBiz.getFansInfo(attention);
		return fans;
	}
	
	@RequestMapping("attention/insertAttion")
	@ResponseBody
	public int insertAttion(Attention attention){
		this.attentionBiz.insertAttion(attention);
		return 1;
	}
	
	@RequestMapping("attention/delAttion")
	@ResponseBody
	public int delAttion(Attention attention){
		this.attentionBiz.delAttion(attention);
		return 1;
	}
	
	@RequestMapping("attention/isAttion")
	@ResponseBody
	public int isAttion(Attention attention){
		return this.attentionBiz.isAttion(attention);
	}
	
	
	
}
