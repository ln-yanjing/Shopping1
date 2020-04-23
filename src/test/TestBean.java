package test;

import org.junit.Test;

import com.po.UserBean;

public class TestBean {
	@Test
	public void test(){
		UserBean user=new UserBean();
		user.setUid(1);
		user.setUsername("ÀîÄÈ");
		user.setPassword("1823241");
		user.setAge(20);
		user.setEamil("123@12");
		
		System.out.println(user.getUid());
		System.out.println(user.getUsername());
		System.out.println(user.getPassword());
		System.out.println(user.getAge());
		System.out.println(user.getEamil());
	}
 
}
