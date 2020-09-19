package com.lnf.Dao;

import java.util.List;

import com.lnf.Entity.User;

public interface UserDao {
	
	public User login(String username,String password);
	public void save(User user);
	public void update(User user);
	public void delete(User user);
	public User findById(String username);
	public List<User> findAll();

	


}
