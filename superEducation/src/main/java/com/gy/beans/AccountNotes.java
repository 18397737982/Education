package com.gy.beans;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class AccountNotes implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6078082816202216723L;
	
	private int user_id;
	private BigDecimal money;
	private String payment;
	private String times;
	
	
	
	
	public String getTimes() {
		return times;
	}

	public void setTimes(String times) {
		this.times = times;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public BigDecimal getMoney() {
		return money;
	}

	public void setMoney(BigDecimal money) {
		this.money = money;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	@Override
	public String toString() {
		return "AccountNotes [user_id=" + user_id + ", money=" + money + ", payment=" + payment + ", times=" + times
				+ "]";
	}


}
