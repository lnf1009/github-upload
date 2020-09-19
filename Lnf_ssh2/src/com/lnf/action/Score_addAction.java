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
	

	//���
	public String add() {
		 
		this.scoreService.save(score);
		
		return "add";
	}

	//ɾ��
		public String delete() {
			System.out.println("ɾ��");
			this.scoreService.delete(score.getStuNum());
			return "delete";
		}

		  //����ѧ�š��γ̺Ų�ѯ
	
	  public String findById() { this.score = scoreService.find(score.getStuNum(),
	  score.getcNum()); return "findById"; }
	 
		
		
}
