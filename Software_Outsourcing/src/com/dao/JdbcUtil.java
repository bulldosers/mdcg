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
	//���ӵ����ݿ�����
	private static String USERNAME ="root";
    //���ӵ����ݿ�����
	private static String PASSWORD="87520852";
    //���ӵ����ݿ�����
	private static String DRIVER="com.mysql.jdbc.Driver";;
    //���ӵ����ݿ�URL
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
