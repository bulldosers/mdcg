package com.Entity;

import java.io.UnsupportedEncodingException;

public class Info
{
	private String name;
	private String sex;
	private String age;
	private String major;
	private String phone;
	private String school;
	private String introduce;
	
	public Info(String name,String sex,String age,String major,String phone,String school,String introduce){
		this.name = name;
		this.sex = sex;
		this.age = age;
		this.major = major;
		this.phone = phone;
		this.school = school;
		this.introduce = introduce;
	}
	public Info(){
		
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
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
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
}
