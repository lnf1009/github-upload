package com.lnf.Entity;

import java.io.Serializable;

public class Score implements Serializable {
	String stuNum;
	String cNum;
	String stuScore;
	
	public Score() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	private static final long serialVersionUID = 1L;
	
	public Score(String stuNum, String cNum, String stuScore) {
		super();
		this.stuNum = stuNum;
		this.cNum = cNum;
		this.stuScore = stuScore;
	}


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


	public String getStuScore() {
		return stuScore;
	}


	public void setStuScore(String stuScore) {
		this.stuScore = stuScore;
	}


	
	
	
	

}
