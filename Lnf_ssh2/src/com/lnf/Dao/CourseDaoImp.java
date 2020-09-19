package com.lnf.Dao;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.lnf.Entity.Course;
import com.lnf.Entity.student;

public class CourseDaoImp extends HibernateDaoSupport implements CourseDao {

	@Override
	public void save(Course course) {
		this.getHibernateTemplate().save(course);

	}

	@Override
	public void update(Course course) {
		this.getHibernateTemplate().update(course);

	}

	@Override
	public void delete(Course course) {
		this.getHibernateTemplate().delete(course);

	}

	@Override
	public Course findById(String cNum) {
		
		return this.getHibernateTemplate().get(Course.class, cNum);
	}

	@Override
	public List<Course> findAll() {
		return (List<Course>) this.getHibernateTemplate().find("from Course");
		
	}


}
