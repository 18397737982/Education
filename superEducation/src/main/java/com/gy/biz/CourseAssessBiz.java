package com.gy.biz;

import java.util.List;
import java.util.Map;

import com.gy.beans.Course;
import com.gy.beans.CourseAssess;

public interface CourseAssessBiz {
	
//根据课时查询评论
public List<CourseAssess> findAssessByclass_hourid(CourseAssess courseAssess);

//根据课时查询评论条数
public int countAssessByclass_hourid(CourseAssess courseAssess);
public int insertAssess(CourseAssess courseAssess);

//根据课程id查询评论 分页查询
public List<CourseAssess> findAssessBycourseid(Map map);

//根据课程查询评论条数
public int countAssessBycourseid(Map map);
}
