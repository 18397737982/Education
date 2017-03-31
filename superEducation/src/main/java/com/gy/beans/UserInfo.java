package com.gy.beans;

import java.io.Serializable;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class UserInfo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 883377033525727479L;
	
	private Integer user_id;
	private String user_name;
	private String realname;
	private Integer age;
	private String sex;
	private String pic;
	private String password;
	private String usign;
	private String introduce;
	private String email;
	private Integer status;
	private int pagenumber;
	private int pagesize;
	
	@Override
	public String toString() {
		return "UserInfo [user_id=" + user_id + ", user_name=" + user_name + ", realname=" + realname + ", age=" + age
				+ ", sex=" + sex + ", pic=" + pic + ", password=" + password + ", usign=" + usign + ", introduce="
				+ introduce + ", email=" + email + ", status=" + status + ", pagenumber=" + pagenumber + ", pagesize="
				+ pagesize + ", user_category=" + user_category + ", tel=" + tel + ", qq=" + qq + ", time=" + time
				+ ", code=" + code + ", sendCode=" + sendCode + "]";
	}
	public int getPagenumber() {
		return pagenumber;
	}
	public void setPagenumber(int pagenumber) {
		this.pagenumber = pagenumber;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsign() {
		return usign;
	}
	public void setUsign(String usign) {
		this.usign = usign;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	public String getUser_category() {
		return user_category;
	}
	public void setUser_category(String user_category) {
		this.user_category = user_category;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public int getSendCode() {
		return sendCode;
	}
	public void setSendCode(int sendCode) {
		this.sendCode = sendCode;
	}

	private String user_category;//
	private String tel;//
	private String qq;//
	private Date time;
	
	private int code;//从前台拿到的验证码
	private int sendCode;//从后台发送过去的验证码
	
	
	


	
}
