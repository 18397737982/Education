package com.gy.controller;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.bind.annotation.SessionAttributes;

import com.gy.beans.Account;
import com.gy.beans.UserInfo;
import com.gy.biz.AccountBiz;
import com.gy.biz.AccountNotesBiz;
import com.gy.biz.CategoryBiz;
import com.gy.biz.UserInfoBiz;
import com.gy.util.UsuallyUtil;

@Controller

@SessionAttributes({"users","category"}) //①将ModelMap中属性名为users的属性  
public class AdminController {
	private UserInfoBiz userInfoBiz;
	private CategoryBiz categoryBiz;
	private AccountBiz accountBiz;

	
	@Resource(name="accountBizImpl")
	public void setAccountBiz(AccountBiz accountBiz) {
		this.accountBiz = accountBiz;
	}
	@Resource(name="categoryBizImpl")
	public void setCategoryBiz(CategoryBiz categoryBiz) {
		this.categoryBiz = categoryBiz;
	}
	public UserInfoBiz getuserInfoBiz() {
		return userInfoBiz;
	}

	@Resource(name = "userInfoBizImpl")
	public void setuserInfoBiz(UserInfoBiz userInfoBiz) {
		this.userInfoBiz = userInfoBiz;
	}

	@RequestMapping(value = "/login.action")
	public String show() {
		return "page/login";
	}

	// 注册
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(@ModelAttribute("user") UserInfo userInfo, ModelMap map) {
		userInfo.setTime(new Date());
		userInfoBiz.addAdmin(userInfo);
		
		Account account=new Account();
		BigDecimal moneys=new BigDecimal("0");
		account.setStu_user(userInfo);
		account.setBalance(moneys);
		this.accountBiz.addAccount(account);
		
		return "page/login";
	}

	// 登录
	@RequestMapping(value = "/login.action", method = RequestMethod.POST)
	public String login(UserInfo userInfo, Model model, ModelMap map) {
		model.addAttribute("category",this.categoryBiz.findAllCategory());
		String name = userInfo.getUser_name();
		List<UserInfo> list = null;
		name = new UsuallyUtil().decode(name);
		if (userInfo != null && name.contains("@")) {
			list = userInfoBiz.getUserInfoByEmail(userInfo);
			if (list.size() > 0 && list != null) {
				userInfo = list.get(0);
				map.put("users", userInfo);
				model.addAttribute("users", userInfo);
			}
		} else if (userInfo!= null && !name.contains("@")) {
			userInfo.setUser_name(name);
			userInfo.toString();
			list = userInfoBiz.getUserInfoByUserName(userInfo);
			if (list.size() > 0 && list != null) {
				map.put("users", list.get(0));
				System.out.println(list.get(0));
				model.addAttribute("users", list.get(0));
			}
		}
		// 登录页面跳转
		if (list.size()==0) {
			map.put("Message", "block");
			map.put("users", "");
			return "page/login";
		}
		return "page/index"; 
	}

	// 注销
	@ResponseBody
	@RequestMapping(value = "/loginOut.action")
	public boolean loginOut(HttpSession session, HttpServletRequest request, Model model) {
		model.addAttribute("users", null);
		session.removeAttribute("users");
		return true;
	}
	
	@ResponseBody
	@RequestMapping("/getInfoByUserid")
	public UserInfo getInfoByUserid(int user_id){
		UserInfo userInfo=new UserInfo();
		userInfo.setUser_id(user_id);
		List<UserInfo> list=userInfoBiz.getUserInfoByUserid(userInfo);
		if(list.size()>0){
			userInfo=list.get(0);
		}
		return userInfo;
	}
	
	// 登录2 在播放的页面
	@RequestMapping(value = "/loginDiv.action", method = RequestMethod.POST)
	public @ResponseBody String loginDiv(UserInfo userInfo, Model model, ModelMap map) {
		model.addAttribute("category",this.categoryBiz.findAllCategory());
		String name = userInfo.getUser_name();
		List<UserInfo> list = null;
		name = new UsuallyUtil().decode(name);
		if (userInfo != null && name.contains("@")) {
			list = userInfoBiz.getUserInfoByEmail(userInfo);
			if (list.size() > 0 && list != null) {
				userInfo = list.get(0);
				map.put("users", userInfo);
				model.addAttribute("users", userInfo);
			}
		} else if (userInfo!= null && !name.contains("@")) {
			userInfo.setUser_name(name);
			userInfo.toString();
			list = userInfoBiz.getUserInfoByUserName(userInfo);
			if (list.size() > 0 && list != null) {
				map.put("users", list.get(0));
				model.addAttribute("users", list.get(0));
			}
		}
		// 登录页面跳转
		if (list.size()==0) {
			map.put("Message", "block");
			map.put("users", "");
			return "false";
		}
		return "true"; 
	}
}
