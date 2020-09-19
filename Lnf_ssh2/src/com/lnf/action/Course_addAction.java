package com.lnf.action;

import com.lnf.Entity.Course;
import com.lnf.Entity.student;
import com.lnf.service.CourseService;
import com.lnf.service.studentService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class Course_addAction extends ActionSupport implements ModelDriven<Course> {

	private Course course=new Course();
	private CourseService courseService;
	
	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}



	@Override
	public Course getModel() {
		// TODO Auto-generated method stub
		return course;
	}
	
	

	//Ìí¼Ó
	public String add() {
		 this.courseService.save(course);
			return "add";
		}

	//É¾³ý
		public String delete() {
		this.courseService.delete(course);
			return "delete";
		}

		
}
