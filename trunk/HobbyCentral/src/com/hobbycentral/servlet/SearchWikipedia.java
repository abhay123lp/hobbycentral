package com.hobbycentral.servlet;

import java.io.IOException;
import org.apache.log4j.*;
import java.net.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchWikipedia
 */
public class SearchWikipedia extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(SearchWikipedia.class);
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchWikipedia() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    /**
     * Main implementation method
     */
    protected void processData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String ip = request.getRemoteAddr();
    	logger.info("Starting processing for " + this.getClass() + " from IP : " + ip);
    	try {
			String query = request.getParameter("query");
			logger.info("Querying wikipedia for '" + query + "'");
			String dispatchUrl = "/displaywikis.jsp";
			
			StringBuffer urlstring = new StringBuffer("http://en.wikipedia.org/wiki/");
			query.replaceAll(" ", "%20");
			urlstring.append(query);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(dispatchUrl);
			request.setAttribute("url", urlstring.toString());
			request.setAttribute("query", query);
			logger.info("Adding result URL to request object");
			dispatcher.include(request, response);
			logger.info("Finished processing. Redirecting to " + dispatchUrl);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			logger.fatal(e.getClass() + " exception caught");
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
