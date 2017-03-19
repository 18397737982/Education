package com.gy.beans;

import java.io.Serializable;
import java.util.Date;

/**
 * 课程评价
 * 
 * @author admin
 *
 */
public class CourseAssess implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public Integer getCaid() {
		return caid;
	}
	public void setCaid(Integer caid) {
		this.caid = caid;
	}
	@Override
	public String toString() {
		return "CourseAssess [caid=" + caid + ", userInfo=" + userInfo + ", class_hour=" + class_hour + ", content="
				+ content + ", time=" + time + ", readstatus=" + readstatus + "]";
	}
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public Class_hour getClass_hour() {
		return class_hour;
	}
	public void setClass_hour(Class_hour class_hour) {
		this.class_hour = class_hour;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public Integer getReadstatus() {
		return readstatus;
	}
	public void setReadstatus(Integer readstatus) {
		this.readstatus = readstatus;
	}
	private Integer caid;
	private UserInfo userInfo;
	private Class_hour class_hour;// --课时管理id(外键)
	private String content;// --评价内容
	private String time;// --评价时间
	private Integer readstatus;// --0或1表示未读或已读
	
}
