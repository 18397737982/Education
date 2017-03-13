package com.gy.beans;

import java.io.Serializable;

public class Class_category implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int class_id;
	private String class_categorys;
	

	public Class_category() {
		super();
	}
	
	public Class_category(int class_id, String class_categorys) {
		super();
		this.class_id = class_id;
		this.class_categorys = class_categorys;
	}


	public int getClass_id() {
		return class_id;
	}


	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}


	public String getClass_categorys() {
		return class_categorys;
	}


	public void setClass_categorys(String class_categorys) {
		this.class_categorys = class_categorys;
	}


	@Override
	public String toString() {
		return "Class_category [class_id=" + class_id + ", class_categorys=" + class_categorys + "]";
	}
	
	
	

}
