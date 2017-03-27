package com.gy.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
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
		//进入index
		@RequestMapping(value = "back/index.action")
		public String showIndex() {
			return "back/manager/index";
		}
		
		//进入管理员模块
		@RequestMapping(value = "back/manager/admins.action")
		public String showAdmin() {
			return "back/manager/admins";
		}
		
		//查询所有管理员
		@RequestMapping(value ="admin/findAll")
		public String findAll(){
			Admin admin = new Admin();
			List<Admin> admins=this.adminBiz.findAll(admin);
			int count=this.adminBiz.count();
			System.out.println(admins);
			
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("rows", admins);
			result.put("total",count);			
			Gson gson=new Gson();
			return gson.toJson(result);
		}
}
