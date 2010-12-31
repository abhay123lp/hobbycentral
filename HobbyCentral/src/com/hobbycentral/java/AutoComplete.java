package com.hobbycentral.java;

import org.apache.log4j.*;
import java.sql.*;

public class AutoComplete {
	
	public static String getHobbylist() {
		return hobbylist;
	}

	public static void setHobbylist(String hobbylist) {
		AutoComplete.hobbylist = hobbylist;
	}

	private static String[] hobbyname = null;
	private static String hobbylist = null;
	private static String hobbykeywords = null;
	private static Logger logger = Logger.getLogger(AutoComplete.class);
	private Connection conn = null;
	private Statement stmt = null;
	private ResultSet rs = null;	
	
	public static String getHobbykeywords() {
		return hobbykeywords;
	}

	public static void setHobbykeywords(String hobbykeywords) {
		AutoComplete.hobbykeywords = hobbykeywords;
	}

	public AutoComplete() {
		try {
			if (hobbylist == null) {
				logger.info("Initializing hobbylist");
				getHobbyNames();
			}
			if (hobbykeywords == null) {
				logger.info("Initializing hobbykeywords");
				getHobbyKeywords();
			}
//			logger.info(hobbylist);
//			logger.info(hobbykeywords);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void getHobbyNames() {
		try {
			openDBConn();
			stmt = conn.createStatement();
			String sqlqry = "SELECT distinct hobby_name from hobby_data";
			String countQry = "SELECT count(distinct hobby_name) from hobby_data";
			rs = stmt.executeQuery(countQry);
			int rowCount = 0;
			while (rs.next()) {
				rowCount = rs.getInt(1);
			}
			rs = null;
			rs = stmt.executeQuery(sqlqry);
			hobbyname = new String[rowCount];
			int i = 0;
			while(rs.next()) {
				hobbyname[i] = rs.getString(1);
				i++;
			}
			StringBuffer sb = new StringBuffer();
			
			for(int j = 0; j<hobbyname.length; j++) {
				sb.append("\"");
				sb.append(hobbyname[j]);
				sb.append("\"");
				sb.append(",");
			}
			setHobbylist(sb.substring(0, sb.lastIndexOf(",")));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.error(e);
		}
	}
	
	private void getHobbyKeywords() throws SQLException {
		try {
			openDBConn();
			stmt = null;
			stmt = conn.createStatement();
			String sqlqry = "SELECT distinct hobbykeyword from hobbykeywords";
			rs = stmt.executeQuery(sqlqry);
			StringBuffer sb = new StringBuffer();
			while (rs.next()) {
				sb.append("\"");
				sb.append(rs.getString(1));
				sb.append("\",");
			}
			setHobbykeywords(sb.substring(0,sb.lastIndexOf(",")));
		} catch (Exception e) {
			logger.error(e);
		} finally {
			logger.info("Closing connections");
			conn.close();
			rs.close();
			stmt.close();
		}
	}
	
	private boolean openDBConn() throws Exception{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String dburl = "jdbc:mysql://localhost:3306/hobbycentral";
			String dbuser = "root";
			String dbpwd = "hobbycentral";
			conn = DriverManager.getConnection(dburl, dbuser, dbpwd);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.error(e);
			throw e;
//			e.printStackTrace();
		}
//		return false;
	}
}
