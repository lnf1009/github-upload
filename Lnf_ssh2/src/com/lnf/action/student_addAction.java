package com.lnf.action;

import com.lnf.Entity.student;
import com.lnf.service.studentService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class student_addAction extends ActionSupport implements ModelDriven<student> {

	private student student=new student();
	@Override
	public student getModel() {
		// TODO Auto-generated method stub
		return this.student;
	}
	
	
	private studentService studentService;
	public void setStudentService(studentService studentService) {
		this.studentService = studentService;
	}
	//���
	public String add() {
		 
			this.studentService.save(student);			
			return "add";
		}

	//ɾ��
		public String delete() {
			System.out.println("ɾ��");
			System.out.println(student.getStuNum());
			this.studentService.delete(student.getStuNum());
			return "delete";
		}
}
