package com.lnf.action;

import java.util.List;

import com.lnf.Entity.Course;
import com.lnf.service.CourseService;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class CourseAction extends ActionSupport implements ModelDriven<Course>{
	private List<Course> courseList;
	private Course course;
	private CourseService courseService;	
	private String cNum;
	

	public String getcNum() {
		return cNum;
	}

	public void setcNum(String cNum) {
		this.cNum = cNum;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}

	public List<Course> getCourseList() {
		return courseList;
	}

	public void setCourseList(List<Course> courseList) {
		this.courseList = courseList;
	}

	@Override
	public Course getModel() {
		// TODO Auto-generated method stub
		return this.course;
	}
//查询所有
	public String findAll() {
		this.courseList=courseService.findAll();
		return "findAll";
	}
	
	  //根据学号查询
	public String findById() { 
		 System.out.println("123");		 
		 this.course=courseService.findById(cNum);
		 System.out.println(course.getcName());
	     return "findById";
	
	  }
	

	 //修改
	public String update() {
		this.courseService.update(course);
		return "update";
	}
}
