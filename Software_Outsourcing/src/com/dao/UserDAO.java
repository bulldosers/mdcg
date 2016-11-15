package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.Entity.Info; 

public class UserDAO {
	private static UserDAO userDao = null;
	private static final String INFO_TABLE_NAME = "info";
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
		String sql = "SELECT * FROM " + INFO_TABLE_NAME + " WHERE username = '"
				+ username + "'";
		ResultSet res = stmt.executeQuery(sql);
		if (res.next())
			return ORM(res);
		System.out.println("null!");
		return null;
	}
}
