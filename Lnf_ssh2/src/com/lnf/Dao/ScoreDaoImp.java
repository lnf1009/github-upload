package com.lnf.Dao;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.lnf.Entity.Score;
import com.lnf.Entity.User;
import com.lnf.Entity.student;

public class ScoreDaoImp extends HibernateDaoSupport implements ScoreDao {

	@Override
	public void save(Score s) {
		this.getHibernateTemplate().save(s);

	}

	@Override
	public void update(Score score) {
				
		this.getHibernateTemplate().update(score);

	}


	@Override
	public Score findById(int stuNum) {
		return  this.getHibernateTemplate().get(Score.class, stuNum);
	}

	@Override
	public List<Score> findAll() {

		return (List<Score>) this.getHibernateTemplate().find("from Score");
	}

	@Override
	public Score find(String stuNum, String cNum) {
		// TODO Auto-generated method stub
	    String str[]= {stuNum,cNum};
			List list=getHibernateTemplate().find("from Score where stuNum=?0 and cNum=?1",str);
			System.out.println("----->"+list);
			if(list.toString() != "[]") {
				return (Score) list.get(0); 
			}
			return null;
	}

	@Override
	public void delete(String stuNum) {
		Score s=new Score();
		s.setStuNum(stuNum);
		this.getHibernateTemplate().delete(s);
		
	}

}
