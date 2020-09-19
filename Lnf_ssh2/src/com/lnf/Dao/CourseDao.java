package com.lnf.Dao;

import java.util.List;

import com.lnf.Entity.Course;

public interface CourseDao {
	public void save(Course course);
	public void update(Course course);
	public void delete(Course course);
	public Course findById(String cNum);
	public List<Course> findAll();
	
}
