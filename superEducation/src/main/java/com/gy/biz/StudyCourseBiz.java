package com.gy.biz;

import java.util.List;

import com.gy.beans.StudyCourse;
import com.gy.beans.UserInfo;

public interface StudyCourseBiz {
	
	public List<StudyCourse> showStudyCourse(UserInfo userInfo);
}
