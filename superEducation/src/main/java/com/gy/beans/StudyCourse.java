package com.gy.beans;

import java.io.Serializable;
import java.util.Date;

public class StudyCourse implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer scid;
	private UserInfo userInfo;
	private Course course;
	private String begintime;
	private String assess;//评论总数
	private String studyPeriod;//以学课时数
	@Override
	public String toString() {
		return "StudyCourse [scid=" + scid + ", userInfo=" + userInfo + ", course=" + course + ", begintime="
				+ begintime + ", assess=" + assess + ", studyPeriod=" + studyPeriod + "]";
	}
	public Integer getScid() {
		return scid;
	}
	public void setScid(Integer scid) {
		this.scid = scid;
	}
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	
	public String getBegintime() {
		return begintime;
	}
	public void setBegintime(String begintime) {
		this.begintime = begintime;
	}
	public String getAssess() {
		return assess;
	}
	public void setAssess(String assess) {
		this.assess = assess;
	}
	public String getStudyPeriod() {
		return studyPeriod;
	}
	public void setStudyPeriod(String studyPeriod) {
		this.studyPeriod = studyPeriod;
	}
}
