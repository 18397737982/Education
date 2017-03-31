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
	private String pic;//小组头像
	private String createtime;// ---创建时间
	private String introduction;
	private String user_name;
	
	
	
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
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
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	@Override
	public String toString() {
		return "Cgroup [gid=" + gid + ", groupname=" + groupname + ", pic=" + pic + ", createtime=" + createtime
				+ ", introduction=" + introduction + ", user_name=" + user_name + "]";
	}
	
	
}
