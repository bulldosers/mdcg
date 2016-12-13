package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Entity.Evaluation;
import com.Entity.Info;  
import com.Entity.Project; 

public class UserDAO {
	private static UserDAO userDao = null;
	private static final String INFO_TABLE_NAME = "info";
	private static final String LINK_TABLE_NAME = "link"; 
	private static final String PROJECT_TABLE_NAME = "project"; 
	private static final String INVITATION_TABLE_NAME = "invitation";
	private Statement stmt;
	private static final int MOD = 4;
	public static UserDAO getUserDAO() {
		if (userDao == null) {
			userDao = new UserDAO();
			try {
				userDao.stmt = JdbcUtils.getStatement();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return userDao;
	}
	
	private static Info ORM(ResultSet res) throws SQLException {
		return new Info(res.getString("name"),res.getString("sex"),res.getString("age"), 
				res.getString("major"),res.getString("phone"), res.getString("school"),
				res.getString("introduce"),res.getString("username"),res.getString("wage") );
	}
	
	public void Invite(String projname,String username) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "INSERT INTO " + INVITATION_TABLE_NAME + 
				"(proname,username)" + " values('"
				+ projname + "','"
				+ username + "')";
		System.out.println("邀请用户的SQL语句：" + sql);
		stmt.executeUpdate(sql);
	}
	
	public Info getUserByUsername(String username) throws SQLException {
		stmt = JdbcUtils.getStatement();
		String sql = "SELECT distinct * FROM " + INFO_TABLE_NAME + " WHERE username = '"
				+ username + "'";
		ResultSet res = stmt.executeQuery(sql);
		if (res.next())
			return ORM(res);
		System.out.println("username=" + username +" not find!");
		return null;
	}
	
	public void addInfo(Info newInfo,String username) throws SQLException {
		stmt = JdbcUtils.getStatement();
		String sql = "INSERT INTO " + INFO_TABLE_NAME + 
				"(name,sex,age,major,phone,school,username,introduce,wage)" + " values('"
				+ newInfo.getName() + "','"
				+ newInfo.getEmail() + "','"
				+ newInfo.getTc1() + "','"
				+ newInfo.getTc2() + "','"
				+ newInfo.getPhone() + "','"
				+ newInfo.getSchool() + "','" 
				+ username + "','" 
				+ newInfo.getIntroduce() + "','"  
				+ newInfo.getWage() + "')";
		System.out.println("注册用户的SQL语句：" + sql);
		stmt.executeUpdate(sql);
	}
	
	public void updateInfo(Info newInfo,String username) throws SQLException {
		stmt = JdbcUtils.getStatement();
		String sql = "UPDATE " + INFO_TABLE_NAME + " SET " + "name = '"
				+ newInfo.getName() + "'," + "sex = '"
				+ newInfo.getEmail() + "'," + "age = '"
				+ newInfo.getTc1() + "'," + "major = '"
				+ newInfo.getTc2() + "'," + "school = '"
				+ newInfo.getSchool() + "'," + "phone = '"
				+ newInfo.getPhone() + "'," + "introduce = '" 
				+ newInfo.getIntroduce() + "'," +"wage = '" 
				+ newInfo.getWage() + "'" +
				" where username='" + username + "'";
		System.out.println("更新SQL语句shi:" + sql);
		stmt.executeUpdate(sql);
	}
	
	public Project ReadProj(ResultSet res) throws SQLException {
		return new Project(res.getString("name"),res.getString("lim"),res.getString("phone"), 
				res.getString("major"),res.getString("school"), res.getInt("num"),
				res.getString("context"),res.getString("req") ,res.getString("username"),res.getString("process"));
	}
	
	public Project getProjByName(String name,String username) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "SELECT distinct * FROM " + PROJECT_TABLE_NAME + " where name='" + name +"' && username='" + username +"'"; 
		System.out.println("查询项目的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql); 
		if(res.next()) return ReadProj(res);
		return null;
	}
	
	public Project getProjByNameCT(String name,String context) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "SELECT distinct * FROM " + PROJECT_TABLE_NAME + " where name='" + name +"' && context='" + context +"'"; 
		System.out.println("查询项目的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql); 
		if(res.next()) return ReadProj(res);
		return null;
	}
	
	public ArrayList<Project> SearchProsByName(String name) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "SELECT distinct * FROM " + PROJECT_TABLE_NAME + " where name like '%" + name +"%'"; 
		System.out.println("搜索项目的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql); 
		ArrayList<Project> pros = new ArrayList<Project>();
		int num = 0;
		while (res.next()) { Project pro = ReadProj(res); pro.setNum(num); num=(num+1)%MOD; pros.add(pro);} 
		return pros;
	}
	
	public ArrayList<Project> getPros(String username) throws SQLException{ 
		stmt = JdbcUtils.getStatement();
		String sql = "SELECT distinct * FROM " + PROJECT_TABLE_NAME + " where username='" + username +"'"; 
		System.out.println("获得我的项目的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql);  
		ArrayList<Project> pros = new ArrayList<Project>();
		int num = 0;
		while (res.next()) { Project pro = ReadProj(res); pro.setNum(num); num=(num+1)%MOD;System.out.println(pro.getNum()); pros.add(pro); } 
		return pros;
	}
	
	public ArrayList<Project> getPros(String username,int lim) throws SQLException{ 
		stmt = JdbcUtils.getStatement();
		String sql = "SELECT distinct * FROM " + PROJECT_TABLE_NAME + " where username='" + username +"'"; 
		System.out.println("获得我的项目的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql);  
		ArrayList<Project> pros = new ArrayList<Project>();
		int num = 0;
		while (res.next()) { Project pro = ReadProj(res); pro.setNum(num); num=(num+1)%MOD;System.out.println(pro.getNum()); 
		pros.add(pro); 
		lim--;
		if(lim==0) break;
		} 
		return pros;
	}
	
	public ArrayList<Project> getAllPros() throws SQLException{ 
		stmt = JdbcUtils.getStatement();
		String sql = "SELECT distinct * FROM " + PROJECT_TABLE_NAME; 
		System.out.println("获得我的项目的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql);  
		ArrayList<Project> pros = new ArrayList<Project>();
		int num = 0;
		while (res.next()) { Project pro = ReadProj(res); pro.setNum(num); num=(num+1)%MOD; pros.add(pro); } 
		return pros;
	}
	
	public void AddProj(Project pro,String username) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "INSERT INTO " + PROJECT_TABLE_NAME + 
				"(name,lim,phone,major,school,num,context,req,username,process)" + " values('"
				+ pro.getName() + "','"
				+ pro.getLim() + "','"
				+ pro.getPhone() + "','"
				+ pro.getMajor() + "','"
				+ pro.getSchool() + "','"
				+ pro.getNum() + "','"
				+ pro.getContext() + "','"  
				+ pro.getReq() + "','" 
				+ username + "','" 
				+ pro.getProcess() +"')";
		System.out.println("添加用户的SQL语句：" + sql);
		stmt.executeUpdate(sql); 
	}
	
	public void UpdateProj(Project pro,String username) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "UPDATE " + PROJECT_TABLE_NAME + " SET " +   
				"lim='" + pro.getLim() + "'," +
				"phone='" + pro.getPhone() + "'," +
				"major='" + pro.getMajor() + "'," +
				"school='" + pro.getSchool() + "'," +
				"num='" + pro.getNum() + "'," +
				"context='" + pro.getContext() + "'," +
				"req='" + pro.getReq() + "'," +
			    "process='" + pro.getProcess() + "'"
				+ " where username='" + username + "' && name='" + pro.getName() + "'";
		System.out.println("更新项目的SQL语句：" + sql);
		stmt.executeUpdate(sql); 
	}
	
	public void DelProj(String name,String username) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "DELETE FROM " + PROJECT_TABLE_NAME + 
				" WHERE name='" + name + "' && username='" + username + "'"; 
		System.out.println("删除项目的sql语句："+sql);
		int i = stmt.executeUpdate(sql);
		System.out.println("ret " + i); 
	}
	
	public void DelInvitation(String projname,String username) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "DELETE FROM " + INVITATION_TABLE_NAME + 
				" WHERE proname='" + projname + "' && username='" + username + "'"; 
		System.out.println("删除邀请的sql语句："+sql);
		int i = stmt.executeUpdate(sql);
		System.out.println("ret " + i); 
	}
	
