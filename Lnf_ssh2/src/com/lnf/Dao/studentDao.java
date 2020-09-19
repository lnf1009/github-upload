package com.lnf.Dao;

import java.util.List;

import com.lnf.Entity.student;

public interface studentDao {
	public student findByname(String stuNum);
	public void save(student s);
	public void update(student student);
	public void delete(String stuNum);
	public  student findById(String stuNum);
	public List<student> findAll();


}
