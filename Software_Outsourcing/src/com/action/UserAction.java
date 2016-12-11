package com.action;

import java.io.UnsupportedEncodingException;
 
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.Entity.Info;
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
	private String joinername;
	private String projname;
	private String inprojname;
	private String context;
	private ArrayList<Project> projs;
	private ArrayList<Project> testprojs;
	private Project proj;
	private ArrayList<Project> tasks;
	private ArrayList<Info> joiners;
	private String clientname;
	private ArrayList<Info> testJoiners;
	private ArrayList<Project> invitations;
	private int RP;
	
	public UserAction() throws SQLException{ 
		HttpServletRequest req = ServletActionContext.getRequest();
		username = (String) req.getSession().getAttribute("username"); 
		Random random = new Random(); 
		RP = random.nextInt(12); 
	}
	
	public String ShowInfo() throws UnsupportedEncodingException, SQLException{ 
		user.setUsername(username);
		user.Init();
		return SUCCESS;
	} 
	
	public String ShowJoinerinfo() throws SQLException, UnsupportedEncodingException{
		projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		joinername = new String(joinername.getBytes( "ISO-8859-1"), "UTF-8");
		System.out.println("showjoinerinfo: projname="+projname + ", joinnername=" + joinername);
		user.setUsername(joinername);
		user.Init();
		return SUCCESS;
	} 
	
	public String UpdateInfo() throws SQLException{ 
		UserDAO.getUserDAO().updateInfo(user.getInfo(),username );
		return ShowUser();
	}
	
	public String ShowUser() throws SQLException{ 
		System.out.println("username="+username);
		projs = UserDAO.getUserDAO().getPros(username);
		setTasks(UserDAO.getUserDAO().MyTasks(username)); 
		setInvitations(UserDAO.getUserDAO().MyInvitations(username));
		return SUCCESS;
	}
	
	public String GetInvite() throws SQLException, UnsupportedEncodingException{
		projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		System.out.println("projname="+projname);
		UserDAO.getUserDAO().ApplyProj(projname,username);
		System.out.println("接受邀请！");
		UserDAO.getUserDAO().DelInvitation(projname,username);
		return ShowUser();
	}
	
	public String ApplyProj() throws SQLException{
		UserDAO.getUserDAO().ApplyProj(proj.getName(),username);
		System.out.println("申请项目！");
		return ShowUser();
	}
	
	public String ShowProj() throws SQLException{ 
		proj = new Project();
		return SUCCESS;
	}
	
	public String AddProj() throws SQLException{ 
		UserDAO.getUserDAO().AddProj(proj,username);
		return ShowUser();
	}
	
	public String UpdateProj() throws SQLException{ 
		UserDAO.getUserDAO().UpdateProj(proj,username);
		return ShowUser();
	}
	
	public String ShowMyProj() throws SQLException, UnsupportedEncodingException{   
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
		projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		UserDAO.getUserDAO().DelProj(projname,username); 
		return ShowUser();
	}
	
	public String Invite() throws SQLException, UnsupportedEncodingException {
		System.out.println("已发出邀请"); 
		joinername = new String(joinername.getBytes( "ISO-8859-1"), "UTF-8");
		projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		System.out.println("joinername:" + joinername + ",projname:"+ projname);
		
		UserDAO.getUserDAO().Invite(projname,joinername );
		
		joiners = UserDAO.getUserDAO().AllJoinersByProjname(projname); 
		testJoiners = new ArrayList<Info>(); 
		ArrayList<Info> alljoiners = UserDAO.getUserDAO().AllJoiners();
		int rp = RP;
		for(Info info:alljoiners)
		{
			if(info==null) continue;
			if(rp%3==0) testJoiners.add(info);
			rp++;
		} 
		return SUCCESS;
	}
	
	public String ShowAllProjs() throws SQLException{ 
		projs = UserDAO.getUserDAO().getAllPros();
		testprojs = new ArrayList<Project>();
		int rp = RP; 
		for(Project tmp:projs)
		{
			if(rp%3 == 0) 
			{
				testprojs.add(tmp); 
			}
			rp++;
			System.out.println(rp);
		}
		System.out.println("跳转到所有项目！");
		return SUCCESS;
	}
	
	public String SearchProjs() throws SQLException{ 
		System.out.println("项目名称："+projname);
		projs = UserDAO.getUserDAO().SearchProsByName(projname);
		System.out.println("跳转到搜索项目！");
		testprojs = new ArrayList<Project>();
		int rp = RP; 
		for(Project tmp:projs)
		{
			if(rp%3 == 0) 
			{
				testprojs.add(tmp); 
			}
			rp++;
			System.out.println(rp);
		}
		System.out.println("跳转到所有项目！");
		return SUCCESS;
	}
	
	public String ProjMoreInfo() throws SQLException, UnsupportedEncodingException{  
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
	
	
	
	/**
	 * @return
	 * @throws SQLException
	 * @throws UnsupportedEncodingException
	 */
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
	
	public String ShowJoiners() throws SQLException, UnsupportedEncodingException{
		//joinername = new String(joinername.getBytes( "ISO-8859-1"), "UTF-8"); 
		projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		//System.out.println("projname=" + projname + ", username=" + username + "joinername=" + joinername);
		joiners = UserDAO.getUserDAO().AllJoinersByProjname(projname);  
		testJoiners = new ArrayList<Info>();
		ArrayList<Info> alljoiners = UserDAO.getUserDAO().AllJoiners();
		int rp = RP;
		for(Info info:alljoiners)
		{
			if(info==null) continue;
			//if(rp%3==0) 
				testJoiners.add(info);
			rp=rp+1;
		}
		return SUCCESS;
	}
	
	public String RemoveJoiner() throws SQLException, UnsupportedEncodingException{
		joinername = new String(joinername.getBytes( "ISO-8859-1"), "UTF-8");
		projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		System.out.println("projname=" + projname + ", joinername=" + joinername);
		UserDAO.getUserDAO().RemoveJoiner(projname,joinername); 
		
		joiners = UserDAO.getUserDAO().AllJoinersByProjname(projname);  
		return SUCCESS;
	}
	
	public String Contract() throws SQLException, UnsupportedEncodingException{ 
		clientname = new String(clientname.getBytes( "ISO-8859-1"), "UTF-8");
		System.out.println("clientname:"+clientname);
		return SUCCESS;
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

	public ArrayList<Info> getJoiners() {
		return joiners;
	}

	public void setJoiners(ArrayList<Info> joiners) {
		this.joiners = joiners;
	}

	public String getJoinername() {
		return joinername;
	}

	public void setJoinername(String joinername) {
		this.joinername = joinername;
	}

	public ArrayList<Project> getTestprojs() {
		return testprojs;
	}

	public void setTestprojs(ArrayList<Project> testprojs) {
		this.testprojs = testprojs;
	}

	public String getClientname() {
		return clientname;
	}

	public void setClientname(String clientname) {
		this.clientname = clientname;
	}

	public ArrayList<Info> getTestJoiners() {
		return testJoiners;
	}

	public void setTestJoiners(ArrayList<Info> testJoiners) {
		this.testJoiners = testJoiners;
	}

	public String getInprojname() {
		return inprojname;
	}

	public void setInprojname(String inprojname) {
		this.inprojname = inprojname;
	}

	public ArrayList<Project> getInvitations() {
		return invitations;
	}

	public void setInvitations(ArrayList<Project> invitations) {
		this.invitations = invitations;
	}

	
}
