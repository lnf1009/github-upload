package com.lnf.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.lnf.Dao.*;
import com.lnf.Entity.User;
@Transactional
public class UserServiceDaoImp implements UserService {
	
	private UserDao userDao;
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public void saveUser(User user) {
		this.userDao.save(user);

	}

	@Override
	public void updateUser(User user) {
	this.userDao.update(user);

	}

	@Override
	public void deleteUser(User user) {
		this.deleteUser(user);

	}

	@Override
	public User findUserById(String username) {
		
		return this.userDao.findById(username);

}

	@Override
	public List<User> findAllUser() {
		
		return this.userDao.findAll();
	}

	@Override
	public User login(String username, String password) {
		return this.userDao.login(username, password);
	}


}
