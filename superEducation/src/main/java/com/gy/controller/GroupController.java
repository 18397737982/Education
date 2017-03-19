package com.gy.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gy.beans.Cgroup;
import com.gy.biz.CgroupBiz;

@Controller
public class GroupController {

	private CgroupBiz cgroupBiz;

	public CgroupBiz getCgroupBiz() {
		return cgroupBiz;
	}

	@Resource(name = "cgroupBizImpl")
	public void setCgroupBiz(CgroupBiz cgroupBiz) {
		this.cgroupBiz = cgroupBiz;
	}
	// @RequestMapping("/groups/getAllGroup")
	// public void getAllgroupbypage(String page,String rows,String sort,String
	// order,HttpServletResponse response){
	// PrintWriter out=null;
	// try {
	// response.setCharacterEncoding("utf-8");
	// response.setContentType("charset=utf-8");
	// out = response.getWriter();
	// } catch (IOException e) {
	// e.printStackTrace();
	// }
	// Cgroup cgroup =new Cgroup();
	// cgroup.setPagenumber(Integer.parseInt(page));
	// cgroup.setPagesize(Integer.parseInt(rows));
	// List<Cgroup> typelist=cgroupBiz.getAllgroupBypage(cgroup);
	// String count=cgroupBiz.getCgroupCount(cgroup);
	// //Gson gson=new Gson();
	// //String liststr=gson.toJson(typelist);
	// JSONArray json = JSONArray.fromObject(typelist);
	// JSONObject jb = new JSONObject();
	// System.out.println(jb.toString());
	// jb.put("rows", json);
	// jb.put("total",count);
	// out.print(jb);
	// out.flush();
	// out.close();
	// }

	// 得到全部小组的信息
	@ResponseBody
	@RequestMapping(value = "/groups/getAllGroup")
	public List<Cgroup> GetAllGroup() {
		List<Cgroup> allGroups = cgroupBiz.getAllGroupInfo();
		return allGroups;
	}
}
