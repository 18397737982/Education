package com.gy.back.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;
import javax.servlet.Servlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.PageContext;

import org.apache.catalina.connector.Request;
import org.apache.taglibs.standard.tag.el.fmt.FormatDateTag;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.gy.beans.Admin;
import com.gy.beans.UserInfo;
import com.gy.biz.AdminBiz;
import com.gy.biz.UserInfoBiz;
import com.gy.web.util.UploadFileUtil;
import com.gy.web.util.UploadFileUtil.UploadFile;

@Controller
public class BackAdminController {
	private AdminBiz adminBiz;
	private UserInfoBiz userInfoBiz;

	@Resource(name = "userInfoBizImpl")
	public void setUserInfoBiz(UserInfoBiz userInfoBiz) {
		this.userInfoBiz = userInfoBiz;
	}

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
	public void loginadmin(Admin admin, String admin_name, String admin_password, PrintWriter out, HttpSession session,
			HttpServletResponse response) {
		Admin admins;
		if (admin_name.contains("@")) {
			admin.setEmail(admin_name);
			admin.setAdmin_password(admin_password);
			admins = adminBiz.loginByEmail(admin);
		} else {
			admin.setAdmin_name(admin_name);
			admin.setAdmin_password(admin_password);
			admins = adminBiz.loginadmin(admin);
		}
		response.setContentType("text/html");
		if (admins == null) {
			out.print(0);
		} else {
			out.print(1);
			session.setAttribute("myself", admins);
		}
		out.flush();
		out.close();
	}

	// 管理员注册
	@RequestMapping(value = "admin/register.action", method = RequestMethod.POST)
	public String addadmin(Admin admin, String admin_name, String admin_password, String email, PrintWriter out,
			HttpSession session, HttpServletResponse response) {
		admin.setAdmin_name(admin_name);
		admin.setAdmin_password(admin_password);
		admin.setEmail(email);
		adminBiz.regitadmin(admin);
		return "back/login1";
	}

	// 检查用户名是否存在
	@RequestMapping(value = "admin/checkName", method = RequestMethod.POST)
	public void checkName(String admin_name, PrintWriter out, HttpSession session, HttpServletResponse response) {
		Admin admin = new Admin();
		admin.setAdmin_name(admin_name);
		Admin admins = new Admin();
		admins = adminBiz.checkName(admin);

		if (admins != null) {
			out.print(1);
		} else {
			out.print(0);
		}
		out.flush();
		out.close();
	}

	@ResponseBody
	@RequestMapping("/userinfo/findall")
	public Map<String,Object> findallUsers(String page, String rows) {
		UserInfo userInfo = new UserInfo();
		int pageNumber = (Integer.parseInt(page) - 1) * Integer.parseInt(rows);
		userInfo.setPagenumber(pageNumber);
		userInfo.setPagesize(Integer.parseInt(rows));
		List<UserInfo> list = adminBiz.findAllUsers(userInfo);
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("total", userInfoBiz.getTotal(userInfo));
		map.put("rows", list);
		return map;
	}

	@ResponseBody
	@RequestMapping("/admin/findAll")
	public List<Admin> findallAdmin() {
		List<Admin> list = adminBiz.findAllAdmin();
		return list;
	}

	private String pdfRootName = "education";

	// 后台添加会员
	@ResponseBody
	@RequestMapping(value = "/admin/addUserInfo.action", method = RequestMethod.POST)
	public void addUserInfo( @RequestParam("pdf") MultipartFile pdf,PrintWriter out, UserInfo userInfo,
			HttpServletRequest request ) {
		String pdfs = "";
		 //上传
		Map<String, UploadFile> map = UploadFileUtil.uploadFile(request, pdf, pdfRootName);
		for (Entry<String, UploadFile> entry : map.entrySet()) {
			UploadFile uploadFile = entry.getValue();
			pdfs += uploadFile.getNewFileUrl();
		}
		userInfo.setPic(pdfs);
		// 上传
		userInfo.setTime(new Date());
		userInfoBiz.addAdmin(userInfo);
		out.print(1);
	}

	// 后台添加会员
	@ResponseBody
	@RequestMapping(value = "/admin/editUserInfo.action", method = RequestMethod.POST)
	public void editUserInfo(@RequestParam("pdf") MultipartFile pdf, PrintWriter out, UserInfo userInfo,
			HttpServletRequest request) {
		String pdfs = "";
		// 上传
		Map<String, UploadFile> map = UploadFileUtil.uploadFile(request, pdf, pdfRootName);
		for (Entry<String, UploadFile> entry : map.entrySet()) {
			UploadFile uploadFile = entry.getValue();
			pdfs += uploadFile.getNewFileUrl();
		}
		userInfo.setPic(pdfs);
		// 上传
		userInfoBiz.saveInfo(userInfo);
		out.print(1);
	}
	
	@ResponseBody
	@RequestMapping("/admin/delUserInfo")
	public void delUserInfo(Integer user_id,PrintWriter out) {
		UserInfo userInfo=new UserInfo();
		userInfo.setUser_id(user_id);
		int result=userInfoBiz.delUserInfo(userInfo);
		if(result==1){
			out.print(1);
		}else{
			out.print("");
		}
	}
	@ResponseBody
	@RequestMapping("/admin/delUserInfos")
	public void delUserInfos(String user_ids,PrintWriter out) {
		String[] id=user_ids.split(","); 
		List<String> list=new ArrayList<String>();
		for(String user_id:id){
			list.add(user_id);
		}
		int result=userInfoBiz.delUserInfos(list);
		if(result>0){
			out.print(1);
		}else{
			out.print("");
		}
	}
}
