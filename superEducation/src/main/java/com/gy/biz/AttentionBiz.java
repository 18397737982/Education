package com.gy.biz;

import java.util.List;

import com.gy.beans.Attention;
import com.gy.beans.UserInfo;

public interface AttentionBiz {
	//得到用户关注人的信息
	public List<UserInfo> getAttentionInfo(Attention attention);
	//得到用户关注的数量
	public String getAttentionCount(Attention attention);
	//得到用户的粉丝数
	public String getFansCount(Attention attention);
	//得到粉丝的信息
	public List<Attention> getFansInfo(Attention attention);
	
	public int insertAttion(Attention attention);
	public int delAttion(Attention attention);
	
	//是否已经关注
	public int isAttion(Attention attention);
	
	
}
