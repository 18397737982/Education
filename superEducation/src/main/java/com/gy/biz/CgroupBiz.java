package com.gy.biz;

import java.util.List;

import com.gy.beans.Cgroup;


public interface CgroupBiz {

	
	public String getCgroupCount(Cgroup cgroup);

	public List<Cgroup> getAllgroupBypage(Cgroup cgroup);
	//得到全部组的信息
	public List<Cgroup> getAllGroupInfo();

	public Cgroup searchGroup(Cgroup group);
}
