package com.hobbycentral.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.apache.log4j.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hobbycentral.java.DataBean;

/**
 * Servlet implementation class DisplayMoreInfo
 */
public class DisplayMoreInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(DisplayMoreInfo.class);
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayMoreInfo() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void processData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
    	Connection conn = null;
    	Statement stmt = null;
		ResultSet rs = null;
		String ip = request.getRemoteAddr();
		logger.info("Starting processing for : " + this.getClass() + " from IP : " + ip);
    	try {
    		String hobbyname = request.getParameter("hobby");
    		String category = request.getParameter("category");
    		logger.info("Fetching more information for hobby=" + hobbyname + " in category=" + category);
    		String dispatchUrl = "/hobby/moreinfo.jsp";
			Class.forName("com.mysql.jdbc.Driver");
			String userid = getServletContext().getInitParameter("DBUser");
			String passwd = getServletContext().getInitParameter("DBPasswd");
			String dbUrl = getServletContext().getInitParameter("DBUrl");

			conn = DriverManager.getConnection(dbUrl, userid, passwd);
			logger.info("Fetching data from database");
			String sql = "SELECT * FROM hobby_data WHERE LOWER(hobby_name) = LOWER('" + hobbyname + "')";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			logger.info("Data fetched");
			logger.info("Setting bean");
			DataBean bean = new DataBean();
			while(rs.next()) {
				bean.setId(rs.getString("Id"));
				bean.setCategoryName(rs.getString("Category_Name"));
				bean.setHobbyName(rs.getString("Hobby_Name"));
				bean.setIntro1(rs.getString("Introduction1"));
				bean.setIntro2(rs.getString("Introduction2"));
				bean.setWhere1(rs.getString("Where_to_find1"));
				bean.setWhere2(rs.getString("Where_to_find2"));
				bean.setStorage1(rs.getString("Storage1"));
				bean.setStorage2(rs.getString("Storage2"));
				bean.setLearn1(rs.getString("Learn1"));
				bean.setLearn2(rs.getString("Learn2"));
				bean.setWhat1(rs.getString("What_you_need1"));
				bean.setWhat2(rs.getString("What_you_need1"));
				bean.setBasics1(rs.getString("Basics1"));
				bean.setBasics2(rs.getString("Basics2"));
				bean.setHistory1(rs.getString("History1"));
				bean.setHistory2(rs.getString("History2"));
				bean.setType1(rs.getString("Types1"));
				bean.setType2(rs.getString("Types2"));
				bean.setOnlineRes1(rs.getString("Online_Resources1"));
				bean.setOnlineRes2(rs.getString("Online_Resources2"));
				bean.setProcess1(rs.getString("Process1"));
				bean.setProcess2(rs.getString("Process2"));
			}
			logger.info("Bean set successfully");
			logger.info("Setting attributes for request object");
			request.setAttribute("resultBean", bean);
			request.setAttribute("hobbyname", hobbyname);
			request.setAttribute("category", category);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(dispatchUrl);
			logger.info("Finished processing. Redirecting to " + dispatchUrl);
			dispatcher.include(request, response);
//			System.out.println("Data processed. Proceeding to displaymoreinfo.jsp");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			logger.fatal("ClassNotFoundException caught");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			logger.fatal("ClassNotFoundException caught");
		} catch (Exception e) {
			e.printStackTrace();
			logger.fatal(e.getClass() + " caught");
		} finally {
			if (stmt != null) {
				logger.info("Closing Statement");
				stmt.close();
			}
			if (rs != null) {
				logger.info("Closing ResultSet");
				rs.close();
			}
			if (conn!=null) {
				logger.info("Closing Connection");
				conn.close();
			}
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			processData(request, response);
		} catch (Exception e) {
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
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
