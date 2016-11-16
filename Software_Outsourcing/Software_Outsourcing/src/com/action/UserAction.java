package com.action;

import java.io.UnsupportedEncodingException;
 
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.Entity.Project;
import com.Entity.User;
import com.dao.UserDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction  extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1572209882148568525L;
	private User user = new User();
	private String username;
	private String projname;
	private String context;
	private ArrayList<Project> projs;
	private Project proj;
	private ArrayList<Project> tasks;
	
	public UserAction() throws SQLException{
		HttpServletRequest req = ServletActionContext.getRequest();
		username = (String) req.getSession().getAttribute("username"); 
	}
	
	public String ShowInfo() throws UnsupportedEncodingException, SQLException{ 
//		HttpServletRequest req = ServletActionContext.getRequest();
//		username = (String) req.getSession().getAttribute("username");
//		System.out.println(username+"!");
		user.setUsername(username);
		user.Init();
		return SUCCESS;
	}
	
	public String UpdateInfo() throws SQLException{
//		System.out.println("!"+username+"!");
//		HttpServletRequest req = ServletActionContext.getRequest();
//		username = (String) req.getSession().getAttribute("username");
//		System.out.println("#"+username+"#");
		UserDAO.getUserDAO().updateInfo(user.getInfo(),username );
		return ShowUser();
	}
	
	public String ShowUser() throws SQLException{
//		HttpServletRequest req = ServletActionContext.getRequest();
//		username = (String) req.getSession().getAttribute("username");
		projs = UserDAO.getUserDAO().getPros(username);
		setTasks(UserDAO.getUserDAO().MyTasks(username )); 
		return SUCCESS;
	}
	
	public String ShowProj() throws SQLException{
//		HttpServletRequest req = ServletActionContext.getRequest();
//		username = (String) req.getSession().getAttribute("username");
//		UserDAO.getUserDAO().AddPro(pro,username);
		proj = new Project();
		return SUCCESS;
	}
	
	public String AddProj() throws SQLException{
//		HttpServletRequest req = ServletActionContext.getRequest();
//		username = (String) req.getSession().getAttribute("username");
		UserDAO.getUserDAO().AddProj(proj,username);
		return ShowUser();
	}
	
	public String UpdateProj() throws SQLException{
//		HttpServletRequest req = ServletActionContext.getRequest();
//		username = (String) req.getSession().getAttribute("username");
		UserDAO.getUserDAO().UpdateProj(proj,username);
		return ShowUser();
	}
	
	public String ShowMyProj() throws SQLException, UnsupportedEncodingException{
//		HttpServletRequest req = ServletActionContext.getRequest();
//		username = (String) req.getSession().getAttribute("username");  
		projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		proj = UserDAO.getUserDAO().getProjByName(projname,username);
		if(proj==null) {
			System.out.println("proj is null!");
			proj = new Project();
		}
		System.out.println("跳转到我的项目！");
		return SUCCESS;
	}
	
	public String DelMyProj() throws SQLException, UnsupportedEncodingException{
//		HttpServletRequest req = ServletActionContext.getRequest();
//		username = (String) req.getSession().getAttribute("username"); 
		projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		UserDAO.getUserDAO().DelProj(projname,username); 
		return ShowUser();
	}
	
	public String ShowAllProjs() throws SQLException{
//		HttpServletRequest req = ServletActionContext.getRequest();
//		username = (String) req.getSession().getAttribute("username"); 
		projs = UserDAO.getUserDAO().getAllPros();
		System.out.println("跳转到所有项目！");
		return SUCCESS;
	}
	
	public String SearchProjs() throws SQLException{ 
		System.out.println("项目名称："+projname);
		projs = UserDAO.getUserDAO().SearchProsByName(projname);
		System.out.println("跳转到搜索项目！");
		return SUCCESS;
	}
	
	public String ProjMoreInfo() throws SQLException, UnsupportedEncodingException{ 
		//HttpServletRequest req = ServletActionContext.getRequest();
		//username = (String) req.getSession().getAttribute("username");
		projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		context = new String(context.getBytes( "ISO-8859-1"), "UTF-8");
		System.out.println("项目名称："+projname);
		proj = UserDAO.getUserDAO().getProjByNameCT(projname,context);
		if(proj==null) {
			System.out.println("proj is null!");
			proj = new Project();
		}
		System.out.println("跳转到点击的项目！");
		return SUCCESS;
	}
	
	public String ApplyProj() throws SQLException{
		UserDAO.getUserDAO().ApplyProj(proj,username);
		System.out.println("申请项目！");
		return ShowUser();
	}
	
	public String ShowMyTask() throws SQLException, UnsupportedEncodingException{
		projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		context = new String(context.getBytes( "ISO-8859-1"), "UTF-8");
		System.out.println("项目名称："+projname);
		proj = UserDAO.getUserDAO().getProjByNameCT(projname,context);
		if(proj==null) {
			System.out.println("proj is null!");
			proj = new Project();
		}
		System.out.println("跳转到点击的项目！");
		return SUCCESS;
	}
	
	public String DelMyTask() throws SQLException, UnsupportedEncodingException{
		projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		UserDAO.getUserDAO().DelTask(projname,username);  
		return ShowUser();
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	} 
	public Project getProj() {
		return proj;
	}
	public void setProj(Project proj) {
		this.proj = proj;
	}
	public ArrayList<Project> getProjs() {
		return projs;
	}
	public void setProjs(ArrayList<Project> projs) {
		this.projs = projs;
	}
	public String getProjname() {
		return projname;
	}
	public void setProjname(String projname) {
		this.projname = projname;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public ArrayList<Project> getTasks() {
		return tasks;
	}
	public void setTasks(ArrayList<Project> tasks) {
		this.tasks = tasks;
	}
}
