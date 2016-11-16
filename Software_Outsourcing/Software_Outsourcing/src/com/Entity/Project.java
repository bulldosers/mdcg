package com.Entity; 

public class Project {
	private String name;
	private int lim;
	private String phone;
	private String major;
	private String school;
	private int num;
	private String context;
	private String req;
	private String username;
	
	
	public void Init(){
		this.name = "";
		this.lim = 0;
		this.phone = "";
		this.major = "";
		this.school = "";
		this.num = 0;
		this.context = ""; 
		this.req = "";
	}
	public Project(String name,int lim,String phone,String major,String school,int num,String context,String req,String username){
		this.name = name;
		this.lim = lim;
		this.phone = phone;
		this.major = major;
		this.school = school;
		this.num = num;
		this.context = context; 
		this.req = req;
		this.username = username;
	}
	public Project(String n,String c){
		name = n;
		context = c;
	}
	public Project(){
		
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getLim() {
		return lim;
	}
	public void setLim(int lim) {
		this.lim = lim;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getReq() {
		return req;
	}
	public void setReq(String req) {
		this.req = req;
	} 
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
}
