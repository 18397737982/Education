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
	private Date begintime;
	private String assess;
	private String studyPeriod;
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
	public Date getBegintime() {
		return begintime;
	}
	public void setBegintime(Date begintime) {
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
