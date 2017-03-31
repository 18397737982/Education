package com.gy.beans;

import java.io.Serializable;
import java.util.List;

/**
 * 课程提问
 * @author admin
 */
public class CourseQuestion implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 每页显示评论多少条
	 */
	public static final int QUESTION_PAGE = 15;
	private Integer cqid;
	private String cqcontent;// --提问内容
	private String cqtime;// --提问时间
	private Integer cqview;// ---浏览次数
	private Integer qreadstatus;// --0或1表示未读或已读
	private UserInfo userInfo;
	private Class_hour class_hour;
	private Integer answercount;
	private List<CourseAnswer> courseAnswer;
	public Integer getCqid() {
		return cqid;
	}
	public void setCqid(Integer cqid) {
		this.cqid = cqid;
	}
	public String getCqcontent() {
		return cqcontent;
	}
	public void setCqcontent(String cqcontent) {
		this.cqcontent = cqcontent;
	}
	public String getCqtime() {
		return cqtime;
	}
	public void setCqtime(String cqtime) {
		this.cqtime = cqtime;
	}
	public Integer getCqview() {
		return cqview;
	}
	public void setCqview(Integer cqview) {
		this.cqview = cqview;
	}
	public Integer getQreadstatus() {
		return qreadstatus;
	}
	public void setQreadstatus(Integer qreadstatus) {
		this.qreadstatus = qreadstatus;
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
	public Integer getAnswercount() {
		return answercount;
	}
	public void setAnswercount(Integer answercount) {
		this.answercount = answercount;
	}
	public List<CourseAnswer> getCourseAnswer() {
		return courseAnswer;
	}
	public void setCourseAnswer(List<CourseAnswer> courseAnswer) {
		this.courseAnswer = courseAnswer;
	}
	@Override
	public String toString() {
		return "CourseQuestion [cqid=" + cqid + ", cqcontent=" + cqcontent + ", cqtime=" + cqtime + ", cqview=" + cqview
				+ ", qreadstatus=" + qreadstatus + ", userInfo=" + userInfo + ", class_hour=" + class_hour
				+ ", answercount=" + answercount + ", courseAnswer=" + courseAnswer + "]";
	}
	
}
