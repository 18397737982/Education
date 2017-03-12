package com.gy.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gy.beans.Course;
import com.gy.beans.StudyCourse;
import com.gy.beans.UserInfo;
import com.gy.biz.StudyCourseBiz;

@Controller
public class StudyCourseController {
	private StudyCourseBiz studyCourseBiz;

	public StudyCourseBiz getStudyCourseBiz() {
		return studyCourseBiz;
	}

	@Resource(name = "studyCourseBizImpl")
	public void setStudyCourseBiz(StudyCourseBiz studyCourseBiz) {
		this.studyCourseBiz = studyCourseBiz;
	}
	
	@ResponseBody
	@RequestMapping(value="/studyingByUserid",method=RequestMethod.POST)
	public List<StudyCourse> studyingByUserid(Integer user_id,String p){
		int  pagesize =2;
		int pagenumber=Integer.parseInt(p);
		UserInfo userInfo=new UserInfo();
		userInfo.setUser_id(user_id);
		userInfo.setPageSize(pagesize);
		userInfo.setBeginRow(pagenumber);
		List<StudyCourse> courselist = studyCourseBiz.showStudyCourse(userInfo);
		return courselist;
	}
	
//	@ResponseBody
//	@RequestMapping("/attentionByUserid")
//	public List<UserInfo> attentionByUserid(int userid){
//		List<UserInfo> userinfo=userInfoService.attentionByUserid(userid);
//		return userinfo;
//	}
	

}
