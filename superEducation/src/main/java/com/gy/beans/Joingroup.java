package com.gy.beans;

import java.io.Serializable;

public class Joingroup implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -7489485297863047346L;
	private int jid;
	private int gid;
	private int user_id;
	             
	
	public int getJid() {
		return jid;
	}
	public void setJid(int jid) {
		this.jid = jid;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public int getUer_id() {
		return user_id;
	}
	public void setUer_id(int uer_id) {
		this.user_id = uer_id;
	}
	@Override
	public String toString() {
		return "Joingroup [jid=" + jid + ", gid=" + gid + ", user_id=" + user_id + "]";
	}
}
