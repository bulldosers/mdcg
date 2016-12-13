package com.Entity; 

public class Project {
	private static final int rp = 250;
	private String name;
	private String lim;
	private String phone;
	private String major;
	private String school;
	private int num;
	private String context;
	private String req;
	private String username;
	private String process;
	
	
	public void Init(){
		this.name = "";
		this.lim = "";
		this.phone = "";
		this.major = "";
		this.school = "";
		this.num = 0; 
		this.context = "";  
		this.req = "";
		this.process = "";
	}
	public Project(String name,String lim,String phone,String major,String school,int num,String context,String req,String username,String process){
		
		this.name = name;
		this.lim = lim;
		this.phone = phone;
		this.major = major;
		this.school = school;
		this.num = num;
		
		if(context.length() > rp) context = context.substring(0,rp) + "..."; 
		this.context = context; 
		
		if(req.length() > rp) req = req.substring(0,rp) + "..."; 
		this.req = req;
		 
		this.username = username;
		if(process == null) process = "";
		
		if(process.length() > rp) process = process.substring(0,rp) + "..."; 
		this.process = process;
		
	}
	public Project(String n,String c){
		name = n; 
		context = c;
		if(context.length() > rp) context = context.substring(0,rp) + "..."; 
	}
	public Project(){
		
	}
	public String getContext() {
		if(context.length() > rp) context = context.substring(0,rp) + "..."; 
		return context;
	}
	public void setContext(String context) {
		if(context.length() > rp) context = context.substring(0,rp) + "..."; 
		this.context = context;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLim() {
		return lim;
	}
	public void setLim(String lim) {
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
		if(req.length() > rp) req = req.substring(0,rp) + "..."; 
		this.req = req;
	} 
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getProcess() {
		if(process==null) process="";
		return process;
	}
	public void setProcess(String process) {
		if(process==null) process="";
		this.process = process;
	}
}
