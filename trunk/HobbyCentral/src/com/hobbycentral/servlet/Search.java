package com.hobbycentral.servlet;

import java.io.IOException;
import org.apache.log4j.*;
import biz.minaret.log4j.*;
import java.sql.*;
import java.util.*;
import java.sql.SQLException;
import java.util.Calendar;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.hobbycentral.java.DBConnectionBean;
import com.hobbycentral.java.SearchResultBean;

/**
 * Servlet implementation class Search
 */
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(Search.class);
	private Calendar c = Calendar.getInstance();
	Connection conn = null;
	Statement stmt  = null;
	ResultSet rs = null;
	ArrayList<SearchResultBean> rsltList = new ArrayList<SearchResultBean>();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Search() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void processSearch(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
    	try {
			String ip = request.getRemoteAddr();
			logger.info("Starting processing for " + this.getClass());
			logger.info("Request from IP: " + ip);
			
			String dispatchUrl = "/searchresults.jsp";
			String searchqry = request.getParameter("siteSearchBox");
			logger.info(searchqry);
			DBConnectionBean b = new DBConnectionBean();
			conn = b.getDbconn();
			if (conn == null)
				throw new SQLException();
			logger.info("Connected to database");
			String sqlqry = "SELECT hobby_name, category_name from hobby_data WHERE LOWER(hobby_name) like LOWER('%" + searchqry + "%')";
			logger.info(sqlqry);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sqlqry);
			int resultCount = 0;
			while (rs.next())
				resultCount++;
			logger.info("resultcount = " + resultCount);
			rs.beforeFirst();
			if(resultCount == 1) {
				rs.next();
				dispatchUrl = "/DisplayMoreInfo?category=" + rs.getString("category_name").replaceAll(" ","+") + "&hobby=" + rs.getString("hobby_name").replaceAll(" ", "+");
				logger.info("dispatchUrl = " + dispatchUrl);
			} else {
				while (rs.next()) {
					String url = "/HobbyCentral/DisplayMoreInfo?category=" + rs.getString("category_name").replaceAll(" ","+") + "&hobby=" + rs.getString("hobby_name").replaceAll(" ", "+");
					logger.info(url);
					SearchResultBean rsltBean = new SearchResultBean();
					rsltBean.setHobbyName(rs.getString("hobby_name"));
					logger.info(rsltBean.getHobbyName());
					rsltBean.setCategoryName(rs.getString("category_name"));
					logger.info(rsltBean.getCategoryName());
					rsltBean.setHobbyUrl(url);
					rsltList.add(rsltBean);
					rsltBean = null;
				}
				logger.info("Setting result list");
				request.setAttribute("resultList", rsltList);
			}
			request.setAttribute("resultcount", resultCount);
			request.setAttribute("query", searchqry);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(dispatchUrl);
			logger.info("Processing complete. Redirecting to " + dispatchUrl);
			dispatcher.include(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			conn.close();
			rs.close();
			stmt.close();
		}
    }
    
    protected void processData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	String ip = request.getRemoteAddr();
    	logger.info("Starting processing for " + this.getClass());
    	logger.info("Request from IP: " + ip);
    	try {
			String dispatchUrl = "/searchresults.jsp";
			String qry = request.getParameter("siteSearchBox");
			Class.forName("com.mysql.jdbc.Driver");
			String dbUrl = getServletContext().getInitParameter("DBUrl");
			logger.info("Connecting to database");
			conn = DriverManager.getConnection(dbUrl, getServletContext().getInitParameter("DBUser"), getServletContext().getInitParameter("DBPasswd"));
			logger.info("Connection established");
			String query = null;
			if (qry.equalsIgnoreCase("all")) {
				logger.info("Searching for all hobbies");
				query = "SELECT DISTINCT hobbyname, hobbyurl FROM hobbykeywords";
			}
			else {
				logger.info("Searching for keyword :'" + qry + "'");
				query = "SELECT DISTINCT hobbyname, hobbyurl FROM hobbykeywords WHERE LOWER(hobbykeyword) like LOWER('%" + qry + "%')";
			}
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			
			int counter=0;
			while(rs.next()) {
				counter++;
			}
			rs.beforeFirst();
			if (counter == 1) {
				rs.next();
				dispatchUrl = rs.getString("hobbyurl");
			}
			else {
				logger.info("Number of results: " + counter);
				String[][] hobby = new String[counter][2];
				int i = 0;
				logger.info("Populating URLs");
				while(rs.next()) {
					if(i<counter)
					hobby[i][0] = rs.getString("hobbyname");
					hobby[i][1] = getServletContext().getContextPath() + rs.getString("hobbyurl");
					i++;
				}
				logger.info("Setting attributes");
				request.setAttribute("hobbylist", hobby);
			}
			request.setAttribute("resultcount", counter);
			request.setAttribute("query", qry);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(dispatchUrl);
			logger.info("Processing complete. Redirecting to " + dispatchUrl);
			dispatcher.include(request, response);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			logger.error(e);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			logger.error(e);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e);
		}
    }
    
    protected String getTimeStamp() {
    	
    	String year = String.valueOf(c.get(Calendar.YEAR));
    	String month = String.valueOf(c.get(Calendar.MONTH));
    	String day = String.valueOf(c.get(Calendar.DAY_OF_MONTH));
    	String hour = String.valueOf(c.get(Calendar.HOUR_OF_DAY));
    	String min = String.valueOf(c.get(Calendar.MINUTE));
    	String sec = String.valueOf(c.get(Calendar.SECOND));
//    	Syste m.out.println(year + " " + month + " " + day + " " + hour + " " + min + " " + sec );
    	
    	String timestamp = year + month + day + "-" + hour + min + sec;
    	return timestamp;
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			processSearch(request, response);
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
			processSearch(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
