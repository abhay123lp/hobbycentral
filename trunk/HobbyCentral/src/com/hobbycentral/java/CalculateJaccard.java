package com.hobbycentral.java;

import java.util.*;
import java.sql.*;
import com.hobbycentral.java.UserPrefBean; 
import org.apache.log4j.*;

public class CalculateJaccard {

	private static Logger logger = Logger.getLogger(CalculateJaccard.class);
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private int[] userPref = new int[4];
	
	public double calculateJaccard(int[] hobbyScore) {
		try {
			double numerator = 0, denominator = 0;

			for (int i = 0; i < hobbyScore.length; i++) {
				numerator = numerator + (hobbyScore[i] * userPref[i]);
			}

			for (int i = 0; i < hobbyScore.length; i++) {
				denominator = denominator +	(Math.pow(hobbyScore[i],2) + Math.pow(userPref[i],2)-(hobbyScore[i]*userPref[i]));
			}

			double jaccardScore = numerator / denominator;
			return jaccardScore;
		} catch (Exception e) {
			logger.error(e);
			e.printStackTrace();
		}
		return -1;
	}
	
	public boolean jaccard(UserPrefBean userprefbean, double[] jaccardScore, int[] hId) {
		try {
			logger.info("Opening database connection");
			boolean status = openDBConnection();
			if(!status) {
				logger.error("DB Connection could not opened");
				System.exit(1);
			}
			
			int counter = 0;
			
			userPref[0] = userprefbean.getPhysical_strain();
			userPref[1] = userprefbean.getCost();
			userPref[2] = userprefbean.getExtra_equipment();
			userPref[3] = userprefbean.getPopularity();
			
//			logger.info("Calculating Jaccard Score");
			
			while (rs.next()) {
				int[] hobbyScore = {rs.getInt("physical_strain"), rs.getInt("cost"), rs.getInt("extra_equipment"), rs.getInt("popularity")};
				jaccardScore[counter] = calculateJaccard(hobbyScore);
				hId[counter] = rs.getInt("id");
//				logger.info(hobbyId[counter] + " : " + hobbyJaccardScore[counter]);
				counter++;
			}
			logger.info("Sorting");
			sortJaccardScore(jaccardScore, hId);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.error(e);
			e.printStackTrace();
		}
		return false;
	}
	
	public void sortJaccardScore(double[]  jaccardScore, int[] hId) {
		int tempid;
		double temp;
		
		logger.info("Pre-sort");
		for (int i = 0; i < jaccardScore.length; i++) 
			logger.info(hId[i] + " : " + jaccardScore[i]);
		
		for(int i = 0; i < jaccardScore.length; i++) {
			for (int j = i+1; j < jaccardScore.length; j++) {
				if (jaccardScore[i] < jaccardScore[j]) {
					temp = jaccardScore[i];
					jaccardScore[i] = jaccardScore[j];
					jaccardScore[j] = temp;
					
					tempid = hId[i];
					hId[i] = hId[j];
					hId[j] = tempid;
				}
			}
		}
		
		logger.info("Post-sort");
		for (int i = 0; i < jaccardScore.length; i++) 
			logger.info(hId[i] + " : " + jaccardScore[i]);
	}
	
	public boolean openDBConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String dburl = "jdbc:mysql://128.196.27.137:3306/hobbycentral";
			String user = "root";
			String passwd = "hobbycentral";
			conn = DriverManager.getConnection(dburl, user, passwd);
			logger.info("Success");
			return true;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.error(e);
			e.printStackTrace();
		}
		return false;
	}
}