	public void RemoveJoiner(String name,String username) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "DELETE FROM " + LINK_TABLE_NAME + 
				" WHERE proname='" + name + "' && username='" + username + "'"; 
		System.out.println("删除项目的sql语句："+sql);
		int i = stmt.executeUpdate(sql);
		System.out.println("ret " + i); 
	}
	
	public void ApplyProj(String projname,String username) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "INSERT INTO " + LINK_TABLE_NAME + 
				"(proname,username)" + " values('"
				+ projname + "','"
				+ username + "')"; 
		stmt.executeUpdate(sql);
		System.out.println("添加关联的sql语句："+sql);
	}
	
	public void DelTask(String projname,String username) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "DELETE FROM " + LINK_TABLE_NAME + 
				" WHERE proname='" + projname + "' && username='" + username + "'"; 
		System.out.println("删除项目的sql语句："+sql);
		int i = stmt.executeUpdate(sql);
		System.out.println("ret " + i);
	}
	
	public ArrayList<Info> AllJoinersByProjname(String projname) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "SELECT distinct * FROM " + LINK_TABLE_NAME + " where proname='" + projname +"'"; 
		System.out.println("搜索用户名称的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql); 
		ArrayList<Info> joiners = new ArrayList<Info>();
		ArrayList<String> names = new ArrayList<String>();
		while (res.next()) {names.add(res.getString("username")); }
		int num = 0;
		for(String username :names)
		{
			System.out.println("用户名称："+ username);
			Info tmp = UserDAO.getUserDAO().getUserByUsername(username);
			tmp.setNum(num);
			num=(num+1)%MOD;
			if(tmp!=null) joiners.add(tmp);  
		}
		return joiners;
	}
	
	/*public ArrayList<Info> AllJoiners1() throws SQLException{
		stmt = JdbcUtils.getStatement(); 
		String sql = "SELECT distinct * FROM " + INFO_TABLE_NAME; 
		System.out.println("搜索用户名称的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql); 
		ArrayList<Info> joiners = new ArrayList<Info>(); 
		while (res.next()) {joiners.add(ORM(res));} 
		return joiners;
	}*/
	
	public ArrayList<Info> AllNotJoiners(String projname) throws SQLException{
		stmt = JdbcUtils.getStatement(); 
		String sql = "SELECT distinct * FROM " + INFO_TABLE_NAME; 
		System.out.println("搜索用户名称的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql); 
		ArrayList<Info> joiners = new ArrayList<Info>();  
		while (res.next()) {
			Info tmp = ORM(res);
			joiners.add(tmp);
		} 
		return joiners;
	}
	
	public ArrayList<Project> MyTasks(String username) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "SELECT distinct * FROM " + LINK_TABLE_NAME + " where username='" + username +"'"; 
		System.out.println("搜索项目名称的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql); 
		ArrayList<Project> pros = new ArrayList<Project>();
		ArrayList<String> names = new ArrayList<String>();
		while (res.next()) {names.add(res.getString("proname")); }
		int num = 0;
		for(String projname :names)
		{
			System.out.println("任务名称："+ projname);
			ArrayList<Project> tmp = SearchProsByName(projname );
			for(Project proj : tmp)
			{
				proj.setNum(num);
				num = (num+1) % MOD;
				pros.add(proj); 
			}
		}
		return pros;
	}
	
	public ArrayList<Project> MyTasks(String username,int lim) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "SELECT distinct * FROM " + LINK_TABLE_NAME + " where username='" + username +"'"; 
		System.out.println("搜索项目名称的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql); 
		ArrayList<Project> pros = new ArrayList<Project>();
		ArrayList<String> names = new ArrayList<String>();
		while (res.next()) {names.add(res.getString("proname")); }
		int num = 0;
		for(String projname :names)
		{
			System.out.println("任务名称："+ projname);
			ArrayList<Project> tmp = SearchProsByName(projname );
			for(Project proj : tmp)
			{
				proj.setNum(num);
				num = (num+1) % MOD;
				pros.add(proj); 
				lim--;
				if(lim==0) break;
			}
			if(lim==0) break;
		}
		return pros;
	}
	
	public ArrayList<Project> MyInvitations(String username) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "SELECT distinct * FROM " + INVITATION_TABLE_NAME + " where username='" + username +"'";
		System.out.println("搜索邀请名称的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql); 
		ArrayList<String> names = new ArrayList<String>();
		while (res.next()) {names.add(res.getString("proname")); }
		int num = 0;
		ArrayList<Project> pros = new ArrayList<Project>(); 
		for(String projname :names)
		{
			System.out.println("任务名称："+ projname);
			ArrayList<Project> tmp = SearchProsByName(projname );
			for(Project proj : tmp)
			{
				proj.setNum(num);
				num = (num+1) % MOD;
				pros.add(proj); 
			}
		}
		return pros;
	}
	
	/*public ArrayList<Info> MyInvitationsByProjname(String projname) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "SELECT distinct * FROM " + INVITATION_TABLE_NAME + " where proname='" + projname +"'";
		System.out.println("搜索邀请名称的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql); 
		ArrayList<String> names = new ArrayList<String>();
		while (res.next()) {names.add(res.getString("username")); }
		int num = 0;
		ArrayList<Info> infos = new ArrayList<Info>(); 
		for(String username :names)
		{
			System.out.println("用户名称："+ username);
			ArrayList<Info> tmp = Search;
			for(Project proj : tmp)
			{
				proj.setNum(num);
				num = (num+1) % MOD;
				pros.add(proj); 
			}
		}
		return infos;
	}*/
	
	public void addEvaluation(String username,String evaluation) throws SQLException
	{
		stmt = JdbcUtils.getStatement();
		String sql = "INSERT INTO " + "evaluation " + 
				"(username,evaluation)" + " values('"
				+ username + "','" 
				+ evaluation + "')";
		System.out.println("添加用户评论的SQL语句：" + sql);
		stmt.executeUpdate(sql);
	}
	
	public ArrayList<Evaluation> getEvaluation() throws SQLException
	{
		stmt = JdbcUtils.getStatement(); 
		String sql = "SELECT distinct * FROM " + "evaluation "; 
		System.out.println("搜索用户评论的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql); 
		ArrayList<Evaluation> evas = new ArrayList<Evaluation>();
		int num = 0;
		while (res.next()) {evas.add(new Evaluation(res.getString("username"),res.getString("evaluation"),num) );num=(num+1)%MOD;} 
		return evas;
	}
	
	public ArrayList<Evaluation> getEvaluation(int lim) throws SQLException
	{
		stmt = JdbcUtils.getStatement(); 
		String sql = "SELECT distinct * FROM " + "evaluation "; 
		System.out.println("搜索用户评论的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql); 
		ArrayList<Evaluation> evas = new ArrayList<Evaluation>();
		int num = 0;
		
		while (res.next()) {evas.add(new Evaluation(res.getString("username"),res.getString("evaluation"),num) );num=(num+1)%MOD;
		lim--;
		if(lim==0) break;
		} 
		return evas;
	}
}
