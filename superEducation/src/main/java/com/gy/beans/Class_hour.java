package com.gy.beans;

import java.io.Serializable;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Class_hour implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer class_hour_id;
	private Integer type;
	private String title;
	private Integer courseseq;
	private String content;
	private Course course;
	private String introduction;
	

	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public Integer getClass_hour_id() {
		return class_hour_id;
	}
	public void setClass_hour_id(Integer class_hour_id) {
		this.class_hour_id = class_hour_id;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getCourseseq() {
		return courseseq;
	}
	public void setCourseseq(Integer courseseq) {
		this.courseseq = courseseq;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	@Override
	public String toString() {
		return "class_hour [class_hour_id=" + class_hour_id + ", type=" + type + ", title=" + title + ", courseseq="
				+ courseseq + ", content=" + content + ", course=" + course + ", introduction=" + introduction + "]";
	}
	
	
}
