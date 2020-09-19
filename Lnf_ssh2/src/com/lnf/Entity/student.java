package com.lnf.Entity;

import java.util.HashSet;
import java.util.Set;

public class student {
	String stuNum;
	String stuName;
	String  stuSex;
	String stuAge;
	String score;
	
	public student() {
		super();
		// TODO Auto-generated constructor stub
	}
		
	
	  //使用set集合关联课程属性
	private Set<Course> courses=new HashSet<Course>();
	
	

	public Set<Course> getCourses() {
		return courses;
	}


	public void setCourses(Set<Course> courses) {
		this.courses = courses;
	}


	public student(String stuNum, String stuName, String stuSex, String stuAge, String score, Set<Course> courses) {
		super();
		this.stuNum = stuNum;
		this.stuName = stuName;
		this.stuSex = stuSex;
		this.stuAge = stuAge;
		this.score = score;
		this.courses = courses;
	}


	public String getStuNum() {
		return stuNum;
	}


	public void setStuNum(String stuNum) {
		this.stuNum = stuNum;
	}


	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public String getStuSex() {
		return stuSex;
	}
	public void setStuSex(String stuSex) {
		this.stuSex = stuSex;
	}
	public String getStuAge() {
		return stuAge;
	}
	public void setStuAge(String stuAge) {
		this.stuAge = stuAge;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}


	
	
	
	

}
