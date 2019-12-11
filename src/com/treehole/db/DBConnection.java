package com.treehole.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	private static final String NAME="root";
	private static final String PASSWORD="1997";
	private static final String URL="jdbc:mysql://localhost:3306/treehole";
	private static final String DRIVER="com.mysql.jdbc.Driver";
	
	private Connection conn=null;
	
	public Connection getConn(){
		return conn;
	}
	
	public DBConnection() {
		// TODO Auto-generated constructor stub
		try {
			Class.forName(DRIVER);
			conn=DriverManager.getConnection(URL, NAME, PASSWORD);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
