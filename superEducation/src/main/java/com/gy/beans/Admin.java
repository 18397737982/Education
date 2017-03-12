package com.gy.beans;

public class Admin {
	
	private int admin_id;
	private String admin_name;
	private String email;
	private String admin_password;
	private String temp01;// --备用字段
	private String temp02;// --备用字段
	
	
	public Admin() {
		super();
	}
	public Admin(int admin_id, String admin_name, String email, String admin_password, String temp01, String temp02) {
		super();
		this.admin_id = admin_id;
		this.admin_name = admin_name;
		this.email = email;
		this.admin_password = admin_password;
		this.temp01 = temp01;
		this.temp02 = temp02;
	}
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAdmin_password() {
		return admin_password;
	}
	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}
	public String getTemp01() {
		return temp01;
	}
	public void setTemp01(String temp01) {
		this.temp01 = temp01;
	}
	public String getTemp02() {
		return temp02;
	}
	public void setTemp02(String temp02) {
		this.temp02 = temp02;
	}
	@Override
	public String toString() {
		return "Admin [admin_id=" + admin_id + ", admin_name=" + admin_name + ", email=" + email + ", admin_password="
				+ admin_password + ", temp01=" + temp01 + ", temp02=" + temp02 + "]";
	}
	
	
	
	
}
