package com.service.Impl;
import com.dao.UserDao;
import com.dao.Impl.UserDaoImpl;
import com.po.UserBean;
import com.service.UserService;

public class UserServiceImpl implements UserService {

	@Override
	public int login(UserBean user) {
		UserDao userDao=new UserDaoImpl();
		int p=userDao.login(user);
		return p;
	}

	@Override
	public int reg(UserBean user) {
		// TODO Auto-generated method stub
		UserDao userDao=new UserDaoImpl();
		int f = 0;
		try {
			f = userDao.reg(user);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		
	}
		return f;
}
}