package com.gy.beans;

import java.io.Serializable;
import java.util.Date;

/**
 * 课时问题问答表
 * 
 * @author admin
 *
 */
public class CourseAnswer implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer caid;//回答问题id
	private Integer cqid;// 问题id
	private String answerContent;// 回答的内容
	private Date answertime;// --回答时间
	private CourseQuestion courseQuestion;
	private UserInfo userInfo;
	private Class_hour class_hour;
	public Integer getCaid() {
		return caid;
	}
	public void setCaid(Integer caid) {
		this.caid = caid;
	}
	public Integer getCqid() {
		return cqid;
	}
	public void setCqid(Integer cqid) {
		this.cqid = cqid;
	}
	public String getAnswerContent() {
		return answerContent;
	}
	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}
	public Date getAnswertime() {
		return answertime;
	}
	public void setAnswertime(Date answertime) {
		this.answertime = answertime;
	}
	public CourseQuestion getCourseQuestion() {
		return courseQuestion;
	}
	public void setCourseQuestion(CourseQuestion courseQuestion) {
		this.courseQuestion = courseQuestion;
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
	@Override
	public String toString() {
		return "CourseAnswer [caid=" + caid + ", cqid=" + cqid + ", answerContent=" + answerContent + ", answertime="
				+ answertime + ", courseQuestion=" + courseQuestion + ", userInfo=" + userInfo + ", class_hour="
				+ class_hour + "]";
	}
	
}
