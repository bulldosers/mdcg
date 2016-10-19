package com.dao;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
public class JdbcUtil {
	//连接的数据库名称
	private static String USERNAME ="root";
    //连接的数据库密码
	private static String PASSWORD="87520852";
    //连接的数据库驱动
	private static String DRIVER="com.mysql.jdbc.Driver";;
    //连接的数据库URL
	private static String URL="jdbc:mysql://127.0.0.1:3306/test";
	
	private Connection connection;

	private PreparedStatement pstmt;

	private ResultSet resultSet;
	
	public Connection getConnection() {
		try {
			Class.forName(DRIVER); 
			connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
		} catch (Exception e) {
			throw new RuntimeException("get connection error!", e);
		}
		return connection;
	}
}
