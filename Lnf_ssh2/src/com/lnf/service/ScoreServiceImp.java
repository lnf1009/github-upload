package com.lnf.service;

import java.util.List;
import com.lnf.Dao.ScoreDao;
import com.lnf.Entity.Score;


public class ScoreServiceImp implements ScoreService {
	private ScoreDao scoreDao;


	public ScoreDao getScoreDao() {
		return scoreDao;
	}

	public void setScoreDao(ScoreDao scoreDao) {
		this.scoreDao = scoreDao;
	}

	@Override
	public void save(Score s) {
		this.scoreDao.save(s);
		
	}

	@Override
	public void update(Score score) {
		this.scoreDao.update(score);
		
	}

	@Override
	public void delete(String stuNum) {
	this.scoreDao.delete(stuNum);
		
	}

	@Override
	public Score findById(int stuNum) {
	return this.scoreDao.findById(stuNum);
	}

	@Override
	public List<Score> findAll() {
		return scoreDao.findAll();
	}

	@Override
	public Score find(String stuNum, String cNum) {
		// TODO Auto-generated method stub
		return scoreDao.find(stuNum, cNum);
	}

}
