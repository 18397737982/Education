package com.gy.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.gy.beans.UserInfo;
import com.gy.biz.UserInfoBiz;
@Controller
public class UserInfoController {

	//@SessionAttributes({"users","category"}) //①将ModelMap中属性名为users的属性  
		private UserInfoBiz userInfoBiz;	
		@Resource(name = "userInfoBizImpl")
		public void setuserInfoBiz(UserInfoBiz userInfoBiz) {
			this.userInfoBiz = userInfoBiz;
		}

		
		@ResponseBody
		@RequestMapping(value="userinfo/save",method=RequestMethod.POST)
		public String saveInfo(int user_id,String user_name,String sex,int age,String realname,String email,String usign,String introduce,ModelMap map,HttpServletRequest request,Model model){
			String flag="";
			UserInfo user=new UserInfo();
			user.setUser_id(user_id);
			user.setUser_name(user_name);
			user.setAge(age);
			user.setSex(sex);
			user.setRealname(realname);
			user.setEmail(email);
			user.setUsign(usign);
			user.setIntroduce(introduce);
			this.userInfoBiz.saveInfo(user);
			if(this.userInfoBiz.saveInfo(user)==1){
				flag = "1";
			//	user.setUname("lytest");
				model.addAttribute("users",user);
				//session.setAttribute("users",userinfo);
			}else{
				
			}
			return flag;
		}

		@ResponseBody
		@RequestMapping(value="userInfo/selectTouxiang.action",method=RequestMethod.POST)
		public UserInfo register(HttpSession session,int user_id,ModelMap map){
			session.setAttribute("user_idbyPic", user_id);
			UserInfo userInfo=new UserInfo();
			userInfo.setUser_id(user_id);
			UserInfo user=this.userInfoBiz.getUserPicByUserid(userInfo);
			return user;
		}
		
		
		@RequestMapping("userInfo/editPhoto")
		 public String editItemsSubmit( Model model,HttpServletRequest request,
				  MultipartFile items_pic,UserInfo user,HttpSession session)throws Exception {
			
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
		        int user_id=(int) session.getAttribute("user_idbyPic");
		        user.setUser_id(user_id);
		        user.setPic("../img/headimg/"+newFilename);
		        this.userInfoBiz.editPhoto(user);
		   }
		      return "redirect:/toInfo.action";
		}
		
		@RequestMapping(value="userInfo/editpwd.action",method=RequestMethod.POST)
		public void editpwd(UserInfo userInfo,Integer user_id,String curpwd,String newpwd,String conpwd, PrintWriter out){
			UserInfo users=new UserInfo();
			users.setUser_id(user_id);
			UserInfo user=this.userInfoBiz.getUserPicByUserid(users);
			System.out.println(user);
			if(!curpwd.equals( user.getPassword()) ){
				out.print(1);
			}else if(!newpwd.equals(conpwd)){
				out.print(2);
			}else{
				userInfo.setUser_id(user_id);
				userInfo.setPassword(newpwd);
				this.userInfoBiz.editPwd(userInfo);
				out.print(3);
			}
		}
		
		
		
	
	

}
