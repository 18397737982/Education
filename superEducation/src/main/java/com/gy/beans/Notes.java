package com.gy.beans;

import java.util.Date;

public class Notes {
	private int notes_id;
	private String notes_content;

	private Date comment_time;
	private Course course;
	private UserInfo stu_user;
	
	
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
	public void setComment_time(Date comment_time) {
		this.comment_time = comment_time;
	}
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	public UserInfo getStu_user() {
		return stu_user;
	}
	public void setStu_user(UserInfo stu_user) {
		this.stu_user = stu_user;
	}
	@Override
	public String toString() {
		return "Notes [notes_id=" + notes_id + ", notes_content=" + notes_content + ", comment_time=" + comment_time
				+ ", course=" + course + ", stu_user=" + stu_user + "]";
	}
	
	
	
	
}
