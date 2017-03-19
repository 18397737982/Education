package com.gy.beans;

import java.io.Serializable;

/**
 * 关注表
 * @author admin
 *
 */
public class Attention implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int atid;
	public int getAtid() {
		return atid;
	}
	public void setAtid(int atid) {
		this.atid = atid;
	}
	public int getAttention() {
		return attention;
	}
	public void setAttention(int attention) {
		this.attention = attention;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getSreadstatus() {
		return sreadstatus;
	}
	public void setSreadstatus(int sreadstatus) {
		this.sreadstatus = sreadstatus;
	}
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	@Override
	public String toString() {
		return "Attention [atid=" + atid + ", attention=" + attention + ", user_id=" + user_id + ", sreadstatus="
				+ sreadstatus + ", userInfo=" + userInfo + "]";
	}
	private int attention;// -- 被关注的人 用户id(外键)
	private int user_id;// -- 关注发起者 用户id(外键)
	private int sreadstatus;
	private UserInfo userInfo;
	
}
