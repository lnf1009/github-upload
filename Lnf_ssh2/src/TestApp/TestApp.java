package TestApp;


import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.lnf.Entity.User;
import com.lnf.service.UserService;

public class TestApp {
@Test
	public void Test() {
		
			
		String xmlpath="applicationConext.xml";
		ApplicationContext applicationcontext=new ClassPathXmlApplicationContext(xmlpath);
	
		UserService userService=(UserService) applicationcontext.getBean("UserService");
		
		User user=new User();
		
		user.setUsername("ÀîËÄ");
		user.setPassword("admin");
		
		userService.saveUser(user);
		System.out.println("OK");
	}

}
