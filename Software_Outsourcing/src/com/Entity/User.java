package com.Entity;

import java.sql.SQLException;
 
import java.util.ArrayList;

import com.dao.UserDAO;

public class User { 
	private String username;
	private String password;
	private String address;
    private String check;
    private Info info;
    private ArrayList<String> pros;
    
    public void Init() throws SQLException{
    	info = UserDAO.getUserDAO().getUserByUsername(username); 
    	if(info == null) 
    	{
    		info = new Info("","","","","","","","");
    		UserDAO.getUserDAO().addInfo(info,username);
    	}
    }
    public User(String name,String pwd){
    	username = name;
    	password = pwd;
    }
    public User(){ 
    }
	public String getCheck() {
		return check;
	}

	public void setCheck(String check) {
		this.check = check;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	} 

	public String getUsername() {
		return username;
	}
	public Info getInfo() {
		return info;
	}
	public void setInfo(Info info) {
		this.info = info;
	}
	public ArrayList<String> getPros() {
		return pros;
	}
	public void setPros(ArrayList<String> pros) {
		this.pros = pros;
	} 

}

