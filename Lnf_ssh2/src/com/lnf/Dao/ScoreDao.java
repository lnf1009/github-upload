package com.lnf.Dao;

import java.util.List;

import com.lnf.Entity.Score;
import com.lnf.Entity.User;
import com.lnf.Entity.student;


public interface ScoreDao {
	
	
	public void save(Score s);
	public void update(Score score);
	public void delete(String stuNum);
	public  Score findById(int stuNum);
	public List<Score> findAll();
	public Score find(String stuNum,String cNum);

}
