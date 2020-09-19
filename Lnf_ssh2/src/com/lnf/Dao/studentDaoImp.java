package com.lnf.Dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.query.Query;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.lnf.Entity.student;
import com.mysql.cj.xdevapi.SessionFactory;


public class studentDaoImp extends HibernateDaoSupport implements studentDao {
 private SessionFactory sessionFactory;
 

public void setSessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}

	@Override
	public void save(student s) {
		this.getHibernateTemplate().save(s);

	}

	@Override
	public void update(student student) {
		
		this.getHibernateTemplate().update(student);

	}

	

	@Override
	public student findById(String stuNum) {
		
		return  this.getHibernateTemplate().get(student.class, stuNum);
	}

	@Override
	public List<student> findAll() {
		
		return (List<student>) this.getHibernateTemplate().find("from student");
		
		
		
	}

	@Override
	public student findByname(String stuNum) {
		return  this.getHibernateTemplate().get(student.class, stuNum);
	}

	@Override
	public void delete(String stuNum) {
		student s=new student();
		s.setStuNum(stuNum);
		this.getHibernateTemplate().delete(s);
	}



}
