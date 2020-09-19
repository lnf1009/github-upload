package com.lnf.action;

import com.lnf.Entity.Score;
import com.lnf.Entity.student;
import com.lnf.service.ScoreService;
import com.lnf.service.studentService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class Score_addAction extends ActionSupport implements ModelDriven<Score> {

	private Score score=new Score();
	private String stuNum;
	private String cNum;
	
	
	
	public String getStuNum() {
		return stuNum;
	}

	public void setStuNum(String stuNum) {
		this.stuNum = stuNum;
	}

	public String getcNum() {
		return cNum;
	}

	public void setcNum(String cNum) {
		this.cNum = cNum;
	}

	public Score getScore() {
		return score;
	}

	@Override
	public Score getModel() {
		// TODO Auto-generated method stub
		return this.score;
	}
	
	private ScoreService scoreService;

	
	public void setScoreService(ScoreService scoreService) {
		this.scoreService = scoreService;
	}
	

	//添加
	public String add() {
		 
		this.scoreService.save(score);
		
		return "add";
	}

	//删除
		public String delete() {
			System.out.println("删除");
			this.scoreService.delete(score.getStuNum());
			return "delete";
		}

		  //根据学号、课程号查询
	
	  public String findById() { this.score = scoreService.find(score.getStuNum(),
	  score.getcNum()); return "findById"; }
	 
		
		
}
