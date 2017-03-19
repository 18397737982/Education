package com.gy.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.gy.beans.UserInfo;
import com.gy.biz.CategoryBiz;
import com.gy.biz.UserInfoBiz;
import com.gy.util.UsuallyUtil;

@Controller

@SessionAttributes({"users","category"}) //①将ModelMap中属性名为users的属性  
public class AdminController {
	private UserInfoBiz userInfoBiz;
	private CategoryBiz categoryBiz;
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
				System.out.println(userInfo.getUser_id());
			}
		} else if (userInfo != null && !name.contains("@")) {
			userInfo.setUser_name(name);
			userInfo.toString();
			list = userInfoBiz.getUserInfoByUserName(userInfo);
			if (list.size() > 0 && list != null) {
				map.put("users", list.get(0));
				model.addAttribute("users", list.get(0));
			}
		}
		// 登录页面跳转
		if (list.get(0) == null) {
			map.put("Message", "block");
			map.put("users", "");
			return "login";
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
	
	//用户基础信息添加
	@ResponseBody
	@RequestMapping(value="userinfo/save")
	public String saveInfo(@ModelAttribute UserInfo users,ModelMap map,HttpServletRequest request,Model model){
		System.out.println("save了");
		//System.out.println(users);
		String flag="";
		//String user_name=users.getUser_name();
		
		//System.out.println(user_name);
		
		int result=userInfoBiz.saveInfo(users);
		if(result==1){
			flag = "1";
		}else{
		}
		return flag;
	}
	//修改头像
	@RequestMapping("userinfo/editPhoto")
	 public String editItemsSubmit( Model model,HttpServletRequest request,Integer userid,
			  MultipartFile items_pic,UserInfo user)throws Exception {
		
	      // 上传图片的原始名称
	      String originalFilename = items_pic.getOriginalFilename();
	      // 上传图片
	      if (items_pic!= null&&originalFilename!=null&&originalFilename.length()>0) {// 存储图片的物理路径
	        String pic_path = request.getServletContext().getRealPath("../img/headimg/")+"/";
	        // 新的图片名称
	        String newFilename = new Date().getTime()+""+new Random().nextInt(100000)
	        		 +originalFilename.substring(originalFilename.lastIndexOf("."));
	        //新的图片
	        File newfile=new java.io.File(pic_path+newFilename);
	        
	        //将内存的数据写入磁盘
	        items_pic.transferTo(newfile);   	
	        user.setUser_id(userid);
	        user.setPic("../img/headimg/"+newFilename);
	        userInfoBiz.editPic(user);
	   }
	      return "redirect:/toInfo.action";
	}
	
	//获取原有头像
	@ResponseBody
	@RequestMapping(value="userInfo/selectTouxiang.action",method=RequestMethod.POST)
	public UserInfo register1(UserInfo userInfo,ModelMap map){
		 UserInfo user=userInfoBiz.getUserInfoByUserid(userInfo).get(0);
		return user;

	}
	
	//修改密码
	@RequestMapping(value="userInfo/editpwd.action",method=RequestMethod.POST)
	public void editpwd(UserInfo userInfo,Integer user_id,String curpwd,String newpwd,String conpwd, PrintWriter out){
		UserInfo user=userInfoBiz.getUserInfoByUserid(userInfo).get(0);
		System.out.println(user);
		if(!curpwd.equals( user.getPassword()) ){
			out.print(1);
		}else if(!newpwd.equals(conpwd)){
			out.print(2);
		}else{
			userInfo.setUser_id(user_id);
			userInfo.setPassword(newpwd);
			userInfoBiz.editPwd(userInfo);
			out.print(3);
		}
	}
	
	
}
