package com.action;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.Entity.Project;
import com.Entity.User;
import com.dao.LoginDAO;
import com.dao.UserDAO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/*
 * 用户登录action,判断是否符合登录条件
 */
public class LoginAction extends ActionSupport {
	private static final long serialVersionUID = 8013816027944871760L;
	private User user;
	private String prePage;// 登录前页面
	private LoginDAO loginDao = LoginDAO.getLoginDAO();
	private ArrayList<Project> projs;
	private ArrayList<Project> tasks;
	
	@Override
	public String execute() throws UnsupportedEncodingException, SQLException {
		HttpServletRequest req = ServletActionContext.getRequest();
		String check = (String) req.getSession().getAttribute("rand");

		ActionContext ctx = ActionContext.getContext();
		Map<String, Object> session = ctx.getSession();
		
		System.out.println("验证码："+check);
		/*if (!user.getCheck().equals(check)) {
			req.setAttribute("login_error", " ");
			return "error";
		}*/
		if (user.getUsername().length() > 0) { 
			String username = new String(user.getUsername() ); 
			User loginUser = loginDao.getUserByName(username);
			if (loginUser != null) {
				if (loginUser.getPassword().equals(user.getPassword())) {
					session.put("NowLogining", username);
					prePage = (String) session.get("prePage");
					session.remove("prePage");
					if (null == prePage) { 
						user.Init();
						setProjs(UserDAO.getUserDAO().getPros(user.getUsername()));
						setTasks(UserDAO.getUserDAO().MyTasks(user.getUsername())); 
						System.out.println(tasks.size() + "!_!");
						ActionContext.getContext().getSession().put("username", user.getUsername() ); 
						return SUCCESS;
					} else {
						return "aaa";
					}
				}

			}
		}
		req.setAttribute("login_error", " ");
		return "error";
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getPrePage() {
		return prePage;
	}

	public void setPrePage(String prePage) {
		this.prePage = prePage;
	}

	public ArrayList<Project> getProjs() {
		return projs;
	}

	public void setProjs(ArrayList<Project> projs) {
		this.projs = projs;
	} 

	public ArrayList<Project> getTasks() {
		return tasks;
	}

	public void setTasks(ArrayList<Project> tasks) {
		this.tasks = tasks;
	}
}
