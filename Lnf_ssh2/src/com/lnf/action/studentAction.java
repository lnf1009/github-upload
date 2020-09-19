package com.lnf.action;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.lnf.Entity.student;
import com.lnf.service.studentService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class studentAction  extends ActionSupport implements ModelDriven<student>{
	private student student;	
	private List<student> studentList;
    private String stuNum;
    


	public String getStuNum() {
		return stuNum;
	}

	public void setStuNum(String stuNum) {
		this.stuNum = stuNum;
	}

	public student getStudent() {
		return student;
	}

	public void setStudent(student student) {
		this.student = student;
	}

	public studentService getStudentService() {
		return studentService;
	}
	

	public List<student> getStudentList() {
		return studentList;
	}

	public void setStudentList(List<student> studentList) {
		this.studentList = studentList;
	}

	@Override
	public student getModel() {
		// TODO Auto-generated method stub
		return this.student;
	}
	

	private studentService studentService;
	public void setStudentService(studentService studentService) {
		this.studentService = studentService;
	}
	
	//获取全部学生信息
	public String findAll() {
//		System.out.println(studentService);
		this.studentList = studentService.findAll();
		return "findAll";
	}
	
	
	  //根据学号查询
	public String findById() { 
		 System.out.println("123");		 
		 this.student=studentService.findById(stuNum);
	     System.out.println(student.getScore());
	     return "findById";
	
	  }
	 

	 //修改
	public String update() {
		this.studentService.update(student);
		return "update";
	}

}
