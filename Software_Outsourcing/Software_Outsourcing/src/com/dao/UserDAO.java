package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Entity.Info;  
import com.Entity.Project; 

public class UserDAO {
	private static UserDAO userDao = null;
	private static final String INFO_TABLE_NAME = "info";
	private static final String LINK_TABLE_NAME = "link"; 
	private static final String PROJECT_TABLE_NAME = "project"; 
	private Statement stmt;
	
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
				res.getString("introduce") );
	}
	
	public Info getUserByUsername(String username) throws SQLException {
		stmt = JdbcUtils.getStatement();
		String sql = "SELECT * FROM " + INFO_TABLE_NAME + " WHERE username = '"
				+ username + "'";
		ResultSet res = stmt.executeQuery(sql);
		if (res.next())
			return ORM(res);
		System.out.println("null!");
		return null;
	}
	
	public void addInfo(Info newInfo,String username) throws SQLException {
		stmt = JdbcUtils.getStatement();
		String sql = "INSERT INTO " + INFO_TABLE_NAME + 
				"(name,sex,age,major,phone,school,username,introduce)" + " values('"
				+ newInfo.getName() + "','"
				+ newInfo.getAge() + "','"
				+ newInfo.getSex() + "','"
				+ newInfo.getMajor() + "','"
				+ newInfo.getPhone() + "','"
				+ newInfo.getSchool() + "','" 
				+ username + "','" 
				+ newInfo.getIntroduce() + "')";
		System.out.println("注册用户的SQL语句：" + sql);
		stmt.executeUpdate(sql);
	}
	
	public void updateInfo(Info newInfo,String username) throws SQLException {
		stmt = JdbcUtils.getStatement();
		String sql = "UPDATE " + INFO_TABLE_NAME + " SET " + "name = '"
				+ newInfo.getName() + "'," + "age = '"
				+ newInfo.getAge() + "'," + "sex = '"
				+ newInfo.getSex() + "'," + "major = '"
				+ newInfo.getMajor() + "'," + "school = '"
				+ newInfo.getSchool() + "'," + "phone = '"
				+ newInfo.getPhone() + "'," + "introduce = '" 
				+ newInfo.getIntroduce() + "'" +
				" where username='" + username + "'";
		System.out.println("更新SQL语句:" + sql);
		stmt.executeUpdate(sql);
	}
	
	public Project ReadProj(ResultSet res) throws SQLException {
		return new Project(res.getString("name"),res.getInt("lim"),res.getString("phone"), 
				res.getString("major"),res.getString("school"), res.getInt("num"),
				res.getString("context"),res.getString("req") ,res.getString("username"));
	}
	
	public Project getProjByName(String name,String username) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "SELECT * FROM " + PROJECT_TABLE_NAME + " where name='" + name +"' && username='" + username +"'"; 
		System.out.println("查询项目的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql); 
		if(res.next()) return ReadProj(res);
		return null;
	}
	
	public Project getProjByNameCT(String name,String context) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "SELECT * FROM " + PROJECT_TABLE_NAME + " where name='" + name +"' && context='" + context +"'"; 
		System.out.println("查询项目的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql); 
		if(res.next()) return ReadProj(res);
		return null;
	}
	
	public ArrayList<Project> SearchProsByName(String name) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "SELECT * FROM " + PROJECT_TABLE_NAME + " where name='" + name +"'"; 
		System.out.println("搜索项目的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql); 
		ArrayList<Project> pros = new ArrayList<Project>();
		while (res.next()) { Project pro = ReadProj(res); pros.add(pro); } 
		return pros;
	}
	
	public ArrayList<Project> getPros(String username) throws SQLException{ 
		stmt = JdbcUtils.getStatement();
		String sql = "SELECT * FROM " + PROJECT_TABLE_NAME + " where username='" + username +"'"; 
		System.out.println("获得我的项目的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql);  
		ArrayList<Project> pros = new ArrayList<Project>();
		while (res.next()) { Project pro = ReadProj(res); pros.add(pro); } 
		return pros;
	}
	
	public ArrayList<Project> getAllPros() throws SQLException{ 
		stmt = JdbcUtils.getStatement();
		String sql = "SELECT * FROM " + PROJECT_TABLE_NAME; 
		System.out.println("获得我的项目的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql);  
		ArrayList<Project> pros = new ArrayList<Project>();
		while (res.next()) { Project pro = ReadProj(res); pros.add(pro); } 
		return pros;
	}
	
	public void AddProj(Project pro,String username) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "INSERT INTO " + PROJECT_TABLE_NAME + 
				"(name,lim,phone,major,school,num,context,req,username)" + " values('"
				+ pro.getName() + "','"
				+ pro.getLim() + "','"
				+ pro.getPhone() + "','"
				+ pro.getMajor() + "','"
				+ pro.getSchool() + "','"
				+ pro.getNum() + "','"
				+ pro.getContext() + "','" 
				+ pro.getReq() + "','" 
				+ username + "')";
		System.out.println("添加用户的SQL语句：" + sql);
		stmt.executeUpdate(sql);
//		sql = "INSERT INTO " + LINK_TABLE_NAME + 
//				"(project,username)" + " values('"
//				+ pro.getName() + "','" 
//				+ username + "')";
//		System.out.println("注册用户的SQL语句：" + sql);
//		stmt.executeUpdate(sql);
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
				"req='" + pro.getReq() + "'"
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
	
	public void ApplyProj(Project proj,String username) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "INSERT INTO " + LINK_TABLE_NAME + 
				"(proname,username)" + " values('"
				+ proj.getName() + "','"
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
	
	public ArrayList<Project> MyTasks(String username) throws SQLException{
		stmt = JdbcUtils.getStatement();
		String sql = "SELECT * FROM " + LINK_TABLE_NAME + " where username='" + username +"'"; 
		System.out.println("搜索项目名称的sql语句:"+sql);
		ResultSet res = stmt.executeQuery(sql); 
		ArrayList<Project> pros = new ArrayList<Project>();
		ArrayList<String> names = new ArrayList<String>();
		while (res.next()) {names.add(res.getString("proname")); }
		for(String projname :names)
		{
			System.out.println("任务名称："+ projname);
			ArrayList<Project> tmp = SearchProsByName(projname );
			for(Project proj : tmp)
			{
				pros.add(proj); 
			}
		}
		return pros;
	}
}
