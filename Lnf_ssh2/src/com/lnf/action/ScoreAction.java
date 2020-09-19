package com.lnf.action;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.lnf.Entity.Score;
import com.lnf.Entity.User;
import com.lnf.Entity.student;
import com.lnf.service.ScoreService;
import com.lnf.service.studentService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ScoreAction  extends ActionSupport implements ModelDriven<Score>{
	private Score score;	
	private List<Score> scoreList;


	@Override
	public Score getModel() {
		// TODO Auto-generated method stub
		return this.score;
	}


	public Score getScore() {
	return score;
}

public void setScore(Score score) {
	this.score = score;
}


	public List<Score> getScoreList() {
		return scoreList;
	}

	public void setScoreList(List<Score> scoreList) {
		this.scoreList = scoreList;
	}

	private ScoreService scoreService;

	
	public void setScoreService(ScoreService scoreService) {
		this.scoreService = scoreService;
	}
	
	//��ȡȫ��ѧ����Ϣ
	public String findAll() {
//		System.out.println(studentService);
		this.scoreList = scoreService.findAll();
		return "findAll";
	}

	 

	 //�޸�
	public String update() {
		this.scoreService.update(score);
		return "update";
	}
	
	 //����ѧ�š��γ̺Ų�ѯ
	public String findById() { 
		System.out.println("1111111111");
		this.score = scoreService.find(score.getStuNum(), score.getcNum());
		
		return "findById";
	  }


}
