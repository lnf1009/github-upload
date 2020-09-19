package com.lnf.service;

import java.util.List;

import com.lnf.Dao.studentDao;
import com.lnf.Entity.student;
public class studentServiceImp implements studentService {
private studentDao studentDao;


	public studentDao getStudentDao() {
	return studentDao;
}

	public void setStudentDao(studentDao studentDao) {
	this.studentDao = studentDao;
}

	@Override
	public void save(student s) {
		this.studentDao.save(s);
		
	}

	@Override
	public void update(student student) {
		this.studentDao.update(student);
		
	}

	@Override
	public void delete(String stuNum) {
	this.studentDao.delete(stuNum);
		
	}

	@Override
	public student findById(String stuNum) {
	return this.studentDao.findById(stuNum);
	}

	@Override
	public List<student> findAll() {
		return studentDao.findAll();
	}

	@Override
	public student findByname(String stuNum) {
		return this.studentDao.findByname(stuNum);
	}

}
