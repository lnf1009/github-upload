package com.lnf.action;

import com.lnf.Entity.User;
import com.lnf.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class User_addAction extends ActionSupport implements ModelDriven<User>{

	private User user;
	private int id;
	private String username;
	private String password;
	
	
	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return this.user;
	}
	
	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
		

	 //根据学号查询
		public String findById() { 
			 System.out.println("123");		 
			 this.user=userService.findUserById(username);
		     return "findById";
		
		  }
	
		 //修改
		public String update() {
			this.userService.updateUser(user);
			return "update";
		}
		
	}


