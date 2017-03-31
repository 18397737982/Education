package com.gy.controller;

import java.io.PrintWriter;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.gy.beans.Account;
import com.gy.beans.AccountNotes;
import com.gy.beans.UserInfo;
import com.gy.biz.AccountBiz;
import com.gy.biz.AccountNotesBiz;
import com.gy.biz.UserInfoBiz;

@Controller
public class AccountController {
	private UserInfoBiz userInfoBiz;
	private AccountBiz accountBiz;
	private AccountNotesBiz accountNotesBiz;
	@Resource(name="accountNotesBizImpl")
	public void setAccountNotesBiz(AccountNotesBiz accountNotesBiz) {
		this.accountNotesBiz = accountNotesBiz;
	}
	@Resource(name="userInfoBizImpl")
	public void setUserInfoBiz(UserInfoBiz userInfoBiz) {
		this.userInfoBiz = userInfoBiz;
	}
	@Resource(name="accountBizImpl")
	public void setAccountBiz(AccountBiz accountBiz) {
		this.accountBiz = accountBiz;
	}
	
	// 查询余额
	@ResponseBody
	@RequestMapping(value="userInfo/selectYue.action",method=RequestMethod.POST)
	public Account register(HttpSession session,int user_id,ModelMap map){
		UserInfo userInfo=new UserInfo();
		userInfo.setUser_id(user_id);
		session.setAttribute("userInfoByadd", userInfo);
		
		Account accounts=new Account();
		accounts.setStu_user(userInfo);
		Account account=this.accountBiz.selectBalance(accounts);
		
		session.setAttribute("accountByadd", account);
		return account;
	}
	
	
	//实现充值
	@ResponseBody
	@RequestMapping(value="account/addbalance.action",method=RequestMethod.POST)
	public void addbalance(HttpSession session,BigDecimal money,String payment,ModelMap map,PrintWriter out){
		Account accounts=(Account) session.getAttribute("accountByadd");
		UserInfo userInfo=(UserInfo) session.getAttribute("userInfoByadd");
	      
		//修改账户金额
		BigDecimal balance=accounts.getBalance().add(money);
		accounts.setStu_user(userInfo);
		accounts.setBalance(balance);                        
		System.out.println(accounts);
		int result=this.accountBiz.addBalance(accounts);
		
		//插入到账户记录表中
		AccountNotes accountNotes=new AccountNotes();
		int user_id=userInfo.getUser_id();
		accountNotes.setUser_id(user_id);
		accountNotes.setMoney(money);
		accountNotes.setPayment(payment);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:hh:ss");
		String date=sdf.format(new Date());
		accountNotes.setTimes(date);
		this.accountNotesBiz.addnotes(accountNotes);
		
		
		if(result>0){
			out.println(result);
		}
		out.flush();
		out.close();
		
	}
	//只查询充值记录
	@RequestMapping(value="/findAccountBymoney",method=RequestMethod.POST)
	public  @ResponseBody  String indBookByCategory(Model model,int user_id){
		AccountNotes accountNotes=new AccountNotes();
		accountNotes.setUser_id(user_id);
		List<AccountNotes>accountList=this.accountNotesBiz.findBymoney(accountNotes);
		System.out.println(accountList);
		Gson gson=new Gson();
		return gson.toJson(accountList);
	}
	//查询消费记录
	@RequestMapping(value="/findAccountBymoneys",method=RequestMethod.POST)
	public  @ResponseBody  String findAccountBymoneys(Model model,int user_id){
		List<AccountNotes>accountList=new ArrayList<AccountNotes>();
		AccountNotes accountNotes=new AccountNotes();
		accountNotes.setUser_id(user_id);
		List<AccountNotes>accountLists=this.accountNotesBiz.findBymoneys(accountNotes);
		for(AccountNotes accountNote:accountLists){
			System.out.println(accountNote);
			int money=accountNote.getMoney().intValue();
				if(money<0){
					accountList.add(accountNote);
				}	
			}
		System.out.println(accountList);
		Gson gson=new Gson();
		return gson.toJson(accountList);
	}
}
