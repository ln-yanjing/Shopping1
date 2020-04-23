package com.dao;

import com.po.UserBean;

public interface UserDao {

	int login(UserBean user);

	int reg(UserBean user) throws ClassNotFoundException;

	

}
