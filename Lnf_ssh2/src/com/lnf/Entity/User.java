package com.lnf.Entity;
//实体类
public class User {
	private String username;
	private String password;
	
	public User() {//无参数的构造方法
		super();
		// TODO Auto-generated constructor stub
	}



	public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}


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
	
	

}
