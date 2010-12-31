package com.hobbycentral.servlet;

import java.io.IOException;
import java.util.*;
import java.sql.*;

import com.hobbycentral.java.CalculateJaccard;
import com.hobbycentral.java.UserPrefBean;
import com.hobbycentral.java.RecommendationBean;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.*;
/**
 * Servlet implementation class JaccardServlet
 */
public class JaccardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(JaccardServlet.class);
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static ResultSet tempRs = null;
	private int[] hobbyId = null;
	private double[] hobbyJaccardScore = null;
	private int[] userPref = new int[4];
	CalculateJaccard c = new CalculateJaccard();
	UserPrefBean userPrefBean = new UserPrefBean();
	RecommendationBean recoBean = new RecommendationBean();
	String location, activity_type;
	String[] hobbynamelist = new String[6];
	String[] hobbyimglist = new String[6];
	String[] categorylist = new String[6];
	ArrayList<String> hobbyDesc = new ArrayList<String>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JaccardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void processData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, 
    																							SQLException {
		// TODO Auto-generated method stub
    	try {
			ArrayList<RecommendationBean> recoList = new ArrayList<RecommendationBean>();
			
			String dispatchUrl = "/recommendhobbyresults.jsp";
			logger.info("Reading user preferences");
			location = request.getParameter("location");
			activity_type = request.getParameter("activity_type");
			int physical_strain = Integer.parseInt(request.getParameter("physical_strain"));
			int cost = Integer.parseInt(request.getParameter("cost"));
			int extra_equipment = Integer.parseInt(request.getParameter("extra_equipment"));
			int popularity = Integer.parseInt(request.getParameter("popularity"));
			
			logger.info("User Preferences");
			logger.info("Location: " + location);
			logger.info("Activity Type: " + activity_type);
			logger.info("Physical strain: " + physical_strain);
			logger.info("Cost: " + cost);
			logger.info("Extra Equipment: " + extra_equipment);
			logger.info("Popularity: " + popularity);
			
			userPref[0] = physical_strain;
			userPref[1] = cost;
			userPref[2] = extra_equipment;
			userPref[3] = popularity;
			
			logger.info("Calculating jaccard quotient");
			
			boolean jaccardResultStatus = jaccard();
			
			if(jaccardResultStatus) {
				logger.info("Top 6 hobbies");
				for (int i = 0; i < 6; i++) {
					logger.info("i = " + i);
					logger.info(hobbyId[i] + ": " + hobbyJaccardScore[i]);
					recoBean.setHobbyId(hobbyId[i]);
					String hobbyname = getHobbyName(hobbyId[i]);
					recoBean.setHobby_name(hobbyname);
					String imgurl = getHobbyImg(hobbyId[i]);
					recoBean.setImgurl(imgurl);
					String description = getHobbyDesc(hobbyId[i]);
					recoBean.setHobby_description(description);
					recoBean.setCategory(getHobbyCategory(hobbyId[i]));
//	    		logger.info(hobbyname);
					//PUT CODE HERE TO PUT THE REST OF THE INFORMATION IN THE RECOMMENDATIONBEAN
//	    		recoBean.setHobby_description(hobbyDescription);
					recoList.add(recoBean);
					logger.info(recoBean.getHobby_name());
					hobbynamelist[i] = recoBean.getHobby_name();
					hobbyimglist[i] = recoBean.getImgurl();
					hobbyDesc.add(i, recoBean.getHobby_description());
					categorylist[i] = recoBean.getCategory();
				}
			} else {
				logger.error("Error while calculating similarity");
			}
			
			request.setAttribute("recolist", recoList);
			request.setAttribute("location", location);
			request.setAttribute("activity_type", activity_type);
			request.setAttribute("physical_strain", physical_strain);
			request.setAttribute("cost", cost);
			request.setAttribute("extra_equipment", extra_equipment);
			request.setAttribute("popularity", popularity);
			request.setAttribute("hobbynamelist", hobbynamelist);
			request.setAttribute("hobbyimglist", hobbyimglist);
			request.setAttribute("categorylist", categorylist);
			request.setAttribute("hobbydescription", hobbyDesc);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(dispatchUrl);
			dispatcher.include(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			conn.close();
			stmt.close();
			rs.close();
			tempRs.close();
		}
	}
    
    public String getHobbyCategory(int id) throws SQLException {
    	stmt = null;
    	tempRs = null;
    	stmt = conn.createStatement();
    	tempRs = stmt.executeQuery("SELECT category_name FROM hobby_charac WHERE id = " + id);
    	tempRs.first();
    	return tempRs.getString("category_name");
    }
    
    public String getHobbyName(int id) throws SQLException {
    	stmt = null;
    	tempRs = null;
    	stmt = conn.createStatement();
    	tempRs = stmt.executeQuery("SELECT hobby_name from hobby_charac WHERE id = " + id);
    	tempRs.first();
    	return tempRs.getString("hobby_name");
    }
    
    public String getHobbyImg(int id) throws SQLException {
    	stmt = null;
    	tempRs = null;
    	stmt = conn.createStatement();
    	tempRs = stmt.executeQuery("SELECT imgpath from hobby_charac WHERE id = " + id);
    	tempRs.first();
    	return tempRs.getString("imgpath");
    }
    
    public String getHobbyDesc(int id) throws SQLException {
    	stmt = null;
    	tempRs = null;
    	stmt = conn.createStatement();
    	tempRs = stmt.executeQuery("SELECT description FROM hobby_charac WHERE id = " + id );
    	tempRs.first();
    	return tempRs.getString("description");
    }
    
    public boolean callJaccardFunction() {
    	try {
			logger.info("Opening database connection");
			boolean dbstatus = openDBConnection();
			if(!dbstatus) {
				logger.error("DB Connection could not opened");
				System.exit(1);
			}
			String sqlqry = "SELECT * from hobby_score";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sqlqry);
			logger.info("Query executed");
			
			int rowCount = 0;
			while(rs.next()) {
				rowCount++;
			}
			logger.info("Row Count = " + rowCount);
			hobbyJaccardScore = new double[rowCount];
			hobbyId = new int[rowCount];
			
			boolean jaccardStatus = c.jaccard(userPrefBean, hobbyJaccardScore, hobbyId);
			if(jaccardStatus)
				return true;
			else
				return false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.error(e);
			e.printStackTrace();
		}
    	return false;
    }
    
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
    
    public boolean jaccard() {
		try {
			logger.info("Opening database connection");
			boolean status = openDBConnection();
			if(!status) {
				logger.error("DB Connection could not opened");
				System.exit(1);
			}
			String sqlqry = "SELECT * from hobby_score where location = '" + location + "' and activity_type = '" + activity_type + "'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sqlqry);
			logger.info("Query executed");
			
			int counter = 0;
			int rowCount = 0;
			while(rs.next()) {
				rowCount++;
			}
			logger.info("Row Count = " + rowCount);
			hobbyJaccardScore = new double[rowCount];
			hobbyId = new int[rowCount];
			rs.beforeFirst();
			
			logger.info("Calculating Jaccard Score");
			
			while (rs.next()) {
				int[] hobbyScore = {rs.getInt("physical_strain"), rs.getInt("cost"), rs.getInt("extra_equipment"), rs.getInt("popularity")};
				hobbyJaccardScore[counter] = calculateJaccard(hobbyScore);
				hobbyId[counter] = rs.getInt("id");
//				logger.info(hobbyId[counter] + " : " + hobbyJaccardScore[counter]);
				counter++;
			}
			logger.info("Sorting");
			sortJaccardScore();
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.error(e);
			e.printStackTrace();
		}
		return false;
	}
	
	public void sortJaccardScore() {
		int tempid;
		double temp;
		
		for(int i = 0; i < hobbyJaccardScore.length; i++) {
			for (int j = i+1; j < hobbyJaccardScore.length; j++) {
				if (hobbyJaccardScore[i] < hobbyJaccardScore[j]) {
					temp = hobbyJaccardScore[i];
					hobbyJaccardScore[i] = hobbyJaccardScore[j];
					hobbyJaccardScore[j] = temp;
					
					tempid = hobbyId[i];
					hobbyId[i] = hobbyId[j];
					hobbyId[j] = tempid;
				}
			}
		}
		for(int i = 0; i < hobbyJaccardScore.length; i++) {
			for (int j = i+1; j < hobbyJaccardScore.length; j++) {
				logger.info(hobbyId[i] + " : " + hobbyJaccardScore[i]);
			}
		}
		
	}
	
	public boolean openDBConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String dburl = getServletContext().getInitParameter("DBUrl");
			String user = getServletContext().getInitParameter("DBUser");
			String passwd = getServletContext().getInitParameter("DBPasswd");
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

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			processData(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			processData(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
