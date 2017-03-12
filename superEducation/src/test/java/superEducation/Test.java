package superEducation;

import java.sql.SQLException;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.gy.beans.StudyCourse;
import com.gy.beans.UserInfo;
import com.gy.biz.StudyCourseBiz;

import junit.framework.TestCase;

public class Test extends TestCase{
	
	public void testPersonDaoMybatis3() throws SQLException{
		ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
		StudyCourseBiz study=(StudyCourseBiz) ac.getBean("studyCourseBizImpl");
		UserInfo userInfo=new UserInfo();
		userInfo.setUser_id(2);
		List<StudyCourse> list=study.showStudyCourse(userInfo);
		for(StudyCourse s:list){
			System.out.println(s);
		}
		
	}
}
