package com.gy.beans;

import java.io.Serializable;

//私信表  or   留言表
public class SelfMessage implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer smid;
	private Integer receiveman;// --收信人
	private Integer sendman;
	private String scontent;
	private String smtime;// --发信时间
	private Integer sendType;// ---(0/1,o:代表留言，1：代表私信)
	private Integer sreadstatus;// --0或1表示未读或已读
	private UserInfo userInfo;
	private Integer user_id;
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getSendman() {
		return sendman;
	}
	public void setSendman(Integer sendman) {
		this.sendman = sendman;
	}
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public Integer getSmid() {
		return smid;
	}
	public void setSmid(Integer smid) {
		this.smid = smid;
	}
	public Integer getReceiveman() {
		return receiveman;
	}
	public void setReceiveman(Integer receiveman) {
		this.receiveman = receiveman;
	}
	public String getScontent() {
		return scontent;
	}
	public void setScontent(String scontent) {
		this.scontent = scontent;
	}
	public String getSmtime() {
		return smtime;
	}
	public void setSmtime(String smtime) {
		this.smtime = smtime;
	}
	public Integer getSendType() {
		return sendType;
	}
	public void setSendType(Integer sendType) {
		this.sendType = sendType;
	}
	public Integer getSreadstatus() {
		return sreadstatus;
	}
	public void setSreadstatus(Integer sreadstatus) {
		this.sreadstatus = sreadstatus;
	}
	@Override
	public String toString() {
		return "SelfMessage [smid=" + smid + ", receiveman=" + receiveman + ", scontent=" + scontent + ", smtime="
				+ smtime + ", sendType=" + sendType + ", sreadstatus=" + sreadstatus + ", userInfo=" + userInfo + "]";
	}
	

}
