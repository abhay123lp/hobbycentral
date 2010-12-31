package com.hobbycentral.java;

import java.sql.*;

public class DBConnectionBean {
	private Connection dbconn = null;
	
	public Connection getDbconn() {
		return dbconn;
	}

	public void setDbconn(Connection dbconn) {
		this.dbconn = dbconn;
	}

	public DBConnectionBean() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String dburl = "jdbc:mysql://localhost:3306/hobbycentral";
			String dbuser = "root";
			String dbpwd = "hobbycentral";
			dbconn = DriverManager.getConnection(dburl, dbuser, dbpwd);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
