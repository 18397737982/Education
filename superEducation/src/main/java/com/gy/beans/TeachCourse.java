package com.gy.beans;

import java.io.Serializable;
import java.util.Date;

public class TeachCourse implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer tcid;
	private UserInfo userInfo;
	private Course course;
	private Date teachPeriod;
	private Integer assess;
	private String memberCount;
	private String assessAvg;
	public Integer getTcid() {
		return tcid;
	}
	public void setTcid(Integer tcid) {
		this.tcid = tcid;
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
	public Date getTeachPeriod() {
		return teachPeriod;
	}
	public void setTeachPeriod(Date teachPeriod) {
		this.teachPeriod = teachPeriod;
	}
	public Integer getAssess() {
		return assess;
	}
	public void setAssess(Integer assess) {
		this.assess = assess;
	}
	public String getMemberCount() {
		return memberCount;
	}
	public void setMemberCount(String memberCount) {
		this.memberCount = memberCount;
	}
	public String getAssessAvg() {
		return assessAvg;
	}
	public void setAssessAvg(String assessAvg) {
		this.assessAvg = assessAvg;
	}
	@Override
	public String toString() {
		return "TeachCourse [tcid=" + tcid + ", userInfo=" + userInfo + ", course=" + course + ", teachPeriod="
				+ teachPeriod + ", assess=" + assess + ", memberCount=" + memberCount + ", assessAvg=" + assessAvg
				+ "]";
	}

}
