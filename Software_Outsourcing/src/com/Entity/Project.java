package com.Entity;
public class Project {
	private String name;
	private String context;
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
}
