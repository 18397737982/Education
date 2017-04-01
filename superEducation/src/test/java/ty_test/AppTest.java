package ty_test;


import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.gy.beans.Class_hour;
import com.gy.beans.Course;
import com.gy.beans.CourseAssess;
import com.gy.beans.StudyCourse;
import com.gy.beans.UserInfo;
import com.gy.biz.CourseAssessBiz;
import com.gy.biz.CourseBiz;
import com.gy.biz.CourseQuestionBiz;
import com.gy.biz.StudyCourseBiz;
import com.gy.dao.BaseDao;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

/**
 * Unit test for simple App.
 */
public class AppTest  extends TestCase{

    public AppTest( String testName )
    {
        super( testName );
    }

    /**
     * @return the suite of tests being tested
     */
    public static Test suite()
    {
        return new TestSuite( AppTest.class );
    }

    /**
     * Rigourous Test :-)
     * @throws IOException 
     */
    public void testApp() throws IOException
    {
    	ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
    	BaseDao baseDao=(BaseDao) ac.getBean("baseDaoMybabitsImpl");
    	baseDao.findAll(new Course(),"findAllCourse");
    }
    
    public void testApp2() throws IOException
    {
    	java.sql.Date time= new java.sql.Date(new Date().getTime());
    	System.out.println(time);
    	long l = System.currentTimeMillis();
    	Date time2=new Date(l);
    	System.out.println(time2);
    	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    	System.out.println(sdf.format(time2));
    }
    
    
    public void testApp3() throws IOException
    { String s;
    	CourseAssess courseAssess=new CourseAssess();
    	Class_hour class_hour=new Class_hour();
    	class_hour.setClass_hour_id(2);
		courseAssess.setClass_hour(class_hour);
    	ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
    	BaseDao baseDao=(BaseDao) ac.getBean("baseDaoMybabitsImpl");
    	int x=baseDao.findInteger(courseAssess, "countAssessBycourseid");
    	System.out.println(x);
    }
    public void testApp4() throws IOException
    { String s;
    CourseAssess courseAssess=new CourseAssess();
    Class_hour class_hour=new Class_hour();
    class_hour.setClass_hour_id(2);
    courseAssess.setClass_hour(class_hour);
    ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
    CourseAssessBiz courseAssessBiz=(CourseAssessBiz) ac.getBean("courseAssessBizImpl");
    System.out.println(courseAssessBiz.findAssessByclass_hourid(courseAssess));
    }
    
    
    
    public void testApp5() throws IOException
    { 
    Map map=new HashMap<>();
    map.put("starpage",0);
    map.put("page", 5);
    Course course=new Course();
    course.setCourse_id(40);
    map.put("course", course);
    ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
    StudyCourseBiz studyCourseBiz=(StudyCourseBiz) ac.getBean("studyCourseBizImpl");
    System.out.println(studyCourseBiz.getNoteByCourser_id(map));
    }
    
    
    //	<!-- 统计某一门课程的笔记数量 -->
    public void testApp6() throws IOException
    { 
    	Map map=new HashMap<>();
    	Course course=new Course();
    	course.setCourse_id(40);
    	map.put("course", course);
    	ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
    	StudyCourseBiz studyCourseBiz=(StudyCourseBiz) ac.getBean("studyCourseBizImpl");
    	System.out.println(studyCourseBiz.getCountByCourser_id(map));
    }
    
    
    public void testApp7() throws IOException
    { 
    	int x=1;
    	int y=x;
    	System.out.println(x);
    }
    
    
    //	<!-- 统计某一门课程的评论数量 -->
    public void testApp8() throws IOException
    { 
    	Map map=new HashMap<>();
    	Course course=new Course();
    	course.setCourse_id(40);
    	map.put("course", course);
		map.put("starpage",5);
		map.put("page", CourseAssess.page);
    	ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
    	CourseAssessBiz courseAssessBizImpl=(CourseAssessBiz) ac.getBean("courseAssessBizImpl");
    	System.out.println(courseAssessBizImpl.countAssessBycourseid(map));
    	System.out.println(courseAssessBizImpl.findAssessBycourseid(map));
    	
    }
    //	<!-- 统提问 -->
    public void testApp9() throws IOException
    { 
    	Map map=new HashMap<>();
    	Course course=new Course();
    	course.setCourse_id(40);
    	map.put("course", course);
    	map.put("starpage",5);
    	map.put("page", CourseAssess.page);
    	ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
    	CourseQuestionBiz courseQuestionBiz=(CourseQuestionBiz) ac.getBean("courseQuestionBizImpl");
    	System.out.println(courseQuestionBiz.getMyQuestionByCourseid(map));
    	System.out.println(courseQuestionBiz.countMyQuestionByCourseid(map));
    	
    }
 
    public void testApp10() throws IOException
    { 
    	Map map=new HashMap<>();
    	Course course=new Course();
    	course.setCourse_description("%摄影%");
    	ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
    	CourseBiz courseBiz=(CourseBiz) ac.getBean("courseBizImpl");
    	System.out.println(courseBiz.searchCourse(course));
    	
    }
    public void testApp11() throws IOException
    { 
    	Course course=new Course();
    	course.setCourse_id(1);
    	UserInfo userInfo=new UserInfo();
    	userInfo.setUser_id(1);
    	StudyCourse scourse=new StudyCourse();
    	scourse.setAssess("2");
    	scourse.setCourse(course);
    	scourse.setUserInfo(userInfo);
    	ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
    	StudyCourseBiz StudyCourseBiz=(StudyCourseBiz) ac.getBean("studyCourseBizImpl");
    	System.out.println(StudyCourseBiz.pinglunCourse(scourse));
    	
    }
    
   
}
