package com.hobbycentral.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;
import java.io.*;
import java.net.*;
import org.jdom.*;
import org.jdom.input.*;
import org.jdom.xpath.XPath;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.*;

/**
 * Servlet implementation class SearchYoutubeVideos
 */
public class SearchYoutubeVideos extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(SearchYoutubeVideos.class);
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchYoutubeVideos() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    /**
     * Method to implement processing of data. doGet & doPost method call this method
     */
    protected void processData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String ip = request.getRemoteAddr();
    	logger.info("Starting processing for " + this.getClass() + " from IP : " + ip);
    	try {
    		String dispatchUrl = "/displayvideos.jsp";
    		String query = request.getParameter("query");
    		logger.info("Searching Youtube for '" + query + "'");
			String error = null;
			
			logger.info("Validating keyword");
			boolean valid = validateSearch(query);
    		if (!valid) {
    			System.out.println("query not valid");
    			error = "Your search query did not return hobby result";
    			logger.info("Validation failed");
   				request.setAttribute("err", error);
    		}
    		else {
    			query = URLEncoder.encode(request.getParameter("query"), "UTF-8");
			// 	Construct URL query to send to youtube
    			String urlString = "http://gdata.youtube.com/feeds/api/videos?q=" + query;

			// Establish connection with Youtube server
    			URL url = new URL(urlString);
    			URLConnection con = url.openConnection();
    			logger.info("Connecting to Youtube.com");
    			con.connect();
			
			//Reading the response from Youtube
    			BufferedReader webReader = new BufferedReader(new InputStreamReader(con.getInputStream()));

    			String line = "", text = "";
    			while ((line = webReader.readLine()) != null)
    				text += line;

    			logger.info("Process response data");
    			SAXBuilder builder = new SAXBuilder();
    			Document d = builder.build(new StringReader(text));

    			Namespace ns_com = Namespace.getNamespace("def","http://www.w3.org/2005/Atom");

    			XPath xp = XPath.newInstance("/def:feed/def:entry");
    			xp.addNamespace(ns_com);

    			logger.info("Extracting video URLs");
    			List elems = xp.selectNodes(d);
			
    			error = "Search returned no results";
    			if (elems.size() == 0) {
    				request.setAttribute("err", error);
    				logger.info("Search did not return any results");
    			}
    			else {
    				logger.info("Passing videos list to request object");
    				request.setAttribute("videos", elems);
    			}
    		}
			request.setAttribute("query", query);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(dispatchUrl.toString());
			dispatcher.include(request, response);
			logger.info("Finished processing. Redirecting to " + dispatchUrl);
			
		} catch (JDOMException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("/errorpage.jsp");
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
    }
    
	private boolean validateSearch(String query) throws SQLException {
		// TODO Auto-generated method stub
		Connection conn =  null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			logger.info("Validating keyword : " + query);
			Class.forName("com.mysql.jdbc.Driver");
			String dbUrl = getServletContext().getInitParameter("DBUrl");
			logger.info("Connecting to database");
			String sqlquery;
			conn = DriverManager.getConnection(dbUrl, getServletContext().getInitParameter("DBUser"), getServletContext().getInitParameter("DBPasswd"));
			if (query.equalsIgnoreCase("all"))
				sqlquery = "SELECT DISTINCT hobbyname, hobbyurl FROM hobbylist";
			else
				sqlquery = "SELECT hobby_name, category_name from hobby_data WHERE LOWER(hobby_name) like LOWER('%" + query + "%')";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sqlquery);
			if (query.equalsIgnoreCase("craft") || query.equalsIgnoreCase("crafts") || query.equalsIgnoreCase("biking") || query.equalsIgnoreCase("bike") || query.equalsIgnoreCase("bikes") || query.equalsIgnoreCase("cinema") || query.equalsIgnoreCase("cuisine") || query.equalsIgnoreCase("handicraft") || query.equalsIgnoreCase("technology")) {
				logger.info("Keyword validated");
				return true;
			}
			if(rs.next()) {
				logger.info("Keyword validated");
				return true;
			}
			return false;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		} finally {
			conn.close();
			rs.close();
			stmt.close();
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processData(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processData(request, response);
	}

}
