package com.gy.beans;

//私信表  or   留言表
public class SelfMessage {
	private Integer smid;
	private Integer sendman;// --发信人
	private Integer receiveman;// --收信人
	private String scontent;
	private String smtime;// --发信时间
	private Integer sendType;// ---(0/1,o:代表留言，1：代表私信)
	private Integer sreadstatus;// --0或1表示未读或已读

	
}
