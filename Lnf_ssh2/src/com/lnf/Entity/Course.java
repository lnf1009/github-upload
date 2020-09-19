package com.lnf.Entity;

import java.util.HashSet;
import java.util.Set;

public class Course {
	String cNum;
	String cName;
	
		
	public Course() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	  //使用set集合关联学生属性 
	private Set<student> students=new HashSet<student>();


	public Set<student> getStudents() {
		return students;
	}

	public void setStudents(Set<student> students) {
		this.students = students;
	}

	public String getcName() {
		return cName;
	}

	public Course(String cNum, String cName) {
		super();
		this.cNum = cNum;
		this.cName = cName;
	}

	public String getcNum() {
		return cNum;
	}

	public void setcNum(String cNum) {
		this.cNum = cNum;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}


	
	
	
  
}
