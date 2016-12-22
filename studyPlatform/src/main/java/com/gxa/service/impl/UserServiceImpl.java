package com.gxa.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gxa.dao.UserDao;
import com.gxa.model.User;
import com.gxa.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	
	@Override
	public User getUserArea_id(Map<String, Object> map) {
		
		return userDao.getUserArea_id(map);
	}

}
