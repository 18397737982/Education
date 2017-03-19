package com.gy.beans;

import java.io.Serializable;

//小组表
public class Cgroup implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer gid;
	private String groupname;// ---小组名
	private String createtime;// ---创建时间
	private String groupnumber;// ---小组成员（拼接）
	private Integer peoplecount;
	private String pic;//小组头像
	private String introduction;//小组简介
	private UserInfo userinfo;
	private String keyWord;//关键字，查询时用
	private Class_category class_category;
	private Integer groupMember;//新加入的成员
	private Integer pagesize;
	private Integer pagenumber;
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public String getGroupname() {
		return groupname;
	}
	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public String getGroupnumber() {
		return groupnumber;
	}
	public void setGroupnumber(String groupnumber) {
		this.groupnumber = groupnumber;
	}
	public Integer getPeoplecount() {
		return peoplecount;
	}
	public void setPeoplecount(Integer peoplecount) {
		this.peoplecount = peoplecount;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public UserInfo getUserinfo() {
		return userinfo;
	}
	public void setUserinfo(UserInfo userinfo) {
		this.userinfo = userinfo;
	}
	public String getKeyWord() {
		return keyWord;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	public Class_category getClass_category() {
		return class_category;
	}
	public void setClass_category(Class_category class_category) {
		this.class_category = class_category;
	}
	public Integer getGroupMember() {
		return groupMember;
	}
	public void setGroupMember(Integer groupMember) {
		this.groupMember = groupMember;
	}
	public Integer getPagesize() {
		return pagesize;
	}
	public void setPagesize(Integer pagesize) {
		this.pagesize = pagesize;
	}
	public Integer getPagenumber() {
		return pagenumber;
	}
	public void setPagenumber(Integer pagenumber) {
		this.pagenumber = pagenumber;
	}
	@Override
	public String toString() {
		return "Cgroup [gid=" + gid + ", groupname=" + groupname + ", createtime=" + createtime + ", groupnumber="
				+ groupnumber + ", peoplecount=" + peoplecount + ", pic=" + pic + ", introduction=" + introduction
				+ ", userinfo=" + userinfo + ", keyWord=" + keyWord + ", class_category=" + class_category
				+ ", groupMember=" + groupMember + ", pagesize=" + pagesize + ", pagenumber=" + pagenumber + "]";
	}
	

}
