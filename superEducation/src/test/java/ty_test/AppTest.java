package ty_test;


import java.io.IOException;
import java.io.InputStream;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.gy.beans.Course;
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
    
    
    
 
   
}
