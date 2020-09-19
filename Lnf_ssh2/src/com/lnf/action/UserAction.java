package com.lnf.action;



import org.hibernate.Session;

import com.lnf.Entity.User;
import com.lnf.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport implements ModelDriven<User>{

	private User user=new User();


	
	public User getUser() {
		return user;
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
	
	/* 添加用户 */
	public String  add(){
		this.userService.saveUser(user);
		return "add";
	}
	
    //查询所有用户
	public String findAll() {
		this.userService.findAllUser();
		System.out.println(user.getUsername());
		System.out.println(user.getPassword());
		return "findAll";
	}

	/* 验证用户 */
	public String check() {	
		/*
		 * System.out.println("用户Login"); System.out.println(user.getUsername());
		 * System.out.println(user.getPassword());
		 */		
		        
			   User u = this.userService.login(user.getUsername(), user.getPassword());	  
			   System.out.println(user.getUsername());
				System.out.println(user.getPassword());
			   if(u != null) {
				   return "success";
			   }else {
				   return "login";
			   }  
	
	}
	


	
	}



