package com.Entity;

public class Evaluation {
	private static final int rp = 250;
	private String username;
	private String evaluation;
	private int num;
	public Evaluation(){
		
	}
	public Evaluation(String name,String eva,int n)
	{
		username = name;
		if(eva.length() > rp) eva = eva.substring(0, rp)+"..."; 
		evaluation = eva;
		
		num = n;
	}
	public Evaluation(String name,String eva)
	{
		username = name;
		evaluation = eva;
		num = 0;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEvaluation() {
		if(evaluation.length() > rp) evaluation = evaluation.substring(0, rp)+"..."; 
		return evaluation;
	}
	public void setEvaluation(String evaluation) {
		if(evaluation.length() > rp) evaluation = evaluation.substring(0, rp)+"..."; 
		this.evaluation = evaluation;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
}
