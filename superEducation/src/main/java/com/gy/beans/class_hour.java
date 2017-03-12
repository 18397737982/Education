package com.gy.beans;

import java.io.Serializable;

public class class_hour implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int class_hour_id;
	private String class_hour_name;
	private int class_seq;
	private String rediao_address;
	
	private Course course;

	public class_hour() {
		super();
	}

	public int getClass_hour_id() {
		return class_hour_id;
	}

	public void setClass_hour_id(int class_hour_id) {
		this.class_hour_id = class_hour_id;
	}

	public String getClass_hour_name() {
		return class_hour_name;
	}

	public void setClass_hour_name(String class_hour_name) {
		this.class_hour_name = class_hour_name;
	}

	public int getClass_seq() {
		return class_seq;
	}

	public void setClass_seq(int class_seq) {
		this.class_seq = class_seq;
	}

	public String getRediao_address() {
		return rediao_address;
	}

	public void setRediao_address(String rediao_address) {
		this.rediao_address = rediao_address;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	@Override
	public String toString() {
		return "class_hour [class_hour_id=" + class_hour_id + ", class_hour_name=" + class_hour_name + ", class_seq="
				+ class_seq + ", rediao_address=" + rediao_address + ", course=" + course + "]";
	}

	
	
	
	

}
