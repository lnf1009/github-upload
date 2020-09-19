package com.lnf.service;

import java.util.List;

import com.lnf.Dao.CourseDao;
import com.lnf.Entity.Course;

public class CourseServiceImp implements CourseService {

	private CourseDao courseDao;
		

	public CourseDao getCourseDao() {
		return courseDao;
	}

	public void setCourseDao(CourseDao courseDao) {
		this.courseDao = courseDao;
	}

	@Override
	public void save(Course course) {
		
       this.courseDao.save(course);
	}

	@Override
	public void update(Course course) {
		this.courseDao.update(course);

	}

	@Override
	public void delete(Course course) {
		this.courseDao.delete(course);
	}

	@Override
	public Course findById(String cNum) {
	
		return  this.courseDao.findById(cNum);
	}

	@Override
	public List<Course> findAll() {
		
		return this.courseDao.findAll();
	}


}
