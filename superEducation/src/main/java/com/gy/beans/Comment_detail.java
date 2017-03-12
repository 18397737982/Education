package com.gy.beans;

import java.io.Serializable;

//评论回复
public class Comment_detail implements Serializable{

	private static final long serialVersionUID = 1L;
	private Integer comment_id;
	private Integer stu_id;
	private Integer rely_id;
	private String content;
	
	private Comment comment; //评论
}
