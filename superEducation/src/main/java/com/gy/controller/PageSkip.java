package com.gy.controller;

import java.util.List;

import javax.annotation.Resource;

import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gy.beans.UserInfo;
import com.gy.biz.UserInfoBiz;

import com.gy.beans.AccountNotes;
import com.gy.biz.AccountNotesBiz;

@Controller
public class PageSkip {

	private AccountNotesBiz accountNotesBiz;
	@Resource(name="accountNotesBizImpl")
	public void setAccountNotesBiz(AccountNotesBiz accountNotesBiz) {
		this.accountNotesBiz = accountNotesBiz;
	}
	

	private UserInfoBiz userInfoBiz;	
	@Resource(name = "userInfoBizImpl")
	public void setuserInfoBiz(UserInfoBiz userInfoBiz) {
		this.userInfoBiz = userInfoBiz;
	}
	@RequestMapping(value = "/skip_index.action")
	public String toIndex() {
		return "page/index";

	}

	// 跳转学习中心页面
	@RequestMapping(value = "/learnCenter.action")
	public String tolearnCenter() {
		return "page/learnCenter";

	}

	// 跳转课程中新页面
	@RequestMapping(value = "/toCourse.action")
	public String toCourse() {
		return "redirect:/getAllCourseInformation.action";
	}

	/**
	 * topb/topbf的跳转到指定类型的课程页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/toCourse.action/{class_id}")
	public String toTopCourse(@PathVariable int class_id) {
		return "redirect:/getCourseInformation.action/" + class_id;
	}

	// 跳转分组界面
	@RequestMapping(value = "/toGroups.action")
	public String toGroups() {
		return "page/groups";
	}

	// 跳转manage界面
	@RequestMapping(value = "/toManage.action")
	public String toManage() {
		return "page/manage";

	}

	// 跳转search界面
	@RequestMapping(value = "/toSearch.action/{key}")
	public String toSearch(@PathVariable String key,Model model) {
		try {
			key= new String( key.getBytes("iso-8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
		
			e.printStackTrace();
		}
		model.addAttribute("key", key);
		return "page/search";

	}

	// 跳转toJoinProject界面
	@RequestMapping(value = "/toJoinProject.action")
	public String toJoinProject() {
		return "page/joinproject";

	}

	// 跳转在学习界面
	@RequestMapping(value = "/toStudying.action")
	public String toStuding() {
		return "page/studying";

	}

	// 跳转在分组界面
	@RequestMapping(value = "/toMygroups.action")
	public String toMygroups() {
		return "page/mygroups";

	}

	// 跳转在在教界面
	@RequestMapping(value = "/toTeaching.action")
	public String toTeaching() {
		return "page/teaching";

	}

	// 跳转好友界面
	@RequestMapping(value = "/toFriends.action")
	public String toFriends() {
		return "page/friends";

	}

	// 跳转具体课程学习页面
	@RequestMapping(value = "/toOneCourse.action/{course_id}")
	public String toOneCourse(@PathVariable int course_id) {
		System.out.println(".hhhhhhhhhhhhhh");
		return "redirect:/getOneCourseInformation.action/" + course_id;

	}

	// 进入添加课程界面
	@RequestMapping(value = "/toCreatecourse.action")
	public String show() {
		return "page/createcourse";
	}
	
	/**
	 * 播放页面
	 * @return
	 */
	@RequestMapping(value = "/toplay.action/{course_id}_{class_hour_id}")
	public String toplay(@PathVariable int class_hour_id,@PathVariable int course_id) {
		return "redirect:/playVideo.action/"+course_id+"_" + class_hour_id;
	}

	// 进入个人主页界面
	@RequestMapping(value = "/toPerson.action")
	public String toPerson() {
		return "page/person";
	}

	// 进入个人设置界面
	@RequestMapping(value = "/toInfo.action")
	public String toInfo(HttpSession session ,Model model) {
		UserInfo userInfo=(UserInfo) session.getAttribute("users");
		List<UserInfo> list=userInfoBiz.getUserInfoByUserid(userInfo);
		if(list.size()>0){
			model.addAttribute("users", list.get(0));
		}
		return "page/info";
	}
	
	// 进入个人账户界面
		@RequestMapping(value = "/toCoin.action/{user_id}")
		public String toCoin(Model model,@PathVariable int user_id) {
			AccountNotes accountNotes=new AccountNotes();
			accountNotes.setUser_id(user_id);
			List<AccountNotes> accountList = this.accountNotesBiz.findAll(accountNotes);
			
			System.out.println(accountList);
			model.addAttribute("accountList",accountList);
			return "page/coin";
		}

	// 进入小组介绍
	@RequestMapping(value = "/toGroupIntroduce.action")
	public String toGroupIntroduce() {
		return "page/groupIntroduce";
	}
}
