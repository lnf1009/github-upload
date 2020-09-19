package com.lnf.service;

import java.util.List;

import com.lnf.Entity.User;

public interface UserService {
	
	public User login(String username,String password);
	public void saveUser(User user);
    public void updateUser(User user);
    public void deleteUser(User user);
    public User findUserById(String username);
    public List<User> findAllUser();


}
