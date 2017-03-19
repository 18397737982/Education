package com.gy.controller;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gy.beans.Admin;
import com.gy.biz.AdminBiz;
@Controller
public class BackAdminController {
	private AdminBiz adminBiz;
	
	@Resource(name = "adminBizImpl")
	public void setAdminbiz(AdminBiz adminbiz) {
		this.adminBiz = adminbiz;
	}
	
	@RequestMapping(value = "/toAdmin.action")
	public String show() {
		return "back/login1";
	}
	
	// 用户登录后台
		@RequestMapping(value = "admin/loginadmin.action", method = RequestMethod.POST)
		public void loginadmin(Admin admin,String admin_name,String admin_password,PrintWriter out,HttpSession session,HttpServletResponse response){
			Admin admins;
			if(admin_name.contains("@")){
				admin.setEmail(admin_name);
				admin.setAdmin_password(admin_password);
				admins=adminBiz.loginByEmail(admin);
			}else{
				admin.setAdmin_name(admin_name);
				admin.setAdmin_password(admin_password);
				admins=adminBiz.loginadmin(admin);
			}
			response.setContentType("text/html");
			if(admins == null){
				out.print(0);
			}else{
				out.print(1);
				session.setAttribute("myself", admins);
			}
			out.flush();
			out.close();
		}
		//管理员注册
		@RequestMapping(value = "admin/register.action", method = RequestMethod.POST)
		public String  addadmin(Admin admin,String admin_name,String admin_password,String email,PrintWriter out,HttpSession session,HttpServletResponse response){
			admin.setAdmin_name(admin_name);
			admin.setAdmin_password(admin_password);
			admin.setEmail(email);
			adminBiz.regitadmin(admin);
			return  "back/login1";
		}
		
		//检查用户名是否存在
		@RequestMapping(value = "admin/checkName", method = RequestMethod.POST)
		public void checkName(String admin_name,PrintWriter out,HttpSession session,HttpServletResponse response){
			Admin admin=new Admin(); 
			admin.setAdmin_name(admin_name);
			Admin admins=new Admin();
			admins=adminBiz.checkName(admin);
			
			if(admins !=null){
				out.print(1);
			}else{
				out.print(0);
			}
			out.flush();
			out.close();
		}
		
		
}
