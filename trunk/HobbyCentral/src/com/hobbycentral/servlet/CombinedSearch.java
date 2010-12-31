package com.hobbycentral.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

import org.apache.log4j.*;
import org.jdom.Document;
import org.jdom.Namespace;
import org.jdom.input.SAXBuilder;
import org.jdom.xpath.XPath;

import biz.minaret.log4j.*;
import java.sql.*;
import java.util.Calendar;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Search
 */
public class CombinedSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(Search.class);
	private Calendar c = Calendar.getInstance();
	private boolean valid = false;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CombinedSearch() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void processData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	String ip = request.getRemoteAddr();
    	logger.info("Starting processing for " + this.getClass());
    	logger.info("Request from IP: " + ip);
    	try {
			Connection conn;
			String dispatchUrl = "/displaysearchresults.jsp";
			String searchQry = request.getParameter("searchBox");
			Class.forName("com.mysql.jdbc.Driver");
			String dbUrl = getServletContext().getInitParameter("DBUrl");
			logger.info("Connecting to database");
			conn = DriverManager.getConnection(dbUrl, getServletContext().getInitParameter("DBUser"), getServletContext().getInitParameter("DBPasswd"));
			logger.info("Connection established");
			String query = null;
			if (searchQry.equalsIgnoreCase("all")) {
				logger.info("Searching for all hobbies");
				query = "SELECT DISTINCT hobbyname, hobbyurl FROM hobbykeywords";
			}
			else {
				logger.info("Searching for keyword :'" + searchQry + "'");
				query = "SELECT DISTINCT hobbyname, hobbyurl FROM hobbykeywords WHERE LOWER(hobbykeyword) like LOWER('%" + searchQry + "%')";
			}
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			
			int counter=0;
			while(rs.next()) {
				counter++;
			}
			logger.info("Number of results: " + counter);
			rs.beforeFirst();
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
			request.setAttribute("resultcount", counter);
			request.setAttribute("hobbylist", hobby);
			request.setAttribute("searchQuery", searchQry);
			logger.info("Searching Flickr");
			searchPics(request, response, searchQry);
			logger.info("Searching Youtube");
			searchVideo(request, response, searchQry);
			logger.info("Searching Wikipedia");
			searchWiki(request, response, searchQry);
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
    
    protected void searchPics(HttpServletRequest request, HttpServletResponse response, String query) throws Exception {
    	logger.info("Validating search keyword");
		valid = validateSearch(query);
		String errString = null;
//		System.out.println("Query = " + query);
		if (!valid) {
			errString = "Your search query did not return any hobby results";
			logger.info("Validation failed");
			logger.info("Setting error string in request object");
				request.setAttribute("error", errString);
		}
		else {
			ServletContext context = getServletContext();
			logger.info("Validation successful");
			String key = context.getInitParameter("FlickrAPIKey");
			String secret = context.getInitParameter("FlickrSecretAPIKey");
		
			//Generate URL string
			String urlString = "http://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=" + key + "&safe_search=3&accuracy=6&content_type=1&sort=relevance&per_page=24&text=" + URLEncoder.encode(query, "UTF-8");
//			System.out.println(urlString);
		//	Open a connection with Flickr
			URL url = new URL(urlString);
			logger.info("Connecting with Flickr");
			URLConnection con = url.openConnection();
			con.connect();
			logger.info("Connection established");
		
		//Read data from Flickr
			BufferedReader webReader = new BufferedReader(new InputStreamReader(con.getInputStream()));

			String line = "", text = "";
			while ((line = webReader.readLine()) != null)
				text += line;

		//Load data as a XML document
			logger.info("Loading XML response document");
			SAXBuilder builder = new SAXBuilder();
			Document d = builder.build(new StringReader(text));
		
		//Get photo list
			logger.info("Extracting photos");
			List elems = XPath.selectNodes(d, "rsp/photos/photo");
		//List elems1 = XPath.selectNodes(d, "rsp/photo/photos");
		
			if (elems.size() == 0) {
				logger.info("Search query did not return any results");
				errString = "Your search did not return any results";
				logger.info("Setting error string in request object");
				request.setAttribute("photoErr", errString);
			}
			logger.info("Passing photos list to request object");
			request.setAttribute("pics", elems);
//			System.out.println("Reached end, passing to displayphoto.jsp");
		}
		
    }
    
    protected void searchVideo(HttpServletRequest request, HttpServletResponse response, String query) throws Exception {
    	String error;
    	if (!valid) {
//			System.out.println("query not valid");
			error = "Your search query did not return hobby result";
			logger.info("Validation failed");
			request.setAttribute("videoErr", error);
		}
		else {
			String searchquery = URLEncoder.encode(request.getParameter("searchBox"), "UTF-8");
		// 	Construct URL query to send to youtube
			String urlString = "http://gdata.youtube.com/feeds/api/videos?q=" + searchquery;

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
				request.setAttribute("videoErr", error);
				logger.info("Search did not return any results");
			}
			else {
				logger.info("Passing videos list to request object");
				request.setAttribute("videos", elems);
			}
		}
    }
    
    protected void searchWiki(HttpServletRequest request, HttpServletResponse response, String query) throws Exception {
    	if(valid) {
    		StringBuffer urlstring = new StringBuffer("http://en.wikipedia.org/wiki/");
			query.replaceAll(" ", "%20");
			urlstring.append(query);
			request.setAttribute("url", urlstring.toString());
			request.setAttribute("query", query);
			logger.info("Adding result URL to request object");
    	} else {
    		String error = "Your search query did not return hobby result";
			logger.info("Validation failed");
			request.setAttribute("wikiErr", error);
    	}
    }
    
    protected String getTimeStamp() {
    	
    	String year = String.valueOf(c.get(Calendar.YEAR));
    	String month = String.valueOf(c.get(Calendar.MONTH));
    	String day = String.valueOf(c.get(Calendar.DAY_OF_MONTH));
    	String hour = String.valueOf(c.get(Calendar.HOUR_OF_DAY));
    	String min = String.valueOf(c.get(Calendar.MINUTE));
    	String sec = String.valueOf(c.get(Calendar.SECOND));
    	
    	String timestamp = year + month + day + "-" + hour + min + sec;
    	return timestamp;
    }
    
    private boolean validateSearch(String query) throws Exception {
		// TODO Auto-generated method stub
		Statement s = null;
		ResultSet r = null;
		try {
			Connection conn;
			Class.forName("com.mysql.jdbc.Driver");
			String dbUrl = getServletContext().getInitParameter("DBUrl");
			logger.info("Connecting to database");
			conn = DriverManager.getConnection(dbUrl, getServletContext().getInitParameter("DBUser"), getServletContext().getInitParameter("DBPasswd"));
			String sqlqry;
			logger.info(query);
			if (query.equalsIgnoreCase("all"))
				sqlqry = "SELECT DISTINCT hobbyname, hobbyurl FROM hobbykeywords";
			else
				sqlqry = "SELECT DISTINCT hobbyname, hobbyurl FROM hobbykeywords WHERE LOWER(hobbykeyword) like LOWER('%" + query + "%')";
				logger.info(sqlqry);
			s = conn.createStatement();
			r = s.executeQuery(sqlqry);
			if(r.next()) {
				logger.info("Keyword validated");
				return true;
			}
			logger.info("Keyword validation failed");
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
			if (r!=null)
				r.close();
			if (s!=null)
				s.close();
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
