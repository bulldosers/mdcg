package com.Entity;

public class Info
{
	private static final int rp = 250;
	private String name;
	private String email;
	private String tc1;
	private String tc2;
	private String phone;
	private String school;
	private String introduce;
	private String username;
	private String wage;
	private int num;
	
	public Info(String name,String email,String tc1,String tc2,String phone,String school,String introduce,String username,String wage){
		this.name = name;
		this.email = email;
		this.tc1 = tc1;
		this.tc2 = tc2;
		this.phone = phone;
		this.school = school;
		
		if(introduce.length() > rp) introduce = introduce.substring(0, rp) + "..."; 
		this.introduce = introduce;
		
		this.username = username;
		this.wage = wage;
		this.setNum(0);
	}
	public Info(){
		
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTc1() {
		return tc1;
	}
	public void setTc1(String tc1) {
		this.tc1 = tc1;
	}
	public String getTc2() {
		return tc2;
	}
	public void setTc2(String tc2) {
		this.tc2 = tc2;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getIntroduce() {
		if(introduce.length() > rp) introduce = introduce.substring(0, rp) + "..."; 
		return introduce;
	}
	public void setIntroduce(String introduce) {
		if(introduce.length() > rp) introduce = introduce.substring(0, rp) + "..."; 
		this.introduce = introduce;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getWage() {
		return wage;
	}
	public void setWage(String wage) {
		this.wage = wage;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
}
