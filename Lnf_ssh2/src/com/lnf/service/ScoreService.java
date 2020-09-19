package com.lnf.service;

import java.util.List;

import com.lnf.Entity.Score;

public interface ScoreService {
	public void save(Score s);
	public void update(Score score);
	public void delete(String stuNum);
	public Score findById(int stuNum);
	public List<Score> findAll();
	public Score find(String stuNum,String cNum);
	
}
