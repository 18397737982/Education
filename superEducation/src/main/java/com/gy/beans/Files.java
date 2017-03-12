package com.gy.beans;


public class Files {
	private int files_id;
	private String files_name;
	private String file_content;
	private Course course;
	public Files() {
		super();
	}
	public int getFiles_id() {
		return files_id;
	}
	public void setFiles_id(int files_id) {
		this.files_id = files_id;
	}
	public String getFiles_name() {
		return files_name;
	}
	public void setFiles_name(String files_name) {
		this.files_name = files_name;
	}
	public String getFile_content() {
		return file_content;
	}
	public void setFile_content(String file_content) {
		this.file_content = file_content;
	}
	
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	@Override
	public String toString() {
		return "Files [files_id=" + files_id + ", files_name=" + files_name + ", file_content=" + file_content
				+ ", course=" + course + "]";
	}
	
}
