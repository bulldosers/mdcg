package com.action;

import java.io.UnsupportedEncodingException;
 
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.Entity.Evaluation;
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
	private ArrayList<Evaluation> evas;
	private int RP;
	private String pinglun;
	 
	public String UpdateProj() throws SQLException{ 
		UserDAO.getUserDAO().UpdateProj(proj,username);
		joiners = UserDAO.getUserDAO().AllJoinersByProjname(proj.getName());
		testprojs = UserDAO.getUserDAO().getAllPros();
		System.out.println("username="+username);
		user.setUsername(username);
		user.Init(); 
		setProjs(UserDAO.getUserDAO().getPros(username));
		setTasks(UserDAO.getUserDAO().MyTasks(username));  
		setEvas(UserDAO.getUserDAO().getEvaluation()); 
		setInvitations(UserDAO.getUserDAO().MyInvitations(username));
		return SUCCESS;
	}
	
	
	public String ApplyProj() throws SQLException{
		UserDAO.getUserDAO().ApplyProj(proj.getName(),username);
		System.out.println("申请项目！" + proj.getName());
		return index();
	}
	
	public String DelMyTask() throws SQLException, UnsupportedEncodingException{
		projname = proj.getName();
		UserDAO.getUserDAO().DelTask(projname,username);  
		return index();
	}
	
	public String index() throws SQLException{
		user.setUsername(username);
		user.Init();
		System.out.println("username="+username);
		setProjs(UserDAO.getUserDAO().getPros(user.getUsername(),6));
		setTasks(UserDAO.getUserDAO().MyTasks(user.getUsername(),6)); 
		setEvas(UserDAO.getUserDAO().getEvaluation(3) );
		setInvitations(UserDAO.getUserDAO().MyInvitations(username));
		return SUCCESS;
	}
	
	public String DelMyProj() throws SQLException, UnsupportedEncodingException{ 
		//projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		UserDAO.getUserDAO().DelProj(projname,username); 
		return index();
	}
	
	public String UpdateInfo() throws SQLException{ 
		UserDAO.getUserDAO().updateInfo(user.getInfo(),username );
		return index();
	}
	public String GetInvite() throws SQLException, UnsupportedEncodingException{ 
		projname = proj.getName();
		System.out.println("projname="+projname);
		UserDAO.getUserDAO().ApplyProj(projname,username);
		System.out.println("接受邀请！");
		UserDAO.getUserDAO().DelInvitation(projname,username);
		return index();
	}
	public String AddProj() throws SQLException{ 
		UserDAO.getUserDAO().AddProj(proj,username);
		return index();
	}
	
	
	
	
	
	public UserAction() throws SQLException{ 
		HttpServletRequest req = ServletActionContext.getRequest();
		username = (String) req.getSession().getAttribute("username"); 
		System.out.println("登录成功："+username);
		Random random = new Random(); 
		setRP(random.nextInt(12)); 
	} 
	
	public String ShowTasknew(){
		System.out.println("ShowTasknew!");
		proj = new Project();
		return SUCCESS;
	}
	
	public String allmyproject() throws SQLException{
		setProjs(UserDAO.getUserDAO().getPros(username) ); 
		return SUCCESS;
	}
	
	public String allmytask() throws SQLException{
		setTasks(UserDAO.getUserDAO().MyTasks(username)); 
		setInvitations(UserDAO.getUserDAO().MyInvitations(username));
		return SUCCESS;
	}
	
	public String ShowInfo() throws UnsupportedEncodingException, SQLException{ 
		user.setUsername(username);
		user.Init();
		return SUCCESS;
	} 
	
	public String ShowJoinerinfo() throws SQLException, UnsupportedEncodingException{ 
		//projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		//joinername = new String(joinername.getBytes( "ISO-8859-1"), "UTF-8");
		System.out.println("showjoinerinfo: projname="+projname + ", joinnername=" + joinername);
		user.setUsername(joinername);
		user.Init();
		return SUCCESS;
	} 
	
	
	
	
	
	
	public String evaluation() throws SQLException{
		setEvas(UserDAO.getUserDAO().getEvaluation());
		return SUCCESS;
	}
	
	public String addEvaluation() throws SQLException{
		UserDAO.getUserDAO().addEvaluation(username,pinglun);
		setEvas(UserDAO.getUserDAO().getEvaluation());
		System.out.println("评论成功！ name = " + username + "," + pinglun);
		return SUCCESS;
	}
	
	
	
	public String ShowProj() throws SQLException{  
		System.out.println("跳转到task.jsp!");
		return SUCCESS;
	}
	
	
	
	
	
	public String ShowMyProj() throws SQLException, UnsupportedEncodingException{   
		System.out.println(projname);
		//projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		System.out.println(projname);
		proj = UserDAO.getUserDAO().getProjByName(projname,username);
		if(proj==null) {
			System.out.println("proj is null!");
			proj = new Project();
		}
		joiners = UserDAO.getUserDAO().AllJoinersByProjname(projname);
		testJoiners = UserDAO.getUserDAO().AllNotJoiners(projname);
		System.out.println("跳转到我的项目！!");
		return SUCCESS;
	}
	
	public String ShowAccept() throws SQLException, UnsupportedEncodingException{   
		//projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		proj = UserDAO.getUserDAO().getProjByName(projname,username);
		if(proj==null) {
			System.out.println("proj is null!");
			proj = new Project();
		} 
		System.out.println("跳转到邀请项目！" + proj.getName() );
		return SUCCESS;
	}
	
	public String ShowApply() throws SQLException, UnsupportedEncodingException{   
		//projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		proj = UserDAO.getUserDAO().getProjByNameCT(projname,context);
		if(proj==null) {
			System.out.println("proj is null!");
			proj = new Project();
		}
		testprojs = UserDAO.getUserDAO().getAllPros();
		System.out.println("跳转到"+proj+"项目!");
		return SUCCESS;
	}
	
	
	
	public String Invite() throws SQLException, UnsupportedEncodingException {
		System.out.println("已发出邀请"); 
		//joinername = new String(joinername.getBytes( "ISO-8859-1"), "UTF-8");
		//projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		System.out.println("joinername:" + joinername + ",projname:"+ projname);
		
		UserDAO.getUserDAO().Invite(projname,joinername );
		proj = UserDAO.getUserDAO().getProjByName(projname,username);
		if(proj==null) {
			System.out.println("proj is null!");
			proj = new Project();
		}
		joiners = UserDAO.getUserDAO().AllJoinersByProjname(projname); 
		testJoiners = UserDAO.getUserDAO().AllNotJoiners(projname); 
		return SUCCESS;
	}
	
	public String ShowAllProjs() throws SQLException{ 
		projs = UserDAO.getUserDAO().getAllPros();
		testprojs = projs; 
		System.out.println("跳转到所有项目！");
		return SUCCESS;
	}
	
	public String SearchProjs() throws SQLException{ 
		System.out.println("项目名称："+projname);
		projs = UserDAO.getUserDAO().SearchProsByName(projname);
		System.out.println("跳转到搜索项目！");
		testprojs = projs; 
		System.out.println("跳转到所有项目！");
		return SUCCESS;
	}
	
	public String ProjMoreInfo() throws SQLException, UnsupportedEncodingException{  
		//projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		//context = new String(context.getBytes( "ISO-8859-1"), "UTF-8");
		System.out.println("项目名称："+projname);
		proj = UserDAO.getUserDAO().getProjByNameCT(projname,context);
		if(proj==null) {
			System.out.println("proj is null!");
			proj = new Project();
		}
		System.out.println("跳转到点击的项目！");
		return SUCCESS;
	}
	 
	public String ShowMyTask() throws SQLException, UnsupportedEncodingException{
		//projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		//context = new String(context.getBytes( "ISO-8859-1"), "UTF-8");
		System.out.println("项目名称："+projname);
		proj = UserDAO.getUserDAO().getProjByNameCT(projname,context);
		if(proj==null) {
			System.out.println("proj is null!");
			proj = new Project();
		}
		System.out.println("跳转到点击的项目！");
		return SUCCESS;
	} 
	
	public String RemoveJoiner() throws SQLException, UnsupportedEncodingException{
		//joinername = new String(joinername.getBytes( "ISO-8859-1"), "UTF-8");
		//projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		System.out.println("projname=" + projname + ", joinername=" + joinername);
		UserDAO.getUserDAO().RemoveJoiner(projname,username); 
		
		proj = UserDAO.getUserDAO().getProjByName(projname,username);
		joiners = UserDAO.getUserDAO().AllJoinersByProjname(projname);
		testprojs = UserDAO.getUserDAO().getAllPros();
		return SUCCESS;
	}
	
	public String Contract() throws SQLException, UnsupportedEncodingException{ 
		//joinername = new String(joinername.getBytes( "ISO-8859-1"), "UTF-8");
		//projname = new String(projname.getBytes( "ISO-8859-1"), "UTF-8");
		System.out.println("joinername:"+joinername);
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

	public ArrayList<Evaluation> getEvas() {
		return evas;
	}

	public void setEvas(ArrayList<Evaluation> evas) {
		this.evas = evas;
	}

	public int getRP() {
		return RP;
	}

	public void setRP(int rP) {
		RP = rP;
	}

	public String getPinglun() {
		return pinglun;
	}

	public void setPinglun(String pinglun) {
		this.pinglun = pinglun;
	}

	
}
