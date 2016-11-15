package com.action;

import java.io.UnsupportedEncodingException;
 
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.Entity.User;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction  extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1572209882148568525L;
	private User user = new User();
	
	public String execute() throws UnsupportedEncodingException, SQLException{ 
		HttpServletRequest req = ServletActionContext.getRequest();
		String username = (String) req.getSession().getAttribute("username");
		//System.out.println(username+"!");
		user.setUsername(username);
		user.Init();
		return SUCCESS;
	}

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
}
