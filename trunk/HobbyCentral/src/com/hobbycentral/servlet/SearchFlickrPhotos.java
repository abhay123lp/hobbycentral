package com.hobbycentral.servlet;

import java.io.*;
import org.apache.log4j.*;
import java.net.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;
import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jdom.*;
import org.jdom.input.*;
import org.jdom.xpath.XPath;

/**
 * Servlet implementation class SearchFlickrPhotos
 */
public class SearchFlickrPhotos extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(SearchFlickrPhotos.class);
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchFlickrPhotos() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    /**
     * This method implements the processing done by this servlet. doGet & doPost methods call this method in their definitions
     */
    protected void processData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String ip = request.getRemoteAddr();
    	logger.info("Starting processing for " + this.getClass() + " from IP : " + ip);
    	try {
    		String query = request.getParameter("qry");
    		logger.info("Searching Flickr photos for '" + query + "'");
    		String dispatchUrl = "/displayphotos.jsp";
    		logger.info("Validating search keyword");
    		boolean valid = validateSearch(query);
    		String errString = null;
//    		System.out.println("Query = " + query);
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
    			System.out.println(urlString);
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
    				request.setAttribute("error", errString);
    			}
    			logger.info("Passing photos list to request object");
    			request.setAttribute("pics", elems);
//				System.out.println("Reached end, passing to displayphoto.jsp");
    		}
    		request.setAttribute("searchQuery", query);
    		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(dispatchUrl.toString());
    		logger.info("Finished processing. Redirecting to " + dispatchUrl);
    		dispatcher.include(request, response);
    	} catch (ServletException e1) {
    		e1.printStackTrace();
    		logger.fatal("ServletException caught");
    	} catch (JDOMException je) {
    		je.printStackTrace();
    		logger.fatal("JDOMException caught");
    	} catch (Exception e) {
    		e.printStackTrace();
    		logger.fatal(e.getClass() + " caught");
    	}
    }

	private boolean validateSearch(String query) throws Exception {
		// TODO Auto-generated method stub
		Statement s = null;
		ResultSet r = null;
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String dbUrl = getServletContext().getInitParameter("DBUrl");
			logger.info("Connecting to database");
			conn = DriverManager.getConnection(dbUrl, getServletContext().getInitParameter("DBUser"), getServletContext().getInitParameter("DBPasswd"));
			String sqlquery;
			if (query.equalsIgnoreCase("all"))
				sqlquery = "SELECT DISTINCT hobbyname, hobbyurl FROM hobbylist";
			else
				sqlquery = "SELECT hobby_name, category_name from hobby_data WHERE LOWER(hobby_name) like LOWER('%" + query + "%')";
			s = conn.createStatement();
			r = s.executeQuery(sqlquery);
			logger.info("query = " + query);
			if (query.equalsIgnoreCase("craft") || query.equalsIgnoreCase("crafts") || query.equalsIgnoreCase("biking") || query.equalsIgnoreCase("bike") || query.equalsIgnoreCase("bikes") || query.equalsIgnoreCase("cinema") || query.equalsIgnoreCase("cuisine") || query.equalsIgnoreCase("handicraft") || query.equalsIgnoreCase("technology")) {
				logger.info("Keyword validated");
				return true;
			}
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
			if (conn!=null)
				conn.close();
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
