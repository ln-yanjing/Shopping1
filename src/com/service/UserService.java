package com.service;

import com.po.UserBean;

public interface UserService {

	int login(UserBean user);

	int reg(UserBean user);
	
}
