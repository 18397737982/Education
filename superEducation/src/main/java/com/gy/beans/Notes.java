package com.gy.beans;

import java.io.Serializable;
import java.util.Date;

public class Notes implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int notes_id;
	private String notes_content;
	private Course course;
	private Date comment_time;
	private Class_hour class_hour;
	private UserInfo stu_user;
	private String notesCount;
	
	
	public String getNotesCount() {
		return notesCount;
	}
	public void setNotesCount(String notesCount) {
		this.notesCount = notesCount;
	}
	public int getNotes_id() {
		return notes_id;
	}
	public void setNotes_id(int notes_id) {
		this.notes_id = notes_id;
	}
	public String getNotes_content() {
		return notes_content;
	}
	public void setNotes_content(String notes_content) {
		this.notes_content = notes_content;
	}
	
	public Date getComment_time() {
		return comment_time;
	}
	@Override
	public String toString() {
		return "Notes [notes_id=" + notes_id + ", notes_content=" + notes_content + ", comment_time=" + comment_time
				+ ", class_hour=" + class_hour + ", stu_user=" + stu_user + "]";
	}
	public Class_hour getClass_hour() {
		return class_hour;
	}
	public void setClass_hour(Class_hour class_hour) {
		this.class_hour = class_hour;
	}
	public void setComment_time(Date comment_time) {
		this.comment_time = comment_time;
	}
	
	public UserInfo getStu_user() {
		return stu_user;
	}
	public void setStu_user(UserInfo stu_user) {
		this.stu_user = stu_user;
	}
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}

}
