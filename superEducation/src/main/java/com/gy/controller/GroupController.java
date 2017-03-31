package com.gy.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gy.beans.Cgroup;
import com.gy.beans.Joingroup;
import com.gy.beans.UserInfo;
import com.gy.biz.CgroupBiz;
import com.gy.biz.JoingroupBiz;
import com.gy.biz.UserInfoBiz;

@Controller
public class GroupController {

	private CgroupBiz cgroupBiz;
	private JoingroupBiz joingroupBiz;
	private UserInfoBiz userInfoBiz;
	
	
	@Resource(name = "userInfoBizImpl")
	public void setUserInfoBiz(UserInfoBiz userInfoBiz) {
		this.userInfoBiz = userInfoBiz;
	}

	@Resource(name = "joingroupBizImpl")
	public void setJoingroupBiz(JoingroupBiz joingroupBiz) {
		this.joingroupBiz = joingroupBiz;
	}

	public CgroupBiz getCgroupBiz() {
		return cgroupBiz;
	}

	@Resource(name = "cgroupBizImpl")
	public void setCgroupBiz(CgroupBiz cgroupBiz) {
		this.cgroupBiz = cgroupBiz;
	}
	// 得到全部小组的信息
	@ResponseBody
	@RequestMapping(value = "/groups/getAllGroup")
	public List<Cgroup> GetAllGroup(Model model) {
		List<Cgroup> allGroups = cgroupBiz.getAllGroupInfo();
		model.addAttribute("groups", allGroups);
		return allGroups;
	}
	
	@RequestMapping(value = "groups/groupIntroduce.action/{user_id}/{groupname}")
	public String togroupIntroduce(@PathVariable int user_id,@PathVariable String groupname) {
		 return "page/groupIntroduce";
	}
	
	//搜索小组
	@ResponseBody
	@RequestMapping(value="groups/showsearch.action")
	public Cgroup newSearchGroups(HttpSession session,String groupname,int user_id,Model model){
		Cgroup group=new Cgroup();
		group.setGroupname(groupname);
		Cgroup groups= this.cgroupBiz.searchGroup(group);
		String user_name=groups.getUser_name();
		session.setAttribute("user_nameForGroupmembers", user_name);
		
		model.addAttribute("searchgroups", groups);
		System.out.println(groups);
		return groups;
	}

	@ResponseBody
	@RequestMapping(value="groups/user.action")
	public UserInfo toSelectUser(int gid,int user_id,Model model){
		Joingroup join=new Joingroup();
		join.setGid(gid);
		join.setUer_id(user_id);
		Joingroup a=this.joingroupBiz.selectgroup(join);
		if(a!=null){
			UserInfo userInfo=new UserInfo();
			userInfo.setUser_id(user_id);
			UserInfo user=this.userInfoBiz.getUserPicByUserid(userInfo);
			if(user!=null){
				return user;
			}
		}
		return null;
	}
	
	//加入小组
	@RequestMapping(value="groups/joingroup/{user_id}/{groupname}/{gid}")
	public String jointgroup(@PathVariable String groupname,@PathVariable int gid,@PathVariable int user_id,Model model){
		Joingroup join=new Joingroup();
		join.setGid(gid);
		join.setUer_id(user_id);
		int a=this.joingroupBiz.addjoin(join);
		return "page/groupIntroduce";
		
	}
	//退出小组
	@RequestMapping(value="groups/exitgroup/{user_id}/{groupname}/{gid}")
	public String exitgroup(@PathVariable String groupname,@PathVariable int gid,@PathVariable int user_id,Model model){
		Joingroup join=new Joingroup();
		join.setGid(gid);
		join.setUer_id(user_id);
		int a=this.joingroupBiz.exitjoin(join);
		System.out.println(a);
		return "page/groupIntroduce";
	}
	
	
	@ResponseBody
	@RequestMapping(value="groups/AllgroupMember.action")
	public List<UserInfo> toSelectAllUser(HttpSession session,Model model){
		int gid=(int) session.getAttribute("gidByfindAllUser");
		List<UserInfo> lists=new ArrayList<UserInfo>();
		Joingroup join=new Joingroup();
		join.setGid(gid);
		List<Joingroup> list=this.joingroupBiz.selectAllgroup(join);
		if(list.size()>0){
			for(int i=0;i<list.size();i++){
				int user_id=list.get(i).getUer_id();
				
				UserInfo userInfo=new UserInfo();
				userInfo.setUser_id(user_id);
				UserInfo user=this.userInfoBiz.getUserPicByUserid(userInfo);
				lists.add(user);
			}
			return lists;
		}else{
			return null;
		}
	}
	
	@ResponseBody
	@RequestMapping(value="groups/groupMember.action")
	public List<UserInfo> toSelectnewUser(HttpSession session,int gid,Model model){
		session.setAttribute("gidByfindAllUser", gid);
		List<UserInfo> lists=new ArrayList<UserInfo>();
		Joingroup join=new Joingroup();
		join.setGid(gid);
		List<Joingroup> list=this.joingroupBiz.selectAllgroup(join);
		
		int count=list.size();
		session.setAttribute("countUsers", count);
		
		if(list.size()>3){
			for(int i=0;i<3;i++){
				int user_id=list.get(i).getUer_id();
				
				UserInfo userInfo=new UserInfo();
				userInfo.setUser_id(user_id);
				UserInfo user=this.userInfoBiz.getUserPicByUserid(userInfo);
				lists.add(user);
			}
			return lists;
		}else if(list.size()<3 && list.size()>0){
			for(int i=0;i<list.size();i++){
				int user_id=list.get(i).getUer_id();
				
				UserInfo userInfo=new UserInfo();
				userInfo.setUser_id(user_id);
				UserInfo user=this.userInfoBiz.getUserPicByUserid(userInfo);
				lists.add(user);
			}
			return lists;
		}
		return null;
	}
	//查询多少个成员
	@RequestMapping(value="groups/Countusers.action")
	public void countUsers(HttpSession session,PrintWriter out){
		int count=(int)session.getAttribute("countUsers");                       
		out.println(count);
		out.flush();
		out.close();
	}
	
	//小组成员会页面
	@RequestMapping(value = "groups/togroupMember.action/{user_id}/{groupname}")
	public String togroupMember(@PathVariable int user_id,@PathVariable String groupname) {
		 return "page/groupMember";
	}
	
	//显示组长
	
	@ResponseBody
	@RequestMapping(value="groups/showOneUser.action")
	public UserInfo showOneUser(HttpSession session,String groupname,Model model){
		UserInfo user=new UserInfo();
		String user_name=(String) session.getAttribute("user_nameForGroupmembers");
		System.out.println(user_name);
		
		user.setUser_name(user_name);
		UserInfo userInfo=this.userInfoBiz.getUserPicByUsername(user);
		return userInfo;	
	}
	
}
