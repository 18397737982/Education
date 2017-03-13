package com.gy.beans;

import java.io.Serializable;

public class Comment implements Serializable {

	private static final long serialVersionUID = 1L;
	private Integer comment_id;
	private String comment_content;
	public Integer getComment_id() {
		return comment_id;
	}
	public void setComment_id(Integer comment_id) {
		this.comment_id = comment_id;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
}
